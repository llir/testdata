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
@equal_width = internal unnamed_addr global i1 false, align 1, !dbg !221
@.str.12 = private constant [2 x i8] c"\0A\00", align 1, !dbg !187
@separator = internal unnamed_addr global i8* null, align 8, !dbg !180
@optind = external local_unnamed_addr global i32, align 4
@.str.13 = private unnamed_addr constant [7 x i8] c"+f:s:w\00", align 1
@long_options = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i32 1, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !182
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
@get_default_format.format_buf = internal global [28 x i8] zeroinitializer, align 16, !dbg !192
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
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i64 0, i64 0), align 8, !dbg !222
@.str.61 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !227
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !271
@.str.66 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.67 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.68 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !273
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !279
@.str.75 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.76 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.77 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.79, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.80, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.81, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.82, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.83, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.84, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.85, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.86, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.87, i32 0, i32 0), i8* null], align 16, !dbg !320
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !402
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !408
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !410
@.str.11.88 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.89 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.90 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.91 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.92 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.93 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.94 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !417
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !424
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !412
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !426
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !432
@.str.1.138 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.139 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@c_locale_cache = internal global %struct.__locale_struct* null, align 8, !dbg !440
@.str.148 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.153 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.156 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.157 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !1145 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1150, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i32 %0, metadata !1149, metadata !DIExpression()), !dbg !1171
  %3 = icmp eq i32 %0, 0, !dbg !1172
  br i1 %3, label %9, label %4, !dbg !1173

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1174, !tbaa !1176
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #19, !dbg !1174
  %7 = load i8*, i8** @program_name, align 8, !dbg !1174, !tbaa !1176
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #19, !dbg !1174
  br label %70, !dbg !1174

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.1, i64 0, i64 0), i32 5) #19, !dbg !1180
  %11 = load i8*, i8** @program_name, align 8, !dbg !1180, !tbaa !1176
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11, i8* %11, i8* %11) #19, !dbg !1180
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 5) #19, !dbg !1181
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1181, !tbaa !1176
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !1181
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.23, i64 0, i64 0), i32 5) #19, !dbg !1182
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1182, !tbaa !1176
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #19, !dbg !1182
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([212 x i8], [212 x i8]* @.str.3, i64 0, i64 0), i32 5) #19, !dbg !1185
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1185, !tbaa !1176
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !1185
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #19, !dbg !1186
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1186, !tbaa !1176
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !1186
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #19, !dbg !1187
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1187, !tbaa !1176
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !1187
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([513 x i8], [513 x i8]* @.str.6, i64 0, i64 0), i32 5) #19, !dbg !1188
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1188, !tbaa !1176
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !1188
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([208 x i8], [208 x i8]* @.str.7, i64 0, i64 0), i32 5) #19, !dbg !1189
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1189, !tbaa !1176
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32), !dbg !1189
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), metadata !1154, metadata !DIExpression()) #19, !dbg !1190
  %34 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1191
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %34) #19, !dbg !1191
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %34, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #19, !dbg !1167
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), metadata !1155, metadata !DIExpression()) #19, !dbg !1190
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1156, metadata !DIExpression()) #19, !dbg !1190
  %35 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1192
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !1156, metadata !DIExpression()) #19, !dbg !1190
  br label %36, !dbg !1193

36:                                               ; preds = %41, %9
  %37 = phi i8* [ %44, %41 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0), %9 ]
  %38 = phi %struct.infomap* [ %42, %41 ], [ %35, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %38, metadata !1156, metadata !DIExpression()) #19, !dbg !1190
  %39 = tail call i32 @strcmp(i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* nonnull %37) #22, !dbg !1194
  %40 = icmp eq i32 %39, 0, !dbg !1194
  br i1 %40, label %46, label %41, !dbg !1193

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.infomap, %struct.infomap* %38, i64 1, !dbg !1195
  call void @llvm.dbg.value(metadata %struct.infomap* %42, metadata !1156, metadata !DIExpression()) #19, !dbg !1190
  %43 = getelementptr inbounds %struct.infomap, %struct.infomap* %42, i64 0, i32 0, !dbg !1196
  %44 = load i8*, i8** %43, align 8, !dbg !1196, !tbaa !1197
  %45 = icmp eq i8* %44, null, !dbg !1199
  br i1 %45, label %46, label %36, !dbg !1200, !llvm.loop !1201

46:                                               ; preds = %41, %36
  %47 = phi %struct.infomap* [ %42, %41 ], [ %38, %36 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %47, metadata !1156, metadata !DIExpression()) #19, !dbg !1190
  call void @llvm.dbg.value(metadata %struct.infomap* %47, metadata !1156, metadata !DIExpression()) #19, !dbg !1190
  %48 = getelementptr inbounds %struct.infomap, %struct.infomap* %47, i64 0, i32 1, !dbg !1202
  %49 = load i8*, i8** %48, align 8, !dbg !1202, !tbaa !1204
  %50 = icmp eq i8* %49, null, !dbg !1205
  %51 = select i1 %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %49, !dbg !1206
  call void @llvm.dbg.value(metadata i8* %51, metadata !1155, metadata !DIExpression()) #19, !dbg !1190
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i64 0, i64 0), i32 5) #19, !dbg !1207
  %53 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i64 0, i64 0)) #19, !dbg !1207
  %54 = tail call i8* @setlocale(i32 5, i8* null) #19, !dbg !1208
  call void @llvm.dbg.value(metadata i8* %54, metadata !1163, metadata !DIExpression()) #19, !dbg !1190
  %55 = icmp eq i8* %54, null, !dbg !1209
  br i1 %55, label %63, label %56, !dbg !1211

56:                                               ; preds = %46
  %57 = tail call i32 @strncmp(i8* nonnull %54, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0), i64 3) #22, !dbg !1212
  %58 = icmp eq i32 %57, 0, !dbg !1212
  br i1 %58, label %63, label %59, !dbg !1213

59:                                               ; preds = %56
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.35, i64 0, i64 0), i32 5) #19, !dbg !1214
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1214, !tbaa !1176
  %62 = tail call i32 @fputs_unlocked(i8* %60, %struct._IO_FILE* %61) #19, !dbg !1214
  br label %63, !dbg !1216

63:                                               ; preds = %46, %56, %59
  %64 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.36, i64 0, i64 0), i32 5) #19, !dbg !1217
  %65 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %64, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #19, !dbg !1217
  %66 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.37, i64 0, i64 0), i32 5) #19, !dbg !1218
  %67 = icmp eq i8* %51, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), !dbg !1218
  %68 = select i1 %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), !dbg !1218
  %69 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %66, i8* %51, i8* %68) #19, !dbg !1218
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %34) #19, !dbg !1219
  br label %70

70:                                               ; preds = %63, %4
  tail call void @exit(i32 %0) #23, !dbg !1220
  unreachable, !dbg !1220
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
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !1221 {
  %3 = alloca x86_fp80, align 16
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.operand, align 16
  %7 = alloca [6 x i8], align 2
  call void @llvm.dbg.declare(metadata [6 x i8]* %7, metadata !1230, metadata !DIExpression(DW_OP_LLVM_fragment, 80, 48)), !dbg !1247
  %8 = alloca %struct.operand, align 16
  %9 = alloca %struct.operand, align 16
  %10 = alloca %struct.operand, align 16
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1225, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i8** %1, metadata !1226, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata x86_fp80 0xK3FFF8000000000000000, metadata !1228, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 80)), !dbg !1248
  call void @llvm.dbg.value(metadata i64 1, metadata !1228, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1248
  call void @llvm.dbg.value(metadata i32 0, metadata !1228, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32)), !dbg !1248
  call void @llvm.dbg.value(metadata i32 0, metadata !1228, metadata !DIExpression(DW_OP_LLVM_fragment, 224, 32)), !dbg !1248
  %13 = bitcast %struct.operand* %6 to i8*, !dbg !1249
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %13) #19, !dbg !1249
  call void @llvm.dbg.declare(metadata %struct.operand* %6, metadata !1229, metadata !DIExpression()), !dbg !1250
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(32) %13, i8* nonnull align 16 dereferenceable(32) bitcast (%struct.operand* @__const.main.step to i8*), i64 32, i1 false), !dbg !1250
  %14 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0, !dbg !1251
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %14), !dbg !1251
  call void @llvm.dbg.value(metadata i64 0, metadata !1231, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1248
  call void @llvm.dbg.value(metadata i64 0, metadata !1231, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1248
  call void @llvm.dbg.value(metadata i8* null, metadata !1236, metadata !DIExpression()), !dbg !1248
  %15 = load i8*, i8** %1, align 8, !dbg !1252, !tbaa !1176
  tail call void @set_program_name(i8* %15) #19, !dbg !1253
  %16 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #19, !dbg !1254
  %17 = icmp ne i8* %16, null, !dbg !1255
  %18 = zext i1 %17 to i8, !dbg !1256
  store i8 %18, i8* @locale_ok, align 1, !dbg !1256, !tbaa !1257
  %19 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0)) #19, !dbg !1259
  %20 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #19, !dbg !1260
  %21 = tail call i32 @atexit(void ()* nonnull @close_stdout) #19, !dbg !1261
  store i1 false, i1* @equal_width, align 1, !dbg !1262
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8** @separator, align 8, !dbg !1263, !tbaa !1176
  call void @llvm.dbg.value(metadata i8* null, metadata !1236, metadata !DIExpression()), !dbg !1248
  %22 = load i32, i32* @optind, align 4, !dbg !1264, !tbaa !1265
  %23 = icmp slt i32 %22, %0, !dbg !1267
  br i1 %23, label %24, label %58, !dbg !1268

24:                                               ; preds = %2, %54
  %25 = phi i32 [ %56, %54 ], [ %22, %2 ]
  %26 = phi i8* [ %55, %54 ], [ null, %2 ]
  call void @llvm.dbg.value(metadata i8* %26, metadata !1236, metadata !DIExpression()), !dbg !1248
  %27 = sext i32 %25 to i64, !dbg !1269
  %28 = getelementptr inbounds i8*, i8** %1, i64 %27, !dbg !1269
  %29 = load i8*, i8** %28, align 8, !dbg !1269, !tbaa !1176
  %30 = load i8, i8* %29, align 1, !dbg !1269, !tbaa !1272
  %31 = icmp eq i8 %30, 45, !dbg !1273
  br i1 %31, label %32, label %40, !dbg !1274

32:                                               ; preds = %24
  %33 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !1275
  %34 = load i8, i8* %33, align 1, !dbg !1275, !tbaa !1272
  call void @llvm.dbg.value(metadata i8 %34, metadata !1227, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1248
  %35 = icmp eq i8 %34, 46, !dbg !1276
  br i1 %35, label %58, label %36, !dbg !1277

36:                                               ; preds = %32
  %37 = sext i8 %34 to i32, !dbg !1275
  call void @llvm.dbg.value(metadata i32 %37, metadata !1227, metadata !DIExpression()), !dbg !1248
  %38 = add nsw i32 %37, -48, !dbg !1278
  %39 = icmp ult i32 %38, 10, !dbg !1278
  br i1 %39, label %58, label %40, !dbg !1279

40:                                               ; preds = %36, %24
  %41 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #19, !dbg !1280
  call void @llvm.dbg.value(metadata i32 %41, metadata !1227, metadata !DIExpression()), !dbg !1248
  switch i32 %41, label %53 [
    i32 -1, label %42
    i32 102, label %44
    i32 115, label %46
    i32 119, label %48
    i32 -130, label %49
    i32 -131, label %50
  ], !dbg !1281

42:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %26, metadata !1236, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i8* %26, metadata !1236, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i8* %26, metadata !1236, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i8* %26, metadata !1236, metadata !DIExpression()), !dbg !1248
  %43 = load i32, i32* @optind, align 4, !dbg !1282, !tbaa !1265
  br label %58, !dbg !1281

44:                                               ; preds = %40
  %45 = load i8*, i8** @optarg, align 8, !dbg !1283, !tbaa !1176
  call void @llvm.dbg.value(metadata i8* %45, metadata !1236, metadata !DIExpression()), !dbg !1248
  br label %54, !dbg !1285

46:                                               ; preds = %40
  %47 = load i64, i64* bitcast (i8** @optarg to i64*), align 8, !dbg !1286, !tbaa !1176
  store i64 %47, i64* bitcast (i8** @separator to i64*), align 8, !dbg !1287, !tbaa !1176
  br label %54, !dbg !1288

48:                                               ; preds = %40
  store i1 true, i1* @equal_width, align 1, !dbg !1289
  br label %54, !dbg !1290

49:                                               ; preds = %40
  tail call void @usage(i32 0) #24, !dbg !1291
  unreachable, !dbg !1291

50:                                               ; preds = %40
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1292, !tbaa !1176
  %52 = load i8*, i8** @Version, align 8, !dbg !1292, !tbaa !1176
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* %52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8* null) #19, !dbg !1292
  tail call void @exit(i32 0) #23, !dbg !1292
  unreachable, !dbg !1292

53:                                               ; preds = %40
  tail call void @usage(i32 1) #24, !dbg !1293
  unreachable, !dbg !1293

54:                                               ; preds = %48, %46, %44
  %55 = phi i8* [ %26, %48 ], [ %26, %46 ], [ %45, %44 ], !dbg !1248
  call void @llvm.dbg.value(metadata i8* %55, metadata !1236, metadata !DIExpression()), !dbg !1248
  %56 = load i32, i32* @optind, align 4, !dbg !1264, !tbaa !1265
  %57 = icmp slt i32 %56, %0, !dbg !1267
  br i1 %57, label %24, label %58, !dbg !1268, !llvm.loop !1294

58:                                               ; preds = %54, %36, %32, %42, %2
  %59 = phi i32 [ %22, %2 ], [ %43, %42 ], [ %56, %54 ], [ %25, %36 ], [ %25, %32 ], !dbg !1282
  %60 = phi i8* [ null, %2 ], [ %26, %42 ], [ %55, %54 ], [ %26, %36 ], [ %26, %32 ], !dbg !1296
  call void @llvm.dbg.value(metadata i8* %60, metadata !1236, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i8* %60, metadata !1236, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i8* %60, metadata !1236, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i8* %60, metadata !1236, metadata !DIExpression()), !dbg !1248
  %61 = sub nsw i32 %0, %59, !dbg !1297
  call void @llvm.dbg.value(metadata i32 %61, metadata !1237, metadata !DIExpression()), !dbg !1248
  %62 = icmp eq i32 %61, 0, !dbg !1298
  br i1 %62, label %63, label %65, !dbg !1300

63:                                               ; preds = %58
  %64 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i32 5) #19, !dbg !1301
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %64) #19, !dbg !1303
  tail call void @usage(i32 1) #24, !dbg !1304
  unreachable, !dbg !1304

65:                                               ; preds = %58
  %66 = icmp ugt i32 %61, 3, !dbg !1305
  br i1 %66, label %67, label %75, !dbg !1307

67:                                               ; preds = %65
  %68 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i32 5) #19, !dbg !1308
  %69 = load i32, i32* @optind, align 4, !dbg !1310, !tbaa !1265
  %70 = add nsw i32 %69, 3, !dbg !1311
  %71 = sext i32 %70 to i64, !dbg !1312
  %72 = getelementptr inbounds i8*, i8** %1, i64 %71, !dbg !1312
  %73 = load i8*, i8** %72, align 8, !dbg !1312, !tbaa !1176
  %74 = tail call i8* @quote(i8* %73) #19, !dbg !1313
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %68, i8* %74) #19, !dbg !1314
  tail call void @usage(i32 1) #24, !dbg !1315
  unreachable, !dbg !1315

75:                                               ; preds = %65
  %76 = icmp eq i8* %60, null, !dbg !1316
  br i1 %76, label %170, label %77, !dbg !1318

77:                                               ; preds = %75, %93
  %78 = phi i64 [ %94, %93 ], [ 0, %75 ], !dbg !1319
  %79 = phi i64 [ %96, %93 ], [ 0, %75 ], !dbg !1340
  call void @llvm.dbg.value(metadata i64 %79, metadata !1327, metadata !DIExpression()) #19, !dbg !1319
  call void @llvm.dbg.value(metadata i64 %78, metadata !1328, metadata !DIExpression()) #19, !dbg !1319
  %80 = getelementptr inbounds i8, i8* %60, i64 %79, !dbg !1342
  %81 = load i8, i8* %80, align 1, !dbg !1342, !tbaa !1272
  %82 = icmp eq i8 %81, 37, !dbg !1344
  br i1 %82, label %83, label %88, !dbg !1345

83:                                               ; preds = %77
  %84 = add i64 %79, 1, !dbg !1346
  %85 = getelementptr inbounds i8, i8* %60, i64 %84, !dbg !1347
  %86 = load i8, i8* %85, align 1, !dbg !1347, !tbaa !1272
  %87 = icmp eq i8 %86, 37, !dbg !1348
  br i1 %87, label %93, label %97, !dbg !1349

88:                                               ; preds = %77
  %89 = icmp eq i8 %81, 0, !dbg !1350
  br i1 %89, label %90, label %93, !dbg !1353

90:                                               ; preds = %88
  %91 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.44, i64 0, i64 0), i32 5) #19, !dbg !1354
  %92 = tail call i8* @quote(i8* nonnull %60) #19, !dbg !1354
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %91, i8* %92) #19, !dbg !1354
  unreachable, !dbg !1354

93:                                               ; preds = %88, %83
  %94 = add i64 %78, 1, !dbg !1355
  call void @llvm.dbg.value(metadata i64 %94, metadata !1328, metadata !DIExpression()) #19, !dbg !1319
  %95 = select i1 %82, i64 2, i64 1, !dbg !1356
  %96 = add i64 %95, %79, !dbg !1357
  call void @llvm.dbg.value(metadata i64 %96, metadata !1327, metadata !DIExpression()) #19, !dbg !1319
  br label %77, !dbg !1358, !llvm.loop !1359

97:                                               ; preds = %83
  call void @llvm.dbg.value(metadata i64 %78, metadata !1328, metadata !DIExpression()) #19, !dbg !1319
  call void @llvm.dbg.value(metadata i64 %78, metadata !1328, metadata !DIExpression()) #19, !dbg !1319
  call void @llvm.dbg.value(metadata i64 %78, metadata !1328, metadata !DIExpression()) #19, !dbg !1319
  %98 = getelementptr inbounds i8, i8* %60, i64 %84, !dbg !1347
  call void @llvm.dbg.value(metadata i64 %78, metadata !1328, metadata !DIExpression()) #19, !dbg !1319
  call void @llvm.dbg.value(metadata i64 %78, metadata !1328, metadata !DIExpression()) #19, !dbg !1319
  call void @llvm.dbg.value(metadata i64 %78, metadata !1328, metadata !DIExpression()) #19, !dbg !1319
  call void @llvm.dbg.value(metadata i64 %78, metadata !1328, metadata !DIExpression()) #19, !dbg !1319
  call void @llvm.dbg.value(metadata i64 %78, metadata !1328, metadata !DIExpression()) #19, !dbg !1319
  call void @llvm.dbg.value(metadata i64 %78, metadata !1328, metadata !DIExpression()) #19, !dbg !1319
  call void @llvm.dbg.value(metadata i64 %84, metadata !1327, metadata !DIExpression()) #19, !dbg !1319
  %99 = tail call i64 @strspn(i8* nonnull %98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i64 0, i64 0)) #22, !dbg !1361
  %100 = add i64 %99, %84, !dbg !1362
  call void @llvm.dbg.value(metadata i64 %100, metadata !1327, metadata !DIExpression()) #19, !dbg !1319
  %101 = getelementptr inbounds i8, i8* %60, i64 %100, !dbg !1363
  %102 = tail call i64 @strspn(i8* nonnull %101, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i64 0, i64 0)) #22, !dbg !1364
  %103 = add i64 %100, %102, !dbg !1365
  call void @llvm.dbg.value(metadata i64 %103, metadata !1327, metadata !DIExpression()) #19, !dbg !1319
  %104 = getelementptr inbounds i8, i8* %60, i64 %103, !dbg !1366
  %105 = load i8, i8* %104, align 1, !dbg !1366, !tbaa !1272
  %106 = icmp eq i8 %105, 46, !dbg !1368
  br i1 %106, label %107, label %114, !dbg !1369

107:                                              ; preds = %97
  %108 = add i64 %103, 1, !dbg !1370
  call void @llvm.dbg.value(metadata i64 %108, metadata !1327, metadata !DIExpression()) #19, !dbg !1319
  %109 = getelementptr inbounds i8, i8* %60, i64 %108, !dbg !1372
  %110 = tail call i64 @strspn(i8* nonnull %109, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i64 0, i64 0)) #22, !dbg !1373
  %111 = add i64 %110, %108, !dbg !1374
  call void @llvm.dbg.value(metadata i64 %111, metadata !1327, metadata !DIExpression()) #19, !dbg !1319
  %112 = getelementptr inbounds i8, i8* %60, i64 %111, !dbg !1319
  %113 = load i8, i8* %112, align 1, !dbg !1375, !tbaa !1272
  br label %114, !dbg !1376

114:                                              ; preds = %107, %97
  %115 = phi i8 [ %113, %107 ], [ %105, %97 ], !dbg !1375
  %116 = phi i64 [ %111, %107 ], [ %103, %97 ], !dbg !1319
  call void @llvm.dbg.value(metadata i64 %116, metadata !1327, metadata !DIExpression()) #19, !dbg !1319
  call void @llvm.dbg.value(metadata i64 %116, metadata !1330, metadata !DIExpression()) #19, !dbg !1319
  %117 = getelementptr inbounds i8, i8* %60, i64 %116, !dbg !1375
  %118 = icmp eq i8 %115, 76, !dbg !1377
  call void @llvm.dbg.value(metadata i1 %118, metadata !1331, metadata !DIExpression()) #19, !dbg !1319
  %119 = zext i1 %118 to i64, !dbg !1378
  %120 = add i64 %116, %119, !dbg !1379
  call void @llvm.dbg.value(metadata i64 %120, metadata !1327, metadata !DIExpression()) #19, !dbg !1319
  %121 = getelementptr inbounds i8, i8* %60, i64 %120, !dbg !1380
  %122 = load i8, i8* %121, align 1, !dbg !1380, !tbaa !1272
  %123 = icmp eq i8 %122, 0, !dbg !1382
  br i1 %123, label %124, label %127, !dbg !1383

124:                                              ; preds = %114
  %125 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i64 0, i64 0), i32 5) #19, !dbg !1384
  %126 = tail call i8* @quote(i8* nonnull %60) #19, !dbg !1384
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %125, i8* %126) #19, !dbg !1384
  unreachable, !dbg !1384

127:                                              ; preds = %114
  %128 = sext i8 %122 to i32, !dbg !1380
  %129 = tail call i8* @memchr(i8* nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i64 0, i64 0), i32 %128, i64 9) #19, !dbg !1385
  %130 = icmp eq i8* %129, null, !dbg !1385
  br i1 %130, label %131, label %136, !dbg !1387

131:                                              ; preds = %127
  %132 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.49, i64 0, i64 0), i32 5) #19, !dbg !1388
  %133 = tail call i8* @quote(i8* nonnull %60) #19, !dbg !1388
  %134 = load i8, i8* %121, align 1, !dbg !1388, !tbaa !1272
  %135 = sext i8 %134 to i32, !dbg !1388
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %132, i8* %133, i32 %135) #19, !dbg !1388
  unreachable, !dbg !1388

136:                                              ; preds = %127
  %137 = add i64 %120, 1, !dbg !1389
  call void @llvm.dbg.value(metadata i64 %137, metadata !1327, metadata !DIExpression()) #19, !dbg !1319
  br label %138, !dbg !1390

138:                                              ; preds = %154, %136
  %139 = phi i64 [ 0, %136 ], [ %155, %154 ], !dbg !1319
  %140 = phi i64 [ %137, %136 ], [ %157, %154 ], !dbg !1391
  call void @llvm.dbg.value(metadata i64 %140, metadata !1327, metadata !DIExpression()) #19, !dbg !1319
  call void @llvm.dbg.value(metadata i64 %139, metadata !1329, metadata !DIExpression()) #19, !dbg !1319
  %141 = getelementptr inbounds i8, i8* %60, i64 %140, !dbg !1392
  %142 = load i8, i8* %141, align 1, !dbg !1392, !tbaa !1272
  %143 = icmp eq i8 %142, 37, !dbg !1393
  br i1 %143, label %144, label %152, !dbg !1394

144:                                              ; preds = %138
  %145 = add i64 %140, 1, !dbg !1395
  %146 = getelementptr inbounds i8, i8* %60, i64 %145, !dbg !1396
  %147 = load i8, i8* %146, align 1, !dbg !1396, !tbaa !1272
  %148 = icmp eq i8 %147, 37, !dbg !1397
  br i1 %148, label %154, label %149, !dbg !1398

149:                                              ; preds = %144
  %150 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.50, i64 0, i64 0), i32 5) #19, !dbg !1399
  %151 = tail call i8* @quote(i8* nonnull %60) #19, !dbg !1399
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %150, i8* %151) #19, !dbg !1399
  unreachable, !dbg !1399

152:                                              ; preds = %138
  %153 = icmp eq i8 %142, 0, !dbg !1400
  br i1 %153, label %158, label %154, !dbg !1401

154:                                              ; preds = %152, %144
  %155 = add i64 %139, 1, !dbg !1402
  call void @llvm.dbg.value(metadata i64 %155, metadata !1329, metadata !DIExpression()) #19, !dbg !1319
  %156 = select i1 %143, i64 2, i64 1, !dbg !1403
  %157 = add i64 %156, %140, !dbg !1404
  call void @llvm.dbg.value(metadata i64 %157, metadata !1327, metadata !DIExpression()) #19, !dbg !1319
  br label %138, !dbg !1405, !llvm.loop !1406

158:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i64 %139, metadata !1329, metadata !DIExpression()) #19, !dbg !1319
  call void @llvm.dbg.value(metadata i64 %140, metadata !1327, metadata !DIExpression()) #19, !dbg !1319
  call void @llvm.dbg.value(metadata i64 %139, metadata !1329, metadata !DIExpression()) #19, !dbg !1319
  call void @llvm.dbg.value(metadata i64 %140, metadata !1327, metadata !DIExpression()) #19, !dbg !1319
  call void @llvm.dbg.value(metadata i64 %139, metadata !1329, metadata !DIExpression()) #19, !dbg !1319
  call void @llvm.dbg.value(metadata i64 %140, metadata !1327, metadata !DIExpression()) #19, !dbg !1319
  call void @llvm.dbg.value(metadata i64 %139, metadata !1329, metadata !DIExpression()) #19, !dbg !1319
  call void @llvm.dbg.value(metadata i64 %140, metadata !1327, metadata !DIExpression()) #19, !dbg !1319
  call void @llvm.dbg.value(metadata i64 %139, metadata !1329, metadata !DIExpression()) #19, !dbg !1319
  call void @llvm.dbg.value(metadata i64 %140, metadata !1327, metadata !DIExpression()) #19, !dbg !1319
  call void @llvm.dbg.value(metadata i64 %139, metadata !1329, metadata !DIExpression()) #19, !dbg !1319
  call void @llvm.dbg.value(metadata i64 %140, metadata !1327, metadata !DIExpression()) #19, !dbg !1319
  call void @llvm.dbg.value(metadata i64 %139, metadata !1329, metadata !DIExpression()) #19, !dbg !1319
  call void @llvm.dbg.value(metadata i64 %140, metadata !1327, metadata !DIExpression()) #19, !dbg !1319
  call void @llvm.dbg.value(metadata i64 %139, metadata !1329, metadata !DIExpression()) #19, !dbg !1319
  call void @llvm.dbg.value(metadata i64 %140, metadata !1327, metadata !DIExpression()) #19, !dbg !1319
  call void @llvm.dbg.value(metadata i64 %139, metadata !1329, metadata !DIExpression()) #19, !dbg !1319
  call void @llvm.dbg.value(metadata i64 %140, metadata !1327, metadata !DIExpression()) #19, !dbg !1319
  call void @llvm.dbg.value(metadata i64 %140, metadata !1332, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #19, !dbg !1409
  %159 = add i64 %140, 2, !dbg !1410
  %160 = tail call noalias i8* @xmalloc(i64 %159) #19, !dbg !1411
  call void @llvm.dbg.value(metadata i8* %160, metadata !1338, metadata !DIExpression()) #19, !dbg !1409
  call void @llvm.dbg.value(metadata i8* %160, metadata !1412, metadata !DIExpression()) #19, !dbg !1422
  call void @llvm.dbg.value(metadata i8* %60, metadata !1420, metadata !DIExpression()) #19, !dbg !1422
  call void @llvm.dbg.value(metadata i64 %116, metadata !1421, metadata !DIExpression()) #19, !dbg !1422
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %160, i8* nonnull align 1 %60, i64 %116, i1 false) #19, !dbg !1424
  %161 = getelementptr inbounds i8, i8* %160, i64 %116, !dbg !1425
  store i8 76, i8* %161, align 1, !dbg !1426, !tbaa !1272
  %162 = getelementptr inbounds i8, i8* %161, i64 1, !dbg !1427
  %163 = getelementptr inbounds i8, i8* %117, i64 %119, !dbg !1428
  call void @llvm.dbg.value(metadata i8* %162, metadata !1429, metadata !DIExpression()) #19, !dbg !1437
  call void @llvm.dbg.value(metadata i8* %163, metadata !1436, metadata !DIExpression()) #19, !dbg !1437
  %164 = call i8* @strcpy(i8* nonnull dereferenceable(1) %162, i8* nonnull dereferenceable(1) %163), !dbg !1439
  call void @llvm.dbg.value(metadata i64 %78, metadata !1231, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1248
  call void @llvm.dbg.value(metadata i64 %139, metadata !1231, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1248
  call void @llvm.dbg.value(metadata i8* %160, metadata !1236, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i64 %139, metadata !1231, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1248
  call void @llvm.dbg.value(metadata i64 %78, metadata !1231, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1248
  call void @llvm.dbg.value(metadata i8* %160, metadata !1236, metadata !DIExpression()), !dbg !1248
  %165 = icmp eq i8* %160, null, !dbg !1440
  br i1 %165, label %170, label %166, !dbg !1442

166:                                              ; preds = %158
  %167 = load i1, i1* @equal_width, align 1, !dbg !1443
  br i1 %167, label %168, label %170, !dbg !1444

168:                                              ; preds = %166
  %169 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.18, i64 0, i64 0), i32 5) #19, !dbg !1445
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %169) #19, !dbg !1447
  tail call void @usage(i32 1) #24, !dbg !1448
  unreachable, !dbg !1448

170:                                              ; preds = %158, %75, %166
  %171 = phi i1 [ true, %166 ], [ false, %158 ], [ false, %75 ]
  %172 = phi i8* [ %160, %166 ], [ null, %158 ], [ null, %75 ]
  %173 = phi i64 [ %139, %166 ], [ %139, %158 ], [ 0, %75 ]
  %174 = phi i64 [ %78, %166 ], [ %78, %158 ], [ 0, %75 ]
  call void @llvm.dbg.value(metadata i8 0, metadata !1238, metadata !DIExpression()), !dbg !1248
  %175 = icmp eq i32 %61, 3, !dbg !1449
  br i1 %175, label %176, label %198, !dbg !1451

176:                                              ; preds = %170
  %177 = load i32, i32* @optind, align 4, !dbg !1452, !tbaa !1265
  %178 = add nsw i32 %177, 1, !dbg !1453
  %179 = sext i32 %178 to i64, !dbg !1454
  %180 = getelementptr inbounds i8*, i8** %1, i64 %179, !dbg !1454
  %181 = load i8*, i8** %180, align 8, !dbg !1454, !tbaa !1176
  call void @llvm.dbg.value(metadata i8* %181, metadata !1455, metadata !DIExpression()) #19, !dbg !1461
  call void @llvm.dbg.value(metadata i64 undef, metadata !1460, metadata !DIExpression()) #19, !dbg !1461
  %182 = load i8, i8* %181, align 1, !dbg !1463, !tbaa !1272
  %183 = sext i8 %182 to i32, !dbg !1463
  %184 = add nsw i32 %183, -48, !dbg !1463
  %185 = icmp ult i32 %184, 10, !dbg !1463
  br i1 %185, label %186, label %199, !dbg !1464

186:                                              ; preds = %176
  %187 = tail call i64 @strlen(i8* nonnull %181) #22, !dbg !1465
  call void @llvm.dbg.value(metadata i64 %187, metadata !1460, metadata !DIExpression()) #19, !dbg !1461
  %188 = tail call i64 @strspn(i8* nonnull %181, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i64 0, i64 0)) #22, !dbg !1466
  %189 = icmp eq i64 %187, %188, !dbg !1467
  br i1 %189, label %190, label %199, !dbg !1468

190:                                              ; preds = %186
  %191 = getelementptr inbounds %struct.operand, %struct.operand* %6, i64 0, i32 0, !dbg !1469
  %192 = call zeroext i1 @xstrtold(i8* nonnull %181, i8** null, x86_fp80* nonnull %191, x86_fp80 (i8*, i8**)* nonnull @cl_strtold) #19, !dbg !1470
  br i1 %192, label %193, label %199, !dbg !1471

193:                                              ; preds = %190
  %194 = load x86_fp80, x86_fp80* %191, align 16, !dbg !1472, !tbaa !1473
  %195 = fcmp ule x86_fp80 %194, 0xK00000000000000000000, !dbg !1477
  %196 = fcmp ugt x86_fp80 %194, 0xK4006C800000000000000, !dbg !1478
  %197 = or i1 %195, %196, !dbg !1479
  br i1 %197, label %199, label %198, !dbg !1479

198:                                              ; preds = %193, %170
  call void @llvm.dbg.value(metadata i8 1, metadata !1238, metadata !DIExpression()), !dbg !1248
  br label %199, !dbg !1480

199:                                              ; preds = %176, %193, %198, %190, %186
  %200 = phi i1 [ true, %198 ], [ false, %193 ], [ false, %190 ], [ false, %186 ], [ false, %176 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1238, metadata !DIExpression()), !dbg !1248
  %201 = load i32, i32* @optind, align 4, !dbg !1481, !tbaa !1265
  %202 = sext i32 %201 to i64, !dbg !1482
  %203 = getelementptr inbounds i8*, i8** %1, i64 %202, !dbg !1482
  %204 = load i8*, i8** %203, align 8, !dbg !1482, !tbaa !1176
  call void @llvm.dbg.value(metadata i8* %204, metadata !1455, metadata !DIExpression()) #19, !dbg !1483
  call void @llvm.dbg.value(metadata i64 undef, metadata !1460, metadata !DIExpression()) #19, !dbg !1483
  %205 = load i8, i8* %204, align 1, !dbg !1485, !tbaa !1272
  %206 = sext i8 %205 to i32, !dbg !1485
  %207 = add nsw i32 %206, -48, !dbg !1485
  %208 = icmp ult i32 %207, 10, !dbg !1485
  br i1 %208, label %209, label %267, !dbg !1486

209:                                              ; preds = %199
  %210 = call i64 @strlen(i8* nonnull %204) #22, !dbg !1487
  call void @llvm.dbg.value(metadata i64 %210, metadata !1460, metadata !DIExpression()) #19, !dbg !1483
  %211 = call i64 @strspn(i8* nonnull %204, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i64 0, i64 0)) #22, !dbg !1488
  %212 = icmp eq i64 %210, %211, !dbg !1489
  br i1 %212, label %213, label %267, !dbg !1490

213:                                              ; preds = %209
  %214 = icmp eq i32 %61, 1, !dbg !1491
  br i1 %214, label %244, label %215, !dbg !1492

215:                                              ; preds = %213
  %216 = add nsw i32 %201, 1, !dbg !1493
  %217 = sext i32 %216 to i64, !dbg !1494
  %218 = getelementptr inbounds i8*, i8** %1, i64 %217, !dbg !1494
  %219 = load i8*, i8** %218, align 8, !dbg !1494, !tbaa !1176
  call void @llvm.dbg.value(metadata i8* %219, metadata !1455, metadata !DIExpression()) #19, !dbg !1495
  call void @llvm.dbg.value(metadata i64 undef, metadata !1460, metadata !DIExpression()) #19, !dbg !1495
  %220 = load i8, i8* %219, align 1, !dbg !1497, !tbaa !1272
  %221 = sext i8 %220 to i32, !dbg !1497
  %222 = add nsw i32 %221, -48, !dbg !1497
  %223 = icmp ult i32 %222, 10, !dbg !1497
  br i1 %223, label %224, label %267, !dbg !1498

224:                                              ; preds = %215
  %225 = call i64 @strlen(i8* nonnull %219) #22, !dbg !1499
  call void @llvm.dbg.value(metadata i64 %225, metadata !1460, metadata !DIExpression()) #19, !dbg !1495
  %226 = call i64 @strspn(i8* nonnull %219, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i64 0, i64 0)) #22, !dbg !1500
  %227 = icmp eq i64 %225, %226, !dbg !1501
  br i1 %227, label %228, label %267, !dbg !1502

228:                                              ; preds = %224
  %229 = icmp ult i32 %61, 3, !dbg !1503
  br i1 %229, label %244, label %230, !dbg !1504

230:                                              ; preds = %228
  br i1 %200, label %231, label %267, !dbg !1505

231:                                              ; preds = %230
  %232 = add nsw i32 %201, 2, !dbg !1506
  %233 = sext i32 %232 to i64, !dbg !1507
  %234 = getelementptr inbounds i8*, i8** %1, i64 %233, !dbg !1507
  %235 = load i8*, i8** %234, align 8, !dbg !1507, !tbaa !1176
  call void @llvm.dbg.value(metadata i8* %235, metadata !1455, metadata !DIExpression()) #19, !dbg !1508
  call void @llvm.dbg.value(metadata i64 undef, metadata !1460, metadata !DIExpression()) #19, !dbg !1508
  %236 = load i8, i8* %235, align 1, !dbg !1510, !tbaa !1272
  %237 = sext i8 %236 to i32, !dbg !1510
  %238 = add nsw i32 %237, -48, !dbg !1510
  %239 = icmp ult i32 %238, 10, !dbg !1510
  br i1 %239, label %240, label %267, !dbg !1511

240:                                              ; preds = %231
  %241 = call i64 @strlen(i8* nonnull %235) #22, !dbg !1512
  call void @llvm.dbg.value(metadata i64 %241, metadata !1460, metadata !DIExpression()) #19, !dbg !1508
  %242 = call i64 @strspn(i8* nonnull %235, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i64 0, i64 0)) #22, !dbg !1513
  %243 = icmp eq i64 %241, %242, !dbg !1514
  br i1 %243, label %244, label %267, !dbg !1515

244:                                              ; preds = %213, %240, %228
  %245 = load i1, i1* @equal_width, align 1, !dbg !1516
  %246 = or i1 %171, %245, !dbg !1517
  br i1 %246, label %267, label %247, !dbg !1517

247:                                              ; preds = %244
  %248 = load i8*, i8** @separator, align 8, !dbg !1518, !tbaa !1176
  %249 = call i64 @strlen(i8* nonnull dereferenceable(1) %248) #22, !dbg !1519
  %250 = icmp eq i64 %249, 1, !dbg !1520
  br i1 %250, label %251, label %267, !dbg !1521

251:                                              ; preds = %247
  %252 = select i1 %214, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i8* %204, !dbg !1522
  call void @llvm.dbg.value(metadata i8* %252, metadata !1239, metadata !DIExpression()), !dbg !1523
  %253 = add i32 %61, -1, !dbg !1524
  %254 = add i32 %253, %201, !dbg !1525
  %255 = zext i32 %254 to i64, !dbg !1526
  %256 = getelementptr inbounds i8*, i8** %1, i64 %255, !dbg !1526
  %257 = load i8*, i8** %256, align 8, !dbg !1526, !tbaa !1176
  call void @llvm.dbg.value(metadata i8* %257, metadata !1242, metadata !DIExpression()), !dbg !1523
  %258 = getelementptr inbounds %struct.operand, %struct.operand* %6, i64 0, i32 0, !dbg !1527
  %259 = load x86_fp80, x86_fp80* %258, align 16, !dbg !1527, !tbaa !1473
  %260 = fptoui x86_fp80 %259 to i64, !dbg !1529
  %261 = call fastcc zeroext i1 @seq_fast(i8* %252, i8* %257, i64 %260), !dbg !1530
  br i1 %261, label %529, label %262

262:                                              ; preds = %251
  %263 = load i32, i32* @optind, align 4, !dbg !1531, !tbaa !1265
  %264 = sext i32 %263 to i64, !dbg !1248
  %265 = getelementptr inbounds i8*, i8** %1, i64 %264, !dbg !1248
  %266 = load i8*, i8** %265, align 8, !dbg !1532, !tbaa !1176
  br label %267

267:                                              ; preds = %262, %231, %215, %199, %247, %244, %240, %230, %224, %209
  %268 = phi i8* [ %266, %262 ], [ %204, %231 ], [ %204, %215 ], [ %204, %199 ], [ %204, %247 ], [ %204, %244 ], [ %204, %240 ], [ %204, %230 ], [ %204, %224 ], [ %204, %209 ], !dbg !1532
  %269 = phi i32 [ %263, %262 ], [ %201, %231 ], [ %201, %215 ], [ %201, %199 ], [ %201, %247 ], [ %201, %244 ], [ %201, %240 ], [ %201, %230 ], [ %201, %224 ], [ %201, %209 ], !dbg !1531
  %270 = bitcast %struct.operand* %8 to i8*, !dbg !1533
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %270) #19, !dbg !1533
  %271 = add nsw i32 %269, 1, !dbg !1531
  store i32 %271, i32* @optind, align 4, !dbg !1531, !tbaa !1265
  call fastcc void @scan_arg(%struct.operand* nonnull sret %8, i8* %268), !dbg !1533
  %272 = getelementptr inbounds %struct.operand, %struct.operand* %8, i64 0, i32 0, !dbg !1533
  %273 = load x86_fp80, x86_fp80* %272, align 16, !dbg !1533, !tbaa.struct !1534
  call void @llvm.dbg.value(metadata x86_fp80 %273, metadata !1230, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 80)), !dbg !1248
  %274 = getelementptr inbounds i8, i8* %270, i64 10, !dbg !1533
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 2 dereferenceable(6) %14, i8* nonnull align 2 dereferenceable(6) %274, i64 6, i1 false), !dbg !1533, !tbaa.struct !1534
  %275 = getelementptr inbounds %struct.operand, %struct.operand* %8, i64 0, i32 1, !dbg !1533
  %276 = load i64, i64* %275, align 16, !dbg !1533, !tbaa.struct !1534
  call void @llvm.dbg.value(metadata i64 %276, metadata !1230, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1248
  %277 = getelementptr inbounds %struct.operand, %struct.operand* %8, i64 0, i32 2, !dbg !1533
  %278 = load i32, i32* %277, align 8, !dbg !1533, !tbaa.struct !1534
  call void @llvm.dbg.value(metadata i32 %278, metadata !1230, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32)), !dbg !1248
  call void @llvm.dbg.value(metadata i32 undef, metadata !1230, metadata !DIExpression(DW_OP_LLVM_fragment, 224, 32)), !dbg !1248
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %270) #19, !dbg !1533
  %279 = load i32, i32* @optind, align 4, !dbg !1537, !tbaa !1265
  %280 = icmp slt i32 %279, %0, !dbg !1539
  br i1 %280, label %281, label %333, !dbg !1540

281:                                              ; preds = %267
  call void @llvm.dbg.value(metadata x86_fp80 %273, metadata !1228, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 80)), !dbg !1248
  call void @llvm.dbg.value(metadata i64 %276, metadata !1228, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1248
  call void @llvm.dbg.value(metadata i32 %278, metadata !1228, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32)), !dbg !1248
  call void @llvm.dbg.value(metadata i32 undef, metadata !1228, metadata !DIExpression(DW_OP_LLVM_fragment, 224, 32)), !dbg !1248
  %282 = bitcast %struct.operand* %9 to i8*, !dbg !1541
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %282) #19, !dbg !1541
  %283 = add nsw i32 %279, 1, !dbg !1543
  store i32 %283, i32* @optind, align 4, !dbg !1543, !tbaa !1265
  %284 = sext i32 %279 to i64, !dbg !1544
  %285 = getelementptr inbounds i8*, i8** %1, i64 %284, !dbg !1544
  %286 = load i8*, i8** %285, align 8, !dbg !1544, !tbaa !1176
  call fastcc void @scan_arg(%struct.operand* nonnull sret %9, i8* %286), !dbg !1541
  %287 = getelementptr inbounds %struct.operand, %struct.operand* %9, i64 0, i32 0, !dbg !1541
  %288 = load x86_fp80, x86_fp80* %287, align 16, !dbg !1541, !tbaa.struct !1534
  call void @llvm.dbg.value(metadata x86_fp80 %288, metadata !1230, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 80)), !dbg !1248
  %289 = getelementptr inbounds i8, i8* %282, i64 10, !dbg !1541
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 2 dereferenceable(6) %14, i8* nonnull align 2 dereferenceable(6) %289, i64 6, i1 false), !dbg !1541, !tbaa.struct !1534
  %290 = getelementptr inbounds %struct.operand, %struct.operand* %9, i64 0, i32 1, !dbg !1541
  %291 = load i64, i64* %290, align 16, !dbg !1541, !tbaa.struct !1534
  call void @llvm.dbg.value(metadata i64 %291, metadata !1230, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1248
  %292 = getelementptr inbounds %struct.operand, %struct.operand* %9, i64 0, i32 2, !dbg !1541
  %293 = load i32, i32* %292, align 8, !dbg !1541, !tbaa.struct !1534
  call void @llvm.dbg.value(metadata i32 %293, metadata !1230, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32)), !dbg !1248
  %294 = getelementptr inbounds i8, i8* %282, i64 28, !dbg !1541
  %295 = bitcast i8* %294 to i32*, !dbg !1541
  %296 = load i32, i32* %295, align 4, !dbg !1541, !tbaa.struct !1534
  call void @llvm.dbg.value(metadata i32 %296, metadata !1230, metadata !DIExpression(DW_OP_LLVM_fragment, 224, 32)), !dbg !1248
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %282) #19, !dbg !1541
  %297 = load i32, i32* @optind, align 4, !dbg !1545, !tbaa !1265
  %298 = icmp slt i32 %297, %0, !dbg !1547
  br i1 %298, label %299, label %328, !dbg !1548

299:                                              ; preds = %281
  %300 = getelementptr inbounds %struct.operand, %struct.operand* %6, i64 0, i32 0, !dbg !1549
  store x86_fp80 %288, x86_fp80* %300, align 16, !dbg !1549, !tbaa.struct !1534
  %301 = getelementptr inbounds i8, i8* %13, i64 10, !dbg !1549
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 2 dereferenceable(6) %301, i8* nonnull align 2 dereferenceable(6) %14, i64 6, i1 false), !dbg !1549, !tbaa.struct !1534
  %302 = getelementptr inbounds %struct.operand, %struct.operand* %6, i64 0, i32 1, !dbg !1549
  store i64 %291, i64* %302, align 16, !dbg !1549, !tbaa.struct !1534
  %303 = getelementptr inbounds %struct.operand, %struct.operand* %6, i64 0, i32 2, !dbg !1549
  store i32 %293, i32* %303, align 8, !dbg !1549, !tbaa.struct !1534
  %304 = getelementptr inbounds i8, i8* %13, i64 28, !dbg !1549
  %305 = bitcast i8* %304 to i32*, !dbg !1549
  store i32 %296, i32* %305, align 4, !dbg !1549, !tbaa.struct !1534
  %306 = fcmp oeq x86_fp80 %288, 0xK00000000000000000000, !dbg !1551
  br i1 %306, label %307, label %315, !dbg !1553

307:                                              ; preds = %299
  %308 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i32 5) #19, !dbg !1554
  %309 = load i32, i32* @optind, align 4, !dbg !1556, !tbaa !1265
  %310 = add nsw i32 %309, -1, !dbg !1557
  %311 = sext i32 %310 to i64, !dbg !1558
  %312 = getelementptr inbounds i8*, i8** %1, i64 %311, !dbg !1558
  %313 = load i8*, i8** %312, align 8, !dbg !1558, !tbaa !1176
  %314 = call i8* @quote(i8* %313) #19, !dbg !1559
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %308, i8* %314) #19, !dbg !1560
  call void @usage(i32 1) #24, !dbg !1561
  unreachable, !dbg !1561

315:                                              ; preds = %299
  %316 = bitcast %struct.operand* %10 to i8*, !dbg !1562
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %316) #19, !dbg !1562
  %317 = add nsw i32 %297, 1, !dbg !1563
  store i32 %317, i32* @optind, align 4, !dbg !1563, !tbaa !1265
  %318 = sext i32 %297 to i64, !dbg !1564
  %319 = getelementptr inbounds i8*, i8** %1, i64 %318, !dbg !1564
  %320 = load i8*, i8** %319, align 8, !dbg !1564, !tbaa !1176
  call fastcc void @scan_arg(%struct.operand* nonnull sret %10, i8* %320), !dbg !1562
  %321 = getelementptr inbounds %struct.operand, %struct.operand* %10, i64 0, i32 0, !dbg !1562
  %322 = load x86_fp80, x86_fp80* %321, align 16, !dbg !1562, !tbaa.struct !1534
  call void @llvm.dbg.value(metadata x86_fp80 %322, metadata !1230, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 80)), !dbg !1248
  %323 = getelementptr inbounds i8, i8* %316, i64 10, !dbg !1562
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 2 dereferenceable(6) %14, i8* nonnull align 2 dereferenceable(6) %323, i64 6, i1 false), !dbg !1562, !tbaa.struct !1534
  %324 = getelementptr inbounds %struct.operand, %struct.operand* %10, i64 0, i32 1, !dbg !1562
  %325 = load i64, i64* %324, align 16, !dbg !1562, !tbaa.struct !1534
  call void @llvm.dbg.value(metadata i64 %325, metadata !1230, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1248
  %326 = getelementptr inbounds %struct.operand, %struct.operand* %10, i64 0, i32 2, !dbg !1562
  %327 = load i32, i32* %326, align 8, !dbg !1562, !tbaa.struct !1534
  call void @llvm.dbg.value(metadata i32 %327, metadata !1230, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32)), !dbg !1248
  call void @llvm.dbg.value(metadata i32 undef, metadata !1230, metadata !DIExpression(DW_OP_LLVM_fragment, 224, 32)), !dbg !1248
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %316) #19, !dbg !1562
  br label %328, !dbg !1565

328:                                              ; preds = %281, %315
  %329 = phi i64 [ %325, %315 ], [ %291, %281 ], !dbg !1248
  %330 = phi i32 [ %327, %315 ], [ %293, %281 ], !dbg !1248
  %331 = phi x86_fp80 [ %322, %315 ], [ %288, %281 ], !dbg !1248
  call void @llvm.dbg.value(metadata x86_fp80 %331, metadata !1230, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 80)), !dbg !1248
  call void @llvm.dbg.value(metadata i32 %330, metadata !1230, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32)), !dbg !1248
  call void @llvm.dbg.value(metadata i32 undef, metadata !1230, metadata !DIExpression(DW_OP_LLVM_fragment, 224, 32)), !dbg !1248
  call void @llvm.dbg.value(metadata x86_fp80 %273, metadata !1228, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 80)), !dbg !1248
  call void @llvm.dbg.value(metadata i32 %278, metadata !1228, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32)), !dbg !1248
  call void @llvm.dbg.value(metadata i32 undef, metadata !1228, metadata !DIExpression(DW_OP_LLVM_fragment, 224, 32)), !dbg !1248
  call void @llvm.dbg.value(metadata i64 %329, metadata !1230, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1248
  call void @llvm.dbg.value(metadata i64 %276, metadata !1228, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1248
  %332 = icmp eq i32 %278, 0, !dbg !1566
  br i1 %332, label %333, label %396, !dbg !1567

333:                                              ; preds = %267, %328
  %334 = phi x86_fp80 [ %331, %328 ], [ %273, %267 ]
  %335 = phi i32 [ %330, %328 ], [ %278, %267 ]
  %336 = phi x86_fp80 [ %273, %328 ], [ 0xK3FFF8000000000000000, %267 ]
  %337 = phi i64 [ %329, %328 ], [ %276, %267 ]
  %338 = phi i64 [ %276, %328 ], [ 1, %267 ]
  %339 = getelementptr inbounds %struct.operand, %struct.operand* %6, i64 0, i32 2, !dbg !1568
  %340 = load i32, i32* %339, align 8, !dbg !1568, !tbaa !1569
  %341 = or i32 %340, %335, !dbg !1570
  %342 = icmp eq i32 %341, 0, !dbg !1570
  br i1 %342, label %343, label %396, !dbg !1570

343:                                              ; preds = %333
  %344 = fmul x86_fp80 %336, 0xK00000000000000000000, !dbg !1571
  %345 = fcmp une x86_fp80 %344, 0xK00000000000000000000, !dbg !1571
  %346 = fcmp ult x86_fp80 %336, 0xK00000000000000000000, !dbg !1572
  %347 = or i1 %346, %345, !dbg !1573
  %348 = fcmp ult x86_fp80 %334, 0xK00000000000000000000, !dbg !1574
  %349 = or i1 %348, %347, !dbg !1573
  br i1 %349, label %396, label %350, !dbg !1573

350:                                              ; preds = %343
  %351 = getelementptr inbounds %struct.operand, %struct.operand* %6, i64 0, i32 0, !dbg !1575
  %352 = load x86_fp80, x86_fp80* %351, align 16, !dbg !1575, !tbaa !1473
  %353 = fcmp ule x86_fp80 %352, 0xK00000000000000000000, !dbg !1576
  %354 = fcmp ugt x86_fp80 %352, 0xK4006C800000000000000, !dbg !1577
  %355 = or i1 %353, %354, !dbg !1578
  %356 = load i1, i1* @equal_width, align 1, !dbg !1579
  %357 = or i1 %171, %356, !dbg !1580
  %358 = or i1 %355, %357, !dbg !1578
  br i1 %358, label %396, label %359, !dbg !1578

359:                                              ; preds = %350
  %360 = load i8*, i8** @separator, align 8, !dbg !1581, !tbaa !1176
  %361 = call i64 @strlen(i8* nonnull dereferenceable(1) %360) #22, !dbg !1582
  %362 = icmp eq i64 %361, 1, !dbg !1583
  br i1 %362, label %363, label %396, !dbg !1584

363:                                              ; preds = %359
  %364 = bitcast i8** %11 to i8*, !dbg !1585
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %364) #19, !dbg !1585
  %365 = bitcast i8** %12 to i8*, !dbg !1586
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %365) #19, !dbg !1586
  call void @llvm.dbg.value(metadata i8** %11, metadata !1243, metadata !DIExpression(DW_OP_deref)), !dbg !1587
  %366 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %11, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), x86_fp80 %336) #19, !dbg !1588
  %367 = icmp slt i32 %366, 0, !dbg !1590
  br i1 %367, label %368, label %369, !dbg !1591

368:                                              ; preds = %363
  call void @xalloc_die() #23, !dbg !1592
  unreachable, !dbg !1592

369:                                              ; preds = %363
  %370 = fmul x86_fp80 %334, 0xK00000000000000000000, !dbg !1593
  %371 = fcmp oeq x86_fp80 %370, 0xK00000000000000000000, !dbg !1593
  br i1 %371, label %374, label %372, !dbg !1595

372:                                              ; preds = %369
  %373 = call noalias i8* @xstrdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0)) #19, !dbg !1596
  call void @llvm.dbg.value(metadata i8* %373, metadata !1246, metadata !DIExpression()), !dbg !1587
  store i8* %373, i8** %12, align 8, !dbg !1597, !tbaa !1176
  br label %378, !dbg !1598

374:                                              ; preds = %369
  call void @llvm.dbg.value(metadata i8** %12, metadata !1246, metadata !DIExpression(DW_OP_deref)), !dbg !1587
  %375 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %12, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), x86_fp80 %334) #19, !dbg !1599
  %376 = icmp slt i32 %375, 0, !dbg !1601
  br i1 %376, label %377, label %378, !dbg !1602

377:                                              ; preds = %374
  call void @xalloc_die() #23, !dbg !1603
  unreachable, !dbg !1603

378:                                              ; preds = %374, %372
  %379 = load i8*, i8** %11, align 8, !dbg !1604, !tbaa !1176
  call void @llvm.dbg.value(metadata i8* %379, metadata !1243, metadata !DIExpression()), !dbg !1587
  %380 = load i8, i8* %379, align 1, !dbg !1606, !tbaa !1272
  %381 = icmp eq i8 %380, 45, !dbg !1607
  br i1 %381, label %392, label %382, !dbg !1608

382:                                              ; preds = %378
  %383 = load i8*, i8** %12, align 8, !dbg !1609, !tbaa !1176
  call void @llvm.dbg.value(metadata i8* %383, metadata !1246, metadata !DIExpression()), !dbg !1587
  %384 = load i8, i8* %383, align 1, !dbg !1610, !tbaa !1272
  %385 = icmp eq i8 %384, 45, !dbg !1611
  br i1 %385, label %392, label %386, !dbg !1612

386:                                              ; preds = %382
  %387 = load x86_fp80, x86_fp80* %351, align 16, !dbg !1613, !tbaa !1473
  %388 = fptoui x86_fp80 %387 to i64, !dbg !1614
  %389 = call fastcc zeroext i1 @seq_fast(i8* nonnull %379, i8* nonnull %383, i64 %388), !dbg !1615
  br i1 %389, label %395, label %390, !dbg !1616

390:                                              ; preds = %386
  %391 = load i8*, i8** %11, align 8, !dbg !1617, !tbaa !1176
  br label %392, !dbg !1616

392:                                              ; preds = %390, %382, %378
  %393 = phi i8* [ %391, %390 ], [ %379, %382 ], [ %379, %378 ], !dbg !1617
  call void @llvm.dbg.value(metadata i8* %393, metadata !1243, metadata !DIExpression()), !dbg !1587
  call void @free(i8* %393) #19, !dbg !1618
  %394 = load i8*, i8** %12, align 8, !dbg !1619, !tbaa !1176
  call void @llvm.dbg.value(metadata i8* %394, metadata !1246, metadata !DIExpression()), !dbg !1587
  call void @free(i8* %394) #19, !dbg !1620
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %365) #19, !dbg !1621
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %364) #19, !dbg !1621
  br label %396

395:                                              ; preds = %386
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %365) #19, !dbg !1621
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %364) #19, !dbg !1621
  br label %529

396:                                              ; preds = %392, %350, %343, %359, %333, %328
  %397 = phi i1 [ true, %392 ], [ true, %350 ], [ true, %343 ], [ true, %359 ], [ true, %333 ], [ false, %328 ]
  %398 = phi x86_fp80 [ %334, %392 ], [ %334, %350 ], [ %334, %343 ], [ %334, %359 ], [ %334, %333 ], [ %331, %328 ]
  %399 = phi i32 [ 0, %392 ], [ 0, %350 ], [ 0, %343 ], [ 0, %359 ], [ %335, %333 ], [ %330, %328 ]
  %400 = phi x86_fp80 [ %336, %392 ], [ %336, %350 ], [ %336, %343 ], [ %336, %359 ], [ %336, %333 ], [ %273, %328 ]
  %401 = phi i32 [ 0, %392 ], [ 0, %350 ], [ 0, %343 ], [ 0, %359 ], [ 0, %333 ], [ %278, %328 ]
  %402 = phi i64 [ %337, %392 ], [ %337, %350 ], [ %337, %343 ], [ %337, %359 ], [ %337, %333 ], [ %329, %328 ]
  %403 = phi i64 [ %338, %392 ], [ %338, %350 ], [ %338, %343 ], [ %338, %359 ], [ %338, %333 ], [ %276, %328 ]
  %404 = icmp eq i8* %172, null, !dbg !1622
  br i1 %404, label %405, label %443, !dbg !1624

405:                                              ; preds = %396
  call void @llvm.dbg.value(metadata x86_fp80 %331, metadata !206, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 80)), !dbg !1625
  call void @llvm.dbg.value(metadata i64 %329, metadata !206, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1625
  call void @llvm.dbg.value(metadata i32 %330, metadata !206, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32)), !dbg !1625
  call void @llvm.dbg.value(metadata i32 undef, metadata !206, metadata !DIExpression(DW_OP_LLVM_fragment, 224, 32)), !dbg !1625
  %406 = getelementptr inbounds %struct.operand, %struct.operand* %6, i64 0, i32 2, !dbg !1627
  %407 = load i32, i32* %406, align 8, !dbg !1627
  call void @llvm.dbg.value(metadata i32 %407, metadata !205, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32)), !dbg !1625
  call void @llvm.dbg.value(metadata i32 undef, metadata !205, metadata !DIExpression(DW_OP_LLVM_fragment, 224, 32)), !dbg !1625
  call void @llvm.dbg.value(metadata x86_fp80 %273, metadata !204, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 80)), !dbg !1625
  call void @llvm.dbg.value(metadata i64 %276, metadata !204, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1625
  call void @llvm.dbg.value(metadata i32 %278, metadata !204, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32)), !dbg !1625
  call void @llvm.dbg.value(metadata i32 undef, metadata !204, metadata !DIExpression(DW_OP_LLVM_fragment, 224, 32)), !dbg !1625
  %408 = icmp sgt i32 %401, %407, !dbg !1628
  %409 = select i1 %408, i32 %401, i32 %407, !dbg !1628
  call void @llvm.dbg.value(metadata i32 %409, metadata !207, metadata !DIExpression()) #19, !dbg !1625
  %410 = icmp eq i32 %409, 2147483647, !dbg !1629
  %411 = icmp eq i32 %399, 2147483647, !dbg !1630
  %412 = or i1 %411, %410, !dbg !1631
  br i1 %412, label %443, label %413, !dbg !1631

413:                                              ; preds = %405
  %414 = load i1, i1* @equal_width, align 1, !dbg !1632
  br i1 %414, label %415, label %441, !dbg !1633

415:                                              ; preds = %413
  %416 = sub nsw i32 %409, %401, !dbg !1634
  %417 = sext i32 %416 to i64, !dbg !1635
  call void @llvm.dbg.value(metadata i64 undef, metadata !208, metadata !DIExpression()) #19, !dbg !1636
  %418 = sub nsw i32 %409, %399, !dbg !1637
  %419 = sext i32 %418 to i64, !dbg !1638
  call void @llvm.dbg.value(metadata i64 undef, metadata !213, metadata !DIExpression()) #19, !dbg !1636
  %420 = icmp ne i32 %399, 0, !dbg !1639
  %421 = icmp eq i32 %409, 0, !dbg !1641
  %422 = and i1 %420, %421, !dbg !1642
  %423 = sext i1 %422 to i64, !dbg !1642
  call void @llvm.dbg.value(metadata i64 undef, metadata !213, metadata !DIExpression()) #19, !dbg !1636
  %424 = icmp eq i32 %399, 0, !dbg !1643
  %425 = icmp ne i32 %409, 0, !dbg !1645
  %426 = and i1 %424, %425, !dbg !1646
  %427 = zext i1 %426 to i64, !dbg !1646
  %428 = add i64 %402, %419, !dbg !1647
  %429 = add i64 %428, %423, !dbg !1642
  %430 = add i64 %429, %427, !dbg !1646
  call void @llvm.dbg.value(metadata i64 %430, metadata !213, metadata !DIExpression()) #19, !dbg !1636
  %431 = and i1 %397, %425, !dbg !1648
  %432 = zext i1 %431 to i64, !dbg !1648
  %433 = add i64 %403, %417, !dbg !1650
  %434 = add i64 %433, %432, !dbg !1648
  call void @llvm.dbg.value(metadata i64 %434, metadata !208, metadata !DIExpression()) #19, !dbg !1636
  %435 = icmp ugt i64 %434, %430, !dbg !1651
  %436 = select i1 %435, i64 %434, i64 %430, !dbg !1651
  call void @llvm.dbg.value(metadata i64 %436, metadata !214, metadata !DIExpression()) #19, !dbg !1636
  %437 = icmp ult i64 %436, 2147483648, !dbg !1652
  br i1 %437, label %438, label %443, !dbg !1653

438:                                              ; preds = %415
  %439 = trunc i64 %436 to i32, !dbg !1654
  call void @llvm.dbg.value(metadata i32 %439, metadata !215, metadata !DIExpression()) #19, !dbg !1655
  %440 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @get_default_format.format_buf, i64 0, i64 0), i32 1, i64 28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i64 0, i64 0), i32 %439, i32 %409) #19, !dbg !1656
  br label %443

441:                                              ; preds = %413
  %442 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @get_default_format.format_buf, i64 0, i64 0), i32 1, i64 28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i64 0, i64 0), i32 %409) #19, !dbg !1657
  br label %443, !dbg !1659

443:                                              ; preds = %441, %438, %415, %405, %396
  %444 = phi i8* [ %172, %396 ], [ getelementptr inbounds ([28 x i8], [28 x i8]* @get_default_format.format_buf, i64 0, i64 0), %441 ], [ getelementptr inbounds ([28 x i8], [28 x i8]* @get_default_format.format_buf, i64 0, i64 0), %438 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i64 0, i64 0), %415 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i64 0, i64 0), %405 ], !dbg !1248
  call void @llvm.dbg.value(metadata i8* %444, metadata !1236, metadata !DIExpression()), !dbg !1248
  %445 = getelementptr inbounds %struct.operand, %struct.operand* %6, i64 0, i32 0, !dbg !1660
  %446 = load x86_fp80, x86_fp80* %445, align 16, !dbg !1660, !tbaa !1473
  call void @llvm.dbg.value(metadata i64 %78, metadata !1661, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #19, !dbg !1689
  call void @llvm.dbg.value(metadata i64 %139, metadata !1661, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #19, !dbg !1689
  call void @llvm.dbg.value(metadata i8* %444, metadata !1666, metadata !DIExpression()) #19, !dbg !1689
  call void @llvm.dbg.value(metadata x86_fp80 %273, metadata !1667, metadata !DIExpression()) #19, !dbg !1689
  call void @llvm.dbg.value(metadata x86_fp80 %446, metadata !1668, metadata !DIExpression()) #19, !dbg !1689
  call void @llvm.dbg.value(metadata x86_fp80 %331, metadata !1669, metadata !DIExpression()) #19, !dbg !1689
  %447 = fcmp olt x86_fp80 %446, 0xK00000000000000000000, !dbg !1691
  %448 = fcmp olt x86_fp80 %400, %398, !dbg !1692
  %449 = fcmp olt x86_fp80 %398, %400, !dbg !1692
  %450 = select i1 %447, i1 %448, i1 %449, !dbg !1692
  call void @llvm.dbg.value(metadata i1 %450, metadata !1670, metadata !DIExpression()) #19, !dbg !1689
  br i1 %450, label %529, label %451, !dbg !1693

451:                                              ; preds = %443
  call void @llvm.dbg.value(metadata i8 0, metadata !1670, metadata !DIExpression()) #19, !dbg !1689
  call void @llvm.dbg.value(metadata x86_fp80 %273, metadata !1671, metadata !DIExpression()) #19, !dbg !1694
  call void @llvm.dbg.value(metadata x86_fp80 0xK3FFF8000000000000000, metadata !1674, metadata !DIExpression()) #19, !dbg !1694
  call void @llvm.dbg.value(metadata x86_fp80 %273, metadata !1675, metadata !DIExpression()) #19, !dbg !1695
  %452 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %444, x86_fp80 %400) #19, !dbg !1696
  %453 = icmp slt i32 %452, 0, !dbg !1698
  br i1 %453, label %458, label %454, !dbg !1699

454:                                              ; preds = %451
  %455 = bitcast x86_fp80* %3 to i8*, !dbg !1700
  %456 = bitcast i8** %4 to i8*, !dbg !1700
  %457 = bitcast i8** %5 to i8*, !dbg !1701
  br label %459, !dbg !1699

458:                                              ; preds = %520, %451
  call fastcc void @io_error() #23, !dbg !1702
  unreachable, !dbg !1702

459:                                              ; preds = %520, %454
  %460 = phi i8 [ 0, %454 ], [ %470, %520 ]
  %461 = phi x86_fp80 [ %400, %454 ], [ %466, %520 ]
  %462 = phi x86_fp80 [ 0xK3FFF8000000000000000, %454 ], [ %521, %520 ]
  call void @llvm.dbg.value(metadata i8 %460, metadata !1670, metadata !DIExpression()) #19, !dbg !1689
  call void @llvm.dbg.value(metadata x86_fp80 %461, metadata !1671, metadata !DIExpression()) #19, !dbg !1694
  call void @llvm.dbg.value(metadata x86_fp80 %462, metadata !1674, metadata !DIExpression()) #19, !dbg !1694
  %463 = icmp eq i8 %460, 0, !dbg !1703
  br i1 %463, label %464, label %524, !dbg !1705

464:                                              ; preds = %459
  %465 = fmul x86_fp80 %446, %462, !dbg !1706
  %466 = fadd x86_fp80 %400, %465, !dbg !1707
  call void @llvm.dbg.value(metadata x86_fp80 %466, metadata !1671, metadata !DIExpression()) #19, !dbg !1694
  %467 = fcmp olt x86_fp80 %466, %398, !dbg !1708
  %468 = fcmp ogt x86_fp80 %466, %398, !dbg !1708
  %469 = select i1 %447, i1 %467, i1 %468, !dbg !1708
  %470 = zext i1 %469 to i8, !dbg !1709
  call void @llvm.dbg.value(metadata i8 %470, metadata !1670, metadata !DIExpression()) #19, !dbg !1689
  br i1 %469, label %471, label %514, !dbg !1710

471:                                              ; preds = %464
  call void @llvm.dbg.value(metadata i8 0, metadata !1679, metadata !DIExpression()) #19, !dbg !1700
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %455) #19, !dbg !1711
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %456) #19, !dbg !1712
  %472 = load i8, i8* @locale_ok, align 1, !dbg !1713, !tbaa !1257, !range !1715
  %473 = icmp eq i8 %472, 0, !dbg !1713
  br i1 %473, label %476, label %474, !dbg !1716

474:                                              ; preds = %471
  %475 = call i8* @setlocale(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0)) #19, !dbg !1717
  br label %476, !dbg !1717

476:                                              ; preds = %474, %471
  call void @llvm.dbg.value(metadata i8** %4, metadata !1683, metadata !DIExpression(DW_OP_deref)) #19, !dbg !1700
  %477 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %4, i32 1, i8* %444, x86_fp80 %466) #19, !dbg !1718
  call void @llvm.dbg.value(metadata i32 %477, metadata !1684, metadata !DIExpression()) #19, !dbg !1700
  %478 = load i8, i8* @locale_ok, align 1, !dbg !1719, !tbaa !1257, !range !1715
  %479 = icmp eq i8 %478, 0, !dbg !1719
  br i1 %479, label %482, label %480, !dbg !1721

480:                                              ; preds = %476
  %481 = call i8* @setlocale(i32 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #19, !dbg !1722
  br label %482, !dbg !1722

482:                                              ; preds = %480, %476
  %483 = icmp slt i32 %477, 0, !dbg !1723
  br i1 %483, label %484, label %485, !dbg !1725

484:                                              ; preds = %482
  call void @xalloc_die() #23, !dbg !1726
  unreachable, !dbg !1726

485:                                              ; preds = %482
  %486 = load i8*, i8** %4, align 8, !dbg !1727, !tbaa !1176
  call void @llvm.dbg.value(metadata i8* %486, metadata !1683, metadata !DIExpression()) #19, !dbg !1700
  %487 = zext i32 %477 to i64, !dbg !1728
  %488 = sub i64 %487, %173, !dbg !1729
  %489 = getelementptr inbounds i8, i8* %486, i64 %488, !dbg !1727
  store i8 0, i8* %489, align 1, !dbg !1730, !tbaa !1272
  %490 = load i8*, i8** %4, align 8, !dbg !1731, !tbaa !1176
  call void @llvm.dbg.value(metadata i8* %490, metadata !1683, metadata !DIExpression()) #19, !dbg !1700
  %491 = getelementptr inbounds i8, i8* %490, i64 %174, !dbg !1732
  call void @llvm.dbg.value(metadata x86_fp80* %3, metadata !1682, metadata !DIExpression(DW_OP_deref)) #19, !dbg !1700
  %492 = call zeroext i1 @xstrtold(i8* %491, i8** null, x86_fp80* nonnull %3, x86_fp80 (i8*, i8**)* nonnull @cl_strtold) #19, !dbg !1733
  %493 = load x86_fp80, x86_fp80* %3, align 16, !dbg !1734
  %494 = fcmp oeq x86_fp80 %493, %398, !dbg !1735
  %495 = and i1 %492, %494, !dbg !1736
  br i1 %495, label %498, label %496, !dbg !1736

496:                                              ; preds = %485
  call void @llvm.dbg.value(metadata i8 undef, metadata !1679, metadata !DIExpression()) #19, !dbg !1700
  %497 = load i8*, i8** %4, align 8, !dbg !1737, !tbaa !1176
  call void @free(i8* %497) #19, !dbg !1738
  br label %512, !dbg !1739

498:                                              ; preds = %485
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %457) #19, !dbg !1740
  call void @llvm.dbg.value(metadata i8* null, metadata !1685, metadata !DIExpression()) #19, !dbg !1701
  store i8* null, i8** %5, align 8, !dbg !1741, !tbaa !1176
  call void @llvm.dbg.value(metadata i8** %5, metadata !1685, metadata !DIExpression(DW_OP_deref)) #19, !dbg !1701
  %499 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %5, i32 1, i8* %444, x86_fp80 %461) #19, !dbg !1742
  call void @llvm.dbg.value(metadata i32 %499, metadata !1688, metadata !DIExpression()) #19, !dbg !1701
  %500 = icmp slt i32 %499, 0, !dbg !1743
  br i1 %500, label %501, label %502, !dbg !1745

501:                                              ; preds = %498
  call void @xalloc_die() #23, !dbg !1746
  unreachable, !dbg !1746

502:                                              ; preds = %498
  %503 = load i8*, i8** %5, align 8, !dbg !1747, !tbaa !1176
  call void @llvm.dbg.value(metadata i8* %503, metadata !1685, metadata !DIExpression()) #19, !dbg !1701
  %504 = zext i32 %499 to i64, !dbg !1748
  %505 = sub i64 %504, %173, !dbg !1749
  %506 = getelementptr inbounds i8, i8* %503, i64 %505, !dbg !1747
  store i8 0, i8* %506, align 1, !dbg !1750, !tbaa !1272
  %507 = load i8*, i8** %5, align 8, !dbg !1751, !tbaa !1176
  call void @llvm.dbg.value(metadata i8* %507, metadata !1685, metadata !DIExpression()) #19, !dbg !1701
  %508 = load i8*, i8** %4, align 8, !dbg !1751, !tbaa !1176
  call void @llvm.dbg.value(metadata i8* %508, metadata !1683, metadata !DIExpression()) #19, !dbg !1700
  %509 = call i32 @strcmp(i8* nonnull dereferenceable(1) %507, i8* nonnull dereferenceable(1) %508) #22, !dbg !1751
  %510 = icmp eq i32 %509, 0, !dbg !1751
  call void @llvm.dbg.value(metadata i1 %510, metadata !1679, metadata !DIExpression()) #19, !dbg !1700
  call void @free(i8* %507) #19, !dbg !1752
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %457) #19, !dbg !1753
  call void @llvm.dbg.value(metadata i8 undef, metadata !1679, metadata !DIExpression()) #19, !dbg !1700
  %511 = load i8*, i8** %4, align 8, !dbg !1737, !tbaa !1176
  call void @llvm.dbg.value(metadata i8* %511, metadata !1683, metadata !DIExpression()) #19, !dbg !1700
  call void @free(i8* %511) #19, !dbg !1738
  br i1 %510, label %512, label %513, !dbg !1739

512:                                              ; preds = %502, %496
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %456) #19, !dbg !1754
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %455) #19, !dbg !1754
  br label %524

513:                                              ; preds = %502
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %456) #19, !dbg !1754
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %455) #19, !dbg !1754
  br label %514

514:                                              ; preds = %513, %464
  %515 = load i8*, i8** @separator, align 8, !dbg !1755, !tbaa !1176
  %516 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1755, !tbaa !1176
  %517 = call i32 @fputs_unlocked(i8* %515, %struct._IO_FILE* %516) #19, !dbg !1755
  %518 = icmp eq i32 %517, -1, !dbg !1757
  br i1 %518, label %519, label %520, !dbg !1758

519:                                              ; preds = %514
  call fastcc void @io_error() #23, !dbg !1759
  unreachable, !dbg !1759

520:                                              ; preds = %514
  call void @llvm.dbg.value(metadata i8 %470, metadata !1670, metadata !DIExpression()) #19, !dbg !1689
  call void @llvm.dbg.value(metadata x86_fp80 %466, metadata !1671, metadata !DIExpression()) #19, !dbg !1694
  %521 = fadd x86_fp80 %462, 0xK3FFF8000000000000000, !dbg !1760
  call void @llvm.dbg.value(metadata x86_fp80 %521, metadata !1674, metadata !DIExpression()) #19, !dbg !1694
  call void @llvm.dbg.value(metadata x86_fp80 %466, metadata !1675, metadata !DIExpression()) #19, !dbg !1695
  %522 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %444, x86_fp80 %466) #19, !dbg !1696
  %523 = icmp slt i32 %522, 0, !dbg !1698
  br i1 %523, label %458, label %459, !dbg !1699, !llvm.loop !1761

524:                                              ; preds = %459, %512
  %525 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1764, !tbaa !1176
  %526 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), %struct._IO_FILE* %525) #19, !dbg !1764
  %527 = icmp eq i32 %526, -1, !dbg !1766
  br i1 %527, label %528, label %529, !dbg !1767

528:                                              ; preds = %524
  call fastcc void @io_error() #23, !dbg !1768
  unreachable, !dbg !1768

529:                                              ; preds = %251, %524, %443, %395
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %14), !dbg !1769
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %13) #19, !dbg !1769
  ret i32 0, !dbg !1769
}

; Function Attrs: nounwind
declare !dbg !101 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !104 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !107 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !114 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !133 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind readonly
declare i64 @strspn(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nofree nounwind readonly
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare i8* @strcpy(i8* noalias returned, i8* noalias nocapture readonly) #10

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @seq_fast(i8* %0, i8* %1, i64 %2) unnamed_addr #8 !dbg !1770 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1777, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %1, metadata !1778, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %2, metadata !1779, metadata !DIExpression()), !dbg !1818
  %4 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %1, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0)) #22, !dbg !1819
  %5 = icmp eq i32 %4, 0, !dbg !1819
  call void @llvm.dbg.value(metadata i1 %5, metadata !1780, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %0, metadata !1820, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata i8* %0, metadata !1823, metadata !DIExpression()), !dbg !1824
  br label %6, !dbg !1826

6:                                                ; preds = %9, %3
  %7 = phi i8* [ %0, %3 ], [ %10, %9 ]
  call void @llvm.dbg.value(metadata i8* %7, metadata !1820, metadata !DIExpression()), !dbg !1824
  %8 = load i8, i8* %7, align 1, !dbg !1827, !tbaa !1272
  switch i8 %8, label %15 [
    i8 48, label %9
    i8 0, label %11
  ], !dbg !1826

9:                                                ; preds = %6
  %10 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1828
  call void @llvm.dbg.value(metadata i8* %10, metadata !1820, metadata !DIExpression()), !dbg !1824
  br label %6, !dbg !1826, !llvm.loop !1829

11:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i8* %7, metadata !1820, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata i8* %7, metadata !1820, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata i8* %7, metadata !1820, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata i8* %7, metadata !1820, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata i8* %7, metadata !1820, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata i8* %7, metadata !1820, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata i8* %7, metadata !1820, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata i8* %7, metadata !1820, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata i8* %7, metadata !1820, metadata !DIExpression()), !dbg !1824
  %12 = icmp eq i8* %7, %0, !dbg !1831
  %13 = getelementptr inbounds i8, i8* %7, i64 -1, !dbg !1833
  %14 = select i1 %12, i8* %7, i8* %13, !dbg !1834
  br label %15, !dbg !1834

15:                                               ; preds = %6, %11
  %16 = phi i8* [ %14, %11 ], [ %7, %6 ]
  call void @llvm.dbg.value(metadata i8* %16, metadata !1777, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %1, metadata !1820, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata i8* %1, metadata !1823, metadata !DIExpression()), !dbg !1835
  br label %17, !dbg !1837

17:                                               ; preds = %20, %15
  %18 = phi i8* [ %1, %15 ], [ %21, %20 ]
  call void @llvm.dbg.value(metadata i8* %18, metadata !1820, metadata !DIExpression()), !dbg !1835
  %19 = load i8, i8* %18, align 1, !dbg !1838, !tbaa !1272
  switch i8 %19, label %26 [
    i8 48, label %20
    i8 0, label %22
  ], !dbg !1837

20:                                               ; preds = %17
  %21 = getelementptr inbounds i8, i8* %18, i64 1, !dbg !1839
  call void @llvm.dbg.value(metadata i8* %21, metadata !1820, metadata !DIExpression()), !dbg !1835
  br label %17, !dbg !1837, !llvm.loop !1840

22:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i8* %18, metadata !1820, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata i8* %18, metadata !1820, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata i8* %18, metadata !1820, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata i8* %18, metadata !1820, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata i8* %18, metadata !1820, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata i8* %18, metadata !1820, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata i8* %18, metadata !1820, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata i8* %18, metadata !1820, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata i8* %18, metadata !1820, metadata !DIExpression()), !dbg !1835
  %23 = icmp eq i8* %18, %1, !dbg !1842
  %24 = getelementptr inbounds i8, i8* %18, i64 -1, !dbg !1843
  %25 = select i1 %23, i8* %18, i8* %24, !dbg !1844
  br label %26, !dbg !1844

26:                                               ; preds = %17, %22
  %27 = phi i8* [ %25, %22 ], [ %18, %17 ]
  call void @llvm.dbg.value(metadata i8* %27, metadata !1778, metadata !DIExpression()), !dbg !1818
  %28 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %16) #22, !dbg !1845
  call void @llvm.dbg.value(metadata i64 %28, metadata !1781, metadata !DIExpression()), !dbg !1818
  br i1 %5, label %31, label %29, !dbg !1846

29:                                               ; preds = %26
  %30 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %27) #22, !dbg !1847
  br label %31, !dbg !1846

31:                                               ; preds = %26, %29
  %32 = phi i64 [ %30, %29 ], [ 0, %26 ], !dbg !1846
  call void @llvm.dbg.value(metadata i64 %32, metadata !1782, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %28, metadata !1781, metadata !DIExpression()), !dbg !1818
  %33 = add i64 %28, 1, !dbg !1848
  %34 = icmp ugt i64 %33, %32, !dbg !1848
  %35 = select i1 %34, i64 %33, i64 %32, !dbg !1848
  %36 = icmp ugt i64 %35, 31, !dbg !1848
  %37 = select i1 %36, i64 %35, i64 31, !dbg !1848
  call void @llvm.dbg.value(metadata i64 %37, metadata !1783, metadata !DIExpression()), !dbg !1818
  %38 = add i64 %37, 1, !dbg !1849
  %39 = tail call noalias i8* @xmalloc(i64 %38) #19, !dbg !1850
  call void @llvm.dbg.value(metadata i8* %39, metadata !1784, metadata !DIExpression()), !dbg !1818
  %40 = getelementptr inbounds i8, i8* %39, i64 %37, !dbg !1851
  call void @llvm.dbg.value(metadata i64 %28, metadata !1781, metadata !DIExpression()), !dbg !1818
  %41 = sub i64 0, %28, !dbg !1852
  %42 = getelementptr inbounds i8, i8* %40, i64 %41, !dbg !1852
  call void @llvm.dbg.value(metadata i8* %42, metadata !1412, metadata !DIExpression()) #19, !dbg !1853
  call void @llvm.dbg.value(metadata i8* %16, metadata !1420, metadata !DIExpression()) #19, !dbg !1853
  call void @llvm.dbg.value(metadata i64 %33, metadata !1421, metadata !DIExpression()) #19, !dbg !1853
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %42, i8* nonnull align 1 %16, i64 %33, i1 false) #19, !dbg !1855
  call void @llvm.dbg.value(metadata i8* %42, metadata !1785, metadata !DIExpression()), !dbg !1818
  br i1 %5, label %55, label %43, !dbg !1856

43:                                               ; preds = %31
  %44 = tail call noalias i8* @xmalloc(i64 %38) #19, !dbg !1857
  call void @llvm.dbg.value(metadata i8* %44, metadata !1787, metadata !DIExpression()), !dbg !1818
  %45 = getelementptr inbounds i8, i8* %44, i64 %37, !dbg !1860
  %46 = sub i64 0, %32, !dbg !1861
  %47 = getelementptr inbounds i8, i8* %45, i64 %46, !dbg !1861
  %48 = add i64 %32, 1, !dbg !1862
  call void @llvm.dbg.value(metadata i8* %47, metadata !1412, metadata !DIExpression()) #19, !dbg !1863
  call void @llvm.dbg.value(metadata i8* %27, metadata !1420, metadata !DIExpression()) #19, !dbg !1863
  call void @llvm.dbg.value(metadata i64 %48, metadata !1421, metadata !DIExpression()) #19, !dbg !1863
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %47, i8* nonnull align 1 %27, i64 %48, i1 false) #19, !dbg !1865
  call void @llvm.dbg.value(metadata i8* %47, metadata !1786, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %47, metadata !1786, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %44, metadata !1787, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %42, metadata !1785, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %28, metadata !1781, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %42, metadata !1866, metadata !DIExpression()) #19, !dbg !1874
  call void @llvm.dbg.value(metadata i64 %28, metadata !1871, metadata !DIExpression()) #19, !dbg !1874
  call void @llvm.dbg.value(metadata i8* %47, metadata !1872, metadata !DIExpression()) #19, !dbg !1874
  call void @llvm.dbg.value(metadata i64 %32, metadata !1873, metadata !DIExpression()) #19, !dbg !1874
  %49 = icmp ult i64 %28, %32, !dbg !1876
  br i1 %49, label %55, label %50, !dbg !1878

50:                                               ; preds = %43
  %51 = icmp ult i64 %32, %28, !dbg !1879
  br i1 %51, label %156, label %52, !dbg !1881

52:                                               ; preds = %50
  %53 = tail call i32 @memcmp(i8* %42, i8* %47, i64 %28) #22, !dbg !1882
  %54 = icmp slt i32 %53, 1, !dbg !1883
  call void @llvm.dbg.value(metadata i1 %54, metadata !1788, metadata !DIExpression()), !dbg !1818
  br i1 %54, label %55, label %156, !dbg !1884

55:                                               ; preds = %43, %31, %52
  %56 = phi i8* [ %44, %52 ], [ null, %31 ], [ %44, %43 ]
  %57 = phi i8* [ %47, %52 ], [ null, %31 ], [ %47, %43 ]
  %58 = shl i64 %38, 1, !dbg !1885
  %59 = icmp ugt i64 %58, 8192, !dbg !1885
  %60 = select i1 %59, i64 %58, i64 8192, !dbg !1885
  call void @llvm.dbg.value(metadata i64 %60, metadata !1789, metadata !DIExpression()), !dbg !1886
  %61 = tail call noalias i8* @xmalloc(i64 %60) #19, !dbg !1887
  call void @llvm.dbg.value(metadata i8* %61, metadata !1792, metadata !DIExpression()), !dbg !1886
  %62 = getelementptr inbounds i8, i8* %61, i64 %60, !dbg !1888
  call void @llvm.dbg.value(metadata i8* %62, metadata !1793, metadata !DIExpression()), !dbg !1886
  call void @llvm.dbg.value(metadata i8* %61, metadata !1794, metadata !DIExpression()), !dbg !1886
  call void @llvm.dbg.value(metadata i8* %42, metadata !1785, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %28, metadata !1781, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %61, metadata !1889, metadata !DIExpression()) #19, !dbg !1894
  call void @llvm.dbg.value(metadata i8* %42, metadata !1892, metadata !DIExpression()) #19, !dbg !1894
  call void @llvm.dbg.value(metadata i64 %28, metadata !1893, metadata !DIExpression()) #19, !dbg !1894
  %63 = tail call i8* @__mempcpy_chk(i8* nonnull %61, i8* nonnull %42, i64 %28, i64 -1) #19, !dbg !1896
  call void @llvm.dbg.value(metadata i8* %63, metadata !1794, metadata !DIExpression()), !dbg !1886
  %64 = icmp eq i64 %2, 0, !dbg !1897
  br label %65, !dbg !1898

65:                                               ; preds = %144, %55
  %66 = phi i64 [ %28, %55 ], [ %75, %144 ], !dbg !1899
  %67 = phi i8* [ %42, %55 ], [ %126, %144 ], !dbg !1818
  %68 = phi i64 [ %60, %55 ], [ %127, %144 ], !dbg !1886
  %69 = phi i8* [ %61, %55 ], [ %128, %144 ], !dbg !1886
  %70 = phi i8* [ %62, %55 ], [ %129, %144 ], !dbg !1886
  %71 = phi i8* [ %63, %55 ], [ %145, %144 ], !dbg !1886
  %72 = phi i8* [ %39, %55 ], [ %131, %144 ], !dbg !1818
  %73 = phi i64 [ %37, %55 ], [ %132, %144 ], !dbg !1818
  call void @llvm.dbg.value(metadata i64 %73, metadata !1783, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %72, metadata !1784, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %71, metadata !1794, metadata !DIExpression()), !dbg !1886
  call void @llvm.dbg.value(metadata i8* %70, metadata !1793, metadata !DIExpression()), !dbg !1886
  call void @llvm.dbg.value(metadata i8* %69, metadata !1792, metadata !DIExpression()), !dbg !1886
  call void @llvm.dbg.value(metadata i64 %68, metadata !1789, metadata !DIExpression()), !dbg !1886
  call void @llvm.dbg.value(metadata i64 %2, metadata !1795, metadata !DIExpression()), !dbg !1897
  br i1 %64, label %74, label %79, !dbg !1900

74:                                               ; preds = %95, %65
  %75 = phi i64 [ %66, %65 ], [ %96, %95 ], !dbg !1899
  %76 = phi i8* [ %67, %65 ], [ %97, %95 ], !dbg !1901
  %77 = icmp ult i64 %75, %32, !dbg !1902
  %78 = or i1 %5, %77, !dbg !1905
  call void @llvm.dbg.value(metadata i8* %76, metadata !1785, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %75, metadata !1781, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %76, metadata !1866, metadata !DIExpression()) #19, !dbg !1906
  call void @llvm.dbg.value(metadata i64 %75, metadata !1871, metadata !DIExpression()) #19, !dbg !1906
  call void @llvm.dbg.value(metadata i8* %47, metadata !1872, metadata !DIExpression()) #19, !dbg !1906
  call void @llvm.dbg.value(metadata i64 %32, metadata !1873, metadata !DIExpression()) #19, !dbg !1906
  br i1 %78, label %105, label %100, !dbg !1905

79:                                               ; preds = %65, %95
  %80 = phi i64 [ %98, %95 ], [ %2, %65 ]
  %81 = phi i8* [ %97, %95 ], [ %67, %65 ]
  %82 = phi i64 [ %96, %95 ], [ %66, %65 ]
  call void @llvm.dbg.value(metadata i64 %80, metadata !1795, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %81, metadata !1907, metadata !DIExpression()), !dbg !1915
  %83 = getelementptr inbounds i8, i8* %81, i64 -1, !dbg !1918
  %84 = getelementptr inbounds i8, i8* %83, i64 %82, !dbg !1919
  call void @llvm.dbg.value(metadata i8* %84, metadata !1914, metadata !DIExpression()), !dbg !1915
  br label %85, !dbg !1920

85:                                               ; preds = %90, %79
  %86 = phi i8* [ %84, %79 ], [ %91, %90 ], !dbg !1915
  call void @llvm.dbg.value(metadata i8* %86, metadata !1914, metadata !DIExpression()), !dbg !1915
  %87 = load i8, i8* %86, align 1, !dbg !1921, !tbaa !1272
  %88 = add i8 %87, 1, !dbg !1921
  store i8 %88, i8* %86, align 1, !dbg !1921, !tbaa !1272
  %89 = icmp slt i8 %87, 57, !dbg !1924
  br i1 %89, label %95, label %90, !dbg !1925

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %86, i64 -1, !dbg !1926
  call void @llvm.dbg.value(metadata i8* %91, metadata !1914, metadata !DIExpression()), !dbg !1915
  store i8 48, i8* %86, align 1, !dbg !1927, !tbaa !1272
  %92 = icmp ult i8* %91, %81, !dbg !1928
  br i1 %92, label %93, label %85, !dbg !1929, !llvm.loop !1930

93:                                               ; preds = %90
  store i8 49, i8* %83, align 1, !dbg !1932, !tbaa !1272
  %94 = add i64 %82, 1, !dbg !1933
  br label %95, !dbg !1934

95:                                               ; preds = %85, %93
  %96 = phi i64 [ %94, %93 ], [ %82, %85 ], !dbg !1818
  %97 = phi i8* [ %83, %93 ], [ %81, %85 ], !dbg !1818
  %98 = add i64 %80, -1, !dbg !1935
  call void @llvm.dbg.value(metadata i64 %98, metadata !1795, metadata !DIExpression()), !dbg !1897
  %99 = icmp eq i64 %98, 0, !dbg !1900
  br i1 %99, label %74, label %79, !dbg !1900, !llvm.loop !1936

100:                                              ; preds = %74
  %101 = icmp ult i64 %32, %75, !dbg !1938
  br i1 %101, label %147, label %102, !dbg !1939

102:                                              ; preds = %100
  %103 = tail call i32 @memcmp(i8* %76, i8* %57, i64 %75) #22, !dbg !1940
  %104 = icmp sgt i32 %103, 0, !dbg !1941
  br i1 %104, label %147, label %105, !dbg !1942

105:                                              ; preds = %102, %74
  %106 = load i8*, i8** @separator, align 8, !dbg !1943, !tbaa !1176
  %107 = load i8, i8* %106, align 1, !dbg !1944, !tbaa !1272
  %108 = getelementptr inbounds i8, i8* %71, i64 1, !dbg !1945
  call void @llvm.dbg.value(metadata i8* %108, metadata !1794, metadata !DIExpression()), !dbg !1886
  store i8 %107, i8* %71, align 1, !dbg !1946, !tbaa !1272
  call void @llvm.dbg.value(metadata i64 %75, metadata !1781, metadata !DIExpression()), !dbg !1818
  %109 = icmp eq i64 %75, %73, !dbg !1947
  br i1 %109, label %110, label %125, !dbg !1948

110:                                              ; preds = %105
  %111 = shl i64 %73, 1, !dbg !1949
  call void @llvm.dbg.value(metadata i64 %111, metadata !1783, metadata !DIExpression()), !dbg !1818
  %112 = or i64 %111, 1, !dbg !1950
  %113 = tail call i8* @xrealloc(i8* %72, i64 %112) #19, !dbg !1951
  call void @llvm.dbg.value(metadata i8* %113, metadata !1784, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %75, metadata !1781, metadata !DIExpression()), !dbg !1818
  %114 = getelementptr inbounds i8, i8* %113, i64 %73, !dbg !1952
  %115 = add i64 %73, 1, !dbg !1953
  call void @llvm.dbg.value(metadata i8* %114, metadata !1954, metadata !DIExpression()) #19, !dbg !1961
  call void @llvm.dbg.value(metadata i8* %113, metadata !1959, metadata !DIExpression()) #19, !dbg !1961
  call void @llvm.dbg.value(metadata i64 %115, metadata !1960, metadata !DIExpression()) #19, !dbg !1961
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 1 %114, i8* nonnull align 1 %113, i64 %115, i1 false) #19, !dbg !1963
  call void @llvm.dbg.value(metadata i8* %114, metadata !1785, metadata !DIExpression()), !dbg !1818
  %116 = shl i64 %112, 1, !dbg !1964
  %117 = icmp ult i64 %68, %116, !dbg !1965
  br i1 %117, label %118, label %125, !dbg !1966

118:                                              ; preds = %110
  %119 = ptrtoint i8* %108 to i64, !dbg !1967
  %120 = ptrtoint i8* %69 to i64, !dbg !1967
  %121 = sub i64 %119, %120, !dbg !1967
  call void @llvm.dbg.value(metadata i64 %121, metadata !1798, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %116, metadata !1789, metadata !DIExpression()), !dbg !1886
  %122 = tail call i8* @xrealloc(i8* %69, i64 %116) #19, !dbg !1969
  call void @llvm.dbg.value(metadata i8* %122, metadata !1792, metadata !DIExpression()), !dbg !1886
  %123 = getelementptr inbounds i8, i8* %122, i64 %116, !dbg !1970
  call void @llvm.dbg.value(metadata i8* %123, metadata !1793, metadata !DIExpression()), !dbg !1886
  %124 = getelementptr inbounds i8, i8* %122, i64 %121, !dbg !1971
  call void @llvm.dbg.value(metadata i8* %124, metadata !1794, metadata !DIExpression()), !dbg !1886
  br label %125, !dbg !1972

125:                                              ; preds = %110, %118, %105
  %126 = phi i8* [ %114, %118 ], [ %114, %110 ], [ %76, %105 ], !dbg !1818
  %127 = phi i64 [ %116, %118 ], [ %68, %110 ], [ %68, %105 ], !dbg !1886
  %128 = phi i8* [ %122, %118 ], [ %69, %110 ], [ %69, %105 ], !dbg !1886
  %129 = phi i8* [ %123, %118 ], [ %70, %110 ], [ %70, %105 ], !dbg !1886
  %130 = phi i8* [ %124, %118 ], [ %108, %110 ], [ %108, %105 ], !dbg !1973
  %131 = phi i8* [ %113, %118 ], [ %113, %110 ], [ %72, %105 ], !dbg !1818
  %132 = phi i64 [ %111, %118 ], [ %111, %110 ], [ %73, %105 ], !dbg !1818
  call void @llvm.dbg.value(metadata i64 %132, metadata !1783, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %131, metadata !1784, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %130, metadata !1794, metadata !DIExpression()), !dbg !1886
  call void @llvm.dbg.value(metadata i8* %129, metadata !1793, metadata !DIExpression()), !dbg !1886
  call void @llvm.dbg.value(metadata i8* %128, metadata !1792, metadata !DIExpression()), !dbg !1886
  call void @llvm.dbg.value(metadata i64 %127, metadata !1789, metadata !DIExpression()), !dbg !1886
  call void @llvm.dbg.value(metadata i8* %126, metadata !1785, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %75, metadata !1781, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %130, metadata !1889, metadata !DIExpression()) #19, !dbg !1974
  call void @llvm.dbg.value(metadata i8* %126, metadata !1892, metadata !DIExpression()) #19, !dbg !1974
  call void @llvm.dbg.value(metadata i64 %75, metadata !1893, metadata !DIExpression()) #19, !dbg !1974
  %133 = tail call i8* @__mempcpy_chk(i8* nonnull %130, i8* nonnull %126, i64 %75, i64 -1) #19, !dbg !1976
  call void @llvm.dbg.value(metadata i8* %133, metadata !1794, metadata !DIExpression()), !dbg !1886
  call void @llvm.dbg.value(metadata i64 %75, metadata !1781, metadata !DIExpression()), !dbg !1818
  %134 = xor i64 %75, -1, !dbg !1977
  %135 = getelementptr inbounds i8, i8* %129, i64 %134, !dbg !1977
  %136 = icmp ult i8* %135, %133, !dbg !1978
  br i1 %136, label %137, label %144, !dbg !1979

137:                                              ; preds = %125
  %138 = ptrtoint i8* %133 to i64, !dbg !1980
  %139 = ptrtoint i8* %128 to i64, !dbg !1980
  %140 = sub i64 %138, %139, !dbg !1980
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1980, !tbaa !1176
  %142 = tail call i64 @fwrite_unlocked(i8* %128, i64 %140, i64 1, %struct._IO_FILE* %141), !dbg !1980
  %143 = icmp eq i64 %142, 1, !dbg !1981
  br i1 %143, label %144, label %146, !dbg !1982

144:                                              ; preds = %137, %125
  %145 = phi i8* [ %128, %137 ], [ %133, %125 ]
  br label %65, !dbg !1818, !llvm.loop !1983

146:                                              ; preds = %137
  tail call fastcc void @io_error() #24, !dbg !1985
  unreachable, !dbg !1985

147:                                              ; preds = %100, %102
  call void @llvm.dbg.value(metadata i8* %69, metadata !1792, metadata !DIExpression()), !dbg !1886
  call void @llvm.dbg.value(metadata i8* %69, metadata !1792, metadata !DIExpression()), !dbg !1886
  call void @llvm.dbg.value(metadata i8* %71, metadata !1794, metadata !DIExpression()), !dbg !1886
  call void @llvm.dbg.value(metadata i8* %71, metadata !1794, metadata !DIExpression()), !dbg !1886
  call void @llvm.dbg.value(metadata i8* %72, metadata !1784, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %72, metadata !1784, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %69, metadata !1792, metadata !DIExpression()), !dbg !1886
  call void @llvm.dbg.value(metadata i8* %69, metadata !1792, metadata !DIExpression()), !dbg !1886
  call void @llvm.dbg.value(metadata i8* %71, metadata !1794, metadata !DIExpression()), !dbg !1886
  call void @llvm.dbg.value(metadata i8* %71, metadata !1794, metadata !DIExpression()), !dbg !1886
  call void @llvm.dbg.value(metadata i8* %72, metadata !1784, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %72, metadata !1784, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %69, metadata !1792, metadata !DIExpression()), !dbg !1886
  call void @llvm.dbg.value(metadata i8* %71, metadata !1794, metadata !DIExpression()), !dbg !1886
  call void @llvm.dbg.value(metadata i8* %72, metadata !1784, metadata !DIExpression()), !dbg !1818
  %148 = getelementptr inbounds i8, i8* %71, i64 1, !dbg !1986
  call void @llvm.dbg.value(metadata i8* %148, metadata !1794, metadata !DIExpression()), !dbg !1886
  store i8 10, i8* %71, align 1, !dbg !1987, !tbaa !1272
  %149 = ptrtoint i8* %148 to i64, !dbg !1988
  %150 = ptrtoint i8* %69 to i64, !dbg !1988
  %151 = sub i64 %149, %150, !dbg !1988
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1988, !tbaa !1176
  %153 = tail call i64 @fwrite_unlocked(i8* %69, i64 %151, i64 1, %struct._IO_FILE* %152), !dbg !1988
  %154 = icmp eq i64 %153, 1, !dbg !1989
  br i1 %154, label %156, label %155, !dbg !1990

155:                                              ; preds = %147
  tail call fastcc void @io_error() #24, !dbg !1991
  unreachable, !dbg !1991

156:                                              ; preds = %50, %147, %52
  %157 = phi i1 [ false, %52 ], [ true, %147 ], [ false, %50 ]
  %158 = phi i8* [ %44, %52 ], [ %56, %147 ], [ %44, %50 ]
  %159 = phi i8* [ %39, %52 ], [ %72, %147 ], [ %39, %50 ], !dbg !1992
  call void @llvm.dbg.value(metadata i8* %159, metadata !1784, metadata !DIExpression()), !dbg !1818
  tail call void @free(i8* %159) #19, !dbg !1993
  tail call void @free(i8* %158) #19, !dbg !1994
  ret i1 %157, !dbg !1995
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @scan_arg(%struct.operand* noalias sret %0, i8* %1) unnamed_addr #8 !dbg !1996 {
  call void @llvm.dbg.value(metadata i8* %1, metadata !2000, metadata !DIExpression()), !dbg !2010
  call void @llvm.dbg.declare(metadata %struct.operand* %0, metadata !2001, metadata !DIExpression()), !dbg !2011
  %3 = getelementptr inbounds %struct.operand, %struct.operand* %0, i64 0, i32 0, !dbg !2012
  %4 = tail call zeroext i1 @xstrtold(i8* %1, i8** null, x86_fp80* %3, x86_fp80 (i8*, i8**)* nonnull @cl_strtold) #19, !dbg !2014
  br i1 %4, label %8, label %5, !dbg !2015

5:                                                ; preds = %2
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.52, i64 0, i64 0), i32 5) #19, !dbg !2016
  %7 = tail call i8* @quote(i8* %1) #19, !dbg !2018
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %6, i8* %7) #19, !dbg !2019
  tail call void @usage(i32 1) #24, !dbg !2020
  unreachable, !dbg !2020

8:                                                ; preds = %2
  %9 = load x86_fp80, x86_fp80* %3, align 16, !dbg !2021, !tbaa !1473
  %10 = fcmp uno x86_fp80 %9, 0xK00000000000000000000, !dbg !2021
  br i1 %10, label %14, label %11, !dbg !2023

11:                                               ; preds = %8
  %12 = tail call i16** @__ctype_b_loc() #25, !dbg !2010
  %13 = load i16*, i16** %12, align 8, !dbg !2010, !tbaa !1176
  br label %18, !dbg !2024

14:                                               ; preds = %8
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.53, i64 0, i64 0), i32 5) #19, !dbg !2025
  %16 = tail call i8* @quote_n(i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.54, i64 0, i64 0)) #19, !dbg !2027
  %17 = tail call i8* @quote_n(i32 1, i8* %1) #19, !dbg !2028
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %15, i8* %16, i8* %17) #19, !dbg !2029
  tail call void @usage(i32 1) #24, !dbg !2030
  unreachable, !dbg !2030

18:                                               ; preds = %18, %11
  %19 = phi i8* [ %28, %18 ], [ %1, %11 ]
  call void @llvm.dbg.value(metadata i8* %19, metadata !2000, metadata !DIExpression()), !dbg !2010
  %20 = load i8, i8* %19, align 1, !dbg !2031, !tbaa !1272
  %21 = zext i8 %20 to i64, !dbg !2031
  %22 = getelementptr inbounds i16, i16* %13, i64 %21, !dbg !2031
  %23 = load i16, i16* %22, align 2, !dbg !2031, !tbaa !2032
  %24 = and i16 %23, 8192, !dbg !2031
  %25 = icmp ne i16 %24, 0, !dbg !2031
  %26 = icmp eq i8 %20, 43, !dbg !2034
  %27 = or i1 %26, %25, !dbg !2035
  %28 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !2036
  call void @llvm.dbg.value(metadata i8* %28, metadata !2000, metadata !DIExpression()), !dbg !2010
  br i1 %27, label %18, label %29, !dbg !2035, !llvm.loop !2037

29:                                               ; preds = %18
  call void @llvm.dbg.value(metadata i8* %19, metadata !2000, metadata !DIExpression()), !dbg !2010
  call void @llvm.dbg.value(metadata i8* %19, metadata !2000, metadata !DIExpression()), !dbg !2010
  call void @llvm.dbg.value(metadata i8* %19, metadata !2000, metadata !DIExpression()), !dbg !2010
  call void @llvm.dbg.value(metadata i8* %19, metadata !2000, metadata !DIExpression()), !dbg !2010
  call void @llvm.dbg.value(metadata i8* %19, metadata !2000, metadata !DIExpression()), !dbg !2010
  call void @llvm.dbg.value(metadata i8* %19, metadata !2000, metadata !DIExpression()), !dbg !2010
  %30 = getelementptr inbounds %struct.operand, %struct.operand* %0, i64 0, i32 1, !dbg !2038
  store i64 0, i64* %30, align 16, !dbg !2039, !tbaa !2040
  %31 = getelementptr inbounds %struct.operand, %struct.operand* %0, i64 0, i32 2, !dbg !2041
  store i32 2147483647, i32* %31, align 8, !dbg !2042, !tbaa !1569
  %32 = tail call i8* @strchr(i8* nonnull %19, i32 46) #22, !dbg !2043
  call void @llvm.dbg.value(metadata i8* %32, metadata !2002, metadata !DIExpression()), !dbg !2010
  %33 = icmp ne i8* %32, null, !dbg !2044
  br i1 %33, label %38, label %34, !dbg !2046

34:                                               ; preds = %29
  %35 = tail call i8* @strchr(i8* nonnull %19, i32 112) #22, !dbg !2047
  %36 = icmp eq i8* %35, null, !dbg !2047
  br i1 %36, label %37, label %38, !dbg !2048

37:                                               ; preds = %34
  store i32 0, i32* %31, align 8, !dbg !2049, !tbaa !1569
  br label %38, !dbg !2050

38:                                               ; preds = %34, %37, %29
  %39 = tail call i64 @strcspn(i8* nonnull %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0)) #22, !dbg !2051
  %40 = getelementptr inbounds i8, i8* %19, i64 %39, !dbg !2052
  %41 = load i8, i8* %40, align 1, !dbg !2052, !tbaa !1272
  %42 = icmp eq i8 %41, 0, !dbg !2052
  %43 = fmul x86_fp80 %9, 0xK00000000000000000000, !dbg !2053
  %44 = fcmp oeq x86_fp80 %43, 0xK00000000000000000000, !dbg !2053
  %45 = and i1 %44, %42, !dbg !2054
  br i1 %45, label %46, label %120, !dbg !2054

46:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i64 0, metadata !2003, metadata !DIExpression()), !dbg !2055
  %47 = tail call i64 @strlen(i8* nonnull %19) #22, !dbg !2056
  store i64 %47, i64* %30, align 16, !dbg !2057, !tbaa !2040
  br i1 %33, label %48, label %67, !dbg !2058

48:                                               ; preds = %46
  %49 = getelementptr inbounds i8, i8* %32, i64 1, !dbg !2059
  %50 = tail call i64 @strcspn(i8* nonnull %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i64 0, i64 0)) #22, !dbg !2062
  call void @llvm.dbg.value(metadata i64 %50, metadata !2003, metadata !DIExpression()), !dbg !2055
  %51 = icmp ult i64 %50, 2147483648, !dbg !2063
  br i1 %51, label %52, label %55, !dbg !2065

52:                                               ; preds = %48
  %53 = trunc i64 %50 to i32, !dbg !2066
  store i32 %53, i32* %31, align 8, !dbg !2067, !tbaa !1569
  %54 = icmp eq i64 %50, 0, !dbg !2068
  br i1 %54, label %64, label %55, !dbg !2069

55:                                               ; preds = %48, %52
  %56 = icmp eq i8* %32, %19, !dbg !2070
  br i1 %56, label %64, label %57, !dbg !2071

57:                                               ; preds = %55
  %58 = getelementptr inbounds i8, i8* %32, i64 -1, !dbg !2072
  %59 = load i8, i8* %58, align 1, !dbg !2072, !tbaa !1272
  %60 = sext i8 %59 to i32, !dbg !2072
  %61 = add nsw i32 %60, -48, !dbg !2072
  %62 = icmp ugt i32 %61, 9, !dbg !2072
  %63 = zext i1 %62 to i64, !dbg !2071
  br label %64, !dbg !2071

64:                                               ; preds = %55, %57, %52
  %65 = phi i64 [ -1, %52 ], [ 1, %55 ], [ %63, %57 ], !dbg !2069
  %66 = add i64 %65, %47, !dbg !2073
  store i64 %66, i64* %30, align 16, !dbg !2073, !tbaa !2040
  br label %67, !dbg !2074

67:                                               ; preds = %64, %46
  %68 = phi i64 [ %50, %64 ], [ 0, %46 ], !dbg !2055
  call void @llvm.dbg.value(metadata i64 %68, metadata !2003, metadata !DIExpression()), !dbg !2055
  %69 = tail call i8* @strchr(i8* nonnull %19, i32 101) #22, !dbg !2075
  call void @llvm.dbg.value(metadata i8* %69, metadata !2006, metadata !DIExpression()), !dbg !2055
  %70 = icmp eq i8* %69, null, !dbg !2076
  br i1 %70, label %71, label %74, !dbg !2078

71:                                               ; preds = %67
  %72 = tail call i8* @strchr(i8* nonnull %19, i32 69) #22, !dbg !2079
  call void @llvm.dbg.value(metadata i8* %72, metadata !2006, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata i8* %72, metadata !2006, metadata !DIExpression()), !dbg !2055
  %73 = icmp eq i8* %72, null, !dbg !2080
  br i1 %73, label %120, label %74, !dbg !2081

74:                                               ; preds = %67, %71
  %75 = phi i8* [ %72, %71 ], [ %69, %67 ]
  %76 = getelementptr inbounds i8, i8* %75, i64 1, !dbg !2082
  %77 = tail call i64 @strtol(i8* nocapture nonnull %76, i8** null, i32 10) #19, !dbg !2083
  call void @llvm.dbg.value(metadata i64 %77, metadata !2007, metadata !DIExpression()), !dbg !2084
  %78 = icmp slt i64 %77, 0, !dbg !2085
  %79 = load i32, i32* %31, align 8, !dbg !2086
  %80 = sext i32 %79 to i64, !dbg !2086
  %81 = icmp sgt i64 %77, %80, !dbg !2086
  %82 = select i1 %81, i64 %80, i64 %77, !dbg !2086
  %83 = select i1 %78, i64 %77, i64 %82, !dbg !2086
  %84 = trunc i64 %83 to i32, !dbg !2087
  %85 = sub i32 %79, %84, !dbg !2087
  store i32 %85, i32* %31, align 8, !dbg !2087, !tbaa !1569
  %86 = tail call i64 @strlen(i8* nonnull %19) #22, !dbg !2088
  %87 = ptrtoint i8* %75 to i64, !dbg !2089
  %88 = ptrtoint i8* %19 to i64, !dbg !2089
  %89 = load i64, i64* %30, align 16, !dbg !2090, !tbaa !2040
  %90 = sub i64 %87, %88, !dbg !2091
  %91 = sub i64 %90, %86, !dbg !2091
  %92 = add i64 %91, %89, !dbg !2090
  store i64 %92, i64* %30, align 16, !dbg !2090, !tbaa !2040
  br i1 %78, label %93, label %106, !dbg !2092

93:                                               ; preds = %74
  br i1 %33, label %94, label %99, !dbg !2093

94:                                               ; preds = %93
  %95 = getelementptr inbounds i8, i8* %32, i64 1, !dbg !2096
  %96 = icmp eq i8* %75, %95, !dbg !2100
  br i1 %96, label %97, label %103, !dbg !2101

97:                                               ; preds = %94
  %98 = add i64 %92, 1, !dbg !2102
  br label %101, !dbg !2103

99:                                               ; preds = %93
  %100 = add i64 %92, 1, !dbg !2104
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i64 [ %98, %97 ], [ %100, %99 ]
  store i64 %102, i64* %30, align 16, !dbg !2105, !tbaa !2040
  br label %103, !dbg !2106

103:                                              ; preds = %101, %94
  %104 = phi i64 [ %92, %94 ], [ %102, %101 ]
  %105 = sub nsw i64 0, %77, !dbg !2106
  call void @llvm.dbg.value(metadata i64 %105, metadata !2007, metadata !DIExpression()), !dbg !2084
  br label %116, !dbg !2107

106:                                              ; preds = %74
  br i1 %33, label %107, label %113, !dbg !2108

107:                                              ; preds = %106
  %108 = icmp eq i32 %85, 0, !dbg !2111
  %109 = icmp ne i64 %68, 0, !dbg !2112
  %110 = and i1 %109, %108, !dbg !2113
  br i1 %110, label %111, label %113, !dbg !2113

111:                                              ; preds = %107
  %112 = add i64 %92, -1, !dbg !2114
  store i64 %112, i64* %30, align 16, !dbg !2114, !tbaa !2040
  br label %113, !dbg !2115

113:                                              ; preds = %111, %107, %106
  %114 = phi i64 [ %112, %111 ], [ %92, %107 ], [ %92, %106 ]
  %115 = tail call i64 @llvm.usub.sat.i64(i64 %77, i64 %68), !dbg !2116
  call void @llvm.dbg.value(metadata i64 %115, metadata !2007, metadata !DIExpression()), !dbg !2084
  br label %116

116:                                              ; preds = %113, %103
  %117 = phi i64 [ %104, %103 ], [ %114, %113 ], !dbg !2117
  %118 = phi i64 [ %105, %103 ], [ %115, %113 ], !dbg !2118
  call void @llvm.dbg.value(metadata i64 %118, metadata !2007, metadata !DIExpression()), !dbg !2084
  %119 = add i64 %117, %118, !dbg !2117
  store i64 %119, i64* %30, align 16, !dbg !2117, !tbaa !2040
  br label %120, !dbg !2119

120:                                              ; preds = %116, %71, %38
  ret void, !dbg !2120
}

; Function Attrs: nounwind
declare i32 @__asprintf_chk(i8**, i32, i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !156 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nofree
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) local_unnamed_addr #12

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @io_error() unnamed_addr #0 !dbg !2121 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2122, !tbaa !1176
  tail call void @clearerr_unlocked(%struct._IO_FILE* %1) #19, !dbg !2122
  %2 = tail call i32* @__errno_location() #25, !dbg !2123
  %3 = load i32, i32* %2, align 4, !dbg !2123, !tbaa !1265
  %4 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0), i32 5) #19, !dbg !2123
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %3, i8* %4) #19, !dbg !2123
  unreachable, !dbg !2123
}

; Function Attrs: nounwind
declare !dbg !171 void @clearerr_unlocked(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #13

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #13

; Function Attrs: nofree nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nofree nounwind readonly
declare i64 @strcspn(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #4

; Function Attrs: nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #1

; Function Attrs: nofree nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: nounwind
declare i8* @__mempcpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind
declare !dbg !165 i64 @fwrite_unlocked(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local x86_fp80 @cl_strtold(i8* %0, i8** noalias %1) #8 !dbg !2124 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2130, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8** %1, metadata !2131, metadata !DIExpression()), !dbg !2139
  %5 = bitcast i8** %3 to i8*, !dbg !2140
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #19, !dbg !2140
  call void @llvm.dbg.value(metadata i8** %3, metadata !2132, metadata !DIExpression(DW_OP_deref)), !dbg !2139
  %6 = call x86_fp80 @strtold(i8* %0, i8** nonnull %3) #19, !dbg !2141
  call void @llvm.dbg.value(metadata x86_fp80 %6, metadata !2133, metadata !DIExpression()), !dbg !2139
  %7 = load i8*, i8** %3, align 8, !dbg !2142, !tbaa !1176
  call void @llvm.dbg.value(metadata i8* %7, metadata !2132, metadata !DIExpression()), !dbg !2139
  %8 = load i8, i8* %7, align 1, !dbg !2143, !tbaa !1272
  %9 = icmp eq i8 %8, 0, !dbg !2143
  %10 = ptrtoint i8* %7 to i64, !dbg !2144
  br i1 %9, label %24, label %11, !dbg !2144

11:                                               ; preds = %2
  %12 = tail call i32* @__errno_location() #25, !dbg !2145
  %13 = load i32, i32* %12, align 4, !dbg !2145, !tbaa !1265
  call void @llvm.dbg.value(metadata i32 %13, metadata !2134, metadata !DIExpression()), !dbg !2146
  %14 = bitcast i8** %4 to i8*, !dbg !2147
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #19, !dbg !2147
  call void @llvm.dbg.value(metadata i8** %4, metadata !2137, metadata !DIExpression(DW_OP_deref)), !dbg !2146
  %15 = call x86_fp80 @c_strtold(i8* %0, i8** nonnull %4) #19, !dbg !2148
  call void @llvm.dbg.value(metadata x86_fp80 %15, metadata !2138, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8* %7, metadata !2132, metadata !DIExpression()), !dbg !2139
  %16 = load i8*, i8** %4, align 8, !dbg !2149, !tbaa !1176
  call void @llvm.dbg.value(metadata i8* %16, metadata !2137, metadata !DIExpression()), !dbg !2146
  %17 = icmp ult i8* %7, %16, !dbg !2151
  br i1 %17, label %18, label %20, !dbg !2152

18:                                               ; preds = %11
  call void @llvm.dbg.value(metadata x86_fp80 %15, metadata !2133, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8* %16, metadata !2132, metadata !DIExpression()), !dbg !2139
  store i8* %16, i8** %3, align 8, !dbg !2153, !tbaa !1176
  %19 = ptrtoint i8* %16 to i64, !dbg !2154
  br label %21, !dbg !2154

20:                                               ; preds = %11
  store i32 %13, i32* %12, align 4, !dbg !2155, !tbaa !1265
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i64 [ %19, %18 ], [ %10, %20 ]
  %23 = phi x86_fp80 [ %15, %18 ], [ %6, %20 ], !dbg !2139
  call void @llvm.dbg.value(metadata x86_fp80 %23, metadata !2133, metadata !DIExpression()), !dbg !2139
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #19, !dbg !2156
  br label %24, !dbg !2157

24:                                               ; preds = %2, %21
  %25 = phi i64 [ %22, %21 ], [ %10, %2 ]
  %26 = phi x86_fp80 [ %23, %21 ], [ %6, %2 ], !dbg !2139
  call void @llvm.dbg.value(metadata x86_fp80 %26, metadata !2133, metadata !DIExpression()), !dbg !2139
  %27 = icmp eq i8** %1, null, !dbg !2158
  br i1 %27, label %30, label %28, !dbg !2160

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* undef, metadata !2132, metadata !DIExpression()), !dbg !2139
  %29 = bitcast i8** %1 to i64*, !dbg !2161
  store i64 %25, i64* %29, align 8, !dbg !2161, !tbaa !1176
  br label %30, !dbg !2162

30:                                               ; preds = %24, %28
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #19, !dbg !2163
  ret x86_fp80 %26, !dbg !2164
}

; Function Attrs: nofree nounwind
declare x86_fp80 @strtold(i8* readonly, i8** nocapture) local_unnamed_addr #4

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #14 !dbg !2165 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2167, metadata !DIExpression()), !dbg !2168
  store i8* %0, i8** @file_name, align 8, !dbg !2169, !tbaa !1176
  ret void, !dbg !2170
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #14 !dbg !2171 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !2175, metadata !DIExpression()), !dbg !2176
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !2177, !tbaa !1257
  ret void, !dbg !2178
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !2179 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2184, !tbaa !1176
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #19, !dbg !2185
  %3 = icmp eq i32 %2, 0, !dbg !2186
  br i1 %3, label %22, label %4, !dbg !2187

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !2188, !tbaa !1257, !range !1715
  %6 = icmp eq i8 %5, 0, !dbg !2188
  br i1 %6, label %11, label %7, !dbg !2189

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #25, !dbg !2190
  %9 = load i32, i32* %8, align 4, !dbg !2190, !tbaa !1265
  %10 = icmp eq i32 %9, 32, !dbg !2191
  br i1 %10, label %22, label %11, !dbg !2192

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.66, i64 0, i64 0), i32 5) #19, !dbg !2193
  call void @llvm.dbg.value(metadata i8* %12, metadata !2181, metadata !DIExpression()), !dbg !2194
  %13 = load i8*, i8** @file_name, align 8, !dbg !2195, !tbaa !1176
  %14 = icmp eq i8* %13, null, !dbg !2195
  %15 = tail call i32* @__errno_location() #25, !dbg !2197
  %16 = load i32, i32* %15, align 4, !dbg !2197, !tbaa !1265
  br i1 %14, label %19, label %17, !dbg !2198

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #19, !dbg !2199
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.67, i64 0, i64 0), i8* %18, i8* %12) #19, !dbg !2200
  br label %20, !dbg !2200

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.68, i64 0, i64 0), i8* %12) #19, !dbg !2201
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !2202, !tbaa !1265
  tail call void @_exit(i32 %21) #23, !dbg !2203
  unreachable, !dbg !2203

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2204, !tbaa !1176
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #19, !dbg !2206
  %25 = icmp eq i32 %24, 0, !dbg !2207
  br i1 %25, label %28, label %26, !dbg !2208

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !2209, !tbaa !1265
  tail call void @_exit(i32 %27) #23, !dbg !2210
  unreachable, !dbg !2210

28:                                               ; preds = %22
  ret void, !dbg !2211
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #15

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !2212 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2214, metadata !DIExpression()), !dbg !2217
  %2 = icmp eq i8* %0, null, !dbg !2218
  br i1 %2, label %3, label %6, !dbg !2220

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2221, !tbaa !1176
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.75, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #26, !dbg !2223
  tail call void @abort() #23, !dbg !2224
  unreachable, !dbg !2224

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #22, !dbg !2225
  call void @llvm.dbg.value(metadata i8* %7, metadata !2215, metadata !DIExpression()), !dbg !2217
  %8 = icmp eq i8* %7, null, !dbg !2226
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2227
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2227
  call void @llvm.dbg.value(metadata i8* %10, metadata !2216, metadata !DIExpression()), !dbg !2217
  %11 = ptrtoint i8* %10 to i64, !dbg !2228
  %12 = ptrtoint i8* %0 to i64, !dbg !2228
  %13 = sub i64 %11, %12, !dbg !2228
  %14 = icmp sgt i64 %13, 6, !dbg !2230
  br i1 %14, label %15, label %24, !dbg !2231

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2232
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.76, i64 0, i64 0), i64 7) #22, !dbg !2233
  %18 = icmp eq i32 %17, 0, !dbg !2234
  br i1 %18, label %19, label %24, !dbg !2235

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !2214, metadata !DIExpression()), !dbg !2217
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.77, i64 0, i64 0), i64 3) #22, !dbg !2236
  %21 = icmp eq i32 %20, 0, !dbg !2239
  br i1 %21, label %22, label %24, !dbg !2240

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2241
  call void @llvm.dbg.value(metadata i8* %23, metadata !2214, metadata !DIExpression()), !dbg !2217
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2243, !tbaa !1176
  br label %24, !dbg !2244

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !2214, metadata !DIExpression()), !dbg !2217
  store i8* %25, i8** @program_name, align 8, !dbg !2245, !tbaa !1176
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2246, !tbaa !1176
  ret void, !dbg !2247
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !2248 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2253, metadata !DIExpression()), !dbg !2256
  %2 = tail call i32* @__errno_location() #25, !dbg !2257
  %3 = load i32, i32* %2, align 4, !dbg !2257, !tbaa !1265
  call void @llvm.dbg.value(metadata i32 %3, metadata !2254, metadata !DIExpression()), !dbg !2256
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2258
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2258
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2258
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #19, !dbg !2259
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2259
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2255, metadata !DIExpression()), !dbg !2256
  store i32 %3, i32* %2, align 4, !dbg !2260, !tbaa !1265
  ret %struct.quoting_options* %8, !dbg !2261
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #16 !dbg !2262 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2266, metadata !DIExpression()), !dbg !2267
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2268
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2268
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2269
  %5 = load i32, i32* %4, align 8, !dbg !2269, !tbaa !2270
  ret i32 %5, !dbg !2272
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #14 !dbg !2273 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2277, metadata !DIExpression()), !dbg !2279
  call void @llvm.dbg.value(metadata i32 %1, metadata !2278, metadata !DIExpression()), !dbg !2279
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2280
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2280
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2281
  store i32 %1, i32* %5, align 8, !dbg !2282, !tbaa !2270
  ret void, !dbg !2283
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #17 !dbg !2284 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2288, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata i8 %1, metadata !2289, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata i32 %2, metadata !2290, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata i8 %1, metadata !2291, metadata !DIExpression()), !dbg !2296
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2297
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2297
  %6 = lshr i8 %1, 5, !dbg !2298
  %7 = zext i8 %6 to i64, !dbg !2298
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2299
  call void @llvm.dbg.value(metadata i32* %8, metadata !2292, metadata !DIExpression()), !dbg !2296
  %9 = and i8 %1, 31, !dbg !2300
  %10 = zext i8 %9 to i32, !dbg !2300
  call void @llvm.dbg.value(metadata i32 %10, metadata !2294, metadata !DIExpression()), !dbg !2296
  %11 = load i32, i32* %8, align 4, !dbg !2301, !tbaa !1265
  %12 = lshr i32 %11, %10, !dbg !2302
  %13 = and i32 %12, 1, !dbg !2303
  call void @llvm.dbg.value(metadata i32 %13, metadata !2295, metadata !DIExpression()), !dbg !2296
  %14 = and i32 %2, 1, !dbg !2304
  %15 = xor i32 %13, %14, !dbg !2305
  %16 = shl i32 %15, %10, !dbg !2306
  %17 = xor i32 %16, %11, !dbg !2307
  store i32 %17, i32* %8, align 4, !dbg !2307, !tbaa !1265
  ret i32 %13, !dbg !2308
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #17 !dbg !2309 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2313, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i32 %1, metadata !2314, metadata !DIExpression()), !dbg !2316
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2317
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2319
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2313, metadata !DIExpression()), !dbg !2316
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2320
  %6 = load i32, i32* %5, align 4, !dbg !2320, !tbaa !2321
  call void @llvm.dbg.value(metadata i32 %6, metadata !2315, metadata !DIExpression()), !dbg !2316
  store i32 %1, i32* %5, align 4, !dbg !2322, !tbaa !2321
  ret i32 %6, !dbg !2323
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2324 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2328, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.value(metadata i8* %1, metadata !2329, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.value(metadata i8* %2, metadata !2330, metadata !DIExpression()), !dbg !2331
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2332
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2334
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2328, metadata !DIExpression()), !dbg !2331
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2335
  store i32 10, i32* %6, align 8, !dbg !2336, !tbaa !2270
  %7 = icmp ne i8* %1, null, !dbg !2337
  %8 = icmp ne i8* %2, null, !dbg !2339
  %9 = and i1 %7, %8, !dbg !2340
  br i1 %9, label %11, label %10, !dbg !2340

10:                                               ; preds = %3
  tail call void @abort() #23, !dbg !2341
  unreachable, !dbg !2341

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2342
  store i8* %1, i8** %12, align 8, !dbg !2343, !tbaa !2344
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2345
  store i8* %2, i8** %13, align 8, !dbg !2346, !tbaa !2347
  ret void, !dbg !2348
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !2349 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2353, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i64 %1, metadata !2354, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i8* %2, metadata !2355, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i64 %3, metadata !2356, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2357, metadata !DIExpression()), !dbg !2361
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2362
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2362
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2358, metadata !DIExpression()), !dbg !2361
  %8 = tail call i32* @__errno_location() #25, !dbg !2363
  %9 = load i32, i32* %8, align 4, !dbg !2363, !tbaa !1265
  call void @llvm.dbg.value(metadata i32 %9, metadata !2359, metadata !DIExpression()), !dbg !2361
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2364
  %11 = load i32, i32* %10, align 8, !dbg !2364, !tbaa !2270
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2365
  %13 = load i32, i32* %12, align 4, !dbg !2365, !tbaa !2321
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2366
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2367
  %16 = load i8*, i8** %15, align 8, !dbg !2367, !tbaa !2344
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2368
  %18 = load i8*, i8** %17, align 8, !dbg !2368, !tbaa !2347
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2369
  call void @llvm.dbg.value(metadata i64 %19, metadata !2360, metadata !DIExpression()), !dbg !2361
  store i32 %9, i32* %8, align 4, !dbg !2370, !tbaa !1265
  ret i64 %19, !dbg !2371
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !2372 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2378, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %1, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %2, metadata !2380, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %3, metadata !2381, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i32 %4, metadata !2382, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i32 %5, metadata !2383, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i32* %6, metadata !2384, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %7, metadata !2385, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %8, metadata !2386, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 0, metadata !2388, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 0, metadata !2389, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* null, metadata !2390, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 0, metadata !2391, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 0, metadata !2392, metadata !DIExpression()), !dbg !2436
  %13 = tail call i64 @__ctype_get_mb_cur_max() #19, !dbg !2437
  %14 = icmp eq i64 %13, 1, !dbg !2438
  call void @llvm.dbg.value(metadata i1 %14, metadata !2393, metadata !DIExpression()), !dbg !2436
  %15 = lshr i32 %5, 1, !dbg !2439
  %16 = trunc i32 %15 to i8, !dbg !2439
  %17 = and i8 %16, 1, !dbg !2439
  call void @llvm.dbg.value(metadata i8 %17, metadata !2394, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 0, metadata !2395, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 0, metadata !2396, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 1, metadata !2397, metadata !DIExpression()), !dbg !2436
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !2440
  %19 = and i32 %5, 4, !dbg !2442
  %20 = icmp eq i32 %19, 0, !dbg !2442
  %21 = and i32 %5, 1, !dbg !2445
  %22 = icmp eq i32 %21, 0, !dbg !2445
  %23 = bitcast i64* %10 to i8*, !dbg !2448
  %24 = bitcast i32* %12 to i8*, !dbg !2449
  %25 = icmp eq i32* %6, null, !dbg !2450
  br label %26, !dbg !2452

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !2453
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !2454
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !2455
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !2456
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !2436
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !2457
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !2458
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !2459
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %38, metadata !2397, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %37, metadata !2396, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %36, metadata !2395, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %35, metadata !2394, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %34, metadata !2381, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %33, metadata !2392, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %32, metadata !2391, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %31, metadata !2390, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %30, metadata !2389, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 0, metadata !2388, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %29, metadata !2386, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %28, metadata !2385, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i32 %27, metadata !2382, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.label(metadata !2430), !dbg !2460
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
  ], !dbg !2461

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !2382, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 1, metadata !2394, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %35, metadata !2394, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i32 5, metadata !2382, metadata !DIExpression()), !dbg !2436
  br label %92, !dbg !2462

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2394, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i32 5, metadata !2382, metadata !DIExpression()), !dbg !2436
  %42 = and i8 %35, 1, !dbg !2464
  %43 = icmp eq i8 %42, 0, !dbg !2464
  br i1 %43, label %44, label %92, !dbg !2462

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !2466
  br i1 %45, label %92, label %46, !dbg !2469

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !2466, !tbaa !1272
  br label %92, !dbg !2466

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.88, i64 0, i64 0), i32 %27), !dbg !2470
  call void @llvm.dbg.value(metadata i8* %48, metadata !2385, metadata !DIExpression()), !dbg !2436
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.89, i64 0, i64 0), i32 %27), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %49, metadata !2386, metadata !DIExpression()), !dbg !2436
  br label %50, !dbg !2475

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !2386, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %51, metadata !2385, metadata !DIExpression()), !dbg !2436
  %53 = and i8 %35, 1, !dbg !2476
  %54 = icmp eq i8 %53, 0, !dbg !2476
  br i1 %54, label %55, label %70, !dbg !2478

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !2390, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 0, metadata !2388, metadata !DIExpression()), !dbg !2436
  %56 = load i8, i8* %51, align 1, !dbg !2479, !tbaa !1272
  %57 = icmp eq i8 %56, 0, !dbg !2482
  br i1 %57, label %70, label %58, !dbg !2482

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !2390, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %61, metadata !2388, metadata !DIExpression()), !dbg !2436
  %62 = icmp ult i64 %61, %39, !dbg !2483
  br i1 %62, label %63, label %65, !dbg !2486

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !2483
  store i8 %59, i8* %64, align 1, !dbg !2483, !tbaa !1272
  br label %65, !dbg !2483

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !2486
  call void @llvm.dbg.value(metadata i64 %66, metadata !2388, metadata !DIExpression()), !dbg !2436
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2487
  call void @llvm.dbg.value(metadata i8* %67, metadata !2390, metadata !DIExpression()), !dbg !2436
  %68 = load i8, i8* %67, align 1, !dbg !2479, !tbaa !1272
  %69 = icmp eq i8 %68, 0, !dbg !2482
  br i1 %69, label %70, label %58, !dbg !2482, !llvm.loop !2488

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !2490
  call void @llvm.dbg.value(metadata i64 %71, metadata !2388, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 1, metadata !2392, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %52, metadata !2390, metadata !DIExpression()), !dbg !2436
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #22, !dbg !2491
  call void @llvm.dbg.value(metadata i64 %72, metadata !2391, metadata !DIExpression()), !dbg !2436
  br label %92, !dbg !2492

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !2392, metadata !DIExpression()), !dbg !2436
  br label %74, !dbg !2493

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !2436
  call void @llvm.dbg.value(metadata i8 %75, metadata !2392, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 1, metadata !2394, metadata !DIExpression()), !dbg !2436
  br label %76, !dbg !2494

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !2456
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !2436
  call void @llvm.dbg.value(metadata i8 %78, metadata !2394, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %77, metadata !2392, metadata !DIExpression()), !dbg !2436
  %79 = and i8 %78, 1, !dbg !2495
  %80 = icmp eq i8 %79, 0, !dbg !2495
  %81 = select i1 %80, i8 1, i8 %77, !dbg !2497
  br label %82, !dbg !2497

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !2436
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !2439
  call void @llvm.dbg.value(metadata i8 %84, metadata !2394, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %83, metadata !2392, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i32 2, metadata !2382, metadata !DIExpression()), !dbg !2436
  %85 = and i8 %84, 1, !dbg !2498
  %86 = icmp eq i8 %85, 0, !dbg !2498
  br i1 %86, label %87, label %92, !dbg !2500

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !2501
  br i1 %88, label %92, label %89, !dbg !2504

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !2501, !tbaa !1272
  br label %92, !dbg !2501

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !2394, metadata !DIExpression()), !dbg !2436
  br label %92, !dbg !2505

91:                                               ; preds = %26
  call void @abort() #23, !dbg !2506
  unreachable, !dbg !2506

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !2490
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.90, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.90, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.90, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.89, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.89, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.89, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.90, i64 0, i64 0), %40 ], !dbg !2436
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !2436
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !2436
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !2436
  call void @llvm.dbg.value(metadata i8 %100, metadata !2394, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %99, metadata !2392, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %98, metadata !2391, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %97, metadata !2390, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %96, metadata !2388, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %95, metadata !2386, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %94, metadata !2385, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i32 %93, metadata !2382, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 0, metadata !2387, metadata !DIExpression()), !dbg !2436
  %101 = and i8 %99, 1, !dbg !2507
  %102 = icmp ne i8 %101, 0, !dbg !2507
  %103 = icmp ne i32 %93, 2, !dbg !2507
  %104 = and i1 %103, %102, !dbg !2507
  %105 = icmp ne i64 %98, 0, !dbg !2507
  %106 = and i1 %105, %104, !dbg !2507
  %107 = icmp ugt i64 %98, 1, !dbg !2507
  %108 = and i8 %100, 1, !dbg !2509
  %109 = icmp eq i8 %108, 0, !dbg !2509
  %110 = icmp eq i32 %93, 2, !dbg !2512
  %111 = or i1 %103, %109, !dbg !2514
  %112 = icmp ne i8 %108, 0, !dbg !2516
  %113 = and i1 %110, %112, !dbg !2516
  %114 = xor i1 %102, true, !dbg !2517
  %115 = xor i1 %104, true, !dbg !2450
  %116 = and i1 %109, %115, !dbg !2450
  %117 = or i1 %25, %116, !dbg !2450
  %118 = and i8 %99, %100, !dbg !2518
  %119 = and i8 %118, 1, !dbg !2518
  %120 = icmp ne i8 %119, 0, !dbg !2518
  %121 = and i1 %120, %105, !dbg !2518
  br label %122, !dbg !2520

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !2521
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !2490
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !2453
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !2457
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !2458
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !2459
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %129, metadata !2397, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %128, metadata !2396, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %127, metadata !2395, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %126, metadata !2381, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %125, metadata !2389, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %124, metadata !2388, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %123, metadata !2387, metadata !DIExpression()), !dbg !2436
  %131 = icmp eq i64 %126, -1, !dbg !2522
  br i1 %131, label %132, label %136, !dbg !2523

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2524
  %134 = load i8, i8* %133, align 1, !dbg !2524, !tbaa !1272
  %135 = icmp eq i8 %134, 0, !dbg !2525
  br i1 %135, label %581, label %138, !dbg !2526

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !2527
  br i1 %137, label %581, label %138, !dbg !2526

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !2403, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i8 0, metadata !2404, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i8 0, metadata !2405, metadata !DIExpression()), !dbg !2528
  br i1 %106, label %139, label %154, !dbg !2529

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !2530
  %141 = and i1 %107, %131, !dbg !2531
  br i1 %141, label %142, label %144, !dbg !2531

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #22, !dbg !2532
  call void @llvm.dbg.value(metadata i64 %143, metadata !2381, metadata !DIExpression()), !dbg !2436
  br label %144, !dbg !2533

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !2381, metadata !DIExpression()), !dbg !2436
  %146 = icmp ugt i64 %140, %145, !dbg !2534
  br i1 %146, label %154, label %147, !dbg !2535

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2536
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !2537
  %150 = icmp ne i32 %149, 0, !dbg !2538
  %151 = or i1 %150, %109, !dbg !2539
  %152 = xor i1 %150, true, !dbg !2539
  %153 = zext i1 %152 to i8, !dbg !2539
  br i1 %151, label %154, label %639, !dbg !2539

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !2528
  call void @llvm.dbg.value(metadata i8 %156, metadata !2403, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i64 %155, metadata !2381, metadata !DIExpression()), !dbg !2436
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2540
  %158 = load i8, i8* %157, align 1, !dbg !2540, !tbaa !1272
  call void @llvm.dbg.value(metadata i8 %158, metadata !2398, metadata !DIExpression()), !dbg !2528
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
  ], !dbg !2541

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !2542

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !2543

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !2404, metadata !DIExpression()), !dbg !2528
  %162 = and i8 %127, 1, !dbg !2546
  %163 = icmp eq i8 %162, 0, !dbg !2546
  %164 = and i1 %110, %163, !dbg !2546
  br i1 %164, label %165, label %181, !dbg !2546

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !2548
  br i1 %166, label %167, label %169, !dbg !2552

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2548
  store i8 39, i8* %168, align 1, !dbg !2548, !tbaa !1272
  br label %169, !dbg !2548

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !2552
  call void @llvm.dbg.value(metadata i64 %170, metadata !2388, metadata !DIExpression()), !dbg !2436
  %171 = icmp ult i64 %170, %130, !dbg !2553
  br i1 %171, label %172, label %174, !dbg !2556

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2553
  store i8 36, i8* %173, align 1, !dbg !2553, !tbaa !1272
  br label %174, !dbg !2553

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !2556
  call void @llvm.dbg.value(metadata i64 %175, metadata !2388, metadata !DIExpression()), !dbg !2436
  %176 = icmp ult i64 %175, %130, !dbg !2557
  br i1 %176, label %177, label %179, !dbg !2560

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2557
  store i8 39, i8* %178, align 1, !dbg !2557, !tbaa !1272
  br label %179, !dbg !2557

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !2560
  call void @llvm.dbg.value(metadata i64 %180, metadata !2388, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 1, metadata !2395, metadata !DIExpression()), !dbg !2436
  br label %181, !dbg !2561

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !2436
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !2436
  call void @llvm.dbg.value(metadata i8 %183, metadata !2395, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %182, metadata !2388, metadata !DIExpression()), !dbg !2436
  %184 = icmp ult i64 %182, %130, !dbg !2562
  br i1 %184, label %185, label %187, !dbg !2565

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2562
  store i8 92, i8* %186, align 1, !dbg !2562, !tbaa !1272
  br label %187, !dbg !2562

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2565
  call void @llvm.dbg.value(metadata i64 %188, metadata !2388, metadata !DIExpression()), !dbg !2436
  br i1 %103, label %189, label %463, !dbg !2566

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !2568
  %191 = icmp ult i64 %190, %155, !dbg !2569
  br i1 %191, label %192, label %463, !dbg !2570

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !2571
  %194 = load i8, i8* %193, align 1, !dbg !2571, !tbaa !1272
  %195 = add i8 %194, -48, !dbg !2572
  %196 = icmp ult i8 %195, 10, !dbg !2572
  br i1 %196, label %197, label %463, !dbg !2572

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !2573
  br i1 %198, label %199, label %201, !dbg !2577

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2573
  store i8 48, i8* %200, align 1, !dbg !2573, !tbaa !1272
  br label %201, !dbg !2573

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2577
  call void @llvm.dbg.value(metadata i64 %202, metadata !2388, metadata !DIExpression()), !dbg !2436
  %203 = icmp ult i64 %202, %130, !dbg !2578
  br i1 %203, label %204, label %206, !dbg !2581

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2578
  store i8 48, i8* %205, align 1, !dbg !2578, !tbaa !1272
  br label %206, !dbg !2578

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2581
  call void @llvm.dbg.value(metadata i64 %207, metadata !2388, metadata !DIExpression()), !dbg !2436
  br label %463, !dbg !2582

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !2583

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2584

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !2585

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !2586

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !2587
  %214 = icmp ult i64 %213, %155, !dbg !2588
  br i1 %214, label %215, label %463, !dbg !2589

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !2590
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2591
  %218 = load i8, i8* %217, align 1, !dbg !2591, !tbaa !1272
  %219 = icmp eq i8 %218, 63, !dbg !2592
  br i1 %219, label %220, label %463, !dbg !2593

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2594
  %222 = load i8, i8* %221, align 1, !dbg !2594, !tbaa !1272
  %223 = sext i8 %222 to i32, !dbg !2594
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
  ], !dbg !2595

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !2596

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !2398, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i64 %213, metadata !2387, metadata !DIExpression()), !dbg !2436
  %226 = icmp ult i64 %124, %130, !dbg !2598
  br i1 %226, label %227, label %229, !dbg !2601

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2598
  store i8 63, i8* %228, align 1, !dbg !2598, !tbaa !1272
  br label %229, !dbg !2598

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2601
  call void @llvm.dbg.value(metadata i64 %230, metadata !2388, metadata !DIExpression()), !dbg !2436
  %231 = icmp ult i64 %230, %130, !dbg !2602
  br i1 %231, label %232, label %234, !dbg !2605

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2602
  store i8 34, i8* %233, align 1, !dbg !2602, !tbaa !1272
  br label %234, !dbg !2602

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2605
  call void @llvm.dbg.value(metadata i64 %235, metadata !2388, metadata !DIExpression()), !dbg !2436
  %236 = icmp ult i64 %235, %130, !dbg !2606
  br i1 %236, label %237, label %239, !dbg !2609

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2606
  store i8 34, i8* %238, align 1, !dbg !2606, !tbaa !1272
  br label %239, !dbg !2606

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2609
  call void @llvm.dbg.value(metadata i64 %240, metadata !2388, metadata !DIExpression()), !dbg !2436
  %241 = icmp ult i64 %240, %130, !dbg !2610
  br i1 %241, label %242, label %244, !dbg !2613

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2610
  store i8 63, i8* %243, align 1, !dbg !2610, !tbaa !1272
  br label %244, !dbg !2610

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2613
  call void @llvm.dbg.value(metadata i64 %245, metadata !2388, metadata !DIExpression()), !dbg !2436
  br label %463, !dbg !2614

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !2402, metadata !DIExpression()), !dbg !2528
  br label %256, !dbg !2615

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !2402, metadata !DIExpression()), !dbg !2528
  br label %256, !dbg !2616

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !2402, metadata !DIExpression()), !dbg !2528
  br label %254, !dbg !2617

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !2402, metadata !DIExpression()), !dbg !2528
  br label %254, !dbg !2618

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !2402, metadata !DIExpression()), !dbg !2528
  br label %256, !dbg !2619

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !2402, metadata !DIExpression()), !dbg !2528
  br i1 %110, label %252, label %253, !dbg !2620

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !2621

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !2624

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !2625
  call void @llvm.dbg.value(metadata i8 %255, metadata !2402, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.label(metadata !2431), !dbg !2626
  br i1 %111, label %256, label %625, !dbg !2627

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !2625
  call void @llvm.dbg.value(metadata i8 %257, metadata !2402, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.label(metadata !2432), !dbg !2629
  br i1 %102, label %488, label %463, !dbg !2630

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2631

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2632, !tbaa !1272
  %261 = icmp eq i8 %260, 0, !dbg !2633
  br i1 %261, label %262, label %463, !dbg !2634

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !2635
  br i1 %263, label %264, label %463, !dbg !2637

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2405, metadata !DIExpression()), !dbg !2528
  br label %265, !dbg !2638

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !2528
  call void @llvm.dbg.value(metadata i8 %266, metadata !2405, metadata !DIExpression()), !dbg !2528
  br i1 %111, label %463, label %625, !dbg !2639

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2396, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 1, metadata !2405, metadata !DIExpression()), !dbg !2528
  br i1 %110, label %268, label %463, !dbg !2640

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !2641

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !2643
  %271 = icmp ne i64 %125, 0, !dbg !2645
  %272 = or i1 %271, %270, !dbg !2646
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !2646
  %274 = select i1 %272, i64 %130, i64 0, !dbg !2646
  call void @llvm.dbg.value(metadata i64 %274, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %273, metadata !2389, metadata !DIExpression()), !dbg !2436
  %275 = icmp ult i64 %124, %274, !dbg !2647
  br i1 %275, label %276, label %278, !dbg !2650

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2647
  store i8 39, i8* %277, align 1, !dbg !2647, !tbaa !1272
  br label %278, !dbg !2647

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !2650
  call void @llvm.dbg.value(metadata i64 %279, metadata !2388, metadata !DIExpression()), !dbg !2436
  %280 = icmp ult i64 %279, %274, !dbg !2651
  br i1 %280, label %281, label %283, !dbg !2654

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2651
  store i8 92, i8* %282, align 1, !dbg !2651, !tbaa !1272
  br label %283, !dbg !2651

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !2654
  call void @llvm.dbg.value(metadata i64 %284, metadata !2388, metadata !DIExpression()), !dbg !2436
  %285 = icmp ult i64 %284, %274, !dbg !2655
  br i1 %285, label %286, label %288, !dbg !2658

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2655
  store i8 39, i8* %287, align 1, !dbg !2655, !tbaa !1272
  br label %288, !dbg !2655

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !2658
  call void @llvm.dbg.value(metadata i64 %289, metadata !2388, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 0, metadata !2395, metadata !DIExpression()), !dbg !2436
  br label %463, !dbg !2659

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !2660

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !2406, metadata !DIExpression()), !dbg !2661
  %292 = tail call i16** @__ctype_b_loc() #25, !dbg !2662
  %293 = load i16*, i16** %292, align 8, !dbg !2662, !tbaa !1176
  %294 = zext i8 %158 to i64, !dbg !2662
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2662
  %296 = load i16, i16* %295, align 2, !dbg !2662, !tbaa !2032
  %297 = lshr i16 %296, 14, !dbg !2664
  %298 = trunc i16 %297 to i8, !dbg !2664
  %299 = and i8 %298, 1, !dbg !2664
  call void @llvm.dbg.value(metadata i8 %299, metadata !2409, metadata !DIExpression()), !dbg !2661
  br label %355, !dbg !2665

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #19, !dbg !2666
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !2410, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata i8* %23, metadata !2668, metadata !DIExpression()) #19, !dbg !2675
  call void @llvm.dbg.value(metadata i32 0, metadata !2673, metadata !DIExpression()) #19, !dbg !2675
  call void @llvm.dbg.value(metadata i64 8, metadata !2674, metadata !DIExpression()) #19, !dbg !2675
  store i64 0, i64* %10, align 8, !dbg !2677
  call void @llvm.dbg.value(metadata i64 0, metadata !2406, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i8 1, metadata !2409, metadata !DIExpression()), !dbg !2661
  %301 = icmp eq i64 %155, -1, !dbg !2678
  br i1 %301, label %302, label %304, !dbg !2680

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #22, !dbg !2681
  call void @llvm.dbg.value(metadata i64 %303, metadata !2381, metadata !DIExpression()), !dbg !2436
  br label %304, !dbg !2682

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !2528
  call void @llvm.dbg.value(metadata i64 %305, metadata !2381, metadata !DIExpression()), !dbg !2436
  br label %306, !dbg !2683

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !2684
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !2685
  call void @llvm.dbg.value(metadata i8 %308, metadata !2409, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i64 %307, metadata !2406, metadata !DIExpression()), !dbg !2661
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #19, !dbg !2686
  %309 = add i64 %307, %123, !dbg !2687
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !2688
  %311 = sub i64 %305, %309, !dbg !2689
  call void @llvm.dbg.value(metadata i32* %12, metadata !2416, metadata !DIExpression(DW_OP_deref)), !dbg !2449
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #19, !dbg !2690
  call void @llvm.dbg.value(metadata i64 %312, metadata !2419, metadata !DIExpression()), !dbg !2449
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !2691

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2406, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i64 %307, metadata !2406, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i64 %307, metadata !2406, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i64 %307, metadata !2406, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i64 %307, metadata !2406, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i64 %307, metadata !2406, metadata !DIExpression()), !dbg !2661
  %314 = icmp ugt i64 %305, %309, !dbg !2692
  br i1 %314, label %315, label %340, !dbg !2694

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !2695
  br label %317, !dbg !2695

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !2406, metadata !DIExpression()), !dbg !2661
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !2696
  %321 = load i8, i8* %320, align 1, !dbg !2696, !tbaa !1272
  %322 = icmp eq i8 %321, 0, !dbg !2694
  br i1 %322, label %340, label %323, !dbg !2695

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !2697
  call void @llvm.dbg.value(metadata i64 %324, metadata !2406, metadata !DIExpression()), !dbg !2661
  %325 = add i64 %324, %123, !dbg !2698
  %326 = icmp ult i64 %325, %305, !dbg !2692
  br i1 %326, label %317, label %340, !dbg !2694, !llvm.loop !2699

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !2700
  %329 = and i1 %113, %328, !dbg !2703
  call void @llvm.dbg.value(metadata i64 1, metadata !2420, metadata !DIExpression()), !dbg !2704
  br i1 %329, label %330, label %343, !dbg !2703

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !2420, metadata !DIExpression()), !dbg !2704
  %332 = add i64 %331, %309, !dbg !2705
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !2706
  %334 = load i8, i8* %333, align 1, !dbg !2706, !tbaa !1272
  %335 = sext i8 %334 to i32, !dbg !2706
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !2707

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !2708
  call void @llvm.dbg.value(metadata i64 %337, metadata !2420, metadata !DIExpression()), !dbg !2704
  %338 = icmp eq i64 %337, %312, !dbg !2700
  br i1 %338, label %343, label %330, !dbg !2709, !llvm.loop !2710

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2406, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i8 %308, metadata !2409, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i64 %307, metadata !2406, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i8 %308, metadata !2409, metadata !DIExpression()), !dbg !2661
  br label %340, !dbg !2712

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #19, !dbg !2712
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !2713, !tbaa !1265
  call void @llvm.dbg.value(metadata i32 %344, metadata !2416, metadata !DIExpression()), !dbg !2449
  %345 = call i32 @iswprint(i32 %344) #19, !dbg !2715
  %346 = icmp eq i32 %345, 0, !dbg !2715
  %347 = select i1 %346, i8 0, i8 %308, !dbg !2716
  call void @llvm.dbg.value(metadata i8 %347, metadata !2409, metadata !DIExpression()), !dbg !2661
  %348 = add i64 %312, %307, !dbg !2717
  call void @llvm.dbg.value(metadata i64 %348, metadata !2406, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i8 %347, metadata !2409, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i64 %348, metadata !2406, metadata !DIExpression()), !dbg !2661
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #19, !dbg !2712
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #22, !dbg !2718
  %350 = icmp eq i32 %349, 0, !dbg !2719
  br i1 %350, label %306, label %351, !dbg !2720, !llvm.loop !2721

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #19, !dbg !2723
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !2385, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %94, metadata !2385, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %94, metadata !2385, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %94, metadata !2385, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %94, metadata !2385, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %95, metadata !2386, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %95, metadata !2386, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %95, metadata !2386, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %95, metadata !2386, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %95, metadata !2386, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %130, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %130, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %130, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %130, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %130, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %305, metadata !2381, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %305, metadata !2381, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %305, metadata !2381, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %305, metadata !2381, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %305, metadata !2381, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %94, metadata !2385, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %94, metadata !2385, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %94, metadata !2385, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %94, metadata !2385, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %94, metadata !2385, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %95, metadata !2386, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %95, metadata !2386, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %95, metadata !2386, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %95, metadata !2386, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %95, metadata !2386, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %130, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %130, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %130, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %130, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %130, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %305, metadata !2381, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %305, metadata !2381, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %305, metadata !2381, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %305, metadata !2381, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %305, metadata !2381, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %94, metadata !2385, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %94, metadata !2385, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %94, metadata !2385, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %94, metadata !2385, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %94, metadata !2385, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %95, metadata !2386, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %95, metadata !2386, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %95, metadata !2386, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %95, metadata !2386, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %95, metadata !2386, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %130, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %130, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %130, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %130, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %130, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %305, metadata !2381, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %305, metadata !2381, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %305, metadata !2381, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %305, metadata !2381, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %305, metadata !2381, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %94, metadata !2385, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %94, metadata !2385, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %94, metadata !2385, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %94, metadata !2385, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %94, metadata !2385, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %95, metadata !2386, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %95, metadata !2386, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %95, metadata !2386, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %95, metadata !2386, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %95, metadata !2386, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %130, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %130, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %130, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %130, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %130, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %305, metadata !2381, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %305, metadata !2381, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %305, metadata !2381, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %305, metadata !2381, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %305, metadata !2381, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i32 2, metadata !2382, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i32 2, metadata !2382, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i32 2, metadata !2382, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i32 2, metadata !2382, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i32 2, metadata !2382, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %94, metadata !2385, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %94, metadata !2385, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %94, metadata !2385, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %94, metadata !2385, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %94, metadata !2385, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %95, metadata !2386, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %95, metadata !2386, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %95, metadata !2386, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %95, metadata !2386, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %95, metadata !2386, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %99, metadata !2392, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %99, metadata !2392, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %99, metadata !2392, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %99, metadata !2392, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %99, metadata !2392, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %130, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %130, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %130, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %130, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %130, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %305, metadata !2381, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %305, metadata !2381, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %305, metadata !2381, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %305, metadata !2381, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %305, metadata !2381, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i32 2, metadata !2382, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i32 2, metadata !2382, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i32 2, metadata !2382, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i32 2, metadata !2382, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i32 2, metadata !2382, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %94, metadata !2385, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %94, metadata !2385, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %94, metadata !2385, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %94, metadata !2385, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %94, metadata !2385, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %95, metadata !2386, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %95, metadata !2386, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %95, metadata !2386, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %95, metadata !2386, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %95, metadata !2386, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %99, metadata !2392, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %99, metadata !2392, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %99, metadata !2392, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %99, metadata !2392, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %99, metadata !2392, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %130, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %130, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %130, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %130, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %130, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %305, metadata !2381, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %305, metadata !2381, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %305, metadata !2381, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %305, metadata !2381, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %305, metadata !2381, metadata !DIExpression()), !dbg !2436
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #19, !dbg !2712
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #19, !dbg !2723
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !2528
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !2724
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !2724
  call void @llvm.dbg.value(metadata i8 %358, metadata !2409, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i64 %357, metadata !2406, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i64 %356, metadata !2381, metadata !DIExpression()), !dbg !2436
  %359 = and i8 %358, 1, !dbg !2725
  %360 = icmp ne i8 %359, 0, !dbg !2725
  call void @llvm.dbg.value(metadata i8 %359, metadata !2405, metadata !DIExpression()), !dbg !2528
  %361 = icmp ult i64 %357, 2, !dbg !2726
  %362 = or i1 %360, %114, !dbg !2727
  %363 = and i1 %361, %362, !dbg !2728
  br i1 %363, label %463, label %364, !dbg !2728

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !2729
  call void @llvm.dbg.value(metadata i64 %365, metadata !2427, metadata !DIExpression()), !dbg !2730
  br label %366, !dbg !2731

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !2521
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !2436
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !2457
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !2528
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !2528
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !2732
  call void @llvm.dbg.value(metadata i8 %372, metadata !2404, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i8 %371, metadata !2403, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i8 %370, metadata !2398, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i8 %369, metadata !2395, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %368, metadata !2388, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %367, metadata !2387, metadata !DIExpression()), !dbg !2436
  br i1 %362, label %419, label %373, !dbg !2733

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !2738

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !2404, metadata !DIExpression()), !dbg !2528
  %375 = and i8 %369, 1, !dbg !2741
  %376 = icmp eq i8 %375, 0, !dbg !2741
  %377 = and i1 %110, %376, !dbg !2741
  br i1 %377, label %378, label %394, !dbg !2741

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !2743
  br i1 %379, label %380, label %382, !dbg !2747

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2743
  store i8 39, i8* %381, align 1, !dbg !2743, !tbaa !1272
  br label %382, !dbg !2743

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !2747
  call void @llvm.dbg.value(metadata i64 %383, metadata !2388, metadata !DIExpression()), !dbg !2436
  %384 = icmp ult i64 %383, %130, !dbg !2748
  br i1 %384, label %385, label %387, !dbg !2751

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2748
  store i8 36, i8* %386, align 1, !dbg !2748, !tbaa !1272
  br label %387, !dbg !2748

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !2751
  call void @llvm.dbg.value(metadata i64 %388, metadata !2388, metadata !DIExpression()), !dbg !2436
  %389 = icmp ult i64 %388, %130, !dbg !2752
  br i1 %389, label %390, label %392, !dbg !2755

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !2752
  store i8 39, i8* %391, align 1, !dbg !2752, !tbaa !1272
  br label %392, !dbg !2752

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !2755
  call void @llvm.dbg.value(metadata i64 %393, metadata !2388, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 1, metadata !2395, metadata !DIExpression()), !dbg !2436
  br label %394, !dbg !2756

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !2436
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !2436
  call void @llvm.dbg.value(metadata i8 %396, metadata !2395, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %395, metadata !2388, metadata !DIExpression()), !dbg !2436
  %397 = icmp ult i64 %395, %130, !dbg !2757
  br i1 %397, label %398, label %400, !dbg !2760

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2757
  store i8 92, i8* %399, align 1, !dbg !2757, !tbaa !1272
  br label %400, !dbg !2757

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !2760
  call void @llvm.dbg.value(metadata i64 %401, metadata !2388, metadata !DIExpression()), !dbg !2436
  %402 = icmp ult i64 %401, %130, !dbg !2761
  br i1 %402, label %403, label %407, !dbg !2764

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !2761
  %405 = or i8 %404, 48, !dbg !2761
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2761
  store i8 %405, i8* %406, align 1, !dbg !2761, !tbaa !1272
  br label %407, !dbg !2761

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !2764
  call void @llvm.dbg.value(metadata i64 %408, metadata !2388, metadata !DIExpression()), !dbg !2436
  %409 = icmp ult i64 %408, %130, !dbg !2765
  br i1 %409, label %410, label %415, !dbg !2768

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !2765
  %412 = and i8 %411, 7, !dbg !2765
  %413 = or i8 %412, 48, !dbg !2765
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2765
  store i8 %413, i8* %414, align 1, !dbg !2765, !tbaa !1272
  br label %415, !dbg !2765

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !2768
  call void @llvm.dbg.value(metadata i64 %416, metadata !2388, metadata !DIExpression()), !dbg !2436
  %417 = and i8 %370, 7, !dbg !2769
  %418 = or i8 %417, 48, !dbg !2770
  call void @llvm.dbg.value(metadata i8 %418, metadata !2398, metadata !DIExpression()), !dbg !2528
  br label %428, !dbg !2771

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !2772
  %421 = icmp eq i8 %420, 0, !dbg !2772
  br i1 %421, label %428, label %422, !dbg !2774

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !2775
  br i1 %423, label %424, label %426, !dbg !2779

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2775
  store i8 92, i8* %425, align 1, !dbg !2775, !tbaa !1272
  br label %426, !dbg !2775

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !2779
  call void @llvm.dbg.value(metadata i64 %427, metadata !2388, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 0, metadata !2403, metadata !DIExpression()), !dbg !2528
  br label %428, !dbg !2780

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !2436
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !2457
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !2528
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !2528
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !2528
  call void @llvm.dbg.value(metadata i8 %433, metadata !2404, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i8 %432, metadata !2403, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i8 %431, metadata !2398, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i8 %430, metadata !2395, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %429, metadata !2388, metadata !DIExpression()), !dbg !2436
  %434 = add i64 %367, 1, !dbg !2781
  %435 = icmp ugt i64 %365, %434, !dbg !2783
  br i1 %435, label %436, label %526, !dbg !2784

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !2785
  %438 = icmp ne i8 %437, 0, !dbg !2785
  %439 = and i8 %433, 1, !dbg !2785
  %440 = icmp eq i8 %439, 0, !dbg !2785
  %441 = and i1 %438, %440, !dbg !2785
  br i1 %441, label %442, label %453, !dbg !2785

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !2788
  br i1 %443, label %444, label %446, !dbg !2792

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !2788
  store i8 39, i8* %445, align 1, !dbg !2788, !tbaa !1272
  br label %446, !dbg !2788

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !2792
  call void @llvm.dbg.value(metadata i64 %447, metadata !2388, metadata !DIExpression()), !dbg !2436
  %448 = icmp ult i64 %447, %130, !dbg !2793
  br i1 %448, label %449, label %451, !dbg !2796

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !2793
  store i8 39, i8* %450, align 1, !dbg !2793, !tbaa !1272
  br label %451, !dbg !2793

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !2796
  call void @llvm.dbg.value(metadata i64 %452, metadata !2388, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 0, metadata !2395, metadata !DIExpression()), !dbg !2436
  br label %453, !dbg !2797

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !2798
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !2436
  call void @llvm.dbg.value(metadata i8 %455, metadata !2395, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %454, metadata !2388, metadata !DIExpression()), !dbg !2436
  %456 = icmp ult i64 %454, %130, !dbg !2799
  br i1 %456, label %457, label %459, !dbg !2802

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2799
  store i8 %431, i8* %458, align 1, !dbg !2799, !tbaa !1272
  br label %459, !dbg !2799

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !2802
  call void @llvm.dbg.value(metadata i64 %460, metadata !2388, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %434, metadata !2387, metadata !DIExpression()), !dbg !2436
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !2803
  %462 = load i8, i8* %461, align 1, !dbg !2803, !tbaa !1272
  call void @llvm.dbg.value(metadata i8 %462, metadata !2398, metadata !DIExpression()), !dbg !2528
  br label %366, !dbg !2804, !llvm.loop !2805

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !2521
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !2436
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !2453
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !2808
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !2436
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !2436
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !2528
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !2528
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !2528
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %472, metadata !2405, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i8 %471, metadata !2404, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i8 %156, metadata !2403, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i8 %470, metadata !2398, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i8 %469, metadata !2396, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %468, metadata !2395, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %467, metadata !2381, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %466, metadata !2389, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %465, metadata !2388, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %464, metadata !2387, metadata !DIExpression()), !dbg !2436
  br i1 %117, label %486, label %474, !dbg !2809

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !2810
  %476 = zext i8 %475 to i64, !dbg !2810
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !2811
  %478 = load i32, i32* %477, align 4, !dbg !2811, !tbaa !1265
  %479 = and i8 %470, 31, !dbg !2812
  %480 = zext i8 %479 to i32, !dbg !2812
  %481 = shl nuw i32 1, %480, !dbg !2813
  %482 = and i32 %478, %481, !dbg !2813
  %483 = icmp eq i32 %482, 0, !dbg !2813
  %484 = icmp eq i8 %156, 0, !dbg !2814
  %485 = and i1 %484, %483, !dbg !2815
  br i1 %485, label %526, label %488, !dbg !2815

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !2814
  br i1 %487, label %526, label %488, !dbg !2816

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !2817
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !2436
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !2453
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !2808
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !2457
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !2458
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !2528
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !2528
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %496, metadata !2405, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i8 %495, metadata !2398, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i8 %494, metadata !2396, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %493, metadata !2395, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %492, metadata !2381, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %491, metadata !2389, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %490, metadata !2388, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %489, metadata !2387, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.label(metadata !2433), !dbg !2818
  br i1 %109, label %498, label %629, !dbg !2819

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !2404, metadata !DIExpression()), !dbg !2528
  %499 = and i8 %493, 1, !dbg !2821
  %500 = icmp eq i8 %499, 0, !dbg !2821
  %501 = and i1 %110, %500, !dbg !2821
  br i1 %501, label %502, label %518, !dbg !2821

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !2823
  br i1 %503, label %504, label %506, !dbg !2827

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !2823
  store i8 39, i8* %505, align 1, !dbg !2823, !tbaa !1272
  br label %506, !dbg !2823

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !2827
  call void @llvm.dbg.value(metadata i64 %507, metadata !2388, metadata !DIExpression()), !dbg !2436
  %508 = icmp ult i64 %507, %497, !dbg !2828
  br i1 %508, label %509, label %511, !dbg !2831

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !2828
  store i8 36, i8* %510, align 1, !dbg !2828, !tbaa !1272
  br label %511, !dbg !2828

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !2831
  call void @llvm.dbg.value(metadata i64 %512, metadata !2388, metadata !DIExpression()), !dbg !2436
  %513 = icmp ult i64 %512, %497, !dbg !2832
  br i1 %513, label %514, label %516, !dbg !2835

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2832
  store i8 39, i8* %515, align 1, !dbg !2832, !tbaa !1272
  br label %516, !dbg !2832

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !2835
  call void @llvm.dbg.value(metadata i64 %517, metadata !2388, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 1, metadata !2395, metadata !DIExpression()), !dbg !2436
  br label %518, !dbg !2836

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !2528
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !2436
  call void @llvm.dbg.value(metadata i8 %520, metadata !2395, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %519, metadata !2388, metadata !DIExpression()), !dbg !2436
  %521 = icmp ult i64 %519, %497, !dbg !2837
  br i1 %521, label %522, label %524, !dbg !2840

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2837
  store i8 92, i8* %523, align 1, !dbg !2837, !tbaa !1272
  br label %524, !dbg !2837

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !2840
  call void @llvm.dbg.value(metadata i64 %525, metadata !2388, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %536, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %535, metadata !2405, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i8 %534, metadata !2404, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i8 %533, metadata !2398, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i8 %532, metadata !2396, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %531, metadata !2395, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %530, metadata !2381, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %529, metadata !2389, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %528, metadata !2388, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %527, metadata !2387, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.label(metadata !2434), !dbg !2841
  br label %553, !dbg !2842

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !2817
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !2436
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !2453
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !2808
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !2457
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !2458
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !2845
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !2528
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !2528
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %535, metadata !2405, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i8 %534, metadata !2404, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i8 %533, metadata !2398, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i8 %532, metadata !2396, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %531, metadata !2395, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %530, metadata !2381, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %529, metadata !2389, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %528, metadata !2388, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %527, metadata !2387, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.label(metadata !2434), !dbg !2841
  %537 = and i8 %531, 1, !dbg !2842
  %538 = icmp ne i8 %537, 0, !dbg !2842
  %539 = and i8 %534, 1, !dbg !2842
  %540 = icmp eq i8 %539, 0, !dbg !2842
  %541 = and i1 %538, %540, !dbg !2842
  br i1 %541, label %542, label %553, !dbg !2842

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !2846
  br i1 %543, label %544, label %546, !dbg !2850

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2846
  store i8 39, i8* %545, align 1, !dbg !2846, !tbaa !1272
  br label %546, !dbg !2846

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !2850
  call void @llvm.dbg.value(metadata i64 %547, metadata !2388, metadata !DIExpression()), !dbg !2436
  %548 = icmp ult i64 %547, %536, !dbg !2851
  br i1 %548, label %549, label %551, !dbg !2854

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !2851
  store i8 39, i8* %550, align 1, !dbg !2851, !tbaa !1272
  br label %551, !dbg !2851

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !2854
  call void @llvm.dbg.value(metadata i64 %552, metadata !2388, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 0, metadata !2395, metadata !DIExpression()), !dbg !2436
  br label %553, !dbg !2855

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !2528
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !2436
  call void @llvm.dbg.value(metadata i8 %562, metadata !2395, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %561, metadata !2388, metadata !DIExpression()), !dbg !2436
  %563 = icmp ult i64 %561, %554, !dbg !2856
  br i1 %563, label %564, label %566, !dbg !2859

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !2856
  store i8 %556, i8* %565, align 1, !dbg !2856, !tbaa !1272
  br label %566, !dbg !2856

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2859
  call void @llvm.dbg.value(metadata i64 %567, metadata !2388, metadata !DIExpression()), !dbg !2436
  %568 = and i8 %555, 1, !dbg !2860
  %569 = icmp eq i8 %568, 0, !dbg !2860
  %570 = select i1 %569, i8 0, i8 %129, !dbg !2862
  call void @llvm.dbg.value(metadata i8 %570, metadata !2397, metadata !DIExpression()), !dbg !2436
  br label %571, !dbg !2863

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !2817
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !2436
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !2453
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !2808
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !2457
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !2436
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !2459
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %578, metadata !2397, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %577, metadata !2396, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %576, metadata !2395, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %575, metadata !2381, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %574, metadata !2389, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %573, metadata !2388, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %572, metadata !2387, metadata !DIExpression()), !dbg !2436
  %580 = add i64 %572, 1, !dbg !2864
  call void @llvm.dbg.value(metadata i64 %580, metadata !2387, metadata !DIExpression()), !dbg !2436
  br label %122, !dbg !2865, !llvm.loop !2866

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !2388, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %124, metadata !2388, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %125, metadata !2389, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %125, metadata !2389, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %127, metadata !2395, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %127, metadata !2395, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %128, metadata !2396, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %128, metadata !2396, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %129, metadata !2397, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %129, metadata !2397, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %130, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %130, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %124, metadata !2388, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %124, metadata !2388, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %125, metadata !2389, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %125, metadata !2389, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %127, metadata !2395, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %127, metadata !2395, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %128, metadata !2396, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %128, metadata !2396, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %129, metadata !2397, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %129, metadata !2397, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %130, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %130, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %124, metadata !2388, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %124, metadata !2388, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %125, metadata !2389, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %125, metadata !2389, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %127, metadata !2395, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %127, metadata !2395, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %128, metadata !2396, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %128, metadata !2396, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %129, metadata !2397, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %129, metadata !2397, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %130, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %130, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %124, metadata !2388, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %124, metadata !2388, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %125, metadata !2389, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %125, metadata !2389, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %127, metadata !2395, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %127, metadata !2395, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %128, metadata !2396, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %128, metadata !2396, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %129, metadata !2397, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %129, metadata !2397, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %130, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %130, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %124, metadata !2388, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %124, metadata !2388, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %125, metadata !2389, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %125, metadata !2389, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %582, metadata !2381, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %582, metadata !2381, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %127, metadata !2395, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %127, metadata !2395, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %128, metadata !2396, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %128, metadata !2396, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %129, metadata !2397, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %129, metadata !2397, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %130, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %130, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %124, metadata !2388, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %124, metadata !2388, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %125, metadata !2389, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %125, metadata !2389, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %582, metadata !2381, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %582, metadata !2381, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %127, metadata !2395, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %127, metadata !2395, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %128, metadata !2396, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %128, metadata !2396, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %129, metadata !2397, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %129, metadata !2397, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %130, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %130, metadata !2379, metadata !DIExpression()), !dbg !2436
  %583 = icmp eq i64 %124, 0, !dbg !2868
  %584 = and i1 %110, %583, !dbg !2870
  %585 = xor i1 %584, true, !dbg !2870
  %586 = or i1 %109, %585, !dbg !2870
  br i1 %586, label %587, label %629, !dbg !2870

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !2871
  %589 = xor i1 %588, true, !dbg !2871
  %590 = and i8 %128, 1, !dbg !2873
  %591 = icmp eq i8 %590, 0, !dbg !2873
  %592 = or i1 %591, %589, !dbg !2871
  br i1 %592, label %602, label %593, !dbg !2871

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !2874
  %595 = icmp eq i8 %594, 0, !dbg !2874
  br i1 %595, label %598, label %596, !dbg !2877

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !2381, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %94, metadata !2385, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %95, metadata !2386, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %125, metadata !2389, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %582, metadata !2381, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %94, metadata !2385, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %95, metadata !2386, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %125, metadata !2389, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %582, metadata !2381, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %94, metadata !2385, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %95, metadata !2386, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %125, metadata !2389, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %582, metadata !2381, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %94, metadata !2385, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %95, metadata !2386, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %125, metadata !2389, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %94, metadata !2385, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %95, metadata !2386, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %125, metadata !2389, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %582, metadata !2381, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %94, metadata !2385, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %95, metadata !2386, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %125, metadata !2389, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %582, metadata !2381, metadata !DIExpression()), !dbg !2436
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2878
  br label %645, !dbg !2879

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !2880
  %600 = icmp ne i64 %125, 0, !dbg !2882
  %601 = and i1 %600, %599, !dbg !2883
  br i1 %601, label %26, label %602, !dbg !2883

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !2390, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %97, metadata !2390, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %124, metadata !2388, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %124, metadata !2388, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %130, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %130, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %97, metadata !2390, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %97, metadata !2390, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %124, metadata !2388, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %124, metadata !2388, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %130, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %130, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %97, metadata !2390, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %97, metadata !2390, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %124, metadata !2388, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %124, metadata !2388, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %130, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %130, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %97, metadata !2390, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %97, metadata !2390, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %124, metadata !2388, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %124, metadata !2388, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %130, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %130, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %97, metadata !2390, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %97, metadata !2390, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %124, metadata !2388, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %124, metadata !2388, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %130, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %130, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %97, metadata !2390, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %97, metadata !2390, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %124, metadata !2388, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %124, metadata !2388, metadata !DIExpression()), !dbg !2436
  %603 = icmp ne i8* %97, null, !dbg !2884
  %604 = and i1 %603, %109, !dbg !2886
  br i1 %604, label %605, label %620, !dbg !2886

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !2390, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %124, metadata !2388, metadata !DIExpression()), !dbg !2436
  %606 = load i8, i8* %97, align 1, !dbg !2887, !tbaa !1272
  %607 = icmp eq i8 %606, 0, !dbg !2890
  br i1 %607, label %620, label %608, !dbg !2890

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !2390, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %611, metadata !2388, metadata !DIExpression()), !dbg !2436
  %612 = icmp ult i64 %611, %130, !dbg !2891
  br i1 %612, label %613, label %615, !dbg !2894

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !2891
  store i8 %609, i8* %614, align 1, !dbg !2891, !tbaa !1272
  br label %615, !dbg !2891

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !2894
  call void @llvm.dbg.value(metadata i64 %616, metadata !2388, metadata !DIExpression()), !dbg !2436
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !2895
  call void @llvm.dbg.value(metadata i8* %617, metadata !2390, metadata !DIExpression()), !dbg !2436
  %618 = load i8, i8* %617, align 1, !dbg !2887, !tbaa !1272
  %619 = icmp eq i8 %618, 0, !dbg !2890
  br i1 %619, label %620, label %608, !dbg !2890, !llvm.loop !2896

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !2490
  call void @llvm.dbg.value(metadata i64 %621, metadata !2388, metadata !DIExpression()), !dbg !2436
  %622 = icmp ult i64 %621, %130, !dbg !2898
  br i1 %622, label %623, label %645, !dbg !2900

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2901
  store i8 0, i8* %624, align 1, !dbg !2902, !tbaa !1272
  br label %645, !dbg !2901

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %630, metadata !2381, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.label(metadata !2435), !dbg !2903
  %627 = icmp eq i8 %101, 0, !dbg !2904
  %628 = select i1 %627, i32 2, i32 4, !dbg !2904
  br label %635, !dbg !2904

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %630, metadata !2381, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.label(metadata !2435), !dbg !2903
  %632 = icmp eq i32 %93, 2, !dbg !2906
  %633 = icmp eq i8 %101, 0, !dbg !2904
  %634 = select i1 %633, i32 2, i32 4, !dbg !2904
  br i1 %632, label %635, label %639, !dbg !2904

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !2904

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !2382, metadata !DIExpression()), !dbg !2436
  %643 = and i32 %5, -3, !dbg !2907
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !2908
  br label %645, !dbg !2909

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !2910
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2911 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2915, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata i32 %1, metadata !2916, metadata !DIExpression()), !dbg !2919
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #19, !dbg !2920
  call void @llvm.dbg.value(metadata i8* %3, metadata !2917, metadata !DIExpression()), !dbg !2919
  %4 = icmp eq i8* %3, %0, !dbg !2921
  br i1 %4, label %5, label %71, !dbg !2923

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #19, !dbg !2924
  call void @llvm.dbg.value(metadata i8* %6, metadata !2918, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata i8* %6, metadata !2925, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i8* undef, metadata !2931, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i8 85, metadata !2932, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i8 84, metadata !2933, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i8 70, metadata !2934, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i8 45, metadata !2935, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i8 56, metadata !2936, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i8 0, metadata !2937, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i8 0, metadata !2938, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i8 0, metadata !2939, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i8 0, metadata !2940, metadata !DIExpression()), !dbg !2941
  %7 = load i8, i8* %6, align 1, !dbg !2944, !tbaa !1272
  %8 = and i8 %7, -33, !dbg !2944
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2944

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2946, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i8* undef, metadata !2951, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i8 84, metadata !2952, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i8 70, metadata !2953, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i8 45, metadata !2954, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i8 56, metadata !2955, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i8 0, metadata !2956, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i8 0, metadata !2957, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i8 0, metadata !2958, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i8 0, metadata !2959, metadata !DIExpression()), !dbg !2960
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2964
  %11 = load i8, i8* %10, align 1, !dbg !2964, !tbaa !1272
  %12 = and i8 %11, -33, !dbg !2964
  %13 = icmp eq i8 %12, 84, !dbg !2964
  br i1 %13, label %14, label %68, !dbg !2964

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2966, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i8* undef, metadata !2971, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i8 70, metadata !2972, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i8 45, metadata !2973, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i8 56, metadata !2974, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i8 0, metadata !2975, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i8 0, metadata !2976, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i8 0, metadata !2977, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i8 0, metadata !2978, metadata !DIExpression()), !dbg !2979
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2983
  %16 = load i8, i8* %15, align 1, !dbg !2983, !tbaa !1272
  %17 = and i8 %16, -33, !dbg !2983
  %18 = icmp eq i8 %17, 70, !dbg !2983
  br i1 %18, label %19, label %68, !dbg !2983

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2985, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i8* undef, metadata !2990, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i8 45, metadata !2991, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i8 56, metadata !2992, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i8 0, metadata !2993, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i8 0, metadata !2994, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i8 0, metadata !2995, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i8 0, metadata !2996, metadata !DIExpression()), !dbg !2997
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3001
  %21 = load i8, i8* %20, align 1, !dbg !3001, !tbaa !1272
  %22 = icmp eq i8 %21, 45, !dbg !3001
  br i1 %22, label %23, label %68, !dbg !3003

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !3004, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i8* undef, metadata !3009, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i8 56, metadata !3010, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i8 0, metadata !3011, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i8 0, metadata !3012, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i8 0, metadata !3013, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i8 0, metadata !3014, metadata !DIExpression()), !dbg !3015
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3019
  %25 = load i8, i8* %24, align 1, !dbg !3019, !tbaa !1272
  %26 = icmp eq i8 %25, 56, !dbg !3019
  br i1 %26, label %27, label %68, !dbg !3021

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !3022, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i8* undef, metadata !3027, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i8 0, metadata !3028, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i8 0, metadata !3029, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i8 0, metadata !3030, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i8 0, metadata !3031, metadata !DIExpression()), !dbg !3032
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3036
  %29 = load i8, i8* %28, align 1, !dbg !3036, !tbaa !1272
  %30 = icmp eq i8 %29, 0, !dbg !3036
  br i1 %30, label %31, label %68, !dbg !3038

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !3039, !tbaa !1272
  %33 = icmp eq i8 %32, 96, !dbg !3040
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.91, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.92, i64 0, i64 0), !dbg !3039
  br label %71, !dbg !3041

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2946, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i8* undef, metadata !2951, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i8 66, metadata !2952, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i8 49, metadata !2953, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i8 56, metadata !2954, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i8 48, metadata !2955, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i8 51, metadata !2956, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i8 48, metadata !2957, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i8 0, metadata !2958, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i8 0, metadata !2959, metadata !DIExpression()), !dbg !3042
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3046
  %37 = load i8, i8* %36, align 1, !dbg !3046, !tbaa !1272
  %38 = and i8 %37, -33, !dbg !3046
  %39 = icmp eq i8 %38, 66, !dbg !3046
  br i1 %39, label %40, label %68, !dbg !3046

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2966, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i8* undef, metadata !2971, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i8 49, metadata !2972, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i8 56, metadata !2973, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i8 48, metadata !2974, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i8 51, metadata !2975, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i8 48, metadata !2976, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i8 0, metadata !2977, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i8 0, metadata !2978, metadata !DIExpression()), !dbg !3047
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3049
  %42 = load i8, i8* %41, align 1, !dbg !3049, !tbaa !1272
  %43 = icmp eq i8 %42, 49, !dbg !3049
  br i1 %43, label %44, label %68, !dbg !3050

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2985, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i8* undef, metadata !2990, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i8 56, metadata !2991, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i8 48, metadata !2992, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i8 51, metadata !2993, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i8 48, metadata !2994, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i8 0, metadata !2995, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i8 0, metadata !2996, metadata !DIExpression()), !dbg !3051
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3053
  %46 = load i8, i8* %45, align 1, !dbg !3053, !tbaa !1272
  %47 = icmp eq i8 %46, 56, !dbg !3053
  br i1 %47, label %48, label %68, !dbg !3054

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !3004, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i8* undef, metadata !3009, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i8 48, metadata !3010, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i8 51, metadata !3011, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i8 48, metadata !3012, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i8 0, metadata !3013, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i8 0, metadata !3014, metadata !DIExpression()), !dbg !3055
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3057
  %50 = load i8, i8* %49, align 1, !dbg !3057, !tbaa !1272
  %51 = icmp eq i8 %50, 48, !dbg !3057
  br i1 %51, label %52, label %68, !dbg !3058

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !3022, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i8* undef, metadata !3027, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i8 51, metadata !3028, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i8 48, metadata !3029, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i8 0, metadata !3030, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i8 0, metadata !3031, metadata !DIExpression()), !dbg !3059
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3061
  %54 = load i8, i8* %53, align 1, !dbg !3061, !tbaa !1272
  %55 = icmp eq i8 %54, 51, !dbg !3061
  br i1 %55, label %56, label %68, !dbg !3062

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !3063, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata i8* undef, metadata !3068, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata i8 48, metadata !3069, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata i8 0, metadata !3070, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata i8 0, metadata !3071, metadata !DIExpression()), !dbg !3072
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !3076
  %58 = load i8, i8* %57, align 1, !dbg !3076, !tbaa !1272
  %59 = icmp eq i8 %58, 48, !dbg !3076
  br i1 %59, label %60, label %68, !dbg !3078

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !3079, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i8* undef, metadata !3084, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i8 0, metadata !3085, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i8 0, metadata !3086, metadata !DIExpression()), !dbg !3087
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !3091
  %62 = load i8, i8* %61, align 1, !dbg !3091, !tbaa !1272
  %63 = icmp eq i8 %62, 0, !dbg !3091
  br i1 %63, label %64, label %68, !dbg !3093

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !3094, !tbaa !1272
  %66 = icmp eq i8 %65, 96, !dbg !3095
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.93, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.94, i64 0, i64 0), !dbg !3094
  br label %71, !dbg !3096

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !3097
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.90, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.89, i64 0, i64 0), !dbg !3098
  br label %71, !dbg !3099

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2919
  ret i8* %72, !dbg !3100
}

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !383 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !387 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !3101 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3105, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i64 %1, metadata !3106, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3107, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i8* %0, metadata !3109, metadata !DIExpression()) #19, !dbg !3122
  call void @llvm.dbg.value(metadata i64 %1, metadata !3114, metadata !DIExpression()) #19, !dbg !3122
  call void @llvm.dbg.value(metadata i64* null, metadata !3115, metadata !DIExpression()) #19, !dbg !3122
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3116, metadata !DIExpression()) #19, !dbg !3122
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3124
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3124
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3117, metadata !DIExpression()) #19, !dbg !3122
  %6 = tail call i32* @__errno_location() #25, !dbg !3125
  %7 = load i32, i32* %6, align 4, !dbg !3125, !tbaa !1265
  call void @llvm.dbg.value(metadata i32 %7, metadata !3118, metadata !DIExpression()) #19, !dbg !3122
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3126
  %9 = load i32, i32* %8, align 4, !dbg !3126, !tbaa !2321
  %10 = or i32 %9, 1, !dbg !3127
  call void @llvm.dbg.value(metadata i32 %10, metadata !3119, metadata !DIExpression()) #19, !dbg !3122
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3128
  %12 = load i32, i32* %11, align 8, !dbg !3128, !tbaa !2270
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3129
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3130
  %15 = load i8*, i8** %14, align 8, !dbg !3130, !tbaa !2344
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3131
  %17 = load i8*, i8** %16, align 8, !dbg !3131, !tbaa !2347
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #19, !dbg !3132
  %19 = add i64 %18, 1, !dbg !3133
  call void @llvm.dbg.value(metadata i64 %19, metadata !3120, metadata !DIExpression()) #19, !dbg !3122
  call void @llvm.dbg.value(metadata i64 %19, metadata !3134, metadata !DIExpression()) #19, !dbg !3139
  %20 = tail call noalias i8* @xmalloc(i64 %19) #19, !dbg !3141
  call void @llvm.dbg.value(metadata i8* %20, metadata !3121, metadata !DIExpression()) #19, !dbg !3122
  %21 = load i32, i32* %11, align 8, !dbg !3142, !tbaa !2270
  %22 = load i8*, i8** %14, align 8, !dbg !3143, !tbaa !2344
  %23 = load i8*, i8** %16, align 8, !dbg !3144, !tbaa !2347
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #19, !dbg !3145
  store i32 %7, i32* %6, align 4, !dbg !3146, !tbaa !1265
  ret i8* %20, !dbg !3147
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !3110 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3109, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata i64 %1, metadata !3114, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata i64* %2, metadata !3115, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3116, metadata !DIExpression()), !dbg !3148
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3149
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3149
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3117, metadata !DIExpression()), !dbg !3148
  %7 = tail call i32* @__errno_location() #25, !dbg !3150
  %8 = load i32, i32* %7, align 4, !dbg !3150, !tbaa !1265
  call void @llvm.dbg.value(metadata i32 %8, metadata !3118, metadata !DIExpression()), !dbg !3148
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3151
  %10 = load i32, i32* %9, align 4, !dbg !3151, !tbaa !2321
  %11 = icmp ne i64* %2, null, !dbg !3152
  %12 = xor i1 %11, true, !dbg !3152
  %13 = zext i1 %12 to i32, !dbg !3152
  %14 = or i32 %10, %13, !dbg !3153
  call void @llvm.dbg.value(metadata i32 %14, metadata !3119, metadata !DIExpression()), !dbg !3148
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3154
  %16 = load i32, i32* %15, align 8, !dbg !3154, !tbaa !2270
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3155
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3156
  %19 = load i8*, i8** %18, align 8, !dbg !3156, !tbaa !2344
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3157
  %21 = load i8*, i8** %20, align 8, !dbg !3157, !tbaa !2347
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !3158
  %23 = add i64 %22, 1, !dbg !3159
  call void @llvm.dbg.value(metadata i64 %23, metadata !3120, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata i64 %23, metadata !3134, metadata !DIExpression()) #19, !dbg !3160
  %24 = tail call noalias i8* @xmalloc(i64 %23) #19, !dbg !3162
  call void @llvm.dbg.value(metadata i8* %24, metadata !3121, metadata !DIExpression()), !dbg !3148
  %25 = load i32, i32* %15, align 8, !dbg !3163, !tbaa !2270
  %26 = load i8*, i8** %18, align 8, !dbg !3164, !tbaa !2344
  %27 = load i8*, i8** %20, align 8, !dbg !3165, !tbaa !2347
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !3166
  store i32 %8, i32* %7, align 4, !dbg !3167, !tbaa !1265
  br i1 %11, label %29, label %30, !dbg !3168

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3169, !tbaa !1536
  br label %30, !dbg !3171

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !3172
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !3173 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3177, !tbaa !1176
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3175, metadata !DIExpression()), !dbg !3178
  call void @llvm.dbg.value(metadata i32 1, metadata !3176, metadata !DIExpression()), !dbg !3178
  %2 = load i32, i32* @nslots, align 4, !dbg !3179, !tbaa !1265
  %3 = icmp sgt i32 %2, 1, !dbg !3182
  br i1 %3, label %4, label %12, !dbg !3183

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !3176, metadata !DIExpression()), !dbg !3178
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !3184
  %7 = load i8*, i8** %6, align 8, !dbg !3184, !tbaa !3185
  tail call void @free(i8* %7) #19, !dbg !3187
  %8 = add nuw nsw i64 %5, 1, !dbg !3188
  call void @llvm.dbg.value(metadata i64 %8, metadata !3176, metadata !DIExpression()), !dbg !3178
  %9 = load i32, i32* @nslots, align 4, !dbg !3179, !tbaa !1265
  %10 = sext i32 %9 to i64, !dbg !3182
  %11 = icmp slt i64 %8, %10, !dbg !3182
  br i1 %11, label %4, label %12, !dbg !3183, !llvm.loop !3189

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3191
  %14 = load i8*, i8** %13, align 8, !dbg !3191, !tbaa !3185
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3193
  br i1 %15, label %17, label %16, !dbg !3194

16:                                               ; preds = %12
  tail call void @free(i8* %14) #19, !dbg !3195
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3197, !tbaa !3198
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3199, !tbaa !3185
  br label %17, !dbg !3200

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3201
  br i1 %18, label %21, label %19, !dbg !3203

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3204
  tail call void @free(i8* %20) #19, !dbg !3206
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3207, !tbaa !1176
  br label %21, !dbg !3208

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !3209, !tbaa !1265
  ret void, !dbg !3210
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3211 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3213, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %1, metadata !3214, metadata !DIExpression()), !dbg !3215
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3216
  ret i8* %3, !dbg !3217
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !3218 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3222, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata i8* %1, metadata !3223, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata i64 %2, metadata !3224, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3225, metadata !DIExpression()), !dbg !3237
  %5 = tail call i32* @__errno_location() #25, !dbg !3238
  %6 = load i32, i32* %5, align 4, !dbg !3238, !tbaa !1265
  call void @llvm.dbg.value(metadata i32 %6, metadata !3226, metadata !DIExpression()), !dbg !3237
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3239, !tbaa !1176
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !3227, metadata !DIExpression()), !dbg !3237
  %8 = icmp slt i32 %0, 0, !dbg !3240
  br i1 %8, label %9, label %10, !dbg !3242

9:                                                ; preds = %4
  tail call void @abort() #23, !dbg !3243
  unreachable, !dbg !3243

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3244, !tbaa !1265
  %12 = icmp sgt i32 %11, %0, !dbg !3245
  br i1 %12, label %34, label %13, !dbg !3246

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3247
  call void @llvm.dbg.value(metadata i1 %14, metadata !3228, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !3231, metadata !DIExpression()), !dbg !3248
  %15 = icmp eq i32 %0, 2147483647, !dbg !3249
  br i1 %15, label %16, label %17, !dbg !3251

16:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !3252
  unreachable, !dbg !3252

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !3253
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3253
  %20 = add nuw nsw i32 %0, 1, !dbg !3254
  %21 = sext i32 %20 to i64, !dbg !3255
  %22 = shl nuw nsw i64 %21, 4, !dbg !3256
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #19, !dbg !3257
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3257
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3227, metadata !DIExpression()), !dbg !3237
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3258, !tbaa !1176
  br i1 %14, label %25, label %26, !dbg !3259

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3260, !tbaa.struct !3262
  br label %26, !dbg !3263

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3264, !tbaa !1265
  %28 = sext i32 %27 to i64, !dbg !3265
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3265
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3266
  %31 = sub nsw i32 %20, %27, !dbg !3267
  %32 = sext i32 %31 to i64, !dbg !3268
  %33 = shl nsw i64 %32, 4, !dbg !3269
  call void @llvm.dbg.value(metadata i8* %30, metadata !2668, metadata !DIExpression()) #19, !dbg !3270
  call void @llvm.dbg.value(metadata i32 0, metadata !2673, metadata !DIExpression()) #19, !dbg !3270
  call void @llvm.dbg.value(metadata i64 %33, metadata !2674, metadata !DIExpression()) #19, !dbg !3270
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #19, !dbg !3272
  store i32 %20, i32* @nslots, align 4, !dbg !3273, !tbaa !1265
  br label %34, !dbg !3274

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !3237
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !3227, metadata !DIExpression()), !dbg !3237
  %36 = zext i32 %0 to i64, !dbg !3275
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3276
  %38 = load i64, i64* %37, align 8, !dbg !3276, !tbaa !3198
  call void @llvm.dbg.value(metadata i64 %38, metadata !3232, metadata !DIExpression()), !dbg !3277
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3278
  %40 = load i8*, i8** %39, align 8, !dbg !3278, !tbaa !3185
  call void @llvm.dbg.value(metadata i8* %40, metadata !3234, metadata !DIExpression()), !dbg !3277
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3279
  %42 = load i32, i32* %41, align 4, !dbg !3279, !tbaa !2321
  %43 = or i32 %42, 1, !dbg !3280
  call void @llvm.dbg.value(metadata i32 %43, metadata !3235, metadata !DIExpression()), !dbg !3277
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3281
  %45 = load i32, i32* %44, align 8, !dbg !3281, !tbaa !2270
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3282
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3283
  %48 = load i8*, i8** %47, align 8, !dbg !3283, !tbaa !2344
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3284
  %50 = load i8*, i8** %49, align 8, !dbg !3284, !tbaa !2347
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3285
  call void @llvm.dbg.value(metadata i64 %51, metadata !3236, metadata !DIExpression()), !dbg !3277
  %52 = icmp ugt i64 %38, %51, !dbg !3286
  br i1 %52, label %63, label %53, !dbg !3288

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !3289
  call void @llvm.dbg.value(metadata i64 %54, metadata !3232, metadata !DIExpression()), !dbg !3277
  store i64 %54, i64* %37, align 8, !dbg !3291, !tbaa !3198
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3292
  br i1 %55, label %57, label %56, !dbg !3294

56:                                               ; preds = %53
  tail call void @free(i8* %40) #19, !dbg !3295
  br label %57, !dbg !3295

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !3134, metadata !DIExpression()) #19, !dbg !3296
  %58 = tail call noalias i8* @xmalloc(i64 %54) #19, !dbg !3298
  call void @llvm.dbg.value(metadata i8* %58, metadata !3234, metadata !DIExpression()), !dbg !3277
  store i8* %58, i8** %39, align 8, !dbg !3299, !tbaa !3185
  %59 = load i32, i32* %44, align 8, !dbg !3300, !tbaa !2270
  %60 = load i8*, i8** %47, align 8, !dbg !3301, !tbaa !2344
  %61 = load i8*, i8** %49, align 8, !dbg !3302, !tbaa !2347
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3303
  br label %63, !dbg !3304

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3277
  call void @llvm.dbg.value(metadata i8* %64, metadata !3234, metadata !DIExpression()), !dbg !3277
  store i32 %6, i32* %5, align 4, !dbg !3305, !tbaa !1265
  ret i8* %64, !dbg !3306
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3307 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3311, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i8* %1, metadata !3312, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i64 %2, metadata !3313, metadata !DIExpression()), !dbg !3314
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3315
  ret i8* %4, !dbg !3316
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !3317 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3319, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata i32 0, metadata !3213, metadata !DIExpression()) #19, !dbg !3321
  call void @llvm.dbg.value(metadata i8* %0, metadata !3214, metadata !DIExpression()) #19, !dbg !3321
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #19, !dbg !3323
  ret i8* %2, !dbg !3324
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3325 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3329, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata i64 %1, metadata !3330, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata i32 0, metadata !3311, metadata !DIExpression()) #19, !dbg !3332
  call void @llvm.dbg.value(metadata i8* %0, metadata !3312, metadata !DIExpression()) #19, !dbg !3332
  call void @llvm.dbg.value(metadata i64 %1, metadata !3313, metadata !DIExpression()) #19, !dbg !3332
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #19, !dbg !3334
  ret i8* %3, !dbg !3335
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3336 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3340, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i32 %1, metadata !3341, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i8* %2, metadata !3342, metadata !DIExpression()), !dbg !3344
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3345
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #19, !dbg !3345
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3343, metadata !DIExpression()), !dbg !3346
  call void @llvm.dbg.value(metadata i32 %1, metadata !3347, metadata !DIExpression()) #19, !dbg !3353
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3352, metadata !DIExpression()) #19, !dbg !3355
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #19, !dbg !3355, !alias.scope !3356
  %6 = icmp eq i32 %1, 10, !dbg !3359
  br i1 %6, label %7, label %8, !dbg !3361

7:                                                ; preds = %3
  tail call void @abort() #23, !dbg !3362, !noalias !3356
  unreachable, !dbg !3362

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3363
  store i32 %1, i32* %9, align 8, !dbg !3364, !tbaa !2270, !alias.scope !3356
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3365
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #19, !dbg !3366
  ret i8* %10, !dbg !3367
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3368 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3372, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i32 %1, metadata !3373, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8* %2, metadata !3374, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i64 %3, metadata !3375, metadata !DIExpression()), !dbg !3377
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3378
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #19, !dbg !3378
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3376, metadata !DIExpression()), !dbg !3379
  call void @llvm.dbg.value(metadata i32 %1, metadata !3347, metadata !DIExpression()) #19, !dbg !3380
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3352, metadata !DIExpression()) #19, !dbg !3382
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #19, !dbg !3382, !alias.scope !3383
  %7 = icmp eq i32 %1, 10, !dbg !3386
  br i1 %7, label %8, label %9, !dbg !3387

8:                                                ; preds = %4
  tail call void @abort() #23, !dbg !3388, !noalias !3383
  unreachable, !dbg !3388

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3389
  store i32 %1, i32* %10, align 8, !dbg !3390, !tbaa !2270, !alias.scope !3383
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3391
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #19, !dbg !3392
  ret i8* %11, !dbg !3393
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3394 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3352, metadata !DIExpression()), !dbg !3400
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3343, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i32 %0, metadata !3398, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata i8* %1, metadata !3399, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata i32 0, metadata !3340, metadata !DIExpression()) #19, !dbg !3405
  call void @llvm.dbg.value(metadata i32 %0, metadata !3341, metadata !DIExpression()) #19, !dbg !3405
  call void @llvm.dbg.value(metadata i8* %1, metadata !3342, metadata !DIExpression()) #19, !dbg !3405
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3406
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #19, !dbg !3406
  call void @llvm.dbg.value(metadata i32 %0, metadata !3347, metadata !DIExpression()) #19, !dbg !3407
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #19, !dbg !3400, !alias.scope !3408
  %5 = icmp eq i32 %0, 10, !dbg !3411
  br i1 %5, label %6, label %7, !dbg !3412

6:                                                ; preds = %2
  tail call void @abort() #23, !dbg !3413, !noalias !3408
  unreachable, !dbg !3413

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3414
  store i32 %0, i32* %8, align 8, !dbg !3415, !tbaa !2270, !alias.scope !3408
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #19, !dbg !3416
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #19, !dbg !3417
  ret i8* %9, !dbg !3418
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3419 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3352, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3376, metadata !DIExpression()), !dbg !3429
  call void @llvm.dbg.value(metadata i32 %0, metadata !3423, metadata !DIExpression()), !dbg !3430
  call void @llvm.dbg.value(metadata i8* %1, metadata !3424, metadata !DIExpression()), !dbg !3430
  call void @llvm.dbg.value(metadata i64 %2, metadata !3425, metadata !DIExpression()), !dbg !3430
  call void @llvm.dbg.value(metadata i32 0, metadata !3372, metadata !DIExpression()) #19, !dbg !3431
  call void @llvm.dbg.value(metadata i32 %0, metadata !3373, metadata !DIExpression()) #19, !dbg !3431
  call void @llvm.dbg.value(metadata i8* %1, metadata !3374, metadata !DIExpression()) #19, !dbg !3431
  call void @llvm.dbg.value(metadata i64 %2, metadata !3375, metadata !DIExpression()) #19, !dbg !3431
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3432
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #19, !dbg !3432
  call void @llvm.dbg.value(metadata i32 %0, metadata !3347, metadata !DIExpression()) #19, !dbg !3433
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #19, !dbg !3426, !alias.scope !3434
  %6 = icmp eq i32 %0, 10, !dbg !3437
  br i1 %6, label %7, label %8, !dbg !3438

7:                                                ; preds = %3
  tail call void @abort() #23, !dbg !3439, !noalias !3434
  unreachable, !dbg !3439

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3440
  store i32 %0, i32* %9, align 8, !dbg !3441, !tbaa !2270, !alias.scope !3434
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #19, !dbg !3442
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #19, !dbg !3443
  ret i8* %10, !dbg !3444
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !3445 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3449, metadata !DIExpression()), !dbg !3453
  call void @llvm.dbg.value(metadata i64 %1, metadata !3450, metadata !DIExpression()), !dbg !3453
  call void @llvm.dbg.value(metadata i8 %2, metadata !3451, metadata !DIExpression()), !dbg !3453
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3454
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #19, !dbg !3454
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3452, metadata !DIExpression()), !dbg !3455
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3456, !tbaa.struct !3457
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2288, metadata !DIExpression()), !dbg !3458
  call void @llvm.dbg.value(metadata i8 %2, metadata !2289, metadata !DIExpression()), !dbg !3458
  call void @llvm.dbg.value(metadata i32 1, metadata !2290, metadata !DIExpression()), !dbg !3458
  call void @llvm.dbg.value(metadata i8 %2, metadata !2291, metadata !DIExpression()), !dbg !3458
  %6 = lshr i8 %2, 5, !dbg !3460
  %7 = zext i8 %6 to i64, !dbg !3460
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3461
  call void @llvm.dbg.value(metadata i32* %8, metadata !2292, metadata !DIExpression()), !dbg !3458
  %9 = and i8 %2, 31, !dbg !3462
  %10 = zext i8 %9 to i32, !dbg !3462
  call void @llvm.dbg.value(metadata i32 %10, metadata !2294, metadata !DIExpression()), !dbg !3458
  %11 = load i32, i32* %8, align 4, !dbg !3463, !tbaa !1265
  %12 = lshr i32 %11, %10, !dbg !3464
  %13 = and i32 %12, 1, !dbg !3465
  call void @llvm.dbg.value(metadata i32 %13, metadata !2295, metadata !DIExpression()), !dbg !3458
  %14 = xor i32 %13, 1, !dbg !3466
  %15 = shl i32 %14, %10, !dbg !3467
  %16 = xor i32 %15, %11, !dbg !3468
  store i32 %16, i32* %8, align 4, !dbg !3468, !tbaa !1265
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3469
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #19, !dbg !3470
  ret i8* %17, !dbg !3471
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !3472 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3452, metadata !DIExpression()), !dbg !3478
  call void @llvm.dbg.value(metadata i8* %0, metadata !3476, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i8 %1, metadata !3477, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i8* %0, metadata !3449, metadata !DIExpression()) #19, !dbg !3481
  call void @llvm.dbg.value(metadata i64 -1, metadata !3450, metadata !DIExpression()) #19, !dbg !3481
  call void @llvm.dbg.value(metadata i8 %1, metadata !3451, metadata !DIExpression()) #19, !dbg !3481
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3482
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #19, !dbg !3482
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !3483, !tbaa.struct !3457
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2288, metadata !DIExpression()) #19, !dbg !3484
  call void @llvm.dbg.value(metadata i8 %1, metadata !2289, metadata !DIExpression()) #19, !dbg !3484
  call void @llvm.dbg.value(metadata i32 1, metadata !2290, metadata !DIExpression()) #19, !dbg !3484
  call void @llvm.dbg.value(metadata i8 %1, metadata !2291, metadata !DIExpression()) #19, !dbg !3484
  %5 = lshr i8 %1, 5, !dbg !3486
  %6 = zext i8 %5 to i64, !dbg !3486
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3487
  call void @llvm.dbg.value(metadata i32* %7, metadata !2292, metadata !DIExpression()) #19, !dbg !3484
  %8 = and i8 %1, 31, !dbg !3488
  %9 = zext i8 %8 to i32, !dbg !3488
  call void @llvm.dbg.value(metadata i32 %9, metadata !2294, metadata !DIExpression()) #19, !dbg !3484
  %10 = load i32, i32* %7, align 4, !dbg !3489, !tbaa !1265
  %11 = lshr i32 %10, %9, !dbg !3490
  %12 = and i32 %11, 1, !dbg !3491
  call void @llvm.dbg.value(metadata i32 %12, metadata !2295, metadata !DIExpression()) #19, !dbg !3484
  %13 = xor i32 %12, 1, !dbg !3492
  %14 = shl i32 %13, %9, !dbg !3493
  %15 = xor i32 %14, %10, !dbg !3494
  store i32 %15, i32* %7, align 4, !dbg !3494, !tbaa !1265
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #19, !dbg !3495
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #19, !dbg !3496
  ret i8* %16, !dbg !3497
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !3498 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3452, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i8* %0, metadata !3500, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i8* %0, metadata !3476, metadata !DIExpression()) #19, !dbg !3505
  call void @llvm.dbg.value(metadata i8 58, metadata !3477, metadata !DIExpression()) #19, !dbg !3505
  call void @llvm.dbg.value(metadata i8* %0, metadata !3449, metadata !DIExpression()) #19, !dbg !3506
  call void @llvm.dbg.value(metadata i64 -1, metadata !3450, metadata !DIExpression()) #19, !dbg !3506
  call void @llvm.dbg.value(metadata i8 58, metadata !3451, metadata !DIExpression()) #19, !dbg !3506
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3507
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #19, !dbg !3507
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !3508, !tbaa.struct !3457
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2288, metadata !DIExpression()) #19, !dbg !3509
  call void @llvm.dbg.value(metadata i8 58, metadata !2289, metadata !DIExpression()) #19, !dbg !3509
  call void @llvm.dbg.value(metadata i32 1, metadata !2290, metadata !DIExpression()) #19, !dbg !3509
  call void @llvm.dbg.value(metadata i8 58, metadata !2291, metadata !DIExpression()) #19, !dbg !3509
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3511
  call void @llvm.dbg.value(metadata i32* %4, metadata !2292, metadata !DIExpression()) #19, !dbg !3509
  call void @llvm.dbg.value(metadata i32 26, metadata !2294, metadata !DIExpression()) #19, !dbg !3509
  %5 = load i32, i32* %4, align 4, !dbg !3512, !tbaa !1265
  call void @llvm.dbg.value(metadata i32 %5, metadata !2295, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #19, !dbg !3509
  %6 = or i32 %5, 67108864, !dbg !3513
  store i32 %6, i32* %4, align 4, !dbg !3513, !tbaa !1265
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #19, !dbg !3514
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #19, !dbg !3515
  ret i8* %7, !dbg !3516
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3517 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3452, metadata !DIExpression()), !dbg !3521
  call void @llvm.dbg.value(metadata i8* %0, metadata !3519, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i64 %1, metadata !3520, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i8* %0, metadata !3449, metadata !DIExpression()) #19, !dbg !3524
  call void @llvm.dbg.value(metadata i64 %1, metadata !3450, metadata !DIExpression()) #19, !dbg !3524
  call void @llvm.dbg.value(metadata i8 58, metadata !3451, metadata !DIExpression()) #19, !dbg !3524
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3525
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #19, !dbg !3525
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !3526, !tbaa.struct !3457
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2288, metadata !DIExpression()) #19, !dbg !3527
  call void @llvm.dbg.value(metadata i8 58, metadata !2289, metadata !DIExpression()) #19, !dbg !3527
  call void @llvm.dbg.value(metadata i32 1, metadata !2290, metadata !DIExpression()) #19, !dbg !3527
  call void @llvm.dbg.value(metadata i8 58, metadata !2291, metadata !DIExpression()) #19, !dbg !3527
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3529
  call void @llvm.dbg.value(metadata i32* %5, metadata !2292, metadata !DIExpression()) #19, !dbg !3527
  call void @llvm.dbg.value(metadata i32 26, metadata !2294, metadata !DIExpression()) #19, !dbg !3527
  %6 = load i32, i32* %5, align 4, !dbg !3530, !tbaa !1265
  call void @llvm.dbg.value(metadata i32 %6, metadata !2295, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #19, !dbg !3527
  %7 = or i32 %6, 67108864, !dbg !3531
  store i32 %7, i32* %5, align 4, !dbg !3531, !tbaa !1265
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #19, !dbg !3532
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #19, !dbg !3533
  ret i8* %8, !dbg !3534
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3535 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3352, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3541
  call void @llvm.dbg.value(metadata i32 %0, metadata !3537, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata i32 %1, metadata !3538, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata i8* %2, metadata !3539, metadata !DIExpression()), !dbg !3543
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3544
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #19, !dbg !3544
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3540, metadata !DIExpression()), !dbg !3545
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3546
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3546
  call void @llvm.dbg.value(metadata i32 %1, metadata !3347, metadata !DIExpression()) #19, !dbg !3547
  call void @llvm.dbg.value(metadata i32 0, metadata !3352, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3547
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !3541, !alias.scope !3548
  %8 = icmp eq i32 %1, 10, !dbg !3551
  br i1 %8, label %9, label %10, !dbg !3552

9:                                                ; preds = %3
  tail call void @abort() #23, !dbg !3553, !noalias !3548
  unreachable, !dbg !3553

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3352, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3547
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3546
  store i32 %1, i32* %11, align 8, !dbg !3546, !tbaa.struct !3457
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3546
  %13 = bitcast i32* %12 to i8*, !dbg !3546
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !3546, !tbaa.struct !3457
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3546
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2288, metadata !DIExpression()), !dbg !3554
  call void @llvm.dbg.value(metadata i8 58, metadata !2289, metadata !DIExpression()), !dbg !3554
  call void @llvm.dbg.value(metadata i32 1, metadata !2290, metadata !DIExpression()), !dbg !3554
  call void @llvm.dbg.value(metadata i8 58, metadata !2291, metadata !DIExpression()), !dbg !3554
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3556
  call void @llvm.dbg.value(metadata i32* %14, metadata !2292, metadata !DIExpression()), !dbg !3554
  call void @llvm.dbg.value(metadata i32 26, metadata !2294, metadata !DIExpression()), !dbg !3554
  %15 = load i32, i32* %14, align 4, !dbg !3557, !tbaa !1265
  call void @llvm.dbg.value(metadata i32 %15, metadata !2295, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3554
  %16 = or i32 %15, 67108864, !dbg !3558
  store i32 %16, i32* %14, align 4, !dbg !3558, !tbaa !1265
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3559
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #19, !dbg !3560
  ret i8* %17, !dbg !3561
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3562 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3570, metadata !DIExpression()), !dbg !3580
  call void @llvm.dbg.value(metadata i32 %0, metadata !3566, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata i8* %1, metadata !3567, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata i8* %2, metadata !3568, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata i8* %3, metadata !3569, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata i32 %0, metadata !3575, metadata !DIExpression()) #19, !dbg !3583
  call void @llvm.dbg.value(metadata i8* %1, metadata !3576, metadata !DIExpression()) #19, !dbg !3583
  call void @llvm.dbg.value(metadata i8* %2, metadata !3577, metadata !DIExpression()) #19, !dbg !3583
  call void @llvm.dbg.value(metadata i8* %3, metadata !3578, metadata !DIExpression()) #19, !dbg !3583
  call void @llvm.dbg.value(metadata i64 -1, metadata !3579, metadata !DIExpression()) #19, !dbg !3583
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3584
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #19, !dbg !3584
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !3585, !tbaa.struct !3457
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2328, metadata !DIExpression()) #19, !dbg !3586
  call void @llvm.dbg.value(metadata i8* %1, metadata !2329, metadata !DIExpression()) #19, !dbg !3586
  call void @llvm.dbg.value(metadata i8* %2, metadata !2330, metadata !DIExpression()) #19, !dbg !3586
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2328, metadata !DIExpression()) #19, !dbg !3586
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3588
  store i32 10, i32* %7, align 8, !dbg !3589, !tbaa !2270
  %8 = icmp ne i8* %1, null, !dbg !3590
  %9 = icmp ne i8* %2, null, !dbg !3591
  %10 = and i1 %8, %9, !dbg !3592
  br i1 %10, label %12, label %11, !dbg !3592

11:                                               ; preds = %4
  tail call void @abort() #23, !dbg !3593
  unreachable, !dbg !3593

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3594
  store i8* %1, i8** %13, align 8, !dbg !3595, !tbaa !2344
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3596
  store i8* %2, i8** %14, align 8, !dbg !3597, !tbaa !2347
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #19, !dbg !3598
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #19, !dbg !3599
  ret i8* %15, !dbg !3600
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !3571 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3575, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i8* %1, metadata !3576, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i8* %2, metadata !3577, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i8* %3, metadata !3578, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i64 %4, metadata !3579, metadata !DIExpression()), !dbg !3601
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3602
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #19, !dbg !3602
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3570, metadata !DIExpression()), !dbg !3603
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3604, !tbaa.struct !3457
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2328, metadata !DIExpression()) #19, !dbg !3605
  call void @llvm.dbg.value(metadata i8* %1, metadata !2329, metadata !DIExpression()) #19, !dbg !3605
  call void @llvm.dbg.value(metadata i8* %2, metadata !2330, metadata !DIExpression()) #19, !dbg !3605
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2328, metadata !DIExpression()) #19, !dbg !3605
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3607
  store i32 10, i32* %8, align 8, !dbg !3608, !tbaa !2270
  %9 = icmp ne i8* %1, null, !dbg !3609
  %10 = icmp ne i8* %2, null, !dbg !3610
  %11 = and i1 %9, %10, !dbg !3611
  br i1 %11, label %13, label %12, !dbg !3611

12:                                               ; preds = %5
  tail call void @abort() #23, !dbg !3612
  unreachable, !dbg !3612

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3613
  store i8* %1, i8** %14, align 8, !dbg !3614, !tbaa !2344
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3615
  store i8* %2, i8** %15, align 8, !dbg !3616, !tbaa !2347
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3617
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #19, !dbg !3618
  ret i8* %16, !dbg !3619
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3620 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3570, metadata !DIExpression()), !dbg !3627
  call void @llvm.dbg.value(metadata i8* %0, metadata !3624, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i8* %1, metadata !3625, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i8* %2, metadata !3626, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i32 0, metadata !3566, metadata !DIExpression()) #19, !dbg !3631
  call void @llvm.dbg.value(metadata i8* %0, metadata !3567, metadata !DIExpression()) #19, !dbg !3631
  call void @llvm.dbg.value(metadata i8* %1, metadata !3568, metadata !DIExpression()) #19, !dbg !3631
  call void @llvm.dbg.value(metadata i8* %2, metadata !3569, metadata !DIExpression()) #19, !dbg !3631
  call void @llvm.dbg.value(metadata i32 0, metadata !3575, metadata !DIExpression()) #19, !dbg !3632
  call void @llvm.dbg.value(metadata i8* %0, metadata !3576, metadata !DIExpression()) #19, !dbg !3632
  call void @llvm.dbg.value(metadata i8* %1, metadata !3577, metadata !DIExpression()) #19, !dbg !3632
  call void @llvm.dbg.value(metadata i8* %2, metadata !3578, metadata !DIExpression()) #19, !dbg !3632
  call void @llvm.dbg.value(metadata i64 -1, metadata !3579, metadata !DIExpression()) #19, !dbg !3632
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3633
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #19, !dbg !3633
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !3634, !tbaa.struct !3457
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2328, metadata !DIExpression()) #19, !dbg !3635
  call void @llvm.dbg.value(metadata i8* %0, metadata !2329, metadata !DIExpression()) #19, !dbg !3635
  call void @llvm.dbg.value(metadata i8* %1, metadata !2330, metadata !DIExpression()) #19, !dbg !3635
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2328, metadata !DIExpression()) #19, !dbg !3635
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3637
  store i32 10, i32* %6, align 8, !dbg !3638, !tbaa !2270
  %7 = icmp ne i8* %0, null, !dbg !3639
  %8 = icmp ne i8* %1, null, !dbg !3640
  %9 = and i1 %7, %8, !dbg !3641
  br i1 %9, label %11, label %10, !dbg !3641

10:                                               ; preds = %3
  tail call void @abort() #23, !dbg !3642
  unreachable, !dbg !3642

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3643
  store i8* %0, i8** %12, align 8, !dbg !3644, !tbaa !2344
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3645
  store i8* %1, i8** %13, align 8, !dbg !3646, !tbaa !2347
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #19, !dbg !3647
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #19, !dbg !3648
  ret i8* %14, !dbg !3649
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3650 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3570, metadata !DIExpression()), !dbg !3658
  call void @llvm.dbg.value(metadata i8* %0, metadata !3654, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i8* %1, metadata !3655, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i8* %2, metadata !3656, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i64 %3, metadata !3657, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i32 0, metadata !3575, metadata !DIExpression()) #19, !dbg !3661
  call void @llvm.dbg.value(metadata i8* %0, metadata !3576, metadata !DIExpression()) #19, !dbg !3661
  call void @llvm.dbg.value(metadata i8* %1, metadata !3577, metadata !DIExpression()) #19, !dbg !3661
  call void @llvm.dbg.value(metadata i8* %2, metadata !3578, metadata !DIExpression()) #19, !dbg !3661
  call void @llvm.dbg.value(metadata i64 %3, metadata !3579, metadata !DIExpression()) #19, !dbg !3661
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3662
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #19, !dbg !3662
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !3663, !tbaa.struct !3457
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2328, metadata !DIExpression()) #19, !dbg !3664
  call void @llvm.dbg.value(metadata i8* %0, metadata !2329, metadata !DIExpression()) #19, !dbg !3664
  call void @llvm.dbg.value(metadata i8* %1, metadata !2330, metadata !DIExpression()) #19, !dbg !3664
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2328, metadata !DIExpression()) #19, !dbg !3664
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3666
  store i32 10, i32* %7, align 8, !dbg !3667, !tbaa !2270
  %8 = icmp ne i8* %0, null, !dbg !3668
  %9 = icmp ne i8* %1, null, !dbg !3669
  %10 = and i1 %8, %9, !dbg !3670
  br i1 %10, label %12, label %11, !dbg !3670

11:                                               ; preds = %4
  tail call void @abort() #23, !dbg !3671
  unreachable, !dbg !3671

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3672
  store i8* %0, i8** %13, align 8, !dbg !3673, !tbaa !2344
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3674
  store i8* %1, i8** %14, align 8, !dbg !3675, !tbaa !2347
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #19, !dbg !3676
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #19, !dbg !3677
  ret i8* %15, !dbg !3678
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3679 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3683, metadata !DIExpression()), !dbg !3686
  call void @llvm.dbg.value(metadata i8* %1, metadata !3684, metadata !DIExpression()), !dbg !3686
  call void @llvm.dbg.value(metadata i64 %2, metadata !3685, metadata !DIExpression()), !dbg !3686
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3687
  ret i8* %4, !dbg !3688
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3689 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3693, metadata !DIExpression()), !dbg !3695
  call void @llvm.dbg.value(metadata i64 %1, metadata !3694, metadata !DIExpression()), !dbg !3695
  call void @llvm.dbg.value(metadata i32 0, metadata !3683, metadata !DIExpression()) #19, !dbg !3696
  call void @llvm.dbg.value(metadata i8* %0, metadata !3684, metadata !DIExpression()) #19, !dbg !3696
  call void @llvm.dbg.value(metadata i64 %1, metadata !3685, metadata !DIExpression()) #19, !dbg !3696
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #19, !dbg !3698
  ret i8* %3, !dbg !3699
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3700 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3702, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata i8* %1, metadata !3703, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata i32 %0, metadata !3683, metadata !DIExpression()) #19, !dbg !3705
  call void @llvm.dbg.value(metadata i8* %1, metadata !3684, metadata !DIExpression()) #19, !dbg !3705
  call void @llvm.dbg.value(metadata i64 -1, metadata !3685, metadata !DIExpression()) #19, !dbg !3705
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #19, !dbg !3707
  ret i8* %3, !dbg !3708
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3709 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3711, metadata !DIExpression()), !dbg !3712
  call void @llvm.dbg.value(metadata i32 0, metadata !3702, metadata !DIExpression()) #19, !dbg !3713
  call void @llvm.dbg.value(metadata i8* %0, metadata !3703, metadata !DIExpression()) #19, !dbg !3713
  call void @llvm.dbg.value(metadata i32 0, metadata !3683, metadata !DIExpression()) #19, !dbg !3715
  call void @llvm.dbg.value(metadata i8* %0, metadata !3684, metadata !DIExpression()) #19, !dbg !3715
  call void @llvm.dbg.value(metadata i64 -1, metadata !3685, metadata !DIExpression()) #19, !dbg !3715
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #19, !dbg !3717
  ret i8* %2, !dbg !3718
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3719 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3726, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata i8* %1, metadata !3727, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata i8* %2, metadata !3728, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata i8* %3, metadata !3729, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata i8** %4, metadata !3730, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata i64 %5, metadata !3731, metadata !DIExpression()), !dbg !3732
  %7 = icmp eq i8* %1, null, !dbg !3733
  br i1 %7, label %10, label %8, !dbg !3735

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.101, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #19, !dbg !3736
  br label %12, !dbg !3736

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.102, i64 0, i64 0), i8* %2, i8* %3) #19, !dbg !3737
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.103, i64 0, i64 0), i32 5) #19, !dbg !3738
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #19, !dbg !3738
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.104, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3739
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.105, i64 0, i64 0), i32 5) #19, !dbg !3740
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.106, i64 0, i64 0)) #19, !dbg !3740
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.104, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3741
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
  ], !dbg !3742

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.107, i64 0, i64 0), i32 5) #19, !dbg !3743
  %21 = load i8*, i8** %4, align 8, !dbg !3743, !tbaa !1176
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #19, !dbg !3743
  br label %147, !dbg !3745

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.108, i64 0, i64 0), i32 5) #19, !dbg !3746
  %25 = load i8*, i8** %4, align 8, !dbg !3746, !tbaa !1176
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3746
  %27 = load i8*, i8** %26, align 8, !dbg !3746, !tbaa !1176
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #19, !dbg !3746
  br label %147, !dbg !3747

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.109, i64 0, i64 0), i32 5) #19, !dbg !3748
  %31 = load i8*, i8** %4, align 8, !dbg !3748, !tbaa !1176
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3748
  %33 = load i8*, i8** %32, align 8, !dbg !3748, !tbaa !1176
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3748
  %35 = load i8*, i8** %34, align 8, !dbg !3748, !tbaa !1176
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #19, !dbg !3748
  br label %147, !dbg !3749

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.110, i64 0, i64 0), i32 5) #19, !dbg !3750
  %39 = load i8*, i8** %4, align 8, !dbg !3750, !tbaa !1176
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3750
  %41 = load i8*, i8** %40, align 8, !dbg !3750, !tbaa !1176
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3750
  %43 = load i8*, i8** %42, align 8, !dbg !3750, !tbaa !1176
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3750
  %45 = load i8*, i8** %44, align 8, !dbg !3750, !tbaa !1176
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #19, !dbg !3750
  br label %147, !dbg !3751

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.111, i64 0, i64 0), i32 5) #19, !dbg !3752
  %49 = load i8*, i8** %4, align 8, !dbg !3752, !tbaa !1176
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3752
  %51 = load i8*, i8** %50, align 8, !dbg !3752, !tbaa !1176
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3752
  %53 = load i8*, i8** %52, align 8, !dbg !3752, !tbaa !1176
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3752
  %55 = load i8*, i8** %54, align 8, !dbg !3752, !tbaa !1176
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3752
  %57 = load i8*, i8** %56, align 8, !dbg !3752, !tbaa !1176
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #19, !dbg !3752
  br label %147, !dbg !3753

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.112, i64 0, i64 0), i32 5) #19, !dbg !3754
  %61 = load i8*, i8** %4, align 8, !dbg !3754, !tbaa !1176
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3754
  %63 = load i8*, i8** %62, align 8, !dbg !3754, !tbaa !1176
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3754
  %65 = load i8*, i8** %64, align 8, !dbg !3754, !tbaa !1176
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3754
  %67 = load i8*, i8** %66, align 8, !dbg !3754, !tbaa !1176
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3754
  %69 = load i8*, i8** %68, align 8, !dbg !3754, !tbaa !1176
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3754
  %71 = load i8*, i8** %70, align 8, !dbg !3754, !tbaa !1176
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #19, !dbg !3754
  br label %147, !dbg !3755

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.113, i64 0, i64 0), i32 5) #19, !dbg !3756
  %75 = load i8*, i8** %4, align 8, !dbg !3756, !tbaa !1176
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3756
  %77 = load i8*, i8** %76, align 8, !dbg !3756, !tbaa !1176
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3756
  %79 = load i8*, i8** %78, align 8, !dbg !3756, !tbaa !1176
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3756
  %81 = load i8*, i8** %80, align 8, !dbg !3756, !tbaa !1176
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3756
  %83 = load i8*, i8** %82, align 8, !dbg !3756, !tbaa !1176
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3756
  %85 = load i8*, i8** %84, align 8, !dbg !3756, !tbaa !1176
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3756
  %87 = load i8*, i8** %86, align 8, !dbg !3756, !tbaa !1176
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #19, !dbg !3756
  br label %147, !dbg !3757

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.114, i64 0, i64 0), i32 5) #19, !dbg !3758
  %91 = load i8*, i8** %4, align 8, !dbg !3758, !tbaa !1176
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3758
  %93 = load i8*, i8** %92, align 8, !dbg !3758, !tbaa !1176
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3758
  %95 = load i8*, i8** %94, align 8, !dbg !3758, !tbaa !1176
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3758
  %97 = load i8*, i8** %96, align 8, !dbg !3758, !tbaa !1176
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3758
  %99 = load i8*, i8** %98, align 8, !dbg !3758, !tbaa !1176
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3758
  %101 = load i8*, i8** %100, align 8, !dbg !3758, !tbaa !1176
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3758
  %103 = load i8*, i8** %102, align 8, !dbg !3758, !tbaa !1176
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3758
  %105 = load i8*, i8** %104, align 8, !dbg !3758, !tbaa !1176
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #19, !dbg !3758
  br label %147, !dbg !3759

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.115, i64 0, i64 0), i32 5) #19, !dbg !3760
  %109 = load i8*, i8** %4, align 8, !dbg !3760, !tbaa !1176
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3760
  %111 = load i8*, i8** %110, align 8, !dbg !3760, !tbaa !1176
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3760
  %113 = load i8*, i8** %112, align 8, !dbg !3760, !tbaa !1176
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3760
  %115 = load i8*, i8** %114, align 8, !dbg !3760, !tbaa !1176
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3760
  %117 = load i8*, i8** %116, align 8, !dbg !3760, !tbaa !1176
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3760
  %119 = load i8*, i8** %118, align 8, !dbg !3760, !tbaa !1176
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3760
  %121 = load i8*, i8** %120, align 8, !dbg !3760, !tbaa !1176
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3760
  %123 = load i8*, i8** %122, align 8, !dbg !3760, !tbaa !1176
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3760
  %125 = load i8*, i8** %124, align 8, !dbg !3760, !tbaa !1176
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #19, !dbg !3760
  br label %147, !dbg !3761

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.116, i64 0, i64 0), i32 5) #19, !dbg !3762
  %129 = load i8*, i8** %4, align 8, !dbg !3762, !tbaa !1176
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3762
  %131 = load i8*, i8** %130, align 8, !dbg !3762, !tbaa !1176
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3762
  %133 = load i8*, i8** %132, align 8, !dbg !3762, !tbaa !1176
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3762
  %135 = load i8*, i8** %134, align 8, !dbg !3762, !tbaa !1176
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3762
  %137 = load i8*, i8** %136, align 8, !dbg !3762, !tbaa !1176
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3762
  %139 = load i8*, i8** %138, align 8, !dbg !3762, !tbaa !1176
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3762
  %141 = load i8*, i8** %140, align 8, !dbg !3762, !tbaa !1176
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3762
  %143 = load i8*, i8** %142, align 8, !dbg !3762, !tbaa !1176
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3762
  %145 = load i8*, i8** %144, align 8, !dbg !3762, !tbaa !1176
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #19, !dbg !3762
  br label %147, !dbg !3763

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3764
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3765 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3769, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata i8* %1, metadata !3770, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata i8* %2, metadata !3771, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata i8* %3, metadata !3772, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata i8** %4, metadata !3773, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata i64 0, metadata !3774, metadata !DIExpression()), !dbg !3775
  br label %6, !dbg !3776

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3778
  call void @llvm.dbg.value(metadata i64 %7, metadata !3774, metadata !DIExpression()), !dbg !3775
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3779
  %9 = load i8*, i8** %8, align 8, !dbg !3779, !tbaa !1176
  %10 = icmp eq i8* %9, null, !dbg !3781
  %11 = add i64 %7, 1, !dbg !3782
  call void @llvm.dbg.value(metadata i64 %11, metadata !3774, metadata !DIExpression()), !dbg !3775
  br i1 %10, label %12, label %6, !dbg !3781, !llvm.loop !3783

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3774, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata i64 %7, metadata !3774, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata i64 %7, metadata !3774, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata i64 %7, metadata !3774, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata i64 %7, metadata !3774, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata i64 %7, metadata !3774, metadata !DIExpression()), !dbg !3775
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3785
  ret void, !dbg !3786
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3787 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3798, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.value(metadata i8* %1, metadata !3799, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.value(metadata i8* %2, metadata !3800, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.value(metadata i8* %3, metadata !3801, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3802, metadata !DIExpression()), !dbg !3806
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3807
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #19, !dbg !3807
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3804, metadata !DIExpression()), !dbg !3808
  call void @llvm.dbg.value(metadata i64 0, metadata !3803, metadata !DIExpression()), !dbg !3806
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !3809
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !3809
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !3809
  %11 = load i32, i32* %8, align 8, !dbg !3812
  %12 = icmp ult i32 %11, 41, !dbg !3812
  br i1 %12, label %13, label %18, !dbg !3812

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3812
  %15 = zext i32 %11 to i64, !dbg !3812
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3812
  %17 = add nuw nsw i32 %11, 8, !dbg !3812
  store i32 %17, i32* %8, align 8, !dbg !3812
  br label %21, !dbg !3812

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3812
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3812
  store i8* %20, i8** %9, align 8, !dbg !3812
  br label %21, !dbg !3812

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3812
  %25 = load i8*, i8** %24, align 8, !dbg !3812
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3813
  store i8* %25, i8** %26, align 16, !dbg !3814, !tbaa !1176
  %27 = icmp eq i8* %25, null, !dbg !3815
  br i1 %27, label %30, label %28, !dbg !3816

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3803, metadata !DIExpression()), !dbg !3806
  %29 = icmp ult i32 %22, 41, !dbg !3812
  br i1 %29, label %35, label %32, !dbg !3812

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3817
  call void @llvm.dbg.value(metadata i64 %31, metadata !3803, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.value(metadata i64 %31, metadata !3803, metadata !DIExpression()), !dbg !3806
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3818
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #19, !dbg !3819
  ret void, !dbg !3819

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3812
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3812
  store i8* %34, i8** %9, align 8, !dbg !3812
  br label %40, !dbg !3812

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3812
  %37 = zext i32 %22 to i64, !dbg !3812
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3812
  %39 = add nuw nsw i32 %22, 8, !dbg !3812
  store i32 %39, i32* %8, align 8, !dbg !3812
  br label %40, !dbg !3812

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3812
  %44 = load i8*, i8** %43, align 8, !dbg !3812
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3813
  store i8* %44, i8** %45, align 8, !dbg !3814, !tbaa !1176
  %46 = icmp eq i8* %44, null, !dbg !3815
  br i1 %46, label %30, label %47, !dbg !3816

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3803, metadata !DIExpression()), !dbg !3806
  %48 = icmp ult i32 %41, 41, !dbg !3812
  br i1 %48, label %52, label %49, !dbg !3812

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3812
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3812
  store i8* %51, i8** %9, align 8, !dbg !3812
  br label %57, !dbg !3812

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3812
  %54 = zext i32 %41 to i64, !dbg !3812
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3812
  %56 = add nuw nsw i32 %41, 8, !dbg !3812
  store i32 %56, i32* %8, align 8, !dbg !3812
  br label %57, !dbg !3812

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3812
  %61 = load i8*, i8** %60, align 8, !dbg !3812
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3813
  store i8* %61, i8** %62, align 16, !dbg !3814, !tbaa !1176
  %63 = icmp eq i8* %61, null, !dbg !3815
  br i1 %63, label %30, label %64, !dbg !3816

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3803, metadata !DIExpression()), !dbg !3806
  %65 = icmp ult i32 %58, 41, !dbg !3812
  br i1 %65, label %69, label %66, !dbg !3812

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3812
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3812
  store i8* %68, i8** %9, align 8, !dbg !3812
  br label %74, !dbg !3812

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3812
  %71 = zext i32 %58 to i64, !dbg !3812
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3812
  %73 = add nuw nsw i32 %58, 8, !dbg !3812
  store i32 %73, i32* %8, align 8, !dbg !3812
  br label %74, !dbg !3812

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3812
  %78 = load i8*, i8** %77, align 8, !dbg !3812
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3813
  store i8* %78, i8** %79, align 8, !dbg !3814, !tbaa !1176
  %80 = icmp eq i8* %78, null, !dbg !3815
  br i1 %80, label %30, label %81, !dbg !3816

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3803, metadata !DIExpression()), !dbg !3806
  %82 = icmp ult i32 %75, 41, !dbg !3812
  br i1 %82, label %86, label %83, !dbg !3812

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3812
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3812
  store i8* %85, i8** %9, align 8, !dbg !3812
  br label %91, !dbg !3812

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3812
  %88 = zext i32 %75 to i64, !dbg !3812
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3812
  %90 = add nuw nsw i32 %75, 8, !dbg !3812
  store i32 %90, i32* %8, align 8, !dbg !3812
  br label %91, !dbg !3812

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3812
  %95 = load i8*, i8** %94, align 8, !dbg !3812
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3813
  store i8* %95, i8** %96, align 16, !dbg !3814, !tbaa !1176
  %97 = icmp eq i8* %95, null, !dbg !3815
  br i1 %97, label %30, label %98, !dbg !3816

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3803, metadata !DIExpression()), !dbg !3806
  %99 = icmp ult i32 %92, 41, !dbg !3812
  br i1 %99, label %103, label %100, !dbg !3812

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3812
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3812
  store i8* %102, i8** %9, align 8, !dbg !3812
  br label %108, !dbg !3812

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3812
  %105 = zext i32 %92 to i64, !dbg !3812
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3812
  %107 = add nuw nsw i32 %92, 8, !dbg !3812
  store i32 %107, i32* %8, align 8, !dbg !3812
  br label %108, !dbg !3812

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3812
  %111 = load i8*, i8** %110, align 8, !dbg !3812
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3813
  store i8* %111, i8** %112, align 8, !dbg !3814, !tbaa !1176
  %113 = icmp eq i8* %111, null, !dbg !3815
  br i1 %113, label %30, label %114, !dbg !3816

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3803, metadata !DIExpression()), !dbg !3806
  %115 = load i8*, i8** %9, align 8, !dbg !3812
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3812
  store i8* %116, i8** %9, align 8, !dbg !3812
  %117 = bitcast i8* %115 to i8**, !dbg !3812
  %118 = load i8*, i8** %117, align 8, !dbg !3812
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3813
  store i8* %118, i8** %119, align 16, !dbg !3814, !tbaa !1176
  %120 = icmp eq i8* %118, null, !dbg !3815
  br i1 %120, label %30, label %121, !dbg !3816

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3803, metadata !DIExpression()), !dbg !3806
  %122 = load i8*, i8** %9, align 8, !dbg !3812
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3812
  store i8* %123, i8** %9, align 8, !dbg !3812
  %124 = bitcast i8* %122 to i8**, !dbg !3812
  %125 = load i8*, i8** %124, align 8, !dbg !3812
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3813
  store i8* %125, i8** %126, align 8, !dbg !3814, !tbaa !1176
  %127 = icmp eq i8* %125, null, !dbg !3815
  br i1 %127, label %30, label %128, !dbg !3816

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3803, metadata !DIExpression()), !dbg !3806
  %129 = load i8*, i8** %9, align 8, !dbg !3812
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3812
  store i8* %130, i8** %9, align 8, !dbg !3812
  %131 = bitcast i8* %129 to i8**, !dbg !3812
  %132 = load i8*, i8** %131, align 8, !dbg !3812
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3813
  store i8* %132, i8** %133, align 16, !dbg !3814, !tbaa !1176
  %134 = icmp eq i8* %132, null, !dbg !3815
  br i1 %134, label %30, label %135, !dbg !3816

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3803, metadata !DIExpression()), !dbg !3806
  %136 = load i8*, i8** %9, align 8, !dbg !3812
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3812
  store i8* %137, i8** %9, align 8, !dbg !3812
  %138 = bitcast i8* %136 to i8**, !dbg !3812
  %139 = load i8*, i8** %138, align 8, !dbg !3812
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3813
  store i8* %139, i8** %140, align 8, !dbg !3814, !tbaa !1176
  %141 = icmp eq i8* %139, null, !dbg !3815
  %142 = select i1 %141, i64 9, i64 10, !dbg !3816
  br label %30, !dbg !3816
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3820 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3824, metadata !DIExpression()), !dbg !3834
  call void @llvm.dbg.value(metadata i8* %1, metadata !3825, metadata !DIExpression()), !dbg !3834
  call void @llvm.dbg.value(metadata i8* %2, metadata !3826, metadata !DIExpression()), !dbg !3834
  call void @llvm.dbg.value(metadata i8* %3, metadata !3827, metadata !DIExpression()), !dbg !3834
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3835
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #19, !dbg !3835
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3828, metadata !DIExpression()), !dbg !3836
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3837
  call void @llvm.va_start(i8* nonnull %6), !dbg !3837
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3838
  call void @llvm.va_end(i8* nonnull %6), !dbg !3839
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #19, !dbg !3840
  ret void, !dbg !3840
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #19

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3841 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3842, !tbaa !1176
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.104, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3842
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.119, i64 0, i64 0), i32 5) #19, !dbg !3843
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.120, i64 0, i64 0)) #19, !dbg !3843
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.121, i64 0, i64 0), i32 5) #19, !dbg !3844
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.122, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.123, i64 0, i64 0)) #19, !dbg !3844
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.124, i64 0, i64 0), i32 5) #19, !dbg !3845
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.125, i64 0, i64 0)) #19, !dbg !3845
  ret void, !dbg !3846
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #20 !dbg !3847 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3851, metadata !DIExpression()), !dbg !3853
  call void @llvm.dbg.value(metadata i64 %1, metadata !3852, metadata !DIExpression()), !dbg !3853
  %3 = udiv i64 9223372036854775807, %1, !dbg !3854
  %4 = icmp ult i64 %3, %0, !dbg !3854
  br i1 %4, label %5, label %6, !dbg !3856

5:                                                ; preds = %2
  tail call void @xalloc_die() #23, !dbg !3857
  unreachable, !dbg !3857

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3858
  call void @llvm.dbg.value(metadata i64 %7, metadata !3859, metadata !DIExpression()) #19, !dbg !3865
  %8 = tail call noalias i8* @malloc(i64 %7) #19, !dbg !3867
  call void @llvm.dbg.value(metadata i8* %8, metadata !3864, metadata !DIExpression()) #19, !dbg !3865
  %9 = icmp eq i8* %8, null, !dbg !3868
  %10 = icmp ne i64 %7, 0, !dbg !3870
  %11 = and i1 %10, %9, !dbg !3871
  br i1 %11, label %12, label %13, !dbg !3871

12:                                               ; preds = %6
  tail call void @xalloc_die() #23, !dbg !3872
  unreachable, !dbg !3872

13:                                               ; preds = %6
  ret i8* %8, !dbg !3873
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3860 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3859, metadata !DIExpression()), !dbg !3874
  %2 = tail call noalias i8* @malloc(i64 %0) #19, !dbg !3875
  call void @llvm.dbg.value(metadata i8* %2, metadata !3864, metadata !DIExpression()), !dbg !3874
  %3 = icmp eq i8* %2, null, !dbg !3876
  %4 = icmp ne i64 %0, 0, !dbg !3877
  %5 = and i1 %4, %3, !dbg !3878
  br i1 %5, label %6, label %7, !dbg !3878

6:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !3879
  unreachable, !dbg !3879

7:                                                ; preds = %1
  ret i8* %2, !dbg !3880
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #20 !dbg !3881 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3885, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.value(metadata i64 %1, metadata !3886, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.value(metadata i64 %2, metadata !3887, metadata !DIExpression()), !dbg !3888
  %4 = udiv i64 9223372036854775807, %2, !dbg !3889
  %5 = icmp ult i64 %4, %1, !dbg !3889
  br i1 %5, label %6, label %7, !dbg !3891

6:                                                ; preds = %3
  tail call void @xalloc_die() #23, !dbg !3892
  unreachable, !dbg !3892

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3893
  call void @llvm.dbg.value(metadata i8* %0, metadata !3894, metadata !DIExpression()) #19, !dbg !3900
  call void @llvm.dbg.value(metadata i64 %8, metadata !3899, metadata !DIExpression()) #19, !dbg !3900
  %9 = icmp eq i64 %8, 0, !dbg !3902
  %10 = icmp ne i8* %0, null, !dbg !3904
  %11 = and i1 %10, %9, !dbg !3905
  br i1 %11, label %12, label %13, !dbg !3905

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #19, !dbg !3906
  br label %19, !dbg !3908

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #19, !dbg !3909
  call void @llvm.dbg.value(metadata i8* %14, metadata !3894, metadata !DIExpression()) #19, !dbg !3900
  %15 = icmp eq i8* %14, null, !dbg !3910
  %16 = icmp ne i64 %8, 0, !dbg !3912
  %17 = and i1 %16, %15, !dbg !3913
  br i1 %17, label %18, label %19, !dbg !3913

18:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !3914
  unreachable, !dbg !3914

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3900
  ret i8* %20, !dbg !3915
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3895 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3894, metadata !DIExpression()), !dbg !3916
  call void @llvm.dbg.value(metadata i64 %1, metadata !3899, metadata !DIExpression()), !dbg !3916
  %3 = icmp eq i64 %1, 0, !dbg !3917
  %4 = icmp ne i8* %0, null, !dbg !3918
  %5 = and i1 %4, %3, !dbg !3919
  br i1 %5, label %6, label %7, !dbg !3919

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #19, !dbg !3920
  br label %13, !dbg !3921

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #19, !dbg !3922
  call void @llvm.dbg.value(metadata i8* %8, metadata !3894, metadata !DIExpression()), !dbg !3916
  %9 = icmp eq i8* %8, null, !dbg !3923
  %10 = icmp ne i64 %1, 0, !dbg !3924
  %11 = and i1 %10, %9, !dbg !3925
  br i1 %11, label %12, label %13, !dbg !3925

12:                                               ; preds = %7
  tail call void @xalloc_die() #23, !dbg !3926
  unreachable, !dbg !3926

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3916
  ret i8* %14, !dbg !3927
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #20 !dbg !527 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !532, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata i64* %1, metadata !533, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata i64 %2, metadata !534, metadata !DIExpression()), !dbg !3928
  %4 = load i64, i64* %1, align 8, !dbg !3929, !tbaa !1536
  call void @llvm.dbg.value(metadata i64 %4, metadata !535, metadata !DIExpression()), !dbg !3928
  %5 = icmp eq i8* %0, null, !dbg !3930
  br i1 %5, label %6, label %20, !dbg !3932

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3933
  br i1 %7, label %8, label %13, !dbg !3936

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3937
  call void @llvm.dbg.value(metadata i64 %9, metadata !535, metadata !DIExpression()), !dbg !3928
  %10 = icmp ugt i64 %2, 128, !dbg !3939
  %11 = zext i1 %10 to i64, !dbg !3939
  %12 = add nuw nsw i64 %9, %11, !dbg !3940
  call void @llvm.dbg.value(metadata i64 %12, metadata !535, metadata !DIExpression()), !dbg !3928
  br label %13, !dbg !3941

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3928
  call void @llvm.dbg.value(metadata i64 %14, metadata !535, metadata !DIExpression()), !dbg !3928
  %15 = udiv i64 9223372036854775807, %2, !dbg !3942
  %16 = icmp ult i64 %15, %14, !dbg !3942
  br i1 %16, label %19, label %17, !dbg !3944

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !535, metadata !DIExpression()), !dbg !3928
  store i64 %14, i64* %1, align 8, !dbg !3945, !tbaa !1536
  %18 = mul i64 %14, %2, !dbg !3946
  call void @llvm.dbg.value(metadata i8* %0, metadata !3894, metadata !DIExpression()) #19, !dbg !3947
  call void @llvm.dbg.value(metadata i64 %28, metadata !3899, metadata !DIExpression()) #19, !dbg !3947
  br label %31, !dbg !3949

19:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !3950
  unreachable, !dbg !3950

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3951
  %22 = icmp ugt i64 %21, %4, !dbg !3954
  br i1 %22, label %24, label %23, !dbg !3955

23:                                               ; preds = %20
  tail call void @xalloc_die() #23, !dbg !3956
  unreachable, !dbg !3956

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3957
  %26 = add nuw i64 %4, 1, !dbg !3958
  %27 = add i64 %26, %25, !dbg !3959
  call void @llvm.dbg.value(metadata i64 %27, metadata !535, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata i64 %27, metadata !535, metadata !DIExpression()), !dbg !3928
  store i64 %27, i64* %1, align 8, !dbg !3945, !tbaa !1536
  %28 = mul i64 %27, %2, !dbg !3946
  call void @llvm.dbg.value(metadata i8* %0, metadata !3894, metadata !DIExpression()) #19, !dbg !3947
  call void @llvm.dbg.value(metadata i64 %28, metadata !3899, metadata !DIExpression()) #19, !dbg !3947
  %29 = icmp eq i64 %28, 0, !dbg !3960
  br i1 %29, label %30, label %31, !dbg !3949

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #19, !dbg !3961
  br label %38, !dbg !3962

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #19, !dbg !3963
  call void @llvm.dbg.value(metadata i8* %33, metadata !3894, metadata !DIExpression()) #19, !dbg !3947
  %34 = icmp eq i8* %33, null, !dbg !3964
  %35 = icmp ne i64 %32, 0, !dbg !3965
  %36 = and i1 %35, %34, !dbg !3966
  br i1 %36, label %37, label %38, !dbg !3966

37:                                               ; preds = %31
  tail call void @xalloc_die() #23, !dbg !3967
  unreachable, !dbg !3967

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3947
  ret i8* %39, !dbg !3968
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #20 !dbg !3969 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3971, metadata !DIExpression()), !dbg !3972
  call void @llvm.dbg.value(metadata i64 %0, metadata !3859, metadata !DIExpression()) #19, !dbg !3973
  %2 = tail call noalias i8* @malloc(i64 %0) #19, !dbg !3975
  call void @llvm.dbg.value(metadata i8* %2, metadata !3864, metadata !DIExpression()) #19, !dbg !3973
  %3 = icmp eq i8* %2, null, !dbg !3976
  %4 = icmp ne i64 %0, 0, !dbg !3977
  %5 = and i1 %4, %3, !dbg !3978
  br i1 %5, label %6, label %7, !dbg !3978

6:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !3979
  unreachable, !dbg !3979

7:                                                ; preds = %1
  ret i8* %2, !dbg !3980
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3981 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3985, metadata !DIExpression()), !dbg !3987
  call void @llvm.dbg.value(metadata i64* %1, metadata !3986, metadata !DIExpression()), !dbg !3987
  call void @llvm.dbg.value(metadata i8* %0, metadata !532, metadata !DIExpression()) #19, !dbg !3988
  call void @llvm.dbg.value(metadata i64* %1, metadata !533, metadata !DIExpression()) #19, !dbg !3988
  call void @llvm.dbg.value(metadata i64 1, metadata !534, metadata !DIExpression()) #19, !dbg !3988
  %3 = load i64, i64* %1, align 8, !dbg !3990, !tbaa !1536
  call void @llvm.dbg.value(metadata i64 %3, metadata !535, metadata !DIExpression()) #19, !dbg !3988
  %4 = icmp eq i8* %0, null, !dbg !3991
  br i1 %4, label %5, label %12, !dbg !3992

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3993
  br i1 %6, label %9, label %7, !dbg !3994

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !535, metadata !DIExpression()) #19, !dbg !3988
  %8 = icmp slt i64 %3, 0, !dbg !3995
  br i1 %8, label %11, label %9, !dbg !3996

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !535, metadata !DIExpression()) #19, !dbg !3988
  store i64 %10, i64* %1, align 8, !dbg !3997, !tbaa !1536
  call void @llvm.dbg.value(metadata i8* %0, metadata !3894, metadata !DIExpression()) #19, !dbg !3998
  call void @llvm.dbg.value(metadata i64 %18, metadata !3899, metadata !DIExpression()) #19, !dbg !3998
  br label %21, !dbg !4000

11:                                               ; preds = %7
  tail call void @xalloc_die() #23, !dbg !4001
  unreachable, !dbg !4001

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !4002
  br i1 %13, label %15, label %14, !dbg !4003

14:                                               ; preds = %12
  tail call void @xalloc_die() #23, !dbg !4004
  unreachable, !dbg !4004

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !4005
  %17 = add nuw nsw i64 %3, 1, !dbg !4006
  %18 = add nuw nsw i64 %17, %16, !dbg !4007
  call void @llvm.dbg.value(metadata i64 %18, metadata !535, metadata !DIExpression()) #19, !dbg !3988
  call void @llvm.dbg.value(metadata i64 %18, metadata !535, metadata !DIExpression()) #19, !dbg !3988
  store i64 %18, i64* %1, align 8, !dbg !3997, !tbaa !1536
  call void @llvm.dbg.value(metadata i8* %0, metadata !3894, metadata !DIExpression()) #19, !dbg !3998
  call void @llvm.dbg.value(metadata i64 %18, metadata !3899, metadata !DIExpression()) #19, !dbg !3998
  %19 = icmp eq i64 %18, 0, !dbg !4008
  br i1 %19, label %20, label %21, !dbg !4000

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #19, !dbg !4009
  br label %28, !dbg !4010

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #19, !dbg !4011
  call void @llvm.dbg.value(metadata i8* %23, metadata !3894, metadata !DIExpression()) #19, !dbg !3998
  %24 = icmp eq i8* %23, null, !dbg !4012
  %25 = icmp ne i64 %22, 0, !dbg !4013
  %26 = and i1 %25, %24, !dbg !4014
  br i1 %26, label %27, label %28, !dbg !4014

27:                                               ; preds = %21
  tail call void @xalloc_die() #23, !dbg !4015
  unreachable, !dbg !4015

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3998
  ret i8* %29, !dbg !4016
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !4017 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4019, metadata !DIExpression()), !dbg !4020
  call void @llvm.dbg.value(metadata i64 %0, metadata !4021, metadata !DIExpression()) #19, !dbg !4026
  call void @llvm.dbg.value(metadata i64 1, metadata !4024, metadata !DIExpression()) #19, !dbg !4026
  %2 = icmp slt i64 %0, 0, !dbg !4028
  br i1 %2, label %6, label %3, !dbg !4030

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #19, !dbg !4031
  call void @llvm.dbg.value(metadata i8* %4, metadata !4025, metadata !DIExpression()) #19, !dbg !4026
  %5 = icmp eq i8* %4, null, !dbg !4032
  br i1 %5, label %6, label %7, !dbg !4033

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #23, !dbg !4034
  unreachable, !dbg !4034

7:                                                ; preds = %3
  ret i8* %4, !dbg !4035
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !4022 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4021, metadata !DIExpression()), !dbg !4036
  call void @llvm.dbg.value(metadata i64 %1, metadata !4024, metadata !DIExpression()), !dbg !4036
  %3 = udiv i64 9223372036854775807, %1, !dbg !4037
  %4 = icmp ult i64 %3, %0, !dbg !4037
  br i1 %4, label %8, label %5, !dbg !4038

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #19, !dbg !4039
  call void @llvm.dbg.value(metadata i8* %6, metadata !4025, metadata !DIExpression()), !dbg !4036
  %7 = icmp eq i8* %6, null, !dbg !4040
  br i1 %7, label %8, label %9, !dbg !4041

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #23, !dbg !4042
  unreachable, !dbg !4042

9:                                                ; preds = %5
  ret i8* %6, !dbg !4043
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4044 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4048, metadata !DIExpression()), !dbg !4050
  call void @llvm.dbg.value(metadata i64 %1, metadata !4049, metadata !DIExpression()), !dbg !4050
  call void @llvm.dbg.value(metadata i64 %1, metadata !3859, metadata !DIExpression()) #19, !dbg !4051
  %3 = tail call noalias i8* @malloc(i64 %1) #19, !dbg !4053
  call void @llvm.dbg.value(metadata i8* %3, metadata !3864, metadata !DIExpression()) #19, !dbg !4051
  %4 = icmp eq i8* %3, null, !dbg !4054
  %5 = icmp ne i64 %1, 0, !dbg !4055
  %6 = and i1 %5, %4, !dbg !4056
  br i1 %6, label %7, label %8, !dbg !4056

7:                                                ; preds = %2
  tail call void @xalloc_die() #23, !dbg !4057
  unreachable, !dbg !4057

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4058, metadata !DIExpression()) #19, !dbg !4063
  call void @llvm.dbg.value(metadata i8* %0, metadata !4061, metadata !DIExpression()) #19, !dbg !4063
  call void @llvm.dbg.value(metadata i64 %1, metadata !4062, metadata !DIExpression()) #19, !dbg !4063
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #19, !dbg !4065
  ret i8* %3, !dbg !4066
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !4067 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4069, metadata !DIExpression()), !dbg !4070
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #22, !dbg !4071
  %3 = add i64 %2, 1, !dbg !4072
  call void @llvm.dbg.value(metadata i8* %0, metadata !4048, metadata !DIExpression()) #19, !dbg !4073
  call void @llvm.dbg.value(metadata i64 %3, metadata !4049, metadata !DIExpression()) #19, !dbg !4073
  call void @llvm.dbg.value(metadata i64 %3, metadata !3859, metadata !DIExpression()) #19, !dbg !4075
  %4 = tail call noalias i8* @malloc(i64 %3) #19, !dbg !4077
  call void @llvm.dbg.value(metadata i8* %4, metadata !3864, metadata !DIExpression()) #19, !dbg !4075
  %5 = icmp eq i8* %4, null, !dbg !4078
  %6 = icmp ne i64 %3, 0, !dbg !4079
  %7 = and i1 %6, %5, !dbg !4080
  br i1 %7, label %8, label %9, !dbg !4080

8:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !4081
  unreachable, !dbg !4081

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !4058, metadata !DIExpression()) #19, !dbg !4082
  call void @llvm.dbg.value(metadata i8* %0, metadata !4061, metadata !DIExpression()) #19, !dbg !4082
  call void @llvm.dbg.value(metadata i64 %3, metadata !4062, metadata !DIExpression()) #19, !dbg !4082
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #19, !dbg !4084
  ret i8* %4, !dbg !4085
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4086 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4087, !tbaa !1265
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.138, i64 0, i64 0), i32 5) #19, !dbg !4088
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.139, i64 0, i64 0), i8* %2) #19, !dbg !4089
  tail call void @abort() #23, !dbg !4090
  unreachable, !dbg !4090
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @xstrtold(i8* %0, i8** %1, x86_fp80* nocapture %2, x86_fp80 (i8*, i8**)* nocapture %3) local_unnamed_addr #8 !dbg !4091 {
  %5 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4094, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata i8** %1, metadata !4095, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata x86_fp80* %2, metadata !4096, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata x86_fp80 (i8*, i8**)* %3, metadata !4097, metadata !DIExpression()), !dbg !4101
  %6 = bitcast i8** %5 to i8*, !dbg !4102
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #19, !dbg !4102
  call void @llvm.dbg.value(metadata i8 1, metadata !4100, metadata !DIExpression()), !dbg !4101
  %7 = tail call i32* @__errno_location() #25, !dbg !4103
  store i32 0, i32* %7, align 4, !dbg !4104, !tbaa !1265
  call void @llvm.dbg.value(metadata i8** %5, metadata !4099, metadata !DIExpression(DW_OP_deref)), !dbg !4101
  %8 = call x86_fp80 %3(i8* %0, i8** nonnull %5) #19, !dbg !4105
  call void @llvm.dbg.value(metadata x86_fp80 %8, metadata !4098, metadata !DIExpression()), !dbg !4101
  %9 = load i8*, i8** %5, align 8, !dbg !4106, !tbaa !1176
  call void @llvm.dbg.value(metadata i8* %9, metadata !4099, metadata !DIExpression()), !dbg !4101
  %10 = icmp eq i8* %9, %0, !dbg !4108
  %11 = ptrtoint i8* %9 to i64, !dbg !4109
  br i1 %10, label %22, label %12, !dbg !4109

12:                                               ; preds = %4
  %13 = icmp eq i8** %1, null, !dbg !4110
  br i1 %13, label %14, label %17, !dbg !4111

14:                                               ; preds = %12
  %15 = load i8, i8* %9, align 1, !dbg !4112, !tbaa !1272
  %16 = icmp eq i8 %15, 0, !dbg !4113
  br i1 %16, label %17, label %27, !dbg !4114

17:                                               ; preds = %14, %12
  %18 = fcmp une x86_fp80 %8, 0xK00000000000000000000, !dbg !4115
  br i1 %18, label %19, label %22, !dbg !4118

19:                                               ; preds = %17
  %20 = load i32, i32* %7, align 4, !dbg !4119, !tbaa !1265
  %21 = icmp ne i32 %20, 34, !dbg !4120
  br label %22, !dbg !4121

22:                                               ; preds = %19, %4, %17
  %23 = phi i1 [ true, %17 ], [ false, %4 ], [ %21, %19 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !4100, metadata !DIExpression()), !dbg !4101
  %24 = icmp eq i8** %1, null, !dbg !4122
  br i1 %24, label %27, label %25, !dbg !4124

25:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i8* undef, metadata !4099, metadata !DIExpression()), !dbg !4101
  %26 = bitcast i8** %1 to i64*, !dbg !4125
  store i64 %11, i64* %26, align 8, !dbg !4125, !tbaa !1176
  br label %27, !dbg !4126

27:                                               ; preds = %14, %22, %25
  %28 = phi i1 [ %23, %22 ], [ %23, %25 ], [ false, %14 ]
  store x86_fp80 %8, x86_fp80* %2, align 16, !dbg !4127, !tbaa !1535
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #19, !dbg !4128
  ret i1 %28, !dbg !4129
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #21 !dbg !4130 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4132, metadata !DIExpression()), !dbg !4138
  call void @llvm.dbg.value(metadata i64 %1, metadata !4133, metadata !DIExpression()), !dbg !4138
  %3 = icmp eq i64 %0, 0, !dbg !4139
  %4 = icmp eq i64 %1, 0, !dbg !4140
  %5 = or i1 %3, %4, !dbg !4141
  br i1 %5, label %11, label %6, !dbg !4141

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !4135, metadata !DIExpression()), !dbg !4142
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !4143
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !4143
  br i1 %8, label %9, label %11, !dbg !4145

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #25, !dbg !4146
  store i32 12, i32* %10, align 4, !dbg !4148, !tbaa !1265
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !4132, metadata !DIExpression()), !dbg !4138
  call void @llvm.dbg.value(metadata i64 %12, metadata !4133, metadata !DIExpression()), !dbg !4138
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #19, !dbg !4149
  call void @llvm.dbg.value(metadata i8* %14, metadata !4134, metadata !DIExpression()), !dbg !4138
  br label %15, !dbg !4150

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !4138
  ret i8* %16, !dbg !4151
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !4152 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4160, metadata !DIExpression()), !dbg !4169
  call void @llvm.dbg.value(metadata i8* %1, metadata !4161, metadata !DIExpression()), !dbg !4169
  call void @llvm.dbg.value(metadata i64 %2, metadata !4162, metadata !DIExpression()), !dbg !4169
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4163, metadata !DIExpression()), !dbg !4169
  %6 = bitcast i32* %5 to i8*, !dbg !4170
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #19, !dbg !4170
  %7 = icmp eq i32* %0, null, !dbg !4171
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4173
  call void @llvm.dbg.value(metadata i32* %8, metadata !4160, metadata !DIExpression()), !dbg !4169
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #19, !dbg !4174
  call void @llvm.dbg.value(metadata i64 %9, metadata !4164, metadata !DIExpression()), !dbg !4169
  %10 = icmp ugt i64 %9, -3, !dbg !4175
  %11 = icmp ne i64 %2, 0, !dbg !4176
  %12 = and i1 %11, %10, !dbg !4177
  br i1 %12, label %13, label %18, !dbg !4177

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #19, !dbg !4178
  br i1 %14, label %18, label %15, !dbg !4179

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4180, !tbaa !1272
  call void @llvm.dbg.value(metadata i8 %16, metadata !4166, metadata !DIExpression()), !dbg !4181
  %17 = zext i8 %16 to i32, !dbg !4182
  store i32 %17, i32* %8, align 4, !dbg !4183, !tbaa !1265
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4169
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #19, !dbg !4184
  ret i64 %19, !dbg !4184
}

; Function Attrs: nounwind
declare !dbg !555 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local x86_fp80 @c_strtold(i8* %0, i8** %1) local_unnamed_addr #8 !dbg !4185 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4187, metadata !DIExpression()), !dbg !4193
  call void @llvm.dbg.value(metadata i8** %1, metadata !4188, metadata !DIExpression()), !dbg !4193
  %3 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !4194, !tbaa !1176
  %4 = icmp eq %struct.__locale_struct* %3, null, !dbg !4194
  br i1 %4, label %5, label %7, !dbg !4200

5:                                                ; preds = %2
  %6 = tail call %struct.__locale_struct* @newlocale(i32 8127, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.148, i64 0, i64 0), %struct.__locale_struct* null) #19, !dbg !4201
  store volatile %struct.__locale_struct* %6, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !4202, !tbaa !1176
  br label %7, !dbg !4203

7:                                                ; preds = %2, %5
  %8 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !4204, !tbaa !1176
  call void @llvm.dbg.value(metadata %struct.__locale_struct* %8, metadata !4190, metadata !DIExpression()), !dbg !4193
  %9 = icmp eq %struct.__locale_struct* %8, null, !dbg !4205
  br i1 %9, label %10, label %13, !dbg !4207

10:                                               ; preds = %7
  %11 = icmp eq i8** %1, null, !dbg !4208
  br i1 %11, label %27, label %12, !dbg !4211

12:                                               ; preds = %10
  store i8* %0, i8** %1, align 8, !dbg !4212, !tbaa !1176
  br label %27, !dbg !4213

13:                                               ; preds = %7
  %14 = tail call %struct.__locale_struct* @uselocale(%struct.__locale_struct* nonnull %8) #19, !dbg !4214
  call void @llvm.dbg.value(metadata %struct.__locale_struct* %14, metadata !4191, metadata !DIExpression()), !dbg !4193
  %15 = icmp eq %struct.__locale_struct* %14, null, !dbg !4215
  br i1 %15, label %16, label %19, !dbg !4217

16:                                               ; preds = %13
  %17 = icmp eq i8** %1, null, !dbg !4218
  br i1 %17, label %27, label %18, !dbg !4221

18:                                               ; preds = %16
  store i8* %0, i8** %1, align 8, !dbg !4222, !tbaa !1176
  br label %27, !dbg !4223

19:                                               ; preds = %13
  %20 = tail call x86_fp80 @strtold(i8* %0, i8** %1) #19, !dbg !4224
  call void @llvm.dbg.value(metadata x86_fp80 %20, metadata !4189, metadata !DIExpression()), !dbg !4193
  %21 = tail call i32* @__errno_location() #25, !dbg !4225
  %22 = load i32, i32* %21, align 4, !dbg !4225, !tbaa !1265
  call void @llvm.dbg.value(metadata i32 %22, metadata !4192, metadata !DIExpression()), !dbg !4193
  %23 = tail call %struct.__locale_struct* @uselocale(%struct.__locale_struct* nonnull %14) #19, !dbg !4226
  %24 = icmp eq %struct.__locale_struct* %23, null, !dbg !4228
  br i1 %24, label %25, label %26, !dbg !4229

25:                                               ; preds = %19
  tail call void @abort() #23, !dbg !4230
  unreachable, !dbg !4230

26:                                               ; preds = %19
  store i32 %22, i32* %21, align 4, !dbg !4231, !tbaa !1265
  br label %27

27:                                               ; preds = %26, %16, %18, %12, %10
  %28 = phi x86_fp80 [ 0xK00000000000000000000, %10 ], [ 0xK00000000000000000000, %12 ], [ %20, %26 ], [ 0xK00000000000000000000, %16 ], [ 0xK00000000000000000000, %18 ], !dbg !4193
  ret x86_fp80 %28, !dbg !4232
}

; Function Attrs: nounwind
declare !dbg !470 %struct.__locale_struct* @newlocale(i32, i8*, %struct.__locale_struct*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !445 %struct.__locale_struct* @uselocale(%struct.__locale_struct*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4233 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4239, metadata !DIExpression()), !dbg !4244
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #19, !dbg !4245
  call void @llvm.dbg.value(metadata i1 undef, metadata !4240, metadata !DIExpression()), !dbg !4244
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4246, metadata !DIExpression()), !dbg !4250
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4252
  %4 = load i32, i32* %3, align 8, !dbg !4252, !tbaa !4253
  %5 = and i32 %4, 32, !dbg !4252
  %6 = icmp eq i32 %5, 0, !dbg !4255
  call void @llvm.dbg.value(metadata i1 %6, metadata !4242, metadata !DIExpression()), !dbg !4244
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #19, !dbg !4256
  %8 = icmp ne i32 %7, 0, !dbg !4257
  call void @llvm.dbg.value(metadata i1 %8, metadata !4243, metadata !DIExpression()), !dbg !4244
  br i1 %6, label %9, label %19, !dbg !4258

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4260
  call void @llvm.dbg.value(metadata i1 %10, metadata !4240, metadata !DIExpression()), !dbg !4244
  %11 = xor i1 %8, true, !dbg !4261
  %12 = or i1 %10, %11, !dbg !4261
  %13 = sext i1 %8 to i32, !dbg !4261
  br i1 %12, label %22, label %14, !dbg !4261

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #25, !dbg !4262
  %16 = load i32, i32* %15, align 4, !dbg !4262, !tbaa !1265
  %17 = icmp ne i32 %16, 9, !dbg !4263
  %18 = sext i1 %17 to i32, !dbg !4264
  br label %22, !dbg !4264

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4265

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #25, !dbg !4267
  store i32 0, i32* %21, align 4, !dbg !4269, !tbaa !1265
  br label %22, !dbg !4267

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4244
  ret i32 %23, !dbg !4270
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !4271 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4273, metadata !DIExpression()), !dbg !4278
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4279
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #19, !dbg !4279
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4274, metadata !DIExpression()), !dbg !4280
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #19, !dbg !4281
  %5 = icmp eq i32 %4, 0, !dbg !4281
  br i1 %5, label %6, label %13, !dbg !4283

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !4284
  %8 = load i16, i16* %7, align 16, !dbg !4284
  %9 = icmp eq i16 %8, 67, !dbg !4284
  br i1 %9, label %13, label %10, !dbg !4285

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.153, i64 0, i64 0), i64 6), !dbg !4286
  %12 = icmp ne i32 %11, 0, !dbg !4287
  br label %13, !dbg !4285

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !4278
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #19, !dbg !4288
  ret i1 %14, !dbg !4288
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !4289 {
  %1 = tail call i8* @nl_langinfo(i32 14) #19, !dbg !4292
  call void @llvm.dbg.value(metadata i8* %1, metadata !4291, metadata !DIExpression()), !dbg !4293
  %2 = icmp eq i8* %1, null, !dbg !4294
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.156, i64 0, i64 0), i8* %1, !dbg !4296
  call void @llvm.dbg.value(metadata i8* %3, metadata !4291, metadata !DIExpression()), !dbg !4293
  %4 = load i8, i8* %3, align 1, !dbg !4297, !tbaa !1272
  %5 = icmp eq i8 %4, 0, !dbg !4301
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.157, i64 0, i64 0), i8* %3, !dbg !4302
  call void @llvm.dbg.value(metadata i8* %6, metadata !4291, metadata !DIExpression()), !dbg !4293
  ret i8* %6, !dbg !4303
}

; Function Attrs: nounwind
declare !dbg !1007 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !4304 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4308, metadata !DIExpression()), !dbg !4311
  call void @llvm.dbg.value(metadata i8* %1, metadata !4309, metadata !DIExpression()), !dbg !4311
  call void @llvm.dbg.value(metadata i64 %2, metadata !4310, metadata !DIExpression()), !dbg !4311
  call void @llvm.dbg.value(metadata i32 %0, metadata !4312, metadata !DIExpression()) #19, !dbg !4321
  call void @llvm.dbg.value(metadata i8* %1, metadata !4315, metadata !DIExpression()) #19, !dbg !4321
  call void @llvm.dbg.value(metadata i64 %2, metadata !4316, metadata !DIExpression()) #19, !dbg !4321
  call void @llvm.dbg.value(metadata i32 %0, metadata !4323, metadata !DIExpression()) #19, !dbg !4329
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #19, !dbg !4331
  call void @llvm.dbg.value(metadata i8* %4, metadata !4328, metadata !DIExpression()) #19, !dbg !4329
  call void @llvm.dbg.value(metadata i8* %4, metadata !4317, metadata !DIExpression()) #19, !dbg !4321
  %5 = icmp eq i8* %4, null, !dbg !4332
  br i1 %5, label %6, label %9, !dbg !4333

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4334
  br i1 %7, label %19, label %8, !dbg !4337

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4338, !tbaa !1272
  br label %19, !dbg !4339

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #22, !dbg !4340
  call void @llvm.dbg.value(metadata i64 %10, metadata !4318, metadata !DIExpression()) #19, !dbg !4341
  %11 = icmp ult i64 %10, %2, !dbg !4342
  br i1 %11, label %12, label %14, !dbg !4344

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4345
  call void @llvm.dbg.value(metadata i8* %1, metadata !4347, metadata !DIExpression()) #19, !dbg !4352
  call void @llvm.dbg.value(metadata i8* %4, metadata !4350, metadata !DIExpression()) #19, !dbg !4352
  call void @llvm.dbg.value(metadata i64 %13, metadata !4351, metadata !DIExpression()) #19, !dbg !4352
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #19, !dbg !4354
  br label %19, !dbg !4355

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4356
  br i1 %15, label %19, label %16, !dbg !4359

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4360
  call void @llvm.dbg.value(metadata i8* %1, metadata !4347, metadata !DIExpression()) #19, !dbg !4362
  call void @llvm.dbg.value(metadata i8* %4, metadata !4350, metadata !DIExpression()) #19, !dbg !4362
  call void @llvm.dbg.value(metadata i64 %17, metadata !4351, metadata !DIExpression()) #19, !dbg !4362
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #19, !dbg !4364
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4365
  store i8 0, i8* %18, align 1, !dbg !4366, !tbaa !1272
  br label %19, !dbg !4367

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !4368
  ret i32 %20, !dbg !4369
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !4370 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4372, metadata !DIExpression()), !dbg !4373
  call void @llvm.dbg.value(metadata i32 %0, metadata !4323, metadata !DIExpression()) #19, !dbg !4374
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #19, !dbg !4376
  call void @llvm.dbg.value(metadata i8* %2, metadata !4328, metadata !DIExpression()) #19, !dbg !4374
  ret i8* %2, !dbg !4377
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !4378 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4384, metadata !DIExpression()), !dbg !4388
  call void @llvm.dbg.value(metadata i32 0, metadata !4385, metadata !DIExpression()), !dbg !4388
  call void @llvm.dbg.value(metadata i32 0, metadata !4387, metadata !DIExpression()), !dbg !4388
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #19, !dbg !4389
  call void @llvm.dbg.value(metadata i32 %2, metadata !4386, metadata !DIExpression()), !dbg !4388
  %3 = icmp slt i32 %2, 0, !dbg !4390
  br i1 %3, label %4, label %6, !dbg !4392

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4393
  br label %24, !dbg !4394

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #19, !dbg !4395
  %8 = icmp eq i32 %7, 0, !dbg !4395
  br i1 %8, label %13, label %9, !dbg !4397

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #19, !dbg !4398
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #19, !dbg !4399
  %12 = icmp eq i64 %11, -1, !dbg !4400
  br i1 %12, label %16, label %13, !dbg !4401

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #19, !dbg !4402
  %15 = icmp eq i32 %14, 0, !dbg !4402
  br i1 %15, label %16, label %18, !dbg !4403

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4385, metadata !DIExpression()), !dbg !4388
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4404
  call void @llvm.dbg.value(metadata i32 %21, metadata !4387, metadata !DIExpression()), !dbg !4388
  br label %24, !dbg !4405

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #25, !dbg !4406
  %20 = load i32, i32* %19, align 4, !dbg !4406, !tbaa !1265
  call void @llvm.dbg.value(metadata i32 %20, metadata !4385, metadata !DIExpression()), !dbg !4388
  call void @llvm.dbg.value(metadata i32 %20, metadata !4385, metadata !DIExpression()), !dbg !4388
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4404
  call void @llvm.dbg.value(metadata i32 %21, metadata !4387, metadata !DIExpression()), !dbg !4388
  %22 = icmp eq i32 %20, 0, !dbg !4407
  br i1 %22, label %24, label %23, !dbg !4405

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4409, !tbaa !1265
  call void @llvm.dbg.value(metadata i32 -1, metadata !4387, metadata !DIExpression()), !dbg !4388
  br label %24, !dbg !4411

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4388
  ret i32 %25, !dbg !4412
}

; Function Attrs: nofree nounwind
declare !dbg !1016 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1051 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1052 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4413 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4419, metadata !DIExpression()), !dbg !4420
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4421
  br i1 %2, label %6, label %3, !dbg !4423

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #19, !dbg !4424
  %5 = icmp eq i32 %4, 0, !dbg !4424
  br i1 %5, label %6, label %8, !dbg !4425

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4426
  br label %17, !dbg !4427

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4428, metadata !DIExpression()) #19, !dbg !4433
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4435
  %10 = load i32, i32* %9, align 8, !dbg !4435, !tbaa !4253
  %11 = and i32 %10, 256, !dbg !4437
  %12 = icmp eq i32 %11, 0, !dbg !4437
  br i1 %12, label %15, label %13, !dbg !4438

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #19, !dbg !4439
  br label %15, !dbg !4439

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4440
  br label %17, !dbg !4441

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4420
  ret i32 %18, !dbg !4442
}

; Function Attrs: nofree nounwind
declare !dbg !1060 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4443 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4450, metadata !DIExpression()), !dbg !4456
  call void @llvm.dbg.value(metadata i64 %1, metadata !4451, metadata !DIExpression()), !dbg !4456
  call void @llvm.dbg.value(metadata i32 %2, metadata !4452, metadata !DIExpression()), !dbg !4456
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4457
  %5 = load i8*, i8** %4, align 8, !dbg !4457, !tbaa !4458
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4459
  %7 = load i8*, i8** %6, align 8, !dbg !4459, !tbaa !4460
  %8 = icmp eq i8* %5, %7, !dbg !4461
  br i1 %8, label %9, label %28, !dbg !4462

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4463
  %11 = load i8*, i8** %10, align 8, !dbg !4463, !tbaa !4464
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4465
  %13 = load i8*, i8** %12, align 8, !dbg !4465, !tbaa !4466
  %14 = icmp eq i8* %11, %13, !dbg !4467
  br i1 %14, label %15, label %28, !dbg !4468

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4469
  %17 = load i8*, i8** %16, align 8, !dbg !4469, !tbaa !4470
  %18 = icmp eq i8* %17, null, !dbg !4471
  br i1 %18, label %19, label %28, !dbg !4472

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #19, !dbg !4473
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #19, !dbg !4474
  call void @llvm.dbg.value(metadata i64 %21, metadata !4453, metadata !DIExpression()), !dbg !4475
  %22 = icmp eq i64 %21, -1, !dbg !4476
  br i1 %22, label %30, label %23, !dbg !4478

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4479
  %25 = load i32, i32* %24, align 8, !dbg !4480, !tbaa !4253
  %26 = and i32 %25, -17, !dbg !4480
  store i32 %26, i32* %24, align 8, !dbg !4480, !tbaa !4253
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4481
  store i64 %21, i64* %27, align 8, !dbg !4482, !tbaa !4483
  br label %30, !dbg !4484

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4485
  br label %30, !dbg !4486

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4456
  ret i32 %31, !dbg !4487
}

; Function Attrs: nofree nounwind
declare !dbg !1136 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nofree nounwind readonly }
attributes #10 = { nofree nounwind }
attributes #11 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nofree "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nofree norecurse nounwind sspstrong uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { norecurse nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { nofree norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { nounwind }
attributes #20 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #21 = { nofree nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #22 = { nounwind readonly }
attributes #23 = { noreturn nounwind }
attributes #24 = { noreturn }
attributes #25 = { nounwind readnone }
attributes #26 = { cold }

!llvm.dbg.cu = !{!2, !224, !476, !229, !275, !281, !322, !481, !434, !523, !544, !547, !550, !552, !442, !571, !610, !617, !1010, !1013, !1057, !1098}
!llvm.ident = !{!1139, !1139, !1139, !1139, !1139, !1139, !1139, !1139, !1139, !1139, !1139, !1139, !1139, !1139, !1139, !1139, !1139, !1139, !1139, !1139, !1139, !1139}
!llvm.module.flags = !{!1140, !1141, !1142, !1143, !1144}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "locale_ok", scope: !2, file: !3, line: 51, type: !145, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !177, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/seq.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
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
!21 = !{!22, !32, !93, !97, !101, !104, !107, !7, !114, !26, !83, !129, !133, !137, !141, !153, !155, !156, !159, !162, !85, !28, !165, !170, !171, !174, !30, !63}
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
!129 = !DISubprogram(name: "version_etc", scope: !130, file: !130, line: 69, type: !131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!130 = !DIFile(filename: "./lib/version-etc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!131 = !DISubroutineType(types: !132)
!132 = !{null, !36, !28, !28, !28, null}
!133 = !DISubprogram(name: "error", scope: !134, file: !134, line: 52, type: !135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!134 = !DIFile(filename: "./lib/error.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!135 = !DISubroutineType(types: !136)
!136 = !{null, !30, !30, !28, null}
!137 = !DISubprogram(name: "quote", scope: !138, file: !138, line: 44, type: !139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!138 = !DIFile(filename: "./lib/quote.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!139 = !DISubroutineType(types: !140)
!140 = !{!28, !28}
!141 = !DISubprogram(name: "xstrtold", scope: !142, file: !142, line: 28, type: !143, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!142 = !DIFile(filename: "./lib/xstrtod.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!143 = !DISubroutineType(types: !144)
!144 = !{!145, !28, !146, !147, !149}
!145 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DISubroutineType(types: !151)
!151 = !{!148, !28, !152}
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!153 = !DISubprogram(name: "xalloc_die", scope: !154, file: !154, line: 51, type: !112, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !31)
!154 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!155 = !DISubprogram(name: "xstrdup", scope: !154, file: !154, line: 64, type: !105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!156 = !DISubprogram(name: "free", scope: !108, file: !108, line: 565, type: !157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!157 = !DISubroutineType(types: !158)
!158 = !{null, !83}
!159 = !DISubprogram(name: "xmalloc", scope: !154, file: !154, line: 53, type: !160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!160 = !DISubroutineType(types: !161)
!161 = !{!83, !87}
!162 = !DISubprogram(name: "xrealloc", scope: !154, file: !154, line: 59, type: !163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!163 = !DISubroutineType(types: !164)
!164 = !{!83, !83, !87}
!165 = !DISubprogram(name: "fwrite_unlocked", scope: !33, file: !33, line: 675, type: !166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!166 = !DISubroutineType(types: !167)
!167 = !{!87, !168, !87, !87, !36}
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!170 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!171 = !DISubprogram(name: "clearerr_unlocked", scope: !33, file: !33, line: 765, type: !172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!172 = !DISubroutineType(types: !173)
!173 = !{null, !36}
!174 = !DISubprogram(name: "quote_n", scope: !138, file: !138, line: 40, type: !175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!175 = !DISubroutineType(types: !176)
!176 = !{!28, !30, !28}
!177 = !{!0, !178, !180, !182, !187, !192}
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(name: "equal_width", scope: !2, file: !3, line: 54, type: !145, isLocal: true, isDefinition: true)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(name: "separator", scope: !2, file: !3, line: 57, type: !28, isLocal: true, isDefinition: true)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 63, type: !184, isLocal: true, isDefinition: true)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 1536, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 6)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(name: "terminator", scope: !2, file: !3, line: 61, type: !189, isLocal: true, isDefinition: true)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 16, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 2)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(name: "format_buf", scope: !194, file: !3, line: 374, type: !218, isLocal: true, isDefinition: true)
!194 = distinct !DISubprogram(name: "get_default_format", scope: !3, file: !3, line: 372, type: !195, scopeLine: 373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !203)
!195 = !DISubroutineType(types: !196)
!196 = !{!28, !197, !197, !197}
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "operand", file: !3, line: 135, baseType: !198)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "operand", file: !3, line: 120, size: 256, elements: !199)
!199 = !{!200, !201, !202}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !198, file: !3, line: 123, baseType: !148, size: 128)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !198, file: !3, line: 129, baseType: !85, size: 64, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !198, file: !3, line: 133, baseType: !30, size: 32, offset: 192)
!203 = !{!204, !205, !206, !207, !208, !213, !214, !215}
!204 = !DILocalVariable(name: "first", arg: 1, scope: !194, file: !3, line: 372, type: !197)
!205 = !DILocalVariable(name: "step", arg: 2, scope: !194, file: !3, line: 372, type: !197)
!206 = !DILocalVariable(name: "last", arg: 3, scope: !194, file: !3, line: 372, type: !197)
!207 = !DILocalVariable(name: "prec", scope: !194, file: !3, line: 376, type: !30)
!208 = !DILocalVariable(name: "first_width", scope: !209, file: !3, line: 383, type: !85)
!209 = distinct !DILexicalBlock(scope: !210, file: !3, line: 381, column: 9)
!210 = distinct !DILexicalBlock(scope: !211, file: !3, line: 380, column: 11)
!211 = distinct !DILexicalBlock(scope: !212, file: !3, line: 379, column: 5)
!212 = distinct !DILexicalBlock(scope: !194, file: !3, line: 378, column: 7)
!213 = !DILocalVariable(name: "last_width", scope: !209, file: !3, line: 385, type: !85)
!214 = !DILocalVariable(name: "width", scope: !209, file: !3, line: 392, type: !85)
!215 = !DILocalVariable(name: "w", scope: !216, file: !3, line: 395, type: !30)
!216 = distinct !DILexicalBlock(scope: !217, file: !3, line: 394, column: 13)
!217 = distinct !DILexicalBlock(scope: !209, file: !3, line: 393, column: 15)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 224, elements: !219)
!219 = !{!220}
!220 = !DISubrange(count: 28)
!221 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(name: "Version", scope: !224, file: !225, line: 2, type: !28, isLocal: false, isDefinition: true)
!224 = distinct !DICompileUnit(language: DW_LANG_C99, file: !225, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, globals: !226, splitDebugInlining: false, nameTableKind: None)
!225 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!226 = !{!222}
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(name: "file_name", scope: !229, file: !230, line: 46, type: !28, isLocal: true, isDefinition: true)
!229 = distinct !DICompileUnit(language: DW_LANG_C99, file: !230, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !231, globals: !270, splitDebugInlining: false, nameTableKind: None)
!230 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!231 = !{!232, !22, !268, !133}
!232 = !DISubprogram(name: "close_stream", scope: !233, file: !233, line: 2, type: !234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!233 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!234 = !DISubroutineType(types: !235)
!235 = !{!30, !236}
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !38, line: 49, size: 1728, elements: !238)
!238 = !{!239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !237, file: !38, line: 51, baseType: !30, size: 32)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !237, file: !38, line: 54, baseType: !26, size: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !237, file: !38, line: 55, baseType: !26, size: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !237, file: !38, line: 56, baseType: !26, size: 64, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !237, file: !38, line: 57, baseType: !26, size: 64, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !237, file: !38, line: 58, baseType: !26, size: 64, offset: 320)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !237, file: !38, line: 59, baseType: !26, size: 64, offset: 384)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !237, file: !38, line: 60, baseType: !26, size: 64, offset: 448)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !237, file: !38, line: 61, baseType: !26, size: 64, offset: 512)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !237, file: !38, line: 64, baseType: !26, size: 64, offset: 576)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !237, file: !38, line: 65, baseType: !26, size: 64, offset: 640)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !237, file: !38, line: 66, baseType: !26, size: 64, offset: 704)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !237, file: !38, line: 68, baseType: !53, size: 64, offset: 768)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !237, file: !38, line: 70, baseType: !236, size: 64, offset: 832)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !237, file: !38, line: 72, baseType: !30, size: 32, offset: 896)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !237, file: !38, line: 73, baseType: !30, size: 32, offset: 928)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !237, file: !38, line: 74, baseType: !59, size: 64, offset: 960)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !237, file: !38, line: 77, baseType: !63, size: 16, offset: 1024)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !237, file: !38, line: 78, baseType: !65, size: 8, offset: 1040)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !237, file: !38, line: 79, baseType: !67, size: 8, offset: 1048)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !237, file: !38, line: 81, baseType: !71, size: 64, offset: 1088)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !237, file: !38, line: 89, baseType: !74, size: 64, offset: 1152)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !237, file: !38, line: 91, baseType: !76, size: 64, offset: 1216)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !237, file: !38, line: 92, baseType: !79, size: 64, offset: 1280)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !237, file: !38, line: 93, baseType: !236, size: 64, offset: 1344)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !237, file: !38, line: 94, baseType: !83, size: 64, offset: 1408)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !237, file: !38, line: 95, baseType: !85, size: 64, offset: 1472)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !237, file: !38, line: 96, baseType: !30, size: 32, offset: 1536)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !237, file: !38, line: 98, baseType: !90, size: 160, offset: 1568)
!268 = !DISubprogram(name: "quotearg_colon", scope: !269, file: !269, line: 391, type: !105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!269 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!270 = !{!227, !271}
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !229, file: !230, line: 56, type: !145, isLocal: true, isDefinition: true)
!273 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression())
!274 = distinct !DIGlobalVariable(name: "exit_failure", scope: !275, file: !276, line: 24, type: !278, isLocal: false, isDefinition: true)
!275 = distinct !DICompileUnit(language: DW_LANG_C99, file: !276, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, globals: !277, splitDebugInlining: false, nameTableKind: None)
!276 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!277 = !{!273}
!278 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !30)
!279 = !DIGlobalVariableExpression(var: !280, expr: !DIExpression())
!280 = distinct !DIGlobalVariable(name: "program_name", scope: !281, file: !282, line: 33, type: !28, isLocal: false, isDefinition: true)
!281 = distinct !DICompileUnit(language: DW_LANG_C99, file: !282, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !283, globals: !319, splitDebugInlining: false, nameTableKind: None)
!282 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!283 = !{!83, !284, !26}
!284 = !DISubprogram(name: "fputs", scope: !33, file: !33, line: 626, type: !285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!285 = !DISubroutineType(types: !286)
!286 = !{!30, !28, !287}
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !38, line: 49, size: 1728, elements: !289)
!289 = !{!290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !288, file: !38, line: 51, baseType: !30, size: 32)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !288, file: !38, line: 54, baseType: !26, size: 64, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !288, file: !38, line: 55, baseType: !26, size: 64, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !288, file: !38, line: 56, baseType: !26, size: 64, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !288, file: !38, line: 57, baseType: !26, size: 64, offset: 256)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !288, file: !38, line: 58, baseType: !26, size: 64, offset: 320)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !288, file: !38, line: 59, baseType: !26, size: 64, offset: 384)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !288, file: !38, line: 60, baseType: !26, size: 64, offset: 448)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !288, file: !38, line: 61, baseType: !26, size: 64, offset: 512)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !288, file: !38, line: 64, baseType: !26, size: 64, offset: 576)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !288, file: !38, line: 65, baseType: !26, size: 64, offset: 640)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !288, file: !38, line: 66, baseType: !26, size: 64, offset: 704)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !288, file: !38, line: 68, baseType: !53, size: 64, offset: 768)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !288, file: !38, line: 70, baseType: !287, size: 64, offset: 832)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !288, file: !38, line: 72, baseType: !30, size: 32, offset: 896)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !288, file: !38, line: 73, baseType: !30, size: 32, offset: 928)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !288, file: !38, line: 74, baseType: !59, size: 64, offset: 960)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !288, file: !38, line: 77, baseType: !63, size: 16, offset: 1024)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !288, file: !38, line: 78, baseType: !65, size: 8, offset: 1040)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !288, file: !38, line: 79, baseType: !67, size: 8, offset: 1048)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !288, file: !38, line: 81, baseType: !71, size: 64, offset: 1088)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !288, file: !38, line: 89, baseType: !74, size: 64, offset: 1152)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !288, file: !38, line: 91, baseType: !76, size: 64, offset: 1216)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !288, file: !38, line: 92, baseType: !79, size: 64, offset: 1280)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !288, file: !38, line: 93, baseType: !287, size: 64, offset: 1344)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !288, file: !38, line: 94, baseType: !83, size: 64, offset: 1408)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !288, file: !38, line: 95, baseType: !85, size: 64, offset: 1472)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !288, file: !38, line: 96, baseType: !30, size: 32, offset: 1536)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !288, file: !38, line: 98, baseType: !90, size: 160, offset: 1568)
!319 = !{!279}
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !322, file: !323, line: 85, type: !428, isLocal: false, isDefinition: true)
!322 = distinct !DICompileUnit(language: DW_LANG_C99, file: !323, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !324, retainedTypes: !343, globals: !401, splitDebugInlining: false, nameTableKind: None)
!323 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!324 = !{!325, !338, !5}
!325 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !269, line: 32, baseType: !7, size: 32, elements: !326)
!326 = !{!327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337}
!327 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!328 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!329 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!330 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!331 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!332 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!333 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!334 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!335 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!336 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!337 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!338 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !269, line: 242, baseType: !7, size: 32, elements: !339)
!339 = !{!340, !341, !342}
!340 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!341 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!342 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!343 = !{!344, !347, !156, !363, !30, !63, !366, !85, !383, !387, !22, !393, !397, !26, !159, !153, !162}
!344 = !DISubprogram(name: "xmemdup", scope: !154, file: !154, line: 62, type: !345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!345 = !DISubroutineType(types: !346)
!346 = !{!83, !168, !87}
!347 = !DISubprogram(name: "quotearg_alloc_mem", scope: !269, file: !269, line: 342, type: !348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!348 = !DISubroutineType(types: !349)
!349 = !{!26, !28, !87, !350, !351}
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !353)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !323, line: 65, size: 448, elements: !354)
!354 = !{!355, !356, !357, !361, !362}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !353, file: !323, line: 68, baseType: !325, size: 32)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !353, file: !323, line: 71, baseType: !30, size: 32, offset: 32)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !353, file: !323, line: 75, baseType: !358, size: 256, offset: 64)
!358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !359)
!359 = !{!360}
!360 = !DISubrange(count: 8)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !353, file: !323, line: 78, baseType: !28, size: 64, offset: 320)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !353, file: !323, line: 81, baseType: !28, size: 64, offset: 384)
!363 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !269, file: !269, line: 408, type: !364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!364 = !DISubroutineType(types: !365)
!365 = !{!26, !30, !28, !28, !28, !87}
!366 = !DISubprogram(name: "rpl_mbrtowc", scope: !367, file: !367, line: 717, type: !368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!367 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!368 = !DISubroutineType(types: !369)
!369 = !{!87, !127, !28, !87, !370}
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !372, line: 13, size: 64, elements: !373)
!372 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!373 = !{!374, !375}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !371, file: !372, line: 15, baseType: !30, size: 32)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !371, file: !372, line: 20, baseType: !376, size: 32, offset: 32)
!376 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !371, file: !372, line: 16, size: 32, elements: !377)
!377 = !{!378, !379}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !376, file: !372, line: 18, baseType: !7, size: 32)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !376, file: !372, line: 19, baseType: !380, size: 32)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 32, elements: !381)
!381 = !{!382}
!382 = !DISubrange(count: 4)
!383 = !DISubprogram(name: "iswprint", scope: !384, file: !384, line: 120, type: !385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!384 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!385 = !DISubroutineType(types: !386)
!386 = !{!30, !7}
!387 = !DISubprogram(name: "mbsinit", scope: !388, file: !388, line: 292, type: !389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!388 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!389 = !DISubroutineType(types: !390)
!390 = !{!30, !391}
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !371)
!393 = !DISubprogram(name: "locale_charset", scope: !394, file: !394, line: 35, type: !395, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!394 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!395 = !DISubroutineType(types: !396)
!396 = !{!28}
!397 = !DISubprogram(name: "c_strcasecmp", scope: !398, file: !398, line: 42, type: !399, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!398 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!399 = !DISubroutineType(types: !400)
!400 = !{!30, !28, !28}
!401 = !{!320, !402, !408, !410, !412, !417, !424, !426}
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !322, file: !323, line: 101, type: !404, isLocal: false, isDefinition: true)
!404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 320, elements: !406)
!405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !325)
!406 = !{!407}
!407 = !DISubrange(count: 10)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !322, file: !323, line: 1052, type: !353, isLocal: false, isDefinition: true)
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !322, file: !323, line: 116, type: !353, isLocal: true, isDefinition: true)
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(name: "slot0", scope: !322, file: !323, line: 842, type: !414, isLocal: true, isDefinition: true)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 2048, elements: !415)
!415 = !{!416}
!416 = !DISubrange(count: 256)
!417 = !DIGlobalVariableExpression(var: !418, expr: !DIExpression())
!418 = distinct !DIGlobalVariable(name: "slotvec", scope: !322, file: !323, line: 845, type: !419, isLocal: true, isDefinition: true)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !323, line: 834, size: 128, elements: !421)
!421 = !{!422, !423}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !420, file: !323, line: 836, baseType: !85, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !420, file: !323, line: 837, baseType: !26, size: 64, offset: 64)
!424 = !DIGlobalVariableExpression(var: !425, expr: !DIExpression())
!425 = distinct !DIGlobalVariable(name: "nslots", scope: !322, file: !323, line: 843, type: !30, isLocal: true, isDefinition: true)
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(name: "slotvec0", scope: !322, file: !323, line: 844, type: !420, isLocal: true, isDefinition: true)
!428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 704, elements: !430)
!429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!430 = !{!431}
!431 = !DISubrange(count: 11)
!432 = !DIGlobalVariableExpression(var: !433, expr: !DIExpression())
!433 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !434, file: !435, line: 26, type: !437, isLocal: false, isDefinition: true)
!434 = distinct !DICompileUnit(language: DW_LANG_C99, file: !435, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, globals: !436, splitDebugInlining: false, nameTableKind: None)
!435 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!436 = !{!432}
!437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 376, elements: !438)
!438 = !{!439}
!439 = !DISubrange(count: 47)
!440 = !DIGlobalVariableExpression(var: !441, expr: !DIExpression())
!441 = distinct !DIGlobalVariable(name: "c_locale_cache", scope: !442, file: !474, line: 50, type: !475, isLocal: true, isDefinition: true)
!442 = distinct !DICompileUnit(language: DW_LANG_C99, file: !443, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !444, globals: !473, splitDebugInlining: false, nameTableKind: None)
!443 = !DIFile(filename: "lib/c-strtold.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!444 = !{!26, !445, !467, !470}
!445 = !DISubprogram(name: "uselocale", scope: !98, file: !98, line: 187, type: !446, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!446 = !DISubroutineType(types: !447)
!447 = !{!448, !448}
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_struct", file: !450, line: 28, size: 1856, elements: !451)
!450 = !DIFile(filename: "/usr/include/bits/types/__locale_t.h", directory: "")
!451 = !{!452, !458, !461, !464, !465}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "__locales", scope: !449, file: !450, line: 31, baseType: !453, size: 832)
!453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !454, size: 832, elements: !456)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_data", file: !450, line: 31, flags: DIFlagFwdDecl)
!456 = !{!457}
!457 = !DISubrange(count: 13)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_b", scope: !449, file: !450, line: 34, baseType: !459, size: 64, offset: 832)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_tolower", scope: !449, file: !450, line: 35, baseType: !462, size: 64, offset: 896)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_toupper", scope: !449, file: !450, line: 36, baseType: !462, size: 64, offset: 960)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "__names", scope: !449, file: !450, line: 39, baseType: !466, size: 832, offset: 1024)
!466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 832, elements: !456)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !468, line: 24, baseType: !469)
!468 = !DIFile(filename: "/usr/include/bits/types/locale_t.h", directory: "")
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "__locale_t", file: !450, line: 42, baseType: !448)
!470 = !DISubprogram(name: "newlocale", scope: !98, file: !98, line: 141, type: !471, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!471 = !DISubroutineType(types: !472)
!472 = !{!448, !30, !28, !448}
!473 = !{!440}
!474 = !DIFile(filename: "./lib/c-strtod.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!475 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !467)
!476 = distinct !DICompileUnit(language: DW_LANG_C99, file: !477, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !478, splitDebugInlining: false, nameTableKind: None)
!477 = !DIFile(filename: "lib/cl-strtold.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!478 = !{!479}
!479 = !DISubprogram(name: "c_strtold", scope: !480, file: !480, line: 41, type: !150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!480 = !DIFile(filename: "./lib/c-strtod.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!481 = distinct !DICompileUnit(language: DW_LANG_C99, file: !482, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !483, retainedTypes: !487, splitDebugInlining: false, nameTableKind: None)
!482 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!483 = !{!484}
!484 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !482, line: 40, baseType: !7, size: 32, elements: !485)
!485 = !{!486}
!486 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!487 = !{!22, !488, !83}
!488 = !DISubprogram(name: "fputs_unlocked", scope: !33, file: !33, line: 662, type: !489, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!489 = !DISubroutineType(types: !490)
!490 = !{!30, !28, !491}
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !38, line: 49, size: 1728, elements: !493)
!493 = !{!494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !492, file: !38, line: 51, baseType: !30, size: 32)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !492, file: !38, line: 54, baseType: !26, size: 64, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !492, file: !38, line: 55, baseType: !26, size: 64, offset: 128)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !492, file: !38, line: 56, baseType: !26, size: 64, offset: 192)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !492, file: !38, line: 57, baseType: !26, size: 64, offset: 256)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !492, file: !38, line: 58, baseType: !26, size: 64, offset: 320)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !492, file: !38, line: 59, baseType: !26, size: 64, offset: 384)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !492, file: !38, line: 60, baseType: !26, size: 64, offset: 448)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !492, file: !38, line: 61, baseType: !26, size: 64, offset: 512)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !492, file: !38, line: 64, baseType: !26, size: 64, offset: 576)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !492, file: !38, line: 65, baseType: !26, size: 64, offset: 640)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !492, file: !38, line: 66, baseType: !26, size: 64, offset: 704)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !492, file: !38, line: 68, baseType: !53, size: 64, offset: 768)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !492, file: !38, line: 70, baseType: !491, size: 64, offset: 832)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !492, file: !38, line: 72, baseType: !30, size: 32, offset: 896)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !492, file: !38, line: 73, baseType: !30, size: 32, offset: 928)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !492, file: !38, line: 74, baseType: !59, size: 64, offset: 960)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !492, file: !38, line: 77, baseType: !63, size: 16, offset: 1024)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !492, file: !38, line: 78, baseType: !65, size: 8, offset: 1040)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !492, file: !38, line: 79, baseType: !67, size: 8, offset: 1048)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !492, file: !38, line: 81, baseType: !71, size: 64, offset: 1088)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !492, file: !38, line: 89, baseType: !74, size: 64, offset: 1152)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !492, file: !38, line: 91, baseType: !76, size: 64, offset: 1216)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !492, file: !38, line: 92, baseType: !79, size: 64, offset: 1280)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !492, file: !38, line: 93, baseType: !491, size: 64, offset: 1344)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !492, file: !38, line: 94, baseType: !83, size: 64, offset: 1408)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !492, file: !38, line: 95, baseType: !85, size: 64, offset: 1472)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !492, file: !38, line: 96, baseType: !30, size: 32, offset: 1536)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !492, file: !38, line: 98, baseType: !90, size: 160, offset: 1568)
!523 = distinct !DICompileUnit(language: DW_LANG_C99, file: !524, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !525, retainedTypes: !538, splitDebugInlining: false, nameTableKind: None)
!524 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!525 = !{!526}
!526 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !527, file: !154, line: 186, baseType: !7, size: 32, elements: !536)
!527 = distinct !DISubprogram(name: "x2nrealloc", scope: !154, file: !154, line: 174, type: !528, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !523, retainedNodes: !531)
!528 = !DISubroutineType(types: !529)
!529 = !{!83, !83, !530, !85}
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!531 = !{!532, !533, !534, !535}
!532 = !DILocalVariable(name: "p", arg: 1, scope: !527, file: !154, line: 174, type: !83)
!533 = !DILocalVariable(name: "pn", arg: 2, scope: !527, file: !154, line: 174, type: !530)
!534 = !DILocalVariable(name: "s", arg: 3, scope: !527, file: !154, line: 174, type: !85)
!535 = !DILocalVariable(name: "n", scope: !527, file: !154, line: 176, type: !85)
!536 = !{!537}
!537 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!538 = !{!85, !153, !159, !162, !26, !156, !83, !539, !542}
!539 = !DISubprogram(name: "xcalloc", scope: !154, file: !154, line: 57, type: !540, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!540 = !DISubroutineType(types: !541)
!541 = !{!83, !87, !87}
!542 = !DISubprogram(name: "rpl_calloc", scope: !543, file: !543, line: 688, type: !540, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!543 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!544 = distinct !DICompileUnit(language: DW_LANG_C99, file: !545, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !546, splitDebugInlining: false, nameTableKind: None)
!545 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!546 = !{!22, !133}
!547 = distinct !DICompileUnit(language: DW_LANG_C99, file: !548, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !549, splitDebugInlining: false, nameTableKind: None)
!548 = !DIFile(filename: "lib/xstrtold.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!549 = !{!83}
!550 = distinct !DICompileUnit(language: DW_LANG_C99, file: !551, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !549, splitDebugInlining: false, nameTableKind: None)
!551 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!552 = distinct !DICompileUnit(language: DW_LANG_C99, file: !553, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !554, splitDebugInlining: false, nameTableKind: None)
!553 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!554 = !{!555, !85, !567}
!555 = !DISubprogram(name: "mbrtowc", scope: !388, file: !388, line: 296, type: !556, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!556 = !DISubroutineType(types: !557)
!557 = !{!87, !127, !28, !87, !558}
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !372, line: 13, size: 64, elements: !560)
!560 = !{!561, !562}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !559, file: !372, line: 15, baseType: !30, size: 32)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !559, file: !372, line: 20, baseType: !563, size: 32, offset: 32)
!563 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !559, file: !372, line: 16, size: 32, elements: !564)
!564 = !{!565, !566}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !563, file: !372, line: 18, baseType: !7, size: 32)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !563, file: !372, line: 19, baseType: !380, size: 32)
!567 = !DISubprogram(name: "hard_locale", scope: !568, file: !568, line: 26, type: !569, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!568 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!569 = !DISubroutineType(types: !570)
!570 = !{!145, !30}
!571 = distinct !DICompileUnit(language: DW_LANG_C99, file: !572, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !573, splitDebugInlining: false, nameTableKind: None)
!572 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!573 = !{!574}
!574 = !DISubprogram(name: "rpl_fclose", scope: !575, file: !575, line: 672, type: !576, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!575 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!576 = !DISubroutineType(types: !577)
!577 = !{!30, !578}
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !38, line: 49, size: 1728, elements: !580)
!580 = !{!581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !579, file: !38, line: 51, baseType: !30, size: 32)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !579, file: !38, line: 54, baseType: !26, size: 64, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !579, file: !38, line: 55, baseType: !26, size: 64, offset: 128)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !579, file: !38, line: 56, baseType: !26, size: 64, offset: 192)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !579, file: !38, line: 57, baseType: !26, size: 64, offset: 256)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !579, file: !38, line: 58, baseType: !26, size: 64, offset: 320)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !579, file: !38, line: 59, baseType: !26, size: 64, offset: 384)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !579, file: !38, line: 60, baseType: !26, size: 64, offset: 448)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !579, file: !38, line: 61, baseType: !26, size: 64, offset: 512)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !579, file: !38, line: 64, baseType: !26, size: 64, offset: 576)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !579, file: !38, line: 65, baseType: !26, size: 64, offset: 640)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !579, file: !38, line: 66, baseType: !26, size: 64, offset: 704)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !579, file: !38, line: 68, baseType: !53, size: 64, offset: 768)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !579, file: !38, line: 70, baseType: !578, size: 64, offset: 832)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !579, file: !38, line: 72, baseType: !30, size: 32, offset: 896)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !579, file: !38, line: 73, baseType: !30, size: 32, offset: 928)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !579, file: !38, line: 74, baseType: !59, size: 64, offset: 960)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !579, file: !38, line: 77, baseType: !63, size: 16, offset: 1024)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !579, file: !38, line: 78, baseType: !65, size: 8, offset: 1040)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !579, file: !38, line: 79, baseType: !67, size: 8, offset: 1048)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !579, file: !38, line: 81, baseType: !71, size: 64, offset: 1088)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !579, file: !38, line: 89, baseType: !74, size: 64, offset: 1152)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !579, file: !38, line: 91, baseType: !76, size: 64, offset: 1216)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !579, file: !38, line: 92, baseType: !79, size: 64, offset: 1280)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !579, file: !38, line: 93, baseType: !578, size: 64, offset: 1344)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !579, file: !38, line: 94, baseType: !83, size: 64, offset: 1408)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !579, file: !38, line: 95, baseType: !85, size: 64, offset: 1472)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !579, file: !38, line: 96, baseType: !30, size: 32, offset: 1536)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !579, file: !38, line: 98, baseType: !90, size: 160, offset: 1568)
!610 = distinct !DICompileUnit(language: DW_LANG_C99, file: !611, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !612, splitDebugInlining: false, nameTableKind: None)
!611 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!612 = !{!613}
!613 = !DISubprogram(name: "setlocale_null_r", scope: !614, file: !614, line: 64, type: !615, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!614 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!615 = !DISubroutineType(types: !616)
!616 = !{!30, !30, !26, !87}
!617 = distinct !DICompileUnit(language: DW_LANG_C99, file: !618, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !619, retainedTypes: !1006, splitDebugInlining: false, nameTableKind: None)
!618 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!619 = !{!620}
!620 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !621, line: 41, baseType: !7, size: 32, elements: !622)
!621 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!622 = !{!623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005}
!623 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!624 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!625 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!626 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!627 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!628 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!629 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!630 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!631 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!632 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!633 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!634 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!635 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!636 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!637 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!638 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!639 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!640 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!641 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!642 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!643 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!644 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!645 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!646 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!647 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!648 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!649 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!650 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!651 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!652 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!653 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!654 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!655 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!656 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!657 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!658 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!659 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!660 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!661 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!662 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!663 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!664 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!665 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!666 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!667 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!668 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!669 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!670 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!671 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!672 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!683 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!684 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!685 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!686 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!687 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!688 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!689 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!690 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!691 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!692 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!693 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!694 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!695 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!696 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!697 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!698 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!699 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!700 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!701 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!702 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!703 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!704 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!705 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!706 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!707 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!708 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!709 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!710 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!711 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!712 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!713 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!714 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!715 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!716 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!717 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!718 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!719 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!720 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!721 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!722 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!723 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!724 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!725 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!726 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!727 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!728 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!729 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!730 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!731 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!732 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!733 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!734 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!735 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!736 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!737 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!738 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!739 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!740 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!741 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!742 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!743 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!744 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!745 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!746 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!747 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!748 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!749 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!750 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!751 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!752 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!753 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!754 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!755 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!756 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!757 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!758 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!759 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!760 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!761 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!762 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!763 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!764 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!765 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!766 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!767 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!768 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!769 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!770 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!771 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!772 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!773 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!774 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!775 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!776 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!777 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!778 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!779 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!780 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!781 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!782 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!783 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!784 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!785 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!786 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!787 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!788 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!789 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!790 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!791 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!792 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!793 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!794 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!795 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!796 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!797 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!798 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!799 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!800 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!801 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!802 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!803 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!804 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!805 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!806 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!807 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!808 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!809 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!810 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!811 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!812 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!813 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!814 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!815 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!816 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!817 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!818 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!819 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!820 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!821 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!822 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!823 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!824 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!825 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!826 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!827 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!828 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!829 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!830 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!831 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!832 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!833 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!834 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!835 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!836 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!837 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!838 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!839 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!840 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!841 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!842 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!843 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!844 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!845 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!846 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!847 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!848 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!849 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!850 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!851 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!852 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!853 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!854 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!855 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!856 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!857 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!858 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!859 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!860 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!861 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!862 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!863 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!864 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!865 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!866 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!867 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!868 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!869 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!870 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!871 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!872 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!873 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!874 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!875 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!876 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!877 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!878 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!879 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!880 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!881 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!882 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!883 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!884 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!885 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!886 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!887 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!888 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!889 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!890 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!891 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!892 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!893 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!894 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!895 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!896 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!897 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!898 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!899 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!900 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!901 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!902 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!903 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!904 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!905 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!906 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!907 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!908 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!909 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!910 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!911 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!912 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!913 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!914 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!915 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!916 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!917 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!918 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!919 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!920 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!921 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!922 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!923 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!924 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!925 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!926 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!927 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!928 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!929 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!930 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!931 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!932 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!933 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!934 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!935 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!936 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!937 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!938 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!939 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!940 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!941 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!942 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!943 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!944 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!945 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!946 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!947 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!948 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!949 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!950 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!951 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!952 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!953 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!954 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!955 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!956 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!957 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!958 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!959 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!960 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!961 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!962 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!963 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!964 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!965 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!966 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!967 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!968 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!969 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!970 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!971 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!972 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!973 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!974 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!975 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!976 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!977 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!978 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!979 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!980 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!981 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!982 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!983 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!984 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!985 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!986 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!987 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!988 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!989 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!990 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!991 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!992 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!993 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!994 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!995 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!996 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!997 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!998 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!999 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!1000 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!1001 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!1002 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!1003 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!1004 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!1005 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!1006 = !{!1007, !83}
!1007 = !DISubprogram(name: "nl_langinfo", scope: !621, file: !621, line: 661, type: !1008, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!26, !30}
!1010 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1011, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !1012, splitDebugInlining: false, nameTableKind: None)
!1011 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1012 = !{!83, !97}
!1013 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1014, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !1015, splitDebugInlining: false, nameTableKind: None)
!1014 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1015 = !{!1016, !1051, !1052, !1056}
!1016 = !DISubprogram(name: "fileno", scope: !33, file: !33, line: 786, type: !1017, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!30, !1019}
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !38, line: 49, size: 1728, elements: !1021)
!1021 = !{!1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1020, file: !38, line: 51, baseType: !30, size: 32)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1020, file: !38, line: 54, baseType: !26, size: 64, offset: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1020, file: !38, line: 55, baseType: !26, size: 64, offset: 128)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1020, file: !38, line: 56, baseType: !26, size: 64, offset: 192)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1020, file: !38, line: 57, baseType: !26, size: 64, offset: 256)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1020, file: !38, line: 58, baseType: !26, size: 64, offset: 320)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1020, file: !38, line: 59, baseType: !26, size: 64, offset: 384)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1020, file: !38, line: 60, baseType: !26, size: 64, offset: 448)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1020, file: !38, line: 61, baseType: !26, size: 64, offset: 512)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1020, file: !38, line: 64, baseType: !26, size: 64, offset: 576)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1020, file: !38, line: 65, baseType: !26, size: 64, offset: 640)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1020, file: !38, line: 66, baseType: !26, size: 64, offset: 704)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1020, file: !38, line: 68, baseType: !53, size: 64, offset: 768)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1020, file: !38, line: 70, baseType: !1019, size: 64, offset: 832)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1020, file: !38, line: 72, baseType: !30, size: 32, offset: 896)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1020, file: !38, line: 73, baseType: !30, size: 32, offset: 928)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1020, file: !38, line: 74, baseType: !59, size: 64, offset: 960)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1020, file: !38, line: 77, baseType: !63, size: 16, offset: 1024)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1020, file: !38, line: 78, baseType: !65, size: 8, offset: 1040)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1020, file: !38, line: 79, baseType: !67, size: 8, offset: 1048)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1020, file: !38, line: 81, baseType: !71, size: 64, offset: 1088)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1020, file: !38, line: 89, baseType: !74, size: 64, offset: 1152)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1020, file: !38, line: 91, baseType: !76, size: 64, offset: 1216)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1020, file: !38, line: 92, baseType: !79, size: 64, offset: 1280)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1020, file: !38, line: 93, baseType: !1019, size: 64, offset: 1344)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1020, file: !38, line: 94, baseType: !83, size: 64, offset: 1408)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1020, file: !38, line: 95, baseType: !85, size: 64, offset: 1472)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1020, file: !38, line: 96, baseType: !30, size: 32, offset: 1536)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1020, file: !38, line: 98, baseType: !90, size: 160, offset: 1568)
!1051 = !DISubprogram(name: "fclose", scope: !33, file: !33, line: 213, type: !1017, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!1052 = !DISubprogram(name: "lseek", scope: !1053, file: !1053, line: 334, type: !1054, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!1053 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!61, !30, !61, !30}
!1056 = !DISubprogram(name: "rpl_fflush", scope: !575, file: !575, line: 718, type: !1017, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!1057 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1058, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !1059, splitDebugInlining: false, nameTableKind: None)
!1058 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1059 = !{!83, !1060, !1095}
!1060 = !DISubprogram(name: "fflush", scope: !33, file: !33, line: 218, type: !1061, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!30, !1063}
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !38, line: 49, size: 1728, elements: !1065)
!1065 = !{!1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1064, file: !38, line: 51, baseType: !30, size: 32)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1064, file: !38, line: 54, baseType: !26, size: 64, offset: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1064, file: !38, line: 55, baseType: !26, size: 64, offset: 128)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1064, file: !38, line: 56, baseType: !26, size: 64, offset: 192)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1064, file: !38, line: 57, baseType: !26, size: 64, offset: 256)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1064, file: !38, line: 58, baseType: !26, size: 64, offset: 320)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1064, file: !38, line: 59, baseType: !26, size: 64, offset: 384)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1064, file: !38, line: 60, baseType: !26, size: 64, offset: 448)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1064, file: !38, line: 61, baseType: !26, size: 64, offset: 512)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1064, file: !38, line: 64, baseType: !26, size: 64, offset: 576)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1064, file: !38, line: 65, baseType: !26, size: 64, offset: 640)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1064, file: !38, line: 66, baseType: !26, size: 64, offset: 704)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1064, file: !38, line: 68, baseType: !53, size: 64, offset: 768)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1064, file: !38, line: 70, baseType: !1063, size: 64, offset: 832)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1064, file: !38, line: 72, baseType: !30, size: 32, offset: 896)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1064, file: !38, line: 73, baseType: !30, size: 32, offset: 928)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1064, file: !38, line: 74, baseType: !59, size: 64, offset: 960)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1064, file: !38, line: 77, baseType: !63, size: 16, offset: 1024)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1064, file: !38, line: 78, baseType: !65, size: 8, offset: 1040)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1064, file: !38, line: 79, baseType: !67, size: 8, offset: 1048)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1064, file: !38, line: 81, baseType: !71, size: 64, offset: 1088)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1064, file: !38, line: 89, baseType: !74, size: 64, offset: 1152)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1064, file: !38, line: 91, baseType: !76, size: 64, offset: 1216)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1064, file: !38, line: 92, baseType: !79, size: 64, offset: 1280)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1064, file: !38, line: 93, baseType: !1063, size: 64, offset: 1344)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1064, file: !38, line: 94, baseType: !83, size: 64, offset: 1408)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1064, file: !38, line: 95, baseType: !85, size: 64, offset: 1472)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1064, file: !38, line: 96, baseType: !30, size: 32, offset: 1536)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1064, file: !38, line: 98, baseType: !90, size: 160, offset: 1568)
!1095 = !DISubprogram(name: "rpl_fseeko", scope: !575, file: !575, line: 1034, type: !1096, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!30, !1063, !61, !30}
!1098 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1099, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !1100, splitDebugInlining: false, nameTableKind: None)
!1099 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1100 = !{!83, !1101, !1052, !1136}
!1101 = !DISubprogram(name: "fileno", scope: !33, file: !33, line: 786, type: !1102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!30, !1104}
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !38, line: 49, size: 1728, elements: !1106)
!1106 = !{!1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1105, file: !38, line: 51, baseType: !30, size: 32)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1105, file: !38, line: 54, baseType: !26, size: 64, offset: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1105, file: !38, line: 55, baseType: !26, size: 64, offset: 128)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1105, file: !38, line: 56, baseType: !26, size: 64, offset: 192)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1105, file: !38, line: 57, baseType: !26, size: 64, offset: 256)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1105, file: !38, line: 58, baseType: !26, size: 64, offset: 320)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1105, file: !38, line: 59, baseType: !26, size: 64, offset: 384)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1105, file: !38, line: 60, baseType: !26, size: 64, offset: 448)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1105, file: !38, line: 61, baseType: !26, size: 64, offset: 512)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1105, file: !38, line: 64, baseType: !26, size: 64, offset: 576)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1105, file: !38, line: 65, baseType: !26, size: 64, offset: 640)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1105, file: !38, line: 66, baseType: !26, size: 64, offset: 704)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1105, file: !38, line: 68, baseType: !53, size: 64, offset: 768)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1105, file: !38, line: 70, baseType: !1104, size: 64, offset: 832)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1105, file: !38, line: 72, baseType: !30, size: 32, offset: 896)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1105, file: !38, line: 73, baseType: !30, size: 32, offset: 928)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1105, file: !38, line: 74, baseType: !59, size: 64, offset: 960)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1105, file: !38, line: 77, baseType: !63, size: 16, offset: 1024)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1105, file: !38, line: 78, baseType: !65, size: 8, offset: 1040)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1105, file: !38, line: 79, baseType: !67, size: 8, offset: 1048)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1105, file: !38, line: 81, baseType: !71, size: 64, offset: 1088)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1105, file: !38, line: 89, baseType: !74, size: 64, offset: 1152)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1105, file: !38, line: 91, baseType: !76, size: 64, offset: 1216)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1105, file: !38, line: 92, baseType: !79, size: 64, offset: 1280)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1105, file: !38, line: 93, baseType: !1104, size: 64, offset: 1344)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1105, file: !38, line: 94, baseType: !83, size: 64, offset: 1408)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1105, file: !38, line: 95, baseType: !85, size: 64, offset: 1472)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1105, file: !38, line: 96, baseType: !30, size: 32, offset: 1536)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1105, file: !38, line: 98, baseType: !90, size: 160, offset: 1568)
!1136 = !DISubprogram(name: "fseeko", scope: !33, file: !33, line: 707, type: !1137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!30, !1104, !61, !30}
!1139 = !{!"clang version 10.0.0 "}
!1140 = !{i32 7, !"Dwarf Version", i32 4}
!1141 = !{i32 2, !"Debug Info Version", i32 3}
!1142 = !{i32 1, !"wchar_size", i32 4}
!1143 = !{i32 7, !"PIC Level", i32 2}
!1144 = !{i32 7, !"PIE Level", i32 2}
!1145 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 74, type: !1146, scopeLine: 75, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1148)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{null, !30}
!1148 = !{!1149}
!1149 = !DILocalVariable(name: "status", arg: 1, scope: !1145, file: !3, line: 74, type: !30)
!1150 = !DILocalVariable(name: "infomap", scope: !1151, file: !1152, line: 636, type: !1164)
!1151 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1152, file: !1152, line: 634, type: !95, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1153)
!1152 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1153 = !{!1154, !1150, !1155, !1156, !1163}
!1154 = !DILocalVariable(name: "program", arg: 1, scope: !1151, file: !1152, line: 634, type: !28)
!1155 = !DILocalVariable(name: "node", scope: !1151, file: !1152, line: 646, type: !28)
!1156 = !DILocalVariable(name: "map_prog", scope: !1151, file: !1152, line: 647, type: !1157)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1159)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1151, file: !1152, line: 636, size: 128, elements: !1160)
!1160 = !{!1161, !1162}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1159, file: !1152, line: 636, baseType: !28, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1159, file: !1152, line: 636, baseType: !28, size: 64, offset: 64)
!1163 = !DILocalVariable(name: "lc_messages", scope: !1151, file: !1152, line: 659, type: !28)
!1164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1158, size: 896, elements: !1165)
!1165 = !{!1166}
!1166 = !DISubrange(count: 7)
!1167 = !DILocation(line: 636, column: 67, scope: !1151, inlinedAt: !1168)
!1168 = distinct !DILocation(line: 114, column: 7, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 79, column: 5)
!1170 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 76, column: 7)
!1171 = !DILocation(line: 0, scope: !1145)
!1172 = !DILocation(line: 76, column: 14, scope: !1170)
!1173 = !DILocation(line: 76, column: 7, scope: !1145)
!1174 = !DILocation(line: 77, column: 5, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 77, column: 5)
!1176 = !{!1177, !1177, i64 0}
!1177 = !{!"any pointer", !1178, i64 0}
!1178 = !{!"omnipotent char", !1179, i64 0}
!1179 = !{!"Simple C/C++ TBAA"}
!1180 = !DILocation(line: 80, column: 7, scope: !1169)
!1181 = !DILocation(line: 85, column: 7, scope: !1169)
!1182 = !DILocation(line: 590, column: 3, scope: !1183, inlinedAt: !1184)
!1183 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !1152, file: !1152, line: 588, type: !112, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !31)
!1184 = distinct !DILocation(line: 89, column: 7, scope: !1169)
!1185 = !DILocation(line: 91, column: 7, scope: !1169)
!1186 = !DILocation(line: 96, column: 7, scope: !1169)
!1187 = !DILocation(line: 97, column: 7, scope: !1169)
!1188 = !DILocation(line: 98, column: 7, scope: !1169)
!1189 = !DILocation(line: 109, column: 7, scope: !1169)
!1190 = !DILocation(line: 0, scope: !1151, inlinedAt: !1168)
!1191 = !DILocation(line: 636, column: 3, scope: !1151, inlinedAt: !1168)
!1192 = !DILocation(line: 647, column: 36, scope: !1151, inlinedAt: !1168)
!1193 = !DILocation(line: 649, column: 3, scope: !1151, inlinedAt: !1168)
!1194 = !DILocation(line: 649, column: 33, scope: !1151, inlinedAt: !1168)
!1195 = !DILocation(line: 650, column: 13, scope: !1151, inlinedAt: !1168)
!1196 = !DILocation(line: 649, column: 20, scope: !1151, inlinedAt: !1168)
!1197 = !{!1198, !1177, i64 0}
!1198 = !{!"infomap", !1177, i64 0, !1177, i64 8}
!1199 = !DILocation(line: 649, column: 10, scope: !1151, inlinedAt: !1168)
!1200 = !DILocation(line: 649, column: 28, scope: !1151, inlinedAt: !1168)
!1201 = distinct !{!1201, !1193, !1195}
!1202 = !DILocation(line: 652, column: 17, scope: !1203, inlinedAt: !1168)
!1203 = distinct !DILexicalBlock(scope: !1151, file: !1152, line: 652, column: 7)
!1204 = !{!1198, !1177, i64 8}
!1205 = !DILocation(line: 652, column: 7, scope: !1203, inlinedAt: !1168)
!1206 = !DILocation(line: 652, column: 7, scope: !1151, inlinedAt: !1168)
!1207 = !DILocation(line: 655, column: 3, scope: !1151, inlinedAt: !1168)
!1208 = !DILocation(line: 659, column: 29, scope: !1151, inlinedAt: !1168)
!1209 = !DILocation(line: 660, column: 7, scope: !1210, inlinedAt: !1168)
!1210 = distinct !DILexicalBlock(scope: !1151, file: !1152, line: 660, column: 7)
!1211 = !DILocation(line: 660, column: 19, scope: !1210, inlinedAt: !1168)
!1212 = !DILocation(line: 660, column: 22, scope: !1210, inlinedAt: !1168)
!1213 = !DILocation(line: 660, column: 7, scope: !1151, inlinedAt: !1168)
!1214 = !DILocation(line: 666, column: 7, scope: !1215, inlinedAt: !1168)
!1215 = distinct !DILexicalBlock(scope: !1210, file: !1152, line: 661, column: 5)
!1216 = !DILocation(line: 668, column: 5, scope: !1215, inlinedAt: !1168)
!1217 = !DILocation(line: 669, column: 3, scope: !1151, inlinedAt: !1168)
!1218 = !DILocation(line: 671, column: 3, scope: !1151, inlinedAt: !1168)
!1219 = !DILocation(line: 673, column: 1, scope: !1151, inlinedAt: !1168)
!1220 = !DILocation(line: 116, column: 3, scope: !1145)
!1221 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 569, type: !1222, scopeLine: 570, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1224)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!30, !30, !152}
!1224 = !{!1225, !1226, !1227, !1228, !1229, !1230, !1231, !1236, !1237, !1238, !1239, !1242, !1243, !1246}
!1225 = !DILocalVariable(name: "argc", arg: 1, scope: !1221, file: !3, line: 569, type: !30)
!1226 = !DILocalVariable(name: "argv", arg: 2, scope: !1221, file: !3, line: 569, type: !152)
!1227 = !DILocalVariable(name: "optc", scope: !1221, file: !3, line: 571, type: !30)
!1228 = !DILocalVariable(name: "first", scope: !1221, file: !3, line: 572, type: !197)
!1229 = !DILocalVariable(name: "step", scope: !1221, file: !3, line: 573, type: !197)
!1230 = !DILocalVariable(name: "last", scope: !1221, file: !3, line: 574, type: !197)
!1231 = !DILocalVariable(name: "layout", scope: !1221, file: !3, line: 575, type: !1232)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "layout", file: !3, line: 138, size: 128, elements: !1233)
!1233 = !{!1234, !1235}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_len", scope: !1232, file: !3, line: 141, baseType: !85, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "suffix_len", scope: !1232, file: !3, line: 142, baseType: !85, size: 64, offset: 64)
!1236 = !DILocalVariable(name: "format_str", scope: !1221, file: !3, line: 578, type: !28)
!1237 = !DILocalVariable(name: "n_args", scope: !1221, file: !3, line: 630, type: !7)
!1238 = !DILocalVariable(name: "fast_step_ok", scope: !1221, file: !3, line: 660, type: !145)
!1239 = !DILocalVariable(name: "s1", scope: !1240, file: !3, line: 673, type: !28)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 672, column: 5)
!1241 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 667, column: 7)
!1242 = !DILocalVariable(name: "s2", scope: !1240, file: !3, line: 674, type: !28)
!1243 = !DILocalVariable(name: "s1", scope: !1244, file: !3, line: 709, type: !26)
!1244 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 708, column: 5)
!1245 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 704, column: 7)
!1246 = !DILocalVariable(name: "s2", scope: !1244, file: !3, line: 710, type: !26)
!1247 = !DILocation(line: 574, column: 11, scope: !1221)
!1248 = !DILocation(line: 0, scope: !1221)
!1249 = !DILocation(line: 573, column: 3, scope: !1221)
!1250 = !DILocation(line: 573, column: 11, scope: !1221)
!1251 = !DILocation(line: 574, column: 3, scope: !1221)
!1252 = !DILocation(line: 581, column: 21, scope: !1221)
!1253 = !DILocation(line: 581, column: 3, scope: !1221)
!1254 = !DILocation(line: 582, column: 17, scope: !1221)
!1255 = !DILocation(line: 582, column: 16, scope: !1221)
!1256 = !DILocation(line: 582, column: 13, scope: !1221)
!1257 = !{!1258, !1258, i64 0}
!1258 = !{!"_Bool", !1178, i64 0}
!1259 = !DILocation(line: 583, column: 3, scope: !1221)
!1260 = !DILocation(line: 584, column: 3, scope: !1221)
!1261 = !DILocation(line: 586, column: 3, scope: !1221)
!1262 = !DILocation(line: 588, column: 15, scope: !1221)
!1263 = !DILocation(line: 589, column: 13, scope: !1221)
!1264 = !DILocation(line: 594, column: 10, scope: !1221)
!1265 = !{!1266, !1266, i64 0}
!1266 = !{!"int", !1178, i64 0}
!1267 = !DILocation(line: 594, column: 17, scope: !1221)
!1268 = !DILocation(line: 594, column: 3, scope: !1221)
!1269 = !DILocation(line: 596, column: 11, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 596, column: 11)
!1271 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 595, column: 5)
!1272 = !{!1178, !1178, i64 0}
!1273 = !DILocation(line: 596, column: 27, scope: !1270)
!1274 = !DILocation(line: 597, column: 11, scope: !1270)
!1275 = !DILocation(line: 597, column: 23, scope: !1270)
!1276 = !DILocation(line: 597, column: 40, scope: !1270)
!1277 = !DILocation(line: 597, column: 47, scope: !1270)
!1278 = !DILocation(line: 597, column: 50, scope: !1270)
!1279 = !DILocation(line: 596, column: 11, scope: !1271)
!1280 = !DILocation(line: 603, column: 14, scope: !1271)
!1281 = !DILocation(line: 604, column: 11, scope: !1271)
!1282 = !DILocation(line: 630, column: 32, scope: !1221)
!1283 = !DILocation(line: 610, column: 24, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 608, column: 9)
!1285 = !DILocation(line: 611, column: 11, scope: !1284)
!1286 = !DILocation(line: 614, column: 23, scope: !1284)
!1287 = !DILocation(line: 614, column: 21, scope: !1284)
!1288 = !DILocation(line: 615, column: 11, scope: !1284)
!1289 = !DILocation(line: 618, column: 23, scope: !1284)
!1290 = !DILocation(line: 619, column: 11, scope: !1284)
!1291 = !DILocation(line: 621, column: 9, scope: !1284)
!1292 = !DILocation(line: 623, column: 9, scope: !1284)
!1293 = !DILocation(line: 626, column: 11, scope: !1284)
!1294 = distinct !{!1294, !1268, !1295}
!1295 = !DILocation(line: 628, column: 5, scope: !1221)
!1296 = !DILocation(line: 578, column: 15, scope: !1221)
!1297 = !DILocation(line: 630, column: 30, scope: !1221)
!1298 = !DILocation(line: 631, column: 14, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 631, column: 7)
!1300 = !DILocation(line: 631, column: 7, scope: !1221)
!1301 = !DILocation(line: 633, column: 20, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1299, file: !3, line: 632, column: 5)
!1303 = !DILocation(line: 633, column: 7, scope: !1302)
!1304 = !DILocation(line: 634, column: 7, scope: !1302)
!1305 = !DILocation(line: 637, column: 9, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 637, column: 7)
!1307 = !DILocation(line: 637, column: 7, scope: !1221)
!1308 = !DILocation(line: 639, column: 20, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1306, file: !3, line: 638, column: 5)
!1310 = !DILocation(line: 639, column: 55, scope: !1309)
!1311 = !DILocation(line: 639, column: 62, scope: !1309)
!1312 = !DILocation(line: 639, column: 50, scope: !1309)
!1313 = !DILocation(line: 639, column: 43, scope: !1309)
!1314 = !DILocation(line: 639, column: 7, scope: !1309)
!1315 = !DILocation(line: 640, column: 7, scope: !1309)
!1316 = !DILocation(line: 643, column: 7, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 643, column: 7)
!1318 = !DILocation(line: 643, column: 7, scope: !1221)
!1319 = !DILocation(line: 0, scope: !1320, inlinedAt: !1339)
!1320 = distinct !DISubprogram(name: "long_double_format", scope: !3, file: !3, line: 236, type: !1321, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1324)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{!28, !28, !1323}
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1324 = !{!1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1338}
!1325 = !DILocalVariable(name: "fmt", arg: 1, scope: !1320, file: !3, line: 236, type: !28)
!1326 = !DILocalVariable(name: "layout", arg: 2, scope: !1320, file: !3, line: 236, type: !1323)
!1327 = !DILocalVariable(name: "i", scope: !1320, file: !3, line: 238, type: !85)
!1328 = !DILocalVariable(name: "prefix_len", scope: !1320, file: !3, line: 239, type: !85)
!1329 = !DILocalVariable(name: "suffix_len", scope: !1320, file: !3, line: 240, type: !85)
!1330 = !DILocalVariable(name: "length_modifier_offset", scope: !1320, file: !3, line: 241, type: !85)
!1331 = !DILocalVariable(name: "has_L", scope: !1320, file: !3, line: 242, type: !145)
!1332 = !DILocalVariable(name: "format_size", scope: !1333, file: !3, line: 278, type: !85)
!1333 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 277, column: 7)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 274, column: 14)
!1335 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 271, column: 9)
!1336 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 270, column: 3)
!1337 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 270, column: 3)
!1338 = !DILocalVariable(name: "ldfmt", scope: !1333, file: !3, line: 279, type: !26)
!1339 = distinct !DILocation(line: 644, column: 18, scope: !1317)
!1340 = !DILocation(line: 0, scope: !1341, inlinedAt: !1339)
!1341 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 244, column: 3)
!1342 = !DILocation(line: 244, column: 18, scope: !1343, inlinedAt: !1339)
!1343 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 244, column: 3)
!1344 = !DILocation(line: 244, column: 25, scope: !1343, inlinedAt: !1339)
!1345 = !DILocation(line: 244, column: 32, scope: !1343, inlinedAt: !1339)
!1346 = !DILocation(line: 244, column: 41, scope: !1343, inlinedAt: !1339)
!1347 = !DILocation(line: 244, column: 35, scope: !1343, inlinedAt: !1339)
!1348 = !DILocation(line: 244, column: 46, scope: !1343, inlinedAt: !1339)
!1349 = !DILocation(line: 244, column: 3, scope: !1341, inlinedAt: !1339)
!1350 = !DILocation(line: 246, column: 12, scope: !1351, inlinedAt: !1339)
!1351 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 246, column: 11)
!1352 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 245, column: 5)
!1353 = !DILocation(line: 246, column: 11, scope: !1352, inlinedAt: !1339)
!1354 = !DILocation(line: 247, column: 9, scope: !1351, inlinedAt: !1339)
!1355 = !DILocation(line: 249, column: 17, scope: !1352, inlinedAt: !1339)
!1356 = !DILocation(line: 244, column: 60, scope: !1343, inlinedAt: !1339)
!1357 = !DILocation(line: 244, column: 57, scope: !1343, inlinedAt: !1339)
!1358 = !DILocation(line: 244, column: 3, scope: !1343, inlinedAt: !1339)
!1359 = distinct !{!1359, !1349, !1360}
!1360 = !DILocation(line: 250, column: 5, scope: !1341, inlinedAt: !1339)
!1361 = !DILocation(line: 253, column: 8, scope: !1320, inlinedAt: !1339)
!1362 = !DILocation(line: 253, column: 5, scope: !1320, inlinedAt: !1339)
!1363 = !DILocation(line: 254, column: 20, scope: !1320, inlinedAt: !1339)
!1364 = !DILocation(line: 254, column: 8, scope: !1320, inlinedAt: !1339)
!1365 = !DILocation(line: 254, column: 5, scope: !1320, inlinedAt: !1339)
!1366 = !DILocation(line: 255, column: 7, scope: !1367, inlinedAt: !1339)
!1367 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 255, column: 7)
!1368 = !DILocation(line: 255, column: 14, scope: !1367, inlinedAt: !1339)
!1369 = !DILocation(line: 255, column: 7, scope: !1320, inlinedAt: !1339)
!1370 = !DILocation(line: 257, column: 8, scope: !1371, inlinedAt: !1339)
!1371 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 256, column: 5)
!1372 = !DILocation(line: 258, column: 24, scope: !1371, inlinedAt: !1339)
!1373 = !DILocation(line: 258, column: 12, scope: !1371, inlinedAt: !1339)
!1374 = !DILocation(line: 258, column: 9, scope: !1371, inlinedAt: !1339)
!1375 = !DILocation(line: 262, column: 12, scope: !1320, inlinedAt: !1339)
!1376 = !DILocation(line: 259, column: 5, scope: !1371, inlinedAt: !1339)
!1377 = !DILocation(line: 262, column: 19, scope: !1320, inlinedAt: !1339)
!1378 = !DILocation(line: 263, column: 8, scope: !1320, inlinedAt: !1339)
!1379 = !DILocation(line: 263, column: 5, scope: !1320, inlinedAt: !1339)
!1380 = !DILocation(line: 264, column: 7, scope: !1381, inlinedAt: !1339)
!1381 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 264, column: 7)
!1382 = !DILocation(line: 264, column: 14, scope: !1381, inlinedAt: !1339)
!1383 = !DILocation(line: 264, column: 7, scope: !1320, inlinedAt: !1339)
!1384 = !DILocation(line: 265, column: 5, scope: !1381, inlinedAt: !1339)
!1385 = !DILocation(line: 266, column: 9, scope: !1386, inlinedAt: !1339)
!1386 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 266, column: 7)
!1387 = !DILocation(line: 266, column: 7, scope: !1320, inlinedAt: !1339)
!1388 = !DILocation(line: 267, column: 5, scope: !1386, inlinedAt: !1339)
!1389 = !DILocation(line: 270, column: 9, scope: !1337, inlinedAt: !1339)
!1390 = !DILocation(line: 270, column: 8, scope: !1337, inlinedAt: !1339)
!1391 = !DILocation(line: 0, scope: !1337, inlinedAt: !1339)
!1392 = !DILocation(line: 271, column: 9, scope: !1335, inlinedAt: !1339)
!1393 = !DILocation(line: 271, column: 16, scope: !1335, inlinedAt: !1339)
!1394 = !DILocation(line: 271, column: 23, scope: !1335, inlinedAt: !1339)
!1395 = !DILocation(line: 271, column: 32, scope: !1335, inlinedAt: !1339)
!1396 = !DILocation(line: 271, column: 26, scope: !1335, inlinedAt: !1339)
!1397 = !DILocation(line: 271, column: 37, scope: !1335, inlinedAt: !1339)
!1398 = !DILocation(line: 271, column: 9, scope: !1336, inlinedAt: !1339)
!1399 = !DILocation(line: 272, column: 7, scope: !1335, inlinedAt: !1339)
!1400 = !DILocation(line: 274, column: 14, scope: !1334, inlinedAt: !1339)
!1401 = !DILocation(line: 274, column: 14, scope: !1335, inlinedAt: !1339)
!1402 = !DILocation(line: 275, column: 17, scope: !1334, inlinedAt: !1339)
!1403 = !DILocation(line: 270, column: 20, scope: !1336, inlinedAt: !1339)
!1404 = !DILocation(line: 270, column: 17, scope: !1336, inlinedAt: !1339)
!1405 = !DILocation(line: 270, column: 3, scope: !1336, inlinedAt: !1339)
!1406 = distinct !{!1406, !1407, !1408}
!1407 = !DILocation(line: 270, column: 3, scope: !1337, inlinedAt: !1339)
!1408 = !DILocation(line: 287, column: 7, scope: !1337, inlinedAt: !1339)
!1409 = !DILocation(line: 0, scope: !1333, inlinedAt: !1339)
!1410 = !DILocation(line: 279, column: 44, scope: !1333, inlinedAt: !1339)
!1411 = !DILocation(line: 279, column: 23, scope: !1333, inlinedAt: !1339)
!1412 = !DILocalVariable(name: "__dest", arg: 1, scope: !1413, file: !1414, line: 31, type: !1417)
!1413 = distinct !DISubprogram(name: "memcpy", scope: !1414, file: !1414, line: 31, type: !1415, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1419)
!1414 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1415 = !DISubroutineType(types: !1416)
!1416 = !{!83, !1417, !1418, !85}
!1417 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !83)
!1418 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !168)
!1419 = !{!1412, !1420, !1421}
!1420 = !DILocalVariable(name: "__src", arg: 2, scope: !1413, file: !1414, line: 31, type: !1418)
!1421 = !DILocalVariable(name: "__len", arg: 3, scope: !1413, file: !1414, line: 31, type: !85)
!1422 = !DILocation(line: 0, scope: !1413, inlinedAt: !1423)
!1423 = distinct !DILocation(line: 280, column: 9, scope: !1333, inlinedAt: !1339)
!1424 = !DILocation(line: 34, column: 10, scope: !1413, inlinedAt: !1423)
!1425 = !DILocation(line: 281, column: 9, scope: !1333, inlinedAt: !1339)
!1426 = !DILocation(line: 281, column: 39, scope: !1333, inlinedAt: !1339)
!1427 = !DILocation(line: 282, column: 48, scope: !1333, inlinedAt: !1339)
!1428 = !DILocation(line: 283, column: 46, scope: !1333, inlinedAt: !1339)
!1429 = !DILocalVariable(name: "__dest", arg: 1, scope: !1430, file: !1414, line: 88, type: !1433)
!1430 = distinct !DISubprogram(name: "strcpy", scope: !1414, file: !1414, line: 88, type: !1431, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1435)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{!26, !1433, !1434}
!1433 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !26)
!1434 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !28)
!1435 = !{!1429, !1436}
!1436 = !DILocalVariable(name: "__src", arg: 2, scope: !1430, file: !1414, line: 88, type: !1434)
!1437 = !DILocation(line: 0, scope: !1430, inlinedAt: !1438)
!1438 = distinct !DILocation(line: 282, column: 9, scope: !1333, inlinedAt: !1339)
!1439 = !DILocation(line: 90, column: 10, scope: !1430, inlinedAt: !1438)
!1440 = !DILocation(line: 646, column: 18, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 646, column: 7)
!1442 = !DILocation(line: 646, column: 26, scope: !1441)
!1443 = !DILocation(line: 646, column: 29, scope: !1441)
!1444 = !DILocation(line: 646, column: 7, scope: !1221)
!1445 = !DILocation(line: 648, column: 20, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 647, column: 5)
!1447 = !DILocation(line: 648, column: 7, scope: !1446)
!1448 = !DILocation(line: 650, column: 7, scope: !1446)
!1449 = !DILocation(line: 661, column: 14, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 661, column: 7)
!1451 = !DILocation(line: 662, column: 7, scope: !1450)
!1452 = !DILocation(line: 662, column: 30, scope: !1450)
!1453 = !DILocation(line: 662, column: 37, scope: !1450)
!1454 = !DILocation(line: 662, column: 25, scope: !1450)
!1455 = !DILocalVariable(name: "s", arg: 1, scope: !1456, file: !3, line: 562, type: !28)
!1456 = distinct !DISubprogram(name: "all_digits_p", scope: !3, file: !3, line: 562, type: !1457, scopeLine: 563, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1459)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!145, !28}
!1459 = !{!1455, !1460}
!1460 = !DILocalVariable(name: "n", scope: !1456, file: !3, line: 564, type: !85)
!1461 = !DILocation(line: 0, scope: !1456, inlinedAt: !1462)
!1462 = distinct !DILocation(line: 662, column: 11, scope: !1450)
!1463 = !DILocation(line: 565, column: 10, scope: !1456, inlinedAt: !1462)
!1464 = !DILocation(line: 565, column: 25, scope: !1456, inlinedAt: !1462)
!1465 = !DILocation(line: 564, column: 14, scope: !1456, inlinedAt: !1462)
!1466 = !DILocation(line: 565, column: 33, scope: !1456, inlinedAt: !1462)
!1467 = !DILocation(line: 565, column: 30, scope: !1456, inlinedAt: !1462)
!1468 = !DILocation(line: 663, column: 11, scope: !1450)
!1469 = !DILocation(line: 663, column: 54, scope: !1450)
!1470 = !DILocation(line: 663, column: 14, scope: !1450)
!1471 = !DILocation(line: 664, column: 11, scope: !1450)
!1472 = !DILocation(line: 664, column: 23, scope: !1450)
!1473 = !{!1474, !1475, i64 0}
!1474 = !{!"operand", !1475, i64 0, !1476, i64 16, !1266, i64 24}
!1475 = !{!"long double", !1178, i64 0}
!1476 = !{!"long", !1178, i64 0}
!1477 = !DILocation(line: 664, column: 16, scope: !1450)
!1478 = !DILocation(line: 664, column: 43, scope: !1450)
!1479 = !DILocation(line: 664, column: 29, scope: !1450)
!1480 = !DILocation(line: 665, column: 5, scope: !1450)
!1481 = !DILocation(line: 667, column: 26, scope: !1241)
!1482 = !DILocation(line: 667, column: 21, scope: !1241)
!1483 = !DILocation(line: 0, scope: !1456, inlinedAt: !1484)
!1484 = distinct !DILocation(line: 667, column: 7, scope: !1241)
!1485 = !DILocation(line: 565, column: 10, scope: !1456, inlinedAt: !1484)
!1486 = !DILocation(line: 565, column: 25, scope: !1456, inlinedAt: !1484)
!1487 = !DILocation(line: 564, column: 14, scope: !1456, inlinedAt: !1484)
!1488 = !DILocation(line: 565, column: 33, scope: !1456, inlinedAt: !1484)
!1489 = !DILocation(line: 565, column: 30, scope: !1456, inlinedAt: !1484)
!1490 = !DILocation(line: 668, column: 7, scope: !1241)
!1491 = !DILocation(line: 668, column: 18, scope: !1241)
!1492 = !DILocation(line: 668, column: 23, scope: !1241)
!1493 = !DILocation(line: 668, column: 52, scope: !1241)
!1494 = !DILocation(line: 668, column: 40, scope: !1241)
!1495 = !DILocation(line: 0, scope: !1456, inlinedAt: !1496)
!1496 = distinct !DILocation(line: 668, column: 26, scope: !1241)
!1497 = !DILocation(line: 565, column: 10, scope: !1456, inlinedAt: !1496)
!1498 = !DILocation(line: 565, column: 25, scope: !1456, inlinedAt: !1496)
!1499 = !DILocation(line: 564, column: 14, scope: !1456, inlinedAt: !1496)
!1500 = !DILocation(line: 565, column: 33, scope: !1456, inlinedAt: !1496)
!1501 = !DILocation(line: 565, column: 30, scope: !1456, inlinedAt: !1496)
!1502 = !DILocation(line: 669, column: 7, scope: !1241)
!1503 = !DILocation(line: 669, column: 18, scope: !1241)
!1504 = !DILocation(line: 669, column: 22, scope: !1241)
!1505 = !DILocation(line: 670, column: 26, scope: !1241)
!1506 = !DILocation(line: 670, column: 55, scope: !1241)
!1507 = !DILocation(line: 670, column: 43, scope: !1241)
!1508 = !DILocation(line: 0, scope: !1456, inlinedAt: !1509)
!1509 = distinct !DILocation(line: 670, column: 29, scope: !1241)
!1510 = !DILocation(line: 565, column: 10, scope: !1456, inlinedAt: !1509)
!1511 = !DILocation(line: 565, column: 25, scope: !1456, inlinedAt: !1509)
!1512 = !DILocation(line: 564, column: 14, scope: !1456, inlinedAt: !1509)
!1513 = !DILocation(line: 565, column: 33, scope: !1456, inlinedAt: !1509)
!1514 = !DILocation(line: 565, column: 30, scope: !1456, inlinedAt: !1509)
!1515 = !DILocation(line: 671, column: 7, scope: !1241)
!1516 = !DILocation(line: 671, column: 11, scope: !1241)
!1517 = !DILocation(line: 671, column: 23, scope: !1241)
!1518 = !DILocation(line: 671, column: 49, scope: !1241)
!1519 = !DILocation(line: 671, column: 41, scope: !1241)
!1520 = !DILocation(line: 671, column: 60, scope: !1241)
!1521 = !DILocation(line: 667, column: 7, scope: !1221)
!1522 = !DILocation(line: 673, column: 24, scope: !1240)
!1523 = !DILocation(line: 0, scope: !1240)
!1524 = !DILocation(line: 674, column: 46, scope: !1240)
!1525 = !DILocation(line: 674, column: 36, scope: !1240)
!1526 = !DILocation(line: 674, column: 24, scope: !1240)
!1527 = !DILocation(line: 675, column: 34, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 675, column: 11)
!1529 = !DILocation(line: 675, column: 29, scope: !1528)
!1530 = !DILocation(line: 675, column: 11, scope: !1528)
!1531 = !DILocation(line: 681, column: 31, scope: !1221)
!1532 = !DILocation(line: 681, column: 20, scope: !1221)
!1533 = !DILocation(line: 681, column: 10, scope: !1221)
!1534 = !{i64 0, i64 16, !1535, i64 16, i64 8, !1536, i64 24, i64 4, !1265}
!1535 = !{!1475, !1475, i64 0}
!1536 = !{!1476, !1476, i64 0}
!1537 = !DILocation(line: 683, column: 7, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 683, column: 7)
!1539 = !DILocation(line: 683, column: 14, scope: !1538)
!1540 = !DILocation(line: 683, column: 7, scope: !1221)
!1541 = !DILocation(line: 686, column: 14, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1538, file: !3, line: 684, column: 5)
!1543 = !DILocation(line: 686, column: 35, scope: !1542)
!1544 = !DILocation(line: 686, column: 24, scope: !1542)
!1545 = !DILocation(line: 688, column: 11, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 688, column: 11)
!1547 = !DILocation(line: 688, column: 18, scope: !1546)
!1548 = !DILocation(line: 688, column: 11, scope: !1542)
!1549 = !DILocation(line: 690, column: 18, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 689, column: 9)
!1551 = !DILocation(line: 691, column: 26, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 691, column: 15)
!1553 = !DILocation(line: 691, column: 15, scope: !1550)
!1554 = !DILocation(line: 693, column: 28, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1552, file: !3, line: 692, column: 13)
!1556 = !DILocation(line: 694, column: 34, scope: !1555)
!1557 = !DILocation(line: 694, column: 40, scope: !1555)
!1558 = !DILocation(line: 694, column: 29, scope: !1555)
!1559 = !DILocation(line: 694, column: 22, scope: !1555)
!1560 = !DILocation(line: 693, column: 15, scope: !1555)
!1561 = !DILocation(line: 695, column: 15, scope: !1555)
!1562 = !DILocation(line: 698, column: 18, scope: !1550)
!1563 = !DILocation(line: 698, column: 39, scope: !1550)
!1564 = !DILocation(line: 698, column: 28, scope: !1550)
!1565 = !DILocation(line: 699, column: 9, scope: !1550)
!1566 = !DILocation(line: 704, column: 23, scope: !1245)
!1567 = !DILocation(line: 704, column: 28, scope: !1245)
!1568 = !DILocation(line: 704, column: 36, scope: !1245)
!1569 = !{!1474, !1266, i64 24}
!1570 = !DILocation(line: 704, column: 51, scope: !1245)
!1571 = !DILocation(line: 705, column: 10, scope: !1245)
!1572 = !DILocation(line: 705, column: 38, scope: !1245)
!1573 = !DILocation(line: 705, column: 33, scope: !1245)
!1574 = !DILocation(line: 705, column: 58, scope: !1245)
!1575 = !DILocation(line: 706, column: 19, scope: !1245)
!1576 = !DILocation(line: 706, column: 12, scope: !1245)
!1577 = !DILocation(line: 706, column: 39, scope: !1245)
!1578 = !DILocation(line: 706, column: 25, scope: !1245)
!1579 = !DILocation(line: 707, column: 11, scope: !1245)
!1580 = !DILocation(line: 707, column: 23, scope: !1245)
!1581 = !DILocation(line: 707, column: 49, scope: !1245)
!1582 = !DILocation(line: 707, column: 41, scope: !1245)
!1583 = !DILocation(line: 707, column: 60, scope: !1245)
!1584 = !DILocation(line: 704, column: 7, scope: !1221)
!1585 = !DILocation(line: 709, column: 7, scope: !1244)
!1586 = !DILocation(line: 710, column: 7, scope: !1244)
!1587 = !DILocation(line: 0, scope: !1244)
!1588 = !DILocation(line: 711, column: 11, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 711, column: 11)
!1590 = !DILocation(line: 711, column: 48, scope: !1589)
!1591 = !DILocation(line: 711, column: 11, scope: !1244)
!1592 = !DILocation(line: 712, column: 9, scope: !1589)
!1593 = !DILocation(line: 713, column: 13, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 713, column: 11)
!1595 = !DILocation(line: 713, column: 11, scope: !1244)
!1596 = !DILocation(line: 714, column: 14, scope: !1594)
!1597 = !DILocation(line: 714, column: 12, scope: !1594)
!1598 = !DILocation(line: 714, column: 9, scope: !1594)
!1599 = !DILocation(line: 715, column: 16, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1594, file: !3, line: 715, column: 16)
!1601 = !DILocation(line: 715, column: 52, scope: !1600)
!1602 = !DILocation(line: 715, column: 16, scope: !1594)
!1603 = !DILocation(line: 716, column: 9, scope: !1600)
!1604 = !DILocation(line: 718, column: 12, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 718, column: 11)
!1606 = !DILocation(line: 718, column: 11, scope: !1605)
!1607 = !DILocation(line: 718, column: 15, scope: !1605)
!1608 = !DILocation(line: 718, column: 22, scope: !1605)
!1609 = !DILocation(line: 718, column: 26, scope: !1605)
!1610 = !DILocation(line: 718, column: 25, scope: !1605)
!1611 = !DILocation(line: 718, column: 29, scope: !1605)
!1612 = !DILocation(line: 718, column: 36, scope: !1605)
!1613 = !DILocation(line: 718, column: 62, scope: !1605)
!1614 = !DILocation(line: 718, column: 57, scope: !1605)
!1615 = !DILocation(line: 718, column: 39, scope: !1605)
!1616 = !DILocation(line: 718, column: 11, scope: !1244)
!1617 = !DILocation(line: 725, column: 13, scope: !1244)
!1618 = !DILocation(line: 725, column: 7, scope: !1244)
!1619 = !DILocation(line: 726, column: 13, scope: !1244)
!1620 = !DILocation(line: 726, column: 7, scope: !1244)
!1621 = !DILocation(line: 728, column: 5, scope: !1245)
!1622 = !DILocation(line: 730, column: 18, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 730, column: 7)
!1624 = !DILocation(line: 730, column: 7, scope: !1221)
!1625 = !DILocation(line: 0, scope: !194, inlinedAt: !1626)
!1626 = distinct !DILocation(line: 731, column: 18, scope: !1623)
!1627 = !DILocation(line: 372, column: 29, scope: !194, inlinedAt: !1626)
!1628 = !DILocation(line: 376, column: 14, scope: !194, inlinedAt: !1626)
!1629 = !DILocation(line: 378, column: 12, scope: !212, inlinedAt: !1626)
!1630 = !DILocation(line: 378, column: 41, scope: !212, inlinedAt: !1626)
!1631 = !DILocation(line: 378, column: 23, scope: !212, inlinedAt: !1626)
!1632 = !DILocation(line: 380, column: 11, scope: !210, inlinedAt: !1626)
!1633 = !DILocation(line: 380, column: 11, scope: !211, inlinedAt: !1626)
!1634 = !DILocation(line: 383, column: 52, scope: !209, inlinedAt: !1626)
!1635 = !DILocation(line: 383, column: 46, scope: !209, inlinedAt: !1626)
!1636 = !DILocation(line: 0, scope: !209, inlinedAt: !1626)
!1637 = !DILocation(line: 385, column: 50, scope: !209, inlinedAt: !1626)
!1638 = !DILocation(line: 385, column: 44, scope: !209, inlinedAt: !1626)
!1639 = !DILocation(line: 386, column: 15, scope: !1640, inlinedAt: !1626)
!1640 = distinct !DILexicalBlock(scope: !209, file: !3, line: 386, column: 15)
!1641 = !DILocation(line: 386, column: 38, scope: !1640, inlinedAt: !1626)
!1642 = !DILocation(line: 386, column: 30, scope: !1640, inlinedAt: !1626)
!1643 = !DILocation(line: 388, column: 30, scope: !1644, inlinedAt: !1626)
!1644 = distinct !DILexicalBlock(scope: !209, file: !3, line: 388, column: 15)
!1645 = !DILocation(line: 388, column: 38, scope: !1644, inlinedAt: !1626)
!1646 = !DILocation(line: 388, column: 35, scope: !1644, inlinedAt: !1626)
!1647 = !DILocation(line: 385, column: 42, scope: !209, inlinedAt: !1626)
!1648 = !DILocation(line: 390, column: 36, scope: !1649, inlinedAt: !1626)
!1649 = distinct !DILexicalBlock(scope: !209, file: !3, line: 390, column: 15)
!1650 = !DILocation(line: 383, column: 44, scope: !209, inlinedAt: !1626)
!1651 = !DILocation(line: 392, column: 26, scope: !209, inlinedAt: !1626)
!1652 = !DILocation(line: 393, column: 21, scope: !217, inlinedAt: !1626)
!1653 = !DILocation(line: 393, column: 15, scope: !209, inlinedAt: !1626)
!1654 = !DILocation(line: 395, column: 23, scope: !216, inlinedAt: !1626)
!1655 = !DILocation(line: 0, scope: !216, inlinedAt: !1626)
!1656 = !DILocation(line: 396, column: 15, scope: !216, inlinedAt: !1626)
!1657 = !DILocation(line: 402, column: 11, scope: !1658, inlinedAt: !1626)
!1658 = distinct !DILexicalBlock(scope: !210, file: !3, line: 401, column: 9)
!1659 = !DILocation(line: 403, column: 11, scope: !1658, inlinedAt: !1626)
!1660 = !DILocation(line: 733, column: 56, scope: !1221)
!1661 = !DILocalVariable(name: "layout", arg: 2, scope: !1662, file: !3, line: 302, type: !1232)
!1662 = distinct !DISubprogram(name: "print_numbers", scope: !3, file: !3, line: 302, type: !1663, scopeLine: 304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1665)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{null, !28, !1232, !148, !148, !148}
!1665 = !{!1666, !1661, !1667, !1668, !1669, !1670, !1671, !1674, !1675, !1679, !1682, !1683, !1684, !1685, !1688}
!1666 = !DILocalVariable(name: "fmt", arg: 1, scope: !1662, file: !3, line: 302, type: !28)
!1667 = !DILocalVariable(name: "first", arg: 3, scope: !1662, file: !3, line: 303, type: !148)
!1668 = !DILocalVariable(name: "step", arg: 4, scope: !1662, file: !3, line: 303, type: !148)
!1669 = !DILocalVariable(name: "last", arg: 5, scope: !1662, file: !3, line: 303, type: !148)
!1670 = !DILocalVariable(name: "out_of_range", scope: !1662, file: !3, line: 305, type: !145)
!1671 = !DILocalVariable(name: "x", scope: !1672, file: !3, line: 309, type: !148)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !3, line: 308, column: 5)
!1673 = distinct !DILexicalBlock(scope: !1662, file: !3, line: 307, column: 7)
!1674 = !DILocalVariable(name: "i", scope: !1672, file: !3, line: 310, type: !148)
!1675 = !DILocalVariable(name: "x0", scope: !1676, file: !3, line: 314, type: !148)
!1676 = distinct !DILexicalBlock(scope: !1677, file: !3, line: 313, column: 9)
!1677 = distinct !DILexicalBlock(scope: !1678, file: !3, line: 312, column: 7)
!1678 = distinct !DILexicalBlock(scope: !1672, file: !3, line: 312, column: 7)
!1679 = !DILocalVariable(name: "print_extra_number", scope: !1680, file: !3, line: 331, type: !145)
!1680 = distinct !DILexicalBlock(scope: !1681, file: !3, line: 323, column: 13)
!1681 = distinct !DILexicalBlock(scope: !1676, file: !3, line: 322, column: 15)
!1682 = !DILocalVariable(name: "x_val", scope: !1680, file: !3, line: 332, type: !148)
!1683 = !DILocalVariable(name: "x_str", scope: !1680, file: !3, line: 333, type: !26)
!1684 = !DILocalVariable(name: "x_strlen", scope: !1680, file: !3, line: 334, type: !30)
!1685 = !DILocalVariable(name: "x0_str", scope: !1686, file: !3, line: 347, type: !26)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !3, line: 346, column: 17)
!1687 = distinct !DILexicalBlock(scope: !1680, file: !3, line: 344, column: 19)
!1688 = !DILocalVariable(name: "x0_strlen", scope: !1686, file: !3, line: 348, type: !30)
!1689 = !DILocation(line: 0, scope: !1662, inlinedAt: !1690)
!1690 = distinct !DILocation(line: 733, column: 3, scope: !1221)
!1691 = !DILocation(line: 305, column: 29, scope: !1662, inlinedAt: !1690)
!1692 = !DILocation(line: 305, column: 24, scope: !1662, inlinedAt: !1690)
!1693 = !DILocation(line: 307, column: 7, scope: !1662, inlinedAt: !1690)
!1694 = !DILocation(line: 0, scope: !1672, inlinedAt: !1690)
!1695 = !DILocation(line: 0, scope: !1676, inlinedAt: !1690)
!1696 = !DILocation(line: 315, column: 15, scope: !1697, inlinedAt: !1690)
!1697 = distinct !DILexicalBlock(scope: !1676, file: !3, line: 315, column: 15)
!1698 = !DILocation(line: 315, column: 31, scope: !1697, inlinedAt: !1690)
!1699 = !DILocation(line: 315, column: 15, scope: !1676, inlinedAt: !1690)
!1700 = !DILocation(line: 0, scope: !1680, inlinedAt: !1690)
!1701 = !DILocation(line: 0, scope: !1686, inlinedAt: !1690)
!1702 = !DILocation(line: 316, column: 13, scope: !1697, inlinedAt: !1690)
!1703 = !DILocation(line: 317, column: 15, scope: !1704, inlinedAt: !1690)
!1704 = distinct !DILexicalBlock(scope: !1676, file: !3, line: 317, column: 15)
!1705 = !DILocation(line: 317, column: 15, scope: !1676, inlinedAt: !1690)
!1706 = !DILocation(line: 319, column: 25, scope: !1676, inlinedAt: !1690)
!1707 = !DILocation(line: 319, column: 21, scope: !1676, inlinedAt: !1690)
!1708 = !DILocation(line: 320, column: 27, scope: !1676, inlinedAt: !1690)
!1709 = !DILocation(line: 320, column: 24, scope: !1676, inlinedAt: !1690)
!1710 = !DILocation(line: 322, column: 15, scope: !1676, inlinedAt: !1690)
!1711 = !DILocation(line: 332, column: 15, scope: !1680, inlinedAt: !1690)
!1712 = !DILocation(line: 333, column: 15, scope: !1680, inlinedAt: !1690)
!1713 = !DILocation(line: 335, column: 19, scope: !1714, inlinedAt: !1690)
!1714 = distinct !DILexicalBlock(scope: !1680, file: !3, line: 335, column: 19)
!1715 = !{i8 0, i8 2}
!1716 = !DILocation(line: 335, column: 19, scope: !1680, inlinedAt: !1690)
!1717 = !DILocation(line: 336, column: 17, scope: !1714, inlinedAt: !1690)
!1718 = !DILocation(line: 337, column: 26, scope: !1680, inlinedAt: !1690)
!1719 = !DILocation(line: 338, column: 19, scope: !1720, inlinedAt: !1690)
!1720 = distinct !DILexicalBlock(scope: !1680, file: !3, line: 338, column: 19)
!1721 = !DILocation(line: 338, column: 19, scope: !1680, inlinedAt: !1690)
!1722 = !DILocation(line: 339, column: 17, scope: !1720, inlinedAt: !1690)
!1723 = !DILocation(line: 340, column: 28, scope: !1724, inlinedAt: !1690)
!1724 = distinct !DILexicalBlock(scope: !1680, file: !3, line: 340, column: 19)
!1725 = !DILocation(line: 340, column: 19, scope: !1680, inlinedAt: !1690)
!1726 = !DILocation(line: 341, column: 17, scope: !1724, inlinedAt: !1690)
!1727 = !DILocation(line: 342, column: 15, scope: !1680, inlinedAt: !1690)
!1728 = !DILocation(line: 342, column: 21, scope: !1680, inlinedAt: !1690)
!1729 = !DILocation(line: 342, column: 30, scope: !1680, inlinedAt: !1690)
!1730 = !DILocation(line: 342, column: 51, scope: !1680, inlinedAt: !1690)
!1731 = !DILocation(line: 344, column: 29, scope: !1687, inlinedAt: !1690)
!1732 = !DILocation(line: 344, column: 35, scope: !1687, inlinedAt: !1690)
!1733 = !DILocation(line: 344, column: 19, scope: !1687, inlinedAt: !1690)
!1734 = !DILocation(line: 345, column: 22, scope: !1687, inlinedAt: !1690)
!1735 = !DILocation(line: 345, column: 28, scope: !1687, inlinedAt: !1690)
!1736 = !DILocation(line: 345, column: 19, scope: !1687, inlinedAt: !1690)
!1737 = !DILocation(line: 356, column: 21, scope: !1680, inlinedAt: !1690)
!1738 = !DILocation(line: 356, column: 15, scope: !1680, inlinedAt: !1690)
!1739 = !DILocation(line: 0, scope: !1681, inlinedAt: !1690)
!1740 = !DILocation(line: 347, column: 19, scope: !1686, inlinedAt: !1690)
!1741 = !DILocation(line: 347, column: 25, scope: !1686, inlinedAt: !1690)
!1742 = !DILocation(line: 348, column: 35, scope: !1686, inlinedAt: !1690)
!1743 = !DILocation(line: 349, column: 33, scope: !1744, inlinedAt: !1690)
!1744 = distinct !DILexicalBlock(scope: !1686, file: !3, line: 349, column: 23)
!1745 = !DILocation(line: 349, column: 23, scope: !1686, inlinedAt: !1690)
!1746 = !DILocation(line: 350, column: 21, scope: !1744, inlinedAt: !1690)
!1747 = !DILocation(line: 351, column: 19, scope: !1686, inlinedAt: !1690)
!1748 = !DILocation(line: 351, column: 26, scope: !1686, inlinedAt: !1690)
!1749 = !DILocation(line: 351, column: 36, scope: !1686, inlinedAt: !1690)
!1750 = !DILocation(line: 351, column: 57, scope: !1686, inlinedAt: !1690)
!1751 = !DILocation(line: 352, column: 41, scope: !1686, inlinedAt: !1690)
!1752 = !DILocation(line: 353, column: 19, scope: !1686, inlinedAt: !1690)
!1753 = !DILocation(line: 354, column: 17, scope: !1687, inlinedAt: !1690)
!1754 = !DILocation(line: 359, column: 13, scope: !1681, inlinedAt: !1690)
!1755 = !DILocation(line: 361, column: 15, scope: !1756, inlinedAt: !1690)
!1756 = distinct !DILexicalBlock(scope: !1676, file: !3, line: 361, column: 15)
!1757 = !DILocation(line: 361, column: 41, scope: !1756, inlinedAt: !1690)
!1758 = !DILocation(line: 361, column: 15, scope: !1676, inlinedAt: !1690)
!1759 = !DILocation(line: 362, column: 13, scope: !1756, inlinedAt: !1690)
!1760 = !DILocation(line: 312, column: 22, scope: !1677, inlinedAt: !1690)
!1761 = distinct !{!1761, !1762, !1763}
!1762 = !DILocation(line: 312, column: 7, scope: !1678, inlinedAt: !1690)
!1763 = !DILocation(line: 363, column: 9, scope: !1678, inlinedAt: !1690)
!1764 = !DILocation(line: 365, column: 11, scope: !1765, inlinedAt: !1690)
!1765 = distinct !DILexicalBlock(scope: !1672, file: !3, line: 365, column: 11)
!1766 = !DILocation(line: 365, column: 38, scope: !1765, inlinedAt: !1690)
!1767 = !DILocation(line: 365, column: 11, scope: !1672, inlinedAt: !1690)
!1768 = !DILocation(line: 366, column: 9, scope: !1765, inlinedAt: !1690)
!1769 = !DILocation(line: 736, column: 1, scope: !1221)
!1770 = distinct !DISubprogram(name: "seq_fast", scope: !3, file: !3, line: 461, type: !1771, scopeLine: 462, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1776)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{!145, !28, !28, !1773}
!1773 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1774, line: 102, baseType: !1775)
!1774 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1775 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !60, line: 73, baseType: !87)
!1776 = !{!1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1792, !1793, !1794, !1795, !1798, !1803, !1808, !1812, !1813, !1816, !1817}
!1777 = !DILocalVariable(name: "a", arg: 1, scope: !1770, file: !3, line: 461, type: !28)
!1778 = !DILocalVariable(name: "b", arg: 2, scope: !1770, file: !3, line: 461, type: !28)
!1779 = !DILocalVariable(name: "step", arg: 3, scope: !1770, file: !3, line: 461, type: !1773)
!1780 = !DILocalVariable(name: "inf", scope: !1770, file: !3, line: 463, type: !145)
!1781 = !DILocalVariable(name: "p_len", scope: !1770, file: !3, line: 470, type: !85)
!1782 = !DILocalVariable(name: "q_len", scope: !1770, file: !3, line: 471, type: !85)
!1783 = !DILocalVariable(name: "inc_size", scope: !1770, file: !3, line: 476, type: !85)
!1784 = !DILocalVariable(name: "p0", scope: !1770, file: !3, line: 481, type: !26)
!1785 = !DILocalVariable(name: "p", scope: !1770, file: !3, line: 482, type: !26)
!1786 = !DILocalVariable(name: "q", scope: !1770, file: !3, line: 483, type: !26)
!1787 = !DILocalVariable(name: "q0", scope: !1770, file: !3, line: 484, type: !26)
!1788 = !DILocalVariable(name: "ok", scope: !1770, file: !3, line: 493, type: !145)
!1789 = !DILocalVariable(name: "buf_size", scope: !1790, file: !3, line: 499, type: !85)
!1790 = distinct !DILexicalBlock(scope: !1791, file: !3, line: 495, column: 5)
!1791 = distinct !DILexicalBlock(scope: !1770, file: !3, line: 494, column: 7)
!1792 = !DILocalVariable(name: "buf", scope: !1790, file: !3, line: 500, type: !26)
!1793 = !DILocalVariable(name: "buf_end", scope: !1790, file: !3, line: 501, type: !28)
!1794 = !DILocalVariable(name: "bufp", scope: !1790, file: !3, line: 503, type: !26)
!1795 = !DILocalVariable(name: "n_incr", scope: !1796, file: !3, line: 511, type: !1773)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !3, line: 511, column: 11)
!1797 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 510, column: 9)
!1798 = !DILocalVariable(name: "buf_offset", scope: !1799, file: !3, line: 528, type: !85)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !3, line: 527, column: 17)
!1800 = distinct !DILexicalBlock(scope: !1801, file: !3, line: 526, column: 19)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !3, line: 521, column: 13)
!1802 = distinct !DILexicalBlock(scope: !1797, file: !3, line: 520, column: 15)
!1803 = !DILocalVariable(name: "__ptr", scope: !1804, file: !3, line: 541, type: !28)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !3, line: 541, column: 19)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !3, line: 541, column: 19)
!1806 = distinct !DILexicalBlock(scope: !1807, file: !3, line: 540, column: 13)
!1807 = distinct !DILexicalBlock(scope: !1797, file: !3, line: 539, column: 15)
!1808 = !DILocalVariable(name: "__stream", scope: !1804, file: !3, line: 541, type: !1809)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1811, line: 7, baseType: !37)
!1811 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!1812 = !DILocalVariable(name: "__cnt", scope: !1804, file: !3, line: 541, type: !85)
!1813 = !DILocalVariable(name: "__ptr", scope: !1814, file: !3, line: 549, type: !28)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !3, line: 549, column: 11)
!1815 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 549, column: 11)
!1816 = !DILocalVariable(name: "__stream", scope: !1814, file: !3, line: 549, type: !1809)
!1817 = !DILocalVariable(name: "__cnt", scope: !1814, file: !3, line: 549, type: !85)
!1818 = !DILocation(line: 0, scope: !1770)
!1819 = !DILocation(line: 463, column: 14, scope: !1770)
!1820 = !DILocalVariable(name: "s", arg: 1, scope: !1821, file: !3, line: 445, type: !28)
!1821 = distinct !DISubprogram(name: "trim_leading_zeros", scope: !3, file: !3, line: 445, type: !139, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1822)
!1822 = !{!1820, !1823}
!1823 = !DILocalVariable(name: "p", scope: !1821, file: !3, line: 447, type: !28)
!1824 = !DILocation(line: 0, scope: !1821, inlinedAt: !1825)
!1825 = distinct !DILocation(line: 467, column: 7, scope: !1770)
!1826 = !DILocation(line: 448, column: 3, scope: !1821, inlinedAt: !1825)
!1827 = !DILocation(line: 448, column: 10, scope: !1821, inlinedAt: !1825)
!1828 = !DILocation(line: 449, column: 5, scope: !1821, inlinedAt: !1825)
!1829 = distinct !{!1829, !1826, !1830}
!1830 = !DILocation(line: 449, column: 7, scope: !1821, inlinedAt: !1825)
!1831 = !DILocation(line: 452, column: 16, scope: !1832, inlinedAt: !1825)
!1832 = distinct !DILexicalBlock(scope: !1821, file: !3, line: 452, column: 7)
!1833 = !DILocation(line: 453, column: 5, scope: !1832, inlinedAt: !1825)
!1834 = !DILocation(line: 452, column: 7, scope: !1821, inlinedAt: !1825)
!1835 = !DILocation(line: 0, scope: !1821, inlinedAt: !1836)
!1836 = distinct !DILocation(line: 468, column: 7, scope: !1770)
!1837 = !DILocation(line: 448, column: 3, scope: !1821, inlinedAt: !1836)
!1838 = !DILocation(line: 448, column: 10, scope: !1821, inlinedAt: !1836)
!1839 = !DILocation(line: 449, column: 5, scope: !1821, inlinedAt: !1836)
!1840 = distinct !{!1840, !1837, !1841}
!1841 = !DILocation(line: 449, column: 7, scope: !1821, inlinedAt: !1836)
!1842 = !DILocation(line: 452, column: 16, scope: !1832, inlinedAt: !1836)
!1843 = !DILocation(line: 453, column: 5, scope: !1832, inlinedAt: !1836)
!1844 = !DILocation(line: 452, column: 7, scope: !1821, inlinedAt: !1836)
!1845 = !DILocation(line: 470, column: 18, scope: !1770)
!1846 = !DILocation(line: 471, column: 18, scope: !1770)
!1847 = !DILocation(line: 471, column: 28, scope: !1770)
!1848 = !DILocation(line: 476, column: 21, scope: !1770)
!1849 = !DILocation(line: 481, column: 32, scope: !1770)
!1850 = !DILocation(line: 481, column: 14, scope: !1770)
!1851 = !DILocation(line: 482, column: 24, scope: !1770)
!1852 = !DILocation(line: 482, column: 35, scope: !1770)
!1853 = !DILocation(line: 0, scope: !1413, inlinedAt: !1854)
!1854 = distinct !DILocation(line: 482, column: 13, scope: !1770)
!1855 = !DILocation(line: 34, column: 10, scope: !1413, inlinedAt: !1854)
!1856 = !DILocation(line: 485, column: 7, scope: !1770)
!1857 = !DILocation(line: 487, column: 12, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !3, line: 486, column: 5)
!1859 = distinct !DILexicalBlock(scope: !1770, file: !3, line: 485, column: 7)
!1860 = !DILocation(line: 488, column: 22, scope: !1858)
!1861 = !DILocation(line: 488, column: 33, scope: !1858)
!1862 = !DILocation(line: 488, column: 51, scope: !1858)
!1863 = !DILocation(line: 0, scope: !1413, inlinedAt: !1864)
!1864 = distinct !DILocation(line: 488, column: 11, scope: !1858)
!1865 = !DILocation(line: 34, column: 10, scope: !1413, inlinedAt: !1864)
!1866 = !DILocalVariable(name: "a", arg: 1, scope: !1867, file: !3, line: 433, type: !28)
!1867 = distinct !DISubprogram(name: "cmp", scope: !3, file: !3, line: 433, type: !1868, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1870)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{!30, !28, !85, !28, !85}
!1870 = !{!1866, !1871, !1872, !1873}
!1871 = !DILocalVariable(name: "a_len", arg: 2, scope: !1867, file: !3, line: 433, type: !85)
!1872 = !DILocalVariable(name: "b", arg: 3, scope: !1867, file: !3, line: 433, type: !28)
!1873 = !DILocalVariable(name: "b_len", arg: 4, scope: !1867, file: !3, line: 433, type: !85)
!1874 = !DILocation(line: 0, scope: !1867, inlinedAt: !1875)
!1875 = distinct !DILocation(line: 493, column: 20, scope: !1770)
!1876 = !DILocation(line: 435, column: 13, scope: !1877, inlinedAt: !1875)
!1877 = distinct !DILexicalBlock(scope: !1867, file: !3, line: 435, column: 7)
!1878 = !DILocation(line: 435, column: 7, scope: !1867, inlinedAt: !1875)
!1879 = !DILocation(line: 437, column: 13, scope: !1880, inlinedAt: !1875)
!1880 = distinct !DILexicalBlock(scope: !1867, file: !3, line: 437, column: 7)
!1881 = !DILocation(line: 437, column: 7, scope: !1867, inlinedAt: !1875)
!1882 = !DILocation(line: 439, column: 11, scope: !1867, inlinedAt: !1875)
!1883 = !DILocation(line: 493, column: 45, scope: !1770)
!1884 = !DILocation(line: 494, column: 7, scope: !1770)
!1885 = !DILocation(line: 499, column: 25, scope: !1790)
!1886 = !DILocation(line: 0, scope: !1790)
!1887 = !DILocation(line: 500, column: 19, scope: !1790)
!1888 = !DILocation(line: 501, column: 33, scope: !1790)
!1889 = !DILocalVariable(name: "__dest", arg: 1, scope: !1890, file: !1414, line: 45, type: !1417)
!1890 = distinct !DISubprogram(name: "mempcpy", scope: !1414, file: !1414, line: 45, type: !1415, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1891)
!1891 = !{!1889, !1892, !1893}
!1892 = !DILocalVariable(name: "__src", arg: 2, scope: !1890, file: !1414, line: 45, type: !1418)
!1893 = !DILocalVariable(name: "__len", arg: 3, scope: !1890, file: !1414, line: 45, type: !85)
!1894 = !DILocation(line: 0, scope: !1890, inlinedAt: !1895)
!1895 = distinct !DILocation(line: 506, column: 14, scope: !1790)
!1896 = !DILocation(line: 48, column: 10, scope: !1890, inlinedAt: !1895)
!1897 = !DILocation(line: 0, scope: !1796)
!1898 = !DILocation(line: 509, column: 7, scope: !1790)
!1899 = !DILocation(line: 470, column: 10, scope: !1770)
!1900 = !DILocation(line: 511, column: 11, scope: !1796)
!1901 = !DILocation(line: 482, column: 9, scope: !1770)
!1902 = !DILocation(line: 435, column: 13, scope: !1877, inlinedAt: !1903)
!1903 = distinct !DILocation(line: 514, column: 28, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1797, file: !3, line: 514, column: 15)
!1905 = !DILocation(line: 514, column: 21, scope: !1904)
!1906 = !DILocation(line: 0, scope: !1867, inlinedAt: !1903)
!1907 = !DILocalVariable(name: "s", scope: !1908, file: !3, line: 416, type: !26)
!1908 = distinct !DISubprogram(name: "incr", scope: !3, file: !3, line: 414, type: !1909, scopeLine: 415, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1911)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{null, !152, !530}
!1911 = !{!1912, !1913, !1907, !1914}
!1912 = !DILocalVariable(name: "s0", arg: 1, scope: !1908, file: !3, line: 414, type: !152)
!1913 = !DILocalVariable(name: "s_len", arg: 2, scope: !1908, file: !3, line: 414, type: !530)
!1914 = !DILocalVariable(name: "endp", scope: !1908, file: !3, line: 417, type: !26)
!1915 = !DILocation(line: 0, scope: !1908, inlinedAt: !1916)
!1916 = distinct !DILocation(line: 512, column: 13, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1796, file: !3, line: 511, column: 11)
!1918 = !DILocation(line: 417, column: 18, scope: !1908, inlinedAt: !1916)
!1919 = !DILocation(line: 417, column: 27, scope: !1908, inlinedAt: !1916)
!1920 = !DILocation(line: 419, column: 3, scope: !1908, inlinedAt: !1916)
!1921 = !DILocation(line: 421, column: 18, scope: !1922, inlinedAt: !1916)
!1922 = distinct !DILexicalBlock(scope: !1923, file: !3, line: 421, column: 11)
!1923 = distinct !DILexicalBlock(scope: !1908, file: !3, line: 420, column: 5)
!1924 = !DILocation(line: 421, column: 21, scope: !1922, inlinedAt: !1916)
!1925 = !DILocation(line: 421, column: 11, scope: !1923, inlinedAt: !1916)
!1926 = !DILocation(line: 423, column: 12, scope: !1923, inlinedAt: !1916)
!1927 = !DILocation(line: 423, column: 15, scope: !1923, inlinedAt: !1916)
!1928 = !DILocation(line: 425, column: 15, scope: !1908, inlinedAt: !1916)
!1929 = !DILocation(line: 424, column: 5, scope: !1923, inlinedAt: !1916)
!1930 = distinct !{!1930, !1920, !1931}
!1931 = !DILocation(line: 425, column: 19, scope: !1908, inlinedAt: !1916)
!1932 = !DILocation(line: 426, column: 12, scope: !1908, inlinedAt: !1916)
!1933 = !DILocation(line: 427, column: 3, scope: !1908, inlinedAt: !1916)
!1934 = !DILocation(line: 428, column: 1, scope: !1908, inlinedAt: !1916)
!1935 = !DILocation(line: 511, column: 55, scope: !1917)
!1936 = distinct !{!1936, !1900, !1937}
!1937 = !DILocation(line: 512, column: 29, scope: !1796)
!1938 = !DILocation(line: 437, column: 13, scope: !1880, inlinedAt: !1903)
!1939 = !DILocation(line: 437, column: 7, scope: !1867, inlinedAt: !1903)
!1940 = !DILocation(line: 439, column: 11, scope: !1867, inlinedAt: !1903)
!1941 = !DILocation(line: 514, column: 26, scope: !1904)
!1942 = !DILocation(line: 514, column: 15, scope: !1797)
!1943 = !DILocation(line: 517, column: 22, scope: !1797)
!1944 = !DILocation(line: 517, column: 21, scope: !1797)
!1945 = !DILocation(line: 517, column: 16, scope: !1797)
!1946 = !DILocation(line: 517, column: 19, scope: !1797)
!1947 = !DILocation(line: 520, column: 21, scope: !1802)
!1948 = !DILocation(line: 520, column: 15, scope: !1797)
!1949 = !DILocation(line: 522, column: 24, scope: !1801)
!1950 = !DILocation(line: 523, column: 43, scope: !1801)
!1951 = !DILocation(line: 523, column: 20, scope: !1801)
!1952 = !DILocation(line: 524, column: 31, scope: !1801)
!1953 = !DILocation(line: 524, column: 50, scope: !1801)
!1954 = !DILocalVariable(name: "__dest", arg: 1, scope: !1955, file: !1414, line: 38, type: !83)
!1955 = distinct !DISubprogram(name: "memmove", scope: !1414, file: !1414, line: 38, type: !1956, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1958)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!83, !83, !168, !85}
!1958 = !{!1954, !1959, !1960}
!1959 = !DILocalVariable(name: "__src", arg: 2, scope: !1955, file: !1414, line: 38, type: !168)
!1960 = !DILocalVariable(name: "__len", arg: 3, scope: !1955, file: !1414, line: 38, type: !85)
!1961 = !DILocation(line: 0, scope: !1955, inlinedAt: !1962)
!1962 = distinct !DILocation(line: 524, column: 19, scope: !1801)
!1963 = !DILocation(line: 40, column: 10, scope: !1955, inlinedAt: !1962)
!1964 = !DILocation(line: 526, column: 45, scope: !1800)
!1965 = !DILocation(line: 526, column: 28, scope: !1800)
!1966 = !DILocation(line: 526, column: 19, scope: !1801)
!1967 = !DILocation(line: 528, column: 44, scope: !1799)
!1968 = !DILocation(line: 0, scope: !1799)
!1969 = !DILocation(line: 530, column: 25, scope: !1799)
!1970 = !DILocation(line: 531, column: 33, scope: !1799)
!1971 = !DILocation(line: 532, column: 30, scope: !1799)
!1972 = !DILocation(line: 533, column: 17, scope: !1799)
!1973 = !DILocation(line: 0, scope: !1797)
!1974 = !DILocation(line: 0, scope: !1890, inlinedAt: !1975)
!1975 = distinct !DILocation(line: 536, column: 18, scope: !1797)
!1976 = !DILocation(line: 48, column: 10, scope: !1890, inlinedAt: !1975)
!1977 = !DILocation(line: 539, column: 23, scope: !1807)
!1978 = !DILocation(line: 539, column: 37, scope: !1807)
!1979 = !DILocation(line: 539, column: 15, scope: !1797)
!1980 = !DILocation(line: 541, column: 19, scope: !1805)
!1981 = !DILocation(line: 541, column: 55, scope: !1805)
!1982 = !DILocation(line: 541, column: 19, scope: !1806)
!1983 = distinct !{!1983, !1898, !1984}
!1984 = !DILocation(line: 545, column: 9, scope: !1790)
!1985 = !DILocation(line: 542, column: 17, scope: !1805)
!1986 = !DILocation(line: 548, column: 12, scope: !1790)
!1987 = !DILocation(line: 548, column: 15, scope: !1790)
!1988 = !DILocation(line: 549, column: 11, scope: !1815)
!1989 = !DILocation(line: 549, column: 47, scope: !1815)
!1990 = !DILocation(line: 549, column: 11, scope: !1790)
!1991 = !DILocation(line: 550, column: 9, scope: !1815)
!1992 = !DILocation(line: 481, column: 9, scope: !1770)
!1993 = !DILocation(line: 555, column: 3, scope: !1770)
!1994 = !DILocation(line: 556, column: 3, scope: !1770)
!1995 = !DILocation(line: 557, column: 3, scope: !1770)
!1996 = distinct !DISubprogram(name: "scan_arg", scope: !3, file: !3, line: 149, type: !1997, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1999)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!197, !28}
!1999 = !{!2000, !2001, !2002, !2003, !2006, !2007}
!2000 = !DILocalVariable(name: "arg", arg: 1, scope: !1996, file: !3, line: 149, type: !28)
!2001 = !DILocalVariable(name: "ret", scope: !1996, file: !3, line: 151, type: !197)
!2002 = !DILocalVariable(name: "decimal_point", scope: !1996, file: !3, line: 175, type: !28)
!2003 = !DILocalVariable(name: "fraction_len", scope: !2004, file: !3, line: 182, type: !85)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !3, line: 181, column: 5)
!2005 = distinct !DILexicalBlock(scope: !1996, file: !3, line: 180, column: 7)
!2006 = !DILocalVariable(name: "e", scope: !2004, file: !3, line: 195, type: !28)
!2007 = !DILocalVariable(name: "exponent", scope: !2008, file: !3, line: 200, type: !61)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !3, line: 199, column: 9)
!2009 = distinct !DILexicalBlock(scope: !2004, file: !3, line: 198, column: 11)
!2010 = !DILocation(line: 0, scope: !1996)
!2011 = !DILocation(line: 151, column: 11, scope: !1996)
!2012 = !DILocation(line: 153, column: 35, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !1996, file: !3, line: 153, column: 7)
!2014 = !DILocation(line: 153, column: 9, scope: !2013)
!2015 = !DILocation(line: 153, column: 7, scope: !1996)
!2016 = !DILocation(line: 155, column: 20, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2013, file: !3, line: 154, column: 5)
!2018 = !DILocation(line: 155, column: 62, scope: !2017)
!2019 = !DILocation(line: 155, column: 7, scope: !2017)
!2020 = !DILocation(line: 156, column: 7, scope: !2017)
!2021 = !DILocation(line: 159, column: 7, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !1996, file: !3, line: 159, column: 7)
!2023 = !DILocation(line: 159, column: 7, scope: !1996)
!2024 = !DILocation(line: 167, column: 3, scope: !1996)
!2025 = !DILocation(line: 161, column: 20, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2022, file: !3, line: 160, column: 5)
!2027 = !DILocation(line: 161, column: 50, scope: !2026)
!2028 = !DILocation(line: 162, column: 14, scope: !2026)
!2029 = !DILocation(line: 161, column: 7, scope: !2026)
!2030 = !DILocation(line: 163, column: 7, scope: !2026)
!2031 = !DILocation(line: 167, column: 10, scope: !1996)
!2032 = !{!2033, !2033, i64 0}
!2033 = !{!"short", !1178, i64 0}
!2034 = !DILocation(line: 167, column: 44, scope: !1996)
!2035 = !DILocation(line: 167, column: 36, scope: !1996)
!2036 = !DILocation(line: 168, column: 8, scope: !1996)
!2037 = distinct !{!2037, !2024, !2036}
!2038 = !DILocation(line: 171, column: 7, scope: !1996)
!2039 = !DILocation(line: 171, column: 13, scope: !1996)
!2040 = !{!1474, !1476, i64 16}
!2041 = !DILocation(line: 172, column: 7, scope: !1996)
!2042 = !DILocation(line: 172, column: 17, scope: !1996)
!2043 = !DILocation(line: 175, column: 31, scope: !1996)
!2044 = !DILocation(line: 176, column: 9, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !1996, file: !3, line: 176, column: 7)
!2046 = !DILocation(line: 176, column: 23, scope: !2045)
!2047 = !DILocation(line: 176, column: 28, scope: !2045)
!2048 = !DILocation(line: 176, column: 7, scope: !1996)
!2049 = !DILocation(line: 177, column: 19, scope: !2045)
!2050 = !DILocation(line: 177, column: 5, scope: !2045)
!2051 = !DILocation(line: 180, column: 13, scope: !2005)
!2052 = !DILocation(line: 180, column: 9, scope: !2005)
!2053 = !DILocation(line: 180, column: 37, scope: !2005)
!2054 = !DILocation(line: 180, column: 34, scope: !2005)
!2055 = !DILocation(line: 0, scope: !2004)
!2056 = !DILocation(line: 183, column: 19, scope: !2004)
!2057 = !DILocation(line: 183, column: 17, scope: !2004)
!2058 = !DILocation(line: 185, column: 11, scope: !2004)
!2059 = !DILocation(line: 187, column: 49, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2061, file: !3, line: 186, column: 9)
!2061 = distinct !DILexicalBlock(scope: !2004, file: !3, line: 185, column: 11)
!2062 = !DILocation(line: 187, column: 26, scope: !2060)
!2063 = !DILocation(line: 188, column: 28, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2060, file: !3, line: 188, column: 15)
!2065 = !DILocation(line: 188, column: 15, scope: !2060)
!2066 = !DILocation(line: 189, column: 29, scope: !2064)
!2067 = !DILocation(line: 189, column: 27, scope: !2064)
!2068 = !DILocation(line: 190, column: 38, scope: !2060)
!2069 = !DILocation(line: 190, column: 25, scope: !2060)
!2070 = !DILocation(line: 192, column: 42, scope: !2060)
!2071 = !DILocation(line: 193, column: 28, scope: !2060)
!2072 = !DILocation(line: 193, column: 33, scope: !2060)
!2073 = !DILocation(line: 190, column: 21, scope: !2060)
!2074 = !DILocation(line: 194, column: 9, scope: !2060)
!2075 = !DILocation(line: 195, column: 23, scope: !2004)
!2076 = !DILocation(line: 196, column: 13, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2004, file: !3, line: 196, column: 11)
!2078 = !DILocation(line: 196, column: 11, scope: !2004)
!2079 = !DILocation(line: 197, column: 13, scope: !2077)
!2080 = !DILocation(line: 198, column: 11, scope: !2009)
!2081 = !DILocation(line: 198, column: 11, scope: !2004)
!2082 = !DILocation(line: 200, column: 37, scope: !2008)
!2083 = !DILocation(line: 200, column: 27, scope: !2008)
!2084 = !DILocation(line: 0, scope: !2008)
!2085 = !DILocation(line: 201, column: 37, scope: !2008)
!2086 = !DILocation(line: 201, column: 28, scope: !2008)
!2087 = !DILocation(line: 201, column: 25, scope: !2008)
!2088 = !DILocation(line: 204, column: 24, scope: !2008)
!2089 = !DILocation(line: 204, column: 42, scope: !2008)
!2090 = !DILocation(line: 204, column: 21, scope: !2008)
!2091 = !DILocation(line: 204, column: 37, scope: !2008)
!2092 = !DILocation(line: 206, column: 15, scope: !2008)
!2093 = !DILocation(line: 208, column: 19, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2095, file: !3, line: 207, column: 13)
!2095 = distinct !DILexicalBlock(scope: !2008, file: !3, line: 206, column: 15)
!2096 = !DILocation(line: 210, column: 42, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2098, file: !3, line: 210, column: 23)
!2098 = distinct !DILexicalBlock(scope: !2099, file: !3, line: 209, column: 17)
!2099 = distinct !DILexicalBlock(scope: !2094, file: !3, line: 208, column: 19)
!2100 = !DILocation(line: 210, column: 25, scope: !2097)
!2101 = !DILocation(line: 210, column: 23, scope: !2098)
!2102 = !DILocation(line: 211, column: 30, scope: !2097)
!2103 = !DILocation(line: 211, column: 21, scope: !2097)
!2104 = !DILocation(line: 214, column: 26, scope: !2099)
!2105 = !DILocation(line: 0, scope: !2099)
!2106 = !DILocation(line: 215, column: 26, scope: !2094)
!2107 = !DILocation(line: 216, column: 13, scope: !2094)
!2108 = !DILocation(line: 219, column: 33, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !3, line: 219, column: 19)
!2110 = distinct !DILexicalBlock(scope: !2095, file: !3, line: 218, column: 13)
!2111 = !DILocation(line: 219, column: 50, scope: !2109)
!2112 = !DILocation(line: 219, column: 58, scope: !2109)
!2113 = !DILocation(line: 219, column: 55, scope: !2109)
!2114 = !DILocation(line: 220, column: 26, scope: !2109)
!2115 = !DILocation(line: 220, column: 17, scope: !2109)
!2116 = !DILocation(line: 221, column: 24, scope: !2110)
!2117 = !DILocation(line: 223, column: 21, scope: !2008)
!2118 = !DILocation(line: 0, scope: !2095)
!2119 = !DILocation(line: 224, column: 9, scope: !2008)
!2120 = !DILocation(line: 228, column: 1, scope: !1996)
!2121 = distinct !DISubprogram(name: "io_error", scope: !3, file: !3, line: 291, type: !112, scopeLine: 292, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !31)
!2122 = !DILocation(line: 294, column: 3, scope: !2121)
!2123 = !DILocation(line: 295, column: 3, scope: !2121)
!2124 = distinct !DISubprogram(name: "cl_strtold", scope: !2125, file: !2125, line: 59, type: !2126, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !476, retainedNodes: !2129)
!2125 = !DIFile(filename: "./lib/cl-strtod.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!148, !28, !2128}
!2128 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !152)
!2129 = !{!2130, !2131, !2132, !2133, !2134, !2137, !2138}
!2130 = !DILocalVariable(name: "nptr", arg: 1, scope: !2124, file: !2125, line: 59, type: !28)
!2131 = !DILocalVariable(name: "endptr", arg: 2, scope: !2124, file: !2125, line: 59, type: !2128)
!2132 = !DILocalVariable(name: "end", scope: !2124, file: !2125, line: 61, type: !26)
!2133 = !DILocalVariable(name: "d", scope: !2124, file: !2125, line: 62, type: !148)
!2134 = !DILocalVariable(name: "strtod_errno", scope: !2135, file: !2125, line: 65, type: !30)
!2135 = distinct !DILexicalBlock(scope: !2136, file: !2125, line: 64, column: 5)
!2136 = distinct !DILexicalBlock(scope: !2124, file: !2125, line: 63, column: 7)
!2137 = !DILocalVariable(name: "c_end", scope: !2135, file: !2125, line: 66, type: !26)
!2138 = !DILocalVariable(name: "c", scope: !2135, file: !2125, line: 67, type: !148)
!2139 = !DILocation(line: 0, scope: !2124)
!2140 = !DILocation(line: 61, column: 3, scope: !2124)
!2141 = !DILocation(line: 62, column: 14, scope: !2124)
!2142 = !DILocation(line: 63, column: 8, scope: !2136)
!2143 = !DILocation(line: 63, column: 7, scope: !2136)
!2144 = !DILocation(line: 63, column: 7, scope: !2124)
!2145 = !DILocation(line: 65, column: 26, scope: !2135)
!2146 = !DILocation(line: 0, scope: !2135)
!2147 = !DILocation(line: 66, column: 7, scope: !2135)
!2148 = !DILocation(line: 67, column: 18, scope: !2135)
!2149 = !DILocation(line: 68, column: 17, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2135, file: !2125, line: 68, column: 11)
!2151 = !DILocation(line: 68, column: 15, scope: !2150)
!2152 = !DILocation(line: 68, column: 11, scope: !2135)
!2153 = !DILocation(line: 69, column: 20, scope: !2150)
!2154 = !DILocation(line: 69, column: 9, scope: !2150)
!2155 = !DILocation(line: 71, column: 15, scope: !2150)
!2156 = !DILocation(line: 72, column: 5, scope: !2136)
!2157 = !DILocation(line: 72, column: 5, scope: !2135)
!2158 = !DILocation(line: 73, column: 7, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2124, file: !2125, line: 73, column: 7)
!2160 = !DILocation(line: 73, column: 7, scope: !2124)
!2161 = !DILocation(line: 74, column: 13, scope: !2159)
!2162 = !DILocation(line: 74, column: 5, scope: !2159)
!2163 = !DILocation(line: 76, column: 1, scope: !2124)
!2164 = !DILocation(line: 75, column: 3, scope: !2124)
!2165 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !230, file: !230, line: 51, type: !95, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !229, retainedNodes: !2166)
!2166 = !{!2167}
!2167 = !DILocalVariable(name: "file", arg: 1, scope: !2165, file: !230, line: 51, type: !28)
!2168 = !DILocation(line: 0, scope: !2165)
!2169 = !DILocation(line: 53, column: 13, scope: !2165)
!2170 = !DILocation(line: 54, column: 1, scope: !2165)
!2171 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !230, file: !230, line: 88, type: !2172, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !229, retainedNodes: !2174)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{null, !145}
!2174 = !{!2175}
!2175 = !DILocalVariable(name: "ignore", arg: 1, scope: !2171, file: !230, line: 88, type: !145)
!2176 = !DILocation(line: 0, scope: !2171)
!2177 = !DILocation(line: 90, column: 16, scope: !2171)
!2178 = !DILocation(line: 91, column: 1, scope: !2171)
!2179 = distinct !DISubprogram(name: "close_stdout", scope: !230, file: !230, line: 117, type: !112, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !229, retainedNodes: !2180)
!2180 = !{!2181}
!2181 = !DILocalVariable(name: "write_error", scope: !2182, file: !230, line: 122, type: !28)
!2182 = distinct !DILexicalBlock(scope: !2183, file: !230, line: 121, column: 5)
!2183 = distinct !DILexicalBlock(scope: !2179, file: !230, line: 119, column: 7)
!2184 = !DILocation(line: 119, column: 21, scope: !2183)
!2185 = !DILocation(line: 119, column: 7, scope: !2183)
!2186 = !DILocation(line: 119, column: 29, scope: !2183)
!2187 = !DILocation(line: 120, column: 7, scope: !2183)
!2188 = !DILocation(line: 120, column: 12, scope: !2183)
!2189 = !DILocation(line: 120, column: 25, scope: !2183)
!2190 = !DILocation(line: 120, column: 28, scope: !2183)
!2191 = !DILocation(line: 120, column: 34, scope: !2183)
!2192 = !DILocation(line: 119, column: 7, scope: !2179)
!2193 = !DILocation(line: 122, column: 33, scope: !2182)
!2194 = !DILocation(line: 0, scope: !2182)
!2195 = !DILocation(line: 123, column: 11, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2182, file: !230, line: 123, column: 11)
!2197 = !DILocation(line: 0, scope: !2196)
!2198 = !DILocation(line: 123, column: 11, scope: !2182)
!2199 = !DILocation(line: 124, column: 36, scope: !2196)
!2200 = !DILocation(line: 124, column: 9, scope: !2196)
!2201 = !DILocation(line: 127, column: 9, scope: !2196)
!2202 = !DILocation(line: 129, column: 14, scope: !2182)
!2203 = !DILocation(line: 129, column: 7, scope: !2182)
!2204 = !DILocation(line: 134, column: 42, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2179, file: !230, line: 134, column: 7)
!2206 = !DILocation(line: 134, column: 28, scope: !2205)
!2207 = !DILocation(line: 134, column: 50, scope: !2205)
!2208 = !DILocation(line: 134, column: 7, scope: !2179)
!2209 = !DILocation(line: 135, column: 12, scope: !2205)
!2210 = !DILocation(line: 135, column: 5, scope: !2205)
!2211 = !DILocation(line: 136, column: 1, scope: !2179)
!2212 = distinct !DISubprogram(name: "set_program_name", scope: !282, file: !282, line: 39, type: !95, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !281, retainedNodes: !2213)
!2213 = !{!2214, !2215, !2216}
!2214 = !DILocalVariable(name: "argv0", arg: 1, scope: !2212, file: !282, line: 39, type: !28)
!2215 = !DILocalVariable(name: "slash", scope: !2212, file: !282, line: 46, type: !28)
!2216 = !DILocalVariable(name: "base", scope: !2212, file: !282, line: 47, type: !28)
!2217 = !DILocation(line: 0, scope: !2212)
!2218 = !DILocation(line: 51, column: 13, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2212, file: !282, line: 51, column: 7)
!2220 = !DILocation(line: 51, column: 7, scope: !2212)
!2221 = !DILocation(line: 55, column: 14, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2219, file: !282, line: 52, column: 5)
!2223 = !DILocation(line: 54, column: 7, scope: !2222)
!2224 = !DILocation(line: 56, column: 7, scope: !2222)
!2225 = !DILocation(line: 59, column: 11, scope: !2212)
!2226 = !DILocation(line: 60, column: 17, scope: !2212)
!2227 = !DILocation(line: 60, column: 11, scope: !2212)
!2228 = !DILocation(line: 61, column: 12, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2212, file: !282, line: 61, column: 7)
!2230 = !DILocation(line: 61, column: 20, scope: !2229)
!2231 = !DILocation(line: 61, column: 25, scope: !2229)
!2232 = !DILocation(line: 61, column: 42, scope: !2229)
!2233 = !DILocation(line: 61, column: 28, scope: !2229)
!2234 = !DILocation(line: 61, column: 61, scope: !2229)
!2235 = !DILocation(line: 61, column: 7, scope: !2212)
!2236 = !DILocation(line: 64, column: 11, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !282, line: 64, column: 11)
!2238 = distinct !DILexicalBlock(scope: !2229, file: !282, line: 62, column: 5)
!2239 = !DILocation(line: 64, column: 36, scope: !2237)
!2240 = !DILocation(line: 64, column: 11, scope: !2238)
!2241 = !DILocation(line: 66, column: 24, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2237, file: !282, line: 65, column: 9)
!2243 = !DILocation(line: 70, column: 41, scope: !2242)
!2244 = !DILocation(line: 72, column: 9, scope: !2242)
!2245 = !DILocation(line: 84, column: 16, scope: !2212)
!2246 = !DILocation(line: 90, column: 27, scope: !2212)
!2247 = !DILocation(line: 92, column: 1, scope: !2212)
!2248 = distinct !DISubprogram(name: "clone_quoting_options", scope: !323, file: !323, line: 122, type: !2249, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !322, retainedNodes: !2252)
!2249 = !DISubroutineType(types: !2250)
!2250 = !{!2251, !2251}
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!2252 = !{!2253, !2254, !2255}
!2253 = !DILocalVariable(name: "o", arg: 1, scope: !2248, file: !323, line: 122, type: !2251)
!2254 = !DILocalVariable(name: "e", scope: !2248, file: !323, line: 124, type: !30)
!2255 = !DILocalVariable(name: "p", scope: !2248, file: !323, line: 125, type: !2251)
!2256 = !DILocation(line: 0, scope: !2248)
!2257 = !DILocation(line: 124, column: 11, scope: !2248)
!2258 = !DILocation(line: 125, column: 40, scope: !2248)
!2259 = !DILocation(line: 125, column: 31, scope: !2248)
!2260 = !DILocation(line: 127, column: 9, scope: !2248)
!2261 = !DILocation(line: 128, column: 3, scope: !2248)
!2262 = distinct !DISubprogram(name: "get_quoting_style", scope: !323, file: !323, line: 133, type: !2263, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !322, retainedNodes: !2265)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{!325, !351}
!2265 = !{!2266}
!2266 = !DILocalVariable(name: "o", arg: 1, scope: !2262, file: !323, line: 133, type: !351)
!2267 = !DILocation(line: 0, scope: !2262)
!2268 = !DILocation(line: 135, column: 11, scope: !2262)
!2269 = !DILocation(line: 135, column: 46, scope: !2262)
!2270 = !{!2271, !1178, i64 0}
!2271 = !{!"quoting_options", !1178, i64 0, !1266, i64 4, !1178, i64 8, !1177, i64 40, !1177, i64 48}
!2272 = !DILocation(line: 135, column: 3, scope: !2262)
!2273 = distinct !DISubprogram(name: "set_quoting_style", scope: !323, file: !323, line: 141, type: !2274, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !322, retainedNodes: !2276)
!2274 = !DISubroutineType(types: !2275)
!2275 = !{null, !2251, !325}
!2276 = !{!2277, !2278}
!2277 = !DILocalVariable(name: "o", arg: 1, scope: !2273, file: !323, line: 141, type: !2251)
!2278 = !DILocalVariable(name: "s", arg: 2, scope: !2273, file: !323, line: 141, type: !325)
!2279 = !DILocation(line: 0, scope: !2273)
!2280 = !DILocation(line: 143, column: 4, scope: !2273)
!2281 = !DILocation(line: 143, column: 39, scope: !2273)
!2282 = !DILocation(line: 143, column: 45, scope: !2273)
!2283 = !DILocation(line: 144, column: 1, scope: !2273)
!2284 = distinct !DISubprogram(name: "set_char_quoting", scope: !323, file: !323, line: 152, type: !2285, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !322, retainedNodes: !2287)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!30, !2251, !27, !30}
!2287 = !{!2288, !2289, !2290, !2291, !2292, !2294, !2295}
!2288 = !DILocalVariable(name: "o", arg: 1, scope: !2284, file: !323, line: 152, type: !2251)
!2289 = !DILocalVariable(name: "c", arg: 2, scope: !2284, file: !323, line: 152, type: !27)
!2290 = !DILocalVariable(name: "i", arg: 3, scope: !2284, file: !323, line: 152, type: !30)
!2291 = !DILocalVariable(name: "uc", scope: !2284, file: !323, line: 154, type: !170)
!2292 = !DILocalVariable(name: "p", scope: !2284, file: !323, line: 155, type: !2293)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2294 = !DILocalVariable(name: "shift", scope: !2284, file: !323, line: 157, type: !30)
!2295 = !DILocalVariable(name: "r", scope: !2284, file: !323, line: 158, type: !30)
!2296 = !DILocation(line: 0, scope: !2284)
!2297 = !DILocation(line: 156, column: 6, scope: !2284)
!2298 = !DILocation(line: 156, column: 62, scope: !2284)
!2299 = !DILocation(line: 156, column: 57, scope: !2284)
!2300 = !DILocation(line: 157, column: 15, scope: !2284)
!2301 = !DILocation(line: 158, column: 12, scope: !2284)
!2302 = !DILocation(line: 158, column: 15, scope: !2284)
!2303 = !DILocation(line: 158, column: 25, scope: !2284)
!2304 = !DILocation(line: 159, column: 13, scope: !2284)
!2305 = !DILocation(line: 159, column: 18, scope: !2284)
!2306 = !DILocation(line: 159, column: 23, scope: !2284)
!2307 = !DILocation(line: 159, column: 6, scope: !2284)
!2308 = !DILocation(line: 160, column: 3, scope: !2284)
!2309 = distinct !DISubprogram(name: "set_quoting_flags", scope: !323, file: !323, line: 168, type: !2310, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !322, retainedNodes: !2312)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{!30, !2251, !30}
!2312 = !{!2313, !2314, !2315}
!2313 = !DILocalVariable(name: "o", arg: 1, scope: !2309, file: !323, line: 168, type: !2251)
!2314 = !DILocalVariable(name: "i", arg: 2, scope: !2309, file: !323, line: 168, type: !30)
!2315 = !DILocalVariable(name: "r", scope: !2309, file: !323, line: 170, type: !30)
!2316 = !DILocation(line: 0, scope: !2309)
!2317 = !DILocation(line: 171, column: 8, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2309, file: !323, line: 171, column: 7)
!2319 = !DILocation(line: 171, column: 7, scope: !2309)
!2320 = !DILocation(line: 173, column: 10, scope: !2309)
!2321 = !{!2271, !1266, i64 4}
!2322 = !DILocation(line: 174, column: 12, scope: !2309)
!2323 = !DILocation(line: 175, column: 3, scope: !2309)
!2324 = distinct !DISubprogram(name: "set_custom_quoting", scope: !323, file: !323, line: 179, type: !2325, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !322, retainedNodes: !2327)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{null, !2251, !28, !28}
!2327 = !{!2328, !2329, !2330}
!2328 = !DILocalVariable(name: "o", arg: 1, scope: !2324, file: !323, line: 179, type: !2251)
!2329 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2324, file: !323, line: 180, type: !28)
!2330 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2324, file: !323, line: 180, type: !28)
!2331 = !DILocation(line: 0, scope: !2324)
!2332 = !DILocation(line: 182, column: 8, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2324, file: !323, line: 182, column: 7)
!2334 = !DILocation(line: 182, column: 7, scope: !2324)
!2335 = !DILocation(line: 184, column: 6, scope: !2324)
!2336 = !DILocation(line: 184, column: 12, scope: !2324)
!2337 = !DILocation(line: 185, column: 8, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2324, file: !323, line: 185, column: 7)
!2339 = !DILocation(line: 185, column: 23, scope: !2338)
!2340 = !DILocation(line: 185, column: 19, scope: !2338)
!2341 = !DILocation(line: 186, column: 5, scope: !2338)
!2342 = !DILocation(line: 187, column: 6, scope: !2324)
!2343 = !DILocation(line: 187, column: 17, scope: !2324)
!2344 = !{!2271, !1177, i64 40}
!2345 = !DILocation(line: 188, column: 6, scope: !2324)
!2346 = !DILocation(line: 188, column: 18, scope: !2324)
!2347 = !{!2271, !1177, i64 48}
!2348 = !DILocation(line: 189, column: 1, scope: !2324)
!2349 = distinct !DISubprogram(name: "quotearg_buffer", scope: !323, file: !323, line: 784, type: !2350, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !322, retainedNodes: !2352)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!85, !26, !85, !28, !85, !351}
!2352 = !{!2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360}
!2353 = !DILocalVariable(name: "buffer", arg: 1, scope: !2349, file: !323, line: 784, type: !26)
!2354 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2349, file: !323, line: 784, type: !85)
!2355 = !DILocalVariable(name: "arg", arg: 3, scope: !2349, file: !323, line: 785, type: !28)
!2356 = !DILocalVariable(name: "argsize", arg: 4, scope: !2349, file: !323, line: 785, type: !85)
!2357 = !DILocalVariable(name: "o", arg: 5, scope: !2349, file: !323, line: 786, type: !351)
!2358 = !DILocalVariable(name: "p", scope: !2349, file: !323, line: 788, type: !351)
!2359 = !DILocalVariable(name: "e", scope: !2349, file: !323, line: 789, type: !30)
!2360 = !DILocalVariable(name: "r", scope: !2349, file: !323, line: 790, type: !85)
!2361 = !DILocation(line: 0, scope: !2349)
!2362 = !DILocation(line: 788, column: 37, scope: !2349)
!2363 = !DILocation(line: 789, column: 11, scope: !2349)
!2364 = !DILocation(line: 791, column: 43, scope: !2349)
!2365 = !DILocation(line: 791, column: 53, scope: !2349)
!2366 = !DILocation(line: 791, column: 60, scope: !2349)
!2367 = !DILocation(line: 792, column: 43, scope: !2349)
!2368 = !DILocation(line: 792, column: 58, scope: !2349)
!2369 = !DILocation(line: 790, column: 14, scope: !2349)
!2370 = !DILocation(line: 793, column: 9, scope: !2349)
!2371 = !DILocation(line: 794, column: 3, scope: !2349)
!2372 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !323, file: !323, line: 256, type: !2373, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !322, retainedNodes: !2377)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{!85, !26, !85, !28, !85, !325, !30, !2375, !28, !28}
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2377 = !{!2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2402, !2403, !2404, !2405, !2406, !2409, !2410, !2416, !2419, !2420, !2427, !2430, !2431, !2432, !2433, !2434, !2435}
!2378 = !DILocalVariable(name: "buffer", arg: 1, scope: !2372, file: !323, line: 256, type: !26)
!2379 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2372, file: !323, line: 256, type: !85)
!2380 = !DILocalVariable(name: "arg", arg: 3, scope: !2372, file: !323, line: 257, type: !28)
!2381 = !DILocalVariable(name: "argsize", arg: 4, scope: !2372, file: !323, line: 257, type: !85)
!2382 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2372, file: !323, line: 258, type: !325)
!2383 = !DILocalVariable(name: "flags", arg: 6, scope: !2372, file: !323, line: 258, type: !30)
!2384 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2372, file: !323, line: 259, type: !2375)
!2385 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2372, file: !323, line: 260, type: !28)
!2386 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2372, file: !323, line: 261, type: !28)
!2387 = !DILocalVariable(name: "i", scope: !2372, file: !323, line: 263, type: !85)
!2388 = !DILocalVariable(name: "len", scope: !2372, file: !323, line: 264, type: !85)
!2389 = !DILocalVariable(name: "orig_buffersize", scope: !2372, file: !323, line: 265, type: !85)
!2390 = !DILocalVariable(name: "quote_string", scope: !2372, file: !323, line: 266, type: !28)
!2391 = !DILocalVariable(name: "quote_string_len", scope: !2372, file: !323, line: 267, type: !85)
!2392 = !DILocalVariable(name: "backslash_escapes", scope: !2372, file: !323, line: 268, type: !145)
!2393 = !DILocalVariable(name: "unibyte_locale", scope: !2372, file: !323, line: 269, type: !145)
!2394 = !DILocalVariable(name: "elide_outer_quotes", scope: !2372, file: !323, line: 270, type: !145)
!2395 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2372, file: !323, line: 271, type: !145)
!2396 = !DILocalVariable(name: "encountered_single_quote", scope: !2372, file: !323, line: 272, type: !145)
!2397 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2372, file: !323, line: 273, type: !145)
!2398 = !DILocalVariable(name: "c", scope: !2399, file: !323, line: 402, type: !170)
!2399 = distinct !DILexicalBlock(scope: !2400, file: !323, line: 401, column: 5)
!2400 = distinct !DILexicalBlock(scope: !2401, file: !323, line: 400, column: 3)
!2401 = distinct !DILexicalBlock(scope: !2372, file: !323, line: 400, column: 3)
!2402 = !DILocalVariable(name: "esc", scope: !2399, file: !323, line: 403, type: !170)
!2403 = !DILocalVariable(name: "is_right_quote", scope: !2399, file: !323, line: 404, type: !145)
!2404 = !DILocalVariable(name: "escaping", scope: !2399, file: !323, line: 405, type: !145)
!2405 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2399, file: !323, line: 406, type: !145)
!2406 = !DILocalVariable(name: "m", scope: !2407, file: !323, line: 610, type: !85)
!2407 = distinct !DILexicalBlock(scope: !2408, file: !323, line: 608, column: 11)
!2408 = distinct !DILexicalBlock(scope: !2399, file: !323, line: 426, column: 9)
!2409 = !DILocalVariable(name: "printable", scope: !2407, file: !323, line: 612, type: !145)
!2410 = !DILocalVariable(name: "mbstate", scope: !2411, file: !323, line: 621, type: !2413)
!2411 = distinct !DILexicalBlock(scope: !2412, file: !323, line: 620, column: 15)
!2412 = distinct !DILexicalBlock(scope: !2407, file: !323, line: 614, column: 17)
!2413 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2414, line: 6, baseType: !2415)
!2414 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!2415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !372, line: 21, baseType: !371)
!2416 = !DILocalVariable(name: "w", scope: !2417, file: !323, line: 631, type: !2418)
!2417 = distinct !DILexicalBlock(scope: !2411, file: !323, line: 630, column: 19)
!2418 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !86, line: 74, baseType: !30)
!2419 = !DILocalVariable(name: "bytes", scope: !2417, file: !323, line: 632, type: !85)
!2420 = !DILocalVariable(name: "j", scope: !2421, file: !323, line: 657, type: !85)
!2421 = distinct !DILexicalBlock(scope: !2422, file: !323, line: 656, column: 27)
!2422 = distinct !DILexicalBlock(scope: !2423, file: !323, line: 654, column: 29)
!2423 = distinct !DILexicalBlock(scope: !2424, file: !323, line: 649, column: 23)
!2424 = distinct !DILexicalBlock(scope: !2425, file: !323, line: 641, column: 30)
!2425 = distinct !DILexicalBlock(scope: !2426, file: !323, line: 636, column: 30)
!2426 = distinct !DILexicalBlock(scope: !2417, file: !323, line: 634, column: 25)
!2427 = !DILocalVariable(name: "ilim", scope: !2428, file: !323, line: 684, type: !85)
!2428 = distinct !DILexicalBlock(scope: !2429, file: !323, line: 681, column: 15)
!2429 = distinct !DILexicalBlock(scope: !2407, file: !323, line: 680, column: 17)
!2430 = !DILabel(scope: !2372, name: "process_input", file: !323, line: 314)
!2431 = !DILabel(scope: !2408, name: "c_and_shell_escape", file: !323, line: 512)
!2432 = !DILabel(scope: !2408, name: "c_escape", file: !323, line: 517)
!2433 = !DILabel(scope: !2399, name: "store_escape", file: !323, line: 719)
!2434 = !DILabel(scope: !2399, name: "store_c", file: !323, line: 722)
!2435 = !DILabel(scope: !2372, name: "force_outer_quoting_style", file: !323, line: 763)
!2436 = !DILocation(line: 0, scope: !2372)
!2437 = !DILocation(line: 269, column: 25, scope: !2372)
!2438 = !DILocation(line: 269, column: 36, scope: !2372)
!2439 = !DILocation(line: 270, column: 8, scope: !2372)
!2440 = !DILocation(line: 0, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2408, file: !323, line: 526, column: 15)
!2442 = !DILocation(line: 0, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2444, file: !323, line: 462, column: 19)
!2444 = distinct !DILexicalBlock(scope: !2408, file: !323, line: 455, column: 13)
!2445 = !DILocation(line: 0, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2447, file: !323, line: 449, column: 20)
!2447 = distinct !DILexicalBlock(scope: !2408, file: !323, line: 428, column: 15)
!2448 = !DILocation(line: 0, scope: !2411)
!2449 = !DILocation(line: 0, scope: !2417)
!2450 = !DILocation(line: 0, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2399, file: !323, line: 712, column: 11)
!2452 = !DILocation(line: 273, column: 3, scope: !2372)
!2453 = !DILocation(line: 265, column: 10, scope: !2372)
!2454 = !DILocation(line: 266, column: 15, scope: !2372)
!2455 = !DILocation(line: 267, column: 10, scope: !2372)
!2456 = !DILocation(line: 268, column: 8, scope: !2372)
!2457 = !DILocation(line: 271, column: 8, scope: !2372)
!2458 = !DILocation(line: 272, column: 8, scope: !2372)
!2459 = !DILocation(line: 273, column: 8, scope: !2372)
!2460 = !DILocation(line: 314, column: 2, scope: !2372)
!2461 = !DILocation(line: 316, column: 3, scope: !2372)
!2462 = !DILocation(line: 323, column: 11, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2372, file: !323, line: 317, column: 5)
!2464 = !DILocation(line: 323, column: 12, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2463, file: !323, line: 323, column: 11)
!2466 = !DILocation(line: 324, column: 9, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2468, file: !323, line: 324, column: 9)
!2468 = distinct !DILexicalBlock(scope: !2465, file: !323, line: 324, column: 9)
!2469 = !DILocation(line: 324, column: 9, scope: !2468)
!2470 = !DILocation(line: 362, column: 26, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2472, file: !323, line: 340, column: 11)
!2472 = distinct !DILexicalBlock(scope: !2473, file: !323, line: 339, column: 13)
!2473 = distinct !DILexicalBlock(scope: !2463, file: !323, line: 338, column: 7)
!2474 = !DILocation(line: 363, column: 27, scope: !2471)
!2475 = !DILocation(line: 364, column: 11, scope: !2471)
!2476 = !DILocation(line: 365, column: 14, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2473, file: !323, line: 365, column: 13)
!2478 = !DILocation(line: 365, column: 13, scope: !2473)
!2479 = !DILocation(line: 366, column: 43, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2481, file: !323, line: 366, column: 11)
!2481 = distinct !DILexicalBlock(scope: !2477, file: !323, line: 366, column: 11)
!2482 = !DILocation(line: 366, column: 11, scope: !2481)
!2483 = !DILocation(line: 367, column: 13, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2485, file: !323, line: 367, column: 13)
!2485 = distinct !DILexicalBlock(scope: !2480, file: !323, line: 367, column: 13)
!2486 = !DILocation(line: 367, column: 13, scope: !2485)
!2487 = !DILocation(line: 366, column: 70, scope: !2480)
!2488 = distinct !{!2488, !2482, !2489}
!2489 = !DILocation(line: 367, column: 13, scope: !2481)
!2490 = !DILocation(line: 264, column: 10, scope: !2372)
!2491 = !DILocation(line: 370, column: 28, scope: !2473)
!2492 = !DILocation(line: 372, column: 7, scope: !2463)
!2493 = !DILocation(line: 376, column: 7, scope: !2463)
!2494 = !DILocation(line: 379, column: 7, scope: !2463)
!2495 = !DILocation(line: 381, column: 12, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2463, file: !323, line: 381, column: 11)
!2497 = !DILocation(line: 381, column: 11, scope: !2463)
!2498 = !DILocation(line: 386, column: 12, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2463, file: !323, line: 386, column: 11)
!2500 = !DILocation(line: 386, column: 11, scope: !2463)
!2501 = !DILocation(line: 387, column: 9, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2503, file: !323, line: 387, column: 9)
!2503 = distinct !DILexicalBlock(scope: !2499, file: !323, line: 387, column: 9)
!2504 = !DILocation(line: 387, column: 9, scope: !2503)
!2505 = !DILocation(line: 394, column: 7, scope: !2463)
!2506 = !DILocation(line: 397, column: 7, scope: !2463)
!2507 = !DILocation(line: 0, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2399, file: !323, line: 408, column: 11)
!2509 = !DILocation(line: 0, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2511, file: !323, line: 419, column: 15)
!2511 = distinct !DILexicalBlock(scope: !2508, file: !323, line: 418, column: 9)
!2512 = !DILocation(line: 0, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2408, file: !323, line: 556, column: 15)
!2514 = !DILocation(line: 0, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2408, file: !323, line: 548, column: 15)
!2516 = !DILocation(line: 0, scope: !2422)
!2517 = !DILocation(line: 0, scope: !2429)
!2518 = !DILocation(line: 0, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2408, file: !323, line: 509, column: 15)
!2520 = !DILocation(line: 400, column: 8, scope: !2401)
!2521 = !DILocation(line: 0, scope: !2401)
!2522 = !DILocation(line: 400, column: 27, scope: !2400)
!2523 = !DILocation(line: 400, column: 19, scope: !2400)
!2524 = !DILocation(line: 400, column: 41, scope: !2400)
!2525 = !DILocation(line: 400, column: 48, scope: !2400)
!2526 = !DILocation(line: 400, column: 3, scope: !2401)
!2527 = !DILocation(line: 400, column: 60, scope: !2400)
!2528 = !DILocation(line: 0, scope: !2399)
!2529 = !DILocation(line: 409, column: 11, scope: !2508)
!2530 = !DILocation(line: 411, column: 17, scope: !2508)
!2531 = !DILocation(line: 412, column: 39, scope: !2508)
!2532 = !DILocation(line: 416, column: 32, scope: !2508)
!2533 = !DILocation(line: 412, column: 19, scope: !2508)
!2534 = !DILocation(line: 412, column: 15, scope: !2508)
!2535 = !DILocation(line: 417, column: 11, scope: !2508)
!2536 = !DILocation(line: 417, column: 26, scope: !2508)
!2537 = !DILocation(line: 417, column: 14, scope: !2508)
!2538 = !DILocation(line: 417, column: 63, scope: !2508)
!2539 = !DILocation(line: 408, column: 11, scope: !2399)
!2540 = !DILocation(line: 424, column: 11, scope: !2399)
!2541 = !DILocation(line: 425, column: 7, scope: !2399)
!2542 = !DILocation(line: 428, column: 15, scope: !2408)
!2543 = !DILocation(line: 430, column: 15, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2545, file: !323, line: 430, column: 15)
!2545 = distinct !DILexicalBlock(scope: !2447, file: !323, line: 429, column: 13)
!2546 = !DILocation(line: 430, column: 15, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2544, file: !323, line: 430, column: 15)
!2548 = !DILocation(line: 430, column: 15, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2550, file: !323, line: 430, column: 15)
!2550 = distinct !DILexicalBlock(scope: !2551, file: !323, line: 430, column: 15)
!2551 = distinct !DILexicalBlock(scope: !2547, file: !323, line: 430, column: 15)
!2552 = !DILocation(line: 430, column: 15, scope: !2550)
!2553 = !DILocation(line: 430, column: 15, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2555, file: !323, line: 430, column: 15)
!2555 = distinct !DILexicalBlock(scope: !2551, file: !323, line: 430, column: 15)
!2556 = !DILocation(line: 430, column: 15, scope: !2555)
!2557 = !DILocation(line: 430, column: 15, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2559, file: !323, line: 430, column: 15)
!2559 = distinct !DILexicalBlock(scope: !2551, file: !323, line: 430, column: 15)
!2560 = !DILocation(line: 430, column: 15, scope: !2559)
!2561 = !DILocation(line: 430, column: 15, scope: !2551)
!2562 = !DILocation(line: 430, column: 15, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2564, file: !323, line: 430, column: 15)
!2564 = distinct !DILexicalBlock(scope: !2544, file: !323, line: 430, column: 15)
!2565 = !DILocation(line: 430, column: 15, scope: !2564)
!2566 = !DILocation(line: 438, column: 19, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2545, file: !323, line: 437, column: 19)
!2568 = !DILocation(line: 438, column: 24, scope: !2567)
!2569 = !DILocation(line: 438, column: 28, scope: !2567)
!2570 = !DILocation(line: 438, column: 38, scope: !2567)
!2571 = !DILocation(line: 438, column: 48, scope: !2567)
!2572 = !DILocation(line: 438, column: 59, scope: !2567)
!2573 = !DILocation(line: 440, column: 19, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2575, file: !323, line: 440, column: 19)
!2575 = distinct !DILexicalBlock(scope: !2576, file: !323, line: 440, column: 19)
!2576 = distinct !DILexicalBlock(scope: !2567, file: !323, line: 439, column: 17)
!2577 = !DILocation(line: 440, column: 19, scope: !2575)
!2578 = !DILocation(line: 441, column: 19, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2580, file: !323, line: 441, column: 19)
!2580 = distinct !DILexicalBlock(scope: !2576, file: !323, line: 441, column: 19)
!2581 = !DILocation(line: 441, column: 19, scope: !2580)
!2582 = !DILocation(line: 442, column: 17, scope: !2576)
!2583 = !DILocation(line: 449, column: 20, scope: !2447)
!2584 = !DILocation(line: 454, column: 11, scope: !2408)
!2585 = !DILocation(line: 457, column: 19, scope: !2444)
!2586 = !DILocation(line: 463, column: 19, scope: !2443)
!2587 = !DILocation(line: 463, column: 24, scope: !2443)
!2588 = !DILocation(line: 463, column: 28, scope: !2443)
!2589 = !DILocation(line: 463, column: 38, scope: !2443)
!2590 = !DILocation(line: 463, column: 47, scope: !2443)
!2591 = !DILocation(line: 463, column: 41, scope: !2443)
!2592 = !DILocation(line: 463, column: 52, scope: !2443)
!2593 = !DILocation(line: 462, column: 19, scope: !2444)
!2594 = !DILocation(line: 464, column: 25, scope: !2443)
!2595 = !DILocation(line: 464, column: 17, scope: !2443)
!2596 = !DILocation(line: 471, column: 25, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2443, file: !323, line: 465, column: 19)
!2598 = !DILocation(line: 475, column: 21, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2600, file: !323, line: 475, column: 21)
!2600 = distinct !DILexicalBlock(scope: !2597, file: !323, line: 475, column: 21)
!2601 = !DILocation(line: 475, column: 21, scope: !2600)
!2602 = !DILocation(line: 476, column: 21, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2604, file: !323, line: 476, column: 21)
!2604 = distinct !DILexicalBlock(scope: !2597, file: !323, line: 476, column: 21)
!2605 = !DILocation(line: 476, column: 21, scope: !2604)
!2606 = !DILocation(line: 477, column: 21, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2608, file: !323, line: 477, column: 21)
!2608 = distinct !DILexicalBlock(scope: !2597, file: !323, line: 477, column: 21)
!2609 = !DILocation(line: 477, column: 21, scope: !2608)
!2610 = !DILocation(line: 478, column: 21, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2612, file: !323, line: 478, column: 21)
!2612 = distinct !DILexicalBlock(scope: !2597, file: !323, line: 478, column: 21)
!2613 = !DILocation(line: 478, column: 21, scope: !2612)
!2614 = !DILocation(line: 479, column: 21, scope: !2597)
!2615 = !DILocation(line: 492, column: 31, scope: !2408)
!2616 = !DILocation(line: 493, column: 31, scope: !2408)
!2617 = !DILocation(line: 495, column: 31, scope: !2408)
!2618 = !DILocation(line: 496, column: 31, scope: !2408)
!2619 = !DILocation(line: 497, column: 31, scope: !2408)
!2620 = !DILocation(line: 500, column: 15, scope: !2408)
!2621 = !DILocation(line: 502, column: 19, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2623, file: !323, line: 501, column: 13)
!2623 = distinct !DILexicalBlock(scope: !2408, file: !323, line: 500, column: 15)
!2624 = !DILocation(line: 509, column: 33, scope: !2519)
!2625 = !DILocation(line: 0, scope: !2408)
!2626 = !DILocation(line: 512, column: 9, scope: !2408)
!2627 = !DILocation(line: 514, column: 15, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2408, file: !323, line: 513, column: 15)
!2629 = !DILocation(line: 517, column: 9, scope: !2408)
!2630 = !DILocation(line: 518, column: 15, scope: !2408)
!2631 = !DILocation(line: 526, column: 15, scope: !2408)
!2632 = !DILocation(line: 526, column: 40, scope: !2441)
!2633 = !DILocation(line: 526, column: 47, scope: !2441)
!2634 = !DILocation(line: 526, column: 18, scope: !2441)
!2635 = !DILocation(line: 530, column: 17, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2408, file: !323, line: 530, column: 15)
!2637 = !DILocation(line: 530, column: 15, scope: !2408)
!2638 = !DILocation(line: 535, column: 11, scope: !2408)
!2639 = !DILocation(line: 549, column: 15, scope: !2515)
!2640 = !DILocation(line: 556, column: 15, scope: !2408)
!2641 = !DILocation(line: 558, column: 19, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2513, file: !323, line: 557, column: 13)
!2643 = !DILocation(line: 561, column: 19, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2642, file: !323, line: 561, column: 19)
!2645 = !DILocation(line: 561, column: 35, scope: !2644)
!2646 = !DILocation(line: 561, column: 30, scope: !2644)
!2647 = !DILocation(line: 570, column: 15, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2649, file: !323, line: 570, column: 15)
!2649 = distinct !DILexicalBlock(scope: !2642, file: !323, line: 570, column: 15)
!2650 = !DILocation(line: 570, column: 15, scope: !2649)
!2651 = !DILocation(line: 571, column: 15, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2653, file: !323, line: 571, column: 15)
!2653 = distinct !DILexicalBlock(scope: !2642, file: !323, line: 571, column: 15)
!2654 = !DILocation(line: 571, column: 15, scope: !2653)
!2655 = !DILocation(line: 572, column: 15, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2657, file: !323, line: 572, column: 15)
!2657 = distinct !DILexicalBlock(scope: !2642, file: !323, line: 572, column: 15)
!2658 = !DILocation(line: 572, column: 15, scope: !2657)
!2659 = !DILocation(line: 574, column: 13, scope: !2642)
!2660 = !DILocation(line: 614, column: 17, scope: !2407)
!2661 = !DILocation(line: 0, scope: !2407)
!2662 = !DILocation(line: 617, column: 29, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2412, file: !323, line: 615, column: 15)
!2664 = !DILocation(line: 617, column: 27, scope: !2663)
!2665 = !DILocation(line: 618, column: 15, scope: !2663)
!2666 = !DILocation(line: 621, column: 17, scope: !2411)
!2667 = !DILocation(line: 621, column: 27, scope: !2411)
!2668 = !DILocalVariable(name: "__dest", arg: 1, scope: !2669, file: !1414, line: 59, type: !83)
!2669 = distinct !DISubprogram(name: "memset", scope: !1414, file: !1414, line: 59, type: !2670, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !322, retainedNodes: !2672)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{!83, !83, !30, !85}
!2672 = !{!2668, !2673, !2674}
!2673 = !DILocalVariable(name: "__ch", arg: 2, scope: !2669, file: !1414, line: 59, type: !30)
!2674 = !DILocalVariable(name: "__len", arg: 3, scope: !2669, file: !1414, line: 59, type: !85)
!2675 = !DILocation(line: 0, scope: !2669, inlinedAt: !2676)
!2676 = distinct !DILocation(line: 622, column: 17, scope: !2411)
!2677 = !DILocation(line: 71, column: 10, scope: !2669, inlinedAt: !2676)
!2678 = !DILocation(line: 626, column: 29, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2411, file: !323, line: 626, column: 21)
!2680 = !DILocation(line: 626, column: 21, scope: !2411)
!2681 = !DILocation(line: 627, column: 29, scope: !2679)
!2682 = !DILocation(line: 627, column: 19, scope: !2679)
!2683 = !DILocation(line: 629, column: 17, scope: !2411)
!2684 = !DILocation(line: 624, column: 19, scope: !2411)
!2685 = !DILocation(line: 625, column: 27, scope: !2411)
!2686 = !DILocation(line: 631, column: 21, scope: !2417)
!2687 = !DILocation(line: 632, column: 56, scope: !2417)
!2688 = !DILocation(line: 632, column: 50, scope: !2417)
!2689 = !DILocation(line: 633, column: 53, scope: !2417)
!2690 = !DILocation(line: 632, column: 36, scope: !2417)
!2691 = !DILocation(line: 634, column: 25, scope: !2417)
!2692 = !DILocation(line: 644, column: 38, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2424, file: !323, line: 642, column: 23)
!2694 = !DILocation(line: 644, column: 48, scope: !2693)
!2695 = !DILocation(line: 644, column: 25, scope: !2693)
!2696 = !DILocation(line: 644, column: 51, scope: !2693)
!2697 = !DILocation(line: 645, column: 28, scope: !2693)
!2698 = !DILocation(line: 644, column: 34, scope: !2693)
!2699 = distinct !{!2699, !2695, !2697}
!2700 = !DILocation(line: 658, column: 43, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2702, file: !323, line: 658, column: 29)
!2702 = distinct !DILexicalBlock(scope: !2421, file: !323, line: 658, column: 29)
!2703 = !DILocation(line: 655, column: 29, scope: !2422)
!2704 = !DILocation(line: 0, scope: !2421)
!2705 = !DILocation(line: 659, column: 49, scope: !2701)
!2706 = !DILocation(line: 659, column: 39, scope: !2701)
!2707 = !DILocation(line: 659, column: 31, scope: !2701)
!2708 = !DILocation(line: 658, column: 53, scope: !2701)
!2709 = !DILocation(line: 658, column: 29, scope: !2702)
!2710 = distinct !{!2710, !2709, !2711}
!2711 = !DILocation(line: 667, column: 33, scope: !2702)
!2712 = !DILocation(line: 674, column: 19, scope: !2411)
!2713 = !DILocation(line: 670, column: 41, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2423, file: !323, line: 670, column: 29)
!2715 = !DILocation(line: 670, column: 31, scope: !2714)
!2716 = !DILocation(line: 670, column: 29, scope: !2423)
!2717 = !DILocation(line: 672, column: 27, scope: !2423)
!2718 = !DILocation(line: 675, column: 26, scope: !2411)
!2719 = !DILocation(line: 675, column: 24, scope: !2411)
!2720 = !DILocation(line: 674, column: 19, scope: !2417)
!2721 = distinct !{!2721, !2683, !2722}
!2722 = !DILocation(line: 675, column: 44, scope: !2411)
!2723 = !DILocation(line: 676, column: 15, scope: !2412)
!2724 = !DILocation(line: 0, scope: !2412)
!2725 = !DILocation(line: 678, column: 40, scope: !2407)
!2726 = !DILocation(line: 680, column: 19, scope: !2429)
!2727 = !DILocation(line: 680, column: 45, scope: !2429)
!2728 = !DILocation(line: 680, column: 23, scope: !2429)
!2729 = !DILocation(line: 684, column: 33, scope: !2428)
!2730 = !DILocation(line: 0, scope: !2428)
!2731 = !DILocation(line: 686, column: 17, scope: !2428)
!2732 = !DILocation(line: 405, column: 12, scope: !2399)
!2733 = !DILocation(line: 688, column: 43, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2735, file: !323, line: 688, column: 25)
!2735 = distinct !DILexicalBlock(scope: !2736, file: !323, line: 687, column: 19)
!2736 = distinct !DILexicalBlock(scope: !2737, file: !323, line: 686, column: 17)
!2737 = distinct !DILexicalBlock(scope: !2428, file: !323, line: 686, column: 17)
!2738 = !DILocation(line: 690, column: 25, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2740, file: !323, line: 690, column: 25)
!2740 = distinct !DILexicalBlock(scope: !2734, file: !323, line: 689, column: 23)
!2741 = !DILocation(line: 690, column: 25, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2739, file: !323, line: 690, column: 25)
!2743 = !DILocation(line: 690, column: 25, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2745, file: !323, line: 690, column: 25)
!2745 = distinct !DILexicalBlock(scope: !2746, file: !323, line: 690, column: 25)
!2746 = distinct !DILexicalBlock(scope: !2742, file: !323, line: 690, column: 25)
!2747 = !DILocation(line: 690, column: 25, scope: !2745)
!2748 = !DILocation(line: 690, column: 25, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2750, file: !323, line: 690, column: 25)
!2750 = distinct !DILexicalBlock(scope: !2746, file: !323, line: 690, column: 25)
!2751 = !DILocation(line: 690, column: 25, scope: !2750)
!2752 = !DILocation(line: 690, column: 25, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2754, file: !323, line: 690, column: 25)
!2754 = distinct !DILexicalBlock(scope: !2746, file: !323, line: 690, column: 25)
!2755 = !DILocation(line: 690, column: 25, scope: !2754)
!2756 = !DILocation(line: 690, column: 25, scope: !2746)
!2757 = !DILocation(line: 690, column: 25, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2759, file: !323, line: 690, column: 25)
!2759 = distinct !DILexicalBlock(scope: !2739, file: !323, line: 690, column: 25)
!2760 = !DILocation(line: 690, column: 25, scope: !2759)
!2761 = !DILocation(line: 691, column: 25, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2763, file: !323, line: 691, column: 25)
!2763 = distinct !DILexicalBlock(scope: !2740, file: !323, line: 691, column: 25)
!2764 = !DILocation(line: 691, column: 25, scope: !2763)
!2765 = !DILocation(line: 692, column: 25, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2767, file: !323, line: 692, column: 25)
!2767 = distinct !DILexicalBlock(scope: !2740, file: !323, line: 692, column: 25)
!2768 = !DILocation(line: 692, column: 25, scope: !2767)
!2769 = !DILocation(line: 693, column: 38, scope: !2740)
!2770 = !DILocation(line: 693, column: 33, scope: !2740)
!2771 = !DILocation(line: 694, column: 23, scope: !2740)
!2772 = !DILocation(line: 695, column: 30, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2734, file: !323, line: 695, column: 30)
!2774 = !DILocation(line: 695, column: 30, scope: !2734)
!2775 = !DILocation(line: 697, column: 25, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2777, file: !323, line: 697, column: 25)
!2777 = distinct !DILexicalBlock(scope: !2778, file: !323, line: 697, column: 25)
!2778 = distinct !DILexicalBlock(scope: !2773, file: !323, line: 696, column: 23)
!2779 = !DILocation(line: 697, column: 25, scope: !2777)
!2780 = !DILocation(line: 699, column: 23, scope: !2778)
!2781 = !DILocation(line: 700, column: 35, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2735, file: !323, line: 700, column: 25)
!2783 = !DILocation(line: 700, column: 30, scope: !2782)
!2784 = !DILocation(line: 700, column: 25, scope: !2735)
!2785 = !DILocation(line: 702, column: 21, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2787, file: !323, line: 702, column: 21)
!2787 = distinct !DILexicalBlock(scope: !2735, file: !323, line: 702, column: 21)
!2788 = !DILocation(line: 702, column: 21, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2790, file: !323, line: 702, column: 21)
!2790 = distinct !DILexicalBlock(scope: !2791, file: !323, line: 702, column: 21)
!2791 = distinct !DILexicalBlock(scope: !2786, file: !323, line: 702, column: 21)
!2792 = !DILocation(line: 702, column: 21, scope: !2790)
!2793 = !DILocation(line: 702, column: 21, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2795, file: !323, line: 702, column: 21)
!2795 = distinct !DILexicalBlock(scope: !2791, file: !323, line: 702, column: 21)
!2796 = !DILocation(line: 702, column: 21, scope: !2795)
!2797 = !DILocation(line: 702, column: 21, scope: !2791)
!2798 = !DILocation(line: 0, scope: !2735)
!2799 = !DILocation(line: 703, column: 21, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2801, file: !323, line: 703, column: 21)
!2801 = distinct !DILexicalBlock(scope: !2735, file: !323, line: 703, column: 21)
!2802 = !DILocation(line: 703, column: 21, scope: !2801)
!2803 = !DILocation(line: 704, column: 25, scope: !2735)
!2804 = !DILocation(line: 686, column: 17, scope: !2736)
!2805 = distinct !{!2805, !2806, !2807}
!2806 = !DILocation(line: 686, column: 17, scope: !2737)
!2807 = !DILocation(line: 705, column: 19, scope: !2737)
!2808 = !DILocation(line: 416, column: 30, scope: !2508)
!2809 = !DILocation(line: 712, column: 34, scope: !2451)
!2810 = !DILocation(line: 715, column: 35, scope: !2451)
!2811 = !DILocation(line: 715, column: 17, scope: !2451)
!2812 = !DILocation(line: 715, column: 47, scope: !2451)
!2813 = !DILocation(line: 715, column: 65, scope: !2451)
!2814 = !DILocation(line: 716, column: 15, scope: !2451)
!2815 = !DILocation(line: 716, column: 11, scope: !2451)
!2816 = !DILocation(line: 712, column: 11, scope: !2399)
!2817 = !DILocation(line: 400, column: 10, scope: !2401)
!2818 = !DILocation(line: 719, column: 5, scope: !2399)
!2819 = !DILocation(line: 720, column: 7, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2399, file: !323, line: 720, column: 7)
!2821 = !DILocation(line: 720, column: 7, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2820, file: !323, line: 720, column: 7)
!2823 = !DILocation(line: 720, column: 7, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2825, file: !323, line: 720, column: 7)
!2825 = distinct !DILexicalBlock(scope: !2826, file: !323, line: 720, column: 7)
!2826 = distinct !DILexicalBlock(scope: !2822, file: !323, line: 720, column: 7)
!2827 = !DILocation(line: 720, column: 7, scope: !2825)
!2828 = !DILocation(line: 720, column: 7, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2830, file: !323, line: 720, column: 7)
!2830 = distinct !DILexicalBlock(scope: !2826, file: !323, line: 720, column: 7)
!2831 = !DILocation(line: 720, column: 7, scope: !2830)
!2832 = !DILocation(line: 720, column: 7, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2834, file: !323, line: 720, column: 7)
!2834 = distinct !DILexicalBlock(scope: !2826, file: !323, line: 720, column: 7)
!2835 = !DILocation(line: 720, column: 7, scope: !2834)
!2836 = !DILocation(line: 720, column: 7, scope: !2826)
!2837 = !DILocation(line: 720, column: 7, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2839, file: !323, line: 720, column: 7)
!2839 = distinct !DILexicalBlock(scope: !2820, file: !323, line: 720, column: 7)
!2840 = !DILocation(line: 720, column: 7, scope: !2839)
!2841 = !DILocation(line: 722, column: 5, scope: !2399)
!2842 = !DILocation(line: 723, column: 7, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2844, file: !323, line: 723, column: 7)
!2844 = distinct !DILexicalBlock(scope: !2399, file: !323, line: 723, column: 7)
!2845 = !DILocation(line: 424, column: 9, scope: !2399)
!2846 = !DILocation(line: 723, column: 7, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2848, file: !323, line: 723, column: 7)
!2848 = distinct !DILexicalBlock(scope: !2849, file: !323, line: 723, column: 7)
!2849 = distinct !DILexicalBlock(scope: !2843, file: !323, line: 723, column: 7)
!2850 = !DILocation(line: 723, column: 7, scope: !2848)
!2851 = !DILocation(line: 723, column: 7, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2853, file: !323, line: 723, column: 7)
!2853 = distinct !DILexicalBlock(scope: !2849, file: !323, line: 723, column: 7)
!2854 = !DILocation(line: 723, column: 7, scope: !2853)
!2855 = !DILocation(line: 723, column: 7, scope: !2849)
!2856 = !DILocation(line: 724, column: 7, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2858, file: !323, line: 724, column: 7)
!2858 = distinct !DILexicalBlock(scope: !2399, file: !323, line: 724, column: 7)
!2859 = !DILocation(line: 724, column: 7, scope: !2858)
!2860 = !DILocation(line: 726, column: 13, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2399, file: !323, line: 726, column: 11)
!2862 = !DILocation(line: 726, column: 11, scope: !2399)
!2863 = !DILocation(line: 728, column: 5, scope: !2400)
!2864 = !DILocation(line: 400, column: 75, scope: !2400)
!2865 = !DILocation(line: 400, column: 3, scope: !2400)
!2866 = distinct !{!2866, !2526, !2867}
!2867 = !DILocation(line: 728, column: 5, scope: !2401)
!2868 = !DILocation(line: 730, column: 11, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2372, file: !323, line: 730, column: 7)
!2870 = !DILocation(line: 730, column: 16, scope: !2869)
!2871 = !DILocation(line: 738, column: 51, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2372, file: !323, line: 738, column: 7)
!2873 = !DILocation(line: 739, column: 10, scope: !2872)
!2874 = !DILocation(line: 741, column: 11, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2876, file: !323, line: 741, column: 11)
!2876 = distinct !DILexicalBlock(scope: !2872, file: !323, line: 740, column: 5)
!2877 = !DILocation(line: 741, column: 11, scope: !2876)
!2878 = !DILocation(line: 742, column: 16, scope: !2875)
!2879 = !DILocation(line: 742, column: 9, scope: !2875)
!2880 = !DILocation(line: 746, column: 18, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2875, file: !323, line: 746, column: 16)
!2882 = !DILocation(line: 746, column: 32, scope: !2881)
!2883 = !DILocation(line: 746, column: 29, scope: !2881)
!2884 = !DILocation(line: 755, column: 7, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2372, file: !323, line: 755, column: 7)
!2886 = !DILocation(line: 755, column: 20, scope: !2885)
!2887 = !DILocation(line: 756, column: 12, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2889, file: !323, line: 756, column: 5)
!2889 = distinct !DILexicalBlock(scope: !2885, file: !323, line: 756, column: 5)
!2890 = !DILocation(line: 756, column: 5, scope: !2889)
!2891 = !DILocation(line: 757, column: 7, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2893, file: !323, line: 757, column: 7)
!2893 = distinct !DILexicalBlock(scope: !2888, file: !323, line: 757, column: 7)
!2894 = !DILocation(line: 757, column: 7, scope: !2893)
!2895 = !DILocation(line: 756, column: 39, scope: !2888)
!2896 = distinct !{!2896, !2890, !2897}
!2897 = !DILocation(line: 757, column: 7, scope: !2889)
!2898 = !DILocation(line: 759, column: 11, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2372, file: !323, line: 759, column: 7)
!2900 = !DILocation(line: 759, column: 7, scope: !2372)
!2901 = !DILocation(line: 760, column: 5, scope: !2899)
!2902 = !DILocation(line: 760, column: 17, scope: !2899)
!2903 = !DILocation(line: 763, column: 2, scope: !2372)
!2904 = !DILocation(line: 766, column: 51, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2372, file: !323, line: 766, column: 7)
!2906 = !DILocation(line: 766, column: 21, scope: !2905)
!2907 = !DILocation(line: 770, column: 42, scope: !2372)
!2908 = !DILocation(line: 768, column: 10, scope: !2372)
!2909 = !DILocation(line: 768, column: 3, scope: !2372)
!2910 = !DILocation(line: 772, column: 1, scope: !2372)
!2911 = distinct !DISubprogram(name: "gettext_quote", scope: !323, file: !323, line: 207, type: !2912, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !322, retainedNodes: !2914)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{!28, !28, !325}
!2914 = !{!2915, !2916, !2917, !2918}
!2915 = !DILocalVariable(name: "msgid", arg: 1, scope: !2911, file: !323, line: 207, type: !28)
!2916 = !DILocalVariable(name: "s", arg: 2, scope: !2911, file: !323, line: 207, type: !325)
!2917 = !DILocalVariable(name: "translation", scope: !2911, file: !323, line: 209, type: !28)
!2918 = !DILocalVariable(name: "locale_code", scope: !2911, file: !323, line: 210, type: !28)
!2919 = !DILocation(line: 0, scope: !2911)
!2920 = !DILocation(line: 209, column: 29, scope: !2911)
!2921 = !DILocation(line: 212, column: 19, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2911, file: !323, line: 212, column: 7)
!2923 = !DILocation(line: 212, column: 7, scope: !2911)
!2924 = !DILocation(line: 233, column: 17, scope: !2911)
!2925 = !DILocalVariable(name: "s1", arg: 1, scope: !2926, file: !2927, line: 160, type: !28)
!2926 = distinct !DISubprogram(name: "strcaseeq0", scope: !2927, file: !2927, line: 160, type: !2928, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !322, retainedNodes: !2930)
!2927 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2928 = !DISubroutineType(types: !2929)
!2929 = !{!30, !28, !28, !27, !27, !27, !27, !27, !27, !27, !27, !27}
!2930 = !{!2925, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940}
!2931 = !DILocalVariable(name: "s2", arg: 2, scope: !2926, file: !2927, line: 160, type: !28)
!2932 = !DILocalVariable(name: "s20", arg: 3, scope: !2926, file: !2927, line: 160, type: !27)
!2933 = !DILocalVariable(name: "s21", arg: 4, scope: !2926, file: !2927, line: 160, type: !27)
!2934 = !DILocalVariable(name: "s22", arg: 5, scope: !2926, file: !2927, line: 160, type: !27)
!2935 = !DILocalVariable(name: "s23", arg: 6, scope: !2926, file: !2927, line: 160, type: !27)
!2936 = !DILocalVariable(name: "s24", arg: 7, scope: !2926, file: !2927, line: 160, type: !27)
!2937 = !DILocalVariable(name: "s25", arg: 8, scope: !2926, file: !2927, line: 160, type: !27)
!2938 = !DILocalVariable(name: "s26", arg: 9, scope: !2926, file: !2927, line: 160, type: !27)
!2939 = !DILocalVariable(name: "s27", arg: 10, scope: !2926, file: !2927, line: 160, type: !27)
!2940 = !DILocalVariable(name: "s28", arg: 11, scope: !2926, file: !2927, line: 160, type: !27)
!2941 = !DILocation(line: 0, scope: !2926, inlinedAt: !2942)
!2942 = distinct !DILocation(line: 234, column: 7, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2911, file: !323, line: 234, column: 7)
!2944 = !DILocation(line: 162, column: 7, scope: !2945, inlinedAt: !2942)
!2945 = distinct !DILexicalBlock(scope: !2926, file: !2927, line: 162, column: 7)
!2946 = !DILocalVariable(name: "s1", arg: 1, scope: !2947, file: !2927, line: 146, type: !28)
!2947 = distinct !DISubprogram(name: "strcaseeq1", scope: !2927, file: !2927, line: 146, type: !2948, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !322, retainedNodes: !2950)
!2948 = !DISubroutineType(types: !2949)
!2949 = !{!30, !28, !28, !27, !27, !27, !27, !27, !27, !27, !27}
!2950 = !{!2946, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959}
!2951 = !DILocalVariable(name: "s2", arg: 2, scope: !2947, file: !2927, line: 146, type: !28)
!2952 = !DILocalVariable(name: "s21", arg: 3, scope: !2947, file: !2927, line: 146, type: !27)
!2953 = !DILocalVariable(name: "s22", arg: 4, scope: !2947, file: !2927, line: 146, type: !27)
!2954 = !DILocalVariable(name: "s23", arg: 5, scope: !2947, file: !2927, line: 146, type: !27)
!2955 = !DILocalVariable(name: "s24", arg: 6, scope: !2947, file: !2927, line: 146, type: !27)
!2956 = !DILocalVariable(name: "s25", arg: 7, scope: !2947, file: !2927, line: 146, type: !27)
!2957 = !DILocalVariable(name: "s26", arg: 8, scope: !2947, file: !2927, line: 146, type: !27)
!2958 = !DILocalVariable(name: "s27", arg: 9, scope: !2947, file: !2927, line: 146, type: !27)
!2959 = !DILocalVariable(name: "s28", arg: 10, scope: !2947, file: !2927, line: 146, type: !27)
!2960 = !DILocation(line: 0, scope: !2947, inlinedAt: !2961)
!2961 = distinct !DILocation(line: 167, column: 16, scope: !2962, inlinedAt: !2942)
!2962 = distinct !DILexicalBlock(scope: !2963, file: !2927, line: 164, column: 11)
!2963 = distinct !DILexicalBlock(scope: !2945, file: !2927, line: 163, column: 5)
!2964 = !DILocation(line: 148, column: 7, scope: !2965, inlinedAt: !2961)
!2965 = distinct !DILexicalBlock(scope: !2947, file: !2927, line: 148, column: 7)
!2966 = !DILocalVariable(name: "s1", arg: 1, scope: !2967, file: !2927, line: 132, type: !28)
!2967 = distinct !DISubprogram(name: "strcaseeq2", scope: !2927, file: !2927, line: 132, type: !2968, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !322, retainedNodes: !2970)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!30, !28, !28, !27, !27, !27, !27, !27, !27, !27}
!2970 = !{!2966, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978}
!2971 = !DILocalVariable(name: "s2", arg: 2, scope: !2967, file: !2927, line: 132, type: !28)
!2972 = !DILocalVariable(name: "s22", arg: 3, scope: !2967, file: !2927, line: 132, type: !27)
!2973 = !DILocalVariable(name: "s23", arg: 4, scope: !2967, file: !2927, line: 132, type: !27)
!2974 = !DILocalVariable(name: "s24", arg: 5, scope: !2967, file: !2927, line: 132, type: !27)
!2975 = !DILocalVariable(name: "s25", arg: 6, scope: !2967, file: !2927, line: 132, type: !27)
!2976 = !DILocalVariable(name: "s26", arg: 7, scope: !2967, file: !2927, line: 132, type: !27)
!2977 = !DILocalVariable(name: "s27", arg: 8, scope: !2967, file: !2927, line: 132, type: !27)
!2978 = !DILocalVariable(name: "s28", arg: 9, scope: !2967, file: !2927, line: 132, type: !27)
!2979 = !DILocation(line: 0, scope: !2967, inlinedAt: !2980)
!2980 = distinct !DILocation(line: 153, column: 16, scope: !2981, inlinedAt: !2961)
!2981 = distinct !DILexicalBlock(scope: !2982, file: !2927, line: 150, column: 11)
!2982 = distinct !DILexicalBlock(scope: !2965, file: !2927, line: 149, column: 5)
!2983 = !DILocation(line: 134, column: 7, scope: !2984, inlinedAt: !2980)
!2984 = distinct !DILexicalBlock(scope: !2967, file: !2927, line: 134, column: 7)
!2985 = !DILocalVariable(name: "s1", arg: 1, scope: !2986, file: !2927, line: 118, type: !28)
!2986 = distinct !DISubprogram(name: "strcaseeq3", scope: !2927, file: !2927, line: 118, type: !2987, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !322, retainedNodes: !2989)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!30, !28, !28, !27, !27, !27, !27, !27, !27}
!2989 = !{!2985, !2990, !2991, !2992, !2993, !2994, !2995, !2996}
!2990 = !DILocalVariable(name: "s2", arg: 2, scope: !2986, file: !2927, line: 118, type: !28)
!2991 = !DILocalVariable(name: "s23", arg: 3, scope: !2986, file: !2927, line: 118, type: !27)
!2992 = !DILocalVariable(name: "s24", arg: 4, scope: !2986, file: !2927, line: 118, type: !27)
!2993 = !DILocalVariable(name: "s25", arg: 5, scope: !2986, file: !2927, line: 118, type: !27)
!2994 = !DILocalVariable(name: "s26", arg: 6, scope: !2986, file: !2927, line: 118, type: !27)
!2995 = !DILocalVariable(name: "s27", arg: 7, scope: !2986, file: !2927, line: 118, type: !27)
!2996 = !DILocalVariable(name: "s28", arg: 8, scope: !2986, file: !2927, line: 118, type: !27)
!2997 = !DILocation(line: 0, scope: !2986, inlinedAt: !2998)
!2998 = distinct !DILocation(line: 139, column: 16, scope: !2999, inlinedAt: !2980)
!2999 = distinct !DILexicalBlock(scope: !3000, file: !2927, line: 136, column: 11)
!3000 = distinct !DILexicalBlock(scope: !2984, file: !2927, line: 135, column: 5)
!3001 = !DILocation(line: 120, column: 7, scope: !3002, inlinedAt: !2998)
!3002 = distinct !DILexicalBlock(scope: !2986, file: !2927, line: 120, column: 7)
!3003 = !DILocation(line: 120, column: 7, scope: !2986, inlinedAt: !2998)
!3004 = !DILocalVariable(name: "s1", arg: 1, scope: !3005, file: !2927, line: 104, type: !28)
!3005 = distinct !DISubprogram(name: "strcaseeq4", scope: !2927, file: !2927, line: 104, type: !3006, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !322, retainedNodes: !3008)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!30, !28, !28, !27, !27, !27, !27, !27}
!3008 = !{!3004, !3009, !3010, !3011, !3012, !3013, !3014}
!3009 = !DILocalVariable(name: "s2", arg: 2, scope: !3005, file: !2927, line: 104, type: !28)
!3010 = !DILocalVariable(name: "s24", arg: 3, scope: !3005, file: !2927, line: 104, type: !27)
!3011 = !DILocalVariable(name: "s25", arg: 4, scope: !3005, file: !2927, line: 104, type: !27)
!3012 = !DILocalVariable(name: "s26", arg: 5, scope: !3005, file: !2927, line: 104, type: !27)
!3013 = !DILocalVariable(name: "s27", arg: 6, scope: !3005, file: !2927, line: 104, type: !27)
!3014 = !DILocalVariable(name: "s28", arg: 7, scope: !3005, file: !2927, line: 104, type: !27)
!3015 = !DILocation(line: 0, scope: !3005, inlinedAt: !3016)
!3016 = distinct !DILocation(line: 125, column: 16, scope: !3017, inlinedAt: !2998)
!3017 = distinct !DILexicalBlock(scope: !3018, file: !2927, line: 122, column: 11)
!3018 = distinct !DILexicalBlock(scope: !3002, file: !2927, line: 121, column: 5)
!3019 = !DILocation(line: 106, column: 7, scope: !3020, inlinedAt: !3016)
!3020 = distinct !DILexicalBlock(scope: !3005, file: !2927, line: 106, column: 7)
!3021 = !DILocation(line: 106, column: 7, scope: !3005, inlinedAt: !3016)
!3022 = !DILocalVariable(name: "s1", arg: 1, scope: !3023, file: !2927, line: 90, type: !28)
!3023 = distinct !DISubprogram(name: "strcaseeq5", scope: !2927, file: !2927, line: 90, type: !3024, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !322, retainedNodes: !3026)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!30, !28, !28, !27, !27, !27, !27}
!3026 = !{!3022, !3027, !3028, !3029, !3030, !3031}
!3027 = !DILocalVariable(name: "s2", arg: 2, scope: !3023, file: !2927, line: 90, type: !28)
!3028 = !DILocalVariable(name: "s25", arg: 3, scope: !3023, file: !2927, line: 90, type: !27)
!3029 = !DILocalVariable(name: "s26", arg: 4, scope: !3023, file: !2927, line: 90, type: !27)
!3030 = !DILocalVariable(name: "s27", arg: 5, scope: !3023, file: !2927, line: 90, type: !27)
!3031 = !DILocalVariable(name: "s28", arg: 6, scope: !3023, file: !2927, line: 90, type: !27)
!3032 = !DILocation(line: 0, scope: !3023, inlinedAt: !3033)
!3033 = distinct !DILocation(line: 111, column: 16, scope: !3034, inlinedAt: !3016)
!3034 = distinct !DILexicalBlock(scope: !3035, file: !2927, line: 108, column: 11)
!3035 = distinct !DILexicalBlock(scope: !3020, file: !2927, line: 107, column: 5)
!3036 = !DILocation(line: 92, column: 7, scope: !3037, inlinedAt: !3033)
!3037 = distinct !DILexicalBlock(scope: !3023, file: !2927, line: 92, column: 7)
!3038 = !DILocation(line: 92, column: 7, scope: !3023, inlinedAt: !3033)
!3039 = !DILocation(line: 235, column: 12, scope: !2943)
!3040 = !DILocation(line: 235, column: 21, scope: !2943)
!3041 = !DILocation(line: 235, column: 5, scope: !2943)
!3042 = !DILocation(line: 0, scope: !2947, inlinedAt: !3043)
!3043 = distinct !DILocation(line: 167, column: 16, scope: !2962, inlinedAt: !3044)
!3044 = distinct !DILocation(line: 236, column: 7, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !2911, file: !323, line: 236, column: 7)
!3046 = !DILocation(line: 148, column: 7, scope: !2965, inlinedAt: !3043)
!3047 = !DILocation(line: 0, scope: !2967, inlinedAt: !3048)
!3048 = distinct !DILocation(line: 153, column: 16, scope: !2981, inlinedAt: !3043)
!3049 = !DILocation(line: 134, column: 7, scope: !2984, inlinedAt: !3048)
!3050 = !DILocation(line: 134, column: 7, scope: !2967, inlinedAt: !3048)
!3051 = !DILocation(line: 0, scope: !2986, inlinedAt: !3052)
!3052 = distinct !DILocation(line: 139, column: 16, scope: !2999, inlinedAt: !3048)
!3053 = !DILocation(line: 120, column: 7, scope: !3002, inlinedAt: !3052)
!3054 = !DILocation(line: 120, column: 7, scope: !2986, inlinedAt: !3052)
!3055 = !DILocation(line: 0, scope: !3005, inlinedAt: !3056)
!3056 = distinct !DILocation(line: 125, column: 16, scope: !3017, inlinedAt: !3052)
!3057 = !DILocation(line: 106, column: 7, scope: !3020, inlinedAt: !3056)
!3058 = !DILocation(line: 106, column: 7, scope: !3005, inlinedAt: !3056)
!3059 = !DILocation(line: 0, scope: !3023, inlinedAt: !3060)
!3060 = distinct !DILocation(line: 111, column: 16, scope: !3034, inlinedAt: !3056)
!3061 = !DILocation(line: 92, column: 7, scope: !3037, inlinedAt: !3060)
!3062 = !DILocation(line: 92, column: 7, scope: !3023, inlinedAt: !3060)
!3063 = !DILocalVariable(name: "s1", arg: 1, scope: !3064, file: !2927, line: 76, type: !28)
!3064 = distinct !DISubprogram(name: "strcaseeq6", scope: !2927, file: !2927, line: 76, type: !3065, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !322, retainedNodes: !3067)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!30, !28, !28, !27, !27, !27}
!3067 = !{!3063, !3068, !3069, !3070, !3071}
!3068 = !DILocalVariable(name: "s2", arg: 2, scope: !3064, file: !2927, line: 76, type: !28)
!3069 = !DILocalVariable(name: "s26", arg: 3, scope: !3064, file: !2927, line: 76, type: !27)
!3070 = !DILocalVariable(name: "s27", arg: 4, scope: !3064, file: !2927, line: 76, type: !27)
!3071 = !DILocalVariable(name: "s28", arg: 5, scope: !3064, file: !2927, line: 76, type: !27)
!3072 = !DILocation(line: 0, scope: !3064, inlinedAt: !3073)
!3073 = distinct !DILocation(line: 97, column: 16, scope: !3074, inlinedAt: !3060)
!3074 = distinct !DILexicalBlock(scope: !3075, file: !2927, line: 94, column: 11)
!3075 = distinct !DILexicalBlock(scope: !3037, file: !2927, line: 93, column: 5)
!3076 = !DILocation(line: 78, column: 7, scope: !3077, inlinedAt: !3073)
!3077 = distinct !DILexicalBlock(scope: !3064, file: !2927, line: 78, column: 7)
!3078 = !DILocation(line: 78, column: 7, scope: !3064, inlinedAt: !3073)
!3079 = !DILocalVariable(name: "s1", arg: 1, scope: !3080, file: !2927, line: 62, type: !28)
!3080 = distinct !DISubprogram(name: "strcaseeq7", scope: !2927, file: !2927, line: 62, type: !3081, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !322, retainedNodes: !3083)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{!30, !28, !28, !27, !27}
!3083 = !{!3079, !3084, !3085, !3086}
!3084 = !DILocalVariable(name: "s2", arg: 2, scope: !3080, file: !2927, line: 62, type: !28)
!3085 = !DILocalVariable(name: "s27", arg: 3, scope: !3080, file: !2927, line: 62, type: !27)
!3086 = !DILocalVariable(name: "s28", arg: 4, scope: !3080, file: !2927, line: 62, type: !27)
!3087 = !DILocation(line: 0, scope: !3080, inlinedAt: !3088)
!3088 = distinct !DILocation(line: 83, column: 16, scope: !3089, inlinedAt: !3073)
!3089 = distinct !DILexicalBlock(scope: !3090, file: !2927, line: 80, column: 11)
!3090 = distinct !DILexicalBlock(scope: !3077, file: !2927, line: 79, column: 5)
!3091 = !DILocation(line: 64, column: 7, scope: !3092, inlinedAt: !3088)
!3092 = distinct !DILexicalBlock(scope: !3080, file: !2927, line: 64, column: 7)
!3093 = !DILocation(line: 236, column: 7, scope: !2911)
!3094 = !DILocation(line: 237, column: 12, scope: !3045)
!3095 = !DILocation(line: 237, column: 21, scope: !3045)
!3096 = !DILocation(line: 237, column: 5, scope: !3045)
!3097 = !DILocation(line: 239, column: 13, scope: !2911)
!3098 = !DILocation(line: 239, column: 11, scope: !2911)
!3099 = !DILocation(line: 239, column: 3, scope: !2911)
!3100 = !DILocation(line: 240, column: 1, scope: !2911)
!3101 = distinct !DISubprogram(name: "quotearg_alloc", scope: !323, file: !323, line: 799, type: !3102, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !322, retainedNodes: !3104)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!26, !28, !85, !351}
!3104 = !{!3105, !3106, !3107}
!3105 = !DILocalVariable(name: "arg", arg: 1, scope: !3101, file: !323, line: 799, type: !28)
!3106 = !DILocalVariable(name: "argsize", arg: 2, scope: !3101, file: !323, line: 799, type: !85)
!3107 = !DILocalVariable(name: "o", arg: 3, scope: !3101, file: !323, line: 800, type: !351)
!3108 = !DILocation(line: 0, scope: !3101)
!3109 = !DILocalVariable(name: "arg", arg: 1, scope: !3110, file: !323, line: 812, type: !28)
!3110 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !323, file: !323, line: 812, type: !3111, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !322, retainedNodes: !3113)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{!26, !28, !85, !530, !351}
!3113 = !{!3109, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121}
!3114 = !DILocalVariable(name: "argsize", arg: 2, scope: !3110, file: !323, line: 812, type: !85)
!3115 = !DILocalVariable(name: "size", arg: 3, scope: !3110, file: !323, line: 812, type: !530)
!3116 = !DILocalVariable(name: "o", arg: 4, scope: !3110, file: !323, line: 813, type: !351)
!3117 = !DILocalVariable(name: "p", scope: !3110, file: !323, line: 815, type: !351)
!3118 = !DILocalVariable(name: "e", scope: !3110, file: !323, line: 816, type: !30)
!3119 = !DILocalVariable(name: "flags", scope: !3110, file: !323, line: 818, type: !30)
!3120 = !DILocalVariable(name: "bufsize", scope: !3110, file: !323, line: 819, type: !85)
!3121 = !DILocalVariable(name: "buf", scope: !3110, file: !323, line: 823, type: !26)
!3122 = !DILocation(line: 0, scope: !3110, inlinedAt: !3123)
!3123 = distinct !DILocation(line: 802, column: 10, scope: !3101)
!3124 = !DILocation(line: 815, column: 37, scope: !3110, inlinedAt: !3123)
!3125 = !DILocation(line: 816, column: 11, scope: !3110, inlinedAt: !3123)
!3126 = !DILocation(line: 818, column: 18, scope: !3110, inlinedAt: !3123)
!3127 = !DILocation(line: 818, column: 24, scope: !3110, inlinedAt: !3123)
!3128 = !DILocation(line: 819, column: 69, scope: !3110, inlinedAt: !3123)
!3129 = !DILocation(line: 820, column: 53, scope: !3110, inlinedAt: !3123)
!3130 = !DILocation(line: 821, column: 49, scope: !3110, inlinedAt: !3123)
!3131 = !DILocation(line: 822, column: 49, scope: !3110, inlinedAt: !3123)
!3132 = !DILocation(line: 819, column: 20, scope: !3110, inlinedAt: !3123)
!3133 = !DILocation(line: 822, column: 62, scope: !3110, inlinedAt: !3123)
!3134 = !DILocalVariable(name: "n", arg: 1, scope: !3135, file: !154, line: 216, type: !85)
!3135 = distinct !DISubprogram(name: "xcharalloc", scope: !154, file: !154, line: 216, type: !3136, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !322, retainedNodes: !3138)
!3136 = !DISubroutineType(types: !3137)
!3137 = !{!26, !85}
!3138 = !{!3134}
!3139 = !DILocation(line: 0, scope: !3135, inlinedAt: !3140)
!3140 = distinct !DILocation(line: 823, column: 15, scope: !3110, inlinedAt: !3123)
!3141 = !DILocation(line: 218, column: 10, scope: !3135, inlinedAt: !3140)
!3142 = !DILocation(line: 824, column: 60, scope: !3110, inlinedAt: !3123)
!3143 = !DILocation(line: 826, column: 32, scope: !3110, inlinedAt: !3123)
!3144 = !DILocation(line: 826, column: 47, scope: !3110, inlinedAt: !3123)
!3145 = !DILocation(line: 824, column: 3, scope: !3110, inlinedAt: !3123)
!3146 = !DILocation(line: 827, column: 9, scope: !3110, inlinedAt: !3123)
!3147 = !DILocation(line: 802, column: 3, scope: !3101)
!3148 = !DILocation(line: 0, scope: !3110)
!3149 = !DILocation(line: 815, column: 37, scope: !3110)
!3150 = !DILocation(line: 816, column: 11, scope: !3110)
!3151 = !DILocation(line: 818, column: 18, scope: !3110)
!3152 = !DILocation(line: 818, column: 27, scope: !3110)
!3153 = !DILocation(line: 818, column: 24, scope: !3110)
!3154 = !DILocation(line: 819, column: 69, scope: !3110)
!3155 = !DILocation(line: 820, column: 53, scope: !3110)
!3156 = !DILocation(line: 821, column: 49, scope: !3110)
!3157 = !DILocation(line: 822, column: 49, scope: !3110)
!3158 = !DILocation(line: 819, column: 20, scope: !3110)
!3159 = !DILocation(line: 822, column: 62, scope: !3110)
!3160 = !DILocation(line: 0, scope: !3135, inlinedAt: !3161)
!3161 = distinct !DILocation(line: 823, column: 15, scope: !3110)
!3162 = !DILocation(line: 218, column: 10, scope: !3135, inlinedAt: !3161)
!3163 = !DILocation(line: 824, column: 60, scope: !3110)
!3164 = !DILocation(line: 826, column: 32, scope: !3110)
!3165 = !DILocation(line: 826, column: 47, scope: !3110)
!3166 = !DILocation(line: 824, column: 3, scope: !3110)
!3167 = !DILocation(line: 827, column: 9, scope: !3110)
!3168 = !DILocation(line: 828, column: 7, scope: !3110)
!3169 = !DILocation(line: 829, column: 11, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3110, file: !323, line: 828, column: 7)
!3171 = !DILocation(line: 829, column: 5, scope: !3170)
!3172 = !DILocation(line: 830, column: 3, scope: !3110)
!3173 = distinct !DISubprogram(name: "quotearg_free", scope: !323, file: !323, line: 848, type: !112, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !322, retainedNodes: !3174)
!3174 = !{!3175, !3176}
!3175 = !DILocalVariable(name: "sv", scope: !3173, file: !323, line: 850, type: !419)
!3176 = !DILocalVariable(name: "i", scope: !3173, file: !323, line: 851, type: !30)
!3177 = !DILocation(line: 850, column: 24, scope: !3173)
!3178 = !DILocation(line: 0, scope: !3173)
!3179 = !DILocation(line: 852, column: 19, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3181, file: !323, line: 852, column: 3)
!3181 = distinct !DILexicalBlock(scope: !3173, file: !323, line: 852, column: 3)
!3182 = !DILocation(line: 852, column: 17, scope: !3180)
!3183 = !DILocation(line: 852, column: 3, scope: !3181)
!3184 = !DILocation(line: 853, column: 17, scope: !3180)
!3185 = !{!3186, !1177, i64 8}
!3186 = !{!"slotvec", !1476, i64 0, !1177, i64 8}
!3187 = !DILocation(line: 853, column: 5, scope: !3180)
!3188 = !DILocation(line: 852, column: 28, scope: !3180)
!3189 = distinct !{!3189, !3183, !3190}
!3190 = !DILocation(line: 853, column: 20, scope: !3181)
!3191 = !DILocation(line: 854, column: 13, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !3173, file: !323, line: 854, column: 7)
!3193 = !DILocation(line: 854, column: 17, scope: !3192)
!3194 = !DILocation(line: 854, column: 7, scope: !3173)
!3195 = !DILocation(line: 856, column: 7, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3192, file: !323, line: 855, column: 5)
!3197 = !DILocation(line: 857, column: 21, scope: !3196)
!3198 = !{!3186, !1476, i64 0}
!3199 = !DILocation(line: 858, column: 20, scope: !3196)
!3200 = !DILocation(line: 859, column: 5, scope: !3196)
!3201 = !DILocation(line: 860, column: 10, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3173, file: !323, line: 860, column: 7)
!3203 = !DILocation(line: 860, column: 7, scope: !3173)
!3204 = !DILocation(line: 862, column: 13, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3202, file: !323, line: 861, column: 5)
!3206 = !DILocation(line: 862, column: 7, scope: !3205)
!3207 = !DILocation(line: 863, column: 15, scope: !3205)
!3208 = !DILocation(line: 864, column: 5, scope: !3205)
!3209 = !DILocation(line: 865, column: 10, scope: !3173)
!3210 = !DILocation(line: 866, column: 1, scope: !3173)
!3211 = distinct !DISubprogram(name: "quotearg_n", scope: !323, file: !323, line: 931, type: !99, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !322, retainedNodes: !3212)
!3212 = !{!3213, !3214}
!3213 = !DILocalVariable(name: "n", arg: 1, scope: !3211, file: !323, line: 931, type: !30)
!3214 = !DILocalVariable(name: "arg", arg: 2, scope: !3211, file: !323, line: 931, type: !28)
!3215 = !DILocation(line: 0, scope: !3211)
!3216 = !DILocation(line: 933, column: 10, scope: !3211)
!3217 = !DILocation(line: 933, column: 3, scope: !3211)
!3218 = distinct !DISubprogram(name: "quotearg_n_options", scope: !323, file: !323, line: 877, type: !3219, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !322, retainedNodes: !3221)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{!26, !30, !28, !85, !351}
!3221 = !{!3222, !3223, !3224, !3225, !3226, !3227, !3228, !3231, !3232, !3234, !3235, !3236}
!3222 = !DILocalVariable(name: "n", arg: 1, scope: !3218, file: !323, line: 877, type: !30)
!3223 = !DILocalVariable(name: "arg", arg: 2, scope: !3218, file: !323, line: 877, type: !28)
!3224 = !DILocalVariable(name: "argsize", arg: 3, scope: !3218, file: !323, line: 877, type: !85)
!3225 = !DILocalVariable(name: "options", arg: 4, scope: !3218, file: !323, line: 878, type: !351)
!3226 = !DILocalVariable(name: "e", scope: !3218, file: !323, line: 880, type: !30)
!3227 = !DILocalVariable(name: "sv", scope: !3218, file: !323, line: 882, type: !419)
!3228 = !DILocalVariable(name: "preallocated", scope: !3229, file: !323, line: 889, type: !145)
!3229 = distinct !DILexicalBlock(scope: !3230, file: !323, line: 888, column: 5)
!3230 = distinct !DILexicalBlock(scope: !3218, file: !323, line: 887, column: 7)
!3231 = !DILocalVariable(name: "nmax", scope: !3229, file: !323, line: 890, type: !30)
!3232 = !DILocalVariable(name: "size", scope: !3233, file: !323, line: 903, type: !85)
!3233 = distinct !DILexicalBlock(scope: !3218, file: !323, line: 902, column: 3)
!3234 = !DILocalVariable(name: "val", scope: !3233, file: !323, line: 904, type: !26)
!3235 = !DILocalVariable(name: "flags", scope: !3233, file: !323, line: 906, type: !30)
!3236 = !DILocalVariable(name: "qsize", scope: !3233, file: !323, line: 907, type: !85)
!3237 = !DILocation(line: 0, scope: !3218)
!3238 = !DILocation(line: 880, column: 11, scope: !3218)
!3239 = !DILocation(line: 882, column: 24, scope: !3218)
!3240 = !DILocation(line: 884, column: 9, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3218, file: !323, line: 884, column: 7)
!3242 = !DILocation(line: 884, column: 7, scope: !3218)
!3243 = !DILocation(line: 885, column: 5, scope: !3241)
!3244 = !DILocation(line: 887, column: 7, scope: !3230)
!3245 = !DILocation(line: 887, column: 14, scope: !3230)
!3246 = !DILocation(line: 887, column: 7, scope: !3218)
!3247 = !DILocation(line: 889, column: 31, scope: !3229)
!3248 = !DILocation(line: 0, scope: !3229)
!3249 = !DILocation(line: 892, column: 16, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3229, file: !323, line: 892, column: 11)
!3251 = !DILocation(line: 892, column: 11, scope: !3229)
!3252 = !DILocation(line: 893, column: 9, scope: !3250)
!3253 = !DILocation(line: 895, column: 32, scope: !3229)
!3254 = !DILocation(line: 895, column: 61, scope: !3229)
!3255 = !DILocation(line: 895, column: 58, scope: !3229)
!3256 = !DILocation(line: 895, column: 66, scope: !3229)
!3257 = !DILocation(line: 895, column: 22, scope: !3229)
!3258 = !DILocation(line: 895, column: 15, scope: !3229)
!3259 = !DILocation(line: 896, column: 11, scope: !3229)
!3260 = !DILocation(line: 897, column: 15, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3229, file: !323, line: 896, column: 11)
!3262 = !{i64 0, i64 8, !1536, i64 8, i64 8, !1176}
!3263 = !DILocation(line: 897, column: 9, scope: !3261)
!3264 = !DILocation(line: 898, column: 20, scope: !3229)
!3265 = !DILocation(line: 898, column: 18, scope: !3229)
!3266 = !DILocation(line: 898, column: 15, scope: !3229)
!3267 = !DILocation(line: 898, column: 38, scope: !3229)
!3268 = !DILocation(line: 898, column: 31, scope: !3229)
!3269 = !DILocation(line: 898, column: 48, scope: !3229)
!3270 = !DILocation(line: 0, scope: !2669, inlinedAt: !3271)
!3271 = distinct !DILocation(line: 898, column: 7, scope: !3229)
!3272 = !DILocation(line: 71, column: 10, scope: !2669, inlinedAt: !3271)
!3273 = !DILocation(line: 899, column: 14, scope: !3229)
!3274 = !DILocation(line: 900, column: 5, scope: !3229)
!3275 = !DILocation(line: 903, column: 19, scope: !3233)
!3276 = !DILocation(line: 903, column: 25, scope: !3233)
!3277 = !DILocation(line: 0, scope: !3233)
!3278 = !DILocation(line: 904, column: 23, scope: !3233)
!3279 = !DILocation(line: 906, column: 26, scope: !3233)
!3280 = !DILocation(line: 906, column: 32, scope: !3233)
!3281 = !DILocation(line: 908, column: 55, scope: !3233)
!3282 = !DILocation(line: 909, column: 46, scope: !3233)
!3283 = !DILocation(line: 910, column: 55, scope: !3233)
!3284 = !DILocation(line: 911, column: 55, scope: !3233)
!3285 = !DILocation(line: 907, column: 20, scope: !3233)
!3286 = !DILocation(line: 913, column: 14, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3233, file: !323, line: 913, column: 9)
!3288 = !DILocation(line: 913, column: 9, scope: !3233)
!3289 = !DILocation(line: 915, column: 35, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3287, file: !323, line: 914, column: 7)
!3291 = !DILocation(line: 915, column: 20, scope: !3290)
!3292 = !DILocation(line: 916, column: 17, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3290, file: !323, line: 916, column: 13)
!3294 = !DILocation(line: 916, column: 13, scope: !3290)
!3295 = !DILocation(line: 917, column: 11, scope: !3293)
!3296 = !DILocation(line: 0, scope: !3135, inlinedAt: !3297)
!3297 = distinct !DILocation(line: 918, column: 27, scope: !3290)
!3298 = !DILocation(line: 218, column: 10, scope: !3135, inlinedAt: !3297)
!3299 = !DILocation(line: 918, column: 19, scope: !3290)
!3300 = !DILocation(line: 919, column: 69, scope: !3290)
!3301 = !DILocation(line: 921, column: 44, scope: !3290)
!3302 = !DILocation(line: 922, column: 44, scope: !3290)
!3303 = !DILocation(line: 919, column: 9, scope: !3290)
!3304 = !DILocation(line: 923, column: 7, scope: !3290)
!3305 = !DILocation(line: 925, column: 11, scope: !3233)
!3306 = !DILocation(line: 926, column: 5, scope: !3233)
!3307 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !323, file: !323, line: 937, type: !3308, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !322, retainedNodes: !3310)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{!26, !30, !28, !85}
!3310 = !{!3311, !3312, !3313}
!3311 = !DILocalVariable(name: "n", arg: 1, scope: !3307, file: !323, line: 937, type: !30)
!3312 = !DILocalVariable(name: "arg", arg: 2, scope: !3307, file: !323, line: 937, type: !28)
!3313 = !DILocalVariable(name: "argsize", arg: 3, scope: !3307, file: !323, line: 937, type: !85)
!3314 = !DILocation(line: 0, scope: !3307)
!3315 = !DILocation(line: 939, column: 10, scope: !3307)
!3316 = !DILocation(line: 939, column: 3, scope: !3307)
!3317 = distinct !DISubprogram(name: "quotearg", scope: !323, file: !323, line: 943, type: !105, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !322, retainedNodes: !3318)
!3318 = !{!3319}
!3319 = !DILocalVariable(name: "arg", arg: 1, scope: !3317, file: !323, line: 943, type: !28)
!3320 = !DILocation(line: 0, scope: !3317)
!3321 = !DILocation(line: 0, scope: !3211, inlinedAt: !3322)
!3322 = distinct !DILocation(line: 945, column: 10, scope: !3317)
!3323 = !DILocation(line: 933, column: 10, scope: !3211, inlinedAt: !3322)
!3324 = !DILocation(line: 945, column: 3, scope: !3317)
!3325 = distinct !DISubprogram(name: "quotearg_mem", scope: !323, file: !323, line: 949, type: !3326, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !322, retainedNodes: !3328)
!3326 = !DISubroutineType(types: !3327)
!3327 = !{!26, !28, !85}
!3328 = !{!3329, !3330}
!3329 = !DILocalVariable(name: "arg", arg: 1, scope: !3325, file: !323, line: 949, type: !28)
!3330 = !DILocalVariable(name: "argsize", arg: 2, scope: !3325, file: !323, line: 949, type: !85)
!3331 = !DILocation(line: 0, scope: !3325)
!3332 = !DILocation(line: 0, scope: !3307, inlinedAt: !3333)
!3333 = distinct !DILocation(line: 951, column: 10, scope: !3325)
!3334 = !DILocation(line: 939, column: 10, scope: !3307, inlinedAt: !3333)
!3335 = !DILocation(line: 951, column: 3, scope: !3325)
!3336 = distinct !DISubprogram(name: "quotearg_n_style", scope: !323, file: !323, line: 955, type: !3337, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !322, retainedNodes: !3339)
!3337 = !DISubroutineType(types: !3338)
!3338 = !{!26, !30, !325, !28}
!3339 = !{!3340, !3341, !3342, !3343}
!3340 = !DILocalVariable(name: "n", arg: 1, scope: !3336, file: !323, line: 955, type: !30)
!3341 = !DILocalVariable(name: "s", arg: 2, scope: !3336, file: !323, line: 955, type: !325)
!3342 = !DILocalVariable(name: "arg", arg: 3, scope: !3336, file: !323, line: 955, type: !28)
!3343 = !DILocalVariable(name: "o", scope: !3336, file: !323, line: 957, type: !352)
!3344 = !DILocation(line: 0, scope: !3336)
!3345 = !DILocation(line: 957, column: 3, scope: !3336)
!3346 = !DILocation(line: 957, column: 32, scope: !3336)
!3347 = !DILocalVariable(name: "style", arg: 1, scope: !3348, file: !323, line: 193, type: !325)
!3348 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !323, file: !323, line: 193, type: !3349, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !322, retainedNodes: !3351)
!3349 = !DISubroutineType(types: !3350)
!3350 = !{!353, !325}
!3351 = !{!3347, !3352}
!3352 = !DILocalVariable(name: "o", scope: !3348, file: !323, line: 195, type: !353)
!3353 = !DILocation(line: 0, scope: !3348, inlinedAt: !3354)
!3354 = distinct !DILocation(line: 957, column: 36, scope: !3336)
!3355 = !DILocation(line: 195, column: 26, scope: !3348, inlinedAt: !3354)
!3356 = !{!3357}
!3357 = distinct !{!3357, !3358, !"quoting_options_from_style: argument 0"}
!3358 = distinct !{!3358, !"quoting_options_from_style"}
!3359 = !DILocation(line: 196, column: 13, scope: !3360, inlinedAt: !3354)
!3360 = distinct !DILexicalBlock(scope: !3348, file: !323, line: 196, column: 7)
!3361 = !DILocation(line: 196, column: 7, scope: !3348, inlinedAt: !3354)
!3362 = !DILocation(line: 197, column: 5, scope: !3360, inlinedAt: !3354)
!3363 = !DILocation(line: 198, column: 5, scope: !3348, inlinedAt: !3354)
!3364 = !DILocation(line: 198, column: 11, scope: !3348, inlinedAt: !3354)
!3365 = !DILocation(line: 958, column: 10, scope: !3336)
!3366 = !DILocation(line: 959, column: 1, scope: !3336)
!3367 = !DILocation(line: 958, column: 3, scope: !3336)
!3368 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !323, file: !323, line: 962, type: !3369, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !322, retainedNodes: !3371)
!3369 = !DISubroutineType(types: !3370)
!3370 = !{!26, !30, !325, !28, !85}
!3371 = !{!3372, !3373, !3374, !3375, !3376}
!3372 = !DILocalVariable(name: "n", arg: 1, scope: !3368, file: !323, line: 962, type: !30)
!3373 = !DILocalVariable(name: "s", arg: 2, scope: !3368, file: !323, line: 962, type: !325)
!3374 = !DILocalVariable(name: "arg", arg: 3, scope: !3368, file: !323, line: 963, type: !28)
!3375 = !DILocalVariable(name: "argsize", arg: 4, scope: !3368, file: !323, line: 963, type: !85)
!3376 = !DILocalVariable(name: "o", scope: !3368, file: !323, line: 965, type: !352)
!3377 = !DILocation(line: 0, scope: !3368)
!3378 = !DILocation(line: 965, column: 3, scope: !3368)
!3379 = !DILocation(line: 965, column: 32, scope: !3368)
!3380 = !DILocation(line: 0, scope: !3348, inlinedAt: !3381)
!3381 = distinct !DILocation(line: 965, column: 36, scope: !3368)
!3382 = !DILocation(line: 195, column: 26, scope: !3348, inlinedAt: !3381)
!3383 = !{!3384}
!3384 = distinct !{!3384, !3385, !"quoting_options_from_style: argument 0"}
!3385 = distinct !{!3385, !"quoting_options_from_style"}
!3386 = !DILocation(line: 196, column: 13, scope: !3360, inlinedAt: !3381)
!3387 = !DILocation(line: 196, column: 7, scope: !3348, inlinedAt: !3381)
!3388 = !DILocation(line: 197, column: 5, scope: !3360, inlinedAt: !3381)
!3389 = !DILocation(line: 198, column: 5, scope: !3348, inlinedAt: !3381)
!3390 = !DILocation(line: 198, column: 11, scope: !3348, inlinedAt: !3381)
!3391 = !DILocation(line: 966, column: 10, scope: !3368)
!3392 = !DILocation(line: 967, column: 1, scope: !3368)
!3393 = !DILocation(line: 966, column: 3, scope: !3368)
!3394 = distinct !DISubprogram(name: "quotearg_style", scope: !323, file: !323, line: 970, type: !3395, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !322, retainedNodes: !3397)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{!26, !325, !28}
!3397 = !{!3398, !3399}
!3398 = !DILocalVariable(name: "s", arg: 1, scope: !3394, file: !323, line: 970, type: !325)
!3399 = !DILocalVariable(name: "arg", arg: 2, scope: !3394, file: !323, line: 970, type: !28)
!3400 = !DILocation(line: 195, column: 26, scope: !3348, inlinedAt: !3401)
!3401 = distinct !DILocation(line: 957, column: 36, scope: !3336, inlinedAt: !3402)
!3402 = distinct !DILocation(line: 972, column: 10, scope: !3394)
!3403 = !DILocation(line: 957, column: 32, scope: !3336, inlinedAt: !3402)
!3404 = !DILocation(line: 0, scope: !3394)
!3405 = !DILocation(line: 0, scope: !3336, inlinedAt: !3402)
!3406 = !DILocation(line: 957, column: 3, scope: !3336, inlinedAt: !3402)
!3407 = !DILocation(line: 0, scope: !3348, inlinedAt: !3401)
!3408 = !{!3409}
!3409 = distinct !{!3409, !3410, !"quoting_options_from_style: argument 0"}
!3410 = distinct !{!3410, !"quoting_options_from_style"}
!3411 = !DILocation(line: 196, column: 13, scope: !3360, inlinedAt: !3401)
!3412 = !DILocation(line: 196, column: 7, scope: !3348, inlinedAt: !3401)
!3413 = !DILocation(line: 197, column: 5, scope: !3360, inlinedAt: !3401)
!3414 = !DILocation(line: 198, column: 5, scope: !3348, inlinedAt: !3401)
!3415 = !DILocation(line: 198, column: 11, scope: !3348, inlinedAt: !3401)
!3416 = !DILocation(line: 958, column: 10, scope: !3336, inlinedAt: !3402)
!3417 = !DILocation(line: 959, column: 1, scope: !3336, inlinedAt: !3402)
!3418 = !DILocation(line: 972, column: 3, scope: !3394)
!3419 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !323, file: !323, line: 976, type: !3420, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !322, retainedNodes: !3422)
!3420 = !DISubroutineType(types: !3421)
!3421 = !{!26, !325, !28, !85}
!3422 = !{!3423, !3424, !3425}
!3423 = !DILocalVariable(name: "s", arg: 1, scope: !3419, file: !323, line: 976, type: !325)
!3424 = !DILocalVariable(name: "arg", arg: 2, scope: !3419, file: !323, line: 976, type: !28)
!3425 = !DILocalVariable(name: "argsize", arg: 3, scope: !3419, file: !323, line: 976, type: !85)
!3426 = !DILocation(line: 195, column: 26, scope: !3348, inlinedAt: !3427)
!3427 = distinct !DILocation(line: 965, column: 36, scope: !3368, inlinedAt: !3428)
!3428 = distinct !DILocation(line: 978, column: 10, scope: !3419)
!3429 = !DILocation(line: 965, column: 32, scope: !3368, inlinedAt: !3428)
!3430 = !DILocation(line: 0, scope: !3419)
!3431 = !DILocation(line: 0, scope: !3368, inlinedAt: !3428)
!3432 = !DILocation(line: 965, column: 3, scope: !3368, inlinedAt: !3428)
!3433 = !DILocation(line: 0, scope: !3348, inlinedAt: !3427)
!3434 = !{!3435}
!3435 = distinct !{!3435, !3436, !"quoting_options_from_style: argument 0"}
!3436 = distinct !{!3436, !"quoting_options_from_style"}
!3437 = !DILocation(line: 196, column: 13, scope: !3360, inlinedAt: !3427)
!3438 = !DILocation(line: 196, column: 7, scope: !3348, inlinedAt: !3427)
!3439 = !DILocation(line: 197, column: 5, scope: !3360, inlinedAt: !3427)
!3440 = !DILocation(line: 198, column: 5, scope: !3348, inlinedAt: !3427)
!3441 = !DILocation(line: 198, column: 11, scope: !3348, inlinedAt: !3427)
!3442 = !DILocation(line: 966, column: 10, scope: !3368, inlinedAt: !3428)
!3443 = !DILocation(line: 967, column: 1, scope: !3368, inlinedAt: !3428)
!3444 = !DILocation(line: 978, column: 3, scope: !3419)
!3445 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !323, file: !323, line: 982, type: !3446, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !322, retainedNodes: !3448)
!3446 = !DISubroutineType(types: !3447)
!3447 = !{!26, !28, !85, !27}
!3448 = !{!3449, !3450, !3451, !3452}
!3449 = !DILocalVariable(name: "arg", arg: 1, scope: !3445, file: !323, line: 982, type: !28)
!3450 = !DILocalVariable(name: "argsize", arg: 2, scope: !3445, file: !323, line: 982, type: !85)
!3451 = !DILocalVariable(name: "ch", arg: 3, scope: !3445, file: !323, line: 982, type: !27)
!3452 = !DILocalVariable(name: "options", scope: !3445, file: !323, line: 984, type: !353)
!3453 = !DILocation(line: 0, scope: !3445)
!3454 = !DILocation(line: 984, column: 3, scope: !3445)
!3455 = !DILocation(line: 984, column: 26, scope: !3445)
!3456 = !DILocation(line: 985, column: 13, scope: !3445)
!3457 = !{i64 0, i64 4, !1272, i64 4, i64 4, !1265, i64 8, i64 32, !1272, i64 40, i64 8, !1176, i64 48, i64 8, !1176}
!3458 = !DILocation(line: 0, scope: !2284, inlinedAt: !3459)
!3459 = distinct !DILocation(line: 986, column: 3, scope: !3445)
!3460 = !DILocation(line: 156, column: 62, scope: !2284, inlinedAt: !3459)
!3461 = !DILocation(line: 156, column: 57, scope: !2284, inlinedAt: !3459)
!3462 = !DILocation(line: 157, column: 15, scope: !2284, inlinedAt: !3459)
!3463 = !DILocation(line: 158, column: 12, scope: !2284, inlinedAt: !3459)
!3464 = !DILocation(line: 158, column: 15, scope: !2284, inlinedAt: !3459)
!3465 = !DILocation(line: 158, column: 25, scope: !2284, inlinedAt: !3459)
!3466 = !DILocation(line: 159, column: 18, scope: !2284, inlinedAt: !3459)
!3467 = !DILocation(line: 159, column: 23, scope: !2284, inlinedAt: !3459)
!3468 = !DILocation(line: 159, column: 6, scope: !2284, inlinedAt: !3459)
!3469 = !DILocation(line: 987, column: 10, scope: !3445)
!3470 = !DILocation(line: 988, column: 1, scope: !3445)
!3471 = !DILocation(line: 987, column: 3, scope: !3445)
!3472 = distinct !DISubprogram(name: "quotearg_char", scope: !323, file: !323, line: 991, type: !3473, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !322, retainedNodes: !3475)
!3473 = !DISubroutineType(types: !3474)
!3474 = !{!26, !28, !27}
!3475 = !{!3476, !3477}
!3476 = !DILocalVariable(name: "arg", arg: 1, scope: !3472, file: !323, line: 991, type: !28)
!3477 = !DILocalVariable(name: "ch", arg: 2, scope: !3472, file: !323, line: 991, type: !27)
!3478 = !DILocation(line: 984, column: 26, scope: !3445, inlinedAt: !3479)
!3479 = distinct !DILocation(line: 993, column: 10, scope: !3472)
!3480 = !DILocation(line: 0, scope: !3472)
!3481 = !DILocation(line: 0, scope: !3445, inlinedAt: !3479)
!3482 = !DILocation(line: 984, column: 3, scope: !3445, inlinedAt: !3479)
!3483 = !DILocation(line: 985, column: 13, scope: !3445, inlinedAt: !3479)
!3484 = !DILocation(line: 0, scope: !2284, inlinedAt: !3485)
!3485 = distinct !DILocation(line: 986, column: 3, scope: !3445, inlinedAt: !3479)
!3486 = !DILocation(line: 156, column: 62, scope: !2284, inlinedAt: !3485)
!3487 = !DILocation(line: 156, column: 57, scope: !2284, inlinedAt: !3485)
!3488 = !DILocation(line: 157, column: 15, scope: !2284, inlinedAt: !3485)
!3489 = !DILocation(line: 158, column: 12, scope: !2284, inlinedAt: !3485)
!3490 = !DILocation(line: 158, column: 15, scope: !2284, inlinedAt: !3485)
!3491 = !DILocation(line: 158, column: 25, scope: !2284, inlinedAt: !3485)
!3492 = !DILocation(line: 159, column: 18, scope: !2284, inlinedAt: !3485)
!3493 = !DILocation(line: 159, column: 23, scope: !2284, inlinedAt: !3485)
!3494 = !DILocation(line: 159, column: 6, scope: !2284, inlinedAt: !3485)
!3495 = !DILocation(line: 987, column: 10, scope: !3445, inlinedAt: !3479)
!3496 = !DILocation(line: 988, column: 1, scope: !3445, inlinedAt: !3479)
!3497 = !DILocation(line: 993, column: 3, scope: !3472)
!3498 = distinct !DISubprogram(name: "quotearg_colon", scope: !323, file: !323, line: 997, type: !105, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !322, retainedNodes: !3499)
!3499 = !{!3500}
!3500 = !DILocalVariable(name: "arg", arg: 1, scope: !3498, file: !323, line: 997, type: !28)
!3501 = !DILocation(line: 984, column: 26, scope: !3445, inlinedAt: !3502)
!3502 = distinct !DILocation(line: 993, column: 10, scope: !3472, inlinedAt: !3503)
!3503 = distinct !DILocation(line: 999, column: 10, scope: !3498)
!3504 = !DILocation(line: 0, scope: !3498)
!3505 = !DILocation(line: 0, scope: !3472, inlinedAt: !3503)
!3506 = !DILocation(line: 0, scope: !3445, inlinedAt: !3502)
!3507 = !DILocation(line: 984, column: 3, scope: !3445, inlinedAt: !3502)
!3508 = !DILocation(line: 985, column: 13, scope: !3445, inlinedAt: !3502)
!3509 = !DILocation(line: 0, scope: !2284, inlinedAt: !3510)
!3510 = distinct !DILocation(line: 986, column: 3, scope: !3445, inlinedAt: !3502)
!3511 = !DILocation(line: 156, column: 57, scope: !2284, inlinedAt: !3510)
!3512 = !DILocation(line: 158, column: 12, scope: !2284, inlinedAt: !3510)
!3513 = !DILocation(line: 159, column: 6, scope: !2284, inlinedAt: !3510)
!3514 = !DILocation(line: 987, column: 10, scope: !3445, inlinedAt: !3502)
!3515 = !DILocation(line: 988, column: 1, scope: !3445, inlinedAt: !3502)
!3516 = !DILocation(line: 999, column: 3, scope: !3498)
!3517 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !323, file: !323, line: 1003, type: !3326, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !322, retainedNodes: !3518)
!3518 = !{!3519, !3520}
!3519 = !DILocalVariable(name: "arg", arg: 1, scope: !3517, file: !323, line: 1003, type: !28)
!3520 = !DILocalVariable(name: "argsize", arg: 2, scope: !3517, file: !323, line: 1003, type: !85)
!3521 = !DILocation(line: 984, column: 26, scope: !3445, inlinedAt: !3522)
!3522 = distinct !DILocation(line: 1005, column: 10, scope: !3517)
!3523 = !DILocation(line: 0, scope: !3517)
!3524 = !DILocation(line: 0, scope: !3445, inlinedAt: !3522)
!3525 = !DILocation(line: 984, column: 3, scope: !3445, inlinedAt: !3522)
!3526 = !DILocation(line: 985, column: 13, scope: !3445, inlinedAt: !3522)
!3527 = !DILocation(line: 0, scope: !2284, inlinedAt: !3528)
!3528 = distinct !DILocation(line: 986, column: 3, scope: !3445, inlinedAt: !3522)
!3529 = !DILocation(line: 156, column: 57, scope: !2284, inlinedAt: !3528)
!3530 = !DILocation(line: 158, column: 12, scope: !2284, inlinedAt: !3528)
!3531 = !DILocation(line: 159, column: 6, scope: !2284, inlinedAt: !3528)
!3532 = !DILocation(line: 987, column: 10, scope: !3445, inlinedAt: !3522)
!3533 = !DILocation(line: 988, column: 1, scope: !3445, inlinedAt: !3522)
!3534 = !DILocation(line: 1005, column: 3, scope: !3517)
!3535 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !323, file: !323, line: 1009, type: !3337, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !322, retainedNodes: !3536)
!3536 = !{!3537, !3538, !3539, !3540}
!3537 = !DILocalVariable(name: "n", arg: 1, scope: !3535, file: !323, line: 1009, type: !30)
!3538 = !DILocalVariable(name: "s", arg: 2, scope: !3535, file: !323, line: 1009, type: !325)
!3539 = !DILocalVariable(name: "arg", arg: 3, scope: !3535, file: !323, line: 1009, type: !28)
!3540 = !DILocalVariable(name: "options", scope: !3535, file: !323, line: 1011, type: !353)
!3541 = !DILocation(line: 195, column: 26, scope: !3348, inlinedAt: !3542)
!3542 = distinct !DILocation(line: 1012, column: 13, scope: !3535)
!3543 = !DILocation(line: 0, scope: !3535)
!3544 = !DILocation(line: 1011, column: 3, scope: !3535)
!3545 = !DILocation(line: 1011, column: 26, scope: !3535)
!3546 = !DILocation(line: 1012, column: 13, scope: !3535)
!3547 = !DILocation(line: 0, scope: !3348, inlinedAt: !3542)
!3548 = !{!3549}
!3549 = distinct !{!3549, !3550, !"quoting_options_from_style: argument 0"}
!3550 = distinct !{!3550, !"quoting_options_from_style"}
!3551 = !DILocation(line: 196, column: 13, scope: !3360, inlinedAt: !3542)
!3552 = !DILocation(line: 196, column: 7, scope: !3348, inlinedAt: !3542)
!3553 = !DILocation(line: 197, column: 5, scope: !3360, inlinedAt: !3542)
!3554 = !DILocation(line: 0, scope: !2284, inlinedAt: !3555)
!3555 = distinct !DILocation(line: 1013, column: 3, scope: !3535)
!3556 = !DILocation(line: 156, column: 57, scope: !2284, inlinedAt: !3555)
!3557 = !DILocation(line: 158, column: 12, scope: !2284, inlinedAt: !3555)
!3558 = !DILocation(line: 159, column: 6, scope: !2284, inlinedAt: !3555)
!3559 = !DILocation(line: 1014, column: 10, scope: !3535)
!3560 = !DILocation(line: 1015, column: 1, scope: !3535)
!3561 = !DILocation(line: 1014, column: 3, scope: !3535)
!3562 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !323, file: !323, line: 1018, type: !3563, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !322, retainedNodes: !3565)
!3563 = !DISubroutineType(types: !3564)
!3564 = !{!26, !30, !28, !28, !28}
!3565 = !{!3566, !3567, !3568, !3569}
!3566 = !DILocalVariable(name: "n", arg: 1, scope: !3562, file: !323, line: 1018, type: !30)
!3567 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3562, file: !323, line: 1018, type: !28)
!3568 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3562, file: !323, line: 1019, type: !28)
!3569 = !DILocalVariable(name: "arg", arg: 4, scope: !3562, file: !323, line: 1019, type: !28)
!3570 = !DILocalVariable(name: "o", scope: !3571, file: !323, line: 1030, type: !353)
!3571 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !323, file: !323, line: 1026, type: !3572, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !322, retainedNodes: !3574)
!3572 = !DISubroutineType(types: !3573)
!3573 = !{!26, !30, !28, !28, !28, !85}
!3574 = !{!3575, !3576, !3577, !3578, !3579, !3570}
!3575 = !DILocalVariable(name: "n", arg: 1, scope: !3571, file: !323, line: 1026, type: !30)
!3576 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3571, file: !323, line: 1026, type: !28)
!3577 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3571, file: !323, line: 1027, type: !28)
!3578 = !DILocalVariable(name: "arg", arg: 4, scope: !3571, file: !323, line: 1028, type: !28)
!3579 = !DILocalVariable(name: "argsize", arg: 5, scope: !3571, file: !323, line: 1028, type: !85)
!3580 = !DILocation(line: 1030, column: 26, scope: !3571, inlinedAt: !3581)
!3581 = distinct !DILocation(line: 1021, column: 10, scope: !3562)
!3582 = !DILocation(line: 0, scope: !3562)
!3583 = !DILocation(line: 0, scope: !3571, inlinedAt: !3581)
!3584 = !DILocation(line: 1030, column: 3, scope: !3571, inlinedAt: !3581)
!3585 = !DILocation(line: 1030, column: 30, scope: !3571, inlinedAt: !3581)
!3586 = !DILocation(line: 0, scope: !2324, inlinedAt: !3587)
!3587 = distinct !DILocation(line: 1031, column: 3, scope: !3571, inlinedAt: !3581)
!3588 = !DILocation(line: 184, column: 6, scope: !2324, inlinedAt: !3587)
!3589 = !DILocation(line: 184, column: 12, scope: !2324, inlinedAt: !3587)
!3590 = !DILocation(line: 185, column: 8, scope: !2338, inlinedAt: !3587)
!3591 = !DILocation(line: 185, column: 23, scope: !2338, inlinedAt: !3587)
!3592 = !DILocation(line: 185, column: 19, scope: !2338, inlinedAt: !3587)
!3593 = !DILocation(line: 186, column: 5, scope: !2338, inlinedAt: !3587)
!3594 = !DILocation(line: 187, column: 6, scope: !2324, inlinedAt: !3587)
!3595 = !DILocation(line: 187, column: 17, scope: !2324, inlinedAt: !3587)
!3596 = !DILocation(line: 188, column: 6, scope: !2324, inlinedAt: !3587)
!3597 = !DILocation(line: 188, column: 18, scope: !2324, inlinedAt: !3587)
!3598 = !DILocation(line: 1032, column: 10, scope: !3571, inlinedAt: !3581)
!3599 = !DILocation(line: 1033, column: 1, scope: !3571, inlinedAt: !3581)
!3600 = !DILocation(line: 1021, column: 3, scope: !3562)
!3601 = !DILocation(line: 0, scope: !3571)
!3602 = !DILocation(line: 1030, column: 3, scope: !3571)
!3603 = !DILocation(line: 1030, column: 26, scope: !3571)
!3604 = !DILocation(line: 1030, column: 30, scope: !3571)
!3605 = !DILocation(line: 0, scope: !2324, inlinedAt: !3606)
!3606 = distinct !DILocation(line: 1031, column: 3, scope: !3571)
!3607 = !DILocation(line: 184, column: 6, scope: !2324, inlinedAt: !3606)
!3608 = !DILocation(line: 184, column: 12, scope: !2324, inlinedAt: !3606)
!3609 = !DILocation(line: 185, column: 8, scope: !2338, inlinedAt: !3606)
!3610 = !DILocation(line: 185, column: 23, scope: !2338, inlinedAt: !3606)
!3611 = !DILocation(line: 185, column: 19, scope: !2338, inlinedAt: !3606)
!3612 = !DILocation(line: 186, column: 5, scope: !2338, inlinedAt: !3606)
!3613 = !DILocation(line: 187, column: 6, scope: !2324, inlinedAt: !3606)
!3614 = !DILocation(line: 187, column: 17, scope: !2324, inlinedAt: !3606)
!3615 = !DILocation(line: 188, column: 6, scope: !2324, inlinedAt: !3606)
!3616 = !DILocation(line: 188, column: 18, scope: !2324, inlinedAt: !3606)
!3617 = !DILocation(line: 1032, column: 10, scope: !3571)
!3618 = !DILocation(line: 1033, column: 1, scope: !3571)
!3619 = !DILocation(line: 1032, column: 3, scope: !3571)
!3620 = distinct !DISubprogram(name: "quotearg_custom", scope: !323, file: !323, line: 1036, type: !3621, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !322, retainedNodes: !3623)
!3621 = !DISubroutineType(types: !3622)
!3622 = !{!26, !28, !28, !28}
!3623 = !{!3624, !3625, !3626}
!3624 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3620, file: !323, line: 1036, type: !28)
!3625 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3620, file: !323, line: 1036, type: !28)
!3626 = !DILocalVariable(name: "arg", arg: 3, scope: !3620, file: !323, line: 1037, type: !28)
!3627 = !DILocation(line: 1030, column: 26, scope: !3571, inlinedAt: !3628)
!3628 = distinct !DILocation(line: 1021, column: 10, scope: !3562, inlinedAt: !3629)
!3629 = distinct !DILocation(line: 1039, column: 10, scope: !3620)
!3630 = !DILocation(line: 0, scope: !3620)
!3631 = !DILocation(line: 0, scope: !3562, inlinedAt: !3629)
!3632 = !DILocation(line: 0, scope: !3571, inlinedAt: !3628)
!3633 = !DILocation(line: 1030, column: 3, scope: !3571, inlinedAt: !3628)
!3634 = !DILocation(line: 1030, column: 30, scope: !3571, inlinedAt: !3628)
!3635 = !DILocation(line: 0, scope: !2324, inlinedAt: !3636)
!3636 = distinct !DILocation(line: 1031, column: 3, scope: !3571, inlinedAt: !3628)
!3637 = !DILocation(line: 184, column: 6, scope: !2324, inlinedAt: !3636)
!3638 = !DILocation(line: 184, column: 12, scope: !2324, inlinedAt: !3636)
!3639 = !DILocation(line: 185, column: 8, scope: !2338, inlinedAt: !3636)
!3640 = !DILocation(line: 185, column: 23, scope: !2338, inlinedAt: !3636)
!3641 = !DILocation(line: 185, column: 19, scope: !2338, inlinedAt: !3636)
!3642 = !DILocation(line: 186, column: 5, scope: !2338, inlinedAt: !3636)
!3643 = !DILocation(line: 187, column: 6, scope: !2324, inlinedAt: !3636)
!3644 = !DILocation(line: 187, column: 17, scope: !2324, inlinedAt: !3636)
!3645 = !DILocation(line: 188, column: 6, scope: !2324, inlinedAt: !3636)
!3646 = !DILocation(line: 188, column: 18, scope: !2324, inlinedAt: !3636)
!3647 = !DILocation(line: 1032, column: 10, scope: !3571, inlinedAt: !3628)
!3648 = !DILocation(line: 1033, column: 1, scope: !3571, inlinedAt: !3628)
!3649 = !DILocation(line: 1039, column: 3, scope: !3620)
!3650 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !323, file: !323, line: 1043, type: !3651, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !322, retainedNodes: !3653)
!3651 = !DISubroutineType(types: !3652)
!3652 = !{!26, !28, !28, !28, !85}
!3653 = !{!3654, !3655, !3656, !3657}
!3654 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3650, file: !323, line: 1043, type: !28)
!3655 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3650, file: !323, line: 1043, type: !28)
!3656 = !DILocalVariable(name: "arg", arg: 3, scope: !3650, file: !323, line: 1044, type: !28)
!3657 = !DILocalVariable(name: "argsize", arg: 4, scope: !3650, file: !323, line: 1044, type: !85)
!3658 = !DILocation(line: 1030, column: 26, scope: !3571, inlinedAt: !3659)
!3659 = distinct !DILocation(line: 1046, column: 10, scope: !3650)
!3660 = !DILocation(line: 0, scope: !3650)
!3661 = !DILocation(line: 0, scope: !3571, inlinedAt: !3659)
!3662 = !DILocation(line: 1030, column: 3, scope: !3571, inlinedAt: !3659)
!3663 = !DILocation(line: 1030, column: 30, scope: !3571, inlinedAt: !3659)
!3664 = !DILocation(line: 0, scope: !2324, inlinedAt: !3665)
!3665 = distinct !DILocation(line: 1031, column: 3, scope: !3571, inlinedAt: !3659)
!3666 = !DILocation(line: 184, column: 6, scope: !2324, inlinedAt: !3665)
!3667 = !DILocation(line: 184, column: 12, scope: !2324, inlinedAt: !3665)
!3668 = !DILocation(line: 185, column: 8, scope: !2338, inlinedAt: !3665)
!3669 = !DILocation(line: 185, column: 23, scope: !2338, inlinedAt: !3665)
!3670 = !DILocation(line: 185, column: 19, scope: !2338, inlinedAt: !3665)
!3671 = !DILocation(line: 186, column: 5, scope: !2338, inlinedAt: !3665)
!3672 = !DILocation(line: 187, column: 6, scope: !2324, inlinedAt: !3665)
!3673 = !DILocation(line: 187, column: 17, scope: !2324, inlinedAt: !3665)
!3674 = !DILocation(line: 188, column: 6, scope: !2324, inlinedAt: !3665)
!3675 = !DILocation(line: 188, column: 18, scope: !2324, inlinedAt: !3665)
!3676 = !DILocation(line: 1032, column: 10, scope: !3571, inlinedAt: !3659)
!3677 = !DILocation(line: 1033, column: 1, scope: !3571, inlinedAt: !3659)
!3678 = !DILocation(line: 1046, column: 3, scope: !3650)
!3679 = distinct !DISubprogram(name: "quote_n_mem", scope: !323, file: !323, line: 1061, type: !3680, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !322, retainedNodes: !3682)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{!28, !30, !28, !85}
!3682 = !{!3683, !3684, !3685}
!3683 = !DILocalVariable(name: "n", arg: 1, scope: !3679, file: !323, line: 1061, type: !30)
!3684 = !DILocalVariable(name: "arg", arg: 2, scope: !3679, file: !323, line: 1061, type: !28)
!3685 = !DILocalVariable(name: "argsize", arg: 3, scope: !3679, file: !323, line: 1061, type: !85)
!3686 = !DILocation(line: 0, scope: !3679)
!3687 = !DILocation(line: 1063, column: 10, scope: !3679)
!3688 = !DILocation(line: 1063, column: 3, scope: !3679)
!3689 = distinct !DISubprogram(name: "quote_mem", scope: !323, file: !323, line: 1067, type: !3690, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !322, retainedNodes: !3692)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{!28, !28, !85}
!3692 = !{!3693, !3694}
!3693 = !DILocalVariable(name: "arg", arg: 1, scope: !3689, file: !323, line: 1067, type: !28)
!3694 = !DILocalVariable(name: "argsize", arg: 2, scope: !3689, file: !323, line: 1067, type: !85)
!3695 = !DILocation(line: 0, scope: !3689)
!3696 = !DILocation(line: 0, scope: !3679, inlinedAt: !3697)
!3697 = distinct !DILocation(line: 1069, column: 10, scope: !3689)
!3698 = !DILocation(line: 1063, column: 10, scope: !3679, inlinedAt: !3697)
!3699 = !DILocation(line: 1069, column: 3, scope: !3689)
!3700 = distinct !DISubprogram(name: "quote_n", scope: !323, file: !323, line: 1073, type: !175, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !322, retainedNodes: !3701)
!3701 = !{!3702, !3703}
!3702 = !DILocalVariable(name: "n", arg: 1, scope: !3700, file: !323, line: 1073, type: !30)
!3703 = !DILocalVariable(name: "arg", arg: 2, scope: !3700, file: !323, line: 1073, type: !28)
!3704 = !DILocation(line: 0, scope: !3700)
!3705 = !DILocation(line: 0, scope: !3679, inlinedAt: !3706)
!3706 = distinct !DILocation(line: 1075, column: 10, scope: !3700)
!3707 = !DILocation(line: 1063, column: 10, scope: !3679, inlinedAt: !3706)
!3708 = !DILocation(line: 1075, column: 3, scope: !3700)
!3709 = distinct !DISubprogram(name: "quote", scope: !323, file: !323, line: 1079, type: !139, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !322, retainedNodes: !3710)
!3710 = !{!3711}
!3711 = !DILocalVariable(name: "arg", arg: 1, scope: !3709, file: !323, line: 1079, type: !28)
!3712 = !DILocation(line: 0, scope: !3709)
!3713 = !DILocation(line: 0, scope: !3700, inlinedAt: !3714)
!3714 = distinct !DILocation(line: 1081, column: 10, scope: !3709)
!3715 = !DILocation(line: 0, scope: !3679, inlinedAt: !3716)
!3716 = distinct !DILocation(line: 1075, column: 10, scope: !3700, inlinedAt: !3714)
!3717 = !DILocation(line: 1063, column: 10, scope: !3679, inlinedAt: !3716)
!3718 = !DILocation(line: 1081, column: 3, scope: !3709)
!3719 = distinct !DISubprogram(name: "version_etc_arn", scope: !482, file: !482, line: 61, type: !3720, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !481, retainedNodes: !3725)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{null, !3722, !28, !28, !28, !3724, !85}
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1811, line: 7, baseType: !492)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!3725 = !{!3726, !3727, !3728, !3729, !3730, !3731}
!3726 = !DILocalVariable(name: "stream", arg: 1, scope: !3719, file: !482, line: 61, type: !3722)
!3727 = !DILocalVariable(name: "command_name", arg: 2, scope: !3719, file: !482, line: 62, type: !28)
!3728 = !DILocalVariable(name: "package", arg: 3, scope: !3719, file: !482, line: 62, type: !28)
!3729 = !DILocalVariable(name: "version", arg: 4, scope: !3719, file: !482, line: 63, type: !28)
!3730 = !DILocalVariable(name: "authors", arg: 5, scope: !3719, file: !482, line: 64, type: !3724)
!3731 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3719, file: !482, line: 64, type: !85)
!3732 = !DILocation(line: 0, scope: !3719)
!3733 = !DILocation(line: 66, column: 7, scope: !3734)
!3734 = distinct !DILexicalBlock(scope: !3719, file: !482, line: 66, column: 7)
!3735 = !DILocation(line: 66, column: 7, scope: !3719)
!3736 = !DILocation(line: 67, column: 5, scope: !3734)
!3737 = !DILocation(line: 69, column: 5, scope: !3734)
!3738 = !DILocation(line: 83, column: 3, scope: !3719)
!3739 = !DILocation(line: 85, column: 3, scope: !3719)
!3740 = !DILocation(line: 88, column: 3, scope: !3719)
!3741 = !DILocation(line: 95, column: 3, scope: !3719)
!3742 = !DILocation(line: 97, column: 3, scope: !3719)
!3743 = !DILocation(line: 105, column: 7, scope: !3744)
!3744 = distinct !DILexicalBlock(scope: !3719, file: !482, line: 98, column: 5)
!3745 = !DILocation(line: 106, column: 7, scope: !3744)
!3746 = !DILocation(line: 109, column: 7, scope: !3744)
!3747 = !DILocation(line: 110, column: 7, scope: !3744)
!3748 = !DILocation(line: 113, column: 7, scope: !3744)
!3749 = !DILocation(line: 115, column: 7, scope: !3744)
!3750 = !DILocation(line: 120, column: 7, scope: !3744)
!3751 = !DILocation(line: 122, column: 7, scope: !3744)
!3752 = !DILocation(line: 127, column: 7, scope: !3744)
!3753 = !DILocation(line: 129, column: 7, scope: !3744)
!3754 = !DILocation(line: 134, column: 7, scope: !3744)
!3755 = !DILocation(line: 137, column: 7, scope: !3744)
!3756 = !DILocation(line: 142, column: 7, scope: !3744)
!3757 = !DILocation(line: 145, column: 7, scope: !3744)
!3758 = !DILocation(line: 150, column: 7, scope: !3744)
!3759 = !DILocation(line: 154, column: 7, scope: !3744)
!3760 = !DILocation(line: 159, column: 7, scope: !3744)
!3761 = !DILocation(line: 163, column: 7, scope: !3744)
!3762 = !DILocation(line: 170, column: 7, scope: !3744)
!3763 = !DILocation(line: 174, column: 7, scope: !3744)
!3764 = !DILocation(line: 176, column: 1, scope: !3719)
!3765 = distinct !DISubprogram(name: "version_etc_ar", scope: !482, file: !482, line: 183, type: !3766, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !481, retainedNodes: !3768)
!3766 = !DISubroutineType(types: !3767)
!3767 = !{null, !3722, !28, !28, !28, !3724}
!3768 = !{!3769, !3770, !3771, !3772, !3773, !3774}
!3769 = !DILocalVariable(name: "stream", arg: 1, scope: !3765, file: !482, line: 183, type: !3722)
!3770 = !DILocalVariable(name: "command_name", arg: 2, scope: !3765, file: !482, line: 184, type: !28)
!3771 = !DILocalVariable(name: "package", arg: 3, scope: !3765, file: !482, line: 184, type: !28)
!3772 = !DILocalVariable(name: "version", arg: 4, scope: !3765, file: !482, line: 185, type: !28)
!3773 = !DILocalVariable(name: "authors", arg: 5, scope: !3765, file: !482, line: 185, type: !3724)
!3774 = !DILocalVariable(name: "n_authors", scope: !3765, file: !482, line: 187, type: !85)
!3775 = !DILocation(line: 0, scope: !3765)
!3776 = !DILocation(line: 189, column: 8, scope: !3777)
!3777 = distinct !DILexicalBlock(scope: !3765, file: !482, line: 189, column: 3)
!3778 = !DILocation(line: 0, scope: !3777)
!3779 = !DILocation(line: 189, column: 23, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3777, file: !482, line: 189, column: 3)
!3781 = !DILocation(line: 189, column: 3, scope: !3777)
!3782 = !DILocation(line: 189, column: 52, scope: !3780)
!3783 = distinct !{!3783, !3781, !3784}
!3784 = !DILocation(line: 190, column: 5, scope: !3777)
!3785 = !DILocation(line: 191, column: 3, scope: !3765)
!3786 = !DILocation(line: 192, column: 1, scope: !3765)
!3787 = distinct !DISubprogram(name: "version_etc_va", scope: !482, file: !482, line: 199, type: !3788, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !481, retainedNodes: !3797)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{null, !3722, !28, !28, !28, !3790}
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !482, line: 192, size: 192, elements: !3792)
!3792 = !{!3793, !3794, !3795, !3796}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3791, file: !482, line: 192, baseType: !7, size: 32)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3791, file: !482, line: 192, baseType: !7, size: 32, offset: 32)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3791, file: !482, line: 192, baseType: !83, size: 64, offset: 64)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3791, file: !482, line: 192, baseType: !83, size: 64, offset: 128)
!3797 = !{!3798, !3799, !3800, !3801, !3802, !3803, !3804}
!3798 = !DILocalVariable(name: "stream", arg: 1, scope: !3787, file: !482, line: 199, type: !3722)
!3799 = !DILocalVariable(name: "command_name", arg: 2, scope: !3787, file: !482, line: 200, type: !28)
!3800 = !DILocalVariable(name: "package", arg: 3, scope: !3787, file: !482, line: 200, type: !28)
!3801 = !DILocalVariable(name: "version", arg: 4, scope: !3787, file: !482, line: 201, type: !28)
!3802 = !DILocalVariable(name: "authors", arg: 5, scope: !3787, file: !482, line: 201, type: !3790)
!3803 = !DILocalVariable(name: "n_authors", scope: !3787, file: !482, line: 203, type: !85)
!3804 = !DILocalVariable(name: "authtab", scope: !3787, file: !482, line: 204, type: !3805)
!3805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 640, elements: !406)
!3806 = !DILocation(line: 0, scope: !3787)
!3807 = !DILocation(line: 204, column: 3, scope: !3787)
!3808 = !DILocation(line: 204, column: 15, scope: !3787)
!3809 = !DILocation(line: 0, scope: !3810)
!3810 = distinct !DILexicalBlock(scope: !3811, file: !482, line: 206, column: 3)
!3811 = distinct !DILexicalBlock(scope: !3787, file: !482, line: 206, column: 3)
!3812 = !DILocation(line: 208, column: 35, scope: !3810)
!3813 = !DILocation(line: 208, column: 14, scope: !3810)
!3814 = !DILocation(line: 208, column: 33, scope: !3810)
!3815 = !DILocation(line: 208, column: 67, scope: !3810)
!3816 = !DILocation(line: 206, column: 3, scope: !3811)
!3817 = !DILocation(line: 0, scope: !3811)
!3818 = !DILocation(line: 211, column: 3, scope: !3787)
!3819 = !DILocation(line: 213, column: 1, scope: !3787)
!3820 = distinct !DISubprogram(name: "version_etc", scope: !482, file: !482, line: 230, type: !3821, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !481, retainedNodes: !3823)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{null, !3722, !28, !28, !28, null}
!3823 = !{!3824, !3825, !3826, !3827, !3828}
!3824 = !DILocalVariable(name: "stream", arg: 1, scope: !3820, file: !482, line: 230, type: !3722)
!3825 = !DILocalVariable(name: "command_name", arg: 2, scope: !3820, file: !482, line: 231, type: !28)
!3826 = !DILocalVariable(name: "package", arg: 3, scope: !3820, file: !482, line: 231, type: !28)
!3827 = !DILocalVariable(name: "version", arg: 4, scope: !3820, file: !482, line: 232, type: !28)
!3828 = !DILocalVariable(name: "authors", scope: !3820, file: !482, line: 234, type: !3829)
!3829 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !33, line: 52, baseType: !3830)
!3830 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3831, line: 32, baseType: !3832)
!3831 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!3832 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !482, line: 234, baseType: !3833)
!3833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3791, size: 192, elements: !68)
!3834 = !DILocation(line: 0, scope: !3820)
!3835 = !DILocation(line: 234, column: 3, scope: !3820)
!3836 = !DILocation(line: 234, column: 11, scope: !3820)
!3837 = !DILocation(line: 236, column: 3, scope: !3820)
!3838 = !DILocation(line: 237, column: 3, scope: !3820)
!3839 = !DILocation(line: 238, column: 3, scope: !3820)
!3840 = !DILocation(line: 239, column: 1, scope: !3820)
!3841 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !482, file: !482, line: 242, type: !112, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !481, retainedNodes: !31)
!3842 = !DILocation(line: 244, column: 3, scope: !3841)
!3843 = !DILocation(line: 249, column: 3, scope: !3841)
!3844 = !DILocation(line: 255, column: 3, scope: !3841)
!3845 = !DILocation(line: 260, column: 3, scope: !3841)
!3846 = !DILocation(line: 262, column: 1, scope: !3841)
!3847 = distinct !DISubprogram(name: "xnmalloc", scope: !154, file: !154, line: 99, type: !3848, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !523, retainedNodes: !3850)
!3848 = !DISubroutineType(types: !3849)
!3849 = !{!83, !85, !85}
!3850 = !{!3851, !3852}
!3851 = !DILocalVariable(name: "n", arg: 1, scope: !3847, file: !154, line: 99, type: !85)
!3852 = !DILocalVariable(name: "s", arg: 2, scope: !3847, file: !154, line: 99, type: !85)
!3853 = !DILocation(line: 0, scope: !3847)
!3854 = !DILocation(line: 101, column: 7, scope: !3855)
!3855 = distinct !DILexicalBlock(scope: !3847, file: !154, line: 101, column: 7)
!3856 = !DILocation(line: 101, column: 7, scope: !3847)
!3857 = !DILocation(line: 102, column: 5, scope: !3855)
!3858 = !DILocation(line: 103, column: 21, scope: !3847)
!3859 = !DILocalVariable(name: "n", arg: 1, scope: !3860, file: !524, line: 39, type: !85)
!3860 = distinct !DISubprogram(name: "xmalloc", scope: !524, file: !524, line: 39, type: !3861, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !523, retainedNodes: !3863)
!3861 = !DISubroutineType(types: !3862)
!3862 = !{!83, !85}
!3863 = !{!3859, !3864}
!3864 = !DILocalVariable(name: "p", scope: !3860, file: !524, line: 41, type: !83)
!3865 = !DILocation(line: 0, scope: !3860, inlinedAt: !3866)
!3866 = distinct !DILocation(line: 103, column: 10, scope: !3847)
!3867 = !DILocation(line: 41, column: 13, scope: !3860, inlinedAt: !3866)
!3868 = !DILocation(line: 42, column: 8, scope: !3869, inlinedAt: !3866)
!3869 = distinct !DILexicalBlock(scope: !3860, file: !524, line: 42, column: 7)
!3870 = !DILocation(line: 42, column: 15, scope: !3869, inlinedAt: !3866)
!3871 = !DILocation(line: 42, column: 10, scope: !3869, inlinedAt: !3866)
!3872 = !DILocation(line: 43, column: 5, scope: !3869, inlinedAt: !3866)
!3873 = !DILocation(line: 103, column: 3, scope: !3847)
!3874 = !DILocation(line: 0, scope: !3860)
!3875 = !DILocation(line: 41, column: 13, scope: !3860)
!3876 = !DILocation(line: 42, column: 8, scope: !3869)
!3877 = !DILocation(line: 42, column: 15, scope: !3869)
!3878 = !DILocation(line: 42, column: 10, scope: !3869)
!3879 = !DILocation(line: 43, column: 5, scope: !3869)
!3880 = !DILocation(line: 44, column: 3, scope: !3860)
!3881 = distinct !DISubprogram(name: "xnrealloc", scope: !154, file: !154, line: 112, type: !3882, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !523, retainedNodes: !3884)
!3882 = !DISubroutineType(types: !3883)
!3883 = !{!83, !83, !85, !85}
!3884 = !{!3885, !3886, !3887}
!3885 = !DILocalVariable(name: "p", arg: 1, scope: !3881, file: !154, line: 112, type: !83)
!3886 = !DILocalVariable(name: "n", arg: 2, scope: !3881, file: !154, line: 112, type: !85)
!3887 = !DILocalVariable(name: "s", arg: 3, scope: !3881, file: !154, line: 112, type: !85)
!3888 = !DILocation(line: 0, scope: !3881)
!3889 = !DILocation(line: 114, column: 7, scope: !3890)
!3890 = distinct !DILexicalBlock(scope: !3881, file: !154, line: 114, column: 7)
!3891 = !DILocation(line: 114, column: 7, scope: !3881)
!3892 = !DILocation(line: 115, column: 5, scope: !3890)
!3893 = !DILocation(line: 116, column: 25, scope: !3881)
!3894 = !DILocalVariable(name: "p", arg: 1, scope: !3895, file: !524, line: 51, type: !83)
!3895 = distinct !DISubprogram(name: "xrealloc", scope: !524, file: !524, line: 51, type: !3896, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !523, retainedNodes: !3898)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{!83, !83, !85}
!3898 = !{!3894, !3899}
!3899 = !DILocalVariable(name: "n", arg: 2, scope: !3895, file: !524, line: 51, type: !85)
!3900 = !DILocation(line: 0, scope: !3895, inlinedAt: !3901)
!3901 = distinct !DILocation(line: 116, column: 10, scope: !3881)
!3902 = !DILocation(line: 53, column: 8, scope: !3903, inlinedAt: !3901)
!3903 = distinct !DILexicalBlock(scope: !3895, file: !524, line: 53, column: 7)
!3904 = !DILocation(line: 53, column: 13, scope: !3903, inlinedAt: !3901)
!3905 = !DILocation(line: 53, column: 10, scope: !3903, inlinedAt: !3901)
!3906 = !DILocation(line: 57, column: 7, scope: !3907, inlinedAt: !3901)
!3907 = distinct !DILexicalBlock(scope: !3903, file: !524, line: 54, column: 5)
!3908 = !DILocation(line: 58, column: 7, scope: !3907, inlinedAt: !3901)
!3909 = !DILocation(line: 61, column: 7, scope: !3895, inlinedAt: !3901)
!3910 = !DILocation(line: 62, column: 8, scope: !3911, inlinedAt: !3901)
!3911 = distinct !DILexicalBlock(scope: !3895, file: !524, line: 62, column: 7)
!3912 = !DILocation(line: 62, column: 13, scope: !3911, inlinedAt: !3901)
!3913 = !DILocation(line: 62, column: 10, scope: !3911, inlinedAt: !3901)
!3914 = !DILocation(line: 63, column: 5, scope: !3911, inlinedAt: !3901)
!3915 = !DILocation(line: 116, column: 3, scope: !3881)
!3916 = !DILocation(line: 0, scope: !3895)
!3917 = !DILocation(line: 53, column: 8, scope: !3903)
!3918 = !DILocation(line: 53, column: 13, scope: !3903)
!3919 = !DILocation(line: 53, column: 10, scope: !3903)
!3920 = !DILocation(line: 57, column: 7, scope: !3907)
!3921 = !DILocation(line: 58, column: 7, scope: !3907)
!3922 = !DILocation(line: 61, column: 7, scope: !3895)
!3923 = !DILocation(line: 62, column: 8, scope: !3911)
!3924 = !DILocation(line: 62, column: 13, scope: !3911)
!3925 = !DILocation(line: 62, column: 10, scope: !3911)
!3926 = !DILocation(line: 63, column: 5, scope: !3911)
!3927 = !DILocation(line: 65, column: 1, scope: !3895)
!3928 = !DILocation(line: 0, scope: !527)
!3929 = !DILocation(line: 176, column: 14, scope: !527)
!3930 = !DILocation(line: 178, column: 9, scope: !3931)
!3931 = distinct !DILexicalBlock(scope: !527, file: !154, line: 178, column: 7)
!3932 = !DILocation(line: 178, column: 7, scope: !527)
!3933 = !DILocation(line: 180, column: 13, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !3935, file: !154, line: 180, column: 11)
!3935 = distinct !DILexicalBlock(scope: !3931, file: !154, line: 179, column: 5)
!3936 = !DILocation(line: 180, column: 11, scope: !3935)
!3937 = !DILocation(line: 188, column: 30, scope: !3938)
!3938 = distinct !DILexicalBlock(scope: !3934, file: !154, line: 181, column: 9)
!3939 = !DILocation(line: 189, column: 16, scope: !3938)
!3940 = !DILocation(line: 189, column: 13, scope: !3938)
!3941 = !DILocation(line: 190, column: 9, scope: !3938)
!3942 = !DILocation(line: 191, column: 11, scope: !3943)
!3943 = distinct !DILexicalBlock(scope: !3935, file: !154, line: 191, column: 11)
!3944 = !DILocation(line: 191, column: 11, scope: !3935)
!3945 = !DILocation(line: 206, column: 7, scope: !527)
!3946 = !DILocation(line: 207, column: 25, scope: !527)
!3947 = !DILocation(line: 0, scope: !3895, inlinedAt: !3948)
!3948 = distinct !DILocation(line: 207, column: 10, scope: !527)
!3949 = !DILocation(line: 53, column: 10, scope: !3903, inlinedAt: !3948)
!3950 = !DILocation(line: 192, column: 9, scope: !3943)
!3951 = !DILocation(line: 200, column: 69, scope: !3952)
!3952 = distinct !DILexicalBlock(scope: !3953, file: !154, line: 200, column: 11)
!3953 = distinct !DILexicalBlock(scope: !3931, file: !154, line: 195, column: 5)
!3954 = !DILocation(line: 201, column: 11, scope: !3952)
!3955 = !DILocation(line: 200, column: 11, scope: !3953)
!3956 = !DILocation(line: 202, column: 9, scope: !3952)
!3957 = !DILocation(line: 203, column: 14, scope: !3953)
!3958 = !DILocation(line: 203, column: 18, scope: !3953)
!3959 = !DILocation(line: 203, column: 9, scope: !3953)
!3960 = !DILocation(line: 53, column: 8, scope: !3903, inlinedAt: !3948)
!3961 = !DILocation(line: 57, column: 7, scope: !3907, inlinedAt: !3948)
!3962 = !DILocation(line: 58, column: 7, scope: !3907, inlinedAt: !3948)
!3963 = !DILocation(line: 61, column: 7, scope: !3895, inlinedAt: !3948)
!3964 = !DILocation(line: 62, column: 8, scope: !3911, inlinedAt: !3948)
!3965 = !DILocation(line: 62, column: 13, scope: !3911, inlinedAt: !3948)
!3966 = !DILocation(line: 62, column: 10, scope: !3911, inlinedAt: !3948)
!3967 = !DILocation(line: 63, column: 5, scope: !3911, inlinedAt: !3948)
!3968 = !DILocation(line: 207, column: 3, scope: !527)
!3969 = distinct !DISubprogram(name: "xcharalloc", scope: !154, file: !154, line: 216, type: !3136, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !523, retainedNodes: !3970)
!3970 = !{!3971}
!3971 = !DILocalVariable(name: "n", arg: 1, scope: !3969, file: !154, line: 216, type: !85)
!3972 = !DILocation(line: 0, scope: !3969)
!3973 = !DILocation(line: 0, scope: !3860, inlinedAt: !3974)
!3974 = distinct !DILocation(line: 218, column: 10, scope: !3969)
!3975 = !DILocation(line: 41, column: 13, scope: !3860, inlinedAt: !3974)
!3976 = !DILocation(line: 42, column: 8, scope: !3869, inlinedAt: !3974)
!3977 = !DILocation(line: 42, column: 15, scope: !3869, inlinedAt: !3974)
!3978 = !DILocation(line: 42, column: 10, scope: !3869, inlinedAt: !3974)
!3979 = !DILocation(line: 43, column: 5, scope: !3869, inlinedAt: !3974)
!3980 = !DILocation(line: 218, column: 3, scope: !3969)
!3981 = distinct !DISubprogram(name: "x2realloc", scope: !524, file: !524, line: 74, type: !3982, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !523, retainedNodes: !3984)
!3982 = !DISubroutineType(types: !3983)
!3983 = !{!83, !83, !530}
!3984 = !{!3985, !3986}
!3985 = !DILocalVariable(name: "p", arg: 1, scope: !3981, file: !524, line: 74, type: !83)
!3986 = !DILocalVariable(name: "pn", arg: 2, scope: !3981, file: !524, line: 74, type: !530)
!3987 = !DILocation(line: 0, scope: !3981)
!3988 = !DILocation(line: 0, scope: !527, inlinedAt: !3989)
!3989 = distinct !DILocation(line: 76, column: 10, scope: !3981)
!3990 = !DILocation(line: 176, column: 14, scope: !527, inlinedAt: !3989)
!3991 = !DILocation(line: 178, column: 9, scope: !3931, inlinedAt: !3989)
!3992 = !DILocation(line: 178, column: 7, scope: !527, inlinedAt: !3989)
!3993 = !DILocation(line: 180, column: 13, scope: !3934, inlinedAt: !3989)
!3994 = !DILocation(line: 180, column: 11, scope: !3935, inlinedAt: !3989)
!3995 = !DILocation(line: 191, column: 11, scope: !3943, inlinedAt: !3989)
!3996 = !DILocation(line: 191, column: 11, scope: !3935, inlinedAt: !3989)
!3997 = !DILocation(line: 206, column: 7, scope: !527, inlinedAt: !3989)
!3998 = !DILocation(line: 0, scope: !3895, inlinedAt: !3999)
!3999 = distinct !DILocation(line: 207, column: 10, scope: !527, inlinedAt: !3989)
!4000 = !DILocation(line: 53, column: 10, scope: !3903, inlinedAt: !3999)
!4001 = !DILocation(line: 192, column: 9, scope: !3943, inlinedAt: !3989)
!4002 = !DILocation(line: 201, column: 11, scope: !3952, inlinedAt: !3989)
!4003 = !DILocation(line: 200, column: 11, scope: !3953, inlinedAt: !3989)
!4004 = !DILocation(line: 202, column: 9, scope: !3952, inlinedAt: !3989)
!4005 = !DILocation(line: 203, column: 14, scope: !3953, inlinedAt: !3989)
!4006 = !DILocation(line: 203, column: 18, scope: !3953, inlinedAt: !3989)
!4007 = !DILocation(line: 203, column: 9, scope: !3953, inlinedAt: !3989)
!4008 = !DILocation(line: 53, column: 8, scope: !3903, inlinedAt: !3999)
!4009 = !DILocation(line: 57, column: 7, scope: !3907, inlinedAt: !3999)
!4010 = !DILocation(line: 58, column: 7, scope: !3907, inlinedAt: !3999)
!4011 = !DILocation(line: 61, column: 7, scope: !3895, inlinedAt: !3999)
!4012 = !DILocation(line: 62, column: 8, scope: !3911, inlinedAt: !3999)
!4013 = !DILocation(line: 62, column: 13, scope: !3911, inlinedAt: !3999)
!4014 = !DILocation(line: 62, column: 10, scope: !3911, inlinedAt: !3999)
!4015 = !DILocation(line: 63, column: 5, scope: !3911, inlinedAt: !3999)
!4016 = !DILocation(line: 76, column: 3, scope: !3981)
!4017 = distinct !DISubprogram(name: "xzalloc", scope: !524, file: !524, line: 84, type: !3861, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !523, retainedNodes: !4018)
!4018 = !{!4019}
!4019 = !DILocalVariable(name: "n", arg: 1, scope: !4017, file: !524, line: 84, type: !85)
!4020 = !DILocation(line: 0, scope: !4017)
!4021 = !DILocalVariable(name: "n", arg: 1, scope: !4022, file: !524, line: 93, type: !85)
!4022 = distinct !DISubprogram(name: "xcalloc", scope: !524, file: !524, line: 93, type: !3848, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !523, retainedNodes: !4023)
!4023 = !{!4021, !4024, !4025}
!4024 = !DILocalVariable(name: "s", arg: 2, scope: !4022, file: !524, line: 93, type: !85)
!4025 = !DILocalVariable(name: "p", scope: !4022, file: !524, line: 95, type: !83)
!4026 = !DILocation(line: 0, scope: !4022, inlinedAt: !4027)
!4027 = distinct !DILocation(line: 86, column: 10, scope: !4017)
!4028 = !DILocation(line: 100, column: 7, scope: !4029, inlinedAt: !4027)
!4029 = distinct !DILexicalBlock(scope: !4022, file: !524, line: 100, column: 7)
!4030 = !DILocation(line: 101, column: 7, scope: !4029, inlinedAt: !4027)
!4031 = !DILocation(line: 101, column: 18, scope: !4029, inlinedAt: !4027)
!4032 = !DILocation(line: 101, column: 16, scope: !4029, inlinedAt: !4027)
!4033 = !DILocation(line: 100, column: 7, scope: !4022, inlinedAt: !4027)
!4034 = !DILocation(line: 102, column: 5, scope: !4029, inlinedAt: !4027)
!4035 = !DILocation(line: 86, column: 3, scope: !4017)
!4036 = !DILocation(line: 0, scope: !4022)
!4037 = !DILocation(line: 100, column: 7, scope: !4029)
!4038 = !DILocation(line: 101, column: 7, scope: !4029)
!4039 = !DILocation(line: 101, column: 18, scope: !4029)
!4040 = !DILocation(line: 101, column: 16, scope: !4029)
!4041 = !DILocation(line: 100, column: 7, scope: !4022)
!4042 = !DILocation(line: 102, column: 5, scope: !4029)
!4043 = !DILocation(line: 103, column: 3, scope: !4022)
!4044 = distinct !DISubprogram(name: "xmemdup", scope: !524, file: !524, line: 111, type: !4045, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !523, retainedNodes: !4047)
!4045 = !DISubroutineType(types: !4046)
!4046 = !{!83, !168, !85}
!4047 = !{!4048, !4049}
!4048 = !DILocalVariable(name: "p", arg: 1, scope: !4044, file: !524, line: 111, type: !168)
!4049 = !DILocalVariable(name: "s", arg: 2, scope: !4044, file: !524, line: 111, type: !85)
!4050 = !DILocation(line: 0, scope: !4044)
!4051 = !DILocation(line: 0, scope: !3860, inlinedAt: !4052)
!4052 = distinct !DILocation(line: 113, column: 18, scope: !4044)
!4053 = !DILocation(line: 41, column: 13, scope: !3860, inlinedAt: !4052)
!4054 = !DILocation(line: 42, column: 8, scope: !3869, inlinedAt: !4052)
!4055 = !DILocation(line: 42, column: 15, scope: !3869, inlinedAt: !4052)
!4056 = !DILocation(line: 42, column: 10, scope: !3869, inlinedAt: !4052)
!4057 = !DILocation(line: 43, column: 5, scope: !3869, inlinedAt: !4052)
!4058 = !DILocalVariable(name: "__dest", arg: 1, scope: !4059, file: !1414, line: 31, type: !1417)
!4059 = distinct !DISubprogram(name: "memcpy", scope: !1414, file: !1414, line: 31, type: !1415, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !523, retainedNodes: !4060)
!4060 = !{!4058, !4061, !4062}
!4061 = !DILocalVariable(name: "__src", arg: 2, scope: !4059, file: !1414, line: 31, type: !1418)
!4062 = !DILocalVariable(name: "__len", arg: 3, scope: !4059, file: !1414, line: 31, type: !85)
!4063 = !DILocation(line: 0, scope: !4059, inlinedAt: !4064)
!4064 = distinct !DILocation(line: 113, column: 10, scope: !4044)
!4065 = !DILocation(line: 34, column: 10, scope: !4059, inlinedAt: !4064)
!4066 = !DILocation(line: 113, column: 3, scope: !4044)
!4067 = distinct !DISubprogram(name: "xstrdup", scope: !524, file: !524, line: 119, type: !105, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !523, retainedNodes: !4068)
!4068 = !{!4069}
!4069 = !DILocalVariable(name: "string", arg: 1, scope: !4067, file: !524, line: 119, type: !28)
!4070 = !DILocation(line: 0, scope: !4067)
!4071 = !DILocation(line: 121, column: 27, scope: !4067)
!4072 = !DILocation(line: 121, column: 43, scope: !4067)
!4073 = !DILocation(line: 0, scope: !4044, inlinedAt: !4074)
!4074 = distinct !DILocation(line: 121, column: 10, scope: !4067)
!4075 = !DILocation(line: 0, scope: !3860, inlinedAt: !4076)
!4076 = distinct !DILocation(line: 113, column: 18, scope: !4044, inlinedAt: !4074)
!4077 = !DILocation(line: 41, column: 13, scope: !3860, inlinedAt: !4076)
!4078 = !DILocation(line: 42, column: 8, scope: !3869, inlinedAt: !4076)
!4079 = !DILocation(line: 42, column: 15, scope: !3869, inlinedAt: !4076)
!4080 = !DILocation(line: 42, column: 10, scope: !3869, inlinedAt: !4076)
!4081 = !DILocation(line: 43, column: 5, scope: !3869, inlinedAt: !4076)
!4082 = !DILocation(line: 0, scope: !4059, inlinedAt: !4083)
!4083 = distinct !DILocation(line: 113, column: 10, scope: !4044, inlinedAt: !4074)
!4084 = !DILocation(line: 34, column: 10, scope: !4059, inlinedAt: !4083)
!4085 = !DILocation(line: 121, column: 3, scope: !4067)
!4086 = distinct !DISubprogram(name: "xalloc_die", scope: !545, file: !545, line: 32, type: !112, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !31)
!4087 = !DILocation(line: 34, column: 10, scope: !4086)
!4088 = !DILocation(line: 34, column: 33, scope: !4086)
!4089 = !DILocation(line: 34, column: 3, scope: !4086)
!4090 = !DILocation(line: 40, column: 3, scope: !4086)
!4091 = distinct !DISubprogram(name: "xstrtold", scope: !4092, file: !4092, line: 44, type: !143, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !547, retainedNodes: !4093)
!4092 = !DIFile(filename: "./lib/xstrtod.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4093 = !{!4094, !4095, !4096, !4097, !4098, !4099, !4100}
!4094 = !DILocalVariable(name: "str", arg: 1, scope: !4091, file: !4092, line: 44, type: !28)
!4095 = !DILocalVariable(name: "ptr", arg: 2, scope: !4091, file: !4092, line: 44, type: !146)
!4096 = !DILocalVariable(name: "result", arg: 3, scope: !4091, file: !4092, line: 44, type: !147)
!4097 = !DILocalVariable(name: "convert", arg: 4, scope: !4091, file: !4092, line: 45, type: !149)
!4098 = !DILocalVariable(name: "val", scope: !4091, file: !4092, line: 47, type: !148)
!4099 = !DILocalVariable(name: "terminator", scope: !4091, file: !4092, line: 48, type: !26)
!4100 = !DILocalVariable(name: "ok", scope: !4091, file: !4092, line: 49, type: !145)
!4101 = !DILocation(line: 0, scope: !4091)
!4102 = !DILocation(line: 48, column: 3, scope: !4091)
!4103 = !DILocation(line: 51, column: 3, scope: !4091)
!4104 = !DILocation(line: 51, column: 9, scope: !4091)
!4105 = !DILocation(line: 52, column: 9, scope: !4091)
!4106 = !DILocation(line: 55, column: 7, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !4091, file: !4092, line: 55, column: 7)
!4108 = !DILocation(line: 55, column: 18, scope: !4107)
!4109 = !DILocation(line: 55, column: 25, scope: !4107)
!4110 = !DILocation(line: 55, column: 33, scope: !4107)
!4111 = !DILocation(line: 55, column: 41, scope: !4107)
!4112 = !DILocation(line: 55, column: 44, scope: !4107)
!4113 = !DILocation(line: 55, column: 56, scope: !4107)
!4114 = !DILocation(line: 55, column: 7, scope: !4091)
!4115 = !DILocation(line: 62, column: 15, scope: !4116)
!4116 = distinct !DILexicalBlock(scope: !4117, file: !4092, line: 62, column: 11)
!4117 = distinct !DILexicalBlock(scope: !4107, file: !4092, line: 58, column: 5)
!4118 = !DILocation(line: 62, column: 20, scope: !4116)
!4119 = !DILocation(line: 62, column: 23, scope: !4116)
!4120 = !DILocation(line: 62, column: 29, scope: !4116)
!4121 = !DILocation(line: 62, column: 11, scope: !4117)
!4122 = !DILocation(line: 66, column: 11, scope: !4123)
!4123 = distinct !DILexicalBlock(scope: !4091, file: !4092, line: 66, column: 7)
!4124 = !DILocation(line: 66, column: 7, scope: !4091)
!4125 = !DILocation(line: 67, column: 10, scope: !4123)
!4126 = !DILocation(line: 67, column: 5, scope: !4123)
!4127 = !DILocation(line: 69, column: 11, scope: !4091)
!4128 = !DILocation(line: 71, column: 1, scope: !4091)
!4129 = !DILocation(line: 70, column: 3, scope: !4091)
!4130 = distinct !DISubprogram(name: "rpl_calloc", scope: !551, file: !551, line: 42, type: !3848, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !4131)
!4131 = !{!4132, !4133, !4134, !4135}
!4132 = !DILocalVariable(name: "n", arg: 1, scope: !4130, file: !551, line: 42, type: !85)
!4133 = !DILocalVariable(name: "s", arg: 2, scope: !4130, file: !551, line: 42, type: !85)
!4134 = !DILocalVariable(name: "result", scope: !4130, file: !551, line: 44, type: !83)
!4135 = !DILocalVariable(name: "bytes", scope: !4136, file: !551, line: 56, type: !85)
!4136 = distinct !DILexicalBlock(scope: !4137, file: !551, line: 53, column: 5)
!4137 = distinct !DILexicalBlock(scope: !4130, file: !551, line: 47, column: 7)
!4138 = !DILocation(line: 0, scope: !4130)
!4139 = !DILocation(line: 47, column: 9, scope: !4137)
!4140 = !DILocation(line: 47, column: 19, scope: !4137)
!4141 = !DILocation(line: 47, column: 14, scope: !4137)
!4142 = !DILocation(line: 0, scope: !4136)
!4143 = !DILocation(line: 57, column: 21, scope: !4144)
!4144 = distinct !DILexicalBlock(scope: !4136, file: !551, line: 57, column: 11)
!4145 = !DILocation(line: 57, column: 11, scope: !4136)
!4146 = !DILocation(line: 59, column: 11, scope: !4147)
!4147 = distinct !DILexicalBlock(scope: !4144, file: !551, line: 58, column: 9)
!4148 = !DILocation(line: 59, column: 17, scope: !4147)
!4149 = !DILocation(line: 65, column: 12, scope: !4130)
!4150 = !DILocation(line: 72, column: 3, scope: !4130)
!4151 = !DILocation(line: 73, column: 1, scope: !4130)
!4152 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !553, file: !553, line: 86, type: !4153, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !552, retainedNodes: !4159)
!4153 = !DISubroutineType(types: !4154)
!4154 = !{!85, !4155, !28, !85, !4156}
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4157, size: 64)
!4157 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2414, line: 6, baseType: !4158)
!4158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !372, line: 21, baseType: !559)
!4159 = !{!4160, !4161, !4162, !4163, !4164, !4165, !4166}
!4160 = !DILocalVariable(name: "pwc", arg: 1, scope: !4152, file: !553, line: 86, type: !4155)
!4161 = !DILocalVariable(name: "s", arg: 2, scope: !4152, file: !553, line: 86, type: !28)
!4162 = !DILocalVariable(name: "n", arg: 3, scope: !4152, file: !553, line: 86, type: !85)
!4163 = !DILocalVariable(name: "ps", arg: 4, scope: !4152, file: !553, line: 86, type: !4156)
!4164 = !DILocalVariable(name: "ret", scope: !4152, file: !553, line: 88, type: !85)
!4165 = !DILocalVariable(name: "wc", scope: !4152, file: !553, line: 89, type: !2418)
!4166 = !DILocalVariable(name: "uc", scope: !4167, file: !553, line: 156, type: !170)
!4167 = distinct !DILexicalBlock(scope: !4168, file: !553, line: 155, column: 5)
!4168 = distinct !DILexicalBlock(scope: !4152, file: !553, line: 154, column: 7)
!4169 = !DILocation(line: 0, scope: !4152)
!4170 = !DILocation(line: 89, column: 3, scope: !4152)
!4171 = !DILocation(line: 105, column: 9, scope: !4172)
!4172 = distinct !DILexicalBlock(scope: !4152, file: !553, line: 105, column: 7)
!4173 = !DILocation(line: 105, column: 7, scope: !4152)
!4174 = !DILocation(line: 145, column: 9, scope: !4152)
!4175 = !DILocation(line: 154, column: 19, scope: !4168)
!4176 = !DILocation(line: 154, column: 31, scope: !4168)
!4177 = !DILocation(line: 154, column: 26, scope: !4168)
!4178 = !DILocation(line: 154, column: 41, scope: !4168)
!4179 = !DILocation(line: 154, column: 7, scope: !4152)
!4180 = !DILocation(line: 156, column: 26, scope: !4167)
!4181 = !DILocation(line: 0, scope: !4167)
!4182 = !DILocation(line: 157, column: 14, scope: !4167)
!4183 = !DILocation(line: 157, column: 12, scope: !4167)
!4184 = !DILocation(line: 163, column: 1, scope: !4152)
!4185 = distinct !DISubprogram(name: "c_strtold", scope: !474, file: !474, line: 65, type: !150, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !4186)
!4186 = !{!4187, !4188, !4189, !4190, !4191, !4192}
!4187 = !DILocalVariable(name: "nptr", arg: 1, scope: !4185, file: !474, line: 65, type: !28)
!4188 = !DILocalVariable(name: "endptr", arg: 2, scope: !4185, file: !474, line: 65, type: !152)
!4189 = !DILocalVariable(name: "r", scope: !4185, file: !474, line: 67, type: !148)
!4190 = !DILocalVariable(name: "locale", scope: !4185, file: !474, line: 73, type: !467)
!4191 = !DILocalVariable(name: "old_locale", scope: !4185, file: !474, line: 87, type: !467)
!4192 = !DILocalVariable(name: "saved_errno", scope: !4185, file: !474, line: 97, type: !30)
!4193 = !DILocation(line: 0, scope: !4185)
!4194 = !DILocation(line: 57, column: 8, scope: !4195, inlinedAt: !4199)
!4195 = distinct !DILexicalBlock(scope: !4196, file: !474, line: 57, column: 7)
!4196 = distinct !DISubprogram(name: "c_locale", scope: !474, file: !474, line: 55, type: !4197, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !31)
!4197 = !DISubroutineType(types: !4198)
!4198 = !{!467}
!4199 = distinct !DILocation(line: 73, column: 21, scope: !4185)
!4200 = !DILocation(line: 57, column: 7, scope: !4196, inlinedAt: !4199)
!4201 = !DILocation(line: 58, column: 22, scope: !4195, inlinedAt: !4199)
!4202 = !DILocation(line: 58, column: 20, scope: !4195, inlinedAt: !4199)
!4203 = !DILocation(line: 58, column: 5, scope: !4195, inlinedAt: !4199)
!4204 = !DILocation(line: 59, column: 10, scope: !4196, inlinedAt: !4199)
!4205 = !DILocation(line: 74, column: 8, scope: !4206)
!4206 = distinct !DILexicalBlock(scope: !4185, file: !474, line: 74, column: 7)
!4207 = !DILocation(line: 74, column: 7, scope: !4185)
!4208 = !DILocation(line: 76, column: 11, scope: !4209)
!4209 = distinct !DILexicalBlock(scope: !4210, file: !474, line: 76, column: 11)
!4210 = distinct !DILexicalBlock(scope: !4206, file: !474, line: 75, column: 5)
!4211 = !DILocation(line: 76, column: 11, scope: !4210)
!4212 = !DILocation(line: 77, column: 17, scope: !4209)
!4213 = !DILocation(line: 77, column: 9, scope: !4209)
!4214 = !DILocation(line: 87, column: 25, scope: !4185)
!4215 = !DILocation(line: 88, column: 18, scope: !4216)
!4216 = distinct !DILexicalBlock(scope: !4185, file: !474, line: 88, column: 7)
!4217 = !DILocation(line: 88, column: 7, scope: !4185)
!4218 = !DILocation(line: 90, column: 11, scope: !4219)
!4219 = distinct !DILexicalBlock(scope: !4220, file: !474, line: 90, column: 11)
!4220 = distinct !DILexicalBlock(scope: !4216, file: !474, line: 89, column: 5)
!4221 = !DILocation(line: 90, column: 11, scope: !4220)
!4222 = !DILocation(line: 91, column: 17, scope: !4219)
!4223 = !DILocation(line: 91, column: 9, scope: !4219)
!4224 = !DILocation(line: 95, column: 7, scope: !4185)
!4225 = !DILocation(line: 97, column: 21, scope: !4185)
!4226 = !DILocation(line: 98, column: 7, scope: !4227)
!4227 = distinct !DILexicalBlock(scope: !4185, file: !474, line: 98, column: 7)
!4228 = !DILocation(line: 98, column: 30, scope: !4227)
!4229 = !DILocation(line: 98, column: 7, scope: !4185)
!4230 = !DILocation(line: 100, column: 5, scope: !4227)
!4231 = !DILocation(line: 101, column: 9, scope: !4185)
!4232 = !DILocation(line: 135, column: 1, scope: !4185)
!4233 = distinct !DISubprogram(name: "close_stream", scope: !572, file: !572, line: 56, type: !4234, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !571, retainedNodes: !4238)
!4234 = !DISubroutineType(types: !4235)
!4235 = !{!30, !4236}
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1811, line: 7, baseType: !579)
!4238 = !{!4239, !4240, !4242, !4243}
!4239 = !DILocalVariable(name: "stream", arg: 1, scope: !4233, file: !572, line: 56, type: !4236)
!4240 = !DILocalVariable(name: "some_pending", scope: !4233, file: !572, line: 58, type: !4241)
!4241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!4242 = !DILocalVariable(name: "prev_fail", scope: !4233, file: !572, line: 59, type: !4241)
!4243 = !DILocalVariable(name: "fclose_fail", scope: !4233, file: !572, line: 60, type: !4241)
!4244 = !DILocation(line: 0, scope: !4233)
!4245 = !DILocation(line: 58, column: 30, scope: !4233)
!4246 = !DILocalVariable(name: "__stream", arg: 1, scope: !4247, file: !4248, line: 135, type: !4236)
!4247 = distinct !DISubprogram(name: "ferror_unlocked", scope: !4248, file: !4248, line: 135, type: !4234, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !571, retainedNodes: !4249)
!4248 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!4249 = !{!4246}
!4250 = !DILocation(line: 0, scope: !4247, inlinedAt: !4251)
!4251 = distinct !DILocation(line: 59, column: 27, scope: !4233)
!4252 = !DILocation(line: 137, column: 10, scope: !4247, inlinedAt: !4251)
!4253 = !{!4254, !1266, i64 0}
!4254 = !{!"_IO_FILE", !1266, i64 0, !1177, i64 8, !1177, i64 16, !1177, i64 24, !1177, i64 32, !1177, i64 40, !1177, i64 48, !1177, i64 56, !1177, i64 64, !1177, i64 72, !1177, i64 80, !1177, i64 88, !1177, i64 96, !1177, i64 104, !1266, i64 112, !1266, i64 116, !1476, i64 120, !2033, i64 128, !1178, i64 130, !1178, i64 131, !1177, i64 136, !1476, i64 144, !1177, i64 152, !1177, i64 160, !1177, i64 168, !1177, i64 176, !1476, i64 184, !1266, i64 192, !1178, i64 196}
!4255 = !DILocation(line: 59, column: 43, scope: !4233)
!4256 = !DILocation(line: 60, column: 29, scope: !4233)
!4257 = !DILocation(line: 60, column: 45, scope: !4233)
!4258 = !DILocation(line: 70, column: 17, scope: !4259)
!4259 = distinct !DILexicalBlock(scope: !4233, file: !572, line: 70, column: 7)
!4260 = !DILocation(line: 58, column: 50, scope: !4233)
!4261 = !DILocation(line: 70, column: 33, scope: !4259)
!4262 = !DILocation(line: 70, column: 53, scope: !4259)
!4263 = !DILocation(line: 70, column: 59, scope: !4259)
!4264 = !DILocation(line: 70, column: 7, scope: !4233)
!4265 = !DILocation(line: 72, column: 11, scope: !4266)
!4266 = distinct !DILexicalBlock(scope: !4259, file: !572, line: 71, column: 5)
!4267 = !DILocation(line: 73, column: 9, scope: !4268)
!4268 = distinct !DILexicalBlock(scope: !4266, file: !572, line: 72, column: 11)
!4269 = !DILocation(line: 73, column: 15, scope: !4268)
!4270 = !DILocation(line: 78, column: 1, scope: !4233)
!4271 = distinct !DISubprogram(name: "hard_locale", scope: !611, file: !611, line: 27, type: !569, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !4272)
!4272 = !{!4273, !4274}
!4273 = !DILocalVariable(name: "category", arg: 1, scope: !4271, file: !611, line: 27, type: !30)
!4274 = !DILocalVariable(name: "locale", scope: !4271, file: !611, line: 29, type: !4275)
!4275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 2056, elements: !4276)
!4276 = !{!4277}
!4277 = !DISubrange(count: 257)
!4278 = !DILocation(line: 0, scope: !4271)
!4279 = !DILocation(line: 29, column: 3, scope: !4271)
!4280 = !DILocation(line: 29, column: 8, scope: !4271)
!4281 = !DILocation(line: 31, column: 7, scope: !4282)
!4282 = distinct !DILexicalBlock(scope: !4271, file: !611, line: 31, column: 7)
!4283 = !DILocation(line: 31, column: 7, scope: !4271)
!4284 = !DILocation(line: 34, column: 12, scope: !4271)
!4285 = !DILocation(line: 34, column: 38, scope: !4271)
!4286 = !DILocation(line: 34, column: 41, scope: !4271)
!4287 = !DILocation(line: 34, column: 66, scope: !4271)
!4288 = !DILocation(line: 35, column: 1, scope: !4271)
!4289 = distinct !DISubprogram(name: "locale_charset", scope: !618, file: !618, line: 831, type: !395, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !617, retainedNodes: !4290)
!4290 = !{!4291}
!4291 = !DILocalVariable(name: "codeset", scope: !4289, file: !618, line: 833, type: !28)
!4292 = !DILocation(line: 847, column: 13, scope: !4289)
!4293 = !DILocation(line: 0, scope: !4289)
!4294 = !DILocation(line: 911, column: 15, scope: !4295)
!4295 = distinct !DILexicalBlock(scope: !4289, file: !618, line: 911, column: 7)
!4296 = !DILocation(line: 911, column: 7, scope: !4289)
!4297 = !DILocation(line: 1070, column: 13, scope: !4298)
!4298 = distinct !DILexicalBlock(scope: !4299, file: !618, line: 1070, column: 13)
!4299 = distinct !DILexicalBlock(scope: !4300, file: !618, line: 1060, column: 7)
!4300 = distinct !DILexicalBlock(scope: !4289, file: !618, line: 1019, column: 3)
!4301 = !DILocation(line: 1070, column: 24, scope: !4298)
!4302 = !DILocation(line: 1070, column: 13, scope: !4299)
!4303 = !DILocation(line: 1158, column: 3, scope: !4289)
!4304 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1011, file: !1011, line: 269, type: !4305, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1010, retainedNodes: !4307)
!4305 = !DISubroutineType(types: !4306)
!4306 = !{!30, !30, !26, !85}
!4307 = !{!4308, !4309, !4310}
!4308 = !DILocalVariable(name: "category", arg: 1, scope: !4304, file: !1011, line: 269, type: !30)
!4309 = !DILocalVariable(name: "buf", arg: 2, scope: !4304, file: !1011, line: 269, type: !26)
!4310 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4304, file: !1011, line: 269, type: !85)
!4311 = !DILocation(line: 0, scope: !4304)
!4312 = !DILocalVariable(name: "category", arg: 1, scope: !4313, file: !1011, line: 91, type: !30)
!4313 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1011, file: !1011, line: 91, type: !4305, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1010, retainedNodes: !4314)
!4314 = !{!4312, !4315, !4316, !4317, !4318}
!4315 = !DILocalVariable(name: "buf", arg: 2, scope: !4313, file: !1011, line: 91, type: !26)
!4316 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4313, file: !1011, line: 91, type: !85)
!4317 = !DILocalVariable(name: "result", scope: !4313, file: !1011, line: 140, type: !28)
!4318 = !DILocalVariable(name: "length", scope: !4319, file: !1011, line: 154, type: !85)
!4319 = distinct !DILexicalBlock(scope: !4320, file: !1011, line: 153, column: 5)
!4320 = distinct !DILexicalBlock(scope: !4313, file: !1011, line: 142, column: 7)
!4321 = !DILocation(line: 0, scope: !4313, inlinedAt: !4322)
!4322 = distinct !DILocation(line: 274, column: 10, scope: !4304)
!4323 = !DILocalVariable(name: "category", arg: 1, scope: !4324, file: !1011, line: 60, type: !30)
!4324 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !1011, file: !1011, line: 60, type: !4325, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1010, retainedNodes: !4327)
!4325 = !DISubroutineType(types: !4326)
!4326 = !{!28, !30}
!4327 = !{!4323, !4328}
!4328 = !DILocalVariable(name: "result", scope: !4324, file: !1011, line: 62, type: !28)
!4329 = !DILocation(line: 0, scope: !4324, inlinedAt: !4330)
!4330 = distinct !DILocation(line: 140, column: 24, scope: !4313, inlinedAt: !4322)
!4331 = !DILocation(line: 62, column: 24, scope: !4324, inlinedAt: !4330)
!4332 = !DILocation(line: 142, column: 14, scope: !4320, inlinedAt: !4322)
!4333 = !DILocation(line: 142, column: 7, scope: !4313, inlinedAt: !4322)
!4334 = !DILocation(line: 145, column: 19, scope: !4335, inlinedAt: !4322)
!4335 = distinct !DILexicalBlock(scope: !4336, file: !1011, line: 145, column: 11)
!4336 = distinct !DILexicalBlock(scope: !4320, file: !1011, line: 143, column: 5)
!4337 = !DILocation(line: 145, column: 11, scope: !4336, inlinedAt: !4322)
!4338 = !DILocation(line: 149, column: 16, scope: !4335, inlinedAt: !4322)
!4339 = !DILocation(line: 149, column: 9, scope: !4335, inlinedAt: !4322)
!4340 = !DILocation(line: 154, column: 23, scope: !4319, inlinedAt: !4322)
!4341 = !DILocation(line: 0, scope: !4319, inlinedAt: !4322)
!4342 = !DILocation(line: 155, column: 18, scope: !4343, inlinedAt: !4322)
!4343 = distinct !DILexicalBlock(scope: !4319, file: !1011, line: 155, column: 11)
!4344 = !DILocation(line: 155, column: 11, scope: !4319, inlinedAt: !4322)
!4345 = !DILocation(line: 157, column: 39, scope: !4346, inlinedAt: !4322)
!4346 = distinct !DILexicalBlock(scope: !4343, file: !1011, line: 156, column: 9)
!4347 = !DILocalVariable(name: "__dest", arg: 1, scope: !4348, file: !1414, line: 31, type: !1417)
!4348 = distinct !DISubprogram(name: "memcpy", scope: !1414, file: !1414, line: 31, type: !1415, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1010, retainedNodes: !4349)
!4349 = !{!4347, !4350, !4351}
!4350 = !DILocalVariable(name: "__src", arg: 2, scope: !4348, file: !1414, line: 31, type: !1418)
!4351 = !DILocalVariable(name: "__len", arg: 3, scope: !4348, file: !1414, line: 31, type: !85)
!4352 = !DILocation(line: 0, scope: !4348, inlinedAt: !4353)
!4353 = distinct !DILocation(line: 157, column: 11, scope: !4346, inlinedAt: !4322)
!4354 = !DILocation(line: 34, column: 10, scope: !4348, inlinedAt: !4353)
!4355 = !DILocation(line: 158, column: 11, scope: !4346, inlinedAt: !4322)
!4356 = !DILocation(line: 162, column: 23, scope: !4357, inlinedAt: !4322)
!4357 = distinct !DILexicalBlock(scope: !4358, file: !1011, line: 162, column: 15)
!4358 = distinct !DILexicalBlock(scope: !4343, file: !1011, line: 161, column: 9)
!4359 = !DILocation(line: 162, column: 15, scope: !4358, inlinedAt: !4322)
!4360 = !DILocation(line: 167, column: 44, scope: !4361, inlinedAt: !4322)
!4361 = distinct !DILexicalBlock(scope: !4357, file: !1011, line: 163, column: 13)
!4362 = !DILocation(line: 0, scope: !4348, inlinedAt: !4363)
!4363 = distinct !DILocation(line: 167, column: 15, scope: !4361, inlinedAt: !4322)
!4364 = !DILocation(line: 34, column: 10, scope: !4348, inlinedAt: !4363)
!4365 = !DILocation(line: 168, column: 15, scope: !4361, inlinedAt: !4322)
!4366 = !DILocation(line: 168, column: 32, scope: !4361, inlinedAt: !4322)
!4367 = !DILocation(line: 169, column: 13, scope: !4361, inlinedAt: !4322)
!4368 = !DILocation(line: 0, scope: !4320, inlinedAt: !4322)
!4369 = !DILocation(line: 274, column: 3, scope: !4304)
!4370 = distinct !DISubprogram(name: "setlocale_null", scope: !1011, file: !1011, line: 301, type: !4325, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1010, retainedNodes: !4371)
!4371 = !{!4372}
!4372 = !DILocalVariable(name: "category", arg: 1, scope: !4370, file: !1011, line: 301, type: !30)
!4373 = !DILocation(line: 0, scope: !4370)
!4374 = !DILocation(line: 0, scope: !4324, inlinedAt: !4375)
!4375 = distinct !DILocation(line: 304, column: 10, scope: !4370)
!4376 = !DILocation(line: 62, column: 24, scope: !4324, inlinedAt: !4375)
!4377 = !DILocation(line: 304, column: 3, scope: !4370)
!4378 = distinct !DISubprogram(name: "rpl_fclose", scope: !1014, file: !1014, line: 58, type: !4379, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1013, retainedNodes: !4383)
!4379 = !DISubroutineType(types: !4380)
!4380 = !{!30, !4381}
!4381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4382, size: 64)
!4382 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1811, line: 7, baseType: !1020)
!4383 = !{!4384, !4385, !4386, !4387}
!4384 = !DILocalVariable(name: "fp", arg: 1, scope: !4378, file: !1014, line: 58, type: !4381)
!4385 = !DILocalVariable(name: "saved_errno", scope: !4378, file: !1014, line: 60, type: !30)
!4386 = !DILocalVariable(name: "fd", scope: !4378, file: !1014, line: 61, type: !30)
!4387 = !DILocalVariable(name: "result", scope: !4378, file: !1014, line: 62, type: !30)
!4388 = !DILocation(line: 0, scope: !4378)
!4389 = !DILocation(line: 65, column: 8, scope: !4378)
!4390 = !DILocation(line: 66, column: 10, scope: !4391)
!4391 = distinct !DILexicalBlock(scope: !4378, file: !1014, line: 66, column: 7)
!4392 = !DILocation(line: 66, column: 7, scope: !4378)
!4393 = !DILocation(line: 67, column: 12, scope: !4391)
!4394 = !DILocation(line: 67, column: 5, scope: !4391)
!4395 = !DILocation(line: 72, column: 9, scope: !4396)
!4396 = distinct !DILexicalBlock(scope: !4378, file: !1014, line: 72, column: 7)
!4397 = !DILocation(line: 72, column: 23, scope: !4396)
!4398 = !DILocation(line: 72, column: 33, scope: !4396)
!4399 = !DILocation(line: 72, column: 26, scope: !4396)
!4400 = !DILocation(line: 72, column: 59, scope: !4396)
!4401 = !DILocation(line: 73, column: 7, scope: !4396)
!4402 = !DILocation(line: 73, column: 10, scope: !4396)
!4403 = !DILocation(line: 72, column: 7, scope: !4378)
!4404 = !DILocation(line: 100, column: 12, scope: !4378)
!4405 = !DILocation(line: 105, column: 7, scope: !4378)
!4406 = !DILocation(line: 74, column: 19, scope: !4396)
!4407 = !DILocation(line: 105, column: 19, scope: !4408)
!4408 = distinct !DILexicalBlock(scope: !4378, file: !1014, line: 105, column: 7)
!4409 = !DILocation(line: 107, column: 13, scope: !4410)
!4410 = distinct !DILexicalBlock(scope: !4408, file: !1014, line: 106, column: 5)
!4411 = !DILocation(line: 109, column: 5, scope: !4410)
!4412 = !DILocation(line: 112, column: 1, scope: !4378)
!4413 = distinct !DISubprogram(name: "rpl_fflush", scope: !1058, file: !1058, line: 129, type: !4414, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1057, retainedNodes: !4418)
!4414 = !DISubroutineType(types: !4415)
!4415 = !{!30, !4416}
!4416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4417, size: 64)
!4417 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1811, line: 7, baseType: !1064)
!4418 = !{!4419}
!4419 = !DILocalVariable(name: "stream", arg: 1, scope: !4413, file: !1058, line: 129, type: !4416)
!4420 = !DILocation(line: 0, scope: !4413)
!4421 = !DILocation(line: 150, column: 14, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4413, file: !1058, line: 150, column: 7)
!4423 = !DILocation(line: 150, column: 22, scope: !4422)
!4424 = !DILocation(line: 150, column: 27, scope: !4422)
!4425 = !DILocation(line: 150, column: 7, scope: !4413)
!4426 = !DILocation(line: 151, column: 12, scope: !4422)
!4427 = !DILocation(line: 151, column: 5, scope: !4422)
!4428 = !DILocalVariable(name: "fp", arg: 1, scope: !4429, file: !1058, line: 41, type: !4416)
!4429 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !1058, file: !1058, line: 41, type: !4430, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1057, retainedNodes: !4432)
!4430 = !DISubroutineType(types: !4431)
!4431 = !{null, !4416}
!4432 = !{!4428}
!4433 = !DILocation(line: 0, scope: !4429, inlinedAt: !4434)
!4434 = distinct !DILocation(line: 156, column: 3, scope: !4413)
!4435 = !DILocation(line: 43, column: 11, scope: !4436, inlinedAt: !4434)
!4436 = distinct !DILexicalBlock(scope: !4429, file: !1058, line: 43, column: 7)
!4437 = !DILocation(line: 43, column: 18, scope: !4436, inlinedAt: !4434)
!4438 = !DILocation(line: 43, column: 7, scope: !4429, inlinedAt: !4434)
!4439 = !DILocation(line: 45, column: 5, scope: !4436, inlinedAt: !4434)
!4440 = !DILocation(line: 158, column: 10, scope: !4413)
!4441 = !DILocation(line: 158, column: 3, scope: !4413)
!4442 = !DILocation(line: 235, column: 1, scope: !4413)
!4443 = distinct !DISubprogram(name: "rpl_fseeko", scope: !1099, file: !1099, line: 28, type: !4444, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1098, retainedNodes: !4449)
!4444 = !DISubroutineType(types: !4445)
!4445 = !{!30, !4446, !4448, !30}
!4446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4447, size: 64)
!4447 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1811, line: 7, baseType: !1105)
!4448 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !33, line: 63, baseType: !59)
!4449 = !{!4450, !4451, !4452, !4453}
!4450 = !DILocalVariable(name: "fp", arg: 1, scope: !4443, file: !1099, line: 28, type: !4446)
!4451 = !DILocalVariable(name: "offset", arg: 2, scope: !4443, file: !1099, line: 28, type: !4448)
!4452 = !DILocalVariable(name: "whence", arg: 3, scope: !4443, file: !1099, line: 28, type: !30)
!4453 = !DILocalVariable(name: "pos", scope: !4454, file: !1099, line: 117, type: !4448)
!4454 = distinct !DILexicalBlock(scope: !4455, file: !1099, line: 113, column: 5)
!4455 = distinct !DILexicalBlock(scope: !4443, file: !1099, line: 52, column: 7)
!4456 = !DILocation(line: 0, scope: !4443)
!4457 = !DILocation(line: 52, column: 11, scope: !4455)
!4458 = !{!4254, !1177, i64 16}
!4459 = !DILocation(line: 52, column: 31, scope: !4455)
!4460 = !{!4254, !1177, i64 8}
!4461 = !DILocation(line: 52, column: 24, scope: !4455)
!4462 = !DILocation(line: 53, column: 7, scope: !4455)
!4463 = !DILocation(line: 53, column: 14, scope: !4455)
!4464 = !{!4254, !1177, i64 40}
!4465 = !DILocation(line: 53, column: 35, scope: !4455)
!4466 = !{!4254, !1177, i64 32}
!4467 = !DILocation(line: 53, column: 28, scope: !4455)
!4468 = !DILocation(line: 54, column: 7, scope: !4455)
!4469 = !DILocation(line: 54, column: 14, scope: !4455)
!4470 = !{!4254, !1177, i64 72}
!4471 = !DILocation(line: 54, column: 28, scope: !4455)
!4472 = !DILocation(line: 52, column: 7, scope: !4443)
!4473 = !DILocation(line: 117, column: 26, scope: !4454)
!4474 = !DILocation(line: 117, column: 19, scope: !4454)
!4475 = !DILocation(line: 0, scope: !4454)
!4476 = !DILocation(line: 118, column: 15, scope: !4477)
!4477 = distinct !DILexicalBlock(scope: !4454, file: !1099, line: 118, column: 11)
!4478 = !DILocation(line: 118, column: 11, scope: !4454)
!4479 = !DILocation(line: 129, column: 11, scope: !4454)
!4480 = !DILocation(line: 129, column: 18, scope: !4454)
!4481 = !DILocation(line: 130, column: 11, scope: !4454)
!4482 = !DILocation(line: 130, column: 19, scope: !4454)
!4483 = !{!4254, !1476, i64 144}
!4484 = !DILocation(line: 161, column: 7, scope: !4454)
!4485 = !DILocation(line: 163, column: 10, scope: !4443)
!4486 = !DILocation(line: 163, column: 3, scope: !4443)
!4487 = !DILocation(line: 164, column: 1, scope: !4443)
