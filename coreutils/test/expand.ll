; ModuleID = 'coreutils-8.32/src/expand.bc'
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
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"Convert tabs in each FILE to spaces, writing to standard output.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.12 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.13 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [112 x i8] c"  -i, --initial    do not convert tabs after non blanks\0A  -t, --tabs=N     have tabs N characters apart, not 8\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"expand\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.14 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.25 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.27 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@shortopts = internal constant [34 x i8] c"it:0::1::2::3::4::5::6::7::8::9::\00", align 16, !dbg !0
@longopts = internal constant [5 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i32 1, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i32 0, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !158
@optarg = external local_unnamed_addr global i8*, align 8
@.str.11 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.33 = private unnamed_addr constant [23 x i8] c"input line is too long\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"tabs\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"initial\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@convert_entire_line = dso_local local_unnamed_addr global i8 0, align 1, !dbg !166
@exit_status = dso_local local_unnamed_addr global i32 0, align 4, !dbg !276
@max_column_width = common dso_local local_unnamed_addr global i64 0, align 8, !dbg !289
@first_free_tab = internal unnamed_addr global i64 0, align 8, !dbg !291
@tab_list = internal unnamed_addr global i64* null, align 8, !dbg !293
@n_tabs_allocated = internal unnamed_addr global i64 0, align 8, !dbg !295
@extend_size = internal unnamed_addr global i64 0, align 8, !dbg !297
@.str.13.7 = private unnamed_addr constant [47 x i8] c"'/' specifier only allowed with the last value\00", align 1
@increment_size = internal unnamed_addr global i64 0, align 8, !dbg !299
@.str.14.8 = private unnamed_addr constant [47 x i8] c"'+' specifier only allowed with the last value\00", align 1
@.str.1.9 = private unnamed_addr constant [41 x i8] c"'/' specifier not at start of number: %s\00", align 1
@.str.2.10 = private unnamed_addr constant [41 x i8] c"'+' specifier not at start of number: %s\00", align 1
@.str.3.11 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.4.12 = private unnamed_addr constant [25 x i8] c"tab stop is too large %s\00", align 1
@.str.5.13 = private unnamed_addr constant [43 x i8] c"tab size contains invalid character(s): %s\00", align 1
@.str.15.16 = private unnamed_addr constant [21 x i8] c"tab size cannot be 0\00", align 1
@.str.16.17 = private unnamed_addr constant [28 x i8] c"tab sizes must be ascending\00", align 1
@.str.17.18 = private unnamed_addr constant [45 x i8] c"'/' specifier is mutually exclusive with '+'\00", align 1
@tab_size = internal unnamed_addr global i64 0, align 8, !dbg !301
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !312
@stdin_argv = internal global [2 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9.23, i32 0, i32 0), i8* null], align 16, !dbg !305
@file_list = internal unnamed_addr global i8** null, align 8, !dbg !310
@.str.9.23 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@next_file.prev_file = internal unnamed_addr global i8* null, align 8, !dbg !278
@.str.6.26 = private unnamed_addr constant [10 x i8] c"prev_file\00", align 1
@.str.7.27 = private unnamed_addr constant [20 x i8] c"src/expand-common.c\00", align 1
@__PRETTY_FUNCTION__.next_file = private unnamed_addr constant [24 x i8] c"FILE *next_file(FILE *)\00", align 1
@.str.8.28 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.10.29 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.11.34 = private unnamed_addr constant [62 x i8] c"  -t, --tabs=LIST  use comma separated list of tab positions\0A\00", align 1
@.str.12.35 = private unnamed_addr constant [365 x i8] c"                     The last specified position can be prefixed with '/'\0A                     to specify a tab size to use after the last\0A                     explicitly specified tab stop.  Also a prefix of '+'\0A                     can be used to align remaining tab stops relative to\0A                     the last specified tab stop instead of the first column\0A\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), align 8, !dbg !313
@.str.38 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !318
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !361
@.str.41 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.42 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.43 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !363
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !369
@.str.52 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.53 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.54 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.56, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.57, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.58, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.59, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.60, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.61, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.62, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.63, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.64, i32 0, i32 0), i8* null], align 16, !dbg !410
@.str.55 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.56 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.57 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.58 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.59 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.60 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.61 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.62 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.63 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.64 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !483
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !489
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !491
@.str.11.65 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.66 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.67 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.68 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.69 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.70 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.71 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !498
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !505
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !493
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !507
@.str.78 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.79 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.80 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.81 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.82 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.83 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.84 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.85 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.86 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.87 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.88 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.89 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.90 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.91 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.92 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.93 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.96 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.97 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.98 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.99 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.100 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.101 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.102 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !513
@.str.1.113 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.114 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.131 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.134 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.135 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !1223 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1228, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i32 %0, metadata !1227, metadata !DIExpression()), !dbg !1249
  %3 = icmp eq i32 %0, 0, !dbg !1250
  br i1 %3, label %9, label %4, !dbg !1251

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1252, !tbaa !1254
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #18, !dbg !1252
  %7 = load i8*, i8** @program_name, align 8, !dbg !1252, !tbaa !1254
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #18, !dbg !1252
  br label %67, !dbg !1252

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #18, !dbg !1258
  %11 = load i8*, i8** @program_name, align 8, !dbg !1258, !tbaa !1254
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #18, !dbg !1258
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 5) #18, !dbg !1259
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1259, !tbaa !1254
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !1259
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.12, i64 0, i64 0), i32 5) #18, !dbg !1260
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1260, !tbaa !1254
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #18, !dbg !1260
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.13, i64 0, i64 0), i32 5) #18, !dbg !1263
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1263, !tbaa !1254
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20) #18, !dbg !1263
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.3, i64 0, i64 0), i32 5) #18, !dbg !1266
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1266, !tbaa !1254
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !1266
  tail call void @emit_tab_list_info() #18, !dbg !1267
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #18, !dbg !1268
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1268, !tbaa !1254
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !1268
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #18, !dbg !1269
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1269, !tbaa !1254
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !1269
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), metadata !1232, metadata !DIExpression()) #18, !dbg !1270
  %31 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1271
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %31) #18, !dbg !1271
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %31, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #18, !dbg !1245
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), metadata !1233, metadata !DIExpression()) #18, !dbg !1270
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1234, metadata !DIExpression()) #18, !dbg !1270
  %32 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1272
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !1234, metadata !DIExpression()) #18, !dbg !1270
  br label %33, !dbg !1273

33:                                               ; preds = %38, %9
  %34 = phi i8* [ %41, %38 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), %9 ]
  %35 = phi %struct.infomap* [ %39, %38 ], [ %32, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !1234, metadata !DIExpression()) #18, !dbg !1270
  %36 = tail call i32 @strcmp(i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* nonnull %34) #21, !dbg !1274
  %37 = icmp eq i32 %36, 0, !dbg !1274
  br i1 %37, label %43, label %38, !dbg !1273

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 1, !dbg !1275
  call void @llvm.dbg.value(metadata %struct.infomap* %39, metadata !1234, metadata !DIExpression()) #18, !dbg !1270
  %40 = getelementptr inbounds %struct.infomap, %struct.infomap* %39, i64 0, i32 0, !dbg !1276
  %41 = load i8*, i8** %40, align 8, !dbg !1276, !tbaa !1277
  %42 = icmp eq i8* %41, null, !dbg !1279
  br i1 %42, label %43, label %33, !dbg !1280, !llvm.loop !1281

43:                                               ; preds = %38, %33
  %44 = phi %struct.infomap* [ %39, %38 ], [ %35, %33 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %44, metadata !1234, metadata !DIExpression()) #18, !dbg !1270
  call void @llvm.dbg.value(metadata %struct.infomap* %44, metadata !1234, metadata !DIExpression()) #18, !dbg !1270
  %45 = getelementptr inbounds %struct.infomap, %struct.infomap* %44, i64 0, i32 1, !dbg !1282
  %46 = load i8*, i8** %45, align 8, !dbg !1282, !tbaa !1284
  %47 = icmp eq i8* %46, null, !dbg !1285
  %48 = select i1 %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %46, !dbg !1286
  call void @llvm.dbg.value(metadata i8* %48, metadata !1233, metadata !DIExpression()) #18, !dbg !1270
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 5) #18, !dbg !1287
  %50 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0)) #18, !dbg !1287
  %51 = tail call i8* @setlocale(i32 5, i8* null) #18, !dbg !1288
  call void @llvm.dbg.value(metadata i8* %51, metadata !1241, metadata !DIExpression()) #18, !dbg !1270
  %52 = icmp eq i8* %51, null, !dbg !1289
  br i1 %52, label %60, label %53, !dbg !1291

53:                                               ; preds = %43
  %54 = tail call i32 @strncmp(i8* nonnull %51, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i64 3) #21, !dbg !1292
  %55 = icmp eq i32 %54, 0, !dbg !1292
  br i1 %55, label %60, label %56, !dbg !1293

56:                                               ; preds = %53
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.25, i64 0, i64 0), i32 5) #18, !dbg !1294
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1294, !tbaa !1254
  %59 = tail call i32 @fputs_unlocked(i8* %57, %struct._IO_FILE* %58) #18, !dbg !1294
  br label %60, !dbg !1296

60:                                               ; preds = %43, %53, %56
  %61 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0), i32 5) #18, !dbg !1297
  %62 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %61, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)) #18, !dbg !1297
  %63 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i64 0, i64 0), i32 5) #18, !dbg !1298
  %64 = icmp eq i8* %48, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), !dbg !1298
  %65 = select i1 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), !dbg !1298
  %66 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %63, i8* %48, i8* %65) #18, !dbg !1298
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %31) #18, !dbg !1299
  br label %67

67:                                               ; preds = %60, %4
  tail call void @exit(i32 %0) #22, !dbg !1300
  unreachable, !dbg !1300
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
declare !dbg !101 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !1301 {
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  %5 = alloca [2 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !1305, metadata !DIExpression()), !dbg !1314
  call void @llvm.dbg.value(metadata i8** %1, metadata !1306, metadata !DIExpression()), !dbg !1314
  %6 = load i8*, i8** %1, align 8, !dbg !1315, !tbaa !1254
  tail call void @set_program_name(i8* %6) #18, !dbg !1316
  %7 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #18, !dbg !1317
  %8 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #18, !dbg !1318
  %9 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #18, !dbg !1319
  %10 = tail call i32 @atexit(void ()* nonnull @close_stdout) #18, !dbg !1320
  store i8 1, i8* @convert_entire_line, align 1, !dbg !1321, !tbaa !1322
  %11 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0, !dbg !1324
  %12 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 1, !dbg !1324
  br label %13, !dbg !1325

13:                                               ; preds = %23, %2
  %14 = call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @shortopts, i64 0, i64 0), %struct.option* getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #18, !dbg !1326
  call void @llvm.dbg.value(metadata i32 %14, metadata !1307, metadata !DIExpression()), !dbg !1314
  switch i32 %14, label %30 [
    i32 -1, label %31
    i32 105, label %15
    i32 116, label %16
    i32 48, label %18
    i32 49, label %18
    i32 50, label %18
    i32 51, label %18
    i32 52, label %18
    i32 53, label %18
    i32 54, label %18
    i32 55, label %18
    i32 56, label %18
    i32 57, label %18
    i32 -130, label %26
    i32 -131, label %27
  ], !dbg !1325

15:                                               ; preds = %13
  store i8 0, i8* @convert_entire_line, align 1, !dbg !1327, !tbaa !1322
  br label %23, !dbg !1328

16:                                               ; preds = %13
  %17 = load i8*, i8** @optarg, align 8, !dbg !1329, !tbaa !1254
  call void @parse_tab_stops(i8* %17) #18, !dbg !1330
  br label %23, !dbg !1331

18:                                               ; preds = %13, %13, %13, %13, %13, %13, %13, %13, %13, %13
  %19 = load i8*, i8** @optarg, align 8, !dbg !1332, !tbaa !1254
  %20 = icmp eq i8* %19, null, !dbg !1332
  br i1 %20, label %24, label %21, !dbg !1333

21:                                               ; preds = %18
  %22 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !1334
  call void @parse_tab_stops(i8* nonnull %22) #18, !dbg !1335
  br label %23, !dbg !1335

23:                                               ; preds = %21, %24, %16, %15
  br label %13, !dbg !1326, !llvm.loop !1336

24:                                               ; preds = %18
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %11) #18, !dbg !1338
  call void @llvm.dbg.declare(metadata [2 x i8]* %5, metadata !1308, metadata !DIExpression()), !dbg !1339
  %25 = trunc i32 %14 to i8, !dbg !1340
  store i8 %25, i8* %11, align 1, !dbg !1341, !tbaa !1342
  store i8 0, i8* %12, align 1, !dbg !1343, !tbaa !1342
  call void @parse_tab_stops(i8* nonnull %11) #18, !dbg !1344
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %11) #18, !dbg !1345
  br label %23

26:                                               ; preds = %13
  call void @usage(i32 0) #23, !dbg !1346
  unreachable, !dbg !1346

27:                                               ; preds = %13
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1347, !tbaa !1254
  %29 = load i8*, i8** @Version, align 8, !dbg !1347, !tbaa !1254
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8* null) #18, !dbg !1347
  call void @exit(i32 0) #22, !dbg !1347
  unreachable, !dbg !1347

30:                                               ; preds = %13
  call void @usage(i32 1) #23, !dbg !1348
  unreachable, !dbg !1348

31:                                               ; preds = %13
  call void @finalize_tab_stops() #18, !dbg !1349
  %32 = load i32, i32* @optind, align 4, !dbg !1350, !tbaa !1351
  %33 = icmp slt i32 %32, %0, !dbg !1353
  %34 = sext i32 %32 to i64, !dbg !1354
  %35 = getelementptr inbounds i8*, i8** %1, i64 %34, !dbg !1354
  %36 = select i1 %33, i8** %35, i8** null, !dbg !1354
  call void @set_file_list(i8** %36) #18, !dbg !1355
  %37 = call %struct._IO_FILE* @next_file(%struct._IO_FILE* null) #18, !dbg !1356
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %37, metadata !1359, metadata !DIExpression()) #18, !dbg !1375
  %38 = icmp eq %struct._IO_FILE* %37, null, !dbg !1376
  br i1 %38, label %159, label %39, !dbg !1378

39:                                               ; preds = %31
  %40 = bitcast i64* %3 to i8*, !dbg !1379
  br label %41, !dbg !1380

41:                                               ; preds = %157, %39
  %42 = phi %struct._IO_FILE* [ %67, %157 ], [ %37, %39 ], !dbg !1375
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %42, metadata !1359, metadata !DIExpression()) #18, !dbg !1375
  call void @llvm.dbg.value(metadata i8 1, metadata !1364, metadata !DIExpression()) #18, !dbg !1379
  call void @llvm.dbg.value(metadata i64 0, metadata !1365, metadata !DIExpression()) #18, !dbg !1379
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %40) #18, !dbg !1381
  call void @llvm.dbg.value(metadata i64 0, metadata !1366, metadata !DIExpression()) #18, !dbg !1379
  store i64 0, i64* %3, align 8, !dbg !1382, !tbaa !1383
  br label %43, !dbg !1380

43:                                               ; preds = %155, %41
  %44 = phi %struct._IO_FILE* [ %42, %41 ], [ %67, %155 ], !dbg !1375
  %45 = phi i8 [ 1, %41 ], [ %134, %155 ], !dbg !1379
  %46 = phi i64 [ 0, %41 ], [ %135, %155 ], !dbg !1379
  call void @llvm.dbg.value(metadata i64 %46, metadata !1365, metadata !DIExpression()) #18, !dbg !1379
  call void @llvm.dbg.value(metadata i8 %45, metadata !1364, metadata !DIExpression()) #18, !dbg !1379
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %44, metadata !1359, metadata !DIExpression()) #18, !dbg !1375
  br label %47, !dbg !1385

47:                                               ; preds = %62, %43
  %48 = phi %struct._IO_FILE* [ %44, %43 ], [ %63, %62 ], !dbg !1375
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %48, metadata !1359, metadata !DIExpression()) #18, !dbg !1375
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %48, metadata !1386, metadata !DIExpression()) #18, !dbg !1392
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %48, i64 0, i32 1, !dbg !1394
  %50 = load i8*, i8** %49, align 8, !dbg !1394, !tbaa !1395
  %51 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %48, i64 0, i32 2, !dbg !1394
  %52 = load i8*, i8** %51, align 8, !dbg !1394, !tbaa !1398
  %53 = icmp ult i8* %50, %52, !dbg !1394
  br i1 %53, label %54, label %59, !dbg !1394, !prof !1399, !misexpect !1400

54:                                               ; preds = %47
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %48, metadata !1359, metadata !DIExpression()) #18, !dbg !1375
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %48, metadata !1359, metadata !DIExpression()) #18, !dbg !1375
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %48, metadata !1359, metadata !DIExpression()) #18, !dbg !1375
  %55 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %48, i64 0, i32 1, !dbg !1394
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %48, metadata !1359, metadata !DIExpression()) #18, !dbg !1375
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %48, metadata !1359, metadata !DIExpression()) #18, !dbg !1375
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %48, metadata !1359, metadata !DIExpression()) #18, !dbg !1375
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %48, metadata !1359, metadata !DIExpression()) #18, !dbg !1375
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %48, metadata !1359, metadata !DIExpression()) #18, !dbg !1375
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %48, metadata !1359, metadata !DIExpression()) #18, !dbg !1375
  %56 = getelementptr inbounds i8, i8* %50, i64 1, !dbg !1394
  store i8* %56, i8** %55, align 8, !dbg !1394, !tbaa !1395
  %57 = load i8, i8* %50, align 1, !dbg !1394, !tbaa !1342
  %58 = zext i8 %57 to i32, !dbg !1394
  br label %65, !dbg !1401

59:                                               ; preds = %47
  %60 = call i32 @__uflow(%struct._IO_FILE* nonnull %48) #18, !dbg !1394
  call void @llvm.dbg.value(metadata i32 %60, metadata !1362, metadata !DIExpression()) #18, !dbg !1379
  %61 = icmp slt i32 %60, 0, !dbg !1402
  br i1 %61, label %62, label %65, !dbg !1401

62:                                               ; preds = %59
  %63 = call %struct._IO_FILE* @next_file(%struct._IO_FILE* %48) #18, !dbg !1403
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %63, metadata !1359, metadata !DIExpression()) #18, !dbg !1375
  %64 = icmp eq %struct._IO_FILE* %63, null, !dbg !1401
  br i1 %64, label %65, label %47, !dbg !1385, !llvm.loop !1404

65:                                               ; preds = %62, %59, %54
  %66 = phi i32 [ %58, %54 ], [ %60, %59 ], [ %60, %62 ]
  %67 = phi %struct._IO_FILE* [ %48, %54 ], [ null, %62 ], [ %48, %59 ], !dbg !1375
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %67, metadata !1359, metadata !DIExpression()) #18, !dbg !1375
  %68 = and i8 %45, 1, !dbg !1406
  %69 = icmp eq i8 %68, 0, !dbg !1406
  br i1 %69, label %132, label %70, !dbg !1407

70:                                               ; preds = %65
  switch i32 %66, label %111 [
    i32 9, label %71
    i32 8, label %103
  ], !dbg !1408

71:                                               ; preds = %70
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %4) #18, !dbg !1409
  call void @llvm.dbg.value(metadata i64* %3, metadata !1366, metadata !DIExpression(DW_OP_deref)) #18, !dbg !1379
  call void @llvm.dbg.value(metadata i8* %4, metadata !1373, metadata !DIExpression(DW_OP_deref)) #18, !dbg !1410
  %72 = call i64 @get_next_tab_column(i64 %46, i64* nonnull %3, i8* nonnull %4) #18, !dbg !1411
  call void @llvm.dbg.value(metadata i64 %72, metadata !1367, metadata !DIExpression()) #18, !dbg !1410
  %73 = load i8, i8* %4, align 1, !dbg !1412, !tbaa !1322, !range !1414
  call void @llvm.dbg.value(metadata i8 %73, metadata !1373, metadata !DIExpression()) #18, !dbg !1410
  %74 = icmp eq i8 %73, 0, !dbg !1412
  %75 = add i64 %46, 1, !dbg !1415
  %76 = select i1 %74, i64 %72, i64 %75, !dbg !1416
  call void @llvm.dbg.value(metadata i64 %76, metadata !1367, metadata !DIExpression()) #18, !dbg !1410
  %77 = icmp ult i64 %76, %46, !dbg !1417
  br i1 %77, label %78, label %80, !dbg !1419

78:                                               ; preds = %71
  %79 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33, i64 0, i64 0), i32 5) #18, !dbg !1420
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %79) #18, !dbg !1420
  unreachable, !dbg !1420

80:                                               ; preds = %71, %95
  %81 = phi i64 [ %82, %95 ], [ %46, %71 ], !dbg !1379
  call void @llvm.dbg.value(metadata i64 %81, metadata !1365, metadata !DIExpression()) #18, !dbg !1379
  %82 = add i64 %81, 1, !dbg !1421
  call void @llvm.dbg.value(metadata i64 %82, metadata !1365, metadata !DIExpression()) #18, !dbg !1379
  %83 = icmp ult i64 %82, %76, !dbg !1422
  br i1 %83, label %84, label %102, !dbg !1423

84:                                               ; preds = %80
  call void @llvm.dbg.value(metadata i32 32, metadata !1424, metadata !DIExpression()) #18, !dbg !1429
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1432, !tbaa !1254
  %86 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %85, i64 0, i32 5, !dbg !1432
  %87 = load i8*, i8** %86, align 8, !dbg !1432, !tbaa !1433
  %88 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %85, i64 0, i32 6, !dbg !1432
  %89 = load i8*, i8** %88, align 8, !dbg !1432, !tbaa !1434
  %90 = icmp ult i8* %87, %89, !dbg !1432
  br i1 %90, label %93, label %91, !dbg !1432, !prof !1399, !misexpect !1400

91:                                               ; preds = %84
  %92 = call i32 @__overflow(%struct._IO_FILE* %85, i32 32) #18, !dbg !1432
  br label %95, !dbg !1432

93:                                               ; preds = %84
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !1432
  store i8* %94, i8** %86, align 8, !dbg !1432, !tbaa !1433
  store i8 32, i8* %87, align 1, !dbg !1432, !tbaa !1342
  br label %95, !dbg !1432

95:                                               ; preds = %93, %91
  %96 = phi i32 [ %92, %91 ], [ 32, %93 ], !dbg !1432
  %97 = icmp slt i32 %96, 0, !dbg !1435
  br i1 %97, label %98, label %80, !dbg !1436, !llvm.loop !1437

98:                                               ; preds = %95
  %99 = tail call i32* @__errno_location() #24, !dbg !1439
  %100 = load i32, i32* %99, align 4, !dbg !1439, !tbaa !1351
  %101 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), i32 5) #18, !dbg !1439
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %100, i8* %101) #18, !dbg !1439
  unreachable, !dbg !1439

102:                                              ; preds = %80
  call void @llvm.dbg.value(metadata i32 32, metadata !1362, metadata !DIExpression()) #18, !dbg !1379
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %4) #18, !dbg !1440
  br label %116, !dbg !1441

103:                                              ; preds = %70
  %104 = icmp ne i64 %46, 0, !dbg !1442
  %105 = sext i1 %104 to i64, !dbg !1445
  %106 = add i64 %46, %105, !dbg !1445
  call void @llvm.dbg.value(metadata i64 %106, metadata !1365, metadata !DIExpression()) #18, !dbg !1379
  %107 = load i64, i64* %3, align 8, !dbg !1446, !tbaa !1383
  call void @llvm.dbg.value(metadata i64 %107, metadata !1366, metadata !DIExpression()) #18, !dbg !1379
  %108 = icmp ne i64 %107, 0, !dbg !1447
  %109 = sext i1 %108 to i64, !dbg !1448
  %110 = add i64 %107, %109, !dbg !1448
  call void @llvm.dbg.value(metadata i64 %110, metadata !1366, metadata !DIExpression()) #18, !dbg !1379
  store i64 %110, i64* %3, align 8, !dbg !1448, !tbaa !1383
  br label %116, !dbg !1449

111:                                              ; preds = %70
  %112 = add i64 %46, 1, !dbg !1450
  call void @llvm.dbg.value(metadata i64 %112, metadata !1365, metadata !DIExpression()) #18, !dbg !1379
  %113 = icmp eq i64 %112, 0, !dbg !1452
  br i1 %113, label %114, label %116, !dbg !1454

114:                                              ; preds = %111
  %115 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33, i64 0, i64 0), i32 5) #18, !dbg !1455
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %115) #18, !dbg !1455
  unreachable, !dbg !1455

116:                                              ; preds = %111, %103, %102
  %117 = phi i32 [ 32, %102 ], [ 8, %103 ], [ %66, %111 ], !dbg !1456
  %118 = phi i64 [ %82, %102 ], [ %106, %103 ], [ %112, %111 ], !dbg !1457
  call void @llvm.dbg.value(metadata i64 %118, metadata !1365, metadata !DIExpression()) #18, !dbg !1379
  call void @llvm.dbg.value(metadata i32 %117, metadata !1362, metadata !DIExpression()) #18, !dbg !1379
  %119 = load i8, i8* @convert_entire_line, align 1, !dbg !1458, !tbaa !1322, !range !1414
  %120 = icmp eq i8 %119, 0, !dbg !1458
  br i1 %120, label %121, label %129, !dbg !1459

121:                                              ; preds = %116
  %122 = tail call i16** @__ctype_b_loc() #24, !dbg !1460
  %123 = load i16*, i16** %122, align 8, !dbg !1460, !tbaa !1254
  %124 = sext i32 %117 to i64, !dbg !1460
  %125 = getelementptr inbounds i16, i16* %123, i64 %124, !dbg !1460
  %126 = load i16, i16* %125, align 2, !dbg !1460, !tbaa !1461
  %127 = and i16 %126, 1, !dbg !1460
  %128 = icmp ne i16 %127, 0, !dbg !1462
  br label %129, !dbg !1459

129:                                              ; preds = %121, %116
  %130 = phi i1 [ true, %116 ], [ %128, %121 ]
  %131 = zext i1 %130 to i8, !dbg !1463
  call void @llvm.dbg.value(metadata i8 %131, metadata !1364, metadata !DIExpression()) #18, !dbg !1379
  br label %132, !dbg !1464

132:                                              ; preds = %129, %65
  %133 = phi i32 [ %117, %129 ], [ %66, %65 ], !dbg !1456
  %134 = phi i8 [ %131, %129 ], [ %45, %65 ], !dbg !1379
  %135 = phi i64 [ %118, %129 ], [ %46, %65 ], !dbg !1379
  call void @llvm.dbg.value(metadata i64 %135, metadata !1365, metadata !DIExpression()) #18, !dbg !1379
  call void @llvm.dbg.value(metadata i8 %134, metadata !1364, metadata !DIExpression()) #18, !dbg !1379
  call void @llvm.dbg.value(metadata i32 %133, metadata !1362, metadata !DIExpression()) #18, !dbg !1379
  %136 = icmp slt i32 %133, 0, !dbg !1465
  br i1 %136, label %158, label %137, !dbg !1467

137:                                              ; preds = %132
  call void @llvm.dbg.value(metadata i32 %133, metadata !1424, metadata !DIExpression()) #18, !dbg !1468
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1471, !tbaa !1254
  %139 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %138, i64 0, i32 5, !dbg !1471
  %140 = load i8*, i8** %139, align 8, !dbg !1471, !tbaa !1433
  %141 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %138, i64 0, i32 6, !dbg !1471
  %142 = load i8*, i8** %141, align 8, !dbg !1471, !tbaa !1434
  %143 = icmp ult i8* %140, %142, !dbg !1471
  br i1 %143, label %144, label %147, !dbg !1471, !prof !1399, !misexpect !1400

144:                                              ; preds = %137
  %145 = trunc i32 %133 to i8, !dbg !1471
  %146 = getelementptr inbounds i8, i8* %140, i64 1, !dbg !1471
  store i8* %146, i8** %139, align 8, !dbg !1471, !tbaa !1433
  store i8 %145, i8* %140, align 1, !dbg !1471, !tbaa !1342
  br label %155, !dbg !1472

147:                                              ; preds = %137
  %148 = and i32 %133, 255, !dbg !1471
  %149 = call i32 @__overflow(%struct._IO_FILE* %138, i32 %148) #18, !dbg !1471
  %150 = icmp slt i32 %149, 0, !dbg !1473
  br i1 %150, label %151, label %155, !dbg !1472

151:                                              ; preds = %147
  %152 = tail call i32* @__errno_location() #24, !dbg !1474
  %153 = load i32, i32* %152, align 4, !dbg !1474, !tbaa !1351
  %154 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), i32 5) #18, !dbg !1474
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %153, i8* %154) #18, !dbg !1474
  unreachable, !dbg !1474

155:                                              ; preds = %147, %144
  %156 = icmp eq i32 %133, 10, !dbg !1475
  br i1 %156, label %157, label %43, !dbg !1476, !llvm.loop !1477

157:                                              ; preds = %155
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %67, metadata !1359, metadata !DIExpression()) #18, !dbg !1375
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %67, metadata !1359, metadata !DIExpression()) #18, !dbg !1375
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %67, metadata !1359, metadata !DIExpression()) #18, !dbg !1375
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %67, metadata !1359, metadata !DIExpression()) #18, !dbg !1375
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %67, metadata !1359, metadata !DIExpression()) #18, !dbg !1375
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %67, metadata !1359, metadata !DIExpression()) #18, !dbg !1375
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %67, metadata !1359, metadata !DIExpression()) #18, !dbg !1375
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %67, metadata !1359, metadata !DIExpression()) #18, !dbg !1375
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %67, metadata !1359, metadata !DIExpression()) #18, !dbg !1375
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %40) #18, !dbg !1479
  br label %41

158:                                              ; preds = %132
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %40) #18, !dbg !1479
  br label %159

159:                                              ; preds = %31, %158
  call void @cleanup_file_list_stdin() #18, !dbg !1480
  %160 = load i32, i32* @exit_status, align 4, !dbg !1481, !tbaa !1351
  ret i32 %160, !dbg !1482
}

; Function Attrs: nounwind
declare !dbg !105 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !108 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !111 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !116 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

declare !dbg !151 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @add_tab_stop(i64 %0) local_unnamed_addr #8 !dbg !1483 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1487, metadata !DIExpression()), !dbg !1490
  %2 = load i64, i64* @first_free_tab, align 8, !dbg !1491, !tbaa !1383
  %3 = icmp eq i64 %2, 0, !dbg !1491
  br i1 %3, label %9, label %4, !dbg !1491

4:                                                ; preds = %1
  %5 = load i64*, i64** @tab_list, align 8, !dbg !1492, !tbaa !1254
  %6 = add i64 %2, -1, !dbg !1493
  %7 = getelementptr inbounds i64, i64* %5, i64 %6, !dbg !1492
  %8 = load i64, i64* %7, align 8, !dbg !1492, !tbaa !1383
  br label %9, !dbg !1491

9:                                                ; preds = %1, %4
  %10 = phi i64 [ %8, %4 ], [ 0, %1 ], !dbg !1491
  call void @llvm.dbg.value(metadata i64 %10, metadata !1488, metadata !DIExpression()), !dbg !1490
  %11 = tail call i64 @llvm.usub.sat.i64(i64 %0, i64 %10), !dbg !1494
  call void @llvm.dbg.value(metadata i64 %11, metadata !1489, metadata !DIExpression()), !dbg !1490
  %12 = load i64, i64* @n_tabs_allocated, align 8, !dbg !1495, !tbaa !1383
  %13 = icmp eq i64 %2, %12, !dbg !1497
  br i1 %13, label %16, label %14, !dbg !1498

14:                                               ; preds = %9
  %15 = load i64*, i64** @tab_list, align 8, !dbg !1499, !tbaa !1254
  br label %36, !dbg !1498

16:                                               ; preds = %9
  %17 = load i8*, i8** bitcast (i64** @tab_list to i8**), align 8, !dbg !1500, !tbaa !1254
  call void @llvm.dbg.value(metadata i8* %17, metadata !201, metadata !DIExpression()) #18, !dbg !1501
  call void @llvm.dbg.value(metadata i64* @n_tabs_allocated, metadata !202, metadata !DIExpression()) #18, !dbg !1501
  call void @llvm.dbg.value(metadata i64 8, metadata !203, metadata !DIExpression()) #18, !dbg !1501
  call void @llvm.dbg.value(metadata i64 %12, metadata !204, metadata !DIExpression()) #18, !dbg !1501
  %18 = icmp eq i8* %17, null, !dbg !1503
  br i1 %18, label %19, label %23, !dbg !1505

19:                                               ; preds = %16
  br i1 %3, label %30, label %20, !dbg !1506

20:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 %12, metadata !204, metadata !DIExpression()) #18, !dbg !1501
  %21 = icmp ugt i64 %2, 1152921504606846975, !dbg !1508
  br i1 %21, label %22, label %30, !dbg !1510

22:                                               ; preds = %20
  tail call void @xalloc_die() #22, !dbg !1511
  unreachable, !dbg !1511

23:                                               ; preds = %16
  %24 = icmp ult i64 %2, 768614336404564650, !dbg !1512
  br i1 %24, label %26, label %25, !dbg !1515

25:                                               ; preds = %23
  tail call void @xalloc_die() #22, !dbg !1516
  unreachable, !dbg !1516

26:                                               ; preds = %23
  %27 = lshr i64 %2, 1, !dbg !1517
  %28 = add nuw nsw i64 %2, 1, !dbg !1518
  %29 = add nuw nsw i64 %28, %27, !dbg !1519
  call void @llvm.dbg.value(metadata i64 %29, metadata !204, metadata !DIExpression()) #18, !dbg !1501
  br label %30

30:                                               ; preds = %19, %20, %26
  %31 = phi i64 [ %29, %26 ], [ %2, %20 ], [ 16, %19 ], !dbg !1501
  call void @llvm.dbg.value(metadata i64 %31, metadata !204, metadata !DIExpression()) #18, !dbg !1501
  store i64 %31, i64* @n_tabs_allocated, align 8, !dbg !1520, !tbaa !1383
  %32 = shl nuw nsw i64 %31, 3, !dbg !1521
  %33 = tail call i8* @xrealloc(i8* %17, i64 %32) #18, !dbg !1522
  store i8* %33, i8** bitcast (i64** @tab_list to i8**), align 8, !dbg !1523, !tbaa !1254
  %34 = bitcast i8* %33 to i64*, !dbg !1524
  %35 = load i64, i64* @first_free_tab, align 8, !dbg !1525, !tbaa !1383
  br label %36, !dbg !1524

36:                                               ; preds = %14, %30
  %37 = phi i64 [ %2, %14 ], [ %35, %30 ], !dbg !1525
  %38 = phi i64* [ %15, %14 ], [ %34, %30 ], !dbg !1499
  %39 = add i64 %37, 1, !dbg !1525
  store i64 %39, i64* @first_free_tab, align 8, !dbg !1525, !tbaa !1383
  %40 = getelementptr inbounds i64, i64* %38, i64 %37, !dbg !1499
  store i64 %0, i64* %40, align 8, !dbg !1526, !tbaa !1383
  %41 = load i64, i64* @max_column_width, align 8, !dbg !1527, !tbaa !1383
  %42 = icmp ult i64 %41, %11, !dbg !1529
  br i1 %42, label %43, label %44, !dbg !1530

43:                                               ; preds = %36
  store i64 %11, i64* @max_column_width, align 8, !dbg !1531, !tbaa !1383
  br label %44, !dbg !1533

44:                                               ; preds = %43, %36
  ret void, !dbg !1534
}

; Function Attrs: nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_tab_stops(i8* %0) local_unnamed_addr #8 !dbg !1535 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1537, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 0, metadata !1538, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 0, metadata !1539, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 0, metadata !1540, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 0, metadata !1541, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* null, metadata !1542, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 1, metadata !1543, metadata !DIExpression()), !dbg !1556
  br label %2, !dbg !1557

2:                                                ; preds = %81, %1
  %3 = phi i64 [ 0, %1 ], [ %82, %81 ], !dbg !1558
  %4 = phi i8 [ 0, %1 ], [ %83, %81 ], !dbg !1559
  %5 = phi i8 [ 0, %1 ], [ %84, %81 ], !dbg !1560
  %6 = phi i8* [ null, %1 ], [ %85, %81 ], !dbg !1561
  %7 = phi i8 [ 1, %1 ], [ %86, %81 ], !dbg !1562
  %8 = phi i8 [ 0, %1 ], [ %87, %81 ], !dbg !1556
  %9 = phi i8* [ %0, %1 ], [ %89, %81 ]
  call void @llvm.dbg.value(metadata i64 %3, metadata !1539, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %9, metadata !1537, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %8, metadata !1538, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %7, metadata !1543, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %6, metadata !1542, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %5, metadata !1541, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %4, metadata !1540, metadata !DIExpression()), !dbg !1556
  %10 = load i8, i8* %9, align 1, !dbg !1563, !tbaa !1342
  switch i8 %10, label %11 [
    i8 0, label %90
    i8 44, label %19
  ], !dbg !1564

11:                                               ; preds = %2
  %12 = tail call i16** @__ctype_b_loc() #24, !dbg !1565
  %13 = load i16*, i16** %12, align 8, !dbg !1565, !tbaa !1254
  %14 = zext i8 %10 to i64, !dbg !1565
  %15 = getelementptr inbounds i16, i16* %13, i64 %14, !dbg !1565
  %16 = load i16, i16* %15, align 2, !dbg !1565, !tbaa !1461
  %17 = and i16 %16, 1, !dbg !1565
  %18 = icmp eq i16 %17, 0, !dbg !1565
  br i1 %18, label %41, label %19, !dbg !1566

19:                                               ; preds = %2, %11
  %20 = and i8 %8, 1, !dbg !1567
  %21 = icmp eq i8 %20, 0, !dbg !1567
  br i1 %21, label %81, label %22, !dbg !1570

22:                                               ; preds = %19
  %23 = and i8 %4, 1, !dbg !1571
  %24 = icmp eq i8 %23, 0, !dbg !1571
  br i1 %24, label %31, label %25, !dbg !1574

25:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 %3, metadata !1575, metadata !DIExpression()) #18, !dbg !1581
  call void @llvm.dbg.value(metadata i8 1, metadata !1580, metadata !DIExpression()) #18, !dbg !1581
  %26 = load i64, i64* @extend_size, align 8, !dbg !1585, !tbaa !1383
  %27 = icmp eq i64 %26, 0, !dbg !1585
  br i1 %27, label %28, label %29, !dbg !1587

28:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i8 undef, metadata !1580, metadata !DIExpression()) #18, !dbg !1581
  store i64 %3, i64* @extend_size, align 8, !dbg !1588, !tbaa !1383
  br label %81, !dbg !1589

29:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i64 %3, metadata !1539, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %3, metadata !1539, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %3, metadata !1539, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %3, metadata !1539, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %3, metadata !1539, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %3, metadata !1539, metadata !DIExpression()), !dbg !1556
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13.7, i64 0, i64 0), i32 5) #18, !dbg !1590
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %30) #18, !dbg !1592
  call void @llvm.dbg.value(metadata i8 0, metadata !1580, metadata !DIExpression()) #18, !dbg !1581
  call void @llvm.dbg.value(metadata i8 undef, metadata !1580, metadata !DIExpression()) #18, !dbg !1581
  store i64 %3, i64* @extend_size, align 8, !dbg !1588, !tbaa !1383
  br label %119, !dbg !1589

31:                                               ; preds = %22
  %32 = and i8 %5, 1, !dbg !1593
  %33 = icmp eq i8 %32, 0, !dbg !1593
  br i1 %33, label %40, label %34, !dbg !1595

34:                                               ; preds = %31
  call void @llvm.dbg.value(metadata i64 %3, metadata !1596, metadata !DIExpression()) #18, !dbg !1600
  call void @llvm.dbg.value(metadata i8 1, metadata !1599, metadata !DIExpression()) #18, !dbg !1600
  %35 = load i64, i64* @increment_size, align 8, !dbg !1604, !tbaa !1383
  %36 = icmp eq i64 %35, 0, !dbg !1604
  br i1 %36, label %37, label %38, !dbg !1606

37:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i8 undef, metadata !1599, metadata !DIExpression()) #18, !dbg !1600
  store i64 %3, i64* @increment_size, align 8, !dbg !1607, !tbaa !1383
  br label %81, !dbg !1608

38:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 %3, metadata !1539, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %3, metadata !1539, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %3, metadata !1539, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %3, metadata !1539, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %3, metadata !1539, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %3, metadata !1539, metadata !DIExpression()), !dbg !1556
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.14.8, i64 0, i64 0), i32 5) #18, !dbg !1609
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %39) #18, !dbg !1611
  call void @llvm.dbg.value(metadata i8 0, metadata !1599, metadata !DIExpression()) #18, !dbg !1600
  call void @llvm.dbg.value(metadata i8 undef, metadata !1599, metadata !DIExpression()) #18, !dbg !1600
  store i64 %3, i64* @increment_size, align 8, !dbg !1607, !tbaa !1383
  br label %119, !dbg !1608

40:                                               ; preds = %31
  tail call void @add_tab_stop(i64 %3), !dbg !1612
  br label %81

41:                                               ; preds = %11
  switch i8 %10, label %54 [
    i8 47, label %42
    i8 43, label %48
  ], !dbg !1613

42:                                               ; preds = %41
  %43 = and i8 %8, 1, !dbg !1614
  %44 = icmp eq i8 %43, 0, !dbg !1614
  br i1 %44, label %81, label %45, !dbg !1617

45:                                               ; preds = %42
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1.9, i64 0, i64 0), i32 5) #18, !dbg !1618
  %47 = tail call i8* @quote(i8* nonnull %9) #18, !dbg !1620
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %46, i8* %47) #18, !dbg !1621
  call void @llvm.dbg.value(metadata i8 0, metadata !1543, metadata !DIExpression()), !dbg !1556
  br label %81, !dbg !1622

48:                                               ; preds = %41
  %49 = and i8 %8, 1, !dbg !1623
  %50 = icmp eq i8 %49, 0, !dbg !1623
  br i1 %50, label %81, label %51, !dbg !1626

51:                                               ; preds = %48
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2.10, i64 0, i64 0), i32 5) #18, !dbg !1627
  %53 = tail call i8* @quote(i8* nonnull %9) #18, !dbg !1629
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %52, i8* %53) #18, !dbg !1630
  call void @llvm.dbg.value(metadata i8 0, metadata !1543, metadata !DIExpression()), !dbg !1556
  br label %81, !dbg !1631

54:                                               ; preds = %41
  %55 = sext i8 %10 to i32, !dbg !1632
  %56 = add nsw i32 %55, -48, !dbg !1633
  %57 = icmp ult i32 %56, 10, !dbg !1633
  br i1 %57, label %58, label %78, !dbg !1634

58:                                               ; preds = %54
  %59 = and i8 %8, 1, !dbg !1635
  %60 = icmp eq i8 %59, 0, !dbg !1635
  %61 = select i1 %60, i64 0, i64 %3, !dbg !1637
  %62 = select i1 %60, i8* %9, i8* %6, !dbg !1637
  %63 = select i1 %60, i8 1, i8 %8, !dbg !1637
  call void @llvm.dbg.value(metadata i64 %61, metadata !1539, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %63, metadata !1538, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %62, metadata !1542, metadata !DIExpression()), !dbg !1556
  %64 = icmp ugt i64 %61, 1844674407370955161, !dbg !1638
  br i1 %64, label %71, label %65, !dbg !1638

65:                                               ; preds = %58
  %66 = mul nuw i64 %61, 10, !dbg !1638
  %67 = sext i8 %10 to i64, !dbg !1638
  %68 = add nsw i64 %67, -48, !dbg !1638
  %69 = add i64 %68, %66, !dbg !1638
  %70 = icmp ult i64 %69, %61, !dbg !1638
  br i1 %70, label %71, label %81, !dbg !1639

71:                                               ; preds = %65, %58
  %72 = tail call i64 @strspn(i8* %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3.11, i64 0, i64 0)) #21, !dbg !1640
  call void @llvm.dbg.value(metadata i64 %72, metadata !1544, metadata !DIExpression()), !dbg !1641
  %73 = tail call noalias i8* @xstrndup(i8* %62, i64 %72) #18, !dbg !1642
  call void @llvm.dbg.value(metadata i8* %73, metadata !1555, metadata !DIExpression()), !dbg !1641
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4.12, i64 0, i64 0), i32 5) #18, !dbg !1643
  %75 = tail call i8* @quote(i8* %73) #18, !dbg !1644
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %74, i8* %75) #18, !dbg !1645
  tail call void @free(i8* %73) #18, !dbg !1646
  call void @llvm.dbg.value(metadata i8 0, metadata !1543, metadata !DIExpression()), !dbg !1556
  %76 = getelementptr inbounds i8, i8* %62, i64 -1, !dbg !1647
  %77 = getelementptr inbounds i8, i8* %76, i64 %72, !dbg !1648
  call void @llvm.dbg.value(metadata i8* %77, metadata !1537, metadata !DIExpression()), !dbg !1556
  br label %81, !dbg !1649

78:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i8* %9, metadata !1537, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %9, metadata !1537, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %9, metadata !1537, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %9, metadata !1537, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %9, metadata !1537, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %9, metadata !1537, metadata !DIExpression()), !dbg !1556
  %79 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5.13, i64 0, i64 0), i32 5) #18, !dbg !1650
  %80 = tail call i8* @quote(i8* nonnull %9) #18, !dbg !1652
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %79, i8* %80) #18, !dbg !1653
  call void @llvm.dbg.value(metadata i8 0, metadata !1543, metadata !DIExpression()), !dbg !1556
  br label %119, !dbg !1654

81:                                               ; preds = %65, %37, %28, %51, %48, %45, %42, %40, %19, %71
  %82 = phi i64 [ %69, %65 ], [ %61, %71 ], [ %3, %19 ], [ %3, %40 ], [ %3, %42 ], [ %3, %45 ], [ %3, %48 ], [ %3, %51 ], [ %3, %28 ], [ %3, %37 ], !dbg !1558
  %83 = phi i8 [ %4, %65 ], [ %4, %71 ], [ %4, %19 ], [ %4, %40 ], [ 1, %42 ], [ 1, %45 ], [ 0, %48 ], [ 0, %51 ], [ %4, %28 ], [ %4, %37 ], !dbg !1556
  %84 = phi i8 [ %5, %65 ], [ %5, %71 ], [ %5, %19 ], [ %5, %40 ], [ 0, %42 ], [ 0, %45 ], [ 1, %48 ], [ 1, %51 ], [ %5, %28 ], [ %5, %37 ], !dbg !1556
  %85 = phi i8* [ %62, %65 ], [ %62, %71 ], [ %6, %19 ], [ %6, %40 ], [ %6, %42 ], [ %6, %45 ], [ %6, %48 ], [ %6, %51 ], [ %6, %28 ], [ %6, %37 ], !dbg !1561
  %86 = phi i8 [ %7, %65 ], [ 0, %71 ], [ %7, %19 ], [ %7, %40 ], [ %7, %42 ], [ 0, %45 ], [ %7, %48 ], [ 0, %51 ], [ %7, %28 ], [ %7, %37 ], !dbg !1556
  %87 = phi i8 [ %63, %65 ], [ %63, %71 ], [ 0, %19 ], [ 0, %40 ], [ %8, %42 ], [ %8, %45 ], [ %8, %48 ], [ %8, %51 ], [ 0, %28 ], [ 0, %37 ], !dbg !1556
  %88 = phi i8* [ %9, %65 ], [ %77, %71 ], [ %9, %19 ], [ %9, %40 ], [ %9, %42 ], [ %9, %45 ], [ %9, %48 ], [ %9, %51 ], [ %9, %28 ], [ %9, %37 ]
  call void @llvm.dbg.value(metadata i64 %82, metadata !1539, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %88, metadata !1537, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %87, metadata !1538, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %86, metadata !1543, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %85, metadata !1542, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %84, metadata !1541, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %83, metadata !1540, metadata !DIExpression()), !dbg !1556
  %89 = getelementptr inbounds i8, i8* %88, i64 1, !dbg !1655
  call void @llvm.dbg.value(metadata i8* %89, metadata !1537, metadata !DIExpression()), !dbg !1556
  br label %2, !dbg !1656, !llvm.loop !1657

90:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i64 %3, metadata !1539, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %4, metadata !1540, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %5, metadata !1541, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %7, metadata !1543, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %8, metadata !1538, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %3, metadata !1539, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %4, metadata !1540, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %5, metadata !1541, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %7, metadata !1543, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %8, metadata !1538, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %3, metadata !1539, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %4, metadata !1540, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %5, metadata !1541, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %7, metadata !1543, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %8, metadata !1538, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %3, metadata !1539, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %4, metadata !1540, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %5, metadata !1541, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %7, metadata !1543, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %8, metadata !1538, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %3, metadata !1539, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %4, metadata !1540, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %5, metadata !1541, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %7, metadata !1543, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %8, metadata !1538, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %3, metadata !1539, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %4, metadata !1540, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %5, metadata !1541, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %7, metadata !1543, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %8, metadata !1538, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %7, metadata !1543, metadata !DIExpression()), !dbg !1556
  %91 = and i8 %8, 1, !dbg !1659
  %92 = and i8 %91, %7, !dbg !1659
  %93 = icmp eq i8 %92, 0, !dbg !1659
  br i1 %93, label %115, label %94, !dbg !1659

94:                                               ; preds = %90
  %95 = and i8 %4, 1, !dbg !1661
  %96 = icmp eq i8 %95, 0, !dbg !1661
  br i1 %96, label %104, label %97, !dbg !1664

97:                                               ; preds = %94
  call void @llvm.dbg.value(metadata i64 %3, metadata !1575, metadata !DIExpression()) #18, !dbg !1665
  call void @llvm.dbg.value(metadata i8 1, metadata !1580, metadata !DIExpression()) #18, !dbg !1665
  %98 = load i64, i64* @extend_size, align 8, !dbg !1667, !tbaa !1383
  %99 = icmp eq i64 %98, 0, !dbg !1667
  br i1 %99, label %102, label %100, !dbg !1668

100:                                              ; preds = %97
  %101 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13.7, i64 0, i64 0), i32 5) #18, !dbg !1669
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %101) #18, !dbg !1670
  call void @llvm.dbg.value(metadata i8 0, metadata !1580, metadata !DIExpression()) #18, !dbg !1665
  br label %102, !dbg !1671

102:                                              ; preds = %97, %100
  %103 = phi i8 [ 0, %100 ], [ 1, %97 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1580, metadata !DIExpression()) #18, !dbg !1665
  store i64 %3, i64* @extend_size, align 8, !dbg !1672, !tbaa !1383
  call void @llvm.dbg.value(metadata i8 %103, metadata !1543, metadata !DIExpression()), !dbg !1556
  br label %115, !dbg !1673

104:                                              ; preds = %94
  %105 = and i8 %5, 1, !dbg !1674
  %106 = icmp eq i8 %105, 0, !dbg !1674
  br i1 %106, label %114, label %107, !dbg !1676

107:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i64 %3, metadata !1596, metadata !DIExpression()) #18, !dbg !1677
  call void @llvm.dbg.value(metadata i8 1, metadata !1599, metadata !DIExpression()) #18, !dbg !1677
  %108 = load i64, i64* @increment_size, align 8, !dbg !1679, !tbaa !1383
  %109 = icmp eq i64 %108, 0, !dbg !1679
  br i1 %109, label %112, label %110, !dbg !1680

110:                                              ; preds = %107
  %111 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.14.8, i64 0, i64 0), i32 5) #18, !dbg !1681
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %111) #18, !dbg !1682
  call void @llvm.dbg.value(metadata i8 0, metadata !1599, metadata !DIExpression()) #18, !dbg !1677
  br label %112, !dbg !1683

112:                                              ; preds = %107, %110
  %113 = phi i8 [ 0, %110 ], [ 1, %107 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1599, metadata !DIExpression()) #18, !dbg !1677
  store i64 %3, i64* @increment_size, align 8, !dbg !1684, !tbaa !1383
  call void @llvm.dbg.value(metadata i8 %113, metadata !1543, metadata !DIExpression()), !dbg !1556
  br label %115, !dbg !1685

114:                                              ; preds = %104
  tail call void @add_tab_stop(i64 %3), !dbg !1686
  br label %115

115:                                              ; preds = %90, %102, %114, %112
  %116 = phi i8 [ %103, %102 ], [ %113, %112 ], [ %7, %114 ], [ %7, %90 ], !dbg !1556
  call void @llvm.dbg.value(metadata i8 %116, metadata !1543, metadata !DIExpression()), !dbg !1556
  %117 = and i8 %116, 1, !dbg !1687
  %118 = icmp eq i8 %117, 0, !dbg !1687
  br i1 %118, label %119, label %120, !dbg !1689

119:                                              ; preds = %78, %29, %38, %115
  tail call void @exit(i32 1) #22, !dbg !1690
  unreachable, !dbg !1690

120:                                              ; preds = %115
  ret void, !dbg !1691
}

; Function Attrs: nofree nounwind readonly
declare i64 @strspn(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !220 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @finalize_tab_stops() local_unnamed_addr #8 !dbg !1692 {
  %1 = load i64*, i64** @tab_list, align 8, !dbg !1693, !tbaa !1254
  %2 = load i64, i64* @first_free_tab, align 8, !dbg !1694, !tbaa !1383
  call void @llvm.dbg.value(metadata i64* %1, metadata !1695, metadata !DIExpression()) #18, !dbg !1706
  call void @llvm.dbg.value(metadata i64 %2, metadata !1702, metadata !DIExpression()) #18, !dbg !1706
  call void @llvm.dbg.value(metadata i64 0, metadata !1703, metadata !DIExpression()) #18, !dbg !1706
  call void @llvm.dbg.value(metadata i64 0, metadata !1704, metadata !DIExpression()) #18, !dbg !1708
  %3 = icmp eq i64 %2, 0, !dbg !1709
  br i1 %3, label %6, label %12, !dbg !1711

4:                                                ; preds = %20
  call void @llvm.dbg.value(metadata i64 %22, metadata !1704, metadata !DIExpression()) #18, !dbg !1708
  call void @llvm.dbg.value(metadata i64 %16, metadata !1703, metadata !DIExpression()) #18, !dbg !1706
  %5 = icmp eq i64 %22, %2, !dbg !1709
  br i1 %5, label %6, label %12, !dbg !1711, !llvm.loop !1712

6:                                                ; preds = %4, %0
  %7 = load i64, i64* @increment_size, align 8, !dbg !1714, !tbaa !1383
  %8 = icmp ne i64 %7, 0, !dbg !1714
  %9 = load i64, i64* @extend_size, align 8, !dbg !1716
  %10 = icmp ne i64 %9, 0, !dbg !1716
  %11 = and i1 %8, %10, !dbg !1717
  br i1 %11, label %25, label %27, !dbg !1717

12:                                               ; preds = %0, %4
  %13 = phi i64 [ %22, %4 ], [ 0, %0 ]
  %14 = phi i64 [ %16, %4 ], [ 0, %0 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !1704, metadata !DIExpression()) #18, !dbg !1708
  call void @llvm.dbg.value(metadata i64 %14, metadata !1703, metadata !DIExpression()) #18, !dbg !1706
  %15 = getelementptr inbounds i64, i64* %1, i64 %13, !dbg !1718
  %16 = load i64, i64* %15, align 8, !dbg !1718, !tbaa !1383
  %17 = icmp eq i64 %16, 0, !dbg !1721
  br i1 %17, label %18, label %20, !dbg !1722

18:                                               ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15.16, i64 0, i64 0), i32 5) #18, !dbg !1723
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %19) #18, !dbg !1723
  unreachable, !dbg !1723

20:                                               ; preds = %12
  %21 = icmp ugt i64 %16, %14, !dbg !1724
  call void @llvm.dbg.value(metadata i64 %16, metadata !1703, metadata !DIExpression()) #18, !dbg !1706
  %22 = add nuw i64 %13, 1, !dbg !1726
  call void @llvm.dbg.value(metadata i64 %22, metadata !1704, metadata !DIExpression()) #18, !dbg !1708
  br i1 %21, label %4, label %23, !dbg !1727

23:                                               ; preds = %20
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16.17, i64 0, i64 0), i32 5) #18, !dbg !1728
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %24) #18, !dbg !1728
  unreachable, !dbg !1728

25:                                               ; preds = %6
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.17.18, i64 0, i64 0), i32 5) #18, !dbg !1729
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %26) #18, !dbg !1729
  unreachable, !dbg !1729

27:                                               ; preds = %6
  br i1 %3, label %28, label %33, !dbg !1730

28:                                               ; preds = %27
  %29 = icmp eq i64 %9, 0, !dbg !1731
  %30 = icmp eq i64 %7, 0, !dbg !1731
  %31 = select i1 %30, i64 8, i64 %7, !dbg !1731
  %32 = select i1 %29, i64 %31, i64 %9, !dbg !1731
  store i64 %32, i64* @max_column_width, align 8, !dbg !1733, !tbaa !1383
  br label %40, !dbg !1734

33:                                               ; preds = %27
  %34 = icmp ne i64 %2, 1, !dbg !1735
  %35 = or i64 %9, %7, !dbg !1737
  %36 = icmp ne i64 %35, 0, !dbg !1737
  %37 = or i1 %34, %36, !dbg !1737
  br i1 %37, label %40, label %38, !dbg !1737

38:                                               ; preds = %33
  %39 = load i64, i64* %1, align 8, !dbg !1738, !tbaa !1383
  br label %40, !dbg !1739

40:                                               ; preds = %33, %38, %28
  %41 = phi i64 [ %39, %38 ], [ %32, %28 ], [ 0, %33 ]
  store i64 %41, i64* @tab_size, align 8, !dbg !1740, !tbaa !1383
  ret void, !dbg !1741
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i64 @get_next_tab_column(i64 %0, i64* nocapture %1, i8* nocapture %2) local_unnamed_addr #10 !dbg !1742 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1746, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.value(metadata i64* %1, metadata !1747, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.value(metadata i8* %2, metadata !1748, metadata !DIExpression()), !dbg !1756
  store i8 0, i8* %2, align 1, !dbg !1757, !tbaa !1322
  %4 = load i64, i64* @tab_size, align 8, !dbg !1758, !tbaa !1383
  %5 = icmp eq i64 %4, 0, !dbg !1758
  br i1 %5, label %6, label %12, !dbg !1760

6:                                                ; preds = %3
  %7 = load i64, i64* %1, align 8, !dbg !1761, !tbaa !1383
  %8 = load i64, i64* @first_free_tab, align 8, !dbg !1762, !tbaa !1383
  %9 = icmp ult i64 %7, %8, !dbg !1763
  br i1 %9, label %10, label %24, !dbg !1764

10:                                               ; preds = %6
  %11 = load i64*, i64** @tab_list, align 8, !dbg !1765, !tbaa !1254
  br label %16, !dbg !1764

12:                                               ; preds = %3
  %13 = urem i64 %0, %4, !dbg !1766
  %14 = add i64 %4, %0, !dbg !1767
  %15 = sub i64 %14, %13, !dbg !1768
  br label %44, !dbg !1769

16:                                               ; preds = %10, %21
  %17 = phi i64 [ %7, %10 ], [ %22, %21 ]
  %18 = getelementptr inbounds i64, i64* %11, i64 %17, !dbg !1770
  %19 = load i64, i64* %18, align 8, !dbg !1770, !tbaa !1383
  call void @llvm.dbg.value(metadata i64 %19, metadata !1749, metadata !DIExpression()), !dbg !1765
  %20 = icmp ugt i64 %19, %0, !dbg !1771
  br i1 %20, label %44, label %21

21:                                               ; preds = %16
  %22 = add nuw i64 %17, 1, !dbg !1773
  store i64 %22, i64* %1, align 8, !dbg !1773, !tbaa !1383
  %23 = icmp ult i64 %22, %8, !dbg !1763
  br i1 %23, label %16, label %24, !dbg !1764, !llvm.loop !1774

24:                                               ; preds = %21, %6
  %25 = load i64, i64* @extend_size, align 8, !dbg !1776, !tbaa !1383
  %26 = icmp eq i64 %25, 0, !dbg !1776
  br i1 %26, label %31, label %27, !dbg !1778

27:                                               ; preds = %24
  %28 = urem i64 %0, %25, !dbg !1779
  %29 = add i64 %25, %0, !dbg !1780
  %30 = sub i64 %29, %28, !dbg !1781
  br label %44, !dbg !1782

31:                                               ; preds = %24
  %32 = load i64, i64* @increment_size, align 8, !dbg !1783, !tbaa !1383
  %33 = icmp eq i64 %32, 0, !dbg !1783
  br i1 %33, label %43, label %34, !dbg !1784

34:                                               ; preds = %31
  %35 = load i64*, i64** @tab_list, align 8, !dbg !1785, !tbaa !1254
  %36 = add i64 %8, -1, !dbg !1786
  %37 = getelementptr inbounds i64, i64* %35, i64 %36, !dbg !1785
  %38 = load i64, i64* %37, align 8, !dbg !1785, !tbaa !1383
  call void @llvm.dbg.value(metadata i64 %38, metadata !1753, metadata !DIExpression()), !dbg !1787
  %39 = sub i64 %0, %38, !dbg !1788
  %40 = urem i64 %39, %32, !dbg !1789
  %41 = add i64 %32, %0, !dbg !1790
  %42 = sub i64 %41, %40, !dbg !1791
  br label %44

43:                                               ; preds = %31
  store i8 1, i8* %2, align 1, !dbg !1792, !tbaa !1322
  br label %44, !dbg !1793

44:                                               ; preds = %16, %43, %34, %27, %12
  %45 = phi i64 [ %15, %12 ], [ %30, %27 ], [ %42, %34 ], [ 0, %43 ], [ %19, %16 ], !dbg !1756
  ret i64 %45, !dbg !1794
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_file_list(i8** %0) local_unnamed_addr #11 !dbg !1795 {
  call void @llvm.dbg.value(metadata i8** %0, metadata !1797, metadata !DIExpression()), !dbg !1798
  store i1 false, i1* @have_read_stdin, align 1, !dbg !1799
  %2 = icmp eq i8** %0, null, !dbg !1800
  %3 = select i1 %2, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @stdin_argv, i64 0, i64 0), i8** %0
  store i8** %3, i8*** @file_list, align 8, !dbg !1802, !tbaa !1254
  ret void, !dbg !1803
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct._IO_FILE* @next_file(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !280 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !287, metadata !DIExpression()), !dbg !1804
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !1805
  br i1 %2, label %30, label %3, !dbg !1807

3:                                                ; preds = %1
  %4 = load i8*, i8** @next_file.prev_file, align 8, !dbg !1808, !tbaa !1254
  %5 = icmp eq i8* %4, null, !dbg !1808
  br i1 %5, label %6, label %7, !dbg !1812

6:                                                ; preds = %3
  tail call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.26, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7.27, i64 0, i64 0), i32 341, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.next_file, i64 0, i64 0)) #22, !dbg !1808
  unreachable, !dbg !1808

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1813, metadata !DIExpression()), !dbg !1818
  %8 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !1821
  %9 = load i32, i32* %8, align 8, !dbg !1821, !tbaa !1822
  %10 = and i32 %9, 32, !dbg !1821
  %11 = icmp eq i32 %10, 0, !dbg !1823
  br i1 %11, label %17, label %12, !dbg !1824

12:                                               ; preds = %7
  %13 = tail call i32* @__errno_location() #24, !dbg !1825
  %14 = load i32, i32* %13, align 4, !dbg !1825, !tbaa !1351
  %15 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %4) #18, !dbg !1827
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8.28, i64 0, i64 0), i8* %15) #18, !dbg !1828
  store i32 1, i32* @exit_status, align 4, !dbg !1829, !tbaa !1351
  %16 = load i8*, i8** @next_file.prev_file, align 8, !dbg !1830, !tbaa !1254
  br label %17, !dbg !1832

17:                                               ; preds = %7, %12
  %18 = phi i8* [ %4, %7 ], [ %16, %12 ], !dbg !1830
  %19 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %18, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9.23, i64 0, i64 0)) #21, !dbg !1830
  %20 = icmp eq i32 %19, 0, !dbg !1830
  br i1 %20, label %21, label %22, !dbg !1833

21:                                               ; preds = %17
  tail call void @clearerr_unlocked(%struct._IO_FILE* nonnull %0) #18, !dbg !1834
  br label %30, !dbg !1834

22:                                               ; preds = %17
  %23 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) #18, !dbg !1835
  %24 = icmp eq i32 %23, 0, !dbg !1837
  br i1 %24, label %30, label %25, !dbg !1838

25:                                               ; preds = %22
  %26 = tail call i32* @__errno_location() #24, !dbg !1839
  %27 = load i32, i32* %26, align 4, !dbg !1839, !tbaa !1351
  %28 = load i8*, i8** @next_file.prev_file, align 8, !dbg !1841, !tbaa !1254
  %29 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %28) #18, !dbg !1841
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8.28, i64 0, i64 0), i8* %29) #18, !dbg !1842
  store i32 1, i32* @exit_status, align 4, !dbg !1843, !tbaa !1351
  br label %30, !dbg !1844

30:                                               ; preds = %22, %1, %21, %25
  %31 = load i8**, i8*** @file_list, align 8, !dbg !1845, !tbaa !1254
  %32 = getelementptr inbounds i8*, i8** %31, i64 1, !dbg !1845
  store i8** %32, i8*** @file_list, align 8, !dbg !1845, !tbaa !1254
  %33 = load i8*, i8** %31, align 8, !dbg !1846, !tbaa !1254
  call void @llvm.dbg.value(metadata i8* %33, metadata !288, metadata !DIExpression()), !dbg !1804
  %34 = icmp eq i8* %33, null, !dbg !1847
  br i1 %34, label %55, label %35, !dbg !1848

35:                                               ; preds = %30, %47
  %36 = phi i8* [ %53, %47 ], [ %33, %30 ]
  %37 = tail call i32 @strcmp(i8* nonnull %36, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9.23, i64 0, i64 0)) #21, !dbg !1849
  %38 = icmp eq i32 %37, 0, !dbg !1849
  br i1 %38, label %39, label %41, !dbg !1852

39:                                               ; preds = %35
  store i1 true, i1* @have_read_stdin, align 1, !dbg !1853
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1855, !tbaa !1254
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %40, metadata !287, metadata !DIExpression()), !dbg !1804
  br label %43, !dbg !1856

41:                                               ; preds = %35
  %42 = tail call %struct._IO_FILE* @fopen(i8* nonnull %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.29, i64 0, i64 0)), !dbg !1857
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %42, metadata !287, metadata !DIExpression()), !dbg !1804
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi %struct._IO_FILE* [ %40, %39 ], [ %42, %41 ], !dbg !1858
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %44, metadata !287, metadata !DIExpression()), !dbg !1804
  %45 = icmp eq %struct._IO_FILE* %44, null, !dbg !1859
  br i1 %45, label %47, label %46, !dbg !1861

46:                                               ; preds = %43
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %44, metadata !287, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %44, metadata !287, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %44, metadata !287, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %44, metadata !287, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %44, metadata !287, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %44, metadata !287, metadata !DIExpression()), !dbg !1804
  store i8* %36, i8** @next_file.prev_file, align 8, !dbg !1862, !tbaa !1254
  tail call void @fadvise(%struct._IO_FILE* nonnull %44, i32 2) #18, !dbg !1864
  br label %55, !dbg !1865

47:                                               ; preds = %43
  %48 = tail call i32* @__errno_location() #24, !dbg !1866
  %49 = load i32, i32* %48, align 4, !dbg !1866, !tbaa !1351
  %50 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %36) #18, !dbg !1867
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8.28, i64 0, i64 0), i8* %50) #18, !dbg !1868
  store i32 1, i32* @exit_status, align 4, !dbg !1869, !tbaa !1351
  %51 = load i8**, i8*** @file_list, align 8, !dbg !1845, !tbaa !1254
  %52 = getelementptr inbounds i8*, i8** %51, i64 1, !dbg !1845
  store i8** %52, i8*** @file_list, align 8, !dbg !1845, !tbaa !1254
  %53 = load i8*, i8** %51, align 8, !dbg !1846, !tbaa !1254
  call void @llvm.dbg.value(metadata i8* %53, metadata !288, metadata !DIExpression()), !dbg !1804
  %54 = icmp eq i8* %53, null, !dbg !1847
  br i1 %54, label %55, label %35, !dbg !1848, !llvm.loop !1870

55:                                               ; preds = %47, %30, %46
  %56 = phi %struct._IO_FILE* [ %44, %46 ], [ null, %30 ], [ null, %47 ], !dbg !1804
  ret %struct._IO_FILE* %56, !dbg !1872
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !226 void @clearerr_unlocked(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @cleanup_file_list_stdin() local_unnamed_addr #8 !dbg !1873 {
  %1 = load i1, i1* @have_read_stdin, align 1, !dbg !1874
  br i1 %1, label %2, label %9, !dbg !1876

2:                                                ; preds = %0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1877, !tbaa !1254
  %4 = tail call i32 @rpl_fclose(%struct._IO_FILE* %3) #18, !dbg !1878
  %5 = icmp eq i32 %4, 0, !dbg !1879
  br i1 %5, label %9, label %6, !dbg !1880

6:                                                ; preds = %2
  %7 = tail call i32* @__errno_location() #24, !dbg !1881
  %8 = load i32, i32* %7, align 4, !dbg !1881, !tbaa !1351
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9.23, i64 0, i64 0)) #18, !dbg !1881
  unreachable, !dbg !1881

9:                                                ; preds = %2, %0
  ret void, !dbg !1882
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_tab_list_info() local_unnamed_addr #8 !dbg !1883 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.11.34, i64 0, i64 0), i32 5) #18, !dbg !1884
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1884, !tbaa !1254
  %3 = tail call i32 @fputs_unlocked(i8* %1, %struct._IO_FILE* %2), !dbg !1884
  %4 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([365 x i8], [365 x i8]* @.str.12.35, i64 0, i64 0), i32 5) #18, !dbg !1885
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1885, !tbaa !1254
  %6 = tail call i32 @fputs_unlocked(i8* %4, %struct._IO_FILE* %5), !dbg !1885
  ret void, !dbg !1886
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #11 !dbg !1887 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1889, metadata !DIExpression()), !dbg !1890
  store i8* %0, i8** @file_name, align 8, !dbg !1891, !tbaa !1254
  ret void, !dbg !1892
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #11 !dbg !1893 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1897, metadata !DIExpression()), !dbg !1898
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1899, !tbaa !1322
  ret void, !dbg !1900
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1901 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1906, !tbaa !1254
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #18, !dbg !1907
  %3 = icmp eq i32 %2, 0, !dbg !1908
  br i1 %3, label %22, label %4, !dbg !1909

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1910, !tbaa !1322, !range !1414
  %6 = icmp eq i8 %5, 0, !dbg !1910
  br i1 %6, label %11, label %7, !dbg !1911

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #24, !dbg !1912
  %9 = load i32, i32* %8, align 4, !dbg !1912, !tbaa !1351
  %10 = icmp eq i32 %9, 32, !dbg !1913
  br i1 %10, label %22, label %11, !dbg !1914

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i64 0, i64 0), i32 5) #18, !dbg !1915
  call void @llvm.dbg.value(metadata i8* %12, metadata !1903, metadata !DIExpression()), !dbg !1916
  %13 = load i8*, i8** @file_name, align 8, !dbg !1917, !tbaa !1254
  %14 = icmp eq i8* %13, null, !dbg !1917
  %15 = tail call i32* @__errno_location() #24, !dbg !1919
  %16 = load i32, i32* %15, align 4, !dbg !1919, !tbaa !1351
  br i1 %14, label %19, label %17, !dbg !1920

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #18, !dbg !1921
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.42, i64 0, i64 0), i8* %18, i8* %12) #18, !dbg !1922
  br label %20, !dbg !1922

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.43, i64 0, i64 0), i8* %12) #18, !dbg !1923
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1924, !tbaa !1351
  tail call void @_exit(i32 %21) #22, !dbg !1925
  unreachable, !dbg !1925

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1926, !tbaa !1254
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #18, !dbg !1928
  %25 = icmp eq i32 %24, 0, !dbg !1929
  br i1 %25, label %28, label %26, !dbg !1930

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1931, !tbaa !1351
  tail call void @_exit(i32 %27) #22, !dbg !1932
  unreachable, !dbg !1932

28:                                               ; preds = %22
  ret void, !dbg !1933
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32 %0, i64 %1, i64 %2, i32 %3) local_unnamed_addr #8 !dbg !1934 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1940, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i64 %1, metadata !1941, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i64 %2, metadata !1942, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i32 %3, metadata !1943, metadata !DIExpression()), !dbg !1946
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #18, !dbg !1947
  call void @llvm.dbg.value(metadata i32 %5, metadata !1944, metadata !DIExpression()), !dbg !1948
  ret void, !dbg !1949
}

; Function Attrs: nounwind
declare !dbg !525 i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE* %0, i32 %1) local_unnamed_addr #8 !dbg !1950 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1956, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i32 %1, metadata !1957, metadata !DIExpression()), !dbg !1958
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1959
  br i1 %3, label %7, label %4, !dbg !1961

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !1962
  call void @llvm.dbg.value(metadata i32 %5, metadata !1940, metadata !DIExpression()) #18, !dbg !1963
  call void @llvm.dbg.value(metadata i64 0, metadata !1941, metadata !DIExpression()) #18, !dbg !1963
  call void @llvm.dbg.value(metadata i64 0, metadata !1942, metadata !DIExpression()) #18, !dbg !1963
  call void @llvm.dbg.value(metadata i32 %1, metadata !1943, metadata !DIExpression()) #18, !dbg !1963
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #18, !dbg !1965
  call void @llvm.dbg.value(metadata i32 %6, metadata !1944, metadata !DIExpression()) #18, !dbg !1966
  br label %7, !dbg !1967

7:                                                ; preds = %2, %4
  ret void, !dbg !1968
}

; Function Attrs: nofree nounwind
declare !dbg !529 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1969 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1971, metadata !DIExpression()), !dbg !1974
  %2 = icmp eq i8* %0, null, !dbg !1975
  br i1 %2, label %3, label %6, !dbg !1977

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1978, !tbaa !1254
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.52, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #25, !dbg !1980
  tail call void @abort() #22, !dbg !1981
  unreachable, !dbg !1981

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #21, !dbg !1982
  call void @llvm.dbg.value(metadata i8* %7, metadata !1972, metadata !DIExpression()), !dbg !1974
  %8 = icmp eq i8* %7, null, !dbg !1983
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1984
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1984
  call void @llvm.dbg.value(metadata i8* %10, metadata !1973, metadata !DIExpression()), !dbg !1974
  %11 = ptrtoint i8* %10 to i64, !dbg !1985
  %12 = ptrtoint i8* %0 to i64, !dbg !1985
  %13 = sub i64 %11, %12, !dbg !1985
  %14 = icmp sgt i64 %13, 6, !dbg !1987
  br i1 %14, label %15, label %24, !dbg !1988

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1989
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.53, i64 0, i64 0), i64 7) #21, !dbg !1990
  %18 = icmp eq i32 %17, 0, !dbg !1991
  br i1 %18, label %19, label %24, !dbg !1992

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1971, metadata !DIExpression()), !dbg !1974
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.54, i64 0, i64 0), i64 3) #21, !dbg !1993
  %21 = icmp eq i32 %20, 0, !dbg !1996
  br i1 %21, label %22, label %24, !dbg !1997

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1998
  call void @llvm.dbg.value(metadata i8* %23, metadata !1971, metadata !DIExpression()), !dbg !1974
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2000, !tbaa !1254
  br label %24, !dbg !2001

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1971, metadata !DIExpression()), !dbg !1974
  store i8* %25, i8** @program_name, align 8, !dbg !2002, !tbaa !1254
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2003, !tbaa !1254
  ret void, !dbg !2004
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #13

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !2005 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2010, metadata !DIExpression()), !dbg !2013
  %2 = tail call i32* @__errno_location() #24, !dbg !2014
  %3 = load i32, i32* %2, align 4, !dbg !2014, !tbaa !1351
  call void @llvm.dbg.value(metadata i32 %3, metadata !2011, metadata !DIExpression()), !dbg !2013
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2015
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2015
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2015
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #18, !dbg !2016
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2016
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2012, metadata !DIExpression()), !dbg !2013
  store i32 %3, i32* %2, align 4, !dbg !2017, !tbaa !1351
  ret %struct.quoting_options* %8, !dbg !2018
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #14 !dbg !2019 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2023, metadata !DIExpression()), !dbg !2024
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2025
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2025
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2026
  %5 = load i32, i32* %4, align 8, !dbg !2026, !tbaa !2027
  ret i32 %5, !dbg !2029
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #11 !dbg !2030 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2034, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i32 %1, metadata !2035, metadata !DIExpression()), !dbg !2036
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2037
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2037
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2038
  store i32 %1, i32* %5, align 8, !dbg !2039, !tbaa !2027
  ret void, !dbg !2040
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #10 !dbg !2041 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2045, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i8 %1, metadata !2046, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i32 %2, metadata !2047, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i8 %1, metadata !2048, metadata !DIExpression()), !dbg !2053
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2054
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2054
  %6 = lshr i8 %1, 5, !dbg !2055
  %7 = zext i8 %6 to i64, !dbg !2055
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2056
  call void @llvm.dbg.value(metadata i32* %8, metadata !2049, metadata !DIExpression()), !dbg !2053
  %9 = and i8 %1, 31, !dbg !2057
  %10 = zext i8 %9 to i32, !dbg !2057
  call void @llvm.dbg.value(metadata i32 %10, metadata !2051, metadata !DIExpression()), !dbg !2053
  %11 = load i32, i32* %8, align 4, !dbg !2058, !tbaa !1351
  %12 = lshr i32 %11, %10, !dbg !2059
  %13 = and i32 %12, 1, !dbg !2060
  call void @llvm.dbg.value(metadata i32 %13, metadata !2052, metadata !DIExpression()), !dbg !2053
  %14 = and i32 %2, 1, !dbg !2061
  %15 = xor i32 %13, %14, !dbg !2062
  %16 = shl i32 %15, %10, !dbg !2063
  %17 = xor i32 %16, %11, !dbg !2064
  store i32 %17, i32* %8, align 4, !dbg !2064, !tbaa !1351
  ret i32 %13, !dbg !2065
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #10 !dbg !2066 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2070, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i32 %1, metadata !2071, metadata !DIExpression()), !dbg !2073
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2074
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2076
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2070, metadata !DIExpression()), !dbg !2073
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2077
  %6 = load i32, i32* %5, align 4, !dbg !2077, !tbaa !2078
  call void @llvm.dbg.value(metadata i32 %6, metadata !2072, metadata !DIExpression()), !dbg !2073
  store i32 %1, i32* %5, align 4, !dbg !2079, !tbaa !2078
  ret i32 %6, !dbg !2080
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2081 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2085, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i8* %1, metadata !2086, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i8* %2, metadata !2087, metadata !DIExpression()), !dbg !2088
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2089
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2091
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2085, metadata !DIExpression()), !dbg !2088
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2092
  store i32 10, i32* %6, align 8, !dbg !2093, !tbaa !2027
  %7 = icmp ne i8* %1, null, !dbg !2094
  %8 = icmp ne i8* %2, null, !dbg !2096
  %9 = and i1 %7, %8, !dbg !2097
  br i1 %9, label %11, label %10, !dbg !2097

10:                                               ; preds = %3
  tail call void @abort() #22, !dbg !2098
  unreachable, !dbg !2098

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2099
  store i8* %1, i8** %12, align 8, !dbg !2100, !tbaa !2101
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2102
  store i8* %2, i8** %13, align 8, !dbg !2103, !tbaa !2104
  ret void, !dbg !2105
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !2106 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2110, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %1, metadata !2111, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %2, metadata !2112, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %3, metadata !2113, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2114, metadata !DIExpression()), !dbg !2118
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2119
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2119
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2115, metadata !DIExpression()), !dbg !2118
  %8 = tail call i32* @__errno_location() #24, !dbg !2120
  %9 = load i32, i32* %8, align 4, !dbg !2120, !tbaa !1351
  call void @llvm.dbg.value(metadata i32 %9, metadata !2116, metadata !DIExpression()), !dbg !2118
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2121
  %11 = load i32, i32* %10, align 8, !dbg !2121, !tbaa !2027
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2122
  %13 = load i32, i32* %12, align 4, !dbg !2122, !tbaa !2078
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2123
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2124
  %16 = load i8*, i8** %15, align 8, !dbg !2124, !tbaa !2101
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2125
  %18 = load i8*, i8** %17, align 8, !dbg !2125, !tbaa !2104
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2126
  call void @llvm.dbg.value(metadata i64 %19, metadata !2117, metadata !DIExpression()), !dbg !2118
  store i32 %9, i32* %8, align 4, !dbg !2127, !tbaa !1351
  ret i64 %19, !dbg !2128
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !2129 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2135, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %1, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %2, metadata !2137, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %3, metadata !2138, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i32 %4, metadata !2139, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i32 %5, metadata !2140, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i32* %6, metadata !2141, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %7, metadata !2142, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %8, metadata !2143, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 0, metadata !2145, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 0, metadata !2146, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* null, metadata !2147, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 0, metadata !2148, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 0, metadata !2149, metadata !DIExpression()), !dbg !2193
  %13 = tail call i64 @__ctype_get_mb_cur_max() #18, !dbg !2194
  %14 = icmp eq i64 %13, 1, !dbg !2195
  call void @llvm.dbg.value(metadata i1 %14, metadata !2150, metadata !DIExpression()), !dbg !2193
  %15 = lshr i32 %5, 1, !dbg !2196
  %16 = trunc i32 %15 to i8, !dbg !2196
  %17 = and i8 %16, 1, !dbg !2196
  call void @llvm.dbg.value(metadata i8 %17, metadata !2151, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 0, metadata !2152, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 0, metadata !2153, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 1, metadata !2154, metadata !DIExpression()), !dbg !2193
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !2197
  %19 = and i32 %5, 4, !dbg !2199
  %20 = icmp eq i32 %19, 0, !dbg !2199
  %21 = and i32 %5, 1, !dbg !2202
  %22 = icmp eq i32 %21, 0, !dbg !2202
  %23 = bitcast i64* %10 to i8*, !dbg !2205
  %24 = bitcast i32* %12 to i8*, !dbg !2206
  %25 = icmp eq i32* %6, null, !dbg !2207
  br label %26, !dbg !2209

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !2210
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !2211
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !2212
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !2213
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !2193
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !2214
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !2215
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !2216
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %38, metadata !2154, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %37, metadata !2153, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %36, metadata !2152, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %35, metadata !2151, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %34, metadata !2138, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %33, metadata !2149, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %32, metadata !2148, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %31, metadata !2147, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %30, metadata !2146, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 0, metadata !2145, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %29, metadata !2143, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %28, metadata !2142, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i32 %27, metadata !2139, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.label(metadata !2187), !dbg !2217
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
  ], !dbg !2218

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !2139, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 1, metadata !2151, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %35, metadata !2151, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i32 5, metadata !2139, metadata !DIExpression()), !dbg !2193
  br label %92, !dbg !2219

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2151, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i32 5, metadata !2139, metadata !DIExpression()), !dbg !2193
  %42 = and i8 %35, 1, !dbg !2221
  %43 = icmp eq i8 %42, 0, !dbg !2221
  br i1 %43, label %44, label %92, !dbg !2219

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !2223
  br i1 %45, label %92, label %46, !dbg !2226

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !2223, !tbaa !1342
  br label %92, !dbg !2223

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.65, i64 0, i64 0), i32 %27), !dbg !2227
  call void @llvm.dbg.value(metadata i8* %48, metadata !2142, metadata !DIExpression()), !dbg !2193
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), i32 %27), !dbg !2231
  call void @llvm.dbg.value(metadata i8* %49, metadata !2143, metadata !DIExpression()), !dbg !2193
  br label %50, !dbg !2232

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !2143, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %51, metadata !2142, metadata !DIExpression()), !dbg !2193
  %53 = and i8 %35, 1, !dbg !2233
  %54 = icmp eq i8 %53, 0, !dbg !2233
  br i1 %54, label %55, label %70, !dbg !2235

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !2147, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 0, metadata !2145, metadata !DIExpression()), !dbg !2193
  %56 = load i8, i8* %51, align 1, !dbg !2236, !tbaa !1342
  %57 = icmp eq i8 %56, 0, !dbg !2239
  br i1 %57, label %70, label %58, !dbg !2239

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !2147, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %61, metadata !2145, metadata !DIExpression()), !dbg !2193
  %62 = icmp ult i64 %61, %39, !dbg !2240
  br i1 %62, label %63, label %65, !dbg !2243

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !2240
  store i8 %59, i8* %64, align 1, !dbg !2240, !tbaa !1342
  br label %65, !dbg !2240

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !2243
  call void @llvm.dbg.value(metadata i64 %66, metadata !2145, metadata !DIExpression()), !dbg !2193
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2244
  call void @llvm.dbg.value(metadata i8* %67, metadata !2147, metadata !DIExpression()), !dbg !2193
  %68 = load i8, i8* %67, align 1, !dbg !2236, !tbaa !1342
  %69 = icmp eq i8 %68, 0, !dbg !2239
  br i1 %69, label %70, label %58, !dbg !2239, !llvm.loop !2245

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !2247
  call void @llvm.dbg.value(metadata i64 %71, metadata !2145, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 1, metadata !2149, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %52, metadata !2147, metadata !DIExpression()), !dbg !2193
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #21, !dbg !2248
  call void @llvm.dbg.value(metadata i64 %72, metadata !2148, metadata !DIExpression()), !dbg !2193
  br label %92, !dbg !2249

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !2149, metadata !DIExpression()), !dbg !2193
  br label %74, !dbg !2250

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !2193
  call void @llvm.dbg.value(metadata i8 %75, metadata !2149, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 1, metadata !2151, metadata !DIExpression()), !dbg !2193
  br label %76, !dbg !2251

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !2213
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !2193
  call void @llvm.dbg.value(metadata i8 %78, metadata !2151, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %77, metadata !2149, metadata !DIExpression()), !dbg !2193
  %79 = and i8 %78, 1, !dbg !2252
  %80 = icmp eq i8 %79, 0, !dbg !2252
  %81 = select i1 %80, i8 1, i8 %77, !dbg !2254
  br label %82, !dbg !2254

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !2193
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !2196
  call void @llvm.dbg.value(metadata i8 %84, metadata !2151, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %83, metadata !2149, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i32 2, metadata !2139, metadata !DIExpression()), !dbg !2193
  %85 = and i8 %84, 1, !dbg !2255
  %86 = icmp eq i8 %85, 0, !dbg !2255
  br i1 %86, label %87, label %92, !dbg !2257

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !2258
  br i1 %88, label %92, label %89, !dbg !2261

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !2258, !tbaa !1342
  br label %92, !dbg !2258

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !2151, metadata !DIExpression()), !dbg !2193
  br label %92, !dbg !2262

91:                                               ; preds = %26
  call void @abort() #22, !dbg !2263
  unreachable, !dbg !2263

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !2247
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %40 ], !dbg !2193
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !2193
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !2193
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !2193
  call void @llvm.dbg.value(metadata i8 %100, metadata !2151, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %99, metadata !2149, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %98, metadata !2148, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %97, metadata !2147, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %96, metadata !2145, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %95, metadata !2143, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %94, metadata !2142, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i32 %93, metadata !2139, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 0, metadata !2144, metadata !DIExpression()), !dbg !2193
  %101 = and i8 %99, 1, !dbg !2264
  %102 = icmp ne i8 %101, 0, !dbg !2264
  %103 = icmp ne i32 %93, 2, !dbg !2264
  %104 = and i1 %103, %102, !dbg !2264
  %105 = icmp ne i64 %98, 0, !dbg !2264
  %106 = and i1 %105, %104, !dbg !2264
  %107 = icmp ugt i64 %98, 1, !dbg !2264
  %108 = and i8 %100, 1, !dbg !2266
  %109 = icmp eq i8 %108, 0, !dbg !2266
  %110 = icmp eq i32 %93, 2, !dbg !2269
  %111 = or i1 %103, %109, !dbg !2271
  %112 = icmp ne i8 %108, 0, !dbg !2273
  %113 = and i1 %110, %112, !dbg !2273
  %114 = xor i1 %102, true, !dbg !2274
  %115 = xor i1 %104, true, !dbg !2207
  %116 = and i1 %109, %115, !dbg !2207
  %117 = or i1 %25, %116, !dbg !2207
  %118 = and i8 %99, %100, !dbg !2275
  %119 = and i8 %118, 1, !dbg !2275
  %120 = icmp ne i8 %119, 0, !dbg !2275
  %121 = and i1 %120, %105, !dbg !2275
  br label %122, !dbg !2277

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !2278
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !2247
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !2210
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !2214
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !2215
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !2216
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %129, metadata !2154, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %128, metadata !2153, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %127, metadata !2152, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %126, metadata !2138, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %125, metadata !2146, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %124, metadata !2145, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %123, metadata !2144, metadata !DIExpression()), !dbg !2193
  %131 = icmp eq i64 %126, -1, !dbg !2279
  br i1 %131, label %132, label %136, !dbg !2280

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2281
  %134 = load i8, i8* %133, align 1, !dbg !2281, !tbaa !1342
  %135 = icmp eq i8 %134, 0, !dbg !2282
  br i1 %135, label %581, label %138, !dbg !2283

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !2284
  br i1 %137, label %581, label %138, !dbg !2283

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !2160, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8 0, metadata !2161, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8 0, metadata !2162, metadata !DIExpression()), !dbg !2285
  br i1 %106, label %139, label %154, !dbg !2286

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !2287
  %141 = and i1 %107, %131, !dbg !2288
  br i1 %141, label %142, label %144, !dbg !2288

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #21, !dbg !2289
  call void @llvm.dbg.value(metadata i64 %143, metadata !2138, metadata !DIExpression()), !dbg !2193
  br label %144, !dbg !2290

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !2138, metadata !DIExpression()), !dbg !2193
  %146 = icmp ugt i64 %140, %145, !dbg !2291
  br i1 %146, label %154, label %147, !dbg !2292

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2293
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !2294
  %150 = icmp ne i32 %149, 0, !dbg !2295
  %151 = or i1 %150, %109, !dbg !2296
  %152 = xor i1 %150, true, !dbg !2296
  %153 = zext i1 %152 to i8, !dbg !2296
  br i1 %151, label %154, label %639, !dbg !2296

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !2285
  call void @llvm.dbg.value(metadata i8 %156, metadata !2160, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i64 %155, metadata !2138, metadata !DIExpression()), !dbg !2193
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2297
  %158 = load i8, i8* %157, align 1, !dbg !2297, !tbaa !1342
  call void @llvm.dbg.value(metadata i8 %158, metadata !2155, metadata !DIExpression()), !dbg !2285
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
  ], !dbg !2298

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !2299

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !2300

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !2161, metadata !DIExpression()), !dbg !2285
  %162 = and i8 %127, 1, !dbg !2303
  %163 = icmp eq i8 %162, 0, !dbg !2303
  %164 = and i1 %110, %163, !dbg !2303
  br i1 %164, label %165, label %181, !dbg !2303

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !2305
  br i1 %166, label %167, label %169, !dbg !2309

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2305
  store i8 39, i8* %168, align 1, !dbg !2305, !tbaa !1342
  br label %169, !dbg !2305

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !2309
  call void @llvm.dbg.value(metadata i64 %170, metadata !2145, metadata !DIExpression()), !dbg !2193
  %171 = icmp ult i64 %170, %130, !dbg !2310
  br i1 %171, label %172, label %174, !dbg !2313

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2310
  store i8 36, i8* %173, align 1, !dbg !2310, !tbaa !1342
  br label %174, !dbg !2310

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !2313
  call void @llvm.dbg.value(metadata i64 %175, metadata !2145, metadata !DIExpression()), !dbg !2193
  %176 = icmp ult i64 %175, %130, !dbg !2314
  br i1 %176, label %177, label %179, !dbg !2317

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2314
  store i8 39, i8* %178, align 1, !dbg !2314, !tbaa !1342
  br label %179, !dbg !2314

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !2317
  call void @llvm.dbg.value(metadata i64 %180, metadata !2145, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 1, metadata !2152, metadata !DIExpression()), !dbg !2193
  br label %181, !dbg !2318

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !2193
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !2193
  call void @llvm.dbg.value(metadata i8 %183, metadata !2152, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %182, metadata !2145, metadata !DIExpression()), !dbg !2193
  %184 = icmp ult i64 %182, %130, !dbg !2319
  br i1 %184, label %185, label %187, !dbg !2322

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2319
  store i8 92, i8* %186, align 1, !dbg !2319, !tbaa !1342
  br label %187, !dbg !2319

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2322
  call void @llvm.dbg.value(metadata i64 %188, metadata !2145, metadata !DIExpression()), !dbg !2193
  br i1 %103, label %189, label %463, !dbg !2323

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !2325
  %191 = icmp ult i64 %190, %155, !dbg !2326
  br i1 %191, label %192, label %463, !dbg !2327

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !2328
  %194 = load i8, i8* %193, align 1, !dbg !2328, !tbaa !1342
  %195 = add i8 %194, -48, !dbg !2329
  %196 = icmp ult i8 %195, 10, !dbg !2329
  br i1 %196, label %197, label %463, !dbg !2329

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !2330
  br i1 %198, label %199, label %201, !dbg !2334

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2330
  store i8 48, i8* %200, align 1, !dbg !2330, !tbaa !1342
  br label %201, !dbg !2330

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2334
  call void @llvm.dbg.value(metadata i64 %202, metadata !2145, metadata !DIExpression()), !dbg !2193
  %203 = icmp ult i64 %202, %130, !dbg !2335
  br i1 %203, label %204, label %206, !dbg !2338

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2335
  store i8 48, i8* %205, align 1, !dbg !2335, !tbaa !1342
  br label %206, !dbg !2335

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2338
  call void @llvm.dbg.value(metadata i64 %207, metadata !2145, metadata !DIExpression()), !dbg !2193
  br label %463, !dbg !2339

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !2340

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2341

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !2342

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !2343

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !2344
  %214 = icmp ult i64 %213, %155, !dbg !2345
  br i1 %214, label %215, label %463, !dbg !2346

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !2347
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2348
  %218 = load i8, i8* %217, align 1, !dbg !2348, !tbaa !1342
  %219 = icmp eq i8 %218, 63, !dbg !2349
  br i1 %219, label %220, label %463, !dbg !2350

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2351
  %222 = load i8, i8* %221, align 1, !dbg !2351, !tbaa !1342
  %223 = sext i8 %222 to i32, !dbg !2351
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
  ], !dbg !2352

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !2353

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !2155, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i64 %213, metadata !2144, metadata !DIExpression()), !dbg !2193
  %226 = icmp ult i64 %124, %130, !dbg !2355
  br i1 %226, label %227, label %229, !dbg !2358

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2355
  store i8 63, i8* %228, align 1, !dbg !2355, !tbaa !1342
  br label %229, !dbg !2355

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2358
  call void @llvm.dbg.value(metadata i64 %230, metadata !2145, metadata !DIExpression()), !dbg !2193
  %231 = icmp ult i64 %230, %130, !dbg !2359
  br i1 %231, label %232, label %234, !dbg !2362

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2359
  store i8 34, i8* %233, align 1, !dbg !2359, !tbaa !1342
  br label %234, !dbg !2359

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2362
  call void @llvm.dbg.value(metadata i64 %235, metadata !2145, metadata !DIExpression()), !dbg !2193
  %236 = icmp ult i64 %235, %130, !dbg !2363
  br i1 %236, label %237, label %239, !dbg !2366

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2363
  store i8 34, i8* %238, align 1, !dbg !2363, !tbaa !1342
  br label %239, !dbg !2363

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2366
  call void @llvm.dbg.value(metadata i64 %240, metadata !2145, metadata !DIExpression()), !dbg !2193
  %241 = icmp ult i64 %240, %130, !dbg !2367
  br i1 %241, label %242, label %244, !dbg !2370

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2367
  store i8 63, i8* %243, align 1, !dbg !2367, !tbaa !1342
  br label %244, !dbg !2367

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2370
  call void @llvm.dbg.value(metadata i64 %245, metadata !2145, metadata !DIExpression()), !dbg !2193
  br label %463, !dbg !2371

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !2159, metadata !DIExpression()), !dbg !2285
  br label %256, !dbg !2372

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !2159, metadata !DIExpression()), !dbg !2285
  br label %256, !dbg !2373

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !2159, metadata !DIExpression()), !dbg !2285
  br label %254, !dbg !2374

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !2159, metadata !DIExpression()), !dbg !2285
  br label %254, !dbg !2375

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !2159, metadata !DIExpression()), !dbg !2285
  br label %256, !dbg !2376

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !2159, metadata !DIExpression()), !dbg !2285
  br i1 %110, label %252, label %253, !dbg !2377

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !2378

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !2381

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !2382
  call void @llvm.dbg.value(metadata i8 %255, metadata !2159, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.label(metadata !2188), !dbg !2383
  br i1 %111, label %256, label %625, !dbg !2384

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !2382
  call void @llvm.dbg.value(metadata i8 %257, metadata !2159, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.label(metadata !2189), !dbg !2386
  br i1 %102, label %488, label %463, !dbg !2387

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2388

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2389, !tbaa !1342
  %261 = icmp eq i8 %260, 0, !dbg !2390
  br i1 %261, label %262, label %463, !dbg !2391

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !2392
  br i1 %263, label %264, label %463, !dbg !2394

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2162, metadata !DIExpression()), !dbg !2285
  br label %265, !dbg !2395

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !2285
  call void @llvm.dbg.value(metadata i8 %266, metadata !2162, metadata !DIExpression()), !dbg !2285
  br i1 %111, label %463, label %625, !dbg !2396

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2153, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 1, metadata !2162, metadata !DIExpression()), !dbg !2285
  br i1 %110, label %268, label %463, !dbg !2397

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !2398

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !2400
  %271 = icmp ne i64 %125, 0, !dbg !2402
  %272 = or i1 %271, %270, !dbg !2403
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !2403
  %274 = select i1 %272, i64 %130, i64 0, !dbg !2403
  call void @llvm.dbg.value(metadata i64 %274, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %273, metadata !2146, metadata !DIExpression()), !dbg !2193
  %275 = icmp ult i64 %124, %274, !dbg !2404
  br i1 %275, label %276, label %278, !dbg !2407

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2404
  store i8 39, i8* %277, align 1, !dbg !2404, !tbaa !1342
  br label %278, !dbg !2404

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !2407
  call void @llvm.dbg.value(metadata i64 %279, metadata !2145, metadata !DIExpression()), !dbg !2193
  %280 = icmp ult i64 %279, %274, !dbg !2408
  br i1 %280, label %281, label %283, !dbg !2411

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2408
  store i8 92, i8* %282, align 1, !dbg !2408, !tbaa !1342
  br label %283, !dbg !2408

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !2411
  call void @llvm.dbg.value(metadata i64 %284, metadata !2145, metadata !DIExpression()), !dbg !2193
  %285 = icmp ult i64 %284, %274, !dbg !2412
  br i1 %285, label %286, label %288, !dbg !2415

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2412
  store i8 39, i8* %287, align 1, !dbg !2412, !tbaa !1342
  br label %288, !dbg !2412

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !2415
  call void @llvm.dbg.value(metadata i64 %289, metadata !2145, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 0, metadata !2152, metadata !DIExpression()), !dbg !2193
  br label %463, !dbg !2416

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !2417

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !2163, metadata !DIExpression()), !dbg !2418
  %292 = tail call i16** @__ctype_b_loc() #24, !dbg !2419
  %293 = load i16*, i16** %292, align 8, !dbg !2419, !tbaa !1254
  %294 = zext i8 %158 to i64, !dbg !2419
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2419
  %296 = load i16, i16* %295, align 2, !dbg !2419, !tbaa !1461
  %297 = lshr i16 %296, 14, !dbg !2421
  %298 = trunc i16 %297 to i8, !dbg !2421
  %299 = and i8 %298, 1, !dbg !2421
  call void @llvm.dbg.value(metadata i8 %299, metadata !2166, metadata !DIExpression()), !dbg !2418
  br label %355, !dbg !2422

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #18, !dbg !2423
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !2167, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i8* %23, metadata !2425, metadata !DIExpression()) #18, !dbg !2433
  call void @llvm.dbg.value(metadata i32 0, metadata !2431, metadata !DIExpression()) #18, !dbg !2433
  call void @llvm.dbg.value(metadata i64 8, metadata !2432, metadata !DIExpression()) #18, !dbg !2433
  store i64 0, i64* %10, align 8, !dbg !2435
  call void @llvm.dbg.value(metadata i64 0, metadata !2163, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i8 1, metadata !2166, metadata !DIExpression()), !dbg !2418
  %301 = icmp eq i64 %155, -1, !dbg !2436
  br i1 %301, label %302, label %304, !dbg !2438

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #21, !dbg !2439
  call void @llvm.dbg.value(metadata i64 %303, metadata !2138, metadata !DIExpression()), !dbg !2193
  br label %304, !dbg !2440

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !2285
  call void @llvm.dbg.value(metadata i64 %305, metadata !2138, metadata !DIExpression()), !dbg !2193
  br label %306, !dbg !2441

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !2442
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !2443
  call void @llvm.dbg.value(metadata i8 %308, metadata !2166, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i64 %307, metadata !2163, metadata !DIExpression()), !dbg !2418
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #18, !dbg !2444
  %309 = add i64 %307, %123, !dbg !2445
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !2446
  %311 = sub i64 %305, %309, !dbg !2447
  call void @llvm.dbg.value(metadata i32* %12, metadata !2173, metadata !DIExpression(DW_OP_deref)), !dbg !2206
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #18, !dbg !2448
  call void @llvm.dbg.value(metadata i64 %312, metadata !2176, metadata !DIExpression()), !dbg !2206
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !2449

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2163, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i64 %307, metadata !2163, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i64 %307, metadata !2163, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i64 %307, metadata !2163, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i64 %307, metadata !2163, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i64 %307, metadata !2163, metadata !DIExpression()), !dbg !2418
  %314 = icmp ugt i64 %305, %309, !dbg !2450
  br i1 %314, label %315, label %340, !dbg !2452

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !2453
  br label %317, !dbg !2453

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !2163, metadata !DIExpression()), !dbg !2418
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !2454
  %321 = load i8, i8* %320, align 1, !dbg !2454, !tbaa !1342
  %322 = icmp eq i8 %321, 0, !dbg !2452
  br i1 %322, label %340, label %323, !dbg !2453

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !2455
  call void @llvm.dbg.value(metadata i64 %324, metadata !2163, metadata !DIExpression()), !dbg !2418
  %325 = add i64 %324, %123, !dbg !2456
  %326 = icmp ult i64 %325, %305, !dbg !2450
  br i1 %326, label %317, label %340, !dbg !2452, !llvm.loop !2457

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !2458
  %329 = and i1 %113, %328, !dbg !2461
  call void @llvm.dbg.value(metadata i64 1, metadata !2177, metadata !DIExpression()), !dbg !2462
  br i1 %329, label %330, label %343, !dbg !2461

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !2177, metadata !DIExpression()), !dbg !2462
  %332 = add i64 %331, %309, !dbg !2463
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !2464
  %334 = load i8, i8* %333, align 1, !dbg !2464, !tbaa !1342
  %335 = sext i8 %334 to i32, !dbg !2464
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !2465

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !2466
  call void @llvm.dbg.value(metadata i64 %337, metadata !2177, metadata !DIExpression()), !dbg !2462
  %338 = icmp eq i64 %337, %312, !dbg !2458
  br i1 %338, label %343, label %330, !dbg !2467, !llvm.loop !2468

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2163, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i8 %308, metadata !2166, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i64 %307, metadata !2163, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i8 %308, metadata !2166, metadata !DIExpression()), !dbg !2418
  br label %340, !dbg !2470

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !2470
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !2471, !tbaa !1351
  call void @llvm.dbg.value(metadata i32 %344, metadata !2173, metadata !DIExpression()), !dbg !2206
  %345 = call i32 @iswprint(i32 %344) #18, !dbg !2473
  %346 = icmp eq i32 %345, 0, !dbg !2473
  %347 = select i1 %346, i8 0, i8 %308, !dbg !2474
  call void @llvm.dbg.value(metadata i8 %347, metadata !2166, metadata !DIExpression()), !dbg !2418
  %348 = add i64 %312, %307, !dbg !2475
  call void @llvm.dbg.value(metadata i64 %348, metadata !2163, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i8 %347, metadata !2166, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i64 %348, metadata !2163, metadata !DIExpression()), !dbg !2418
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !2470
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #21, !dbg !2476
  %350 = icmp eq i32 %349, 0, !dbg !2477
  br i1 %350, label %306, label %351, !dbg !2478, !llvm.loop !2479

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #18, !dbg !2481
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !2142, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %94, metadata !2142, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %94, metadata !2142, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %94, metadata !2142, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %94, metadata !2142, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %95, metadata !2143, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %95, metadata !2143, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %95, metadata !2143, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %95, metadata !2143, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %95, metadata !2143, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %130, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %130, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %130, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %130, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %130, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %305, metadata !2138, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %305, metadata !2138, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %305, metadata !2138, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %305, metadata !2138, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %305, metadata !2138, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %94, metadata !2142, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %94, metadata !2142, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %94, metadata !2142, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %94, metadata !2142, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %94, metadata !2142, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %95, metadata !2143, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %95, metadata !2143, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %95, metadata !2143, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %95, metadata !2143, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %95, metadata !2143, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %130, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %130, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %130, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %130, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %130, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %305, metadata !2138, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %305, metadata !2138, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %305, metadata !2138, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %305, metadata !2138, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %305, metadata !2138, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %94, metadata !2142, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %94, metadata !2142, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %94, metadata !2142, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %94, metadata !2142, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %94, metadata !2142, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %95, metadata !2143, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %95, metadata !2143, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %95, metadata !2143, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %95, metadata !2143, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %95, metadata !2143, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %130, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %130, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %130, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %130, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %130, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %305, metadata !2138, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %305, metadata !2138, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %305, metadata !2138, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %305, metadata !2138, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %305, metadata !2138, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %94, metadata !2142, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %94, metadata !2142, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %94, metadata !2142, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %94, metadata !2142, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %94, metadata !2142, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %95, metadata !2143, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %95, metadata !2143, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %95, metadata !2143, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %95, metadata !2143, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %95, metadata !2143, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %130, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %130, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %130, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %130, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %130, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %305, metadata !2138, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %305, metadata !2138, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %305, metadata !2138, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %305, metadata !2138, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %305, metadata !2138, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i32 2, metadata !2139, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i32 2, metadata !2139, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i32 2, metadata !2139, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i32 2, metadata !2139, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i32 2, metadata !2139, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %94, metadata !2142, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %94, metadata !2142, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %94, metadata !2142, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %94, metadata !2142, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %94, metadata !2142, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %95, metadata !2143, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %95, metadata !2143, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %95, metadata !2143, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %95, metadata !2143, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %95, metadata !2143, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %99, metadata !2149, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %99, metadata !2149, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %99, metadata !2149, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %99, metadata !2149, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %99, metadata !2149, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %130, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %130, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %130, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %130, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %130, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %305, metadata !2138, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %305, metadata !2138, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %305, metadata !2138, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %305, metadata !2138, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %305, metadata !2138, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i32 2, metadata !2139, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i32 2, metadata !2139, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i32 2, metadata !2139, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i32 2, metadata !2139, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i32 2, metadata !2139, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %94, metadata !2142, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %94, metadata !2142, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %94, metadata !2142, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %94, metadata !2142, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %94, metadata !2142, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %95, metadata !2143, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %95, metadata !2143, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %95, metadata !2143, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %95, metadata !2143, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %95, metadata !2143, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %99, metadata !2149, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %99, metadata !2149, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %99, metadata !2149, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %99, metadata !2149, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %99, metadata !2149, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %130, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %130, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %130, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %130, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %130, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %305, metadata !2138, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %305, metadata !2138, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %305, metadata !2138, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %305, metadata !2138, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %305, metadata !2138, metadata !DIExpression()), !dbg !2193
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !2470
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #18, !dbg !2481
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !2285
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !2482
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !2482
  call void @llvm.dbg.value(metadata i8 %358, metadata !2166, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i64 %357, metadata !2163, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i64 %356, metadata !2138, metadata !DIExpression()), !dbg !2193
  %359 = and i8 %358, 1, !dbg !2483
  %360 = icmp ne i8 %359, 0, !dbg !2483
  call void @llvm.dbg.value(metadata i8 %359, metadata !2162, metadata !DIExpression()), !dbg !2285
  %361 = icmp ult i64 %357, 2, !dbg !2484
  %362 = or i1 %360, %114, !dbg !2485
  %363 = and i1 %361, %362, !dbg !2486
  br i1 %363, label %463, label %364, !dbg !2486

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !2487
  call void @llvm.dbg.value(metadata i64 %365, metadata !2184, metadata !DIExpression()), !dbg !2488
  br label %366, !dbg !2489

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !2278
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !2193
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !2214
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !2285
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !2285
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !2490
  call void @llvm.dbg.value(metadata i8 %372, metadata !2161, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8 %371, metadata !2160, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8 %370, metadata !2155, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8 %369, metadata !2152, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %368, metadata !2145, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %367, metadata !2144, metadata !DIExpression()), !dbg !2193
  br i1 %362, label %419, label %373, !dbg !2491

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !2496

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !2161, metadata !DIExpression()), !dbg !2285
  %375 = and i8 %369, 1, !dbg !2499
  %376 = icmp eq i8 %375, 0, !dbg !2499
  %377 = and i1 %110, %376, !dbg !2499
  br i1 %377, label %378, label %394, !dbg !2499

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !2501
  br i1 %379, label %380, label %382, !dbg !2505

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2501
  store i8 39, i8* %381, align 1, !dbg !2501, !tbaa !1342
  br label %382, !dbg !2501

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !2505
  call void @llvm.dbg.value(metadata i64 %383, metadata !2145, metadata !DIExpression()), !dbg !2193
  %384 = icmp ult i64 %383, %130, !dbg !2506
  br i1 %384, label %385, label %387, !dbg !2509

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2506
  store i8 36, i8* %386, align 1, !dbg !2506, !tbaa !1342
  br label %387, !dbg !2506

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !2509
  call void @llvm.dbg.value(metadata i64 %388, metadata !2145, metadata !DIExpression()), !dbg !2193
  %389 = icmp ult i64 %388, %130, !dbg !2510
  br i1 %389, label %390, label %392, !dbg !2513

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !2510
  store i8 39, i8* %391, align 1, !dbg !2510, !tbaa !1342
  br label %392, !dbg !2510

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !2513
  call void @llvm.dbg.value(metadata i64 %393, metadata !2145, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 1, metadata !2152, metadata !DIExpression()), !dbg !2193
  br label %394, !dbg !2514

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !2193
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !2193
  call void @llvm.dbg.value(metadata i8 %396, metadata !2152, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %395, metadata !2145, metadata !DIExpression()), !dbg !2193
  %397 = icmp ult i64 %395, %130, !dbg !2515
  br i1 %397, label %398, label %400, !dbg !2518

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2515
  store i8 92, i8* %399, align 1, !dbg !2515, !tbaa !1342
  br label %400, !dbg !2515

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !2518
  call void @llvm.dbg.value(metadata i64 %401, metadata !2145, metadata !DIExpression()), !dbg !2193
  %402 = icmp ult i64 %401, %130, !dbg !2519
  br i1 %402, label %403, label %407, !dbg !2522

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !2519
  %405 = or i8 %404, 48, !dbg !2519
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2519
  store i8 %405, i8* %406, align 1, !dbg !2519, !tbaa !1342
  br label %407, !dbg !2519

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !2522
  call void @llvm.dbg.value(metadata i64 %408, metadata !2145, metadata !DIExpression()), !dbg !2193
  %409 = icmp ult i64 %408, %130, !dbg !2523
  br i1 %409, label %410, label %415, !dbg !2526

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !2523
  %412 = and i8 %411, 7, !dbg !2523
  %413 = or i8 %412, 48, !dbg !2523
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2523
  store i8 %413, i8* %414, align 1, !dbg !2523, !tbaa !1342
  br label %415, !dbg !2523

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !2526
  call void @llvm.dbg.value(metadata i64 %416, metadata !2145, metadata !DIExpression()), !dbg !2193
  %417 = and i8 %370, 7, !dbg !2527
  %418 = or i8 %417, 48, !dbg !2528
  call void @llvm.dbg.value(metadata i8 %418, metadata !2155, metadata !DIExpression()), !dbg !2285
  br label %428, !dbg !2529

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !2530
  %421 = icmp eq i8 %420, 0, !dbg !2530
  br i1 %421, label %428, label %422, !dbg !2532

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !2533
  br i1 %423, label %424, label %426, !dbg !2537

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2533
  store i8 92, i8* %425, align 1, !dbg !2533, !tbaa !1342
  br label %426, !dbg !2533

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !2537
  call void @llvm.dbg.value(metadata i64 %427, metadata !2145, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 0, metadata !2160, metadata !DIExpression()), !dbg !2285
  br label %428, !dbg !2538

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !2193
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !2214
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !2285
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !2285
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !2285
  call void @llvm.dbg.value(metadata i8 %433, metadata !2161, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8 %432, metadata !2160, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8 %431, metadata !2155, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8 %430, metadata !2152, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %429, metadata !2145, metadata !DIExpression()), !dbg !2193
  %434 = add i64 %367, 1, !dbg !2539
  %435 = icmp ugt i64 %365, %434, !dbg !2541
  br i1 %435, label %436, label %526, !dbg !2542

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !2543
  %438 = icmp ne i8 %437, 0, !dbg !2543
  %439 = and i8 %433, 1, !dbg !2543
  %440 = icmp eq i8 %439, 0, !dbg !2543
  %441 = and i1 %438, %440, !dbg !2543
  br i1 %441, label %442, label %453, !dbg !2543

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !2546
  br i1 %443, label %444, label %446, !dbg !2550

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !2546
  store i8 39, i8* %445, align 1, !dbg !2546, !tbaa !1342
  br label %446, !dbg !2546

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !2550
  call void @llvm.dbg.value(metadata i64 %447, metadata !2145, metadata !DIExpression()), !dbg !2193
  %448 = icmp ult i64 %447, %130, !dbg !2551
  br i1 %448, label %449, label %451, !dbg !2554

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !2551
  store i8 39, i8* %450, align 1, !dbg !2551, !tbaa !1342
  br label %451, !dbg !2551

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !2554
  call void @llvm.dbg.value(metadata i64 %452, metadata !2145, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 0, metadata !2152, metadata !DIExpression()), !dbg !2193
  br label %453, !dbg !2555

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !2556
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !2193
  call void @llvm.dbg.value(metadata i8 %455, metadata !2152, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %454, metadata !2145, metadata !DIExpression()), !dbg !2193
  %456 = icmp ult i64 %454, %130, !dbg !2557
  br i1 %456, label %457, label %459, !dbg !2560

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2557
  store i8 %431, i8* %458, align 1, !dbg !2557, !tbaa !1342
  br label %459, !dbg !2557

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !2560
  call void @llvm.dbg.value(metadata i64 %460, metadata !2145, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %434, metadata !2144, metadata !DIExpression()), !dbg !2193
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !2561
  %462 = load i8, i8* %461, align 1, !dbg !2561, !tbaa !1342
  call void @llvm.dbg.value(metadata i8 %462, metadata !2155, metadata !DIExpression()), !dbg !2285
  br label %366, !dbg !2562, !llvm.loop !2563

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !2278
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !2193
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !2210
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !2566
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !2193
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !2193
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !2285
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !2285
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !2285
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %472, metadata !2162, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8 %471, metadata !2161, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8 %156, metadata !2160, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8 %470, metadata !2155, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8 %469, metadata !2153, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %468, metadata !2152, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %467, metadata !2138, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %466, metadata !2146, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %465, metadata !2145, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %464, metadata !2144, metadata !DIExpression()), !dbg !2193
  br i1 %117, label %486, label %474, !dbg !2567

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !2568
  %476 = zext i8 %475 to i64, !dbg !2568
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !2569
  %478 = load i32, i32* %477, align 4, !dbg !2569, !tbaa !1351
  %479 = and i8 %470, 31, !dbg !2570
  %480 = zext i8 %479 to i32, !dbg !2570
  %481 = shl nuw i32 1, %480, !dbg !2571
  %482 = and i32 %478, %481, !dbg !2571
  %483 = icmp eq i32 %482, 0, !dbg !2571
  %484 = icmp eq i8 %156, 0, !dbg !2572
  %485 = and i1 %484, %483, !dbg !2573
  br i1 %485, label %526, label %488, !dbg !2573

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !2572
  br i1 %487, label %526, label %488, !dbg !2574

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !2575
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !2193
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !2210
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !2566
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !2214
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !2215
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !2285
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !2285
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %496, metadata !2162, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8 %495, metadata !2155, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8 %494, metadata !2153, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %493, metadata !2152, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %492, metadata !2138, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %491, metadata !2146, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %490, metadata !2145, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %489, metadata !2144, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.label(metadata !2190), !dbg !2576
  br i1 %109, label %498, label %629, !dbg !2577

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !2161, metadata !DIExpression()), !dbg !2285
  %499 = and i8 %493, 1, !dbg !2579
  %500 = icmp eq i8 %499, 0, !dbg !2579
  %501 = and i1 %110, %500, !dbg !2579
  br i1 %501, label %502, label %518, !dbg !2579

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !2581
  br i1 %503, label %504, label %506, !dbg !2585

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !2581
  store i8 39, i8* %505, align 1, !dbg !2581, !tbaa !1342
  br label %506, !dbg !2581

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !2585
  call void @llvm.dbg.value(metadata i64 %507, metadata !2145, metadata !DIExpression()), !dbg !2193
  %508 = icmp ult i64 %507, %497, !dbg !2586
  br i1 %508, label %509, label %511, !dbg !2589

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !2586
  store i8 36, i8* %510, align 1, !dbg !2586, !tbaa !1342
  br label %511, !dbg !2586

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !2589
  call void @llvm.dbg.value(metadata i64 %512, metadata !2145, metadata !DIExpression()), !dbg !2193
  %513 = icmp ult i64 %512, %497, !dbg !2590
  br i1 %513, label %514, label %516, !dbg !2593

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2590
  store i8 39, i8* %515, align 1, !dbg !2590, !tbaa !1342
  br label %516, !dbg !2590

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !2593
  call void @llvm.dbg.value(metadata i64 %517, metadata !2145, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 1, metadata !2152, metadata !DIExpression()), !dbg !2193
  br label %518, !dbg !2594

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !2285
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !2193
  call void @llvm.dbg.value(metadata i8 %520, metadata !2152, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %519, metadata !2145, metadata !DIExpression()), !dbg !2193
  %521 = icmp ult i64 %519, %497, !dbg !2595
  br i1 %521, label %522, label %524, !dbg !2598

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2595
  store i8 92, i8* %523, align 1, !dbg !2595, !tbaa !1342
  br label %524, !dbg !2595

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !2598
  call void @llvm.dbg.value(metadata i64 %525, metadata !2145, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %536, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %535, metadata !2162, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8 %534, metadata !2161, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8 %533, metadata !2155, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8 %532, metadata !2153, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %531, metadata !2152, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %530, metadata !2138, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %529, metadata !2146, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %528, metadata !2145, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %527, metadata !2144, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.label(metadata !2191), !dbg !2599
  br label %553, !dbg !2600

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !2575
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !2193
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !2210
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !2566
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !2214
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !2215
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !2603
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !2285
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !2285
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %535, metadata !2162, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8 %534, metadata !2161, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8 %533, metadata !2155, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8 %532, metadata !2153, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %531, metadata !2152, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %530, metadata !2138, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %529, metadata !2146, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %528, metadata !2145, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %527, metadata !2144, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.label(metadata !2191), !dbg !2599
  %537 = and i8 %531, 1, !dbg !2600
  %538 = icmp ne i8 %537, 0, !dbg !2600
  %539 = and i8 %534, 1, !dbg !2600
  %540 = icmp eq i8 %539, 0, !dbg !2600
  %541 = and i1 %538, %540, !dbg !2600
  br i1 %541, label %542, label %553, !dbg !2600

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !2604
  br i1 %543, label %544, label %546, !dbg !2608

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2604
  store i8 39, i8* %545, align 1, !dbg !2604, !tbaa !1342
  br label %546, !dbg !2604

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !2608
  call void @llvm.dbg.value(metadata i64 %547, metadata !2145, metadata !DIExpression()), !dbg !2193
  %548 = icmp ult i64 %547, %536, !dbg !2609
  br i1 %548, label %549, label %551, !dbg !2612

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !2609
  store i8 39, i8* %550, align 1, !dbg !2609, !tbaa !1342
  br label %551, !dbg !2609

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !2612
  call void @llvm.dbg.value(metadata i64 %552, metadata !2145, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 0, metadata !2152, metadata !DIExpression()), !dbg !2193
  br label %553, !dbg !2613

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !2285
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !2193
  call void @llvm.dbg.value(metadata i8 %562, metadata !2152, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %561, metadata !2145, metadata !DIExpression()), !dbg !2193
  %563 = icmp ult i64 %561, %554, !dbg !2614
  br i1 %563, label %564, label %566, !dbg !2617

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !2614
  store i8 %556, i8* %565, align 1, !dbg !2614, !tbaa !1342
  br label %566, !dbg !2614

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2617
  call void @llvm.dbg.value(metadata i64 %567, metadata !2145, metadata !DIExpression()), !dbg !2193
  %568 = and i8 %555, 1, !dbg !2618
  %569 = icmp eq i8 %568, 0, !dbg !2618
  %570 = select i1 %569, i8 0, i8 %129, !dbg !2620
  call void @llvm.dbg.value(metadata i8 %570, metadata !2154, metadata !DIExpression()), !dbg !2193
  br label %571, !dbg !2621

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !2575
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !2193
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !2210
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !2566
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !2214
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !2193
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !2216
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %578, metadata !2154, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %577, metadata !2153, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %576, metadata !2152, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %575, metadata !2138, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %574, metadata !2146, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %573, metadata !2145, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %572, metadata !2144, metadata !DIExpression()), !dbg !2193
  %580 = add i64 %572, 1, !dbg !2622
  call void @llvm.dbg.value(metadata i64 %580, metadata !2144, metadata !DIExpression()), !dbg !2193
  br label %122, !dbg !2623, !llvm.loop !2624

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !2145, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %124, metadata !2145, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %125, metadata !2146, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %125, metadata !2146, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %127, metadata !2152, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %127, metadata !2152, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %128, metadata !2153, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %128, metadata !2153, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %129, metadata !2154, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %129, metadata !2154, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %130, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %130, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %124, metadata !2145, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %124, metadata !2145, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %125, metadata !2146, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %125, metadata !2146, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %127, metadata !2152, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %127, metadata !2152, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %128, metadata !2153, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %128, metadata !2153, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %129, metadata !2154, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %129, metadata !2154, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %130, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %130, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %124, metadata !2145, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %124, metadata !2145, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %125, metadata !2146, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %125, metadata !2146, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %127, metadata !2152, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %127, metadata !2152, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %128, metadata !2153, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %128, metadata !2153, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %129, metadata !2154, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %129, metadata !2154, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %130, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %130, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %124, metadata !2145, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %124, metadata !2145, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %125, metadata !2146, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %125, metadata !2146, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %127, metadata !2152, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %127, metadata !2152, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %128, metadata !2153, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %128, metadata !2153, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %129, metadata !2154, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %129, metadata !2154, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %130, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %130, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %124, metadata !2145, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %124, metadata !2145, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %125, metadata !2146, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %125, metadata !2146, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %582, metadata !2138, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %582, metadata !2138, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %127, metadata !2152, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %127, metadata !2152, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %128, metadata !2153, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %128, metadata !2153, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %129, metadata !2154, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %129, metadata !2154, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %130, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %130, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %124, metadata !2145, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %124, metadata !2145, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %125, metadata !2146, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %125, metadata !2146, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %582, metadata !2138, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %582, metadata !2138, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %127, metadata !2152, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %127, metadata !2152, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %128, metadata !2153, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %128, metadata !2153, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %129, metadata !2154, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 %129, metadata !2154, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %130, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %130, metadata !2136, metadata !DIExpression()), !dbg !2193
  %583 = icmp eq i64 %124, 0, !dbg !2626
  %584 = and i1 %110, %583, !dbg !2628
  %585 = xor i1 %584, true, !dbg !2628
  %586 = or i1 %109, %585, !dbg !2628
  br i1 %586, label %587, label %629, !dbg !2628

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !2629
  %589 = xor i1 %588, true, !dbg !2629
  %590 = and i8 %128, 1, !dbg !2631
  %591 = icmp eq i8 %590, 0, !dbg !2631
  %592 = or i1 %591, %589, !dbg !2629
  br i1 %592, label %602, label %593, !dbg !2629

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !2632
  %595 = icmp eq i8 %594, 0, !dbg !2632
  br i1 %595, label %598, label %596, !dbg !2635

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !2138, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %94, metadata !2142, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %95, metadata !2143, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %125, metadata !2146, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %582, metadata !2138, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %94, metadata !2142, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %95, metadata !2143, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %125, metadata !2146, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %582, metadata !2138, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %94, metadata !2142, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %95, metadata !2143, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %125, metadata !2146, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %582, metadata !2138, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %94, metadata !2142, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %95, metadata !2143, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %125, metadata !2146, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %94, metadata !2142, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %95, metadata !2143, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %125, metadata !2146, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %582, metadata !2138, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %94, metadata !2142, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %95, metadata !2143, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %125, metadata !2146, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %582, metadata !2138, metadata !DIExpression()), !dbg !2193
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2636
  br label %645, !dbg !2637

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !2638
  %600 = icmp ne i64 %125, 0, !dbg !2640
  %601 = and i1 %600, %599, !dbg !2641
  br i1 %601, label %26, label %602, !dbg !2641

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !2147, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %97, metadata !2147, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %124, metadata !2145, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %124, metadata !2145, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %130, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %130, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %97, metadata !2147, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %97, metadata !2147, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %124, metadata !2145, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %124, metadata !2145, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %130, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %130, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %97, metadata !2147, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %97, metadata !2147, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %124, metadata !2145, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %124, metadata !2145, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %130, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %130, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %97, metadata !2147, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %97, metadata !2147, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %124, metadata !2145, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %124, metadata !2145, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %130, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %130, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %97, metadata !2147, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %97, metadata !2147, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %124, metadata !2145, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %124, metadata !2145, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %130, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %130, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %97, metadata !2147, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %97, metadata !2147, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %124, metadata !2145, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %124, metadata !2145, metadata !DIExpression()), !dbg !2193
  %603 = icmp ne i8* %97, null, !dbg !2642
  %604 = and i1 %603, %109, !dbg !2644
  br i1 %604, label %605, label %620, !dbg !2644

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !2147, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %124, metadata !2145, metadata !DIExpression()), !dbg !2193
  %606 = load i8, i8* %97, align 1, !dbg !2645, !tbaa !1342
  %607 = icmp eq i8 %606, 0, !dbg !2648
  br i1 %607, label %620, label %608, !dbg !2648

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !2147, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %611, metadata !2145, metadata !DIExpression()), !dbg !2193
  %612 = icmp ult i64 %611, %130, !dbg !2649
  br i1 %612, label %613, label %615, !dbg !2652

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !2649
  store i8 %609, i8* %614, align 1, !dbg !2649, !tbaa !1342
  br label %615, !dbg !2649

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !2652
  call void @llvm.dbg.value(metadata i64 %616, metadata !2145, metadata !DIExpression()), !dbg !2193
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !2653
  call void @llvm.dbg.value(metadata i8* %617, metadata !2147, metadata !DIExpression()), !dbg !2193
  %618 = load i8, i8* %617, align 1, !dbg !2645, !tbaa !1342
  %619 = icmp eq i8 %618, 0, !dbg !2648
  br i1 %619, label %620, label %608, !dbg !2648, !llvm.loop !2654

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !2247
  call void @llvm.dbg.value(metadata i64 %621, metadata !2145, metadata !DIExpression()), !dbg !2193
  %622 = icmp ult i64 %621, %130, !dbg !2656
  br i1 %622, label %623, label %645, !dbg !2658

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2659
  store i8 0, i8* %624, align 1, !dbg !2660, !tbaa !1342
  br label %645, !dbg !2659

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %630, metadata !2138, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.label(metadata !2192), !dbg !2661
  %627 = icmp eq i8 %101, 0, !dbg !2662
  %628 = select i1 %627, i32 2, i32 4, !dbg !2662
  br label %635, !dbg !2662

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2136, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %630, metadata !2138, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.label(metadata !2192), !dbg !2661
  %632 = icmp eq i32 %93, 2, !dbg !2664
  %633 = icmp eq i8 %101, 0, !dbg !2662
  %634 = select i1 %633, i32 2, i32 4, !dbg !2662
  br i1 %632, label %635, label %639, !dbg !2662

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !2662

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !2139, metadata !DIExpression()), !dbg !2193
  %643 = and i32 %5, -3, !dbg !2665
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !2666
  br label %645, !dbg !2667

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !2668
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2669 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2673, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata i32 %1, metadata !2674, metadata !DIExpression()), !dbg !2677
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #18, !dbg !2678
  call void @llvm.dbg.value(metadata i8* %3, metadata !2675, metadata !DIExpression()), !dbg !2677
  %4 = icmp eq i8* %3, %0, !dbg !2679
  br i1 %4, label %5, label %71, !dbg !2681

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #18, !dbg !2682
  call void @llvm.dbg.value(metadata i8* %6, metadata !2676, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata i8* %6, metadata !2683, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i8* undef, metadata !2689, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i8 85, metadata !2690, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i8 84, metadata !2691, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i8 70, metadata !2692, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i8 45, metadata !2693, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i8 56, metadata !2694, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i8 0, metadata !2695, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i8 0, metadata !2696, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i8 0, metadata !2697, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i8 0, metadata !2698, metadata !DIExpression()), !dbg !2699
  %7 = load i8, i8* %6, align 1, !dbg !2702, !tbaa !1342
  %8 = and i8 %7, -33, !dbg !2702
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2702

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2704, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i8* undef, metadata !2709, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i8 84, metadata !2710, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i8 70, metadata !2711, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i8 45, metadata !2712, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i8 56, metadata !2713, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i8 0, metadata !2714, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i8 0, metadata !2715, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i8 0, metadata !2716, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i8 0, metadata !2717, metadata !DIExpression()), !dbg !2718
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2722
  %11 = load i8, i8* %10, align 1, !dbg !2722, !tbaa !1342
  %12 = and i8 %11, -33, !dbg !2722
  %13 = icmp eq i8 %12, 84, !dbg !2722
  br i1 %13, label %14, label %68, !dbg !2722

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2724, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i8* undef, metadata !2729, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i8 70, metadata !2730, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i8 45, metadata !2731, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i8 56, metadata !2732, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i8 0, metadata !2733, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i8 0, metadata !2734, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i8 0, metadata !2735, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i8 0, metadata !2736, metadata !DIExpression()), !dbg !2737
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2741
  %16 = load i8, i8* %15, align 1, !dbg !2741, !tbaa !1342
  %17 = and i8 %16, -33, !dbg !2741
  %18 = icmp eq i8 %17, 70, !dbg !2741
  br i1 %18, label %19, label %68, !dbg !2741

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2743, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8* undef, metadata !2748, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8 45, metadata !2749, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8 56, metadata !2750, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8 0, metadata !2751, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8 0, metadata !2752, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8 0, metadata !2753, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8 0, metadata !2754, metadata !DIExpression()), !dbg !2755
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2759
  %21 = load i8, i8* %20, align 1, !dbg !2759, !tbaa !1342
  %22 = icmp eq i8 %21, 45, !dbg !2759
  br i1 %22, label %23, label %68, !dbg !2761

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2762, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i8* undef, metadata !2767, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i8 56, metadata !2768, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i8 0, metadata !2769, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i8 0, metadata !2770, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i8 0, metadata !2771, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i8 0, metadata !2772, metadata !DIExpression()), !dbg !2773
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2777
  %25 = load i8, i8* %24, align 1, !dbg !2777, !tbaa !1342
  %26 = icmp eq i8 %25, 56, !dbg !2777
  br i1 %26, label %27, label %68, !dbg !2779

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2780, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i8* undef, metadata !2785, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i8 0, metadata !2786, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i8 0, metadata !2787, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i8 0, metadata !2788, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i8 0, metadata !2789, metadata !DIExpression()), !dbg !2790
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2794
  %29 = load i8, i8* %28, align 1, !dbg !2794, !tbaa !1342
  %30 = icmp eq i8 %29, 0, !dbg !2794
  br i1 %30, label %31, label %68, !dbg !2796

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2797, !tbaa !1342
  %33 = icmp eq i8 %32, 96, !dbg !2798
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.68, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.69, i64 0, i64 0), !dbg !2797
  br label %71, !dbg !2799

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2704, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i8* undef, metadata !2709, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i8 66, metadata !2710, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i8 49, metadata !2711, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i8 56, metadata !2712, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i8 48, metadata !2713, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i8 51, metadata !2714, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i8 48, metadata !2715, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i8 0, metadata !2716, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i8 0, metadata !2717, metadata !DIExpression()), !dbg !2800
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2804
  %37 = load i8, i8* %36, align 1, !dbg !2804, !tbaa !1342
  %38 = and i8 %37, -33, !dbg !2804
  %39 = icmp eq i8 %38, 66, !dbg !2804
  br i1 %39, label %40, label %68, !dbg !2804

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2724, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata i8* undef, metadata !2729, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata i8 49, metadata !2730, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata i8 56, metadata !2731, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata i8 48, metadata !2732, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata i8 51, metadata !2733, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata i8 48, metadata !2734, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata i8 0, metadata !2735, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata i8 0, metadata !2736, metadata !DIExpression()), !dbg !2805
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2807
  %42 = load i8, i8* %41, align 1, !dbg !2807, !tbaa !1342
  %43 = icmp eq i8 %42, 49, !dbg !2807
  br i1 %43, label %44, label %68, !dbg !2808

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2743, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i8* undef, metadata !2748, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i8 56, metadata !2749, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i8 48, metadata !2750, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i8 51, metadata !2751, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i8 48, metadata !2752, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i8 0, metadata !2753, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i8 0, metadata !2754, metadata !DIExpression()), !dbg !2809
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2811
  %46 = load i8, i8* %45, align 1, !dbg !2811, !tbaa !1342
  %47 = icmp eq i8 %46, 56, !dbg !2811
  br i1 %47, label %48, label %68, !dbg !2812

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2762, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata i8* undef, metadata !2767, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata i8 48, metadata !2768, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata i8 51, metadata !2769, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata i8 48, metadata !2770, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata i8 0, metadata !2771, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata i8 0, metadata !2772, metadata !DIExpression()), !dbg !2813
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2815
  %50 = load i8, i8* %49, align 1, !dbg !2815, !tbaa !1342
  %51 = icmp eq i8 %50, 48, !dbg !2815
  br i1 %51, label %52, label %68, !dbg !2816

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2780, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata i8* undef, metadata !2785, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata i8 51, metadata !2786, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata i8 48, metadata !2787, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata i8 0, metadata !2788, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata i8 0, metadata !2789, metadata !DIExpression()), !dbg !2817
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2819
  %54 = load i8, i8* %53, align 1, !dbg !2819, !tbaa !1342
  %55 = icmp eq i8 %54, 51, !dbg !2819
  br i1 %55, label %56, label %68, !dbg !2820

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2821, metadata !DIExpression()), !dbg !2830
  call void @llvm.dbg.value(metadata i8* undef, metadata !2826, metadata !DIExpression()), !dbg !2830
  call void @llvm.dbg.value(metadata i8 48, metadata !2827, metadata !DIExpression()), !dbg !2830
  call void @llvm.dbg.value(metadata i8 0, metadata !2828, metadata !DIExpression()), !dbg !2830
  call void @llvm.dbg.value(metadata i8 0, metadata !2829, metadata !DIExpression()), !dbg !2830
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2834
  %58 = load i8, i8* %57, align 1, !dbg !2834, !tbaa !1342
  %59 = icmp eq i8 %58, 48, !dbg !2834
  br i1 %59, label %60, label %68, !dbg !2836

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2837, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i8* undef, metadata !2842, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i8 0, metadata !2843, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i8 0, metadata !2844, metadata !DIExpression()), !dbg !2845
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2849
  %62 = load i8, i8* %61, align 1, !dbg !2849, !tbaa !1342
  %63 = icmp eq i8 %62, 0, !dbg !2849
  br i1 %63, label %64, label %68, !dbg !2851

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2852, !tbaa !1342
  %66 = icmp eq i8 %65, 96, !dbg !2853
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.70, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.71, i64 0, i64 0), !dbg !2852
  br label %71, !dbg !2854

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2855
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), !dbg !2856
  br label %71, !dbg !2857

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2677
  ret i8* %72, !dbg !2858
}

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #15

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #16

; Function Attrs: nounwind
declare !dbg !461 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !465 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2859 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2863, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i64 %1, metadata !2864, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2865, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i8* %0, metadata !2867, metadata !DIExpression()) #18, !dbg !2880
  call void @llvm.dbg.value(metadata i64 %1, metadata !2872, metadata !DIExpression()) #18, !dbg !2880
  call void @llvm.dbg.value(metadata i64* null, metadata !2873, metadata !DIExpression()) #18, !dbg !2880
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2874, metadata !DIExpression()) #18, !dbg !2880
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2882
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2882
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2875, metadata !DIExpression()) #18, !dbg !2880
  %6 = tail call i32* @__errno_location() #24, !dbg !2883
  %7 = load i32, i32* %6, align 4, !dbg !2883, !tbaa !1351
  call void @llvm.dbg.value(metadata i32 %7, metadata !2876, metadata !DIExpression()) #18, !dbg !2880
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2884
  %9 = load i32, i32* %8, align 4, !dbg !2884, !tbaa !2078
  %10 = or i32 %9, 1, !dbg !2885
  call void @llvm.dbg.value(metadata i32 %10, metadata !2877, metadata !DIExpression()) #18, !dbg !2880
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2886
  %12 = load i32, i32* %11, align 8, !dbg !2886, !tbaa !2027
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2887
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2888
  %15 = load i8*, i8** %14, align 8, !dbg !2888, !tbaa !2101
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2889
  %17 = load i8*, i8** %16, align 8, !dbg !2889, !tbaa !2104
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #18, !dbg !2890
  %19 = add i64 %18, 1, !dbg !2891
  call void @llvm.dbg.value(metadata i64 %19, metadata !2878, metadata !DIExpression()) #18, !dbg !2880
  call void @llvm.dbg.value(metadata i64 %19, metadata !2892, metadata !DIExpression()) #18, !dbg !2897
  %20 = tail call noalias i8* @xmalloc(i64 %19) #18, !dbg !2899
  call void @llvm.dbg.value(metadata i8* %20, metadata !2879, metadata !DIExpression()) #18, !dbg !2880
  %21 = load i32, i32* %11, align 8, !dbg !2900, !tbaa !2027
  %22 = load i8*, i8** %14, align 8, !dbg !2901, !tbaa !2101
  %23 = load i8*, i8** %16, align 8, !dbg !2902, !tbaa !2104
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #18, !dbg !2903
  store i32 %7, i32* %6, align 4, !dbg !2904, !tbaa !1351
  ret i8* %20, !dbg !2905
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2868 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2867, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i64 %1, metadata !2872, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i64* %2, metadata !2873, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2874, metadata !DIExpression()), !dbg !2906
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2907
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2907
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2875, metadata !DIExpression()), !dbg !2906
  %7 = tail call i32* @__errno_location() #24, !dbg !2908
  %8 = load i32, i32* %7, align 4, !dbg !2908, !tbaa !1351
  call void @llvm.dbg.value(metadata i32 %8, metadata !2876, metadata !DIExpression()), !dbg !2906
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2909
  %10 = load i32, i32* %9, align 4, !dbg !2909, !tbaa !2078
  %11 = icmp ne i64* %2, null, !dbg !2910
  %12 = xor i1 %11, true, !dbg !2910
  %13 = zext i1 %12 to i32, !dbg !2910
  %14 = or i32 %10, %13, !dbg !2911
  call void @llvm.dbg.value(metadata i32 %14, metadata !2877, metadata !DIExpression()), !dbg !2906
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2912
  %16 = load i32, i32* %15, align 8, !dbg !2912, !tbaa !2027
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2913
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2914
  %19 = load i8*, i8** %18, align 8, !dbg !2914, !tbaa !2101
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2915
  %21 = load i8*, i8** %20, align 8, !dbg !2915, !tbaa !2104
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2916
  %23 = add i64 %22, 1, !dbg !2917
  call void @llvm.dbg.value(metadata i64 %23, metadata !2878, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i64 %23, metadata !2892, metadata !DIExpression()) #18, !dbg !2918
  %24 = tail call noalias i8* @xmalloc(i64 %23) #18, !dbg !2920
  call void @llvm.dbg.value(metadata i8* %24, metadata !2879, metadata !DIExpression()), !dbg !2906
  %25 = load i32, i32* %15, align 8, !dbg !2921, !tbaa !2027
  %26 = load i8*, i8** %18, align 8, !dbg !2922, !tbaa !2101
  %27 = load i8*, i8** %20, align 8, !dbg !2923, !tbaa !2104
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2924
  store i32 %8, i32* %7, align 4, !dbg !2925, !tbaa !1351
  br i1 %11, label %29, label %30, !dbg !2926

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2927, !tbaa !1383
  br label %30, !dbg !2929

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !2930
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2931 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2935, !tbaa !1254
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2933, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i32 1, metadata !2934, metadata !DIExpression()), !dbg !2936
  %2 = load i32, i32* @nslots, align 4, !dbg !2937, !tbaa !1351
  %3 = icmp sgt i32 %2, 1, !dbg !2940
  br i1 %3, label %4, label %12, !dbg !2941

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2934, metadata !DIExpression()), !dbg !2936
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2942
  %7 = load i8*, i8** %6, align 8, !dbg !2942, !tbaa !2943
  tail call void @free(i8* %7) #18, !dbg !2945
  %8 = add nuw nsw i64 %5, 1, !dbg !2946
  call void @llvm.dbg.value(metadata i64 %8, metadata !2934, metadata !DIExpression()), !dbg !2936
  %9 = load i32, i32* @nslots, align 4, !dbg !2937, !tbaa !1351
  %10 = sext i32 %9 to i64, !dbg !2940
  %11 = icmp slt i64 %8, %10, !dbg !2940
  br i1 %11, label %4, label %12, !dbg !2941, !llvm.loop !2947

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2949
  %14 = load i8*, i8** %13, align 8, !dbg !2949, !tbaa !2943
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2951
  br i1 %15, label %17, label %16, !dbg !2952

16:                                               ; preds = %12
  tail call void @free(i8* %14) #18, !dbg !2953
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2955, !tbaa !2956
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2957, !tbaa !2943
  br label %17, !dbg !2958

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2959
  br i1 %18, label %21, label %19, !dbg !2961

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2962
  tail call void @free(i8* %20) #18, !dbg !2964
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2965, !tbaa !1254
  br label %21, !dbg !2966

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2967, !tbaa !1351
  ret void, !dbg !2968
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2969 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2971, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8* %1, metadata !2972, metadata !DIExpression()), !dbg !2973
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2974
  ret i8* %3, !dbg !2975
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2976 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2980, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata i8* %1, metadata !2981, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata i64 %2, metadata !2982, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2983, metadata !DIExpression()), !dbg !2995
  %5 = tail call i32* @__errno_location() #24, !dbg !2996
  %6 = load i32, i32* %5, align 4, !dbg !2996, !tbaa !1351
  call void @llvm.dbg.value(metadata i32 %6, metadata !2984, metadata !DIExpression()), !dbg !2995
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2997, !tbaa !1254
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2985, metadata !DIExpression()), !dbg !2995
  %8 = icmp slt i32 %0, 0, !dbg !2998
  br i1 %8, label %9, label %10, !dbg !3000

9:                                                ; preds = %4
  tail call void @abort() #22, !dbg !3001
  unreachable, !dbg !3001

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3002, !tbaa !1351
  %12 = icmp sgt i32 %11, %0, !dbg !3003
  br i1 %12, label %34, label %13, !dbg !3004

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3005
  call void @llvm.dbg.value(metadata i1 %14, metadata !2986, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2989, metadata !DIExpression()), !dbg !3006
  %15 = icmp eq i32 %0, 2147483647, !dbg !3007
  br i1 %15, label %16, label %17, !dbg !3009

16:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !3010
  unreachable, !dbg !3010

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !3011
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3011
  %20 = add nuw nsw i32 %0, 1, !dbg !3012
  %21 = sext i32 %20 to i64, !dbg !3013
  %22 = shl nuw nsw i64 %21, 4, !dbg !3014
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #18, !dbg !3015
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3015
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2985, metadata !DIExpression()), !dbg !2995
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3016, !tbaa !1254
  br i1 %14, label %25, label %26, !dbg !3017

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3018, !tbaa.struct !3020
  br label %26, !dbg !3021

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3022, !tbaa !1351
  %28 = sext i32 %27 to i64, !dbg !3023
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3023
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3024
  %31 = sub nsw i32 %20, %27, !dbg !3025
  %32 = sext i32 %31 to i64, !dbg !3026
  %33 = shl nsw i64 %32, 4, !dbg !3027
  call void @llvm.dbg.value(metadata i8* %30, metadata !2425, metadata !DIExpression()) #18, !dbg !3028
  call void @llvm.dbg.value(metadata i32 0, metadata !2431, metadata !DIExpression()) #18, !dbg !3028
  call void @llvm.dbg.value(metadata i64 %33, metadata !2432, metadata !DIExpression()) #18, !dbg !3028
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #18, !dbg !3030
  store i32 %20, i32* @nslots, align 4, !dbg !3031, !tbaa !1351
  br label %34, !dbg !3032

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2995
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2985, metadata !DIExpression()), !dbg !2995
  %36 = zext i32 %0 to i64, !dbg !3033
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3034
  %38 = load i64, i64* %37, align 8, !dbg !3034, !tbaa !2956
  call void @llvm.dbg.value(metadata i64 %38, metadata !2990, metadata !DIExpression()), !dbg !3035
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3036
  %40 = load i8*, i8** %39, align 8, !dbg !3036, !tbaa !2943
  call void @llvm.dbg.value(metadata i8* %40, metadata !2992, metadata !DIExpression()), !dbg !3035
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3037
  %42 = load i32, i32* %41, align 4, !dbg !3037, !tbaa !2078
  %43 = or i32 %42, 1, !dbg !3038
  call void @llvm.dbg.value(metadata i32 %43, metadata !2993, metadata !DIExpression()), !dbg !3035
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3039
  %45 = load i32, i32* %44, align 8, !dbg !3039, !tbaa !2027
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3040
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3041
  %48 = load i8*, i8** %47, align 8, !dbg !3041, !tbaa !2101
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3042
  %50 = load i8*, i8** %49, align 8, !dbg !3042, !tbaa !2104
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3043
  call void @llvm.dbg.value(metadata i64 %51, metadata !2994, metadata !DIExpression()), !dbg !3035
  %52 = icmp ugt i64 %38, %51, !dbg !3044
  br i1 %52, label %63, label %53, !dbg !3046

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !3047
  call void @llvm.dbg.value(metadata i64 %54, metadata !2990, metadata !DIExpression()), !dbg !3035
  store i64 %54, i64* %37, align 8, !dbg !3049, !tbaa !2956
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3050
  br i1 %55, label %57, label %56, !dbg !3052

56:                                               ; preds = %53
  tail call void @free(i8* %40) #18, !dbg !3053
  br label %57, !dbg !3053

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2892, metadata !DIExpression()) #18, !dbg !3054
  %58 = tail call noalias i8* @xmalloc(i64 %54) #18, !dbg !3056
  call void @llvm.dbg.value(metadata i8* %58, metadata !2992, metadata !DIExpression()), !dbg !3035
  store i8* %58, i8** %39, align 8, !dbg !3057, !tbaa !2943
  %59 = load i32, i32* %44, align 8, !dbg !3058, !tbaa !2027
  %60 = load i8*, i8** %47, align 8, !dbg !3059, !tbaa !2101
  %61 = load i8*, i8** %49, align 8, !dbg !3060, !tbaa !2104
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3061
  br label %63, !dbg !3062

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3035
  call void @llvm.dbg.value(metadata i8* %64, metadata !2992, metadata !DIExpression()), !dbg !3035
  store i32 %6, i32* %5, align 4, !dbg !3063, !tbaa !1351
  ret i8* %64, !dbg !3064
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3065 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3069, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata i8* %1, metadata !3070, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata i64 %2, metadata !3071, metadata !DIExpression()), !dbg !3072
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3073
  ret i8* %4, !dbg !3074
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !3075 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3077, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i32 0, metadata !2971, metadata !DIExpression()) #18, !dbg !3079
  call void @llvm.dbg.value(metadata i8* %0, metadata !2972, metadata !DIExpression()) #18, !dbg !3079
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #18, !dbg !3081
  ret i8* %2, !dbg !3082
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3083 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3087, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata i64 %1, metadata !3088, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata i32 0, metadata !3069, metadata !DIExpression()) #18, !dbg !3090
  call void @llvm.dbg.value(metadata i8* %0, metadata !3070, metadata !DIExpression()) #18, !dbg !3090
  call void @llvm.dbg.value(metadata i64 %1, metadata !3071, metadata !DIExpression()) #18, !dbg !3090
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #18, !dbg !3092
  ret i8* %3, !dbg !3093
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3094 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3096, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata i32 %1, metadata !3097, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata i8* %2, metadata !3098, metadata !DIExpression()), !dbg !3100
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3101
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3101
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3099, metadata !DIExpression()), !dbg !3102
  call void @llvm.dbg.value(metadata i32 %1, metadata !3103, metadata !DIExpression()) #18, !dbg !3109
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3108, metadata !DIExpression()) #18, !dbg !3111
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #18, !dbg !3111, !alias.scope !3112
  %6 = icmp eq i32 %1, 10, !dbg !3115
  br i1 %6, label %7, label %8, !dbg !3117

7:                                                ; preds = %3
  tail call void @abort() #22, !dbg !3118, !noalias !3112
  unreachable, !dbg !3118

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3119
  store i32 %1, i32* %9, align 8, !dbg !3120, !tbaa !2027, !alias.scope !3112
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3121
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3122
  ret i8* %10, !dbg !3123
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3124 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3128, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i32 %1, metadata !3129, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i8* %2, metadata !3130, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i64 %3, metadata !3131, metadata !DIExpression()), !dbg !3133
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3134
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3134
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3132, metadata !DIExpression()), !dbg !3135
  call void @llvm.dbg.value(metadata i32 %1, metadata !3103, metadata !DIExpression()) #18, !dbg !3136
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3108, metadata !DIExpression()) #18, !dbg !3138
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #18, !dbg !3138, !alias.scope !3139
  %7 = icmp eq i32 %1, 10, !dbg !3142
  br i1 %7, label %8, label %9, !dbg !3143

8:                                                ; preds = %4
  tail call void @abort() #22, !dbg !3144, !noalias !3139
  unreachable, !dbg !3144

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3145
  store i32 %1, i32* %10, align 8, !dbg !3146, !tbaa !2027, !alias.scope !3139
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3147
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3148
  ret i8* %11, !dbg !3149
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3150 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3108, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3099, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i32 %0, metadata !3154, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata i8* %1, metadata !3155, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata i32 0, metadata !3096, metadata !DIExpression()) #18, !dbg !3161
  call void @llvm.dbg.value(metadata i32 %0, metadata !3097, metadata !DIExpression()) #18, !dbg !3161
  call void @llvm.dbg.value(metadata i8* %1, metadata !3098, metadata !DIExpression()) #18, !dbg !3161
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3162
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !3162
  call void @llvm.dbg.value(metadata i32 %0, metadata !3103, metadata !DIExpression()) #18, !dbg !3163
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #18, !dbg !3156, !alias.scope !3164
  %5 = icmp eq i32 %0, 10, !dbg !3167
  br i1 %5, label %6, label %7, !dbg !3168

6:                                                ; preds = %2
  tail call void @abort() #22, !dbg !3169, !noalias !3164
  unreachable, !dbg !3169

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3170
  store i32 %0, i32* %8, align 8, !dbg !3171, !tbaa !2027, !alias.scope !3164
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #18, !dbg !3172
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !3173
  ret i8* %9, !dbg !3174
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3175 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3108, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3132, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata i32 %0, metadata !3179, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.value(metadata i8* %1, metadata !3180, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.value(metadata i64 %2, metadata !3181, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.value(metadata i32 0, metadata !3128, metadata !DIExpression()) #18, !dbg !3187
  call void @llvm.dbg.value(metadata i32 %0, metadata !3129, metadata !DIExpression()) #18, !dbg !3187
  call void @llvm.dbg.value(metadata i8* %1, metadata !3130, metadata !DIExpression()) #18, !dbg !3187
  call void @llvm.dbg.value(metadata i64 %2, metadata !3131, metadata !DIExpression()) #18, !dbg !3187
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3188
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3188
  call void @llvm.dbg.value(metadata i32 %0, metadata !3103, metadata !DIExpression()) #18, !dbg !3189
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #18, !dbg !3182, !alias.scope !3190
  %6 = icmp eq i32 %0, 10, !dbg !3193
  br i1 %6, label %7, label %8, !dbg !3194

7:                                                ; preds = %3
  tail call void @abort() #22, !dbg !3195, !noalias !3190
  unreachable, !dbg !3195

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3196
  store i32 %0, i32* %9, align 8, !dbg !3197, !tbaa !2027, !alias.scope !3190
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #18, !dbg !3198
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3199
  ret i8* %10, !dbg !3200
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !3201 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3205, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata i64 %1, metadata !3206, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata i8 %2, metadata !3207, metadata !DIExpression()), !dbg !3209
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3210
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3210
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3208, metadata !DIExpression()), !dbg !3211
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3212, !tbaa.struct !3213
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2045, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata i8 %2, metadata !2046, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata i32 1, metadata !2047, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata i8 %2, metadata !2048, metadata !DIExpression()), !dbg !3214
  %6 = lshr i8 %2, 5, !dbg !3216
  %7 = zext i8 %6 to i64, !dbg !3216
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3217
  call void @llvm.dbg.value(metadata i32* %8, metadata !2049, metadata !DIExpression()), !dbg !3214
  %9 = and i8 %2, 31, !dbg !3218
  %10 = zext i8 %9 to i32, !dbg !3218
  call void @llvm.dbg.value(metadata i32 %10, metadata !2051, metadata !DIExpression()), !dbg !3214
  %11 = load i32, i32* %8, align 4, !dbg !3219, !tbaa !1351
  %12 = lshr i32 %11, %10, !dbg !3220
  %13 = and i32 %12, 1, !dbg !3221
  call void @llvm.dbg.value(metadata i32 %13, metadata !2052, metadata !DIExpression()), !dbg !3214
  %14 = xor i32 %13, 1, !dbg !3222
  %15 = shl i32 %14, %10, !dbg !3223
  %16 = xor i32 %15, %11, !dbg !3224
  store i32 %16, i32* %8, align 4, !dbg !3224, !tbaa !1351
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3225
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3226
  ret i8* %17, !dbg !3227
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !3228 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3208, metadata !DIExpression()), !dbg !3234
  call void @llvm.dbg.value(metadata i8* %0, metadata !3232, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.value(metadata i8 %1, metadata !3233, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.value(metadata i8* %0, metadata !3205, metadata !DIExpression()) #18, !dbg !3237
  call void @llvm.dbg.value(metadata i64 -1, metadata !3206, metadata !DIExpression()) #18, !dbg !3237
  call void @llvm.dbg.value(metadata i8 %1, metadata !3207, metadata !DIExpression()) #18, !dbg !3237
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3238
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !3238
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3239, !tbaa.struct !3213
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2045, metadata !DIExpression()) #18, !dbg !3240
  call void @llvm.dbg.value(metadata i8 %1, metadata !2046, metadata !DIExpression()) #18, !dbg !3240
  call void @llvm.dbg.value(metadata i32 1, metadata !2047, metadata !DIExpression()) #18, !dbg !3240
  call void @llvm.dbg.value(metadata i8 %1, metadata !2048, metadata !DIExpression()) #18, !dbg !3240
  %5 = lshr i8 %1, 5, !dbg !3242
  %6 = zext i8 %5 to i64, !dbg !3242
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3243
  call void @llvm.dbg.value(metadata i32* %7, metadata !2049, metadata !DIExpression()) #18, !dbg !3240
  %8 = and i8 %1, 31, !dbg !3244
  %9 = zext i8 %8 to i32, !dbg !3244
  call void @llvm.dbg.value(metadata i32 %9, metadata !2051, metadata !DIExpression()) #18, !dbg !3240
  %10 = load i32, i32* %7, align 4, !dbg !3245, !tbaa !1351
  %11 = lshr i32 %10, %9, !dbg !3246
  %12 = and i32 %11, 1, !dbg !3247
  call void @llvm.dbg.value(metadata i32 %12, metadata !2052, metadata !DIExpression()) #18, !dbg !3240
  %13 = xor i32 %12, 1, !dbg !3248
  %14 = shl i32 %13, %9, !dbg !3249
  %15 = xor i32 %14, %10, !dbg !3250
  store i32 %15, i32* %7, align 4, !dbg !3250, !tbaa !1351
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #18, !dbg !3251
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !3252
  ret i8* %16, !dbg !3253
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !3254 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3208, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i8* %0, metadata !3256, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata i8* %0, metadata !3232, metadata !DIExpression()) #18, !dbg !3261
  call void @llvm.dbg.value(metadata i8 58, metadata !3233, metadata !DIExpression()) #18, !dbg !3261
  call void @llvm.dbg.value(metadata i8* %0, metadata !3205, metadata !DIExpression()) #18, !dbg !3262
  call void @llvm.dbg.value(metadata i64 -1, metadata !3206, metadata !DIExpression()) #18, !dbg !3262
  call void @llvm.dbg.value(metadata i8 58, metadata !3207, metadata !DIExpression()) #18, !dbg !3262
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3263
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #18, !dbg !3263
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3264, !tbaa.struct !3213
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2045, metadata !DIExpression()) #18, !dbg !3265
  call void @llvm.dbg.value(metadata i8 58, metadata !2046, metadata !DIExpression()) #18, !dbg !3265
  call void @llvm.dbg.value(metadata i32 1, metadata !2047, metadata !DIExpression()) #18, !dbg !3265
  call void @llvm.dbg.value(metadata i8 58, metadata !2048, metadata !DIExpression()) #18, !dbg !3265
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3267
  call void @llvm.dbg.value(metadata i32* %4, metadata !2049, metadata !DIExpression()) #18, !dbg !3265
  call void @llvm.dbg.value(metadata i32 26, metadata !2051, metadata !DIExpression()) #18, !dbg !3265
  %5 = load i32, i32* %4, align 4, !dbg !3268, !tbaa !1351
  call void @llvm.dbg.value(metadata i32 %5, metadata !2052, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #18, !dbg !3265
  %6 = or i32 %5, 67108864, !dbg !3269
  store i32 %6, i32* %4, align 4, !dbg !3269, !tbaa !1351
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #18, !dbg !3270
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #18, !dbg !3271
  ret i8* %7, !dbg !3272
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3273 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3208, metadata !DIExpression()), !dbg !3277
  call void @llvm.dbg.value(metadata i8* %0, metadata !3275, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.value(metadata i64 %1, metadata !3276, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.value(metadata i8* %0, metadata !3205, metadata !DIExpression()) #18, !dbg !3280
  call void @llvm.dbg.value(metadata i64 %1, metadata !3206, metadata !DIExpression()) #18, !dbg !3280
  call void @llvm.dbg.value(metadata i8 58, metadata !3207, metadata !DIExpression()) #18, !dbg !3280
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3281
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !3281
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3282, !tbaa.struct !3213
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2045, metadata !DIExpression()) #18, !dbg !3283
  call void @llvm.dbg.value(metadata i8 58, metadata !2046, metadata !DIExpression()) #18, !dbg !3283
  call void @llvm.dbg.value(metadata i32 1, metadata !2047, metadata !DIExpression()) #18, !dbg !3283
  call void @llvm.dbg.value(metadata i8 58, metadata !2048, metadata !DIExpression()) #18, !dbg !3283
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3285
  call void @llvm.dbg.value(metadata i32* %5, metadata !2049, metadata !DIExpression()) #18, !dbg !3283
  call void @llvm.dbg.value(metadata i32 26, metadata !2051, metadata !DIExpression()) #18, !dbg !3283
  %6 = load i32, i32* %5, align 4, !dbg !3286, !tbaa !1351
  call void @llvm.dbg.value(metadata i32 %6, metadata !2052, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #18, !dbg !3283
  %7 = or i32 %6, 67108864, !dbg !3287
  store i32 %7, i32* %5, align 4, !dbg !3287, !tbaa !1351
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #18, !dbg !3288
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !3289
  ret i8* %8, !dbg !3290
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3291 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3108, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3297
  call void @llvm.dbg.value(metadata i32 %0, metadata !3293, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i32 %1, metadata !3294, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i8* %2, metadata !3295, metadata !DIExpression()), !dbg !3299
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3300
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3300
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3296, metadata !DIExpression()), !dbg !3301
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3302
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3302
  call void @llvm.dbg.value(metadata i32 %1, metadata !3103, metadata !DIExpression()) #18, !dbg !3303
  call void @llvm.dbg.value(metadata i32 0, metadata !3108, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3303
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !3297, !alias.scope !3304
  %8 = icmp eq i32 %1, 10, !dbg !3307
  br i1 %8, label %9, label %10, !dbg !3308

9:                                                ; preds = %3
  tail call void @abort() #22, !dbg !3309, !noalias !3304
  unreachable, !dbg !3309

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3108, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3303
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3302
  store i32 %1, i32* %11, align 8, !dbg !3302, !tbaa.struct !3213
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3302
  %13 = bitcast i32* %12 to i8*, !dbg !3302
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !3302, !tbaa.struct !3213
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3302
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2045, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i8 58, metadata !2046, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i32 1, metadata !2047, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i8 58, metadata !2048, metadata !DIExpression()), !dbg !3310
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3312
  call void @llvm.dbg.value(metadata i32* %14, metadata !2049, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i32 26, metadata !2051, metadata !DIExpression()), !dbg !3310
  %15 = load i32, i32* %14, align 4, !dbg !3313, !tbaa !1351
  call void @llvm.dbg.value(metadata i32 %15, metadata !2052, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3310
  %16 = or i32 %15, 67108864, !dbg !3314
  store i32 %16, i32* %14, align 4, !dbg !3314, !tbaa !1351
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3315
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3316
  ret i8* %17, !dbg !3317
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3318 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3326, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata i32 %0, metadata !3322, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i8* %1, metadata !3323, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i8* %2, metadata !3324, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i8* %3, metadata !3325, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i32 %0, metadata !3331, metadata !DIExpression()) #18, !dbg !3339
  call void @llvm.dbg.value(metadata i8* %1, metadata !3332, metadata !DIExpression()) #18, !dbg !3339
  call void @llvm.dbg.value(metadata i8* %2, metadata !3333, metadata !DIExpression()) #18, !dbg !3339
  call void @llvm.dbg.value(metadata i8* %3, metadata !3334, metadata !DIExpression()) #18, !dbg !3339
  call void @llvm.dbg.value(metadata i64 -1, metadata !3335, metadata !DIExpression()) #18, !dbg !3339
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3340
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3340
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3341, !tbaa.struct !3213
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2085, metadata !DIExpression()) #18, !dbg !3342
  call void @llvm.dbg.value(metadata i8* %1, metadata !2086, metadata !DIExpression()) #18, !dbg !3342
  call void @llvm.dbg.value(metadata i8* %2, metadata !2087, metadata !DIExpression()) #18, !dbg !3342
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2085, metadata !DIExpression()) #18, !dbg !3342
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3344
  store i32 10, i32* %7, align 8, !dbg !3345, !tbaa !2027
  %8 = icmp ne i8* %1, null, !dbg !3346
  %9 = icmp ne i8* %2, null, !dbg !3347
  %10 = and i1 %8, %9, !dbg !3348
  br i1 %10, label %12, label %11, !dbg !3348

11:                                               ; preds = %4
  tail call void @abort() #22, !dbg !3349
  unreachable, !dbg !3349

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3350
  store i8* %1, i8** %13, align 8, !dbg !3351, !tbaa !2101
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3352
  store i8* %2, i8** %14, align 8, !dbg !3353, !tbaa !2104
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #18, !dbg !3354
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3355
  ret i8* %15, !dbg !3356
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !3327 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3331, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata i8* %1, metadata !3332, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata i8* %2, metadata !3333, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata i8* %3, metadata !3334, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata i64 %4, metadata !3335, metadata !DIExpression()), !dbg !3357
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3358
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #18, !dbg !3358
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3326, metadata !DIExpression()), !dbg !3359
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3360, !tbaa.struct !3213
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2085, metadata !DIExpression()) #18, !dbg !3361
  call void @llvm.dbg.value(metadata i8* %1, metadata !2086, metadata !DIExpression()) #18, !dbg !3361
  call void @llvm.dbg.value(metadata i8* %2, metadata !2087, metadata !DIExpression()) #18, !dbg !3361
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2085, metadata !DIExpression()) #18, !dbg !3361
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3363
  store i32 10, i32* %8, align 8, !dbg !3364, !tbaa !2027
  %9 = icmp ne i8* %1, null, !dbg !3365
  %10 = icmp ne i8* %2, null, !dbg !3366
  %11 = and i1 %9, %10, !dbg !3367
  br i1 %11, label %13, label %12, !dbg !3367

12:                                               ; preds = %5
  tail call void @abort() #22, !dbg !3368
  unreachable, !dbg !3368

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3369
  store i8* %1, i8** %14, align 8, !dbg !3370, !tbaa !2101
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3371
  store i8* %2, i8** %15, align 8, !dbg !3372, !tbaa !2104
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3373
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #18, !dbg !3374
  ret i8* %16, !dbg !3375
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3376 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3326, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i8* %0, metadata !3380, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i8* %1, metadata !3381, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i8* %2, metadata !3382, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i32 0, metadata !3322, metadata !DIExpression()) #18, !dbg !3387
  call void @llvm.dbg.value(metadata i8* %0, metadata !3323, metadata !DIExpression()) #18, !dbg !3387
  call void @llvm.dbg.value(metadata i8* %1, metadata !3324, metadata !DIExpression()) #18, !dbg !3387
  call void @llvm.dbg.value(metadata i8* %2, metadata !3325, metadata !DIExpression()) #18, !dbg !3387
  call void @llvm.dbg.value(metadata i32 0, metadata !3331, metadata !DIExpression()) #18, !dbg !3388
  call void @llvm.dbg.value(metadata i8* %0, metadata !3332, metadata !DIExpression()) #18, !dbg !3388
  call void @llvm.dbg.value(metadata i8* %1, metadata !3333, metadata !DIExpression()) #18, !dbg !3388
  call void @llvm.dbg.value(metadata i8* %2, metadata !3334, metadata !DIExpression()) #18, !dbg !3388
  call void @llvm.dbg.value(metadata i64 -1, metadata !3335, metadata !DIExpression()) #18, !dbg !3388
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3389
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3389
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3390, !tbaa.struct !3213
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2085, metadata !DIExpression()) #18, !dbg !3391
  call void @llvm.dbg.value(metadata i8* %0, metadata !2086, metadata !DIExpression()) #18, !dbg !3391
  call void @llvm.dbg.value(metadata i8* %1, metadata !2087, metadata !DIExpression()) #18, !dbg !3391
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2085, metadata !DIExpression()) #18, !dbg !3391
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3393
  store i32 10, i32* %6, align 8, !dbg !3394, !tbaa !2027
  %7 = icmp ne i8* %0, null, !dbg !3395
  %8 = icmp ne i8* %1, null, !dbg !3396
  %9 = and i1 %7, %8, !dbg !3397
  br i1 %9, label %11, label %10, !dbg !3397

10:                                               ; preds = %3
  tail call void @abort() #22, !dbg !3398
  unreachable, !dbg !3398

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3399
  store i8* %0, i8** %12, align 8, !dbg !3400, !tbaa !2101
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3401
  store i8* %1, i8** %13, align 8, !dbg !3402, !tbaa !2104
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #18, !dbg !3403
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3404
  ret i8* %14, !dbg !3405
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3406 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3326, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i8* %0, metadata !3410, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i8* %1, metadata !3411, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i8* %2, metadata !3412, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i64 %3, metadata !3413, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i32 0, metadata !3331, metadata !DIExpression()) #18, !dbg !3417
  call void @llvm.dbg.value(metadata i8* %0, metadata !3332, metadata !DIExpression()) #18, !dbg !3417
  call void @llvm.dbg.value(metadata i8* %1, metadata !3333, metadata !DIExpression()) #18, !dbg !3417
  call void @llvm.dbg.value(metadata i8* %2, metadata !3334, metadata !DIExpression()) #18, !dbg !3417
  call void @llvm.dbg.value(metadata i64 %3, metadata !3335, metadata !DIExpression()) #18, !dbg !3417
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3418
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3418
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3419, !tbaa.struct !3213
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2085, metadata !DIExpression()) #18, !dbg !3420
  call void @llvm.dbg.value(metadata i8* %0, metadata !2086, metadata !DIExpression()) #18, !dbg !3420
  call void @llvm.dbg.value(metadata i8* %1, metadata !2087, metadata !DIExpression()) #18, !dbg !3420
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2085, metadata !DIExpression()) #18, !dbg !3420
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3422
  store i32 10, i32* %7, align 8, !dbg !3423, !tbaa !2027
  %8 = icmp ne i8* %0, null, !dbg !3424
  %9 = icmp ne i8* %1, null, !dbg !3425
  %10 = and i1 %8, %9, !dbg !3426
  br i1 %10, label %12, label %11, !dbg !3426

11:                                               ; preds = %4
  tail call void @abort() #22, !dbg !3427
  unreachable, !dbg !3427

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3428
  store i8* %0, i8** %13, align 8, !dbg !3429, !tbaa !2101
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3430
  store i8* %1, i8** %14, align 8, !dbg !3431, !tbaa !2104
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #18, !dbg !3432
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3433
  ret i8* %15, !dbg !3434
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3435 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3439, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i8* %1, metadata !3440, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i64 %2, metadata !3441, metadata !DIExpression()), !dbg !3442
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3443
  ret i8* %4, !dbg !3444
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3445 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3449, metadata !DIExpression()), !dbg !3451
  call void @llvm.dbg.value(metadata i64 %1, metadata !3450, metadata !DIExpression()), !dbg !3451
  call void @llvm.dbg.value(metadata i32 0, metadata !3439, metadata !DIExpression()) #18, !dbg !3452
  call void @llvm.dbg.value(metadata i8* %0, metadata !3440, metadata !DIExpression()) #18, !dbg !3452
  call void @llvm.dbg.value(metadata i64 %1, metadata !3441, metadata !DIExpression()) #18, !dbg !3452
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !3454
  ret i8* %3, !dbg !3455
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3456 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3460, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.value(metadata i8* %1, metadata !3461, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.value(metadata i32 %0, metadata !3439, metadata !DIExpression()) #18, !dbg !3463
  call void @llvm.dbg.value(metadata i8* %1, metadata !3440, metadata !DIExpression()) #18, !dbg !3463
  call void @llvm.dbg.value(metadata i64 -1, metadata !3441, metadata !DIExpression()) #18, !dbg !3463
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !3465
  ret i8* %3, !dbg !3466
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3467 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3469, metadata !DIExpression()), !dbg !3470
  call void @llvm.dbg.value(metadata i32 0, metadata !3460, metadata !DIExpression()) #18, !dbg !3471
  call void @llvm.dbg.value(metadata i8* %0, metadata !3461, metadata !DIExpression()) #18, !dbg !3471
  call void @llvm.dbg.value(metadata i32 0, metadata !3439, metadata !DIExpression()) #18, !dbg !3473
  call void @llvm.dbg.value(metadata i8* %0, metadata !3440, metadata !DIExpression()) #18, !dbg !3473
  call void @llvm.dbg.value(metadata i64 -1, metadata !3441, metadata !DIExpression()) #18, !dbg !3473
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !3475
  ret i8* %2, !dbg !3476
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3477 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3484, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i8* %1, metadata !3485, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i8* %2, metadata !3486, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i8* %3, metadata !3487, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i8** %4, metadata !3488, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i64 %5, metadata !3489, metadata !DIExpression()), !dbg !3490
  %7 = icmp eq i8* %1, null, !dbg !3491
  br i1 %7, label %10, label %8, !dbg !3493

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #18, !dbg !3494
  br label %12, !dbg !3494

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.79, i64 0, i64 0), i8* %2, i8* %3) #18, !dbg !3495
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.80, i64 0, i64 0), i32 5) #18, !dbg !3496
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #18, !dbg !3496
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.81, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3497
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.82, i64 0, i64 0), i32 5) #18, !dbg !3498
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.83, i64 0, i64 0)) #18, !dbg !3498
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.81, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3499
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
  ], !dbg !3500

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.84, i64 0, i64 0), i32 5) #18, !dbg !3501
  %21 = load i8*, i8** %4, align 8, !dbg !3501, !tbaa !1254
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #18, !dbg !3501
  br label %147, !dbg !3503

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.85, i64 0, i64 0), i32 5) #18, !dbg !3504
  %25 = load i8*, i8** %4, align 8, !dbg !3504, !tbaa !1254
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3504
  %27 = load i8*, i8** %26, align 8, !dbg !3504, !tbaa !1254
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #18, !dbg !3504
  br label %147, !dbg !3505

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.86, i64 0, i64 0), i32 5) #18, !dbg !3506
  %31 = load i8*, i8** %4, align 8, !dbg !3506, !tbaa !1254
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3506
  %33 = load i8*, i8** %32, align 8, !dbg !3506, !tbaa !1254
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3506
  %35 = load i8*, i8** %34, align 8, !dbg !3506, !tbaa !1254
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #18, !dbg !3506
  br label %147, !dbg !3507

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.87, i64 0, i64 0), i32 5) #18, !dbg !3508
  %39 = load i8*, i8** %4, align 8, !dbg !3508, !tbaa !1254
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3508
  %41 = load i8*, i8** %40, align 8, !dbg !3508, !tbaa !1254
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3508
  %43 = load i8*, i8** %42, align 8, !dbg !3508, !tbaa !1254
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3508
  %45 = load i8*, i8** %44, align 8, !dbg !3508, !tbaa !1254
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #18, !dbg !3508
  br label %147, !dbg !3509

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.88, i64 0, i64 0), i32 5) #18, !dbg !3510
  %49 = load i8*, i8** %4, align 8, !dbg !3510, !tbaa !1254
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3510
  %51 = load i8*, i8** %50, align 8, !dbg !3510, !tbaa !1254
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3510
  %53 = load i8*, i8** %52, align 8, !dbg !3510, !tbaa !1254
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3510
  %55 = load i8*, i8** %54, align 8, !dbg !3510, !tbaa !1254
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3510
  %57 = load i8*, i8** %56, align 8, !dbg !3510, !tbaa !1254
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #18, !dbg !3510
  br label %147, !dbg !3511

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.89, i64 0, i64 0), i32 5) #18, !dbg !3512
  %61 = load i8*, i8** %4, align 8, !dbg !3512, !tbaa !1254
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3512
  %63 = load i8*, i8** %62, align 8, !dbg !3512, !tbaa !1254
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3512
  %65 = load i8*, i8** %64, align 8, !dbg !3512, !tbaa !1254
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3512
  %67 = load i8*, i8** %66, align 8, !dbg !3512, !tbaa !1254
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3512
  %69 = load i8*, i8** %68, align 8, !dbg !3512, !tbaa !1254
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3512
  %71 = load i8*, i8** %70, align 8, !dbg !3512, !tbaa !1254
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #18, !dbg !3512
  br label %147, !dbg !3513

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.90, i64 0, i64 0), i32 5) #18, !dbg !3514
  %75 = load i8*, i8** %4, align 8, !dbg !3514, !tbaa !1254
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3514
  %77 = load i8*, i8** %76, align 8, !dbg !3514, !tbaa !1254
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3514
  %79 = load i8*, i8** %78, align 8, !dbg !3514, !tbaa !1254
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3514
  %81 = load i8*, i8** %80, align 8, !dbg !3514, !tbaa !1254
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3514
  %83 = load i8*, i8** %82, align 8, !dbg !3514, !tbaa !1254
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3514
  %85 = load i8*, i8** %84, align 8, !dbg !3514, !tbaa !1254
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3514
  %87 = load i8*, i8** %86, align 8, !dbg !3514, !tbaa !1254
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #18, !dbg !3514
  br label %147, !dbg !3515

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.91, i64 0, i64 0), i32 5) #18, !dbg !3516
  %91 = load i8*, i8** %4, align 8, !dbg !3516, !tbaa !1254
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3516
  %93 = load i8*, i8** %92, align 8, !dbg !3516, !tbaa !1254
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3516
  %95 = load i8*, i8** %94, align 8, !dbg !3516, !tbaa !1254
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3516
  %97 = load i8*, i8** %96, align 8, !dbg !3516, !tbaa !1254
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3516
  %99 = load i8*, i8** %98, align 8, !dbg !3516, !tbaa !1254
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3516
  %101 = load i8*, i8** %100, align 8, !dbg !3516, !tbaa !1254
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3516
  %103 = load i8*, i8** %102, align 8, !dbg !3516, !tbaa !1254
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3516
  %105 = load i8*, i8** %104, align 8, !dbg !3516, !tbaa !1254
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #18, !dbg !3516
  br label %147, !dbg !3517

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.92, i64 0, i64 0), i32 5) #18, !dbg !3518
  %109 = load i8*, i8** %4, align 8, !dbg !3518, !tbaa !1254
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3518
  %111 = load i8*, i8** %110, align 8, !dbg !3518, !tbaa !1254
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3518
  %113 = load i8*, i8** %112, align 8, !dbg !3518, !tbaa !1254
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3518
  %115 = load i8*, i8** %114, align 8, !dbg !3518, !tbaa !1254
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3518
  %117 = load i8*, i8** %116, align 8, !dbg !3518, !tbaa !1254
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3518
  %119 = load i8*, i8** %118, align 8, !dbg !3518, !tbaa !1254
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3518
  %121 = load i8*, i8** %120, align 8, !dbg !3518, !tbaa !1254
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3518
  %123 = load i8*, i8** %122, align 8, !dbg !3518, !tbaa !1254
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3518
  %125 = load i8*, i8** %124, align 8, !dbg !3518, !tbaa !1254
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #18, !dbg !3518
  br label %147, !dbg !3519

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.93, i64 0, i64 0), i32 5) #18, !dbg !3520
  %129 = load i8*, i8** %4, align 8, !dbg !3520, !tbaa !1254
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3520
  %131 = load i8*, i8** %130, align 8, !dbg !3520, !tbaa !1254
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3520
  %133 = load i8*, i8** %132, align 8, !dbg !3520, !tbaa !1254
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3520
  %135 = load i8*, i8** %134, align 8, !dbg !3520, !tbaa !1254
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3520
  %137 = load i8*, i8** %136, align 8, !dbg !3520, !tbaa !1254
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3520
  %139 = load i8*, i8** %138, align 8, !dbg !3520, !tbaa !1254
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3520
  %141 = load i8*, i8** %140, align 8, !dbg !3520, !tbaa !1254
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3520
  %143 = load i8*, i8** %142, align 8, !dbg !3520, !tbaa !1254
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3520
  %145 = load i8*, i8** %144, align 8, !dbg !3520, !tbaa !1254
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #18, !dbg !3520
  br label %147, !dbg !3521

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3522
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3523 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3527, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i8* %1, metadata !3528, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i8* %2, metadata !3529, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i8* %3, metadata !3530, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i8** %4, metadata !3531, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i64 0, metadata !3532, metadata !DIExpression()), !dbg !3533
  br label %6, !dbg !3534

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3536
  call void @llvm.dbg.value(metadata i64 %7, metadata !3532, metadata !DIExpression()), !dbg !3533
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3537
  %9 = load i8*, i8** %8, align 8, !dbg !3537, !tbaa !1254
  %10 = icmp eq i8* %9, null, !dbg !3539
  %11 = add i64 %7, 1, !dbg !3540
  call void @llvm.dbg.value(metadata i64 %11, metadata !3532, metadata !DIExpression()), !dbg !3533
  br i1 %10, label %12, label %6, !dbg !3539, !llvm.loop !3541

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3532, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i64 %7, metadata !3532, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i64 %7, metadata !3532, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i64 %7, metadata !3532, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i64 %7, metadata !3532, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i64 %7, metadata !3532, metadata !DIExpression()), !dbg !3533
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3543
  ret void, !dbg !3544
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3545 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3556, metadata !DIExpression()), !dbg !3564
  call void @llvm.dbg.value(metadata i8* %1, metadata !3557, metadata !DIExpression()), !dbg !3564
  call void @llvm.dbg.value(metadata i8* %2, metadata !3558, metadata !DIExpression()), !dbg !3564
  call void @llvm.dbg.value(metadata i8* %3, metadata !3559, metadata !DIExpression()), !dbg !3564
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3560, metadata !DIExpression()), !dbg !3564
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3565
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #18, !dbg !3565
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3562, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i64 0, metadata !3561, metadata !DIExpression()), !dbg !3564
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !3567
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !3567
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !3567
  %11 = load i32, i32* %8, align 8, !dbg !3570
  %12 = icmp ult i32 %11, 41, !dbg !3570
  br i1 %12, label %13, label %18, !dbg !3570

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3570
  %15 = zext i32 %11 to i64, !dbg !3570
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3570
  %17 = add nuw nsw i32 %11, 8, !dbg !3570
  store i32 %17, i32* %8, align 8, !dbg !3570
  br label %21, !dbg !3570

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3570
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3570
  store i8* %20, i8** %9, align 8, !dbg !3570
  br label %21, !dbg !3570

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3570
  %25 = load i8*, i8** %24, align 8, !dbg !3570
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3571
  store i8* %25, i8** %26, align 16, !dbg !3572, !tbaa !1254
  %27 = icmp eq i8* %25, null, !dbg !3573
  br i1 %27, label %30, label %28, !dbg !3574

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3561, metadata !DIExpression()), !dbg !3564
  %29 = icmp ult i32 %22, 41, !dbg !3570
  br i1 %29, label %35, label %32, !dbg !3570

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3575
  call void @llvm.dbg.value(metadata i64 %31, metadata !3561, metadata !DIExpression()), !dbg !3564
  call void @llvm.dbg.value(metadata i64 %31, metadata !3561, metadata !DIExpression()), !dbg !3564
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3576
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #18, !dbg !3577
  ret void, !dbg !3577

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3570
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3570
  store i8* %34, i8** %9, align 8, !dbg !3570
  br label %40, !dbg !3570

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3570
  %37 = zext i32 %22 to i64, !dbg !3570
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3570
  %39 = add nuw nsw i32 %22, 8, !dbg !3570
  store i32 %39, i32* %8, align 8, !dbg !3570
  br label %40, !dbg !3570

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3570
  %44 = load i8*, i8** %43, align 8, !dbg !3570
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3571
  store i8* %44, i8** %45, align 8, !dbg !3572, !tbaa !1254
  %46 = icmp eq i8* %44, null, !dbg !3573
  br i1 %46, label %30, label %47, !dbg !3574

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3561, metadata !DIExpression()), !dbg !3564
  %48 = icmp ult i32 %41, 41, !dbg !3570
  br i1 %48, label %52, label %49, !dbg !3570

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3570
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3570
  store i8* %51, i8** %9, align 8, !dbg !3570
  br label %57, !dbg !3570

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3570
  %54 = zext i32 %41 to i64, !dbg !3570
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3570
  %56 = add nuw nsw i32 %41, 8, !dbg !3570
  store i32 %56, i32* %8, align 8, !dbg !3570
  br label %57, !dbg !3570

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3570
  %61 = load i8*, i8** %60, align 8, !dbg !3570
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3571
  store i8* %61, i8** %62, align 16, !dbg !3572, !tbaa !1254
  %63 = icmp eq i8* %61, null, !dbg !3573
  br i1 %63, label %30, label %64, !dbg !3574

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3561, metadata !DIExpression()), !dbg !3564
  %65 = icmp ult i32 %58, 41, !dbg !3570
  br i1 %65, label %69, label %66, !dbg !3570

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3570
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3570
  store i8* %68, i8** %9, align 8, !dbg !3570
  br label %74, !dbg !3570

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3570
  %71 = zext i32 %58 to i64, !dbg !3570
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3570
  %73 = add nuw nsw i32 %58, 8, !dbg !3570
  store i32 %73, i32* %8, align 8, !dbg !3570
  br label %74, !dbg !3570

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3570
  %78 = load i8*, i8** %77, align 8, !dbg !3570
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3571
  store i8* %78, i8** %79, align 8, !dbg !3572, !tbaa !1254
  %80 = icmp eq i8* %78, null, !dbg !3573
  br i1 %80, label %30, label %81, !dbg !3574

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3561, metadata !DIExpression()), !dbg !3564
  %82 = icmp ult i32 %75, 41, !dbg !3570
  br i1 %82, label %86, label %83, !dbg !3570

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3570
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3570
  store i8* %85, i8** %9, align 8, !dbg !3570
  br label %91, !dbg !3570

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3570
  %88 = zext i32 %75 to i64, !dbg !3570
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3570
  %90 = add nuw nsw i32 %75, 8, !dbg !3570
  store i32 %90, i32* %8, align 8, !dbg !3570
  br label %91, !dbg !3570

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3570
  %95 = load i8*, i8** %94, align 8, !dbg !3570
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3571
  store i8* %95, i8** %96, align 16, !dbg !3572, !tbaa !1254
  %97 = icmp eq i8* %95, null, !dbg !3573
  br i1 %97, label %30, label %98, !dbg !3574

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3561, metadata !DIExpression()), !dbg !3564
  %99 = icmp ult i32 %92, 41, !dbg !3570
  br i1 %99, label %103, label %100, !dbg !3570

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3570
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3570
  store i8* %102, i8** %9, align 8, !dbg !3570
  br label %108, !dbg !3570

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3570
  %105 = zext i32 %92 to i64, !dbg !3570
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3570
  %107 = add nuw nsw i32 %92, 8, !dbg !3570
  store i32 %107, i32* %8, align 8, !dbg !3570
  br label %108, !dbg !3570

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3570
  %111 = load i8*, i8** %110, align 8, !dbg !3570
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3571
  store i8* %111, i8** %112, align 8, !dbg !3572, !tbaa !1254
  %113 = icmp eq i8* %111, null, !dbg !3573
  br i1 %113, label %30, label %114, !dbg !3574

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3561, metadata !DIExpression()), !dbg !3564
  %115 = load i8*, i8** %9, align 8, !dbg !3570
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3570
  store i8* %116, i8** %9, align 8, !dbg !3570
  %117 = bitcast i8* %115 to i8**, !dbg !3570
  %118 = load i8*, i8** %117, align 8, !dbg !3570
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3571
  store i8* %118, i8** %119, align 16, !dbg !3572, !tbaa !1254
  %120 = icmp eq i8* %118, null, !dbg !3573
  br i1 %120, label %30, label %121, !dbg !3574

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3561, metadata !DIExpression()), !dbg !3564
  %122 = load i8*, i8** %9, align 8, !dbg !3570
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3570
  store i8* %123, i8** %9, align 8, !dbg !3570
  %124 = bitcast i8* %122 to i8**, !dbg !3570
  %125 = load i8*, i8** %124, align 8, !dbg !3570
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3571
  store i8* %125, i8** %126, align 8, !dbg !3572, !tbaa !1254
  %127 = icmp eq i8* %125, null, !dbg !3573
  br i1 %127, label %30, label %128, !dbg !3574

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3561, metadata !DIExpression()), !dbg !3564
  %129 = load i8*, i8** %9, align 8, !dbg !3570
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3570
  store i8* %130, i8** %9, align 8, !dbg !3570
  %131 = bitcast i8* %129 to i8**, !dbg !3570
  %132 = load i8*, i8** %131, align 8, !dbg !3570
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3571
  store i8* %132, i8** %133, align 16, !dbg !3572, !tbaa !1254
  %134 = icmp eq i8* %132, null, !dbg !3573
  br i1 %134, label %30, label %135, !dbg !3574

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3561, metadata !DIExpression()), !dbg !3564
  %136 = load i8*, i8** %9, align 8, !dbg !3570
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3570
  store i8* %137, i8** %9, align 8, !dbg !3570
  %138 = bitcast i8* %136 to i8**, !dbg !3570
  %139 = load i8*, i8** %138, align 8, !dbg !3570
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3571
  store i8* %139, i8** %140, align 8, !dbg !3572, !tbaa !1254
  %141 = icmp eq i8* %139, null, !dbg !3573
  %142 = select i1 %141, i64 9, i64 10, !dbg !3574
  br label %30, !dbg !3574
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3578 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3582, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i8* %1, metadata !3583, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i8* %2, metadata !3584, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i8* %3, metadata !3585, metadata !DIExpression()), !dbg !3592
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3593
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #18, !dbg !3593
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3586, metadata !DIExpression()), !dbg !3594
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3595
  call void @llvm.va_start(i8* nonnull %6), !dbg !3595
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3596
  call void @llvm.va_end(i8* nonnull %6), !dbg !3597
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #18, !dbg !3598
  ret void, !dbg !3598
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #18

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3599 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3600, !tbaa !1254
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.81, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3600
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.96, i64 0, i64 0), i32 5) #18, !dbg !3601
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.97, i64 0, i64 0)) #18, !dbg !3601
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.98, i64 0, i64 0), i32 5) #18, !dbg !3602
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.99, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.100, i64 0, i64 0)) #18, !dbg !3602
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.101, i64 0, i64 0), i32 5) #18, !dbg !3603
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.102, i64 0, i64 0)) #18, !dbg !3603
  ret void, !dbg !3604
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #19 !dbg !3605 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3609, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata i64 %1, metadata !3610, metadata !DIExpression()), !dbg !3611
  %3 = udiv i64 9223372036854775807, %1, !dbg !3612
  %4 = icmp ult i64 %3, %0, !dbg !3612
  br i1 %4, label %5, label %6, !dbg !3614

5:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !3615
  unreachable, !dbg !3615

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3616
  call void @llvm.dbg.value(metadata i64 %7, metadata !3617, metadata !DIExpression()) #18, !dbg !3623
  %8 = tail call noalias i8* @malloc(i64 %7) #18, !dbg !3625
  call void @llvm.dbg.value(metadata i8* %8, metadata !3622, metadata !DIExpression()) #18, !dbg !3623
  %9 = icmp eq i8* %8, null, !dbg !3626
  %10 = icmp ne i64 %7, 0, !dbg !3628
  %11 = and i1 %10, %9, !dbg !3629
  br i1 %11, label %12, label %13, !dbg !3629

12:                                               ; preds = %6
  tail call void @xalloc_die() #22, !dbg !3630
  unreachable, !dbg !3630

13:                                               ; preds = %6
  ret i8* %8, !dbg !3631
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3618 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3617, metadata !DIExpression()), !dbg !3632
  %2 = tail call noalias i8* @malloc(i64 %0) #18, !dbg !3633
  call void @llvm.dbg.value(metadata i8* %2, metadata !3622, metadata !DIExpression()), !dbg !3632
  %3 = icmp eq i8* %2, null, !dbg !3634
  %4 = icmp ne i64 %0, 0, !dbg !3635
  %5 = and i1 %4, %3, !dbg !3636
  br i1 %5, label %6, label %7, !dbg !3636

6:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3637
  unreachable, !dbg !3637

7:                                                ; preds = %1
  ret i8* %2, !dbg !3638
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #19 !dbg !3639 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3643, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i64 %1, metadata !3644, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i64 %2, metadata !3645, metadata !DIExpression()), !dbg !3646
  %4 = udiv i64 9223372036854775807, %2, !dbg !3647
  %5 = icmp ult i64 %4, %1, !dbg !3647
  br i1 %5, label %6, label %7, !dbg !3649

6:                                                ; preds = %3
  tail call void @xalloc_die() #22, !dbg !3650
  unreachable, !dbg !3650

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3651
  call void @llvm.dbg.value(metadata i8* %0, metadata !3652, metadata !DIExpression()) #18, !dbg !3658
  call void @llvm.dbg.value(metadata i64 %8, metadata !3657, metadata !DIExpression()) #18, !dbg !3658
  %9 = icmp eq i64 %8, 0, !dbg !3660
  %10 = icmp ne i8* %0, null, !dbg !3662
  %11 = and i1 %10, %9, !dbg !3663
  br i1 %11, label %12, label %13, !dbg !3663

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #18, !dbg !3664
  br label %19, !dbg !3666

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #18, !dbg !3667
  call void @llvm.dbg.value(metadata i8* %14, metadata !3652, metadata !DIExpression()) #18, !dbg !3658
  %15 = icmp eq i8* %14, null, !dbg !3668
  %16 = icmp ne i64 %8, 0, !dbg !3670
  %17 = and i1 %16, %15, !dbg !3671
  br i1 %17, label %18, label %19, !dbg !3671

18:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !3672
  unreachable, !dbg !3672

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3658
  ret i8* %20, !dbg !3673
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3653 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3652, metadata !DIExpression()), !dbg !3674
  call void @llvm.dbg.value(metadata i64 %1, metadata !3657, metadata !DIExpression()), !dbg !3674
  %3 = icmp eq i64 %1, 0, !dbg !3675
  %4 = icmp ne i8* %0, null, !dbg !3676
  %5 = and i1 %4, %3, !dbg !3677
  br i1 %5, label %6, label %7, !dbg !3677

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #18, !dbg !3678
  br label %13, !dbg !3679

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #18, !dbg !3680
  call void @llvm.dbg.value(metadata i8* %8, metadata !3652, metadata !DIExpression()), !dbg !3674
  %9 = icmp eq i8* %8, null, !dbg !3681
  %10 = icmp ne i64 %1, 0, !dbg !3682
  %11 = and i1 %10, %9, !dbg !3683
  br i1 %11, label %12, label %13, !dbg !3683

12:                                               ; preds = %7
  tail call void @xalloc_die() #22, !dbg !3684
  unreachable, !dbg !3684

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3674
  ret i8* %14, !dbg !3685
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #19 !dbg !610 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !612, metadata !DIExpression()), !dbg !3686
  call void @llvm.dbg.value(metadata i64* %1, metadata !613, metadata !DIExpression()), !dbg !3686
  call void @llvm.dbg.value(metadata i64 %2, metadata !614, metadata !DIExpression()), !dbg !3686
  %4 = load i64, i64* %1, align 8, !dbg !3687, !tbaa !1383
  call void @llvm.dbg.value(metadata i64 %4, metadata !615, metadata !DIExpression()), !dbg !3686
  %5 = icmp eq i8* %0, null, !dbg !3688
  br i1 %5, label %6, label %20, !dbg !3690

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3691
  br i1 %7, label %8, label %13, !dbg !3694

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3695
  call void @llvm.dbg.value(metadata i64 %9, metadata !615, metadata !DIExpression()), !dbg !3686
  %10 = icmp ugt i64 %2, 128, !dbg !3697
  %11 = zext i1 %10 to i64, !dbg !3697
  %12 = add nuw nsw i64 %9, %11, !dbg !3698
  call void @llvm.dbg.value(metadata i64 %12, metadata !615, metadata !DIExpression()), !dbg !3686
  br label %13, !dbg !3699

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3686
  call void @llvm.dbg.value(metadata i64 %14, metadata !615, metadata !DIExpression()), !dbg !3686
  %15 = udiv i64 9223372036854775807, %2, !dbg !3700
  %16 = icmp ult i64 %15, %14, !dbg !3700
  br i1 %16, label %19, label %17, !dbg !3702

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !615, metadata !DIExpression()), !dbg !3686
  store i64 %14, i64* %1, align 8, !dbg !3703, !tbaa !1383
  %18 = mul i64 %14, %2, !dbg !3704
  call void @llvm.dbg.value(metadata i8* %0, metadata !3652, metadata !DIExpression()) #18, !dbg !3705
  call void @llvm.dbg.value(metadata i64 %28, metadata !3657, metadata !DIExpression()) #18, !dbg !3705
  br label %31, !dbg !3707

19:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !3708
  unreachable, !dbg !3708

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3709
  %22 = icmp ugt i64 %21, %4, !dbg !3712
  br i1 %22, label %24, label %23, !dbg !3713

23:                                               ; preds = %20
  tail call void @xalloc_die() #22, !dbg !3714
  unreachable, !dbg !3714

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3715
  %26 = add nuw i64 %4, 1, !dbg !3716
  %27 = add i64 %26, %25, !dbg !3717
  call void @llvm.dbg.value(metadata i64 %27, metadata !615, metadata !DIExpression()), !dbg !3686
  call void @llvm.dbg.value(metadata i64 %27, metadata !615, metadata !DIExpression()), !dbg !3686
  store i64 %27, i64* %1, align 8, !dbg !3703, !tbaa !1383
  %28 = mul i64 %27, %2, !dbg !3704
  call void @llvm.dbg.value(metadata i8* %0, metadata !3652, metadata !DIExpression()) #18, !dbg !3705
  call void @llvm.dbg.value(metadata i64 %28, metadata !3657, metadata !DIExpression()) #18, !dbg !3705
  %29 = icmp eq i64 %28, 0, !dbg !3718
  br i1 %29, label %30, label %31, !dbg !3707

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #18, !dbg !3719
  br label %38, !dbg !3720

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #18, !dbg !3721
  call void @llvm.dbg.value(metadata i8* %33, metadata !3652, metadata !DIExpression()) #18, !dbg !3705
  %34 = icmp eq i8* %33, null, !dbg !3722
  %35 = icmp ne i64 %32, 0, !dbg !3723
  %36 = and i1 %35, %34, !dbg !3724
  br i1 %36, label %37, label %38, !dbg !3724

37:                                               ; preds = %31
  tail call void @xalloc_die() #22, !dbg !3725
  unreachable, !dbg !3725

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3705
  ret i8* %39, !dbg !3726
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #19 !dbg !3727 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3729, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i64 %0, metadata !3617, metadata !DIExpression()) #18, !dbg !3731
  %2 = tail call noalias i8* @malloc(i64 %0) #18, !dbg !3733
  call void @llvm.dbg.value(metadata i8* %2, metadata !3622, metadata !DIExpression()) #18, !dbg !3731
  %3 = icmp eq i8* %2, null, !dbg !3734
  %4 = icmp ne i64 %0, 0, !dbg !3735
  %5 = and i1 %4, %3, !dbg !3736
  br i1 %5, label %6, label %7, !dbg !3736

6:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3737
  unreachable, !dbg !3737

7:                                                ; preds = %1
  ret i8* %2, !dbg !3738
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3739 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3743, metadata !DIExpression()), !dbg !3745
  call void @llvm.dbg.value(metadata i64* %1, metadata !3744, metadata !DIExpression()), !dbg !3745
  call void @llvm.dbg.value(metadata i8* %0, metadata !612, metadata !DIExpression()) #18, !dbg !3746
  call void @llvm.dbg.value(metadata i64* %1, metadata !613, metadata !DIExpression()) #18, !dbg !3746
  call void @llvm.dbg.value(metadata i64 1, metadata !614, metadata !DIExpression()) #18, !dbg !3746
  %3 = load i64, i64* %1, align 8, !dbg !3748, !tbaa !1383
  call void @llvm.dbg.value(metadata i64 %3, metadata !615, metadata !DIExpression()) #18, !dbg !3746
  %4 = icmp eq i8* %0, null, !dbg !3749
  br i1 %4, label %5, label %12, !dbg !3750

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3751
  br i1 %6, label %9, label %7, !dbg !3752

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !615, metadata !DIExpression()) #18, !dbg !3746
  %8 = icmp slt i64 %3, 0, !dbg !3753
  br i1 %8, label %11, label %9, !dbg !3754

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !615, metadata !DIExpression()) #18, !dbg !3746
  store i64 %10, i64* %1, align 8, !dbg !3755, !tbaa !1383
  call void @llvm.dbg.value(metadata i8* %0, metadata !3652, metadata !DIExpression()) #18, !dbg !3756
  call void @llvm.dbg.value(metadata i64 %18, metadata !3657, metadata !DIExpression()) #18, !dbg !3756
  br label %21, !dbg !3758

11:                                               ; preds = %7
  tail call void @xalloc_die() #22, !dbg !3759
  unreachable, !dbg !3759

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3760
  br i1 %13, label %15, label %14, !dbg !3761

14:                                               ; preds = %12
  tail call void @xalloc_die() #22, !dbg !3762
  unreachable, !dbg !3762

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3763
  %17 = add nuw nsw i64 %3, 1, !dbg !3764
  %18 = add nuw nsw i64 %17, %16, !dbg !3765
  call void @llvm.dbg.value(metadata i64 %18, metadata !615, metadata !DIExpression()) #18, !dbg !3746
  call void @llvm.dbg.value(metadata i64 %18, metadata !615, metadata !DIExpression()) #18, !dbg !3746
  store i64 %18, i64* %1, align 8, !dbg !3755, !tbaa !1383
  call void @llvm.dbg.value(metadata i8* %0, metadata !3652, metadata !DIExpression()) #18, !dbg !3756
  call void @llvm.dbg.value(metadata i64 %18, metadata !3657, metadata !DIExpression()) #18, !dbg !3756
  %19 = icmp eq i64 %18, 0, !dbg !3766
  br i1 %19, label %20, label %21, !dbg !3758

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #18, !dbg !3767
  br label %28, !dbg !3768

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #18, !dbg !3769
  call void @llvm.dbg.value(metadata i8* %23, metadata !3652, metadata !DIExpression()) #18, !dbg !3756
  %24 = icmp eq i8* %23, null, !dbg !3770
  %25 = icmp ne i64 %22, 0, !dbg !3771
  %26 = and i1 %25, %24, !dbg !3772
  br i1 %26, label %27, label %28, !dbg !3772

27:                                               ; preds = %21
  tail call void @xalloc_die() #22, !dbg !3773
  unreachable, !dbg !3773

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3756
  ret i8* %29, !dbg !3774
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3775 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3777, metadata !DIExpression()), !dbg !3778
  call void @llvm.dbg.value(metadata i64 %0, metadata !3779, metadata !DIExpression()) #18, !dbg !3784
  call void @llvm.dbg.value(metadata i64 1, metadata !3782, metadata !DIExpression()) #18, !dbg !3784
  %2 = icmp slt i64 %0, 0, !dbg !3786
  br i1 %2, label %6, label %3, !dbg !3788

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #18, !dbg !3789
  call void @llvm.dbg.value(metadata i8* %4, metadata !3783, metadata !DIExpression()) #18, !dbg !3784
  %5 = icmp eq i8* %4, null, !dbg !3790
  br i1 %5, label %6, label %7, !dbg !3791

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #22, !dbg !3792
  unreachable, !dbg !3792

7:                                                ; preds = %3
  ret i8* %4, !dbg !3793
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3780 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3779, metadata !DIExpression()), !dbg !3794
  call void @llvm.dbg.value(metadata i64 %1, metadata !3782, metadata !DIExpression()), !dbg !3794
  %3 = udiv i64 9223372036854775807, %1, !dbg !3795
  %4 = icmp ult i64 %3, %0, !dbg !3795
  br i1 %4, label %8, label %5, !dbg !3796

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #18, !dbg !3797
  call void @llvm.dbg.value(metadata i8* %6, metadata !3783, metadata !DIExpression()), !dbg !3794
  %7 = icmp eq i8* %6, null, !dbg !3798
  br i1 %7, label %8, label %9, !dbg !3799

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #22, !dbg !3800
  unreachable, !dbg !3800

9:                                                ; preds = %5
  ret i8* %6, !dbg !3801
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3802 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3806, metadata !DIExpression()), !dbg !3808
  call void @llvm.dbg.value(metadata i64 %1, metadata !3807, metadata !DIExpression()), !dbg !3808
  call void @llvm.dbg.value(metadata i64 %1, metadata !3617, metadata !DIExpression()) #18, !dbg !3809
  %3 = tail call noalias i8* @malloc(i64 %1) #18, !dbg !3811
  call void @llvm.dbg.value(metadata i8* %3, metadata !3622, metadata !DIExpression()) #18, !dbg !3809
  %4 = icmp eq i8* %3, null, !dbg !3812
  %5 = icmp ne i64 %1, 0, !dbg !3813
  %6 = and i1 %5, %4, !dbg !3814
  br i1 %6, label %7, label %8, !dbg !3814

7:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !3815
  unreachable, !dbg !3815

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3816, metadata !DIExpression()) #18, !dbg !3825
  call void @llvm.dbg.value(metadata i8* %0, metadata !3823, metadata !DIExpression()) #18, !dbg !3825
  call void @llvm.dbg.value(metadata i64 %1, metadata !3824, metadata !DIExpression()) #18, !dbg !3825
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #18, !dbg !3827
  ret i8* %3, !dbg !3828
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3829 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3831, metadata !DIExpression()), !dbg !3832
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #21, !dbg !3833
  %3 = add i64 %2, 1, !dbg !3834
  call void @llvm.dbg.value(metadata i8* %0, metadata !3806, metadata !DIExpression()) #18, !dbg !3835
  call void @llvm.dbg.value(metadata i64 %3, metadata !3807, metadata !DIExpression()) #18, !dbg !3835
  call void @llvm.dbg.value(metadata i64 %3, metadata !3617, metadata !DIExpression()) #18, !dbg !3837
  %4 = tail call noalias i8* @malloc(i64 %3) #18, !dbg !3839
  call void @llvm.dbg.value(metadata i8* %4, metadata !3622, metadata !DIExpression()) #18, !dbg !3837
  %5 = icmp eq i8* %4, null, !dbg !3840
  %6 = icmp ne i64 %3, 0, !dbg !3841
  %7 = and i1 %6, %5, !dbg !3842
  br i1 %7, label %8, label %9, !dbg !3842

8:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3843
  unreachable, !dbg !3843

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3816, metadata !DIExpression()) #18, !dbg !3844
  call void @llvm.dbg.value(metadata i8* %0, metadata !3823, metadata !DIExpression()) #18, !dbg !3844
  call void @llvm.dbg.value(metadata i64 %3, metadata !3824, metadata !DIExpression()) #18, !dbg !3844
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #18, !dbg !3846
  ret i8* %4, !dbg !3847
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3848 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3849, !tbaa !1351
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.113, i64 0, i64 0), i32 5) #18, !dbg !3850
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.114, i64 0, i64 0), i8* %2) #18, !dbg !3851
  tail call void @abort() #22, !dbg !3852
  unreachable, !dbg !3852
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrndup(i8* nocapture readonly %0, i64 %1) local_unnamed_addr #8 !dbg !3853 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3855, metadata !DIExpression()), !dbg !3858
  call void @llvm.dbg.value(metadata i64 %1, metadata !3856, metadata !DIExpression()), !dbg !3858
  %3 = tail call noalias i8* @strndup(i8* %0, i64 %1) #18, !dbg !3859
  call void @llvm.dbg.value(metadata i8* %3, metadata !3857, metadata !DIExpression()), !dbg !3858
  %4 = icmp eq i8* %3, null, !dbg !3860
  br i1 %4, label %5, label %6, !dbg !3862

5:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !3863
  unreachable, !dbg !3863

6:                                                ; preds = %2
  ret i8* %3, !dbg !3864
}

; Function Attrs: nofree nounwind
declare noalias i8* @strndup(i8* nocapture readonly, i64) local_unnamed_addr #4

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #20 !dbg !3865 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3867, metadata !DIExpression()), !dbg !3873
  call void @llvm.dbg.value(metadata i64 %1, metadata !3868, metadata !DIExpression()), !dbg !3873
  %3 = icmp eq i64 %0, 0, !dbg !3874
  %4 = icmp eq i64 %1, 0, !dbg !3875
  %5 = or i1 %3, %4, !dbg !3876
  br i1 %5, label %11, label %6, !dbg !3876

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3870, metadata !DIExpression()), !dbg !3877
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3878
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3878
  br i1 %8, label %9, label %11, !dbg !3880

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #24, !dbg !3881
  store i32 12, i32* %10, align 4, !dbg !3883, !tbaa !1351
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3867, metadata !DIExpression()), !dbg !3873
  call void @llvm.dbg.value(metadata i64 %12, metadata !3868, metadata !DIExpression()), !dbg !3873
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #18, !dbg !3884
  call void @llvm.dbg.value(metadata i8* %14, metadata !3869, metadata !DIExpression()), !dbg !3873
  br label %15, !dbg !3885

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3873
  ret i8* %16, !dbg !3886
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3887 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3893, metadata !DIExpression()), !dbg !3897
  call void @llvm.dbg.value(metadata i32 0, metadata !3894, metadata !DIExpression()), !dbg !3897
  call void @llvm.dbg.value(metadata i32 0, metadata !3896, metadata !DIExpression()), !dbg !3897
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !3898
  call void @llvm.dbg.value(metadata i32 %2, metadata !3895, metadata !DIExpression()), !dbg !3897
  %3 = icmp slt i32 %2, 0, !dbg !3899
  br i1 %3, label %4, label %6, !dbg !3901

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3902
  br label %24, !dbg !3903

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #18, !dbg !3904
  %8 = icmp eq i32 %7, 0, !dbg !3904
  br i1 %8, label %13, label %9, !dbg !3906

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !3907
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #18, !dbg !3908
  %12 = icmp eq i64 %11, -1, !dbg !3909
  br i1 %12, label %16, label %13, !dbg !3910

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #18, !dbg !3911
  %15 = icmp eq i32 %14, 0, !dbg !3911
  br i1 %15, label %16, label %18, !dbg !3912

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3894, metadata !DIExpression()), !dbg !3897
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3913
  call void @llvm.dbg.value(metadata i32 %21, metadata !3896, metadata !DIExpression()), !dbg !3897
  br label %24, !dbg !3914

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #24, !dbg !3915
  %20 = load i32, i32* %19, align 4, !dbg !3915, !tbaa !1351
  call void @llvm.dbg.value(metadata i32 %20, metadata !3894, metadata !DIExpression()), !dbg !3897
  call void @llvm.dbg.value(metadata i32 %20, metadata !3894, metadata !DIExpression()), !dbg !3897
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3913
  call void @llvm.dbg.value(metadata i32 %21, metadata !3896, metadata !DIExpression()), !dbg !3897
  %22 = icmp eq i32 %20, 0, !dbg !3916
  br i1 %22, label %24, label %23, !dbg !3914

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3918, !tbaa !1351
  call void @llvm.dbg.value(metadata i32 -1, metadata !3896, metadata !DIExpression()), !dbg !3897
  br label %24, !dbg !3920

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3897
  ret i32 %25, !dbg !3921
}

; Function Attrs: nofree nounwind
declare !dbg !669 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !670 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3922 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3928, metadata !DIExpression()), !dbg !3929
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3930
  br i1 %2, label %6, label %3, !dbg !3932

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #18, !dbg !3933
  %5 = icmp eq i32 %4, 0, !dbg !3933
  br i1 %5, label %6, label %8, !dbg !3934

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3935
  br label %17, !dbg !3936

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3937, metadata !DIExpression()) #18, !dbg !3942
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3944
  %10 = load i32, i32* %9, align 8, !dbg !3944, !tbaa !1822
  %11 = and i32 %10, 256, !dbg !3946
  %12 = icmp eq i32 %11, 0, !dbg !3946
  br i1 %12, label %15, label %13, !dbg !3947

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #18, !dbg !3948
  br label %15, !dbg !3948

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3949
  br label %17, !dbg !3950

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3929
  ret i32 %18, !dbg !3951
}

; Function Attrs: nofree nounwind
declare !dbg !678 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3952 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3958, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.value(metadata i64 %1, metadata !3959, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.value(metadata i32 %2, metadata !3960, metadata !DIExpression()), !dbg !3964
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3965
  %5 = load i8*, i8** %4, align 8, !dbg !3965, !tbaa !1398
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3966
  %7 = load i8*, i8** %6, align 8, !dbg !3966, !tbaa !1395
  %8 = icmp eq i8* %5, %7, !dbg !3967
  br i1 %8, label %9, label %28, !dbg !3968

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3969
  %11 = load i8*, i8** %10, align 8, !dbg !3969, !tbaa !1433
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3970
  %13 = load i8*, i8** %12, align 8, !dbg !3970, !tbaa !3971
  %14 = icmp eq i8* %11, %13, !dbg !3972
  br i1 %14, label %15, label %28, !dbg !3973

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3974
  %17 = load i8*, i8** %16, align 8, !dbg !3974, !tbaa !3975
  %18 = icmp eq i8* %17, null, !dbg !3976
  br i1 %18, label %19, label %28, !dbg !3977

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !3978
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #18, !dbg !3979
  call void @llvm.dbg.value(metadata i64 %21, metadata !3961, metadata !DIExpression()), !dbg !3980
  %22 = icmp eq i64 %21, -1, !dbg !3981
  br i1 %22, label %30, label %23, !dbg !3983

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3984
  %25 = load i32, i32* %24, align 8, !dbg !3985, !tbaa !1822
  %26 = and i32 %25, -17, !dbg !3985
  store i32 %26, i32* %24, align 8, !dbg !3985, !tbaa !1822
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3986
  store i64 %21, i64* %27, align 8, !dbg !3987, !tbaa !3988
  br label %30, !dbg !3989

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3990
  br label %30, !dbg !3991

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3964
  ret i32 %31, !dbg !3992
}

; Function Attrs: nofree nounwind
declare !dbg !754 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3993 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4001, metadata !DIExpression()), !dbg !4010
  call void @llvm.dbg.value(metadata i8* %1, metadata !4002, metadata !DIExpression()), !dbg !4010
  call void @llvm.dbg.value(metadata i64 %2, metadata !4003, metadata !DIExpression()), !dbg !4010
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4004, metadata !DIExpression()), !dbg !4010
  %6 = bitcast i32* %5 to i8*, !dbg !4011
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #18, !dbg !4011
  %7 = icmp eq i32* %0, null, !dbg !4012
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4014
  call void @llvm.dbg.value(metadata i32* %8, metadata !4001, metadata !DIExpression()), !dbg !4010
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #18, !dbg !4015
  call void @llvm.dbg.value(metadata i64 %9, metadata !4005, metadata !DIExpression()), !dbg !4010
  %10 = icmp ugt i64 %9, -3, !dbg !4016
  %11 = icmp ne i64 %2, 0, !dbg !4017
  %12 = and i1 %11, %10, !dbg !4018
  br i1 %12, label %13, label %18, !dbg !4018

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #18, !dbg !4019
  br i1 %14, label %18, label %15, !dbg !4020

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4021, !tbaa !1342
  call void @llvm.dbg.value(metadata i8 %16, metadata !4007, metadata !DIExpression()), !dbg !4022
  %17 = zext i8 %16 to i32, !dbg !4023
  store i32 %17, i32* %8, align 4, !dbg !4024, !tbaa !1351
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4010
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #18, !dbg !4025
  ret i64 %19, !dbg !4025
}

; Function Attrs: nounwind
declare !dbg !760 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4026 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4032, metadata !DIExpression()), !dbg !4037
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #18, !dbg !4038
  call void @llvm.dbg.value(metadata i1 undef, metadata !4033, metadata !DIExpression()), !dbg !4037
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4039, metadata !DIExpression()), !dbg !4042
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4044
  %4 = load i32, i32* %3, align 8, !dbg !4044, !tbaa !1822
  %5 = and i32 %4, 32, !dbg !4044
  %6 = icmp eq i32 %5, 0, !dbg !4045
  call void @llvm.dbg.value(metadata i1 %6, metadata !4035, metadata !DIExpression()), !dbg !4037
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #18, !dbg !4046
  %8 = icmp ne i32 %7, 0, !dbg !4047
  call void @llvm.dbg.value(metadata i1 %8, metadata !4036, metadata !DIExpression()), !dbg !4037
  br i1 %6, label %9, label %19, !dbg !4048

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4050
  call void @llvm.dbg.value(metadata i1 %10, metadata !4033, metadata !DIExpression()), !dbg !4037
  %11 = xor i1 %8, true, !dbg !4051
  %12 = or i1 %10, %11, !dbg !4051
  %13 = sext i1 %8 to i32, !dbg !4051
  br i1 %12, label %22, label %14, !dbg !4051

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #24, !dbg !4052
  %16 = load i32, i32* %15, align 4, !dbg !4052, !tbaa !1351
  %17 = icmp ne i32 %16, 9, !dbg !4053
  %18 = sext i1 %17 to i32, !dbg !4054
  br label %22, !dbg !4054

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4055

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #24, !dbg !4057
  store i32 0, i32* %21, align 4, !dbg !4059, !tbaa !1351
  br label %22, !dbg !4057

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4037
  ret i32 %23, !dbg !4060
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !4061 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4063, metadata !DIExpression()), !dbg !4068
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4069
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #18, !dbg !4069
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4064, metadata !DIExpression()), !dbg !4070
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #18, !dbg !4071
  %5 = icmp eq i32 %4, 0, !dbg !4071
  br i1 %5, label %6, label %13, !dbg !4073

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !4074
  %8 = load i16, i16* %7, align 16, !dbg !4074
  %9 = icmp eq i16 %8, 67, !dbg !4074
  br i1 %9, label %13, label %10, !dbg !4075

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.131, i64 0, i64 0), i64 6), !dbg !4076
  %12 = icmp ne i32 %11, 0, !dbg !4077
  br label %13, !dbg !4075

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !4068
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #18, !dbg !4078
  ret i1 %14, !dbg !4078
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !4079 {
  %1 = tail call i8* @nl_langinfo(i32 14) #18, !dbg !4082
  call void @llvm.dbg.value(metadata i8* %1, metadata !4081, metadata !DIExpression()), !dbg !4083
  %2 = icmp eq i8* %1, null, !dbg !4084
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.134, i64 0, i64 0), i8* %1, !dbg !4086
  call void @llvm.dbg.value(metadata i8* %3, metadata !4081, metadata !DIExpression()), !dbg !4083
  %4 = load i8, i8* %3, align 1, !dbg !4087, !tbaa !1342
  %5 = icmp eq i8 %4, 0, !dbg !4091
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.135, i64 0, i64 0), i8* %3, !dbg !4092
  call void @llvm.dbg.value(metadata i8* %6, metadata !4081, metadata !DIExpression()), !dbg !4083
  ret i8* %6, !dbg !4093
}

; Function Attrs: nounwind
declare !dbg !1211 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !4094 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4098, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata i8* %1, metadata !4099, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata i64 %2, metadata !4100, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata i32 %0, metadata !4102, metadata !DIExpression()) #18, !dbg !4111
  call void @llvm.dbg.value(metadata i8* %1, metadata !4105, metadata !DIExpression()) #18, !dbg !4111
  call void @llvm.dbg.value(metadata i64 %2, metadata !4106, metadata !DIExpression()) #18, !dbg !4111
  call void @llvm.dbg.value(metadata i32 %0, metadata !4113, metadata !DIExpression()) #18, !dbg !4119
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #18, !dbg !4121
  call void @llvm.dbg.value(metadata i8* %4, metadata !4118, metadata !DIExpression()) #18, !dbg !4119
  call void @llvm.dbg.value(metadata i8* %4, metadata !4107, metadata !DIExpression()) #18, !dbg !4111
  %5 = icmp eq i8* %4, null, !dbg !4122
  br i1 %5, label %6, label %9, !dbg !4123

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4124
  br i1 %7, label %19, label %8, !dbg !4127

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4128, !tbaa !1342
  br label %19, !dbg !4129

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #21, !dbg !4130
  call void @llvm.dbg.value(metadata i64 %10, metadata !4108, metadata !DIExpression()) #18, !dbg !4131
  %11 = icmp ult i64 %10, %2, !dbg !4132
  br i1 %11, label %12, label %14, !dbg !4134

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4135
  call void @llvm.dbg.value(metadata i8* %1, metadata !4137, metadata !DIExpression()) #18, !dbg !4142
  call void @llvm.dbg.value(metadata i8* %4, metadata !4140, metadata !DIExpression()) #18, !dbg !4142
  call void @llvm.dbg.value(metadata i64 %13, metadata !4141, metadata !DIExpression()) #18, !dbg !4142
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #18, !dbg !4144
  br label %19, !dbg !4145

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4146
  br i1 %15, label %19, label %16, !dbg !4149

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4150
  call void @llvm.dbg.value(metadata i8* %1, metadata !4137, metadata !DIExpression()) #18, !dbg !4152
  call void @llvm.dbg.value(metadata i8* %4, metadata !4140, metadata !DIExpression()) #18, !dbg !4152
  call void @llvm.dbg.value(metadata i64 %17, metadata !4141, metadata !DIExpression()) #18, !dbg !4152
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #18, !dbg !4154
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4155
  store i8 0, i8* %18, align 1, !dbg !4156, !tbaa !1342
  br label %19, !dbg !4157

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !4158
  ret i32 %20, !dbg !4159
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !4160 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4162, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata i32 %0, metadata !4113, metadata !DIExpression()) #18, !dbg !4164
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #18, !dbg !4166
  call void @llvm.dbg.value(metadata i8* %2, metadata !4118, metadata !DIExpression()) #18, !dbg !4164
  ret i8* %2, !dbg !4167
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
attributes #10 = { nofree norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nofree norecurse nounwind sspstrong uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nofree nounwind }
attributes #14 = { norecurse nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
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

!llvm.dbg.cu = !{!2, !168, !315, !320, !365, !521, !371, !412, !564, !515, !606, !622, !625, !628, !631, !675, !716, !757, !776, !814, !821, !1214}
!llvm.ident = !{!1217, !1217, !1217, !1217, !1217, !1217, !1217, !1217, !1217, !1217, !1217, !1217, !1217, !1217, !1217, !1217, !1217, !1217, !1217, !1217, !1217, !1217}
!llvm.module.flags = !{!1218, !1219, !1220, !1221, !1222}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "shortopts", scope: !2, file: !3, line: 51, type: !163, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !157, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/expand.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
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
!21 = !{!22, !32, !93, !97, !101, !105, !108, !111, !116, !131, !26, !83, !132, !136, !137, !141, !142, !145, !151, !30, !63, !155, !156}
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
!93 = !DISubprogram(name: "emit_tab_list_info", scope: !94, file: !94, line: 76, type: !95, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!94 = !DIFile(filename: "src/expand-common.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!95 = !DISubroutineType(types: !96)
!96 = !{null}
!97 = !DISubprogram(name: "set_program_name", scope: !98, file: !98, line: 37, type: !99, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!98 = !DIFile(filename: "./lib/progname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!99 = !DISubroutineType(types: !100)
!100 = !{null, !28}
!101 = !DISubprogram(name: "setlocale", scope: !102, file: !102, line: 122, type: !103, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!102 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!103 = !DISubroutineType(types: !104)
!104 = !{!26, !30, !28}
!105 = !DISubprogram(name: "bindtextdomain", scope: !23, file: !23, line: 86, type: !106, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!106 = !DISubroutineType(types: !107)
!107 = !{!26, !28, !28}
!108 = !DISubprogram(name: "textdomain", scope: !23, file: !23, line: 82, type: !109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!109 = !DISubroutineType(types: !110)
!110 = !{!26, !28}
!111 = !DISubprogram(name: "atexit", scope: !112, file: !112, line: 595, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!112 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!113 = !DISubroutineType(types: !114)
!114 = !{!30, !115}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!116 = !DISubprogram(name: "getopt_long", scope: !117, file: !117, line: 66, type: !118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!117 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!118 = !DISubroutineType(types: !119)
!119 = !{!30, !30, !120, !28, !122, !129}
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !117, line: 50, size: 256, elements: !125)
!125 = !{!126, !127, !128, !130}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !124, file: !117, line: 52, baseType: !28, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !124, file: !117, line: 55, baseType: !30, size: 32, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !124, file: !117, line: 56, baseType: !129, size: 64, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !124, file: !117, line: 57, baseType: !30, size: 32, offset: 192)
!131 = !DISubprogram(name: "parse_tab_stops", scope: !94, file: !94, line: 44, type: !99, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!132 = !DISubprogram(name: "version_etc", scope: !133, file: !133, line: 69, type: !134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!133 = !DIFile(filename: "./lib/version-etc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!134 = !DISubroutineType(types: !135)
!135 = !{null, !36, !28, !28, !28, null}
!136 = !DISubprogram(name: "finalize_tab_stops", scope: !94, file: !94, line: 54, type: !95, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!137 = !DISubprogram(name: "set_file_list", scope: !94, file: !94, line: 61, type: !138, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!138 = !DISubroutineType(types: !139)
!139 = !{null, !140}
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!141 = !DISubprogram(name: "cleanup_file_list_stdin", scope: !94, file: !94, line: 72, type: !95, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!142 = !DISubprogram(name: "next_file", scope: !94, file: !94, line: 68, type: !143, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!143 = !DISubroutineType(types: !144)
!144 = !{!36, !36}
!145 = !DISubprogram(name: "get_next_tab_column", scope: !94, file: !94, line: 48, type: !146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!146 = !DISubroutineType(types: !147)
!147 = !{!87, !87, !148, !149}
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!151 = !DISubprogram(name: "error", scope: !152, file: !152, line: 52, type: !153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!152 = !DIFile(filename: "./lib/error.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!153 = !DISubroutineType(types: !154)
!154 = !{null, !30, !30, !28, null}
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!157 = !{!0, !158}
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 53, type: !160, isLocal: true, isDefinition: true)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 1280, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 5)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 272, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 34)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "convert_entire_line", scope: !168, file: !169, line: 33, type: !150, isLocal: false, isDefinition: true)
!168 = distinct !DICompileUnit(language: DW_LANG_C99, file: !169, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !170, retainedTypes: !207, globals: !275, splitDebugInlining: false, nameTableKind: None)
!169 = !DIFile(filename: "src/expand-common.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!170 = !{!5, !171, !185, !194}
!171 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !172, line: 32, baseType: !7, size: 32, elements: !173)
!172 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!173 = !{!174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184}
!174 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!175 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!176 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!177 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!178 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!179 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!180 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!181 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!182 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!183 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!184 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!185 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !186, line: 45, baseType: !7, size: 32, elements: !187)
!186 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!187 = !{!188, !189, !190, !191, !192, !193}
!188 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0, isUnsigned: true)
!189 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2, isUnsigned: true)
!190 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5, isUnsigned: true)
!191 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4, isUnsigned: true)
!192 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3, isUnsigned: true)
!193 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1, isUnsigned: true)
!194 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !196, file: !195, line: 186, baseType: !7, size: 32, elements: !205)
!195 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!196 = distinct !DISubprogram(name: "x2nrealloc", scope: !195, file: !195, line: 174, type: !197, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !168, retainedNodes: !200)
!197 = !DISubroutineType(types: !198)
!198 = !{!83, !83, !199, !85}
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!200 = !{!201, !202, !203, !204}
!201 = !DILocalVariable(name: "p", arg: 1, scope: !196, file: !195, line: 174, type: !83)
!202 = !DILocalVariable(name: "pn", arg: 2, scope: !196, file: !195, line: 174, type: !199)
!203 = !DILocalVariable(name: "s", arg: 3, scope: !196, file: !195, line: 174, type: !85)
!204 = !DILocalVariable(name: "n", scope: !196, file: !195, line: 176, type: !85)
!205 = !{!206}
!206 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!207 = !{!22, !151, !30, !63, !208, !7, !212, !83, !213, !216, !220, !223, !226, !261, !265, !268, !85, !271, !272}
!208 = !DISubprogram(name: "quote", scope: !209, file: !209, line: 44, type: !210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!209 = !DIFile(filename: "./lib/quote.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!210 = !DISubroutineType(types: !211)
!211 = !{!28, !28}
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !214, line: 102, baseType: !215)
!214 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !60, line: 73, baseType: !87)
!216 = !DISubprogram(name: "xstrndup", scope: !217, file: !217, line: 23, type: !218, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!217 = !DIFile(filename: "./lib/xstrndup.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!218 = !DISubroutineType(types: !219)
!219 = !{!26, !28, !87}
!220 = !DISubprogram(name: "free", scope: !112, file: !112, line: 565, type: !221, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!221 = !DISubroutineType(types: !222)
!222 = !{null, !83}
!223 = !DISubprogram(name: "quotearg_n_style_colon", scope: !172, file: !172, line: 397, type: !224, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!224 = !DISubroutineType(types: !225)
!225 = !{!26, !30, !171, !28}
!226 = !DISubprogram(name: "clearerr_unlocked", scope: !33, file: !33, line: 765, type: !227, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!227 = !DISubroutineType(types: !228)
!228 = !{null, !229}
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !38, line: 49, size: 1728, elements: !231)
!231 = !{!232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !230, file: !38, line: 51, baseType: !30, size: 32)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !230, file: !38, line: 54, baseType: !26, size: 64, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !230, file: !38, line: 55, baseType: !26, size: 64, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !230, file: !38, line: 56, baseType: !26, size: 64, offset: 192)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !230, file: !38, line: 57, baseType: !26, size: 64, offset: 256)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !230, file: !38, line: 58, baseType: !26, size: 64, offset: 320)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !230, file: !38, line: 59, baseType: !26, size: 64, offset: 384)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !230, file: !38, line: 60, baseType: !26, size: 64, offset: 448)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !230, file: !38, line: 61, baseType: !26, size: 64, offset: 512)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !230, file: !38, line: 64, baseType: !26, size: 64, offset: 576)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !230, file: !38, line: 65, baseType: !26, size: 64, offset: 640)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !230, file: !38, line: 66, baseType: !26, size: 64, offset: 704)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !230, file: !38, line: 68, baseType: !53, size: 64, offset: 768)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !230, file: !38, line: 70, baseType: !229, size: 64, offset: 832)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !230, file: !38, line: 72, baseType: !30, size: 32, offset: 896)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !230, file: !38, line: 73, baseType: !30, size: 32, offset: 928)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !230, file: !38, line: 74, baseType: !59, size: 64, offset: 960)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !230, file: !38, line: 77, baseType: !63, size: 16, offset: 1024)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !230, file: !38, line: 78, baseType: !65, size: 8, offset: 1040)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !230, file: !38, line: 79, baseType: !67, size: 8, offset: 1048)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !230, file: !38, line: 81, baseType: !71, size: 64, offset: 1088)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !230, file: !38, line: 89, baseType: !74, size: 64, offset: 1152)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !230, file: !38, line: 91, baseType: !76, size: 64, offset: 1216)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !230, file: !38, line: 92, baseType: !79, size: 64, offset: 1280)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !230, file: !38, line: 93, baseType: !229, size: 64, offset: 1344)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !230, file: !38, line: 94, baseType: !83, size: 64, offset: 1408)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !230, file: !38, line: 95, baseType: !85, size: 64, offset: 1472)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !230, file: !38, line: 96, baseType: !30, size: 32, offset: 1536)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !230, file: !38, line: 98, baseType: !90, size: 160, offset: 1568)
!261 = !DISubprogram(name: "rpl_fclose", scope: !262, file: !262, line: 672, type: !263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!262 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!263 = !DISubroutineType(types: !264)
!264 = !{!30, !229}
!265 = !DISubprogram(name: "fadvise", scope: !186, file: !186, line: 72, type: !266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!266 = !DISubroutineType(types: !267)
!267 = !{null, !229, !185}
!268 = !DISubprogram(name: "fputs_unlocked", scope: !33, file: !33, line: 662, type: !269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!269 = !DISubroutineType(types: !270)
!270 = !{!30, !28, !229}
!271 = !DISubprogram(name: "xalloc_die", scope: !195, file: !195, line: 51, type: !95, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !31)
!272 = !DISubprogram(name: "xrealloc", scope: !195, file: !195, line: 59, type: !273, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!273 = !DISubroutineType(types: !274)
!274 = !{!83, !83, !87}
!275 = !{!166, !276, !278, !289, !291, !293, !295, !297, !299, !301, !303, !305, !310}
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(name: "exit_status", scope: !168, file: !169, line: 72, type: !30, isLocal: false, isDefinition: true)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(name: "prev_file", scope: !280, file: !169, line: 336, type: !26, isLocal: true, isDefinition: true)
!280 = distinct !DISubprogram(name: "next_file", scope: !169, file: !169, line: 334, type: !281, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !168, retainedNodes: !286)
!281 = !DISubroutineType(types: !282)
!282 = !{!283, !283}
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !285, line: 7, baseType: !230)
!285 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!286 = !{!287, !288}
!287 = !DILocalVariable(name: "fp", arg: 1, scope: !280, file: !169, line: 334, type: !283)
!288 = !DILocalVariable(name: "file", scope: !280, file: !169, line: 337, type: !26)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(name: "max_column_width", scope: !168, file: !169, line: 45, type: !85, isLocal: false, isDefinition: true)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(name: "first_free_tab", scope: !168, file: !169, line: 57, type: !85, isLocal: true, isDefinition: true)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(name: "tab_list", scope: !168, file: !169, line: 50, type: !212, isLocal: true, isDefinition: true)
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(name: "n_tabs_allocated", scope: !168, file: !169, line: 53, type: !85, isLocal: true, isDefinition: true)
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(name: "extend_size", scope: !168, file: !169, line: 39, type: !213, isLocal: true, isDefinition: true)
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(name: "increment_size", scope: !168, file: !169, line: 42, type: !213, isLocal: true, isDefinition: true)
!301 = !DIGlobalVariableExpression(var: !302, expr: !DIExpression())
!302 = distinct !DIGlobalVariable(name: "tab_size", scope: !168, file: !169, line: 36, type: !213, isLocal: true, isDefinition: true)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !168, file: !169, line: 69, type: !150, isLocal: true, isDefinition: true)
!305 = !DIGlobalVariableExpression(var: !306, expr: !DIExpression())
!306 = distinct !DIGlobalVariable(name: "stdin_argv", scope: !168, file: !169, line: 63, type: !307, isLocal: true, isDefinition: true)
!307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 128, elements: !308)
!308 = !{!309}
!309 = !DISubrange(count: 2)
!310 = !DIGlobalVariableExpression(var: !311, expr: !DIExpression())
!311 = distinct !DIGlobalVariable(name: "file_list", scope: !168, file: !169, line: 60, type: !140, isLocal: true, isDefinition: true)
!312 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(name: "Version", scope: !315, file: !316, line: 2, type: !28, isLocal: false, isDefinition: true)
!315 = distinct !DICompileUnit(language: DW_LANG_C99, file: !316, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, globals: !317, splitDebugInlining: false, nameTableKind: None)
!316 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!317 = !{!313}
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(name: "file_name", scope: !320, file: !321, line: 46, type: !28, isLocal: true, isDefinition: true)
!320 = distinct !DICompileUnit(language: DW_LANG_C99, file: !321, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !322, globals: !360, splitDebugInlining: false, nameTableKind: None)
!321 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!322 = !{!323, !22, !359, !151}
!323 = !DISubprogram(name: "close_stream", scope: !324, file: !324, line: 2, type: !325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!324 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!325 = !DISubroutineType(types: !326)
!326 = !{!30, !327}
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !38, line: 49, size: 1728, elements: !329)
!329 = !{!330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !328, file: !38, line: 51, baseType: !30, size: 32)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !328, file: !38, line: 54, baseType: !26, size: 64, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !328, file: !38, line: 55, baseType: !26, size: 64, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !328, file: !38, line: 56, baseType: !26, size: 64, offset: 192)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !328, file: !38, line: 57, baseType: !26, size: 64, offset: 256)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !328, file: !38, line: 58, baseType: !26, size: 64, offset: 320)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !328, file: !38, line: 59, baseType: !26, size: 64, offset: 384)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !328, file: !38, line: 60, baseType: !26, size: 64, offset: 448)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !328, file: !38, line: 61, baseType: !26, size: 64, offset: 512)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !328, file: !38, line: 64, baseType: !26, size: 64, offset: 576)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !328, file: !38, line: 65, baseType: !26, size: 64, offset: 640)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !328, file: !38, line: 66, baseType: !26, size: 64, offset: 704)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !328, file: !38, line: 68, baseType: !53, size: 64, offset: 768)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !328, file: !38, line: 70, baseType: !327, size: 64, offset: 832)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !328, file: !38, line: 72, baseType: !30, size: 32, offset: 896)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !328, file: !38, line: 73, baseType: !30, size: 32, offset: 928)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !328, file: !38, line: 74, baseType: !59, size: 64, offset: 960)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !328, file: !38, line: 77, baseType: !63, size: 16, offset: 1024)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !328, file: !38, line: 78, baseType: !65, size: 8, offset: 1040)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !328, file: !38, line: 79, baseType: !67, size: 8, offset: 1048)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !328, file: !38, line: 81, baseType: !71, size: 64, offset: 1088)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !328, file: !38, line: 89, baseType: !74, size: 64, offset: 1152)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !328, file: !38, line: 91, baseType: !76, size: 64, offset: 1216)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !328, file: !38, line: 92, baseType: !79, size: 64, offset: 1280)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !328, file: !38, line: 93, baseType: !327, size: 64, offset: 1344)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !328, file: !38, line: 94, baseType: !83, size: 64, offset: 1408)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !328, file: !38, line: 95, baseType: !85, size: 64, offset: 1472)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !328, file: !38, line: 96, baseType: !30, size: 32, offset: 1536)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !328, file: !38, line: 98, baseType: !90, size: 160, offset: 1568)
!359 = !DISubprogram(name: "quotearg_colon", scope: !172, file: !172, line: 391, type: !109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!360 = !{!318, !361}
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !320, file: !321, line: 56, type: !150, isLocal: true, isDefinition: true)
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(name: "exit_failure", scope: !365, file: !366, line: 24, type: !368, isLocal: false, isDefinition: true)
!365 = distinct !DICompileUnit(language: DW_LANG_C99, file: !366, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, globals: !367, splitDebugInlining: false, nameTableKind: None)
!366 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!367 = !{!363}
!368 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !30)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(name: "program_name", scope: !371, file: !372, line: 33, type: !28, isLocal: false, isDefinition: true)
!371 = distinct !DICompileUnit(language: DW_LANG_C99, file: !372, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !373, globals: !409, splitDebugInlining: false, nameTableKind: None)
!372 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!373 = !{!83, !374, !26}
!374 = !DISubprogram(name: "fputs", scope: !33, file: !33, line: 626, type: !375, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!375 = !DISubroutineType(types: !376)
!376 = !{!30, !28, !377}
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !38, line: 49, size: 1728, elements: !379)
!379 = !{!380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !378, file: !38, line: 51, baseType: !30, size: 32)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !378, file: !38, line: 54, baseType: !26, size: 64, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !378, file: !38, line: 55, baseType: !26, size: 64, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !378, file: !38, line: 56, baseType: !26, size: 64, offset: 192)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !378, file: !38, line: 57, baseType: !26, size: 64, offset: 256)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !378, file: !38, line: 58, baseType: !26, size: 64, offset: 320)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !378, file: !38, line: 59, baseType: !26, size: 64, offset: 384)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !378, file: !38, line: 60, baseType: !26, size: 64, offset: 448)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !378, file: !38, line: 61, baseType: !26, size: 64, offset: 512)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !378, file: !38, line: 64, baseType: !26, size: 64, offset: 576)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !378, file: !38, line: 65, baseType: !26, size: 64, offset: 640)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !378, file: !38, line: 66, baseType: !26, size: 64, offset: 704)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !378, file: !38, line: 68, baseType: !53, size: 64, offset: 768)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !378, file: !38, line: 70, baseType: !377, size: 64, offset: 832)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !378, file: !38, line: 72, baseType: !30, size: 32, offset: 896)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !378, file: !38, line: 73, baseType: !30, size: 32, offset: 928)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !378, file: !38, line: 74, baseType: !59, size: 64, offset: 960)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !378, file: !38, line: 77, baseType: !63, size: 16, offset: 1024)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !378, file: !38, line: 78, baseType: !65, size: 8, offset: 1040)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !378, file: !38, line: 79, baseType: !67, size: 8, offset: 1048)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !378, file: !38, line: 81, baseType: !71, size: 64, offset: 1088)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !378, file: !38, line: 89, baseType: !74, size: 64, offset: 1152)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !378, file: !38, line: 91, baseType: !76, size: 64, offset: 1216)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !378, file: !38, line: 92, baseType: !79, size: 64, offset: 1280)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !378, file: !38, line: 93, baseType: !377, size: 64, offset: 1344)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !378, file: !38, line: 94, baseType: !83, size: 64, offset: 1408)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !378, file: !38, line: 95, baseType: !85, size: 64, offset: 1472)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !378, file: !38, line: 96, baseType: !30, size: 32, offset: 1536)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !378, file: !38, line: 98, baseType: !90, size: 160, offset: 1568)
!409 = !{!369}
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !412, file: !413, line: 85, type: !509, isLocal: false, isDefinition: true)
!412 = distinct !DICompileUnit(language: DW_LANG_C99, file: !413, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !414, retainedTypes: !420, globals: !482, splitDebugInlining: false, nameTableKind: None)
!413 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!414 = !{!171, !415, !5}
!415 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !172, line: 242, baseType: !7, size: 32, elements: !416)
!416 = !{!417, !418, !419}
!417 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!418 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!419 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!420 = !{!421, !426, !220, !441, !30, !63, !444, !85, !461, !465, !22, !471, !475, !26, !479, !271, !272}
!421 = !DISubprogram(name: "xmemdup", scope: !195, file: !195, line: 62, type: !422, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!422 = !DISubroutineType(types: !423)
!423 = !{!83, !424, !87}
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!426 = !DISubprogram(name: "quotearg_alloc_mem", scope: !172, file: !172, line: 342, type: !427, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!427 = !DISubroutineType(types: !428)
!428 = !{!26, !28, !87, !148, !429}
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !431)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !413, line: 65, size: 448, elements: !432)
!432 = !{!433, !434, !435, !439, !440}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !431, file: !413, line: 68, baseType: !171, size: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !431, file: !413, line: 71, baseType: !30, size: 32, offset: 32)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !431, file: !413, line: 75, baseType: !436, size: 256, offset: 64)
!436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !437)
!437 = !{!438}
!438 = !DISubrange(count: 8)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !431, file: !413, line: 78, baseType: !28, size: 64, offset: 320)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !431, file: !413, line: 81, baseType: !28, size: 64, offset: 384)
!441 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !172, file: !172, line: 408, type: !442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!442 = !DISubroutineType(types: !443)
!443 = !{!26, !30, !28, !28, !28, !87}
!444 = !DISubprogram(name: "rpl_mbrtowc", scope: !445, file: !445, line: 717, type: !446, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!445 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!446 = !DISubroutineType(types: !447)
!447 = !{!87, !129, !28, !87, !448}
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !450, line: 13, size: 64, elements: !451)
!450 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!451 = !{!452, !453}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !449, file: !450, line: 15, baseType: !30, size: 32)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !449, file: !450, line: 20, baseType: !454, size: 32, offset: 32)
!454 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !449, file: !450, line: 16, size: 32, elements: !455)
!455 = !{!456, !457}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !454, file: !450, line: 18, baseType: !7, size: 32)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !454, file: !450, line: 19, baseType: !458, size: 32)
!458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 32, elements: !459)
!459 = !{!460}
!460 = !DISubrange(count: 4)
!461 = !DISubprogram(name: "iswprint", scope: !462, file: !462, line: 120, type: !463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!462 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!463 = !DISubroutineType(types: !464)
!464 = !{!30, !7}
!465 = !DISubprogram(name: "mbsinit", scope: !466, file: !466, line: 292, type: !467, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!466 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!467 = !DISubroutineType(types: !468)
!468 = !{!30, !469}
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !449)
!471 = !DISubprogram(name: "locale_charset", scope: !472, file: !472, line: 35, type: !473, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!472 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!473 = !DISubroutineType(types: !474)
!474 = !{!28}
!475 = !DISubprogram(name: "c_strcasecmp", scope: !476, file: !476, line: 42, type: !477, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!476 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!477 = !DISubroutineType(types: !478)
!478 = !{!30, !28, !28}
!479 = !DISubprogram(name: "xmalloc", scope: !195, file: !195, line: 53, type: !480, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!480 = !DISubroutineType(types: !481)
!481 = !{!83, !87}
!482 = !{!410, !483, !489, !491, !493, !498, !505, !507}
!483 = !DIGlobalVariableExpression(var: !484, expr: !DIExpression())
!484 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !412, file: !413, line: 101, type: !485, isLocal: false, isDefinition: true)
!485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !486, size: 320, elements: !487)
!486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!487 = !{!488}
!488 = !DISubrange(count: 10)
!489 = !DIGlobalVariableExpression(var: !490, expr: !DIExpression())
!490 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !412, file: !413, line: 1052, type: !431, isLocal: false, isDefinition: true)
!491 = !DIGlobalVariableExpression(var: !492, expr: !DIExpression())
!492 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !412, file: !413, line: 116, type: !431, isLocal: true, isDefinition: true)
!493 = !DIGlobalVariableExpression(var: !494, expr: !DIExpression())
!494 = distinct !DIGlobalVariable(name: "slot0", scope: !412, file: !413, line: 842, type: !495, isLocal: true, isDefinition: true)
!495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 2048, elements: !496)
!496 = !{!497}
!497 = !DISubrange(count: 256)
!498 = !DIGlobalVariableExpression(var: !499, expr: !DIExpression())
!499 = distinct !DIGlobalVariable(name: "slotvec", scope: !412, file: !413, line: 845, type: !500, isLocal: true, isDefinition: true)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !413, line: 834, size: 128, elements: !502)
!502 = !{!503, !504}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !501, file: !413, line: 836, baseType: !85, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !501, file: !413, line: 837, baseType: !26, size: 64, offset: 64)
!505 = !DIGlobalVariableExpression(var: !506, expr: !DIExpression())
!506 = distinct !DIGlobalVariable(name: "nslots", scope: !412, file: !413, line: 843, type: !30, isLocal: true, isDefinition: true)
!507 = !DIGlobalVariableExpression(var: !508, expr: !DIExpression())
!508 = distinct !DIGlobalVariable(name: "slotvec0", scope: !412, file: !413, line: 844, type: !501, isLocal: true, isDefinition: true)
!509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !510, size: 704, elements: !511)
!510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!511 = !{!512}
!512 = !DISubrange(count: 11)
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !515, file: !516, line: 26, type: !518, isLocal: false, isDefinition: true)
!515 = distinct !DICompileUnit(language: DW_LANG_C99, file: !516, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, globals: !517, splitDebugInlining: false, nameTableKind: None)
!516 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!517 = !{!513}
!518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 376, elements: !519)
!519 = !{!520}
!520 = !DISubrange(count: 47)
!521 = distinct !DICompileUnit(language: DW_LANG_C99, file: !522, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !523, retainedTypes: !524, splitDebugInlining: false, nameTableKind: None)
!522 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!523 = !{!185}
!524 = !{!525, !529}
!525 = !DISubprogram(name: "posix_fadvise", scope: !526, file: !526, line: 288, type: !527, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!526 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!527 = !DISubroutineType(types: !528)
!528 = !{!30, !30, !61, !61, !30}
!529 = !DISubprogram(name: "fileno", scope: !33, file: !33, line: 786, type: !530, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!530 = !DISubroutineType(types: !531)
!531 = !{!30, !532}
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !38, line: 49, size: 1728, elements: !534)
!534 = !{!535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !533, file: !38, line: 51, baseType: !30, size: 32)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !533, file: !38, line: 54, baseType: !26, size: 64, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !533, file: !38, line: 55, baseType: !26, size: 64, offset: 128)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !533, file: !38, line: 56, baseType: !26, size: 64, offset: 192)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !533, file: !38, line: 57, baseType: !26, size: 64, offset: 256)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !533, file: !38, line: 58, baseType: !26, size: 64, offset: 320)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !533, file: !38, line: 59, baseType: !26, size: 64, offset: 384)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !533, file: !38, line: 60, baseType: !26, size: 64, offset: 448)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !533, file: !38, line: 61, baseType: !26, size: 64, offset: 512)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !533, file: !38, line: 64, baseType: !26, size: 64, offset: 576)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !533, file: !38, line: 65, baseType: !26, size: 64, offset: 640)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !533, file: !38, line: 66, baseType: !26, size: 64, offset: 704)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !533, file: !38, line: 68, baseType: !53, size: 64, offset: 768)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !533, file: !38, line: 70, baseType: !532, size: 64, offset: 832)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !533, file: !38, line: 72, baseType: !30, size: 32, offset: 896)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !533, file: !38, line: 73, baseType: !30, size: 32, offset: 928)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !533, file: !38, line: 74, baseType: !59, size: 64, offset: 960)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !533, file: !38, line: 77, baseType: !63, size: 16, offset: 1024)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !533, file: !38, line: 78, baseType: !65, size: 8, offset: 1040)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !533, file: !38, line: 79, baseType: !67, size: 8, offset: 1048)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !533, file: !38, line: 81, baseType: !71, size: 64, offset: 1088)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !533, file: !38, line: 89, baseType: !74, size: 64, offset: 1152)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !533, file: !38, line: 91, baseType: !76, size: 64, offset: 1216)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !533, file: !38, line: 92, baseType: !79, size: 64, offset: 1280)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !533, file: !38, line: 93, baseType: !532, size: 64, offset: 1344)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !533, file: !38, line: 94, baseType: !83, size: 64, offset: 1408)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !533, file: !38, line: 95, baseType: !85, size: 64, offset: 1472)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !533, file: !38, line: 96, baseType: !30, size: 32, offset: 1536)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !533, file: !38, line: 98, baseType: !90, size: 160, offset: 1568)
!564 = distinct !DICompileUnit(language: DW_LANG_C99, file: !565, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !566, retainedTypes: !570, splitDebugInlining: false, nameTableKind: None)
!565 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!566 = !{!567}
!567 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !565, line: 40, baseType: !7, size: 32, elements: !568)
!568 = !{!569}
!569 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!570 = !{!22, !571, !83}
!571 = !DISubprogram(name: "fputs_unlocked", scope: !33, file: !33, line: 662, type: !572, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!572 = !DISubroutineType(types: !573)
!573 = !{!30, !28, !574}
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !38, line: 49, size: 1728, elements: !576)
!576 = !{!577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !575, file: !38, line: 51, baseType: !30, size: 32)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !575, file: !38, line: 54, baseType: !26, size: 64, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !575, file: !38, line: 55, baseType: !26, size: 64, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !575, file: !38, line: 56, baseType: !26, size: 64, offset: 192)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !575, file: !38, line: 57, baseType: !26, size: 64, offset: 256)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !575, file: !38, line: 58, baseType: !26, size: 64, offset: 320)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !575, file: !38, line: 59, baseType: !26, size: 64, offset: 384)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !575, file: !38, line: 60, baseType: !26, size: 64, offset: 448)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !575, file: !38, line: 61, baseType: !26, size: 64, offset: 512)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !575, file: !38, line: 64, baseType: !26, size: 64, offset: 576)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !575, file: !38, line: 65, baseType: !26, size: 64, offset: 640)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !575, file: !38, line: 66, baseType: !26, size: 64, offset: 704)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !575, file: !38, line: 68, baseType: !53, size: 64, offset: 768)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !575, file: !38, line: 70, baseType: !574, size: 64, offset: 832)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !575, file: !38, line: 72, baseType: !30, size: 32, offset: 896)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !575, file: !38, line: 73, baseType: !30, size: 32, offset: 928)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !575, file: !38, line: 74, baseType: !59, size: 64, offset: 960)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !575, file: !38, line: 77, baseType: !63, size: 16, offset: 1024)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !575, file: !38, line: 78, baseType: !65, size: 8, offset: 1040)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !575, file: !38, line: 79, baseType: !67, size: 8, offset: 1048)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !575, file: !38, line: 81, baseType: !71, size: 64, offset: 1088)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !575, file: !38, line: 89, baseType: !74, size: 64, offset: 1152)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !575, file: !38, line: 91, baseType: !76, size: 64, offset: 1216)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !575, file: !38, line: 92, baseType: !79, size: 64, offset: 1280)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !575, file: !38, line: 93, baseType: !574, size: 64, offset: 1344)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !575, file: !38, line: 94, baseType: !83, size: 64, offset: 1408)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !575, file: !38, line: 95, baseType: !85, size: 64, offset: 1472)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !575, file: !38, line: 96, baseType: !30, size: 32, offset: 1536)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !575, file: !38, line: 98, baseType: !90, size: 160, offset: 1568)
!606 = distinct !DICompileUnit(language: DW_LANG_C99, file: !607, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !608, retainedTypes: !616, splitDebugInlining: false, nameTableKind: None)
!607 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!608 = !{!609}
!609 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !610, file: !195, line: 186, baseType: !7, size: 32, elements: !205)
!610 = distinct !DISubprogram(name: "x2nrealloc", scope: !195, file: !195, line: 174, type: !197, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !606, retainedNodes: !611)
!611 = !{!612, !613, !614, !615}
!612 = !DILocalVariable(name: "p", arg: 1, scope: !610, file: !195, line: 174, type: !83)
!613 = !DILocalVariable(name: "pn", arg: 2, scope: !610, file: !195, line: 174, type: !199)
!614 = !DILocalVariable(name: "s", arg: 3, scope: !610, file: !195, line: 174, type: !85)
!615 = !DILocalVariable(name: "n", scope: !610, file: !195, line: 176, type: !85)
!616 = !{!85, !271, !479, !272, !26, !220, !83, !617, !620}
!617 = !DISubprogram(name: "xcalloc", scope: !195, file: !195, line: 57, type: !618, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!618 = !DISubroutineType(types: !619)
!619 = !{!83, !87, !87}
!620 = !DISubprogram(name: "rpl_calloc", scope: !621, file: !621, line: 688, type: !618, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!621 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!622 = distinct !DICompileUnit(language: DW_LANG_C99, file: !623, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !624, splitDebugInlining: false, nameTableKind: None)
!623 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!624 = !{!22, !151}
!625 = distinct !DICompileUnit(language: DW_LANG_C99, file: !626, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !627, splitDebugInlining: false, nameTableKind: None)
!626 = !DIFile(filename: "lib/xstrndup.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!627 = !{!271}
!628 = distinct !DICompileUnit(language: DW_LANG_C99, file: !629, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !630, splitDebugInlining: false, nameTableKind: None)
!629 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!630 = !{!83}
!631 = distinct !DICompileUnit(language: DW_LANG_C99, file: !632, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !633, splitDebugInlining: false, nameTableKind: None)
!632 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!633 = !{!634, !669, !670, !674}
!634 = !DISubprogram(name: "fileno", scope: !33, file: !33, line: 786, type: !635, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!635 = !DISubroutineType(types: !636)
!636 = !{!30, !637}
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !38, line: 49, size: 1728, elements: !639)
!639 = !{!640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !638, file: !38, line: 51, baseType: !30, size: 32)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !638, file: !38, line: 54, baseType: !26, size: 64, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !638, file: !38, line: 55, baseType: !26, size: 64, offset: 128)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !638, file: !38, line: 56, baseType: !26, size: 64, offset: 192)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !638, file: !38, line: 57, baseType: !26, size: 64, offset: 256)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !638, file: !38, line: 58, baseType: !26, size: 64, offset: 320)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !638, file: !38, line: 59, baseType: !26, size: 64, offset: 384)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !638, file: !38, line: 60, baseType: !26, size: 64, offset: 448)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !638, file: !38, line: 61, baseType: !26, size: 64, offset: 512)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !638, file: !38, line: 64, baseType: !26, size: 64, offset: 576)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !638, file: !38, line: 65, baseType: !26, size: 64, offset: 640)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !638, file: !38, line: 66, baseType: !26, size: 64, offset: 704)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !638, file: !38, line: 68, baseType: !53, size: 64, offset: 768)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !638, file: !38, line: 70, baseType: !637, size: 64, offset: 832)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !638, file: !38, line: 72, baseType: !30, size: 32, offset: 896)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !638, file: !38, line: 73, baseType: !30, size: 32, offset: 928)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !638, file: !38, line: 74, baseType: !59, size: 64, offset: 960)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !638, file: !38, line: 77, baseType: !63, size: 16, offset: 1024)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !638, file: !38, line: 78, baseType: !65, size: 8, offset: 1040)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !638, file: !38, line: 79, baseType: !67, size: 8, offset: 1048)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !638, file: !38, line: 81, baseType: !71, size: 64, offset: 1088)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !638, file: !38, line: 89, baseType: !74, size: 64, offset: 1152)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !638, file: !38, line: 91, baseType: !76, size: 64, offset: 1216)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !638, file: !38, line: 92, baseType: !79, size: 64, offset: 1280)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !638, file: !38, line: 93, baseType: !637, size: 64, offset: 1344)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !638, file: !38, line: 94, baseType: !83, size: 64, offset: 1408)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !638, file: !38, line: 95, baseType: !85, size: 64, offset: 1472)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !638, file: !38, line: 96, baseType: !30, size: 32, offset: 1536)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !638, file: !38, line: 98, baseType: !90, size: 160, offset: 1568)
!669 = !DISubprogram(name: "fclose", scope: !33, file: !33, line: 213, type: !635, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!670 = !DISubprogram(name: "lseek", scope: !671, file: !671, line: 334, type: !672, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!671 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!672 = !DISubroutineType(types: !673)
!673 = !{!61, !30, !61, !30}
!674 = !DISubprogram(name: "rpl_fflush", scope: !262, file: !262, line: 718, type: !635, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!675 = distinct !DICompileUnit(language: DW_LANG_C99, file: !676, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !677, splitDebugInlining: false, nameTableKind: None)
!676 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!677 = !{!83, !678, !713}
!678 = !DISubprogram(name: "fflush", scope: !33, file: !33, line: 218, type: !679, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!679 = !DISubroutineType(types: !680)
!680 = !{!30, !681}
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !38, line: 49, size: 1728, elements: !683)
!683 = !{!684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !682, file: !38, line: 51, baseType: !30, size: 32)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !682, file: !38, line: 54, baseType: !26, size: 64, offset: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !682, file: !38, line: 55, baseType: !26, size: 64, offset: 128)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !682, file: !38, line: 56, baseType: !26, size: 64, offset: 192)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !682, file: !38, line: 57, baseType: !26, size: 64, offset: 256)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !682, file: !38, line: 58, baseType: !26, size: 64, offset: 320)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !682, file: !38, line: 59, baseType: !26, size: 64, offset: 384)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !682, file: !38, line: 60, baseType: !26, size: 64, offset: 448)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !682, file: !38, line: 61, baseType: !26, size: 64, offset: 512)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !682, file: !38, line: 64, baseType: !26, size: 64, offset: 576)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !682, file: !38, line: 65, baseType: !26, size: 64, offset: 640)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !682, file: !38, line: 66, baseType: !26, size: 64, offset: 704)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !682, file: !38, line: 68, baseType: !53, size: 64, offset: 768)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !682, file: !38, line: 70, baseType: !681, size: 64, offset: 832)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !682, file: !38, line: 72, baseType: !30, size: 32, offset: 896)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !682, file: !38, line: 73, baseType: !30, size: 32, offset: 928)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !682, file: !38, line: 74, baseType: !59, size: 64, offset: 960)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !682, file: !38, line: 77, baseType: !63, size: 16, offset: 1024)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !682, file: !38, line: 78, baseType: !65, size: 8, offset: 1040)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !682, file: !38, line: 79, baseType: !67, size: 8, offset: 1048)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !682, file: !38, line: 81, baseType: !71, size: 64, offset: 1088)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !682, file: !38, line: 89, baseType: !74, size: 64, offset: 1152)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !682, file: !38, line: 91, baseType: !76, size: 64, offset: 1216)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !682, file: !38, line: 92, baseType: !79, size: 64, offset: 1280)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !682, file: !38, line: 93, baseType: !681, size: 64, offset: 1344)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !682, file: !38, line: 94, baseType: !83, size: 64, offset: 1408)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !682, file: !38, line: 95, baseType: !85, size: 64, offset: 1472)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !682, file: !38, line: 96, baseType: !30, size: 32, offset: 1536)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !682, file: !38, line: 98, baseType: !90, size: 160, offset: 1568)
!713 = !DISubprogram(name: "rpl_fseeko", scope: !262, file: !262, line: 1034, type: !714, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!714 = !DISubroutineType(types: !715)
!715 = !{!30, !681, !61, !30}
!716 = distinct !DICompileUnit(language: DW_LANG_C99, file: !717, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !718, splitDebugInlining: false, nameTableKind: None)
!717 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!718 = !{!83, !719, !670, !754}
!719 = !DISubprogram(name: "fileno", scope: !33, file: !33, line: 786, type: !720, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!720 = !DISubroutineType(types: !721)
!721 = !{!30, !722}
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !38, line: 49, size: 1728, elements: !724)
!724 = !{!725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !723, file: !38, line: 51, baseType: !30, size: 32)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !723, file: !38, line: 54, baseType: !26, size: 64, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !723, file: !38, line: 55, baseType: !26, size: 64, offset: 128)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !723, file: !38, line: 56, baseType: !26, size: 64, offset: 192)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !723, file: !38, line: 57, baseType: !26, size: 64, offset: 256)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !723, file: !38, line: 58, baseType: !26, size: 64, offset: 320)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !723, file: !38, line: 59, baseType: !26, size: 64, offset: 384)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !723, file: !38, line: 60, baseType: !26, size: 64, offset: 448)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !723, file: !38, line: 61, baseType: !26, size: 64, offset: 512)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !723, file: !38, line: 64, baseType: !26, size: 64, offset: 576)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !723, file: !38, line: 65, baseType: !26, size: 64, offset: 640)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !723, file: !38, line: 66, baseType: !26, size: 64, offset: 704)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !723, file: !38, line: 68, baseType: !53, size: 64, offset: 768)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !723, file: !38, line: 70, baseType: !722, size: 64, offset: 832)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !723, file: !38, line: 72, baseType: !30, size: 32, offset: 896)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !723, file: !38, line: 73, baseType: !30, size: 32, offset: 928)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !723, file: !38, line: 74, baseType: !59, size: 64, offset: 960)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !723, file: !38, line: 77, baseType: !63, size: 16, offset: 1024)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !723, file: !38, line: 78, baseType: !65, size: 8, offset: 1040)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !723, file: !38, line: 79, baseType: !67, size: 8, offset: 1048)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !723, file: !38, line: 81, baseType: !71, size: 64, offset: 1088)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !723, file: !38, line: 89, baseType: !74, size: 64, offset: 1152)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !723, file: !38, line: 91, baseType: !76, size: 64, offset: 1216)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !723, file: !38, line: 92, baseType: !79, size: 64, offset: 1280)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !723, file: !38, line: 93, baseType: !722, size: 64, offset: 1344)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !723, file: !38, line: 94, baseType: !83, size: 64, offset: 1408)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !723, file: !38, line: 95, baseType: !85, size: 64, offset: 1472)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !723, file: !38, line: 96, baseType: !30, size: 32, offset: 1536)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !723, file: !38, line: 98, baseType: !90, size: 160, offset: 1568)
!754 = !DISubprogram(name: "fseeko", scope: !33, file: !33, line: 707, type: !755, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!755 = !DISubroutineType(types: !756)
!756 = !{!30, !722, !61, !30}
!757 = distinct !DICompileUnit(language: DW_LANG_C99, file: !758, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !759, splitDebugInlining: false, nameTableKind: None)
!758 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!759 = !{!760, !85, !772}
!760 = !DISubprogram(name: "mbrtowc", scope: !466, file: !466, line: 296, type: !761, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!761 = !DISubroutineType(types: !762)
!762 = !{!87, !129, !28, !87, !763}
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !450, line: 13, size: 64, elements: !765)
!765 = !{!766, !767}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !764, file: !450, line: 15, baseType: !30, size: 32)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !764, file: !450, line: 20, baseType: !768, size: 32, offset: 32)
!768 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !764, file: !450, line: 16, size: 32, elements: !769)
!769 = !{!770, !771}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !768, file: !450, line: 18, baseType: !7, size: 32)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !768, file: !450, line: 19, baseType: !458, size: 32)
!772 = !DISubprogram(name: "hard_locale", scope: !773, file: !773, line: 26, type: !774, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!773 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!774 = !DISubroutineType(types: !775)
!775 = !{!150, !30}
!776 = distinct !DICompileUnit(language: DW_LANG_C99, file: !777, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !778, splitDebugInlining: false, nameTableKind: None)
!777 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!778 = !{!779}
!779 = !DISubprogram(name: "rpl_fclose", scope: !262, file: !262, line: 672, type: !780, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!780 = !DISubroutineType(types: !781)
!781 = !{!30, !782}
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !38, line: 49, size: 1728, elements: !784)
!784 = !{!785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !783, file: !38, line: 51, baseType: !30, size: 32)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !783, file: !38, line: 54, baseType: !26, size: 64, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !783, file: !38, line: 55, baseType: !26, size: 64, offset: 128)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !783, file: !38, line: 56, baseType: !26, size: 64, offset: 192)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !783, file: !38, line: 57, baseType: !26, size: 64, offset: 256)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !783, file: !38, line: 58, baseType: !26, size: 64, offset: 320)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !783, file: !38, line: 59, baseType: !26, size: 64, offset: 384)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !783, file: !38, line: 60, baseType: !26, size: 64, offset: 448)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !783, file: !38, line: 61, baseType: !26, size: 64, offset: 512)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !783, file: !38, line: 64, baseType: !26, size: 64, offset: 576)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !783, file: !38, line: 65, baseType: !26, size: 64, offset: 640)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !783, file: !38, line: 66, baseType: !26, size: 64, offset: 704)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !783, file: !38, line: 68, baseType: !53, size: 64, offset: 768)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !783, file: !38, line: 70, baseType: !782, size: 64, offset: 832)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !783, file: !38, line: 72, baseType: !30, size: 32, offset: 896)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !783, file: !38, line: 73, baseType: !30, size: 32, offset: 928)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !783, file: !38, line: 74, baseType: !59, size: 64, offset: 960)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !783, file: !38, line: 77, baseType: !63, size: 16, offset: 1024)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !783, file: !38, line: 78, baseType: !65, size: 8, offset: 1040)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !783, file: !38, line: 79, baseType: !67, size: 8, offset: 1048)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !783, file: !38, line: 81, baseType: !71, size: 64, offset: 1088)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !783, file: !38, line: 89, baseType: !74, size: 64, offset: 1152)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !783, file: !38, line: 91, baseType: !76, size: 64, offset: 1216)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !783, file: !38, line: 92, baseType: !79, size: 64, offset: 1280)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !783, file: !38, line: 93, baseType: !782, size: 64, offset: 1344)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !783, file: !38, line: 94, baseType: !83, size: 64, offset: 1408)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !783, file: !38, line: 95, baseType: !85, size: 64, offset: 1472)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !783, file: !38, line: 96, baseType: !30, size: 32, offset: 1536)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !783, file: !38, line: 98, baseType: !90, size: 160, offset: 1568)
!814 = distinct !DICompileUnit(language: DW_LANG_C99, file: !815, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !816, splitDebugInlining: false, nameTableKind: None)
!815 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!816 = !{!817}
!817 = !DISubprogram(name: "setlocale_null_r", scope: !818, file: !818, line: 64, type: !819, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!818 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!819 = !DISubroutineType(types: !820)
!820 = !{!30, !30, !26, !87}
!821 = distinct !DICompileUnit(language: DW_LANG_C99, file: !822, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !823, retainedTypes: !1210, splitDebugInlining: false, nameTableKind: None)
!822 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!823 = !{!824}
!824 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !825, line: 41, baseType: !7, size: 32, elements: !826)
!825 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!826 = !{!827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209}
!827 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!828 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!829 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!830 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!831 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!832 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!833 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!834 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!835 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!836 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!837 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!838 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!839 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!840 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!841 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!842 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!843 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!844 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!845 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!846 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!847 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!848 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!849 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!850 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!851 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!852 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!853 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!854 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!855 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!856 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!857 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!858 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!859 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!860 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!861 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!862 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!863 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!864 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!865 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!866 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!867 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!868 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!869 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!870 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!871 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!872 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!873 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!874 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!875 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!876 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!877 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!878 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!879 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!880 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!881 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!882 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!883 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!884 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!885 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!886 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!887 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!888 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!889 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!890 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!891 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!892 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!893 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!894 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!895 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!896 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!897 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!898 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!899 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!900 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!901 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!902 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!903 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!904 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!905 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!906 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!907 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!908 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!909 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!910 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!911 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!912 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!913 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!914 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!915 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!916 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!917 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!918 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!919 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!920 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!921 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!922 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!923 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!924 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!925 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!926 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!927 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!928 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!929 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!930 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!931 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!932 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!933 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!934 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!935 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!936 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!937 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!938 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!939 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!940 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!941 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!942 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!943 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!944 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!945 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!946 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!947 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!948 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!949 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!950 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!951 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!952 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!953 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!954 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!955 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!956 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!957 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!958 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!959 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!960 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!961 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!962 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!963 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!964 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!965 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!966 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!967 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!968 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!969 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!970 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!971 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!972 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!973 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!974 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!975 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!976 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!977 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!978 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!979 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!980 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!981 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!982 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!983 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!984 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!985 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!986 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!987 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!988 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!989 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!990 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!991 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!992 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!993 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!994 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!995 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!996 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!997 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!998 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!999 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!1000 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!1001 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!1002 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!1003 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!1004 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!1005 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!1006 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!1007 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!1008 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!1009 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!1010 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!1011 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!1012 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!1013 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!1014 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!1015 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!1016 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!1017 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!1018 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!1019 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!1020 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!1021 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!1022 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!1023 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!1024 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!1025 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!1026 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!1027 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!1028 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!1029 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!1030 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!1031 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!1032 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!1033 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!1034 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!1035 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!1036 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!1037 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!1038 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!1039 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!1040 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!1041 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!1042 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!1043 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!1044 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!1045 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!1046 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!1047 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!1048 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!1049 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!1050 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!1051 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!1052 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!1053 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!1054 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!1055 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!1056 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!1057 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!1058 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!1059 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!1060 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!1061 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!1062 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!1063 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!1064 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!1065 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!1066 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!1067 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!1068 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!1069 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!1070 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!1071 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!1072 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!1073 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!1074 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!1075 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!1076 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!1077 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!1078 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!1079 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!1080 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!1081 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!1082 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!1083 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!1084 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!1085 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!1086 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!1087 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!1088 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!1089 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!1090 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!1091 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!1092 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!1093 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!1094 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!1095 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!1096 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!1097 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!1098 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!1099 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!1100 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!1101 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!1102 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!1103 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!1104 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!1105 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!1106 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!1107 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!1108 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!1109 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!1110 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!1111 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!1112 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!1113 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!1114 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!1115 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!1116 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!1117 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!1118 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!1119 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!1120 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!1121 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!1122 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!1123 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!1124 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!1125 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!1126 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!1127 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!1128 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!1129 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!1130 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!1131 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!1132 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!1133 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!1134 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!1135 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!1136 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!1137 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!1138 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!1139 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!1140 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!1141 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!1142 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!1143 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!1144 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!1145 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!1146 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!1147 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!1148 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!1149 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!1150 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!1151 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!1152 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!1153 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!1154 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!1155 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!1156 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!1157 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!1158 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!1159 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!1160 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!1161 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!1162 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!1163 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!1164 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!1165 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!1166 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!1167 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!1168 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!1169 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!1170 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!1171 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!1172 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!1173 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!1174 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!1175 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!1176 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!1177 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!1178 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!1179 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!1180 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!1181 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!1182 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!1183 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!1184 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!1185 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!1186 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!1187 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!1188 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!1189 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!1190 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!1191 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!1192 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!1193 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!1194 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!1195 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!1196 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!1197 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!1198 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!1199 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!1200 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!1201 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!1202 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!1203 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!1204 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!1205 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!1206 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!1207 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!1208 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!1209 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!1210 = !{!1211, !83}
!1211 = !DISubprogram(name: "nl_langinfo", scope: !825, file: !825, line: 661, type: !1212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!26, !30}
!1214 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1215, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !1216, splitDebugInlining: false, nameTableKind: None)
!1215 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1216 = !{!83, !101}
!1217 = !{!"clang version 10.0.0 "}
!1218 = !{i32 7, !"Dwarf Version", i32 4}
!1219 = !{i32 2, !"Debug Info Version", i32 3}
!1220 = !{i32 1, !"wchar_size", i32 4}
!1221 = !{i32 7, !"PIC Level", i32 2}
!1222 = !{i32 7, !"PIE Level", i32 2}
!1223 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 63, type: !1224, scopeLine: 64, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1226)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{null, !30}
!1226 = !{!1227}
!1227 = !DILocalVariable(name: "status", arg: 1, scope: !1223, file: !3, line: 63, type: !30)
!1228 = !DILocalVariable(name: "infomap", scope: !1229, file: !1230, line: 636, type: !1242)
!1229 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1230, file: !1230, line: 634, type: !99, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1231)
!1230 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1231 = !{!1232, !1228, !1233, !1234, !1241}
!1232 = !DILocalVariable(name: "program", arg: 1, scope: !1229, file: !1230, line: 634, type: !28)
!1233 = !DILocalVariable(name: "node", scope: !1229, file: !1230, line: 646, type: !28)
!1234 = !DILocalVariable(name: "map_prog", scope: !1229, file: !1230, line: 647, type: !1235)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1237)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1229, file: !1230, line: 636, size: 128, elements: !1238)
!1238 = !{!1239, !1240}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1237, file: !1230, line: 636, baseType: !28, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1237, file: !1230, line: 636, baseType: !28, size: 64, offset: 64)
!1241 = !DILocalVariable(name: "lc_messages", scope: !1229, file: !1230, line: 659, type: !28)
!1242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1236, size: 896, elements: !1243)
!1243 = !{!1244}
!1244 = !DISubrange(count: 7)
!1245 = !DILocation(line: 636, column: 67, scope: !1229, inlinedAt: !1246)
!1246 = distinct !DILocation(line: 87, column: 7, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 68, column: 5)
!1248 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 65, column: 7)
!1249 = !DILocation(line: 0, scope: !1223)
!1250 = !DILocation(line: 65, column: 14, scope: !1248)
!1251 = !DILocation(line: 65, column: 7, scope: !1223)
!1252 = !DILocation(line: 66, column: 5, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 66, column: 5)
!1254 = !{!1255, !1255, i64 0}
!1255 = !{!"any pointer", !1256, i64 0}
!1256 = !{!"omnipotent char", !1257, i64 0}
!1257 = !{!"Simple C/C++ TBAA"}
!1258 = !DILocation(line: 69, column: 7, scope: !1247)
!1259 = !DILocation(line: 73, column: 7, scope: !1247)
!1260 = !DILocation(line: 583, column: 3, scope: !1261, inlinedAt: !1262)
!1261 = distinct !DISubprogram(name: "emit_stdin_note", scope: !1230, file: !1230, line: 581, type: !95, scopeLine: 582, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !31)
!1262 = distinct !DILocation(line: 77, column: 7, scope: !1247)
!1263 = !DILocation(line: 590, column: 3, scope: !1264, inlinedAt: !1265)
!1264 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !1230, file: !1230, line: 588, type: !95, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !31)
!1265 = distinct !DILocation(line: 78, column: 7, scope: !1247)
!1266 = !DILocation(line: 80, column: 7, scope: !1247)
!1267 = !DILocation(line: 84, column: 7, scope: !1247)
!1268 = !DILocation(line: 85, column: 7, scope: !1247)
!1269 = !DILocation(line: 86, column: 7, scope: !1247)
!1270 = !DILocation(line: 0, scope: !1229, inlinedAt: !1246)
!1271 = !DILocation(line: 636, column: 3, scope: !1229, inlinedAt: !1246)
!1272 = !DILocation(line: 647, column: 36, scope: !1229, inlinedAt: !1246)
!1273 = !DILocation(line: 649, column: 3, scope: !1229, inlinedAt: !1246)
!1274 = !DILocation(line: 649, column: 33, scope: !1229, inlinedAt: !1246)
!1275 = !DILocation(line: 650, column: 13, scope: !1229, inlinedAt: !1246)
!1276 = !DILocation(line: 649, column: 20, scope: !1229, inlinedAt: !1246)
!1277 = !{!1278, !1255, i64 0}
!1278 = !{!"infomap", !1255, i64 0, !1255, i64 8}
!1279 = !DILocation(line: 649, column: 10, scope: !1229, inlinedAt: !1246)
!1280 = !DILocation(line: 649, column: 28, scope: !1229, inlinedAt: !1246)
!1281 = distinct !{!1281, !1273, !1275}
!1282 = !DILocation(line: 652, column: 17, scope: !1283, inlinedAt: !1246)
!1283 = distinct !DILexicalBlock(scope: !1229, file: !1230, line: 652, column: 7)
!1284 = !{!1278, !1255, i64 8}
!1285 = !DILocation(line: 652, column: 7, scope: !1283, inlinedAt: !1246)
!1286 = !DILocation(line: 652, column: 7, scope: !1229, inlinedAt: !1246)
!1287 = !DILocation(line: 655, column: 3, scope: !1229, inlinedAt: !1246)
!1288 = !DILocation(line: 659, column: 29, scope: !1229, inlinedAt: !1246)
!1289 = !DILocation(line: 660, column: 7, scope: !1290, inlinedAt: !1246)
!1290 = distinct !DILexicalBlock(scope: !1229, file: !1230, line: 660, column: 7)
!1291 = !DILocation(line: 660, column: 19, scope: !1290, inlinedAt: !1246)
!1292 = !DILocation(line: 660, column: 22, scope: !1290, inlinedAt: !1246)
!1293 = !DILocation(line: 660, column: 7, scope: !1229, inlinedAt: !1246)
!1294 = !DILocation(line: 666, column: 7, scope: !1295, inlinedAt: !1246)
!1295 = distinct !DILexicalBlock(scope: !1290, file: !1230, line: 661, column: 5)
!1296 = !DILocation(line: 668, column: 5, scope: !1295, inlinedAt: !1246)
!1297 = !DILocation(line: 669, column: 3, scope: !1229, inlinedAt: !1246)
!1298 = !DILocation(line: 671, column: 3, scope: !1229, inlinedAt: !1246)
!1299 = !DILocation(line: 673, column: 1, scope: !1229, inlinedAt: !1246)
!1300 = !DILocation(line: 89, column: 3, scope: !1223)
!1301 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 182, type: !1302, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1304)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{!30, !30, !140}
!1304 = !{!1305, !1306, !1307, !1308}
!1305 = !DILocalVariable(name: "argc", arg: 1, scope: !1301, file: !3, line: 182, type: !30)
!1306 = !DILocalVariable(name: "argv", arg: 2, scope: !1301, file: !3, line: 182, type: !140)
!1307 = !DILocalVariable(name: "c", scope: !1301, file: !3, line: 184, type: !30)
!1308 = !DILocalVariable(name: "tab_stop", scope: !1309, file: !3, line: 213, type: !1313)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 212, column: 13)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 209, column: 15)
!1311 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 198, column: 9)
!1312 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 196, column: 5)
!1313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 16, elements: !308)
!1314 = !DILocation(line: 0, scope: !1301)
!1315 = !DILocation(line: 187, column: 21, scope: !1301)
!1316 = !DILocation(line: 187, column: 3, scope: !1301)
!1317 = !DILocation(line: 188, column: 3, scope: !1301)
!1318 = !DILocation(line: 189, column: 3, scope: !1301)
!1319 = !DILocation(line: 190, column: 3, scope: !1301)
!1320 = !DILocation(line: 192, column: 3, scope: !1301)
!1321 = !DILocation(line: 193, column: 23, scope: !1301)
!1322 = !{!1323, !1323, i64 0}
!1323 = !{!"_Bool", !1256, i64 0}
!1324 = !DILocation(line: 0, scope: !1309)
!1325 = !DILocation(line: 195, column: 3, scope: !1301)
!1326 = !DILocation(line: 195, column: 15, scope: !1301)
!1327 = !DILocation(line: 200, column: 31, scope: !1311)
!1328 = !DILocation(line: 201, column: 11, scope: !1311)
!1329 = !DILocation(line: 204, column: 28, scope: !1311)
!1330 = !DILocation(line: 204, column: 11, scope: !1311)
!1331 = !DILocation(line: 205, column: 11, scope: !1311)
!1332 = !DILocation(line: 209, column: 15, scope: !1310)
!1333 = !DILocation(line: 209, column: 15, scope: !1311)
!1334 = !DILocation(line: 210, column: 37, scope: !1310)
!1335 = !DILocation(line: 210, column: 13, scope: !1310)
!1336 = distinct !{!1336, !1325, !1337}
!1337 = !DILocation(line: 227, column: 5, scope: !1301)
!1338 = !DILocation(line: 213, column: 15, scope: !1309)
!1339 = !DILocation(line: 213, column: 20, scope: !1309)
!1340 = !DILocation(line: 214, column: 29, scope: !1309)
!1341 = !DILocation(line: 214, column: 27, scope: !1309)
!1342 = !{!1256, !1256, i64 0}
!1343 = !DILocation(line: 215, column: 27, scope: !1309)
!1344 = !DILocation(line: 216, column: 15, scope: !1309)
!1345 = !DILocation(line: 217, column: 13, scope: !1310)
!1346 = !DILocation(line: 220, column: 9, scope: !1311)
!1347 = !DILocation(line: 222, column: 9, scope: !1311)
!1348 = !DILocation(line: 225, column: 11, scope: !1311)
!1349 = !DILocation(line: 229, column: 3, scope: !1301)
!1350 = !DILocation(line: 231, column: 20, scope: !1301)
!1351 = !{!1352, !1352, i64 0}
!1352 = !{!"int", !1256, i64 0}
!1353 = !DILocation(line: 231, column: 27, scope: !1301)
!1354 = !DILocation(line: 231, column: 19, scope: !1301)
!1355 = !DILocation(line: 231, column: 3, scope: !1301)
!1356 = !DILocation(line: 100, column: 14, scope: !1357, inlinedAt: !1374)
!1357 = distinct !DISubprogram(name: "expand", scope: !3, file: !3, line: 97, type: !95, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1358)
!1358 = !{!1359, !1362, !1364, !1365, !1366, !1367, !1373}
!1359 = !DILocalVariable(name: "fp", scope: !1357, file: !3, line: 100, type: !1360)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !285, line: 7, baseType: !37)
!1362 = !DILocalVariable(name: "c", scope: !1363, file: !3, line: 108, type: !30)
!1363 = distinct !DILexicalBlock(scope: !1357, file: !3, line: 106, column: 5)
!1364 = !DILocalVariable(name: "convert", scope: !1363, file: !3, line: 111, type: !150)
!1365 = !DILocalVariable(name: "column", scope: !1363, file: !3, line: 118, type: !213)
!1366 = !DILocalVariable(name: "tab_index", scope: !1363, file: !3, line: 121, type: !85)
!1367 = !DILocalVariable(name: "next_tab_column", scope: !1368, file: !3, line: 136, type: !213)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 134, column: 17)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 133, column: 19)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 132, column: 13)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 131, column: 15)
!1372 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 127, column: 9)
!1373 = !DILocalVariable(name: "last_tab", scope: !1368, file: !3, line: 137, type: !150)
!1374 = distinct !DILocation(line: 233, column: 3, scope: !1301)
!1375 = !DILocation(line: 0, scope: !1357, inlinedAt: !1374)
!1376 = !DILocation(line: 102, column: 8, scope: !1377, inlinedAt: !1374)
!1377 = distinct !DILexicalBlock(scope: !1357, file: !3, line: 102, column: 7)
!1378 = !DILocation(line: 102, column: 7, scope: !1357, inlinedAt: !1374)
!1379 = !DILocation(line: 0, scope: !1363, inlinedAt: !1374)
!1380 = !DILocation(line: 126, column: 7, scope: !1363, inlinedAt: !1374)
!1381 = !DILocation(line: 121, column: 7, scope: !1363, inlinedAt: !1374)
!1382 = !DILocation(line: 121, column: 14, scope: !1363, inlinedAt: !1374)
!1383 = !{!1384, !1384, i64 0}
!1384 = !{!"long", !1256, i64 0}
!1385 = !DILocation(line: 128, column: 11, scope: !1372, inlinedAt: !1374)
!1386 = !DILocalVariable(name: "__fp", arg: 1, scope: !1387, file: !1388, line: 66, type: !1360)
!1387 = distinct !DISubprogram(name: "getc_unlocked", scope: !1388, file: !1388, line: 66, type: !1389, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1391)
!1388 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!30, !1360}
!1391 = !{!1386}
!1392 = !DILocation(line: 0, scope: !1387, inlinedAt: !1393)
!1393 = distinct !DILocation(line: 128, column: 23, scope: !1372, inlinedAt: !1374)
!1394 = !DILocation(line: 68, column: 10, scope: !1387, inlinedAt: !1393)
!1395 = !{!1396, !1255, i64 8}
!1396 = !{!"_IO_FILE", !1352, i64 0, !1255, i64 8, !1255, i64 16, !1255, i64 24, !1255, i64 32, !1255, i64 40, !1255, i64 48, !1255, i64 56, !1255, i64 64, !1255, i64 72, !1255, i64 80, !1255, i64 88, !1255, i64 96, !1255, i64 104, !1352, i64 112, !1352, i64 116, !1384, i64 120, !1397, i64 128, !1256, i64 130, !1256, i64 131, !1255, i64 136, !1384, i64 144, !1255, i64 152, !1255, i64 160, !1255, i64 168, !1255, i64 176, !1384, i64 184, !1352, i64 192, !1256, i64 196}
!1397 = !{!"short", !1256, i64 0}
!1398 = !{!1396, !1255, i64 16}
!1399 = !{!"branch_weights", i32 2000, i32 1}
!1400 = !{!"misexpect", i64 1, i64 2000, i64 1}
!1401 = !DILocation(line: 128, column: 38, scope: !1372, inlinedAt: !1374)
!1402 = !DILocation(line: 128, column: 34, scope: !1372, inlinedAt: !1374)
!1403 = !DILocation(line: 128, column: 47, scope: !1372, inlinedAt: !1374)
!1404 = distinct !{!1404, !1385, !1405}
!1405 = !DILocation(line: 129, column: 13, scope: !1372, inlinedAt: !1374)
!1406 = !DILocation(line: 131, column: 15, scope: !1371, inlinedAt: !1374)
!1407 = !DILocation(line: 131, column: 15, scope: !1372, inlinedAt: !1374)
!1408 = !DILocation(line: 133, column: 19, scope: !1370, inlinedAt: !1374)
!1409 = !DILocation(line: 137, column: 19, scope: !1368, inlinedAt: !1374)
!1410 = !DILocation(line: 0, scope: !1368, inlinedAt: !1374)
!1411 = !DILocation(line: 139, column: 37, scope: !1368, inlinedAt: !1374)
!1412 = !DILocation(line: 142, column: 23, scope: !1413, inlinedAt: !1374)
!1413 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 142, column: 23)
!1414 = !{i8 0, i8 2}
!1415 = !DILocation(line: 143, column: 46, scope: !1413, inlinedAt: !1374)
!1416 = !DILocation(line: 142, column: 23, scope: !1368, inlinedAt: !1374)
!1417 = !DILocation(line: 145, column: 39, scope: !1418, inlinedAt: !1374)
!1418 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 145, column: 23)
!1419 = !DILocation(line: 145, column: 23, scope: !1368, inlinedAt: !1374)
!1420 = !DILocation(line: 146, column: 21, scope: !1418, inlinedAt: !1374)
!1421 = !DILocation(line: 148, column: 26, scope: !1368, inlinedAt: !1374)
!1422 = !DILocation(line: 148, column: 35, scope: !1368, inlinedAt: !1374)
!1423 = !DILocation(line: 148, column: 19, scope: !1368, inlinedAt: !1374)
!1424 = !DILocalVariable(name: "__c", arg: 1, scope: !1425, file: !1388, line: 108, type: !30)
!1425 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1388, file: !1388, line: 108, type: !1426, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1428)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!30, !30}
!1428 = !{!1424}
!1429 = !DILocation(line: 0, scope: !1425, inlinedAt: !1430)
!1430 = distinct !DILocation(line: 149, column: 25, scope: !1431, inlinedAt: !1374)
!1431 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 149, column: 25)
!1432 = !DILocation(line: 110, column: 10, scope: !1425, inlinedAt: !1430)
!1433 = !{!1396, !1255, i64 40}
!1434 = !{!1396, !1255, i64 48}
!1435 = !DILocation(line: 149, column: 39, scope: !1431, inlinedAt: !1374)
!1436 = !DILocation(line: 149, column: 25, scope: !1368, inlinedAt: !1374)
!1437 = distinct !{!1437, !1423, !1438}
!1438 = !DILocation(line: 150, column: 23, scope: !1368, inlinedAt: !1374)
!1439 = !DILocation(line: 150, column: 23, scope: !1431, inlinedAt: !1374)
!1440 = !DILocation(line: 153, column: 17, scope: !1369, inlinedAt: !1374)
!1441 = !DILocation(line: 153, column: 17, scope: !1368, inlinedAt: !1374)
!1442 = !DILocation(line: 158, column: 30, scope: !1443, inlinedAt: !1374)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !3, line: 155, column: 17)
!1444 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 154, column: 24)
!1445 = !DILocation(line: 158, column: 26, scope: !1443, inlinedAt: !1374)
!1446 = !DILocation(line: 159, column: 34, scope: !1443, inlinedAt: !1374)
!1447 = !DILocation(line: 159, column: 33, scope: !1443, inlinedAt: !1374)
!1448 = !DILocation(line: 159, column: 29, scope: !1443, inlinedAt: !1374)
!1449 = !DILocation(line: 160, column: 17, scope: !1443, inlinedAt: !1374)
!1450 = !DILocation(line: 163, column: 25, scope: !1451, inlinedAt: !1374)
!1451 = distinct !DILexicalBlock(scope: !1444, file: !3, line: 162, column: 17)
!1452 = !DILocation(line: 164, column: 24, scope: !1453, inlinedAt: !1374)
!1453 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 164, column: 23)
!1454 = !DILocation(line: 164, column: 23, scope: !1451, inlinedAt: !1374)
!1455 = !DILocation(line: 165, column: 21, scope: !1453, inlinedAt: !1374)
!1456 = !DILocation(line: 0, scope: !1372, inlinedAt: !1374)
!1457 = !DILocation(line: 0, scope: !1369, inlinedAt: !1374)
!1458 = !DILocation(line: 168, column: 26, scope: !1370, inlinedAt: !1374)
!1459 = !DILocation(line: 168, column: 46, scope: !1370, inlinedAt: !1374)
!1460 = !DILocation(line: 168, column: 52, scope: !1370, inlinedAt: !1374)
!1461 = !{!1397, !1397, i64 0}
!1462 = !DILocation(line: 168, column: 50, scope: !1370, inlinedAt: !1374)
!1463 = !DILocation(line: 168, column: 23, scope: !1370, inlinedAt: !1374)
!1464 = !DILocation(line: 169, column: 13, scope: !1370, inlinedAt: !1374)
!1465 = !DILocation(line: 171, column: 17, scope: !1466, inlinedAt: !1374)
!1466 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 171, column: 15)
!1467 = !DILocation(line: 171, column: 15, scope: !1372, inlinedAt: !1374)
!1468 = !DILocation(line: 0, scope: !1425, inlinedAt: !1469)
!1469 = distinct !DILocation(line: 174, column: 15, scope: !1470, inlinedAt: !1374)
!1470 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 174, column: 15)
!1471 = !DILocation(line: 110, column: 10, scope: !1425, inlinedAt: !1469)
!1472 = !DILocation(line: 174, column: 15, scope: !1372, inlinedAt: !1374)
!1473 = !DILocation(line: 174, column: 27, scope: !1470, inlinedAt: !1374)
!1474 = !DILocation(line: 175, column: 13, scope: !1470, inlinedAt: !1374)
!1475 = !DILocation(line: 177, column: 16, scope: !1363, inlinedAt: !1374)
!1476 = !DILocation(line: 176, column: 9, scope: !1372, inlinedAt: !1374)
!1477 = distinct !{!1477, !1380, !1478}
!1478 = !DILocation(line: 177, column: 23, scope: !1363, inlinedAt: !1374)
!1479 = !DILocation(line: 178, column: 5, scope: !1357, inlinedAt: !1374)
!1480 = !DILocation(line: 235, column: 3, scope: !1301)
!1481 = !DILocation(line: 237, column: 10, scope: !1301)
!1482 = !DILocation(line: 237, column: 3, scope: !1301)
!1483 = distinct !DISubprogram(name: "add_tab_stop", scope: !169, file: !169, line: 78, type: !1484, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !168, retainedNodes: !1486)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{null, !213}
!1486 = !{!1487, !1488, !1489}
!1487 = !DILocalVariable(name: "tabval", arg: 1, scope: !1483, file: !169, line: 78, type: !213)
!1488 = !DILocalVariable(name: "prev_column", scope: !1483, file: !169, line: 80, type: !213)
!1489 = !DILocalVariable(name: "column_width", scope: !1483, file: !169, line: 81, type: !213)
!1490 = !DILocation(line: 0, scope: !1483)
!1491 = !DILocation(line: 80, column: 27, scope: !1483)
!1492 = !DILocation(line: 80, column: 44, scope: !1483)
!1493 = !DILocation(line: 80, column: 68, scope: !1483)
!1494 = !DILocation(line: 81, column: 28, scope: !1483)
!1495 = !DILocation(line: 83, column: 25, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1483, file: !169, line: 83, column: 7)
!1497 = !DILocation(line: 83, column: 22, scope: !1496)
!1498 = !DILocation(line: 83, column: 7, scope: !1483)
!1499 = !DILocation(line: 85, column: 3, scope: !1483)
!1500 = !DILocation(line: 84, column: 16, scope: !1496)
!1501 = !DILocation(line: 0, scope: !196, inlinedAt: !1502)
!1502 = distinct !DILocation(line: 84, column: 16, scope: !1496)
!1503 = !DILocation(line: 178, column: 9, scope: !1504, inlinedAt: !1502)
!1504 = distinct !DILexicalBlock(scope: !196, file: !195, line: 178, column: 7)
!1505 = !DILocation(line: 178, column: 7, scope: !196, inlinedAt: !1502)
!1506 = !DILocation(line: 180, column: 11, scope: !1507, inlinedAt: !1502)
!1507 = distinct !DILexicalBlock(scope: !1504, file: !195, line: 179, column: 5)
!1508 = !DILocation(line: 191, column: 11, scope: !1509, inlinedAt: !1502)
!1509 = distinct !DILexicalBlock(scope: !1507, file: !195, line: 191, column: 11)
!1510 = !DILocation(line: 191, column: 11, scope: !1507, inlinedAt: !1502)
!1511 = !DILocation(line: 192, column: 9, scope: !1509, inlinedAt: !1502)
!1512 = !DILocation(line: 201, column: 11, scope: !1513, inlinedAt: !1502)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !195, line: 200, column: 11)
!1514 = distinct !DILexicalBlock(scope: !1504, file: !195, line: 195, column: 5)
!1515 = !DILocation(line: 200, column: 11, scope: !1514, inlinedAt: !1502)
!1516 = !DILocation(line: 202, column: 9, scope: !1513, inlinedAt: !1502)
!1517 = !DILocation(line: 203, column: 14, scope: !1514, inlinedAt: !1502)
!1518 = !DILocation(line: 203, column: 18, scope: !1514, inlinedAt: !1502)
!1519 = !DILocation(line: 203, column: 9, scope: !1514, inlinedAt: !1502)
!1520 = !DILocation(line: 206, column: 7, scope: !196, inlinedAt: !1502)
!1521 = !DILocation(line: 207, column: 25, scope: !196, inlinedAt: !1502)
!1522 = !DILocation(line: 207, column: 10, scope: !196, inlinedAt: !1502)
!1523 = !DILocation(line: 84, column: 14, scope: !1496)
!1524 = !DILocation(line: 84, column: 5, scope: !1496)
!1525 = !DILocation(line: 85, column: 26, scope: !1483)
!1526 = !DILocation(line: 85, column: 30, scope: !1483)
!1527 = !DILocation(line: 87, column: 7, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1483, file: !169, line: 87, column: 7)
!1529 = !DILocation(line: 87, column: 24, scope: !1528)
!1530 = !DILocation(line: 87, column: 7, scope: !1483)
!1531 = !DILocation(line: 91, column: 24, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1528, file: !169, line: 88, column: 5)
!1533 = !DILocation(line: 92, column: 5, scope: !1532)
!1534 = !DILocation(line: 93, column: 1, scope: !1483)
!1535 = distinct !DISubprogram(name: "parse_tab_stops", scope: !169, file: !169, line: 132, type: !99, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !168, retainedNodes: !1536)
!1536 = !{!1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1555}
!1537 = !DILocalVariable(name: "stops", arg: 1, scope: !1535, file: !169, line: 132, type: !28)
!1538 = !DILocalVariable(name: "have_tabval", scope: !1535, file: !169, line: 134, type: !150)
!1539 = !DILocalVariable(name: "tabval", scope: !1535, file: !169, line: 135, type: !213)
!1540 = !DILocalVariable(name: "extend_tabval", scope: !1535, file: !169, line: 136, type: !150)
!1541 = !DILocalVariable(name: "increment_tabval", scope: !1535, file: !169, line: 137, type: !150)
!1542 = !DILocalVariable(name: "num_start", scope: !1535, file: !169, line: 138, type: !28)
!1543 = !DILocalVariable(name: "ok", scope: !1535, file: !169, line: 139, type: !150)
!1544 = !DILocalVariable(name: "len", scope: !1545, file: !169, line: 202, type: !85)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !169, line: 201, column: 13)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !169, line: 200, column: 15)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !169, line: 191, column: 9)
!1548 = distinct !DILexicalBlock(scope: !1549, file: !169, line: 190, column: 16)
!1549 = distinct !DILexicalBlock(scope: !1550, file: !169, line: 179, column: 16)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !169, line: 168, column: 16)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !169, line: 143, column: 11)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !169, line: 142, column: 5)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !169, line: 141, column: 3)
!1554 = distinct !DILexicalBlock(scope: !1535, file: !169, line: 141, column: 3)
!1555 = !DILocalVariable(name: "bad_num", scope: !1545, file: !169, line: 203, type: !26)
!1556 = !DILocation(line: 0, scope: !1535)
!1557 = !DILocation(line: 141, column: 3, scope: !1535)
!1558 = !DILocation(line: 135, column: 13, scope: !1535)
!1559 = !DILocation(line: 136, column: 8, scope: !1535)
!1560 = !DILocation(line: 137, column: 8, scope: !1535)
!1561 = !DILocation(line: 138, column: 15, scope: !1535)
!1562 = !DILocation(line: 139, column: 8, scope: !1535)
!1563 = !DILocation(line: 141, column: 10, scope: !1553)
!1564 = !DILocation(line: 141, column: 3, scope: !1554)
!1565 = !DILocation(line: 143, column: 28, scope: !1551)
!1566 = !DILocation(line: 143, column: 11, scope: !1552)
!1567 = !DILocation(line: 145, column: 15, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !169, line: 145, column: 15)
!1569 = distinct !DILexicalBlock(scope: !1551, file: !169, line: 144, column: 9)
!1570 = !DILocation(line: 145, column: 15, scope: !1569)
!1571 = !DILocation(line: 147, column: 19, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !169, line: 147, column: 19)
!1573 = distinct !DILexicalBlock(scope: !1568, file: !169, line: 146, column: 13)
!1574 = !DILocation(line: 147, column: 19, scope: !1573)
!1575 = !DILocalVariable(name: "tabval", arg: 1, scope: !1576, file: !169, line: 96, type: !213)
!1576 = distinct !DISubprogram(name: "set_extend_size", scope: !169, file: !169, line: 96, type: !1577, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !168, retainedNodes: !1579)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!150, !213}
!1579 = !{!1575, !1580}
!1580 = !DILocalVariable(name: "ok", scope: !1576, file: !169, line: 98, type: !150)
!1581 = !DILocation(line: 0, scope: !1576, inlinedAt: !1582)
!1582 = distinct !DILocation(line: 149, column: 25, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !169, line: 149, column: 23)
!1584 = distinct !DILexicalBlock(scope: !1572, file: !169, line: 148, column: 17)
!1585 = !DILocation(line: 100, column: 7, scope: !1586, inlinedAt: !1582)
!1586 = distinct !DILexicalBlock(scope: !1576, file: !169, line: 100, column: 7)
!1587 = !DILocation(line: 100, column: 7, scope: !1576, inlinedAt: !1582)
!1588 = !DILocation(line: 107, column: 15, scope: !1576, inlinedAt: !1582)
!1589 = !DILocation(line: 149, column: 23, scope: !1584)
!1590 = !DILocation(line: 103, column: 14, scope: !1591, inlinedAt: !1582)
!1591 = distinct !DILexicalBlock(scope: !1586, file: !169, line: 101, column: 5)
!1592 = !DILocation(line: 102, column: 7, scope: !1591, inlinedAt: !1582)
!1593 = !DILocation(line: 155, column: 24, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1572, file: !169, line: 155, column: 24)
!1595 = !DILocation(line: 155, column: 24, scope: !1572)
!1596 = !DILocalVariable(name: "tabval", arg: 1, scope: !1597, file: !169, line: 113, type: !213)
!1597 = distinct !DISubprogram(name: "set_increment_size", scope: !169, file: !169, line: 113, type: !1577, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !168, retainedNodes: !1598)
!1598 = !{!1596, !1599}
!1599 = !DILocalVariable(name: "ok", scope: !1597, file: !169, line: 115, type: !150)
!1600 = !DILocation(line: 0, scope: !1597, inlinedAt: !1601)
!1601 = distinct !DILocation(line: 157, column: 25, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1603, file: !169, line: 157, column: 23)
!1603 = distinct !DILexicalBlock(scope: !1594, file: !169, line: 156, column: 17)
!1604 = !DILocation(line: 117, column: 7, scope: !1605, inlinedAt: !1601)
!1605 = distinct !DILexicalBlock(scope: !1597, file: !169, line: 117, column: 7)
!1606 = !DILocation(line: 117, column: 7, scope: !1597, inlinedAt: !1601)
!1607 = !DILocation(line: 124, column: 18, scope: !1597, inlinedAt: !1601)
!1608 = !DILocation(line: 157, column: 23, scope: !1603)
!1609 = !DILocation(line: 120, column: 14, scope: !1610, inlinedAt: !1601)
!1610 = distinct !DILexicalBlock(scope: !1605, file: !169, line: 118, column: 5)
!1611 = !DILocation(line: 119, column: 7, scope: !1610, inlinedAt: !1601)
!1612 = !DILocation(line: 164, column: 17, scope: !1594)
!1613 = !DILocation(line: 168, column: 16, scope: !1551)
!1614 = !DILocation(line: 170, column: 15, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !169, line: 170, column: 15)
!1616 = distinct !DILexicalBlock(scope: !1550, file: !169, line: 169, column: 9)
!1617 = !DILocation(line: 170, column: 15, scope: !1616)
!1618 = !DILocation(line: 172, column: 28, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1615, file: !169, line: 171, column: 13)
!1620 = !DILocation(line: 173, column: 22, scope: !1619)
!1621 = !DILocation(line: 172, column: 15, scope: !1619)
!1622 = !DILocation(line: 175, column: 13, scope: !1619)
!1623 = !DILocation(line: 181, column: 15, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !169, line: 181, column: 15)
!1625 = distinct !DILexicalBlock(scope: !1549, file: !169, line: 180, column: 9)
!1626 = !DILocation(line: 181, column: 15, scope: !1625)
!1627 = !DILocation(line: 183, column: 28, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1624, file: !169, line: 182, column: 13)
!1629 = !DILocation(line: 184, column: 22, scope: !1628)
!1630 = !DILocation(line: 183, column: 15, scope: !1628)
!1631 = !DILocation(line: 186, column: 13, scope: !1628)
!1632 = !DILocation(line: 168, column: 16, scope: !1550)
!1633 = !DILocation(line: 190, column: 16, scope: !1548)
!1634 = !DILocation(line: 190, column: 16, scope: !1549)
!1635 = !DILocation(line: 192, column: 16, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1547, file: !169, line: 192, column: 15)
!1637 = !DILocation(line: 192, column: 15, scope: !1547)
!1638 = !DILocation(line: 200, column: 16, scope: !1546)
!1639 = !DILocation(line: 200, column: 15, scope: !1547)
!1640 = !DILocation(line: 202, column: 28, scope: !1545)
!1641 = !DILocation(line: 0, scope: !1545)
!1642 = !DILocation(line: 203, column: 31, scope: !1545)
!1643 = !DILocation(line: 204, column: 28, scope: !1545)
!1644 = !DILocation(line: 204, column: 59, scope: !1545)
!1645 = !DILocation(line: 204, column: 15, scope: !1545)
!1646 = !DILocation(line: 205, column: 15, scope: !1545)
!1647 = !DILocation(line: 207, column: 33, scope: !1545)
!1648 = !DILocation(line: 207, column: 39, scope: !1545)
!1649 = !DILocation(line: 208, column: 13, scope: !1545)
!1650 = !DILocation(line: 212, column: 24, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1548, file: !169, line: 211, column: 9)
!1652 = !DILocation(line: 213, column: 18, scope: !1651)
!1653 = !DILocation(line: 212, column: 11, scope: !1651)
!1654 = !DILocation(line: 215, column: 11, scope: !1651)
!1655 = !DILocation(line: 141, column: 23, scope: !1553)
!1656 = !DILocation(line: 141, column: 3, scope: !1553)
!1657 = distinct !{!1657, !1564, !1658}
!1658 = !DILocation(line: 217, column: 5, scope: !1554)
!1659 = !DILocation(line: 219, column: 10, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1535, file: !169, line: 219, column: 7)
!1661 = !DILocation(line: 221, column: 11, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !169, line: 221, column: 11)
!1663 = distinct !DILexicalBlock(scope: !1660, file: !169, line: 220, column: 5)
!1664 = !DILocation(line: 221, column: 11, scope: !1663)
!1665 = !DILocation(line: 0, scope: !1576, inlinedAt: !1666)
!1666 = distinct !DILocation(line: 222, column: 15, scope: !1662)
!1667 = !DILocation(line: 100, column: 7, scope: !1586, inlinedAt: !1666)
!1668 = !DILocation(line: 100, column: 7, scope: !1576, inlinedAt: !1666)
!1669 = !DILocation(line: 103, column: 14, scope: !1591, inlinedAt: !1666)
!1670 = !DILocation(line: 102, column: 7, scope: !1591, inlinedAt: !1666)
!1671 = !DILocation(line: 106, column: 5, scope: !1591, inlinedAt: !1666)
!1672 = !DILocation(line: 107, column: 15, scope: !1576, inlinedAt: !1666)
!1673 = !DILocation(line: 222, column: 9, scope: !1662)
!1674 = !DILocation(line: 223, column: 16, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1662, file: !169, line: 223, column: 16)
!1676 = !DILocation(line: 223, column: 16, scope: !1662)
!1677 = !DILocation(line: 0, scope: !1597, inlinedAt: !1678)
!1678 = distinct !DILocation(line: 224, column: 15, scope: !1675)
!1679 = !DILocation(line: 117, column: 7, scope: !1605, inlinedAt: !1678)
!1680 = !DILocation(line: 117, column: 7, scope: !1597, inlinedAt: !1678)
!1681 = !DILocation(line: 120, column: 14, scope: !1610, inlinedAt: !1678)
!1682 = !DILocation(line: 119, column: 7, scope: !1610, inlinedAt: !1678)
!1683 = !DILocation(line: 123, column: 5, scope: !1610, inlinedAt: !1678)
!1684 = !DILocation(line: 124, column: 18, scope: !1597, inlinedAt: !1678)
!1685 = !DILocation(line: 224, column: 9, scope: !1675)
!1686 = !DILocation(line: 226, column: 9, scope: !1675)
!1687 = !DILocation(line: 229, column: 9, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1535, file: !169, line: 229, column: 7)
!1689 = !DILocation(line: 229, column: 7, scope: !1535)
!1690 = !DILocation(line: 230, column: 5, scope: !1688)
!1691 = !DILocation(line: 231, column: 1, scope: !1535)
!1692 = distinct !DISubprogram(name: "finalize_tab_stops", scope: !169, file: !169, line: 263, type: !95, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !168, retainedNodes: !31)
!1693 = !DILocation(line: 265, column: 23, scope: !1692)
!1694 = !DILocation(line: 265, column: 33, scope: !1692)
!1695 = !DILocalVariable(name: "tabs", arg: 1, scope: !1696, file: !169, line: 237, type: !1699)
!1696 = distinct !DISubprogram(name: "validate_tab_stops", scope: !169, file: !169, line: 237, type: !1697, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !168, retainedNodes: !1701)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{null, !1699, !85}
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !213)
!1701 = !{!1695, !1702, !1703, !1704}
!1702 = !DILocalVariable(name: "entries", arg: 2, scope: !1696, file: !169, line: 237, type: !85)
!1703 = !DILocalVariable(name: "prev_tab", scope: !1696, file: !169, line: 239, type: !213)
!1704 = !DILocalVariable(name: "i", scope: !1705, file: !169, line: 241, type: !85)
!1705 = distinct !DILexicalBlock(scope: !1696, file: !169, line: 241, column: 3)
!1706 = !DILocation(line: 0, scope: !1696, inlinedAt: !1707)
!1707 = distinct !DILocation(line: 265, column: 3, scope: !1692)
!1708 = !DILocation(line: 0, scope: !1705, inlinedAt: !1707)
!1709 = !DILocation(line: 241, column: 24, scope: !1710, inlinedAt: !1707)
!1710 = distinct !DILexicalBlock(scope: !1705, file: !169, line: 241, column: 3)
!1711 = !DILocation(line: 241, column: 3, scope: !1705, inlinedAt: !1707)
!1712 = distinct !{!1712, !1711, !1713}
!1713 = !DILocation(line: 248, column: 5, scope: !1705, inlinedAt: !1707)
!1714 = !DILocation(line: 250, column: 7, scope: !1715, inlinedAt: !1707)
!1715 = distinct !DILexicalBlock(scope: !1696, file: !169, line: 250, column: 7)
!1716 = !DILocation(line: 250, column: 25, scope: !1715, inlinedAt: !1707)
!1717 = !DILocation(line: 250, column: 22, scope: !1715, inlinedAt: !1707)
!1718 = !DILocation(line: 243, column: 11, scope: !1719, inlinedAt: !1707)
!1719 = distinct !DILexicalBlock(scope: !1720, file: !169, line: 243, column: 11)
!1720 = distinct !DILexicalBlock(scope: !1710, file: !169, line: 242, column: 5)
!1721 = !DILocation(line: 243, column: 19, scope: !1719, inlinedAt: !1707)
!1722 = !DILocation(line: 243, column: 11, scope: !1720, inlinedAt: !1707)
!1723 = !DILocation(line: 244, column: 9, scope: !1719, inlinedAt: !1707)
!1724 = !DILocation(line: 245, column: 19, scope: !1725, inlinedAt: !1707)
!1725 = distinct !DILexicalBlock(scope: !1720, file: !169, line: 245, column: 11)
!1726 = !DILocation(line: 241, column: 36, scope: !1710, inlinedAt: !1707)
!1727 = !DILocation(line: 245, column: 11, scope: !1720, inlinedAt: !1707)
!1728 = !DILocation(line: 246, column: 9, scope: !1725, inlinedAt: !1707)
!1729 = !DILocation(line: 251, column: 5, scope: !1715, inlinedAt: !1707)
!1730 = !DILocation(line: 267, column: 7, scope: !1692)
!1731 = !DILocation(line: 268, column: 35, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1692, file: !169, line: 267, column: 7)
!1733 = !DILocation(line: 268, column: 33, scope: !1732)
!1734 = !DILocation(line: 268, column: 5, scope: !1732)
!1735 = !DILocation(line: 271, column: 27, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1732, file: !169, line: 271, column: 12)
!1737 = !DILocation(line: 271, column: 32, scope: !1736)
!1738 = !DILocation(line: 272, column: 16, scope: !1736)
!1739 = !DILocation(line: 272, column: 5, scope: !1736)
!1740 = !DILocation(line: 0, scope: !1732)
!1741 = !DILocation(line: 275, column: 1, scope: !1692)
!1742 = distinct !DISubprogram(name: "get_next_tab_column", scope: !169, file: !169, line: 279, type: !1743, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !168, retainedNodes: !1745)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{!213, !1700, !199, !149}
!1745 = !{!1746, !1747, !1748, !1749, !1753}
!1746 = !DILocalVariable(name: "column", arg: 1, scope: !1742, file: !169, line: 279, type: !1700)
!1747 = !DILocalVariable(name: "tab_index", arg: 2, scope: !1742, file: !169, line: 279, type: !199)
!1748 = !DILocalVariable(name: "last_tab", arg: 3, scope: !1742, file: !169, line: 280, type: !149)
!1749 = !DILocalVariable(name: "tab", scope: !1750, file: !169, line: 292, type: !213)
!1750 = distinct !DILexicalBlock(scope: !1751, file: !169, line: 291, column: 5)
!1751 = distinct !DILexicalBlock(scope: !1752, file: !169, line: 290, column: 3)
!1752 = distinct !DILexicalBlock(scope: !1742, file: !169, line: 290, column: 3)
!1753 = !DILocalVariable(name: "end_tab", scope: !1754, file: !169, line: 304, type: !213)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !169, line: 303, column: 5)
!1755 = distinct !DILexicalBlock(scope: !1742, file: !169, line: 302, column: 7)
!1756 = !DILocation(line: 0, scope: !1742)
!1757 = !DILocation(line: 282, column: 13, scope: !1742)
!1758 = !DILocation(line: 285, column: 7, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1742, file: !169, line: 285, column: 7)
!1760 = !DILocation(line: 285, column: 7, scope: !1742)
!1761 = !DILocation(line: 290, column: 11, scope: !1751)
!1762 = !DILocation(line: 290, column: 24, scope: !1751)
!1763 = !DILocation(line: 290, column: 22, scope: !1751)
!1764 = !DILocation(line: 290, column: 3, scope: !1752)
!1765 = !DILocation(line: 0, scope: !1750)
!1766 = !DILocation(line: 286, column: 40, scope: !1759)
!1767 = !DILocation(line: 286, column: 31, scope: !1759)
!1768 = !DILocation(line: 286, column: 19, scope: !1759)
!1769 = !DILocation(line: 286, column: 5, scope: !1759)
!1770 = !DILocation(line: 292, column: 25, scope: !1750)
!1771 = !DILocation(line: 293, column: 20, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1750, file: !169, line: 293, column: 13)
!1773 = !DILocation(line: 290, column: 53, scope: !1751)
!1774 = distinct !{!1774, !1764, !1775}
!1775 = !DILocation(line: 295, column: 5, scope: !1752)
!1776 = !DILocation(line: 298, column: 7, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1742, file: !169, line: 298, column: 7)
!1778 = !DILocation(line: 298, column: 7, scope: !1742)
!1779 = !DILocation(line: 299, column: 43, scope: !1777)
!1780 = !DILocation(line: 299, column: 34, scope: !1777)
!1781 = !DILocation(line: 299, column: 19, scope: !1777)
!1782 = !DILocation(line: 299, column: 5, scope: !1777)
!1783 = !DILocation(line: 302, column: 7, scope: !1755)
!1784 = !DILocation(line: 302, column: 7, scope: !1742)
!1785 = !DILocation(line: 304, column: 27, scope: !1754)
!1786 = !DILocation(line: 304, column: 51, scope: !1754)
!1787 = !DILocation(line: 0, scope: !1754)
!1788 = !DILocation(line: 306, column: 50, scope: !1754)
!1789 = !DILocation(line: 306, column: 61, scope: !1754)
!1790 = !DILocation(line: 306, column: 39, scope: !1754)
!1791 = !DILocation(line: 306, column: 21, scope: !1754)
!1792 = !DILocation(line: 309, column: 13, scope: !1742)
!1793 = !DILocation(line: 310, column: 3, scope: !1742)
!1794 = !DILocation(line: 311, column: 1, scope: !1742)
!1795 = distinct !DISubprogram(name: "set_file_list", scope: !169, file: !169, line: 318, type: !138, scopeLine: 319, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !168, retainedNodes: !1796)
!1796 = !{!1797}
!1797 = !DILocalVariable(name: "list", arg: 1, scope: !1795, file: !169, line: 318, type: !140)
!1798 = !DILocation(line: 0, scope: !1795)
!1799 = !DILocation(line: 320, column: 19, scope: !1795)
!1800 = !DILocation(line: 322, column: 8, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1795, file: !169, line: 322, column: 7)
!1802 = !DILocation(line: 0, scope: !1801)
!1803 = !DILocation(line: 326, column: 1, scope: !1795)
!1804 = !DILocation(line: 0, scope: !280)
!1805 = !DILocation(line: 339, column: 7, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !280, file: !169, line: 339, column: 7)
!1807 = !DILocation(line: 339, column: 7, scope: !280)
!1808 = !DILocation(line: 341, column: 7, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !169, line: 341, column: 7)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !169, line: 341, column: 7)
!1811 = distinct !DILexicalBlock(scope: !1806, file: !169, line: 340, column: 5)
!1812 = !DILocation(line: 341, column: 7, scope: !1810)
!1813 = !DILocalVariable(name: "__stream", arg: 1, scope: !1814, file: !1388, line: 135, type: !283)
!1814 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1388, file: !1388, line: 135, type: !1815, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !168, retainedNodes: !1817)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{!30, !283}
!1817 = !{!1813}
!1818 = !DILocation(line: 0, scope: !1814, inlinedAt: !1819)
!1819 = distinct !DILocation(line: 342, column: 11, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1811, file: !169, line: 342, column: 11)
!1821 = !DILocation(line: 137, column: 10, scope: !1814, inlinedAt: !1819)
!1822 = !{!1396, !1352, i64 0}
!1823 = !DILocation(line: 342, column: 11, scope: !1820)
!1824 = !DILocation(line: 342, column: 11, scope: !1811)
!1825 = !DILocation(line: 344, column: 21, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1820, file: !169, line: 343, column: 9)
!1827 = !DILocation(line: 344, column: 34, scope: !1826)
!1828 = !DILocation(line: 344, column: 11, scope: !1826)
!1829 = !DILocation(line: 345, column: 23, scope: !1826)
!1830 = !DILocation(line: 347, column: 11, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1811, file: !169, line: 347, column: 11)
!1832 = !DILocation(line: 346, column: 9, scope: !1826)
!1833 = !DILocation(line: 347, column: 11, scope: !1811)
!1834 = !DILocation(line: 348, column: 9, scope: !1831)
!1835 = !DILocation(line: 349, column: 16, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1831, file: !169, line: 349, column: 16)
!1837 = !DILocation(line: 349, column: 28, scope: !1836)
!1838 = !DILocation(line: 349, column: 16, scope: !1831)
!1839 = !DILocation(line: 351, column: 21, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1836, file: !169, line: 350, column: 9)
!1841 = !DILocation(line: 351, column: 34, scope: !1840)
!1842 = !DILocation(line: 351, column: 11, scope: !1840)
!1843 = !DILocation(line: 352, column: 23, scope: !1840)
!1844 = !DILocation(line: 353, column: 9, scope: !1840)
!1845 = !DILocation(line: 356, column: 28, scope: !280)
!1846 = !DILocation(line: 356, column: 18, scope: !280)
!1847 = !DILocation(line: 356, column: 32, scope: !280)
!1848 = !DILocation(line: 356, column: 3, scope: !280)
!1849 = !DILocation(line: 358, column: 11, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !169, line: 358, column: 11)
!1851 = distinct !DILexicalBlock(scope: !280, file: !169, line: 357, column: 5)
!1852 = !DILocation(line: 358, column: 11, scope: !1851)
!1853 = !DILocation(line: 360, column: 27, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1850, file: !169, line: 359, column: 9)
!1855 = !DILocation(line: 361, column: 16, scope: !1854)
!1856 = !DILocation(line: 362, column: 9, scope: !1854)
!1857 = !DILocation(line: 364, column: 14, scope: !1850)
!1858 = !DILocation(line: 0, scope: !1850)
!1859 = !DILocation(line: 365, column: 11, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1851, file: !169, line: 365, column: 11)
!1861 = !DILocation(line: 365, column: 11, scope: !1851)
!1862 = !DILocation(line: 367, column: 21, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1860, file: !169, line: 366, column: 9)
!1864 = !DILocation(line: 368, column: 11, scope: !1863)
!1865 = !DILocation(line: 369, column: 11, scope: !1863)
!1866 = !DILocation(line: 371, column: 17, scope: !1851)
!1867 = !DILocation(line: 371, column: 30, scope: !1851)
!1868 = !DILocation(line: 371, column: 7, scope: !1851)
!1869 = !DILocation(line: 372, column: 19, scope: !1851)
!1870 = distinct !{!1870, !1848, !1871}
!1871 = !DILocation(line: 373, column: 5, scope: !280)
!1872 = !DILocation(line: 375, column: 1, scope: !280)
!1873 = distinct !DISubprogram(name: "cleanup_file_list_stdin", scope: !169, file: !169, line: 379, type: !95, scopeLine: 380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !168, retainedNodes: !31)
!1874 = !DILocation(line: 381, column: 9, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1873, file: !169, line: 381, column: 9)
!1876 = !DILocation(line: 381, column: 25, scope: !1875)
!1877 = !DILocation(line: 381, column: 36, scope: !1875)
!1878 = !DILocation(line: 381, column: 28, scope: !1875)
!1879 = !DILocation(line: 381, column: 43, scope: !1875)
!1880 = !DILocation(line: 381, column: 9, scope: !1873)
!1881 = !DILocation(line: 382, column: 7, scope: !1875)
!1882 = !DILocation(line: 383, column: 1, scope: !1873)
!1883 = distinct !DISubprogram(name: "emit_tab_list_info", scope: !169, file: !169, line: 387, type: !95, scopeLine: 388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !168, retainedNodes: !31)
!1884 = !DILocation(line: 390, column: 3, scope: !1883)
!1885 = !DILocation(line: 393, column: 3, scope: !1883)
!1886 = !DILocation(line: 400, column: 1, scope: !1883)
!1887 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !321, file: !321, line: 51, type: !99, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !1888)
!1888 = !{!1889}
!1889 = !DILocalVariable(name: "file", arg: 1, scope: !1887, file: !321, line: 51, type: !28)
!1890 = !DILocation(line: 0, scope: !1887)
!1891 = !DILocation(line: 53, column: 13, scope: !1887)
!1892 = !DILocation(line: 54, column: 1, scope: !1887)
!1893 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !321, file: !321, line: 88, type: !1894, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !1896)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{null, !150}
!1896 = !{!1897}
!1897 = !DILocalVariable(name: "ignore", arg: 1, scope: !1893, file: !321, line: 88, type: !150)
!1898 = !DILocation(line: 0, scope: !1893)
!1899 = !DILocation(line: 90, column: 16, scope: !1893)
!1900 = !DILocation(line: 91, column: 1, scope: !1893)
!1901 = distinct !DISubprogram(name: "close_stdout", scope: !321, file: !321, line: 117, type: !95, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !1902)
!1902 = !{!1903}
!1903 = !DILocalVariable(name: "write_error", scope: !1904, file: !321, line: 122, type: !28)
!1904 = distinct !DILexicalBlock(scope: !1905, file: !321, line: 121, column: 5)
!1905 = distinct !DILexicalBlock(scope: !1901, file: !321, line: 119, column: 7)
!1906 = !DILocation(line: 119, column: 21, scope: !1905)
!1907 = !DILocation(line: 119, column: 7, scope: !1905)
!1908 = !DILocation(line: 119, column: 29, scope: !1905)
!1909 = !DILocation(line: 120, column: 7, scope: !1905)
!1910 = !DILocation(line: 120, column: 12, scope: !1905)
!1911 = !DILocation(line: 120, column: 25, scope: !1905)
!1912 = !DILocation(line: 120, column: 28, scope: !1905)
!1913 = !DILocation(line: 120, column: 34, scope: !1905)
!1914 = !DILocation(line: 119, column: 7, scope: !1901)
!1915 = !DILocation(line: 122, column: 33, scope: !1904)
!1916 = !DILocation(line: 0, scope: !1904)
!1917 = !DILocation(line: 123, column: 11, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1904, file: !321, line: 123, column: 11)
!1919 = !DILocation(line: 0, scope: !1918)
!1920 = !DILocation(line: 123, column: 11, scope: !1904)
!1921 = !DILocation(line: 124, column: 36, scope: !1918)
!1922 = !DILocation(line: 124, column: 9, scope: !1918)
!1923 = !DILocation(line: 127, column: 9, scope: !1918)
!1924 = !DILocation(line: 129, column: 14, scope: !1904)
!1925 = !DILocation(line: 129, column: 7, scope: !1904)
!1926 = !DILocation(line: 134, column: 42, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1901, file: !321, line: 134, column: 7)
!1928 = !DILocation(line: 134, column: 28, scope: !1927)
!1929 = !DILocation(line: 134, column: 50, scope: !1927)
!1930 = !DILocation(line: 134, column: 7, scope: !1901)
!1931 = !DILocation(line: 135, column: 12, scope: !1927)
!1932 = !DILocation(line: 135, column: 5, scope: !1927)
!1933 = !DILocation(line: 136, column: 1, scope: !1901)
!1934 = distinct !DISubprogram(name: "fdadvise", scope: !522, file: !522, line: 31, type: !1935, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !521, retainedNodes: !1939)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{null, !30, !1937, !1937, !1938}
!1937 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !33, line: 63, baseType: !59)
!1938 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !186, line: 52, baseType: !185)
!1939 = !{!1940, !1941, !1942, !1943, !1944}
!1940 = !DILocalVariable(name: "fd", arg: 1, scope: !1934, file: !522, line: 31, type: !30)
!1941 = !DILocalVariable(name: "offset", arg: 2, scope: !1934, file: !522, line: 31, type: !1937)
!1942 = !DILocalVariable(name: "len", arg: 3, scope: !1934, file: !522, line: 31, type: !1937)
!1943 = !DILocalVariable(name: "advice", arg: 4, scope: !1934, file: !522, line: 31, type: !1938)
!1944 = !DILocalVariable(name: "__x", scope: !1945, file: !522, line: 34, type: !30)
!1945 = distinct !DILexicalBlock(scope: !1934, file: !522, line: 34, column: 3)
!1946 = !DILocation(line: 0, scope: !1934)
!1947 = !DILocation(line: 34, column: 3, scope: !1945)
!1948 = !DILocation(line: 0, scope: !1945)
!1949 = !DILocation(line: 36, column: 1, scope: !1934)
!1950 = distinct !DISubprogram(name: "fadvise", scope: !522, file: !522, line: 39, type: !1951, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !521, retainedNodes: !1955)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{null, !1953, !1938}
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !285, line: 7, baseType: !533)
!1955 = !{!1956, !1957}
!1956 = !DILocalVariable(name: "fp", arg: 1, scope: !1950, file: !522, line: 39, type: !1953)
!1957 = !DILocalVariable(name: "advice", arg: 2, scope: !1950, file: !522, line: 39, type: !1938)
!1958 = !DILocation(line: 0, scope: !1950)
!1959 = !DILocation(line: 41, column: 7, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1950, file: !522, line: 41, column: 7)
!1961 = !DILocation(line: 41, column: 7, scope: !1950)
!1962 = !DILocation(line: 42, column: 15, scope: !1960)
!1963 = !DILocation(line: 0, scope: !1934, inlinedAt: !1964)
!1964 = distinct !DILocation(line: 42, column: 5, scope: !1960)
!1965 = !DILocation(line: 34, column: 3, scope: !1945, inlinedAt: !1964)
!1966 = !DILocation(line: 0, scope: !1945, inlinedAt: !1964)
!1967 = !DILocation(line: 42, column: 5, scope: !1960)
!1968 = !DILocation(line: 43, column: 1, scope: !1950)
!1969 = distinct !DISubprogram(name: "set_program_name", scope: !372, file: !372, line: 39, type: !99, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !371, retainedNodes: !1970)
!1970 = !{!1971, !1972, !1973}
!1971 = !DILocalVariable(name: "argv0", arg: 1, scope: !1969, file: !372, line: 39, type: !28)
!1972 = !DILocalVariable(name: "slash", scope: !1969, file: !372, line: 46, type: !28)
!1973 = !DILocalVariable(name: "base", scope: !1969, file: !372, line: 47, type: !28)
!1974 = !DILocation(line: 0, scope: !1969)
!1975 = !DILocation(line: 51, column: 13, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1969, file: !372, line: 51, column: 7)
!1977 = !DILocation(line: 51, column: 7, scope: !1969)
!1978 = !DILocation(line: 55, column: 14, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1976, file: !372, line: 52, column: 5)
!1980 = !DILocation(line: 54, column: 7, scope: !1979)
!1981 = !DILocation(line: 56, column: 7, scope: !1979)
!1982 = !DILocation(line: 59, column: 11, scope: !1969)
!1983 = !DILocation(line: 60, column: 17, scope: !1969)
!1984 = !DILocation(line: 60, column: 11, scope: !1969)
!1985 = !DILocation(line: 61, column: 12, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1969, file: !372, line: 61, column: 7)
!1987 = !DILocation(line: 61, column: 20, scope: !1986)
!1988 = !DILocation(line: 61, column: 25, scope: !1986)
!1989 = !DILocation(line: 61, column: 42, scope: !1986)
!1990 = !DILocation(line: 61, column: 28, scope: !1986)
!1991 = !DILocation(line: 61, column: 61, scope: !1986)
!1992 = !DILocation(line: 61, column: 7, scope: !1969)
!1993 = !DILocation(line: 64, column: 11, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !372, line: 64, column: 11)
!1995 = distinct !DILexicalBlock(scope: !1986, file: !372, line: 62, column: 5)
!1996 = !DILocation(line: 64, column: 36, scope: !1994)
!1997 = !DILocation(line: 64, column: 11, scope: !1995)
!1998 = !DILocation(line: 66, column: 24, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1994, file: !372, line: 65, column: 9)
!2000 = !DILocation(line: 70, column: 41, scope: !1999)
!2001 = !DILocation(line: 72, column: 9, scope: !1999)
!2002 = !DILocation(line: 84, column: 16, scope: !1969)
!2003 = !DILocation(line: 90, column: 27, scope: !1969)
!2004 = !DILocation(line: 92, column: 1, scope: !1969)
!2005 = distinct !DISubprogram(name: "clone_quoting_options", scope: !413, file: !413, line: 122, type: !2006, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !2009)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!2008, !2008}
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!2009 = !{!2010, !2011, !2012}
!2010 = !DILocalVariable(name: "o", arg: 1, scope: !2005, file: !413, line: 122, type: !2008)
!2011 = !DILocalVariable(name: "e", scope: !2005, file: !413, line: 124, type: !30)
!2012 = !DILocalVariable(name: "p", scope: !2005, file: !413, line: 125, type: !2008)
!2013 = !DILocation(line: 0, scope: !2005)
!2014 = !DILocation(line: 124, column: 11, scope: !2005)
!2015 = !DILocation(line: 125, column: 40, scope: !2005)
!2016 = !DILocation(line: 125, column: 31, scope: !2005)
!2017 = !DILocation(line: 127, column: 9, scope: !2005)
!2018 = !DILocation(line: 128, column: 3, scope: !2005)
!2019 = distinct !DISubprogram(name: "get_quoting_style", scope: !413, file: !413, line: 133, type: !2020, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !2022)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!171, !429}
!2022 = !{!2023}
!2023 = !DILocalVariable(name: "o", arg: 1, scope: !2019, file: !413, line: 133, type: !429)
!2024 = !DILocation(line: 0, scope: !2019)
!2025 = !DILocation(line: 135, column: 11, scope: !2019)
!2026 = !DILocation(line: 135, column: 46, scope: !2019)
!2027 = !{!2028, !1256, i64 0}
!2028 = !{!"quoting_options", !1256, i64 0, !1352, i64 4, !1256, i64 8, !1255, i64 40, !1255, i64 48}
!2029 = !DILocation(line: 135, column: 3, scope: !2019)
!2030 = distinct !DISubprogram(name: "set_quoting_style", scope: !413, file: !413, line: 141, type: !2031, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !2033)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{null, !2008, !171}
!2033 = !{!2034, !2035}
!2034 = !DILocalVariable(name: "o", arg: 1, scope: !2030, file: !413, line: 141, type: !2008)
!2035 = !DILocalVariable(name: "s", arg: 2, scope: !2030, file: !413, line: 141, type: !171)
!2036 = !DILocation(line: 0, scope: !2030)
!2037 = !DILocation(line: 143, column: 4, scope: !2030)
!2038 = !DILocation(line: 143, column: 39, scope: !2030)
!2039 = !DILocation(line: 143, column: 45, scope: !2030)
!2040 = !DILocation(line: 144, column: 1, scope: !2030)
!2041 = distinct !DISubprogram(name: "set_char_quoting", scope: !413, file: !413, line: 152, type: !2042, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !2044)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!30, !2008, !27, !30}
!2044 = !{!2045, !2046, !2047, !2048, !2049, !2051, !2052}
!2045 = !DILocalVariable(name: "o", arg: 1, scope: !2041, file: !413, line: 152, type: !2008)
!2046 = !DILocalVariable(name: "c", arg: 2, scope: !2041, file: !413, line: 152, type: !27)
!2047 = !DILocalVariable(name: "i", arg: 3, scope: !2041, file: !413, line: 152, type: !30)
!2048 = !DILocalVariable(name: "uc", scope: !2041, file: !413, line: 154, type: !156)
!2049 = !DILocalVariable(name: "p", scope: !2041, file: !413, line: 155, type: !2050)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2051 = !DILocalVariable(name: "shift", scope: !2041, file: !413, line: 157, type: !30)
!2052 = !DILocalVariable(name: "r", scope: !2041, file: !413, line: 158, type: !30)
!2053 = !DILocation(line: 0, scope: !2041)
!2054 = !DILocation(line: 156, column: 6, scope: !2041)
!2055 = !DILocation(line: 156, column: 62, scope: !2041)
!2056 = !DILocation(line: 156, column: 57, scope: !2041)
!2057 = !DILocation(line: 157, column: 15, scope: !2041)
!2058 = !DILocation(line: 158, column: 12, scope: !2041)
!2059 = !DILocation(line: 158, column: 15, scope: !2041)
!2060 = !DILocation(line: 158, column: 25, scope: !2041)
!2061 = !DILocation(line: 159, column: 13, scope: !2041)
!2062 = !DILocation(line: 159, column: 18, scope: !2041)
!2063 = !DILocation(line: 159, column: 23, scope: !2041)
!2064 = !DILocation(line: 159, column: 6, scope: !2041)
!2065 = !DILocation(line: 160, column: 3, scope: !2041)
!2066 = distinct !DISubprogram(name: "set_quoting_flags", scope: !413, file: !413, line: 168, type: !2067, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !2069)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{!30, !2008, !30}
!2069 = !{!2070, !2071, !2072}
!2070 = !DILocalVariable(name: "o", arg: 1, scope: !2066, file: !413, line: 168, type: !2008)
!2071 = !DILocalVariable(name: "i", arg: 2, scope: !2066, file: !413, line: 168, type: !30)
!2072 = !DILocalVariable(name: "r", scope: !2066, file: !413, line: 170, type: !30)
!2073 = !DILocation(line: 0, scope: !2066)
!2074 = !DILocation(line: 171, column: 8, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2066, file: !413, line: 171, column: 7)
!2076 = !DILocation(line: 171, column: 7, scope: !2066)
!2077 = !DILocation(line: 173, column: 10, scope: !2066)
!2078 = !{!2028, !1352, i64 4}
!2079 = !DILocation(line: 174, column: 12, scope: !2066)
!2080 = !DILocation(line: 175, column: 3, scope: !2066)
!2081 = distinct !DISubprogram(name: "set_custom_quoting", scope: !413, file: !413, line: 179, type: !2082, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !2084)
!2082 = !DISubroutineType(types: !2083)
!2083 = !{null, !2008, !28, !28}
!2084 = !{!2085, !2086, !2087}
!2085 = !DILocalVariable(name: "o", arg: 1, scope: !2081, file: !413, line: 179, type: !2008)
!2086 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2081, file: !413, line: 180, type: !28)
!2087 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2081, file: !413, line: 180, type: !28)
!2088 = !DILocation(line: 0, scope: !2081)
!2089 = !DILocation(line: 182, column: 8, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2081, file: !413, line: 182, column: 7)
!2091 = !DILocation(line: 182, column: 7, scope: !2081)
!2092 = !DILocation(line: 184, column: 6, scope: !2081)
!2093 = !DILocation(line: 184, column: 12, scope: !2081)
!2094 = !DILocation(line: 185, column: 8, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2081, file: !413, line: 185, column: 7)
!2096 = !DILocation(line: 185, column: 23, scope: !2095)
!2097 = !DILocation(line: 185, column: 19, scope: !2095)
!2098 = !DILocation(line: 186, column: 5, scope: !2095)
!2099 = !DILocation(line: 187, column: 6, scope: !2081)
!2100 = !DILocation(line: 187, column: 17, scope: !2081)
!2101 = !{!2028, !1255, i64 40}
!2102 = !DILocation(line: 188, column: 6, scope: !2081)
!2103 = !DILocation(line: 188, column: 18, scope: !2081)
!2104 = !{!2028, !1255, i64 48}
!2105 = !DILocation(line: 189, column: 1, scope: !2081)
!2106 = distinct !DISubprogram(name: "quotearg_buffer", scope: !413, file: !413, line: 784, type: !2107, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !2109)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!85, !26, !85, !28, !85, !429}
!2109 = !{!2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117}
!2110 = !DILocalVariable(name: "buffer", arg: 1, scope: !2106, file: !413, line: 784, type: !26)
!2111 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2106, file: !413, line: 784, type: !85)
!2112 = !DILocalVariable(name: "arg", arg: 3, scope: !2106, file: !413, line: 785, type: !28)
!2113 = !DILocalVariable(name: "argsize", arg: 4, scope: !2106, file: !413, line: 785, type: !85)
!2114 = !DILocalVariable(name: "o", arg: 5, scope: !2106, file: !413, line: 786, type: !429)
!2115 = !DILocalVariable(name: "p", scope: !2106, file: !413, line: 788, type: !429)
!2116 = !DILocalVariable(name: "e", scope: !2106, file: !413, line: 789, type: !30)
!2117 = !DILocalVariable(name: "r", scope: !2106, file: !413, line: 790, type: !85)
!2118 = !DILocation(line: 0, scope: !2106)
!2119 = !DILocation(line: 788, column: 37, scope: !2106)
!2120 = !DILocation(line: 789, column: 11, scope: !2106)
!2121 = !DILocation(line: 791, column: 43, scope: !2106)
!2122 = !DILocation(line: 791, column: 53, scope: !2106)
!2123 = !DILocation(line: 791, column: 60, scope: !2106)
!2124 = !DILocation(line: 792, column: 43, scope: !2106)
!2125 = !DILocation(line: 792, column: 58, scope: !2106)
!2126 = !DILocation(line: 790, column: 14, scope: !2106)
!2127 = !DILocation(line: 793, column: 9, scope: !2106)
!2128 = !DILocation(line: 794, column: 3, scope: !2106)
!2129 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !413, file: !413, line: 256, type: !2130, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !2134)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!85, !26, !85, !28, !85, !171, !30, !2132, !28, !28}
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2134 = !{!2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2159, !2160, !2161, !2162, !2163, !2166, !2167, !2173, !2176, !2177, !2184, !2187, !2188, !2189, !2190, !2191, !2192}
!2135 = !DILocalVariable(name: "buffer", arg: 1, scope: !2129, file: !413, line: 256, type: !26)
!2136 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2129, file: !413, line: 256, type: !85)
!2137 = !DILocalVariable(name: "arg", arg: 3, scope: !2129, file: !413, line: 257, type: !28)
!2138 = !DILocalVariable(name: "argsize", arg: 4, scope: !2129, file: !413, line: 257, type: !85)
!2139 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2129, file: !413, line: 258, type: !171)
!2140 = !DILocalVariable(name: "flags", arg: 6, scope: !2129, file: !413, line: 258, type: !30)
!2141 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2129, file: !413, line: 259, type: !2132)
!2142 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2129, file: !413, line: 260, type: !28)
!2143 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2129, file: !413, line: 261, type: !28)
!2144 = !DILocalVariable(name: "i", scope: !2129, file: !413, line: 263, type: !85)
!2145 = !DILocalVariable(name: "len", scope: !2129, file: !413, line: 264, type: !85)
!2146 = !DILocalVariable(name: "orig_buffersize", scope: !2129, file: !413, line: 265, type: !85)
!2147 = !DILocalVariable(name: "quote_string", scope: !2129, file: !413, line: 266, type: !28)
!2148 = !DILocalVariable(name: "quote_string_len", scope: !2129, file: !413, line: 267, type: !85)
!2149 = !DILocalVariable(name: "backslash_escapes", scope: !2129, file: !413, line: 268, type: !150)
!2150 = !DILocalVariable(name: "unibyte_locale", scope: !2129, file: !413, line: 269, type: !150)
!2151 = !DILocalVariable(name: "elide_outer_quotes", scope: !2129, file: !413, line: 270, type: !150)
!2152 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2129, file: !413, line: 271, type: !150)
!2153 = !DILocalVariable(name: "encountered_single_quote", scope: !2129, file: !413, line: 272, type: !150)
!2154 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2129, file: !413, line: 273, type: !150)
!2155 = !DILocalVariable(name: "c", scope: !2156, file: !413, line: 402, type: !156)
!2156 = distinct !DILexicalBlock(scope: !2157, file: !413, line: 401, column: 5)
!2157 = distinct !DILexicalBlock(scope: !2158, file: !413, line: 400, column: 3)
!2158 = distinct !DILexicalBlock(scope: !2129, file: !413, line: 400, column: 3)
!2159 = !DILocalVariable(name: "esc", scope: !2156, file: !413, line: 403, type: !156)
!2160 = !DILocalVariable(name: "is_right_quote", scope: !2156, file: !413, line: 404, type: !150)
!2161 = !DILocalVariable(name: "escaping", scope: !2156, file: !413, line: 405, type: !150)
!2162 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2156, file: !413, line: 406, type: !150)
!2163 = !DILocalVariable(name: "m", scope: !2164, file: !413, line: 610, type: !85)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !413, line: 608, column: 11)
!2165 = distinct !DILexicalBlock(scope: !2156, file: !413, line: 426, column: 9)
!2166 = !DILocalVariable(name: "printable", scope: !2164, file: !413, line: 612, type: !150)
!2167 = !DILocalVariable(name: "mbstate", scope: !2168, file: !413, line: 621, type: !2170)
!2168 = distinct !DILexicalBlock(scope: !2169, file: !413, line: 620, column: 15)
!2169 = distinct !DILexicalBlock(scope: !2164, file: !413, line: 614, column: 17)
!2170 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2171, line: 6, baseType: !2172)
!2171 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!2172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !450, line: 21, baseType: !449)
!2173 = !DILocalVariable(name: "w", scope: !2174, file: !413, line: 631, type: !2175)
!2174 = distinct !DILexicalBlock(scope: !2168, file: !413, line: 630, column: 19)
!2175 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !86, line: 74, baseType: !30)
!2176 = !DILocalVariable(name: "bytes", scope: !2174, file: !413, line: 632, type: !85)
!2177 = !DILocalVariable(name: "j", scope: !2178, file: !413, line: 657, type: !85)
!2178 = distinct !DILexicalBlock(scope: !2179, file: !413, line: 656, column: 27)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !413, line: 654, column: 29)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !413, line: 649, column: 23)
!2181 = distinct !DILexicalBlock(scope: !2182, file: !413, line: 641, column: 30)
!2182 = distinct !DILexicalBlock(scope: !2183, file: !413, line: 636, column: 30)
!2183 = distinct !DILexicalBlock(scope: !2174, file: !413, line: 634, column: 25)
!2184 = !DILocalVariable(name: "ilim", scope: !2185, file: !413, line: 684, type: !85)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !413, line: 681, column: 15)
!2186 = distinct !DILexicalBlock(scope: !2164, file: !413, line: 680, column: 17)
!2187 = !DILabel(scope: !2129, name: "process_input", file: !413, line: 314)
!2188 = !DILabel(scope: !2165, name: "c_and_shell_escape", file: !413, line: 512)
!2189 = !DILabel(scope: !2165, name: "c_escape", file: !413, line: 517)
!2190 = !DILabel(scope: !2156, name: "store_escape", file: !413, line: 719)
!2191 = !DILabel(scope: !2156, name: "store_c", file: !413, line: 722)
!2192 = !DILabel(scope: !2129, name: "force_outer_quoting_style", file: !413, line: 763)
!2193 = !DILocation(line: 0, scope: !2129)
!2194 = !DILocation(line: 269, column: 25, scope: !2129)
!2195 = !DILocation(line: 269, column: 36, scope: !2129)
!2196 = !DILocation(line: 270, column: 8, scope: !2129)
!2197 = !DILocation(line: 0, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2165, file: !413, line: 526, column: 15)
!2199 = !DILocation(line: 0, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2201, file: !413, line: 462, column: 19)
!2201 = distinct !DILexicalBlock(scope: !2165, file: !413, line: 455, column: 13)
!2202 = !DILocation(line: 0, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2204, file: !413, line: 449, column: 20)
!2204 = distinct !DILexicalBlock(scope: !2165, file: !413, line: 428, column: 15)
!2205 = !DILocation(line: 0, scope: !2168)
!2206 = !DILocation(line: 0, scope: !2174)
!2207 = !DILocation(line: 0, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2156, file: !413, line: 712, column: 11)
!2209 = !DILocation(line: 273, column: 3, scope: !2129)
!2210 = !DILocation(line: 265, column: 10, scope: !2129)
!2211 = !DILocation(line: 266, column: 15, scope: !2129)
!2212 = !DILocation(line: 267, column: 10, scope: !2129)
!2213 = !DILocation(line: 268, column: 8, scope: !2129)
!2214 = !DILocation(line: 271, column: 8, scope: !2129)
!2215 = !DILocation(line: 272, column: 8, scope: !2129)
!2216 = !DILocation(line: 273, column: 8, scope: !2129)
!2217 = !DILocation(line: 314, column: 2, scope: !2129)
!2218 = !DILocation(line: 316, column: 3, scope: !2129)
!2219 = !DILocation(line: 323, column: 11, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2129, file: !413, line: 317, column: 5)
!2221 = !DILocation(line: 323, column: 12, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2220, file: !413, line: 323, column: 11)
!2223 = !DILocation(line: 324, column: 9, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2225, file: !413, line: 324, column: 9)
!2225 = distinct !DILexicalBlock(scope: !2222, file: !413, line: 324, column: 9)
!2226 = !DILocation(line: 324, column: 9, scope: !2225)
!2227 = !DILocation(line: 362, column: 26, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !413, line: 340, column: 11)
!2229 = distinct !DILexicalBlock(scope: !2230, file: !413, line: 339, column: 13)
!2230 = distinct !DILexicalBlock(scope: !2220, file: !413, line: 338, column: 7)
!2231 = !DILocation(line: 363, column: 27, scope: !2228)
!2232 = !DILocation(line: 364, column: 11, scope: !2228)
!2233 = !DILocation(line: 365, column: 14, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2230, file: !413, line: 365, column: 13)
!2235 = !DILocation(line: 365, column: 13, scope: !2230)
!2236 = !DILocation(line: 366, column: 43, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !413, line: 366, column: 11)
!2238 = distinct !DILexicalBlock(scope: !2234, file: !413, line: 366, column: 11)
!2239 = !DILocation(line: 366, column: 11, scope: !2238)
!2240 = !DILocation(line: 367, column: 13, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2242, file: !413, line: 367, column: 13)
!2242 = distinct !DILexicalBlock(scope: !2237, file: !413, line: 367, column: 13)
!2243 = !DILocation(line: 367, column: 13, scope: !2242)
!2244 = !DILocation(line: 366, column: 70, scope: !2237)
!2245 = distinct !{!2245, !2239, !2246}
!2246 = !DILocation(line: 367, column: 13, scope: !2238)
!2247 = !DILocation(line: 264, column: 10, scope: !2129)
!2248 = !DILocation(line: 370, column: 28, scope: !2230)
!2249 = !DILocation(line: 372, column: 7, scope: !2220)
!2250 = !DILocation(line: 376, column: 7, scope: !2220)
!2251 = !DILocation(line: 379, column: 7, scope: !2220)
!2252 = !DILocation(line: 381, column: 12, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2220, file: !413, line: 381, column: 11)
!2254 = !DILocation(line: 381, column: 11, scope: !2220)
!2255 = !DILocation(line: 386, column: 12, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2220, file: !413, line: 386, column: 11)
!2257 = !DILocation(line: 386, column: 11, scope: !2220)
!2258 = !DILocation(line: 387, column: 9, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2260, file: !413, line: 387, column: 9)
!2260 = distinct !DILexicalBlock(scope: !2256, file: !413, line: 387, column: 9)
!2261 = !DILocation(line: 387, column: 9, scope: !2260)
!2262 = !DILocation(line: 394, column: 7, scope: !2220)
!2263 = !DILocation(line: 397, column: 7, scope: !2220)
!2264 = !DILocation(line: 0, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2156, file: !413, line: 408, column: 11)
!2266 = !DILocation(line: 0, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2268, file: !413, line: 419, column: 15)
!2268 = distinct !DILexicalBlock(scope: !2265, file: !413, line: 418, column: 9)
!2269 = !DILocation(line: 0, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2165, file: !413, line: 556, column: 15)
!2271 = !DILocation(line: 0, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2165, file: !413, line: 548, column: 15)
!2273 = !DILocation(line: 0, scope: !2179)
!2274 = !DILocation(line: 0, scope: !2186)
!2275 = !DILocation(line: 0, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2165, file: !413, line: 509, column: 15)
!2277 = !DILocation(line: 400, column: 8, scope: !2158)
!2278 = !DILocation(line: 0, scope: !2158)
!2279 = !DILocation(line: 400, column: 27, scope: !2157)
!2280 = !DILocation(line: 400, column: 19, scope: !2157)
!2281 = !DILocation(line: 400, column: 41, scope: !2157)
!2282 = !DILocation(line: 400, column: 48, scope: !2157)
!2283 = !DILocation(line: 400, column: 3, scope: !2158)
!2284 = !DILocation(line: 400, column: 60, scope: !2157)
!2285 = !DILocation(line: 0, scope: !2156)
!2286 = !DILocation(line: 409, column: 11, scope: !2265)
!2287 = !DILocation(line: 411, column: 17, scope: !2265)
!2288 = !DILocation(line: 412, column: 39, scope: !2265)
!2289 = !DILocation(line: 416, column: 32, scope: !2265)
!2290 = !DILocation(line: 412, column: 19, scope: !2265)
!2291 = !DILocation(line: 412, column: 15, scope: !2265)
!2292 = !DILocation(line: 417, column: 11, scope: !2265)
!2293 = !DILocation(line: 417, column: 26, scope: !2265)
!2294 = !DILocation(line: 417, column: 14, scope: !2265)
!2295 = !DILocation(line: 417, column: 63, scope: !2265)
!2296 = !DILocation(line: 408, column: 11, scope: !2156)
!2297 = !DILocation(line: 424, column: 11, scope: !2156)
!2298 = !DILocation(line: 425, column: 7, scope: !2156)
!2299 = !DILocation(line: 428, column: 15, scope: !2165)
!2300 = !DILocation(line: 430, column: 15, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !413, line: 430, column: 15)
!2302 = distinct !DILexicalBlock(scope: !2204, file: !413, line: 429, column: 13)
!2303 = !DILocation(line: 430, column: 15, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2301, file: !413, line: 430, column: 15)
!2305 = !DILocation(line: 430, column: 15, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2307, file: !413, line: 430, column: 15)
!2307 = distinct !DILexicalBlock(scope: !2308, file: !413, line: 430, column: 15)
!2308 = distinct !DILexicalBlock(scope: !2304, file: !413, line: 430, column: 15)
!2309 = !DILocation(line: 430, column: 15, scope: !2307)
!2310 = !DILocation(line: 430, column: 15, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2312, file: !413, line: 430, column: 15)
!2312 = distinct !DILexicalBlock(scope: !2308, file: !413, line: 430, column: 15)
!2313 = !DILocation(line: 430, column: 15, scope: !2312)
!2314 = !DILocation(line: 430, column: 15, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2316, file: !413, line: 430, column: 15)
!2316 = distinct !DILexicalBlock(scope: !2308, file: !413, line: 430, column: 15)
!2317 = !DILocation(line: 430, column: 15, scope: !2316)
!2318 = !DILocation(line: 430, column: 15, scope: !2308)
!2319 = !DILocation(line: 430, column: 15, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2321, file: !413, line: 430, column: 15)
!2321 = distinct !DILexicalBlock(scope: !2301, file: !413, line: 430, column: 15)
!2322 = !DILocation(line: 430, column: 15, scope: !2321)
!2323 = !DILocation(line: 438, column: 19, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2302, file: !413, line: 437, column: 19)
!2325 = !DILocation(line: 438, column: 24, scope: !2324)
!2326 = !DILocation(line: 438, column: 28, scope: !2324)
!2327 = !DILocation(line: 438, column: 38, scope: !2324)
!2328 = !DILocation(line: 438, column: 48, scope: !2324)
!2329 = !DILocation(line: 438, column: 59, scope: !2324)
!2330 = !DILocation(line: 440, column: 19, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2332, file: !413, line: 440, column: 19)
!2332 = distinct !DILexicalBlock(scope: !2333, file: !413, line: 440, column: 19)
!2333 = distinct !DILexicalBlock(scope: !2324, file: !413, line: 439, column: 17)
!2334 = !DILocation(line: 440, column: 19, scope: !2332)
!2335 = !DILocation(line: 441, column: 19, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2337, file: !413, line: 441, column: 19)
!2337 = distinct !DILexicalBlock(scope: !2333, file: !413, line: 441, column: 19)
!2338 = !DILocation(line: 441, column: 19, scope: !2337)
!2339 = !DILocation(line: 442, column: 17, scope: !2333)
!2340 = !DILocation(line: 449, column: 20, scope: !2204)
!2341 = !DILocation(line: 454, column: 11, scope: !2165)
!2342 = !DILocation(line: 457, column: 19, scope: !2201)
!2343 = !DILocation(line: 463, column: 19, scope: !2200)
!2344 = !DILocation(line: 463, column: 24, scope: !2200)
!2345 = !DILocation(line: 463, column: 28, scope: !2200)
!2346 = !DILocation(line: 463, column: 38, scope: !2200)
!2347 = !DILocation(line: 463, column: 47, scope: !2200)
!2348 = !DILocation(line: 463, column: 41, scope: !2200)
!2349 = !DILocation(line: 463, column: 52, scope: !2200)
!2350 = !DILocation(line: 462, column: 19, scope: !2201)
!2351 = !DILocation(line: 464, column: 25, scope: !2200)
!2352 = !DILocation(line: 464, column: 17, scope: !2200)
!2353 = !DILocation(line: 471, column: 25, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2200, file: !413, line: 465, column: 19)
!2355 = !DILocation(line: 475, column: 21, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2357, file: !413, line: 475, column: 21)
!2357 = distinct !DILexicalBlock(scope: !2354, file: !413, line: 475, column: 21)
!2358 = !DILocation(line: 475, column: 21, scope: !2357)
!2359 = !DILocation(line: 476, column: 21, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2361, file: !413, line: 476, column: 21)
!2361 = distinct !DILexicalBlock(scope: !2354, file: !413, line: 476, column: 21)
!2362 = !DILocation(line: 476, column: 21, scope: !2361)
!2363 = !DILocation(line: 477, column: 21, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2365, file: !413, line: 477, column: 21)
!2365 = distinct !DILexicalBlock(scope: !2354, file: !413, line: 477, column: 21)
!2366 = !DILocation(line: 477, column: 21, scope: !2365)
!2367 = !DILocation(line: 478, column: 21, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2369, file: !413, line: 478, column: 21)
!2369 = distinct !DILexicalBlock(scope: !2354, file: !413, line: 478, column: 21)
!2370 = !DILocation(line: 478, column: 21, scope: !2369)
!2371 = !DILocation(line: 479, column: 21, scope: !2354)
!2372 = !DILocation(line: 492, column: 31, scope: !2165)
!2373 = !DILocation(line: 493, column: 31, scope: !2165)
!2374 = !DILocation(line: 495, column: 31, scope: !2165)
!2375 = !DILocation(line: 496, column: 31, scope: !2165)
!2376 = !DILocation(line: 497, column: 31, scope: !2165)
!2377 = !DILocation(line: 500, column: 15, scope: !2165)
!2378 = !DILocation(line: 502, column: 19, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2380, file: !413, line: 501, column: 13)
!2380 = distinct !DILexicalBlock(scope: !2165, file: !413, line: 500, column: 15)
!2381 = !DILocation(line: 509, column: 33, scope: !2276)
!2382 = !DILocation(line: 0, scope: !2165)
!2383 = !DILocation(line: 512, column: 9, scope: !2165)
!2384 = !DILocation(line: 514, column: 15, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2165, file: !413, line: 513, column: 15)
!2386 = !DILocation(line: 517, column: 9, scope: !2165)
!2387 = !DILocation(line: 518, column: 15, scope: !2165)
!2388 = !DILocation(line: 526, column: 15, scope: !2165)
!2389 = !DILocation(line: 526, column: 40, scope: !2198)
!2390 = !DILocation(line: 526, column: 47, scope: !2198)
!2391 = !DILocation(line: 526, column: 18, scope: !2198)
!2392 = !DILocation(line: 530, column: 17, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2165, file: !413, line: 530, column: 15)
!2394 = !DILocation(line: 530, column: 15, scope: !2165)
!2395 = !DILocation(line: 535, column: 11, scope: !2165)
!2396 = !DILocation(line: 549, column: 15, scope: !2272)
!2397 = !DILocation(line: 556, column: 15, scope: !2165)
!2398 = !DILocation(line: 558, column: 19, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2270, file: !413, line: 557, column: 13)
!2400 = !DILocation(line: 561, column: 19, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2399, file: !413, line: 561, column: 19)
!2402 = !DILocation(line: 561, column: 35, scope: !2401)
!2403 = !DILocation(line: 561, column: 30, scope: !2401)
!2404 = !DILocation(line: 570, column: 15, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2406, file: !413, line: 570, column: 15)
!2406 = distinct !DILexicalBlock(scope: !2399, file: !413, line: 570, column: 15)
!2407 = !DILocation(line: 570, column: 15, scope: !2406)
!2408 = !DILocation(line: 571, column: 15, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2410, file: !413, line: 571, column: 15)
!2410 = distinct !DILexicalBlock(scope: !2399, file: !413, line: 571, column: 15)
!2411 = !DILocation(line: 571, column: 15, scope: !2410)
!2412 = !DILocation(line: 572, column: 15, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2414, file: !413, line: 572, column: 15)
!2414 = distinct !DILexicalBlock(scope: !2399, file: !413, line: 572, column: 15)
!2415 = !DILocation(line: 572, column: 15, scope: !2414)
!2416 = !DILocation(line: 574, column: 13, scope: !2399)
!2417 = !DILocation(line: 614, column: 17, scope: !2164)
!2418 = !DILocation(line: 0, scope: !2164)
!2419 = !DILocation(line: 617, column: 29, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2169, file: !413, line: 615, column: 15)
!2421 = !DILocation(line: 617, column: 27, scope: !2420)
!2422 = !DILocation(line: 618, column: 15, scope: !2420)
!2423 = !DILocation(line: 621, column: 17, scope: !2168)
!2424 = !DILocation(line: 621, column: 27, scope: !2168)
!2425 = !DILocalVariable(name: "__dest", arg: 1, scope: !2426, file: !2427, line: 59, type: !83)
!2426 = distinct !DISubprogram(name: "memset", scope: !2427, file: !2427, line: 59, type: !2428, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !2430)
!2427 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!83, !83, !30, !85}
!2430 = !{!2425, !2431, !2432}
!2431 = !DILocalVariable(name: "__ch", arg: 2, scope: !2426, file: !2427, line: 59, type: !30)
!2432 = !DILocalVariable(name: "__len", arg: 3, scope: !2426, file: !2427, line: 59, type: !85)
!2433 = !DILocation(line: 0, scope: !2426, inlinedAt: !2434)
!2434 = distinct !DILocation(line: 622, column: 17, scope: !2168)
!2435 = !DILocation(line: 71, column: 10, scope: !2426, inlinedAt: !2434)
!2436 = !DILocation(line: 626, column: 29, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2168, file: !413, line: 626, column: 21)
!2438 = !DILocation(line: 626, column: 21, scope: !2168)
!2439 = !DILocation(line: 627, column: 29, scope: !2437)
!2440 = !DILocation(line: 627, column: 19, scope: !2437)
!2441 = !DILocation(line: 629, column: 17, scope: !2168)
!2442 = !DILocation(line: 624, column: 19, scope: !2168)
!2443 = !DILocation(line: 625, column: 27, scope: !2168)
!2444 = !DILocation(line: 631, column: 21, scope: !2174)
!2445 = !DILocation(line: 632, column: 56, scope: !2174)
!2446 = !DILocation(line: 632, column: 50, scope: !2174)
!2447 = !DILocation(line: 633, column: 53, scope: !2174)
!2448 = !DILocation(line: 632, column: 36, scope: !2174)
!2449 = !DILocation(line: 634, column: 25, scope: !2174)
!2450 = !DILocation(line: 644, column: 38, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2181, file: !413, line: 642, column: 23)
!2452 = !DILocation(line: 644, column: 48, scope: !2451)
!2453 = !DILocation(line: 644, column: 25, scope: !2451)
!2454 = !DILocation(line: 644, column: 51, scope: !2451)
!2455 = !DILocation(line: 645, column: 28, scope: !2451)
!2456 = !DILocation(line: 644, column: 34, scope: !2451)
!2457 = distinct !{!2457, !2453, !2455}
!2458 = !DILocation(line: 658, column: 43, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !413, line: 658, column: 29)
!2460 = distinct !DILexicalBlock(scope: !2178, file: !413, line: 658, column: 29)
!2461 = !DILocation(line: 655, column: 29, scope: !2179)
!2462 = !DILocation(line: 0, scope: !2178)
!2463 = !DILocation(line: 659, column: 49, scope: !2459)
!2464 = !DILocation(line: 659, column: 39, scope: !2459)
!2465 = !DILocation(line: 659, column: 31, scope: !2459)
!2466 = !DILocation(line: 658, column: 53, scope: !2459)
!2467 = !DILocation(line: 658, column: 29, scope: !2460)
!2468 = distinct !{!2468, !2467, !2469}
!2469 = !DILocation(line: 667, column: 33, scope: !2460)
!2470 = !DILocation(line: 674, column: 19, scope: !2168)
!2471 = !DILocation(line: 670, column: 41, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2180, file: !413, line: 670, column: 29)
!2473 = !DILocation(line: 670, column: 31, scope: !2472)
!2474 = !DILocation(line: 670, column: 29, scope: !2180)
!2475 = !DILocation(line: 672, column: 27, scope: !2180)
!2476 = !DILocation(line: 675, column: 26, scope: !2168)
!2477 = !DILocation(line: 675, column: 24, scope: !2168)
!2478 = !DILocation(line: 674, column: 19, scope: !2174)
!2479 = distinct !{!2479, !2441, !2480}
!2480 = !DILocation(line: 675, column: 44, scope: !2168)
!2481 = !DILocation(line: 676, column: 15, scope: !2169)
!2482 = !DILocation(line: 0, scope: !2169)
!2483 = !DILocation(line: 678, column: 40, scope: !2164)
!2484 = !DILocation(line: 680, column: 19, scope: !2186)
!2485 = !DILocation(line: 680, column: 45, scope: !2186)
!2486 = !DILocation(line: 680, column: 23, scope: !2186)
!2487 = !DILocation(line: 684, column: 33, scope: !2185)
!2488 = !DILocation(line: 0, scope: !2185)
!2489 = !DILocation(line: 686, column: 17, scope: !2185)
!2490 = !DILocation(line: 405, column: 12, scope: !2156)
!2491 = !DILocation(line: 688, column: 43, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2493, file: !413, line: 688, column: 25)
!2493 = distinct !DILexicalBlock(scope: !2494, file: !413, line: 687, column: 19)
!2494 = distinct !DILexicalBlock(scope: !2495, file: !413, line: 686, column: 17)
!2495 = distinct !DILexicalBlock(scope: !2185, file: !413, line: 686, column: 17)
!2496 = !DILocation(line: 690, column: 25, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2498, file: !413, line: 690, column: 25)
!2498 = distinct !DILexicalBlock(scope: !2492, file: !413, line: 689, column: 23)
!2499 = !DILocation(line: 690, column: 25, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2497, file: !413, line: 690, column: 25)
!2501 = !DILocation(line: 690, column: 25, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2503, file: !413, line: 690, column: 25)
!2503 = distinct !DILexicalBlock(scope: !2504, file: !413, line: 690, column: 25)
!2504 = distinct !DILexicalBlock(scope: !2500, file: !413, line: 690, column: 25)
!2505 = !DILocation(line: 690, column: 25, scope: !2503)
!2506 = !DILocation(line: 690, column: 25, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2508, file: !413, line: 690, column: 25)
!2508 = distinct !DILexicalBlock(scope: !2504, file: !413, line: 690, column: 25)
!2509 = !DILocation(line: 690, column: 25, scope: !2508)
!2510 = !DILocation(line: 690, column: 25, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2512, file: !413, line: 690, column: 25)
!2512 = distinct !DILexicalBlock(scope: !2504, file: !413, line: 690, column: 25)
!2513 = !DILocation(line: 690, column: 25, scope: !2512)
!2514 = !DILocation(line: 690, column: 25, scope: !2504)
!2515 = !DILocation(line: 690, column: 25, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2517, file: !413, line: 690, column: 25)
!2517 = distinct !DILexicalBlock(scope: !2497, file: !413, line: 690, column: 25)
!2518 = !DILocation(line: 690, column: 25, scope: !2517)
!2519 = !DILocation(line: 691, column: 25, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2521, file: !413, line: 691, column: 25)
!2521 = distinct !DILexicalBlock(scope: !2498, file: !413, line: 691, column: 25)
!2522 = !DILocation(line: 691, column: 25, scope: !2521)
!2523 = !DILocation(line: 692, column: 25, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2525, file: !413, line: 692, column: 25)
!2525 = distinct !DILexicalBlock(scope: !2498, file: !413, line: 692, column: 25)
!2526 = !DILocation(line: 692, column: 25, scope: !2525)
!2527 = !DILocation(line: 693, column: 38, scope: !2498)
!2528 = !DILocation(line: 693, column: 33, scope: !2498)
!2529 = !DILocation(line: 694, column: 23, scope: !2498)
!2530 = !DILocation(line: 695, column: 30, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2492, file: !413, line: 695, column: 30)
!2532 = !DILocation(line: 695, column: 30, scope: !2492)
!2533 = !DILocation(line: 697, column: 25, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2535, file: !413, line: 697, column: 25)
!2535 = distinct !DILexicalBlock(scope: !2536, file: !413, line: 697, column: 25)
!2536 = distinct !DILexicalBlock(scope: !2531, file: !413, line: 696, column: 23)
!2537 = !DILocation(line: 697, column: 25, scope: !2535)
!2538 = !DILocation(line: 699, column: 23, scope: !2536)
!2539 = !DILocation(line: 700, column: 35, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2493, file: !413, line: 700, column: 25)
!2541 = !DILocation(line: 700, column: 30, scope: !2540)
!2542 = !DILocation(line: 700, column: 25, scope: !2493)
!2543 = !DILocation(line: 702, column: 21, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2545, file: !413, line: 702, column: 21)
!2545 = distinct !DILexicalBlock(scope: !2493, file: !413, line: 702, column: 21)
!2546 = !DILocation(line: 702, column: 21, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2548, file: !413, line: 702, column: 21)
!2548 = distinct !DILexicalBlock(scope: !2549, file: !413, line: 702, column: 21)
!2549 = distinct !DILexicalBlock(scope: !2544, file: !413, line: 702, column: 21)
!2550 = !DILocation(line: 702, column: 21, scope: !2548)
!2551 = !DILocation(line: 702, column: 21, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2553, file: !413, line: 702, column: 21)
!2553 = distinct !DILexicalBlock(scope: !2549, file: !413, line: 702, column: 21)
!2554 = !DILocation(line: 702, column: 21, scope: !2553)
!2555 = !DILocation(line: 702, column: 21, scope: !2549)
!2556 = !DILocation(line: 0, scope: !2493)
!2557 = !DILocation(line: 703, column: 21, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2559, file: !413, line: 703, column: 21)
!2559 = distinct !DILexicalBlock(scope: !2493, file: !413, line: 703, column: 21)
!2560 = !DILocation(line: 703, column: 21, scope: !2559)
!2561 = !DILocation(line: 704, column: 25, scope: !2493)
!2562 = !DILocation(line: 686, column: 17, scope: !2494)
!2563 = distinct !{!2563, !2564, !2565}
!2564 = !DILocation(line: 686, column: 17, scope: !2495)
!2565 = !DILocation(line: 705, column: 19, scope: !2495)
!2566 = !DILocation(line: 416, column: 30, scope: !2265)
!2567 = !DILocation(line: 712, column: 34, scope: !2208)
!2568 = !DILocation(line: 715, column: 35, scope: !2208)
!2569 = !DILocation(line: 715, column: 17, scope: !2208)
!2570 = !DILocation(line: 715, column: 47, scope: !2208)
!2571 = !DILocation(line: 715, column: 65, scope: !2208)
!2572 = !DILocation(line: 716, column: 15, scope: !2208)
!2573 = !DILocation(line: 716, column: 11, scope: !2208)
!2574 = !DILocation(line: 712, column: 11, scope: !2156)
!2575 = !DILocation(line: 400, column: 10, scope: !2158)
!2576 = !DILocation(line: 719, column: 5, scope: !2156)
!2577 = !DILocation(line: 720, column: 7, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2156, file: !413, line: 720, column: 7)
!2579 = !DILocation(line: 720, column: 7, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2578, file: !413, line: 720, column: 7)
!2581 = !DILocation(line: 720, column: 7, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2583, file: !413, line: 720, column: 7)
!2583 = distinct !DILexicalBlock(scope: !2584, file: !413, line: 720, column: 7)
!2584 = distinct !DILexicalBlock(scope: !2580, file: !413, line: 720, column: 7)
!2585 = !DILocation(line: 720, column: 7, scope: !2583)
!2586 = !DILocation(line: 720, column: 7, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2588, file: !413, line: 720, column: 7)
!2588 = distinct !DILexicalBlock(scope: !2584, file: !413, line: 720, column: 7)
!2589 = !DILocation(line: 720, column: 7, scope: !2588)
!2590 = !DILocation(line: 720, column: 7, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2592, file: !413, line: 720, column: 7)
!2592 = distinct !DILexicalBlock(scope: !2584, file: !413, line: 720, column: 7)
!2593 = !DILocation(line: 720, column: 7, scope: !2592)
!2594 = !DILocation(line: 720, column: 7, scope: !2584)
!2595 = !DILocation(line: 720, column: 7, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2597, file: !413, line: 720, column: 7)
!2597 = distinct !DILexicalBlock(scope: !2578, file: !413, line: 720, column: 7)
!2598 = !DILocation(line: 720, column: 7, scope: !2597)
!2599 = !DILocation(line: 722, column: 5, scope: !2156)
!2600 = !DILocation(line: 723, column: 7, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2602, file: !413, line: 723, column: 7)
!2602 = distinct !DILexicalBlock(scope: !2156, file: !413, line: 723, column: 7)
!2603 = !DILocation(line: 424, column: 9, scope: !2156)
!2604 = !DILocation(line: 723, column: 7, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2606, file: !413, line: 723, column: 7)
!2606 = distinct !DILexicalBlock(scope: !2607, file: !413, line: 723, column: 7)
!2607 = distinct !DILexicalBlock(scope: !2601, file: !413, line: 723, column: 7)
!2608 = !DILocation(line: 723, column: 7, scope: !2606)
!2609 = !DILocation(line: 723, column: 7, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2611, file: !413, line: 723, column: 7)
!2611 = distinct !DILexicalBlock(scope: !2607, file: !413, line: 723, column: 7)
!2612 = !DILocation(line: 723, column: 7, scope: !2611)
!2613 = !DILocation(line: 723, column: 7, scope: !2607)
!2614 = !DILocation(line: 724, column: 7, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2616, file: !413, line: 724, column: 7)
!2616 = distinct !DILexicalBlock(scope: !2156, file: !413, line: 724, column: 7)
!2617 = !DILocation(line: 724, column: 7, scope: !2616)
!2618 = !DILocation(line: 726, column: 13, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2156, file: !413, line: 726, column: 11)
!2620 = !DILocation(line: 726, column: 11, scope: !2156)
!2621 = !DILocation(line: 728, column: 5, scope: !2157)
!2622 = !DILocation(line: 400, column: 75, scope: !2157)
!2623 = !DILocation(line: 400, column: 3, scope: !2157)
!2624 = distinct !{!2624, !2283, !2625}
!2625 = !DILocation(line: 728, column: 5, scope: !2158)
!2626 = !DILocation(line: 730, column: 11, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2129, file: !413, line: 730, column: 7)
!2628 = !DILocation(line: 730, column: 16, scope: !2627)
!2629 = !DILocation(line: 738, column: 51, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2129, file: !413, line: 738, column: 7)
!2631 = !DILocation(line: 739, column: 10, scope: !2630)
!2632 = !DILocation(line: 741, column: 11, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2634, file: !413, line: 741, column: 11)
!2634 = distinct !DILexicalBlock(scope: !2630, file: !413, line: 740, column: 5)
!2635 = !DILocation(line: 741, column: 11, scope: !2634)
!2636 = !DILocation(line: 742, column: 16, scope: !2633)
!2637 = !DILocation(line: 742, column: 9, scope: !2633)
!2638 = !DILocation(line: 746, column: 18, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2633, file: !413, line: 746, column: 16)
!2640 = !DILocation(line: 746, column: 32, scope: !2639)
!2641 = !DILocation(line: 746, column: 29, scope: !2639)
!2642 = !DILocation(line: 755, column: 7, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2129, file: !413, line: 755, column: 7)
!2644 = !DILocation(line: 755, column: 20, scope: !2643)
!2645 = !DILocation(line: 756, column: 12, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2647, file: !413, line: 756, column: 5)
!2647 = distinct !DILexicalBlock(scope: !2643, file: !413, line: 756, column: 5)
!2648 = !DILocation(line: 756, column: 5, scope: !2647)
!2649 = !DILocation(line: 757, column: 7, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2651, file: !413, line: 757, column: 7)
!2651 = distinct !DILexicalBlock(scope: !2646, file: !413, line: 757, column: 7)
!2652 = !DILocation(line: 757, column: 7, scope: !2651)
!2653 = !DILocation(line: 756, column: 39, scope: !2646)
!2654 = distinct !{!2654, !2648, !2655}
!2655 = !DILocation(line: 757, column: 7, scope: !2647)
!2656 = !DILocation(line: 759, column: 11, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2129, file: !413, line: 759, column: 7)
!2658 = !DILocation(line: 759, column: 7, scope: !2129)
!2659 = !DILocation(line: 760, column: 5, scope: !2657)
!2660 = !DILocation(line: 760, column: 17, scope: !2657)
!2661 = !DILocation(line: 763, column: 2, scope: !2129)
!2662 = !DILocation(line: 766, column: 51, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2129, file: !413, line: 766, column: 7)
!2664 = !DILocation(line: 766, column: 21, scope: !2663)
!2665 = !DILocation(line: 770, column: 42, scope: !2129)
!2666 = !DILocation(line: 768, column: 10, scope: !2129)
!2667 = !DILocation(line: 768, column: 3, scope: !2129)
!2668 = !DILocation(line: 772, column: 1, scope: !2129)
!2669 = distinct !DISubprogram(name: "gettext_quote", scope: !413, file: !413, line: 207, type: !2670, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !2672)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{!28, !28, !171}
!2672 = !{!2673, !2674, !2675, !2676}
!2673 = !DILocalVariable(name: "msgid", arg: 1, scope: !2669, file: !413, line: 207, type: !28)
!2674 = !DILocalVariable(name: "s", arg: 2, scope: !2669, file: !413, line: 207, type: !171)
!2675 = !DILocalVariable(name: "translation", scope: !2669, file: !413, line: 209, type: !28)
!2676 = !DILocalVariable(name: "locale_code", scope: !2669, file: !413, line: 210, type: !28)
!2677 = !DILocation(line: 0, scope: !2669)
!2678 = !DILocation(line: 209, column: 29, scope: !2669)
!2679 = !DILocation(line: 212, column: 19, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2669, file: !413, line: 212, column: 7)
!2681 = !DILocation(line: 212, column: 7, scope: !2669)
!2682 = !DILocation(line: 233, column: 17, scope: !2669)
!2683 = !DILocalVariable(name: "s1", arg: 1, scope: !2684, file: !2685, line: 160, type: !28)
!2684 = distinct !DISubprogram(name: "strcaseeq0", scope: !2685, file: !2685, line: 160, type: !2686, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !2688)
!2685 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2686 = !DISubroutineType(types: !2687)
!2687 = !{!30, !28, !28, !27, !27, !27, !27, !27, !27, !27, !27, !27}
!2688 = !{!2683, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698}
!2689 = !DILocalVariable(name: "s2", arg: 2, scope: !2684, file: !2685, line: 160, type: !28)
!2690 = !DILocalVariable(name: "s20", arg: 3, scope: !2684, file: !2685, line: 160, type: !27)
!2691 = !DILocalVariable(name: "s21", arg: 4, scope: !2684, file: !2685, line: 160, type: !27)
!2692 = !DILocalVariable(name: "s22", arg: 5, scope: !2684, file: !2685, line: 160, type: !27)
!2693 = !DILocalVariable(name: "s23", arg: 6, scope: !2684, file: !2685, line: 160, type: !27)
!2694 = !DILocalVariable(name: "s24", arg: 7, scope: !2684, file: !2685, line: 160, type: !27)
!2695 = !DILocalVariable(name: "s25", arg: 8, scope: !2684, file: !2685, line: 160, type: !27)
!2696 = !DILocalVariable(name: "s26", arg: 9, scope: !2684, file: !2685, line: 160, type: !27)
!2697 = !DILocalVariable(name: "s27", arg: 10, scope: !2684, file: !2685, line: 160, type: !27)
!2698 = !DILocalVariable(name: "s28", arg: 11, scope: !2684, file: !2685, line: 160, type: !27)
!2699 = !DILocation(line: 0, scope: !2684, inlinedAt: !2700)
!2700 = distinct !DILocation(line: 234, column: 7, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2669, file: !413, line: 234, column: 7)
!2702 = !DILocation(line: 162, column: 7, scope: !2703, inlinedAt: !2700)
!2703 = distinct !DILexicalBlock(scope: !2684, file: !2685, line: 162, column: 7)
!2704 = !DILocalVariable(name: "s1", arg: 1, scope: !2705, file: !2685, line: 146, type: !28)
!2705 = distinct !DISubprogram(name: "strcaseeq1", scope: !2685, file: !2685, line: 146, type: !2706, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !2708)
!2706 = !DISubroutineType(types: !2707)
!2707 = !{!30, !28, !28, !27, !27, !27, !27, !27, !27, !27, !27}
!2708 = !{!2704, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717}
!2709 = !DILocalVariable(name: "s2", arg: 2, scope: !2705, file: !2685, line: 146, type: !28)
!2710 = !DILocalVariable(name: "s21", arg: 3, scope: !2705, file: !2685, line: 146, type: !27)
!2711 = !DILocalVariable(name: "s22", arg: 4, scope: !2705, file: !2685, line: 146, type: !27)
!2712 = !DILocalVariable(name: "s23", arg: 5, scope: !2705, file: !2685, line: 146, type: !27)
!2713 = !DILocalVariable(name: "s24", arg: 6, scope: !2705, file: !2685, line: 146, type: !27)
!2714 = !DILocalVariable(name: "s25", arg: 7, scope: !2705, file: !2685, line: 146, type: !27)
!2715 = !DILocalVariable(name: "s26", arg: 8, scope: !2705, file: !2685, line: 146, type: !27)
!2716 = !DILocalVariable(name: "s27", arg: 9, scope: !2705, file: !2685, line: 146, type: !27)
!2717 = !DILocalVariable(name: "s28", arg: 10, scope: !2705, file: !2685, line: 146, type: !27)
!2718 = !DILocation(line: 0, scope: !2705, inlinedAt: !2719)
!2719 = distinct !DILocation(line: 167, column: 16, scope: !2720, inlinedAt: !2700)
!2720 = distinct !DILexicalBlock(scope: !2721, file: !2685, line: 164, column: 11)
!2721 = distinct !DILexicalBlock(scope: !2703, file: !2685, line: 163, column: 5)
!2722 = !DILocation(line: 148, column: 7, scope: !2723, inlinedAt: !2719)
!2723 = distinct !DILexicalBlock(scope: !2705, file: !2685, line: 148, column: 7)
!2724 = !DILocalVariable(name: "s1", arg: 1, scope: !2725, file: !2685, line: 132, type: !28)
!2725 = distinct !DISubprogram(name: "strcaseeq2", scope: !2685, file: !2685, line: 132, type: !2726, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !2728)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{!30, !28, !28, !27, !27, !27, !27, !27, !27, !27}
!2728 = !{!2724, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736}
!2729 = !DILocalVariable(name: "s2", arg: 2, scope: !2725, file: !2685, line: 132, type: !28)
!2730 = !DILocalVariable(name: "s22", arg: 3, scope: !2725, file: !2685, line: 132, type: !27)
!2731 = !DILocalVariable(name: "s23", arg: 4, scope: !2725, file: !2685, line: 132, type: !27)
!2732 = !DILocalVariable(name: "s24", arg: 5, scope: !2725, file: !2685, line: 132, type: !27)
!2733 = !DILocalVariable(name: "s25", arg: 6, scope: !2725, file: !2685, line: 132, type: !27)
!2734 = !DILocalVariable(name: "s26", arg: 7, scope: !2725, file: !2685, line: 132, type: !27)
!2735 = !DILocalVariable(name: "s27", arg: 8, scope: !2725, file: !2685, line: 132, type: !27)
!2736 = !DILocalVariable(name: "s28", arg: 9, scope: !2725, file: !2685, line: 132, type: !27)
!2737 = !DILocation(line: 0, scope: !2725, inlinedAt: !2738)
!2738 = distinct !DILocation(line: 153, column: 16, scope: !2739, inlinedAt: !2719)
!2739 = distinct !DILexicalBlock(scope: !2740, file: !2685, line: 150, column: 11)
!2740 = distinct !DILexicalBlock(scope: !2723, file: !2685, line: 149, column: 5)
!2741 = !DILocation(line: 134, column: 7, scope: !2742, inlinedAt: !2738)
!2742 = distinct !DILexicalBlock(scope: !2725, file: !2685, line: 134, column: 7)
!2743 = !DILocalVariable(name: "s1", arg: 1, scope: !2744, file: !2685, line: 118, type: !28)
!2744 = distinct !DISubprogram(name: "strcaseeq3", scope: !2685, file: !2685, line: 118, type: !2745, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !2747)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{!30, !28, !28, !27, !27, !27, !27, !27, !27}
!2747 = !{!2743, !2748, !2749, !2750, !2751, !2752, !2753, !2754}
!2748 = !DILocalVariable(name: "s2", arg: 2, scope: !2744, file: !2685, line: 118, type: !28)
!2749 = !DILocalVariable(name: "s23", arg: 3, scope: !2744, file: !2685, line: 118, type: !27)
!2750 = !DILocalVariable(name: "s24", arg: 4, scope: !2744, file: !2685, line: 118, type: !27)
!2751 = !DILocalVariable(name: "s25", arg: 5, scope: !2744, file: !2685, line: 118, type: !27)
!2752 = !DILocalVariable(name: "s26", arg: 6, scope: !2744, file: !2685, line: 118, type: !27)
!2753 = !DILocalVariable(name: "s27", arg: 7, scope: !2744, file: !2685, line: 118, type: !27)
!2754 = !DILocalVariable(name: "s28", arg: 8, scope: !2744, file: !2685, line: 118, type: !27)
!2755 = !DILocation(line: 0, scope: !2744, inlinedAt: !2756)
!2756 = distinct !DILocation(line: 139, column: 16, scope: !2757, inlinedAt: !2738)
!2757 = distinct !DILexicalBlock(scope: !2758, file: !2685, line: 136, column: 11)
!2758 = distinct !DILexicalBlock(scope: !2742, file: !2685, line: 135, column: 5)
!2759 = !DILocation(line: 120, column: 7, scope: !2760, inlinedAt: !2756)
!2760 = distinct !DILexicalBlock(scope: !2744, file: !2685, line: 120, column: 7)
!2761 = !DILocation(line: 120, column: 7, scope: !2744, inlinedAt: !2756)
!2762 = !DILocalVariable(name: "s1", arg: 1, scope: !2763, file: !2685, line: 104, type: !28)
!2763 = distinct !DISubprogram(name: "strcaseeq4", scope: !2685, file: !2685, line: 104, type: !2764, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !2766)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!30, !28, !28, !27, !27, !27, !27, !27}
!2766 = !{!2762, !2767, !2768, !2769, !2770, !2771, !2772}
!2767 = !DILocalVariable(name: "s2", arg: 2, scope: !2763, file: !2685, line: 104, type: !28)
!2768 = !DILocalVariable(name: "s24", arg: 3, scope: !2763, file: !2685, line: 104, type: !27)
!2769 = !DILocalVariable(name: "s25", arg: 4, scope: !2763, file: !2685, line: 104, type: !27)
!2770 = !DILocalVariable(name: "s26", arg: 5, scope: !2763, file: !2685, line: 104, type: !27)
!2771 = !DILocalVariable(name: "s27", arg: 6, scope: !2763, file: !2685, line: 104, type: !27)
!2772 = !DILocalVariable(name: "s28", arg: 7, scope: !2763, file: !2685, line: 104, type: !27)
!2773 = !DILocation(line: 0, scope: !2763, inlinedAt: !2774)
!2774 = distinct !DILocation(line: 125, column: 16, scope: !2775, inlinedAt: !2756)
!2775 = distinct !DILexicalBlock(scope: !2776, file: !2685, line: 122, column: 11)
!2776 = distinct !DILexicalBlock(scope: !2760, file: !2685, line: 121, column: 5)
!2777 = !DILocation(line: 106, column: 7, scope: !2778, inlinedAt: !2774)
!2778 = distinct !DILexicalBlock(scope: !2763, file: !2685, line: 106, column: 7)
!2779 = !DILocation(line: 106, column: 7, scope: !2763, inlinedAt: !2774)
!2780 = !DILocalVariable(name: "s1", arg: 1, scope: !2781, file: !2685, line: 90, type: !28)
!2781 = distinct !DISubprogram(name: "strcaseeq5", scope: !2685, file: !2685, line: 90, type: !2782, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !2784)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!30, !28, !28, !27, !27, !27, !27}
!2784 = !{!2780, !2785, !2786, !2787, !2788, !2789}
!2785 = !DILocalVariable(name: "s2", arg: 2, scope: !2781, file: !2685, line: 90, type: !28)
!2786 = !DILocalVariable(name: "s25", arg: 3, scope: !2781, file: !2685, line: 90, type: !27)
!2787 = !DILocalVariable(name: "s26", arg: 4, scope: !2781, file: !2685, line: 90, type: !27)
!2788 = !DILocalVariable(name: "s27", arg: 5, scope: !2781, file: !2685, line: 90, type: !27)
!2789 = !DILocalVariable(name: "s28", arg: 6, scope: !2781, file: !2685, line: 90, type: !27)
!2790 = !DILocation(line: 0, scope: !2781, inlinedAt: !2791)
!2791 = distinct !DILocation(line: 111, column: 16, scope: !2792, inlinedAt: !2774)
!2792 = distinct !DILexicalBlock(scope: !2793, file: !2685, line: 108, column: 11)
!2793 = distinct !DILexicalBlock(scope: !2778, file: !2685, line: 107, column: 5)
!2794 = !DILocation(line: 92, column: 7, scope: !2795, inlinedAt: !2791)
!2795 = distinct !DILexicalBlock(scope: !2781, file: !2685, line: 92, column: 7)
!2796 = !DILocation(line: 92, column: 7, scope: !2781, inlinedAt: !2791)
!2797 = !DILocation(line: 235, column: 12, scope: !2701)
!2798 = !DILocation(line: 235, column: 21, scope: !2701)
!2799 = !DILocation(line: 235, column: 5, scope: !2701)
!2800 = !DILocation(line: 0, scope: !2705, inlinedAt: !2801)
!2801 = distinct !DILocation(line: 167, column: 16, scope: !2720, inlinedAt: !2802)
!2802 = distinct !DILocation(line: 236, column: 7, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2669, file: !413, line: 236, column: 7)
!2804 = !DILocation(line: 148, column: 7, scope: !2723, inlinedAt: !2801)
!2805 = !DILocation(line: 0, scope: !2725, inlinedAt: !2806)
!2806 = distinct !DILocation(line: 153, column: 16, scope: !2739, inlinedAt: !2801)
!2807 = !DILocation(line: 134, column: 7, scope: !2742, inlinedAt: !2806)
!2808 = !DILocation(line: 134, column: 7, scope: !2725, inlinedAt: !2806)
!2809 = !DILocation(line: 0, scope: !2744, inlinedAt: !2810)
!2810 = distinct !DILocation(line: 139, column: 16, scope: !2757, inlinedAt: !2806)
!2811 = !DILocation(line: 120, column: 7, scope: !2760, inlinedAt: !2810)
!2812 = !DILocation(line: 120, column: 7, scope: !2744, inlinedAt: !2810)
!2813 = !DILocation(line: 0, scope: !2763, inlinedAt: !2814)
!2814 = distinct !DILocation(line: 125, column: 16, scope: !2775, inlinedAt: !2810)
!2815 = !DILocation(line: 106, column: 7, scope: !2778, inlinedAt: !2814)
!2816 = !DILocation(line: 106, column: 7, scope: !2763, inlinedAt: !2814)
!2817 = !DILocation(line: 0, scope: !2781, inlinedAt: !2818)
!2818 = distinct !DILocation(line: 111, column: 16, scope: !2792, inlinedAt: !2814)
!2819 = !DILocation(line: 92, column: 7, scope: !2795, inlinedAt: !2818)
!2820 = !DILocation(line: 92, column: 7, scope: !2781, inlinedAt: !2818)
!2821 = !DILocalVariable(name: "s1", arg: 1, scope: !2822, file: !2685, line: 76, type: !28)
!2822 = distinct !DISubprogram(name: "strcaseeq6", scope: !2685, file: !2685, line: 76, type: !2823, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !2825)
!2823 = !DISubroutineType(types: !2824)
!2824 = !{!30, !28, !28, !27, !27, !27}
!2825 = !{!2821, !2826, !2827, !2828, !2829}
!2826 = !DILocalVariable(name: "s2", arg: 2, scope: !2822, file: !2685, line: 76, type: !28)
!2827 = !DILocalVariable(name: "s26", arg: 3, scope: !2822, file: !2685, line: 76, type: !27)
!2828 = !DILocalVariable(name: "s27", arg: 4, scope: !2822, file: !2685, line: 76, type: !27)
!2829 = !DILocalVariable(name: "s28", arg: 5, scope: !2822, file: !2685, line: 76, type: !27)
!2830 = !DILocation(line: 0, scope: !2822, inlinedAt: !2831)
!2831 = distinct !DILocation(line: 97, column: 16, scope: !2832, inlinedAt: !2818)
!2832 = distinct !DILexicalBlock(scope: !2833, file: !2685, line: 94, column: 11)
!2833 = distinct !DILexicalBlock(scope: !2795, file: !2685, line: 93, column: 5)
!2834 = !DILocation(line: 78, column: 7, scope: !2835, inlinedAt: !2831)
!2835 = distinct !DILexicalBlock(scope: !2822, file: !2685, line: 78, column: 7)
!2836 = !DILocation(line: 78, column: 7, scope: !2822, inlinedAt: !2831)
!2837 = !DILocalVariable(name: "s1", arg: 1, scope: !2838, file: !2685, line: 62, type: !28)
!2838 = distinct !DISubprogram(name: "strcaseeq7", scope: !2685, file: !2685, line: 62, type: !2839, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !2841)
!2839 = !DISubroutineType(types: !2840)
!2840 = !{!30, !28, !28, !27, !27}
!2841 = !{!2837, !2842, !2843, !2844}
!2842 = !DILocalVariable(name: "s2", arg: 2, scope: !2838, file: !2685, line: 62, type: !28)
!2843 = !DILocalVariable(name: "s27", arg: 3, scope: !2838, file: !2685, line: 62, type: !27)
!2844 = !DILocalVariable(name: "s28", arg: 4, scope: !2838, file: !2685, line: 62, type: !27)
!2845 = !DILocation(line: 0, scope: !2838, inlinedAt: !2846)
!2846 = distinct !DILocation(line: 83, column: 16, scope: !2847, inlinedAt: !2831)
!2847 = distinct !DILexicalBlock(scope: !2848, file: !2685, line: 80, column: 11)
!2848 = distinct !DILexicalBlock(scope: !2835, file: !2685, line: 79, column: 5)
!2849 = !DILocation(line: 64, column: 7, scope: !2850, inlinedAt: !2846)
!2850 = distinct !DILexicalBlock(scope: !2838, file: !2685, line: 64, column: 7)
!2851 = !DILocation(line: 236, column: 7, scope: !2669)
!2852 = !DILocation(line: 237, column: 12, scope: !2803)
!2853 = !DILocation(line: 237, column: 21, scope: !2803)
!2854 = !DILocation(line: 237, column: 5, scope: !2803)
!2855 = !DILocation(line: 239, column: 13, scope: !2669)
!2856 = !DILocation(line: 239, column: 11, scope: !2669)
!2857 = !DILocation(line: 239, column: 3, scope: !2669)
!2858 = !DILocation(line: 240, column: 1, scope: !2669)
!2859 = distinct !DISubprogram(name: "quotearg_alloc", scope: !413, file: !413, line: 799, type: !2860, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !2862)
!2860 = !DISubroutineType(types: !2861)
!2861 = !{!26, !28, !85, !429}
!2862 = !{!2863, !2864, !2865}
!2863 = !DILocalVariable(name: "arg", arg: 1, scope: !2859, file: !413, line: 799, type: !28)
!2864 = !DILocalVariable(name: "argsize", arg: 2, scope: !2859, file: !413, line: 799, type: !85)
!2865 = !DILocalVariable(name: "o", arg: 3, scope: !2859, file: !413, line: 800, type: !429)
!2866 = !DILocation(line: 0, scope: !2859)
!2867 = !DILocalVariable(name: "arg", arg: 1, scope: !2868, file: !413, line: 812, type: !28)
!2868 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !413, file: !413, line: 812, type: !2869, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !2871)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{!26, !28, !85, !199, !429}
!2871 = !{!2867, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879}
!2872 = !DILocalVariable(name: "argsize", arg: 2, scope: !2868, file: !413, line: 812, type: !85)
!2873 = !DILocalVariable(name: "size", arg: 3, scope: !2868, file: !413, line: 812, type: !199)
!2874 = !DILocalVariable(name: "o", arg: 4, scope: !2868, file: !413, line: 813, type: !429)
!2875 = !DILocalVariable(name: "p", scope: !2868, file: !413, line: 815, type: !429)
!2876 = !DILocalVariable(name: "e", scope: !2868, file: !413, line: 816, type: !30)
!2877 = !DILocalVariable(name: "flags", scope: !2868, file: !413, line: 818, type: !30)
!2878 = !DILocalVariable(name: "bufsize", scope: !2868, file: !413, line: 819, type: !85)
!2879 = !DILocalVariable(name: "buf", scope: !2868, file: !413, line: 823, type: !26)
!2880 = !DILocation(line: 0, scope: !2868, inlinedAt: !2881)
!2881 = distinct !DILocation(line: 802, column: 10, scope: !2859)
!2882 = !DILocation(line: 815, column: 37, scope: !2868, inlinedAt: !2881)
!2883 = !DILocation(line: 816, column: 11, scope: !2868, inlinedAt: !2881)
!2884 = !DILocation(line: 818, column: 18, scope: !2868, inlinedAt: !2881)
!2885 = !DILocation(line: 818, column: 24, scope: !2868, inlinedAt: !2881)
!2886 = !DILocation(line: 819, column: 69, scope: !2868, inlinedAt: !2881)
!2887 = !DILocation(line: 820, column: 53, scope: !2868, inlinedAt: !2881)
!2888 = !DILocation(line: 821, column: 49, scope: !2868, inlinedAt: !2881)
!2889 = !DILocation(line: 822, column: 49, scope: !2868, inlinedAt: !2881)
!2890 = !DILocation(line: 819, column: 20, scope: !2868, inlinedAt: !2881)
!2891 = !DILocation(line: 822, column: 62, scope: !2868, inlinedAt: !2881)
!2892 = !DILocalVariable(name: "n", arg: 1, scope: !2893, file: !195, line: 216, type: !85)
!2893 = distinct !DISubprogram(name: "xcharalloc", scope: !195, file: !195, line: 216, type: !2894, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !2896)
!2894 = !DISubroutineType(types: !2895)
!2895 = !{!26, !85}
!2896 = !{!2892}
!2897 = !DILocation(line: 0, scope: !2893, inlinedAt: !2898)
!2898 = distinct !DILocation(line: 823, column: 15, scope: !2868, inlinedAt: !2881)
!2899 = !DILocation(line: 218, column: 10, scope: !2893, inlinedAt: !2898)
!2900 = !DILocation(line: 824, column: 60, scope: !2868, inlinedAt: !2881)
!2901 = !DILocation(line: 826, column: 32, scope: !2868, inlinedAt: !2881)
!2902 = !DILocation(line: 826, column: 47, scope: !2868, inlinedAt: !2881)
!2903 = !DILocation(line: 824, column: 3, scope: !2868, inlinedAt: !2881)
!2904 = !DILocation(line: 827, column: 9, scope: !2868, inlinedAt: !2881)
!2905 = !DILocation(line: 802, column: 3, scope: !2859)
!2906 = !DILocation(line: 0, scope: !2868)
!2907 = !DILocation(line: 815, column: 37, scope: !2868)
!2908 = !DILocation(line: 816, column: 11, scope: !2868)
!2909 = !DILocation(line: 818, column: 18, scope: !2868)
!2910 = !DILocation(line: 818, column: 27, scope: !2868)
!2911 = !DILocation(line: 818, column: 24, scope: !2868)
!2912 = !DILocation(line: 819, column: 69, scope: !2868)
!2913 = !DILocation(line: 820, column: 53, scope: !2868)
!2914 = !DILocation(line: 821, column: 49, scope: !2868)
!2915 = !DILocation(line: 822, column: 49, scope: !2868)
!2916 = !DILocation(line: 819, column: 20, scope: !2868)
!2917 = !DILocation(line: 822, column: 62, scope: !2868)
!2918 = !DILocation(line: 0, scope: !2893, inlinedAt: !2919)
!2919 = distinct !DILocation(line: 823, column: 15, scope: !2868)
!2920 = !DILocation(line: 218, column: 10, scope: !2893, inlinedAt: !2919)
!2921 = !DILocation(line: 824, column: 60, scope: !2868)
!2922 = !DILocation(line: 826, column: 32, scope: !2868)
!2923 = !DILocation(line: 826, column: 47, scope: !2868)
!2924 = !DILocation(line: 824, column: 3, scope: !2868)
!2925 = !DILocation(line: 827, column: 9, scope: !2868)
!2926 = !DILocation(line: 828, column: 7, scope: !2868)
!2927 = !DILocation(line: 829, column: 11, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2868, file: !413, line: 828, column: 7)
!2929 = !DILocation(line: 829, column: 5, scope: !2928)
!2930 = !DILocation(line: 830, column: 3, scope: !2868)
!2931 = distinct !DISubprogram(name: "quotearg_free", scope: !413, file: !413, line: 848, type: !95, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !2932)
!2932 = !{!2933, !2934}
!2933 = !DILocalVariable(name: "sv", scope: !2931, file: !413, line: 850, type: !500)
!2934 = !DILocalVariable(name: "i", scope: !2931, file: !413, line: 851, type: !30)
!2935 = !DILocation(line: 850, column: 24, scope: !2931)
!2936 = !DILocation(line: 0, scope: !2931)
!2937 = !DILocation(line: 852, column: 19, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2939, file: !413, line: 852, column: 3)
!2939 = distinct !DILexicalBlock(scope: !2931, file: !413, line: 852, column: 3)
!2940 = !DILocation(line: 852, column: 17, scope: !2938)
!2941 = !DILocation(line: 852, column: 3, scope: !2939)
!2942 = !DILocation(line: 853, column: 17, scope: !2938)
!2943 = !{!2944, !1255, i64 8}
!2944 = !{!"slotvec", !1384, i64 0, !1255, i64 8}
!2945 = !DILocation(line: 853, column: 5, scope: !2938)
!2946 = !DILocation(line: 852, column: 28, scope: !2938)
!2947 = distinct !{!2947, !2941, !2948}
!2948 = !DILocation(line: 853, column: 20, scope: !2939)
!2949 = !DILocation(line: 854, column: 13, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2931, file: !413, line: 854, column: 7)
!2951 = !DILocation(line: 854, column: 17, scope: !2950)
!2952 = !DILocation(line: 854, column: 7, scope: !2931)
!2953 = !DILocation(line: 856, column: 7, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2950, file: !413, line: 855, column: 5)
!2955 = !DILocation(line: 857, column: 21, scope: !2954)
!2956 = !{!2944, !1384, i64 0}
!2957 = !DILocation(line: 858, column: 20, scope: !2954)
!2958 = !DILocation(line: 859, column: 5, scope: !2954)
!2959 = !DILocation(line: 860, column: 10, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2931, file: !413, line: 860, column: 7)
!2961 = !DILocation(line: 860, column: 7, scope: !2931)
!2962 = !DILocation(line: 862, column: 13, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2960, file: !413, line: 861, column: 5)
!2964 = !DILocation(line: 862, column: 7, scope: !2963)
!2965 = !DILocation(line: 863, column: 15, scope: !2963)
!2966 = !DILocation(line: 864, column: 5, scope: !2963)
!2967 = !DILocation(line: 865, column: 10, scope: !2931)
!2968 = !DILocation(line: 866, column: 1, scope: !2931)
!2969 = distinct !DISubprogram(name: "quotearg_n", scope: !413, file: !413, line: 931, type: !103, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !2970)
!2970 = !{!2971, !2972}
!2971 = !DILocalVariable(name: "n", arg: 1, scope: !2969, file: !413, line: 931, type: !30)
!2972 = !DILocalVariable(name: "arg", arg: 2, scope: !2969, file: !413, line: 931, type: !28)
!2973 = !DILocation(line: 0, scope: !2969)
!2974 = !DILocation(line: 933, column: 10, scope: !2969)
!2975 = !DILocation(line: 933, column: 3, scope: !2969)
!2976 = distinct !DISubprogram(name: "quotearg_n_options", scope: !413, file: !413, line: 877, type: !2977, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !2979)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{!26, !30, !28, !85, !429}
!2979 = !{!2980, !2981, !2982, !2983, !2984, !2985, !2986, !2989, !2990, !2992, !2993, !2994}
!2980 = !DILocalVariable(name: "n", arg: 1, scope: !2976, file: !413, line: 877, type: !30)
!2981 = !DILocalVariable(name: "arg", arg: 2, scope: !2976, file: !413, line: 877, type: !28)
!2982 = !DILocalVariable(name: "argsize", arg: 3, scope: !2976, file: !413, line: 877, type: !85)
!2983 = !DILocalVariable(name: "options", arg: 4, scope: !2976, file: !413, line: 878, type: !429)
!2984 = !DILocalVariable(name: "e", scope: !2976, file: !413, line: 880, type: !30)
!2985 = !DILocalVariable(name: "sv", scope: !2976, file: !413, line: 882, type: !500)
!2986 = !DILocalVariable(name: "preallocated", scope: !2987, file: !413, line: 889, type: !150)
!2987 = distinct !DILexicalBlock(scope: !2988, file: !413, line: 888, column: 5)
!2988 = distinct !DILexicalBlock(scope: !2976, file: !413, line: 887, column: 7)
!2989 = !DILocalVariable(name: "nmax", scope: !2987, file: !413, line: 890, type: !30)
!2990 = !DILocalVariable(name: "size", scope: !2991, file: !413, line: 903, type: !85)
!2991 = distinct !DILexicalBlock(scope: !2976, file: !413, line: 902, column: 3)
!2992 = !DILocalVariable(name: "val", scope: !2991, file: !413, line: 904, type: !26)
!2993 = !DILocalVariable(name: "flags", scope: !2991, file: !413, line: 906, type: !30)
!2994 = !DILocalVariable(name: "qsize", scope: !2991, file: !413, line: 907, type: !85)
!2995 = !DILocation(line: 0, scope: !2976)
!2996 = !DILocation(line: 880, column: 11, scope: !2976)
!2997 = !DILocation(line: 882, column: 24, scope: !2976)
!2998 = !DILocation(line: 884, column: 9, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2976, file: !413, line: 884, column: 7)
!3000 = !DILocation(line: 884, column: 7, scope: !2976)
!3001 = !DILocation(line: 885, column: 5, scope: !2999)
!3002 = !DILocation(line: 887, column: 7, scope: !2988)
!3003 = !DILocation(line: 887, column: 14, scope: !2988)
!3004 = !DILocation(line: 887, column: 7, scope: !2976)
!3005 = !DILocation(line: 889, column: 31, scope: !2987)
!3006 = !DILocation(line: 0, scope: !2987)
!3007 = !DILocation(line: 892, column: 16, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !2987, file: !413, line: 892, column: 11)
!3009 = !DILocation(line: 892, column: 11, scope: !2987)
!3010 = !DILocation(line: 893, column: 9, scope: !3008)
!3011 = !DILocation(line: 895, column: 32, scope: !2987)
!3012 = !DILocation(line: 895, column: 61, scope: !2987)
!3013 = !DILocation(line: 895, column: 58, scope: !2987)
!3014 = !DILocation(line: 895, column: 66, scope: !2987)
!3015 = !DILocation(line: 895, column: 22, scope: !2987)
!3016 = !DILocation(line: 895, column: 15, scope: !2987)
!3017 = !DILocation(line: 896, column: 11, scope: !2987)
!3018 = !DILocation(line: 897, column: 15, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !2987, file: !413, line: 896, column: 11)
!3020 = !{i64 0, i64 8, !1383, i64 8, i64 8, !1254}
!3021 = !DILocation(line: 897, column: 9, scope: !3019)
!3022 = !DILocation(line: 898, column: 20, scope: !2987)
!3023 = !DILocation(line: 898, column: 18, scope: !2987)
!3024 = !DILocation(line: 898, column: 15, scope: !2987)
!3025 = !DILocation(line: 898, column: 38, scope: !2987)
!3026 = !DILocation(line: 898, column: 31, scope: !2987)
!3027 = !DILocation(line: 898, column: 48, scope: !2987)
!3028 = !DILocation(line: 0, scope: !2426, inlinedAt: !3029)
!3029 = distinct !DILocation(line: 898, column: 7, scope: !2987)
!3030 = !DILocation(line: 71, column: 10, scope: !2426, inlinedAt: !3029)
!3031 = !DILocation(line: 899, column: 14, scope: !2987)
!3032 = !DILocation(line: 900, column: 5, scope: !2987)
!3033 = !DILocation(line: 903, column: 19, scope: !2991)
!3034 = !DILocation(line: 903, column: 25, scope: !2991)
!3035 = !DILocation(line: 0, scope: !2991)
!3036 = !DILocation(line: 904, column: 23, scope: !2991)
!3037 = !DILocation(line: 906, column: 26, scope: !2991)
!3038 = !DILocation(line: 906, column: 32, scope: !2991)
!3039 = !DILocation(line: 908, column: 55, scope: !2991)
!3040 = !DILocation(line: 909, column: 46, scope: !2991)
!3041 = !DILocation(line: 910, column: 55, scope: !2991)
!3042 = !DILocation(line: 911, column: 55, scope: !2991)
!3043 = !DILocation(line: 907, column: 20, scope: !2991)
!3044 = !DILocation(line: 913, column: 14, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !2991, file: !413, line: 913, column: 9)
!3046 = !DILocation(line: 913, column: 9, scope: !2991)
!3047 = !DILocation(line: 915, column: 35, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !3045, file: !413, line: 914, column: 7)
!3049 = !DILocation(line: 915, column: 20, scope: !3048)
!3050 = !DILocation(line: 916, column: 17, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3048, file: !413, line: 916, column: 13)
!3052 = !DILocation(line: 916, column: 13, scope: !3048)
!3053 = !DILocation(line: 917, column: 11, scope: !3051)
!3054 = !DILocation(line: 0, scope: !2893, inlinedAt: !3055)
!3055 = distinct !DILocation(line: 918, column: 27, scope: !3048)
!3056 = !DILocation(line: 218, column: 10, scope: !2893, inlinedAt: !3055)
!3057 = !DILocation(line: 918, column: 19, scope: !3048)
!3058 = !DILocation(line: 919, column: 69, scope: !3048)
!3059 = !DILocation(line: 921, column: 44, scope: !3048)
!3060 = !DILocation(line: 922, column: 44, scope: !3048)
!3061 = !DILocation(line: 919, column: 9, scope: !3048)
!3062 = !DILocation(line: 923, column: 7, scope: !3048)
!3063 = !DILocation(line: 925, column: 11, scope: !2991)
!3064 = !DILocation(line: 926, column: 5, scope: !2991)
!3065 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !413, file: !413, line: 937, type: !3066, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !3068)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{!26, !30, !28, !85}
!3068 = !{!3069, !3070, !3071}
!3069 = !DILocalVariable(name: "n", arg: 1, scope: !3065, file: !413, line: 937, type: !30)
!3070 = !DILocalVariable(name: "arg", arg: 2, scope: !3065, file: !413, line: 937, type: !28)
!3071 = !DILocalVariable(name: "argsize", arg: 3, scope: !3065, file: !413, line: 937, type: !85)
!3072 = !DILocation(line: 0, scope: !3065)
!3073 = !DILocation(line: 939, column: 10, scope: !3065)
!3074 = !DILocation(line: 939, column: 3, scope: !3065)
!3075 = distinct !DISubprogram(name: "quotearg", scope: !413, file: !413, line: 943, type: !109, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !3076)
!3076 = !{!3077}
!3077 = !DILocalVariable(name: "arg", arg: 1, scope: !3075, file: !413, line: 943, type: !28)
!3078 = !DILocation(line: 0, scope: !3075)
!3079 = !DILocation(line: 0, scope: !2969, inlinedAt: !3080)
!3080 = distinct !DILocation(line: 945, column: 10, scope: !3075)
!3081 = !DILocation(line: 933, column: 10, scope: !2969, inlinedAt: !3080)
!3082 = !DILocation(line: 945, column: 3, scope: !3075)
!3083 = distinct !DISubprogram(name: "quotearg_mem", scope: !413, file: !413, line: 949, type: !3084, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !3086)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{!26, !28, !85}
!3086 = !{!3087, !3088}
!3087 = !DILocalVariable(name: "arg", arg: 1, scope: !3083, file: !413, line: 949, type: !28)
!3088 = !DILocalVariable(name: "argsize", arg: 2, scope: !3083, file: !413, line: 949, type: !85)
!3089 = !DILocation(line: 0, scope: !3083)
!3090 = !DILocation(line: 0, scope: !3065, inlinedAt: !3091)
!3091 = distinct !DILocation(line: 951, column: 10, scope: !3083)
!3092 = !DILocation(line: 939, column: 10, scope: !3065, inlinedAt: !3091)
!3093 = !DILocation(line: 951, column: 3, scope: !3083)
!3094 = distinct !DISubprogram(name: "quotearg_n_style", scope: !413, file: !413, line: 955, type: !224, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !3095)
!3095 = !{!3096, !3097, !3098, !3099}
!3096 = !DILocalVariable(name: "n", arg: 1, scope: !3094, file: !413, line: 955, type: !30)
!3097 = !DILocalVariable(name: "s", arg: 2, scope: !3094, file: !413, line: 955, type: !171)
!3098 = !DILocalVariable(name: "arg", arg: 3, scope: !3094, file: !413, line: 955, type: !28)
!3099 = !DILocalVariable(name: "o", scope: !3094, file: !413, line: 957, type: !430)
!3100 = !DILocation(line: 0, scope: !3094)
!3101 = !DILocation(line: 957, column: 3, scope: !3094)
!3102 = !DILocation(line: 957, column: 32, scope: !3094)
!3103 = !DILocalVariable(name: "style", arg: 1, scope: !3104, file: !413, line: 193, type: !171)
!3104 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !413, file: !413, line: 193, type: !3105, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !3107)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{!431, !171}
!3107 = !{!3103, !3108}
!3108 = !DILocalVariable(name: "o", scope: !3104, file: !413, line: 195, type: !431)
!3109 = !DILocation(line: 0, scope: !3104, inlinedAt: !3110)
!3110 = distinct !DILocation(line: 957, column: 36, scope: !3094)
!3111 = !DILocation(line: 195, column: 26, scope: !3104, inlinedAt: !3110)
!3112 = !{!3113}
!3113 = distinct !{!3113, !3114, !"quoting_options_from_style: argument 0"}
!3114 = distinct !{!3114, !"quoting_options_from_style"}
!3115 = !DILocation(line: 196, column: 13, scope: !3116, inlinedAt: !3110)
!3116 = distinct !DILexicalBlock(scope: !3104, file: !413, line: 196, column: 7)
!3117 = !DILocation(line: 196, column: 7, scope: !3104, inlinedAt: !3110)
!3118 = !DILocation(line: 197, column: 5, scope: !3116, inlinedAt: !3110)
!3119 = !DILocation(line: 198, column: 5, scope: !3104, inlinedAt: !3110)
!3120 = !DILocation(line: 198, column: 11, scope: !3104, inlinedAt: !3110)
!3121 = !DILocation(line: 958, column: 10, scope: !3094)
!3122 = !DILocation(line: 959, column: 1, scope: !3094)
!3123 = !DILocation(line: 958, column: 3, scope: !3094)
!3124 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !413, file: !413, line: 962, type: !3125, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !3127)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{!26, !30, !171, !28, !85}
!3127 = !{!3128, !3129, !3130, !3131, !3132}
!3128 = !DILocalVariable(name: "n", arg: 1, scope: !3124, file: !413, line: 962, type: !30)
!3129 = !DILocalVariable(name: "s", arg: 2, scope: !3124, file: !413, line: 962, type: !171)
!3130 = !DILocalVariable(name: "arg", arg: 3, scope: !3124, file: !413, line: 963, type: !28)
!3131 = !DILocalVariable(name: "argsize", arg: 4, scope: !3124, file: !413, line: 963, type: !85)
!3132 = !DILocalVariable(name: "o", scope: !3124, file: !413, line: 965, type: !430)
!3133 = !DILocation(line: 0, scope: !3124)
!3134 = !DILocation(line: 965, column: 3, scope: !3124)
!3135 = !DILocation(line: 965, column: 32, scope: !3124)
!3136 = !DILocation(line: 0, scope: !3104, inlinedAt: !3137)
!3137 = distinct !DILocation(line: 965, column: 36, scope: !3124)
!3138 = !DILocation(line: 195, column: 26, scope: !3104, inlinedAt: !3137)
!3139 = !{!3140}
!3140 = distinct !{!3140, !3141, !"quoting_options_from_style: argument 0"}
!3141 = distinct !{!3141, !"quoting_options_from_style"}
!3142 = !DILocation(line: 196, column: 13, scope: !3116, inlinedAt: !3137)
!3143 = !DILocation(line: 196, column: 7, scope: !3104, inlinedAt: !3137)
!3144 = !DILocation(line: 197, column: 5, scope: !3116, inlinedAt: !3137)
!3145 = !DILocation(line: 198, column: 5, scope: !3104, inlinedAt: !3137)
!3146 = !DILocation(line: 198, column: 11, scope: !3104, inlinedAt: !3137)
!3147 = !DILocation(line: 966, column: 10, scope: !3124)
!3148 = !DILocation(line: 967, column: 1, scope: !3124)
!3149 = !DILocation(line: 966, column: 3, scope: !3124)
!3150 = distinct !DISubprogram(name: "quotearg_style", scope: !413, file: !413, line: 970, type: !3151, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !3153)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{!26, !171, !28}
!3153 = !{!3154, !3155}
!3154 = !DILocalVariable(name: "s", arg: 1, scope: !3150, file: !413, line: 970, type: !171)
!3155 = !DILocalVariable(name: "arg", arg: 2, scope: !3150, file: !413, line: 970, type: !28)
!3156 = !DILocation(line: 195, column: 26, scope: !3104, inlinedAt: !3157)
!3157 = distinct !DILocation(line: 957, column: 36, scope: !3094, inlinedAt: !3158)
!3158 = distinct !DILocation(line: 972, column: 10, scope: !3150)
!3159 = !DILocation(line: 957, column: 32, scope: !3094, inlinedAt: !3158)
!3160 = !DILocation(line: 0, scope: !3150)
!3161 = !DILocation(line: 0, scope: !3094, inlinedAt: !3158)
!3162 = !DILocation(line: 957, column: 3, scope: !3094, inlinedAt: !3158)
!3163 = !DILocation(line: 0, scope: !3104, inlinedAt: !3157)
!3164 = !{!3165}
!3165 = distinct !{!3165, !3166, !"quoting_options_from_style: argument 0"}
!3166 = distinct !{!3166, !"quoting_options_from_style"}
!3167 = !DILocation(line: 196, column: 13, scope: !3116, inlinedAt: !3157)
!3168 = !DILocation(line: 196, column: 7, scope: !3104, inlinedAt: !3157)
!3169 = !DILocation(line: 197, column: 5, scope: !3116, inlinedAt: !3157)
!3170 = !DILocation(line: 198, column: 5, scope: !3104, inlinedAt: !3157)
!3171 = !DILocation(line: 198, column: 11, scope: !3104, inlinedAt: !3157)
!3172 = !DILocation(line: 958, column: 10, scope: !3094, inlinedAt: !3158)
!3173 = !DILocation(line: 959, column: 1, scope: !3094, inlinedAt: !3158)
!3174 = !DILocation(line: 972, column: 3, scope: !3150)
!3175 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !413, file: !413, line: 976, type: !3176, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !3178)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{!26, !171, !28, !85}
!3178 = !{!3179, !3180, !3181}
!3179 = !DILocalVariable(name: "s", arg: 1, scope: !3175, file: !413, line: 976, type: !171)
!3180 = !DILocalVariable(name: "arg", arg: 2, scope: !3175, file: !413, line: 976, type: !28)
!3181 = !DILocalVariable(name: "argsize", arg: 3, scope: !3175, file: !413, line: 976, type: !85)
!3182 = !DILocation(line: 195, column: 26, scope: !3104, inlinedAt: !3183)
!3183 = distinct !DILocation(line: 965, column: 36, scope: !3124, inlinedAt: !3184)
!3184 = distinct !DILocation(line: 978, column: 10, scope: !3175)
!3185 = !DILocation(line: 965, column: 32, scope: !3124, inlinedAt: !3184)
!3186 = !DILocation(line: 0, scope: !3175)
!3187 = !DILocation(line: 0, scope: !3124, inlinedAt: !3184)
!3188 = !DILocation(line: 965, column: 3, scope: !3124, inlinedAt: !3184)
!3189 = !DILocation(line: 0, scope: !3104, inlinedAt: !3183)
!3190 = !{!3191}
!3191 = distinct !{!3191, !3192, !"quoting_options_from_style: argument 0"}
!3192 = distinct !{!3192, !"quoting_options_from_style"}
!3193 = !DILocation(line: 196, column: 13, scope: !3116, inlinedAt: !3183)
!3194 = !DILocation(line: 196, column: 7, scope: !3104, inlinedAt: !3183)
!3195 = !DILocation(line: 197, column: 5, scope: !3116, inlinedAt: !3183)
!3196 = !DILocation(line: 198, column: 5, scope: !3104, inlinedAt: !3183)
!3197 = !DILocation(line: 198, column: 11, scope: !3104, inlinedAt: !3183)
!3198 = !DILocation(line: 966, column: 10, scope: !3124, inlinedAt: !3184)
!3199 = !DILocation(line: 967, column: 1, scope: !3124, inlinedAt: !3184)
!3200 = !DILocation(line: 978, column: 3, scope: !3175)
!3201 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !413, file: !413, line: 982, type: !3202, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !3204)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!26, !28, !85, !27}
!3204 = !{!3205, !3206, !3207, !3208}
!3205 = !DILocalVariable(name: "arg", arg: 1, scope: !3201, file: !413, line: 982, type: !28)
!3206 = !DILocalVariable(name: "argsize", arg: 2, scope: !3201, file: !413, line: 982, type: !85)
!3207 = !DILocalVariable(name: "ch", arg: 3, scope: !3201, file: !413, line: 982, type: !27)
!3208 = !DILocalVariable(name: "options", scope: !3201, file: !413, line: 984, type: !431)
!3209 = !DILocation(line: 0, scope: !3201)
!3210 = !DILocation(line: 984, column: 3, scope: !3201)
!3211 = !DILocation(line: 984, column: 26, scope: !3201)
!3212 = !DILocation(line: 985, column: 13, scope: !3201)
!3213 = !{i64 0, i64 4, !1342, i64 4, i64 4, !1351, i64 8, i64 32, !1342, i64 40, i64 8, !1254, i64 48, i64 8, !1254}
!3214 = !DILocation(line: 0, scope: !2041, inlinedAt: !3215)
!3215 = distinct !DILocation(line: 986, column: 3, scope: !3201)
!3216 = !DILocation(line: 156, column: 62, scope: !2041, inlinedAt: !3215)
!3217 = !DILocation(line: 156, column: 57, scope: !2041, inlinedAt: !3215)
!3218 = !DILocation(line: 157, column: 15, scope: !2041, inlinedAt: !3215)
!3219 = !DILocation(line: 158, column: 12, scope: !2041, inlinedAt: !3215)
!3220 = !DILocation(line: 158, column: 15, scope: !2041, inlinedAt: !3215)
!3221 = !DILocation(line: 158, column: 25, scope: !2041, inlinedAt: !3215)
!3222 = !DILocation(line: 159, column: 18, scope: !2041, inlinedAt: !3215)
!3223 = !DILocation(line: 159, column: 23, scope: !2041, inlinedAt: !3215)
!3224 = !DILocation(line: 159, column: 6, scope: !2041, inlinedAt: !3215)
!3225 = !DILocation(line: 987, column: 10, scope: !3201)
!3226 = !DILocation(line: 988, column: 1, scope: !3201)
!3227 = !DILocation(line: 987, column: 3, scope: !3201)
!3228 = distinct !DISubprogram(name: "quotearg_char", scope: !413, file: !413, line: 991, type: !3229, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !3231)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{!26, !28, !27}
!3231 = !{!3232, !3233}
!3232 = !DILocalVariable(name: "arg", arg: 1, scope: !3228, file: !413, line: 991, type: !28)
!3233 = !DILocalVariable(name: "ch", arg: 2, scope: !3228, file: !413, line: 991, type: !27)
!3234 = !DILocation(line: 984, column: 26, scope: !3201, inlinedAt: !3235)
!3235 = distinct !DILocation(line: 993, column: 10, scope: !3228)
!3236 = !DILocation(line: 0, scope: !3228)
!3237 = !DILocation(line: 0, scope: !3201, inlinedAt: !3235)
!3238 = !DILocation(line: 984, column: 3, scope: !3201, inlinedAt: !3235)
!3239 = !DILocation(line: 985, column: 13, scope: !3201, inlinedAt: !3235)
!3240 = !DILocation(line: 0, scope: !2041, inlinedAt: !3241)
!3241 = distinct !DILocation(line: 986, column: 3, scope: !3201, inlinedAt: !3235)
!3242 = !DILocation(line: 156, column: 62, scope: !2041, inlinedAt: !3241)
!3243 = !DILocation(line: 156, column: 57, scope: !2041, inlinedAt: !3241)
!3244 = !DILocation(line: 157, column: 15, scope: !2041, inlinedAt: !3241)
!3245 = !DILocation(line: 158, column: 12, scope: !2041, inlinedAt: !3241)
!3246 = !DILocation(line: 158, column: 15, scope: !2041, inlinedAt: !3241)
!3247 = !DILocation(line: 158, column: 25, scope: !2041, inlinedAt: !3241)
!3248 = !DILocation(line: 159, column: 18, scope: !2041, inlinedAt: !3241)
!3249 = !DILocation(line: 159, column: 23, scope: !2041, inlinedAt: !3241)
!3250 = !DILocation(line: 159, column: 6, scope: !2041, inlinedAt: !3241)
!3251 = !DILocation(line: 987, column: 10, scope: !3201, inlinedAt: !3235)
!3252 = !DILocation(line: 988, column: 1, scope: !3201, inlinedAt: !3235)
!3253 = !DILocation(line: 993, column: 3, scope: !3228)
!3254 = distinct !DISubprogram(name: "quotearg_colon", scope: !413, file: !413, line: 997, type: !109, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !3255)
!3255 = !{!3256}
!3256 = !DILocalVariable(name: "arg", arg: 1, scope: !3254, file: !413, line: 997, type: !28)
!3257 = !DILocation(line: 984, column: 26, scope: !3201, inlinedAt: !3258)
!3258 = distinct !DILocation(line: 993, column: 10, scope: !3228, inlinedAt: !3259)
!3259 = distinct !DILocation(line: 999, column: 10, scope: !3254)
!3260 = !DILocation(line: 0, scope: !3254)
!3261 = !DILocation(line: 0, scope: !3228, inlinedAt: !3259)
!3262 = !DILocation(line: 0, scope: !3201, inlinedAt: !3258)
!3263 = !DILocation(line: 984, column: 3, scope: !3201, inlinedAt: !3258)
!3264 = !DILocation(line: 985, column: 13, scope: !3201, inlinedAt: !3258)
!3265 = !DILocation(line: 0, scope: !2041, inlinedAt: !3266)
!3266 = distinct !DILocation(line: 986, column: 3, scope: !3201, inlinedAt: !3258)
!3267 = !DILocation(line: 156, column: 57, scope: !2041, inlinedAt: !3266)
!3268 = !DILocation(line: 158, column: 12, scope: !2041, inlinedAt: !3266)
!3269 = !DILocation(line: 159, column: 6, scope: !2041, inlinedAt: !3266)
!3270 = !DILocation(line: 987, column: 10, scope: !3201, inlinedAt: !3258)
!3271 = !DILocation(line: 988, column: 1, scope: !3201, inlinedAt: !3258)
!3272 = !DILocation(line: 999, column: 3, scope: !3254)
!3273 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !413, file: !413, line: 1003, type: !3084, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !3274)
!3274 = !{!3275, !3276}
!3275 = !DILocalVariable(name: "arg", arg: 1, scope: !3273, file: !413, line: 1003, type: !28)
!3276 = !DILocalVariable(name: "argsize", arg: 2, scope: !3273, file: !413, line: 1003, type: !85)
!3277 = !DILocation(line: 984, column: 26, scope: !3201, inlinedAt: !3278)
!3278 = distinct !DILocation(line: 1005, column: 10, scope: !3273)
!3279 = !DILocation(line: 0, scope: !3273)
!3280 = !DILocation(line: 0, scope: !3201, inlinedAt: !3278)
!3281 = !DILocation(line: 984, column: 3, scope: !3201, inlinedAt: !3278)
!3282 = !DILocation(line: 985, column: 13, scope: !3201, inlinedAt: !3278)
!3283 = !DILocation(line: 0, scope: !2041, inlinedAt: !3284)
!3284 = distinct !DILocation(line: 986, column: 3, scope: !3201, inlinedAt: !3278)
!3285 = !DILocation(line: 156, column: 57, scope: !2041, inlinedAt: !3284)
!3286 = !DILocation(line: 158, column: 12, scope: !2041, inlinedAt: !3284)
!3287 = !DILocation(line: 159, column: 6, scope: !2041, inlinedAt: !3284)
!3288 = !DILocation(line: 987, column: 10, scope: !3201, inlinedAt: !3278)
!3289 = !DILocation(line: 988, column: 1, scope: !3201, inlinedAt: !3278)
!3290 = !DILocation(line: 1005, column: 3, scope: !3273)
!3291 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !413, file: !413, line: 1009, type: !224, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !3292)
!3292 = !{!3293, !3294, !3295, !3296}
!3293 = !DILocalVariable(name: "n", arg: 1, scope: !3291, file: !413, line: 1009, type: !30)
!3294 = !DILocalVariable(name: "s", arg: 2, scope: !3291, file: !413, line: 1009, type: !171)
!3295 = !DILocalVariable(name: "arg", arg: 3, scope: !3291, file: !413, line: 1009, type: !28)
!3296 = !DILocalVariable(name: "options", scope: !3291, file: !413, line: 1011, type: !431)
!3297 = !DILocation(line: 195, column: 26, scope: !3104, inlinedAt: !3298)
!3298 = distinct !DILocation(line: 1012, column: 13, scope: !3291)
!3299 = !DILocation(line: 0, scope: !3291)
!3300 = !DILocation(line: 1011, column: 3, scope: !3291)
!3301 = !DILocation(line: 1011, column: 26, scope: !3291)
!3302 = !DILocation(line: 1012, column: 13, scope: !3291)
!3303 = !DILocation(line: 0, scope: !3104, inlinedAt: !3298)
!3304 = !{!3305}
!3305 = distinct !{!3305, !3306, !"quoting_options_from_style: argument 0"}
!3306 = distinct !{!3306, !"quoting_options_from_style"}
!3307 = !DILocation(line: 196, column: 13, scope: !3116, inlinedAt: !3298)
!3308 = !DILocation(line: 196, column: 7, scope: !3104, inlinedAt: !3298)
!3309 = !DILocation(line: 197, column: 5, scope: !3116, inlinedAt: !3298)
!3310 = !DILocation(line: 0, scope: !2041, inlinedAt: !3311)
!3311 = distinct !DILocation(line: 1013, column: 3, scope: !3291)
!3312 = !DILocation(line: 156, column: 57, scope: !2041, inlinedAt: !3311)
!3313 = !DILocation(line: 158, column: 12, scope: !2041, inlinedAt: !3311)
!3314 = !DILocation(line: 159, column: 6, scope: !2041, inlinedAt: !3311)
!3315 = !DILocation(line: 1014, column: 10, scope: !3291)
!3316 = !DILocation(line: 1015, column: 1, scope: !3291)
!3317 = !DILocation(line: 1014, column: 3, scope: !3291)
!3318 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !413, file: !413, line: 1018, type: !3319, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !3321)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{!26, !30, !28, !28, !28}
!3321 = !{!3322, !3323, !3324, !3325}
!3322 = !DILocalVariable(name: "n", arg: 1, scope: !3318, file: !413, line: 1018, type: !30)
!3323 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3318, file: !413, line: 1018, type: !28)
!3324 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3318, file: !413, line: 1019, type: !28)
!3325 = !DILocalVariable(name: "arg", arg: 4, scope: !3318, file: !413, line: 1019, type: !28)
!3326 = !DILocalVariable(name: "o", scope: !3327, file: !413, line: 1030, type: !431)
!3327 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !413, file: !413, line: 1026, type: !3328, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !3330)
!3328 = !DISubroutineType(types: !3329)
!3329 = !{!26, !30, !28, !28, !28, !85}
!3330 = !{!3331, !3332, !3333, !3334, !3335, !3326}
!3331 = !DILocalVariable(name: "n", arg: 1, scope: !3327, file: !413, line: 1026, type: !30)
!3332 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3327, file: !413, line: 1026, type: !28)
!3333 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3327, file: !413, line: 1027, type: !28)
!3334 = !DILocalVariable(name: "arg", arg: 4, scope: !3327, file: !413, line: 1028, type: !28)
!3335 = !DILocalVariable(name: "argsize", arg: 5, scope: !3327, file: !413, line: 1028, type: !85)
!3336 = !DILocation(line: 1030, column: 26, scope: !3327, inlinedAt: !3337)
!3337 = distinct !DILocation(line: 1021, column: 10, scope: !3318)
!3338 = !DILocation(line: 0, scope: !3318)
!3339 = !DILocation(line: 0, scope: !3327, inlinedAt: !3337)
!3340 = !DILocation(line: 1030, column: 3, scope: !3327, inlinedAt: !3337)
!3341 = !DILocation(line: 1030, column: 30, scope: !3327, inlinedAt: !3337)
!3342 = !DILocation(line: 0, scope: !2081, inlinedAt: !3343)
!3343 = distinct !DILocation(line: 1031, column: 3, scope: !3327, inlinedAt: !3337)
!3344 = !DILocation(line: 184, column: 6, scope: !2081, inlinedAt: !3343)
!3345 = !DILocation(line: 184, column: 12, scope: !2081, inlinedAt: !3343)
!3346 = !DILocation(line: 185, column: 8, scope: !2095, inlinedAt: !3343)
!3347 = !DILocation(line: 185, column: 23, scope: !2095, inlinedAt: !3343)
!3348 = !DILocation(line: 185, column: 19, scope: !2095, inlinedAt: !3343)
!3349 = !DILocation(line: 186, column: 5, scope: !2095, inlinedAt: !3343)
!3350 = !DILocation(line: 187, column: 6, scope: !2081, inlinedAt: !3343)
!3351 = !DILocation(line: 187, column: 17, scope: !2081, inlinedAt: !3343)
!3352 = !DILocation(line: 188, column: 6, scope: !2081, inlinedAt: !3343)
!3353 = !DILocation(line: 188, column: 18, scope: !2081, inlinedAt: !3343)
!3354 = !DILocation(line: 1032, column: 10, scope: !3327, inlinedAt: !3337)
!3355 = !DILocation(line: 1033, column: 1, scope: !3327, inlinedAt: !3337)
!3356 = !DILocation(line: 1021, column: 3, scope: !3318)
!3357 = !DILocation(line: 0, scope: !3327)
!3358 = !DILocation(line: 1030, column: 3, scope: !3327)
!3359 = !DILocation(line: 1030, column: 26, scope: !3327)
!3360 = !DILocation(line: 1030, column: 30, scope: !3327)
!3361 = !DILocation(line: 0, scope: !2081, inlinedAt: !3362)
!3362 = distinct !DILocation(line: 1031, column: 3, scope: !3327)
!3363 = !DILocation(line: 184, column: 6, scope: !2081, inlinedAt: !3362)
!3364 = !DILocation(line: 184, column: 12, scope: !2081, inlinedAt: !3362)
!3365 = !DILocation(line: 185, column: 8, scope: !2095, inlinedAt: !3362)
!3366 = !DILocation(line: 185, column: 23, scope: !2095, inlinedAt: !3362)
!3367 = !DILocation(line: 185, column: 19, scope: !2095, inlinedAt: !3362)
!3368 = !DILocation(line: 186, column: 5, scope: !2095, inlinedAt: !3362)
!3369 = !DILocation(line: 187, column: 6, scope: !2081, inlinedAt: !3362)
!3370 = !DILocation(line: 187, column: 17, scope: !2081, inlinedAt: !3362)
!3371 = !DILocation(line: 188, column: 6, scope: !2081, inlinedAt: !3362)
!3372 = !DILocation(line: 188, column: 18, scope: !2081, inlinedAt: !3362)
!3373 = !DILocation(line: 1032, column: 10, scope: !3327)
!3374 = !DILocation(line: 1033, column: 1, scope: !3327)
!3375 = !DILocation(line: 1032, column: 3, scope: !3327)
!3376 = distinct !DISubprogram(name: "quotearg_custom", scope: !413, file: !413, line: 1036, type: !3377, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !3379)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{!26, !28, !28, !28}
!3379 = !{!3380, !3381, !3382}
!3380 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3376, file: !413, line: 1036, type: !28)
!3381 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3376, file: !413, line: 1036, type: !28)
!3382 = !DILocalVariable(name: "arg", arg: 3, scope: !3376, file: !413, line: 1037, type: !28)
!3383 = !DILocation(line: 1030, column: 26, scope: !3327, inlinedAt: !3384)
!3384 = distinct !DILocation(line: 1021, column: 10, scope: !3318, inlinedAt: !3385)
!3385 = distinct !DILocation(line: 1039, column: 10, scope: !3376)
!3386 = !DILocation(line: 0, scope: !3376)
!3387 = !DILocation(line: 0, scope: !3318, inlinedAt: !3385)
!3388 = !DILocation(line: 0, scope: !3327, inlinedAt: !3384)
!3389 = !DILocation(line: 1030, column: 3, scope: !3327, inlinedAt: !3384)
!3390 = !DILocation(line: 1030, column: 30, scope: !3327, inlinedAt: !3384)
!3391 = !DILocation(line: 0, scope: !2081, inlinedAt: !3392)
!3392 = distinct !DILocation(line: 1031, column: 3, scope: !3327, inlinedAt: !3384)
!3393 = !DILocation(line: 184, column: 6, scope: !2081, inlinedAt: !3392)
!3394 = !DILocation(line: 184, column: 12, scope: !2081, inlinedAt: !3392)
!3395 = !DILocation(line: 185, column: 8, scope: !2095, inlinedAt: !3392)
!3396 = !DILocation(line: 185, column: 23, scope: !2095, inlinedAt: !3392)
!3397 = !DILocation(line: 185, column: 19, scope: !2095, inlinedAt: !3392)
!3398 = !DILocation(line: 186, column: 5, scope: !2095, inlinedAt: !3392)
!3399 = !DILocation(line: 187, column: 6, scope: !2081, inlinedAt: !3392)
!3400 = !DILocation(line: 187, column: 17, scope: !2081, inlinedAt: !3392)
!3401 = !DILocation(line: 188, column: 6, scope: !2081, inlinedAt: !3392)
!3402 = !DILocation(line: 188, column: 18, scope: !2081, inlinedAt: !3392)
!3403 = !DILocation(line: 1032, column: 10, scope: !3327, inlinedAt: !3384)
!3404 = !DILocation(line: 1033, column: 1, scope: !3327, inlinedAt: !3384)
!3405 = !DILocation(line: 1039, column: 3, scope: !3376)
!3406 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !413, file: !413, line: 1043, type: !3407, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !3409)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{!26, !28, !28, !28, !85}
!3409 = !{!3410, !3411, !3412, !3413}
!3410 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3406, file: !413, line: 1043, type: !28)
!3411 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3406, file: !413, line: 1043, type: !28)
!3412 = !DILocalVariable(name: "arg", arg: 3, scope: !3406, file: !413, line: 1044, type: !28)
!3413 = !DILocalVariable(name: "argsize", arg: 4, scope: !3406, file: !413, line: 1044, type: !85)
!3414 = !DILocation(line: 1030, column: 26, scope: !3327, inlinedAt: !3415)
!3415 = distinct !DILocation(line: 1046, column: 10, scope: !3406)
!3416 = !DILocation(line: 0, scope: !3406)
!3417 = !DILocation(line: 0, scope: !3327, inlinedAt: !3415)
!3418 = !DILocation(line: 1030, column: 3, scope: !3327, inlinedAt: !3415)
!3419 = !DILocation(line: 1030, column: 30, scope: !3327, inlinedAt: !3415)
!3420 = !DILocation(line: 0, scope: !2081, inlinedAt: !3421)
!3421 = distinct !DILocation(line: 1031, column: 3, scope: !3327, inlinedAt: !3415)
!3422 = !DILocation(line: 184, column: 6, scope: !2081, inlinedAt: !3421)
!3423 = !DILocation(line: 184, column: 12, scope: !2081, inlinedAt: !3421)
!3424 = !DILocation(line: 185, column: 8, scope: !2095, inlinedAt: !3421)
!3425 = !DILocation(line: 185, column: 23, scope: !2095, inlinedAt: !3421)
!3426 = !DILocation(line: 185, column: 19, scope: !2095, inlinedAt: !3421)
!3427 = !DILocation(line: 186, column: 5, scope: !2095, inlinedAt: !3421)
!3428 = !DILocation(line: 187, column: 6, scope: !2081, inlinedAt: !3421)
!3429 = !DILocation(line: 187, column: 17, scope: !2081, inlinedAt: !3421)
!3430 = !DILocation(line: 188, column: 6, scope: !2081, inlinedAt: !3421)
!3431 = !DILocation(line: 188, column: 18, scope: !2081, inlinedAt: !3421)
!3432 = !DILocation(line: 1032, column: 10, scope: !3327, inlinedAt: !3415)
!3433 = !DILocation(line: 1033, column: 1, scope: !3327, inlinedAt: !3415)
!3434 = !DILocation(line: 1046, column: 3, scope: !3406)
!3435 = distinct !DISubprogram(name: "quote_n_mem", scope: !413, file: !413, line: 1061, type: !3436, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !3438)
!3436 = !DISubroutineType(types: !3437)
!3437 = !{!28, !30, !28, !85}
!3438 = !{!3439, !3440, !3441}
!3439 = !DILocalVariable(name: "n", arg: 1, scope: !3435, file: !413, line: 1061, type: !30)
!3440 = !DILocalVariable(name: "arg", arg: 2, scope: !3435, file: !413, line: 1061, type: !28)
!3441 = !DILocalVariable(name: "argsize", arg: 3, scope: !3435, file: !413, line: 1061, type: !85)
!3442 = !DILocation(line: 0, scope: !3435)
!3443 = !DILocation(line: 1063, column: 10, scope: !3435)
!3444 = !DILocation(line: 1063, column: 3, scope: !3435)
!3445 = distinct !DISubprogram(name: "quote_mem", scope: !413, file: !413, line: 1067, type: !3446, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !3448)
!3446 = !DISubroutineType(types: !3447)
!3447 = !{!28, !28, !85}
!3448 = !{!3449, !3450}
!3449 = !DILocalVariable(name: "arg", arg: 1, scope: !3445, file: !413, line: 1067, type: !28)
!3450 = !DILocalVariable(name: "argsize", arg: 2, scope: !3445, file: !413, line: 1067, type: !85)
!3451 = !DILocation(line: 0, scope: !3445)
!3452 = !DILocation(line: 0, scope: !3435, inlinedAt: !3453)
!3453 = distinct !DILocation(line: 1069, column: 10, scope: !3445)
!3454 = !DILocation(line: 1063, column: 10, scope: !3435, inlinedAt: !3453)
!3455 = !DILocation(line: 1069, column: 3, scope: !3445)
!3456 = distinct !DISubprogram(name: "quote_n", scope: !413, file: !413, line: 1073, type: !3457, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !3459)
!3457 = !DISubroutineType(types: !3458)
!3458 = !{!28, !30, !28}
!3459 = !{!3460, !3461}
!3460 = !DILocalVariable(name: "n", arg: 1, scope: !3456, file: !413, line: 1073, type: !30)
!3461 = !DILocalVariable(name: "arg", arg: 2, scope: !3456, file: !413, line: 1073, type: !28)
!3462 = !DILocation(line: 0, scope: !3456)
!3463 = !DILocation(line: 0, scope: !3435, inlinedAt: !3464)
!3464 = distinct !DILocation(line: 1075, column: 10, scope: !3456)
!3465 = !DILocation(line: 1063, column: 10, scope: !3435, inlinedAt: !3464)
!3466 = !DILocation(line: 1075, column: 3, scope: !3456)
!3467 = distinct !DISubprogram(name: "quote", scope: !413, file: !413, line: 1079, type: !210, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !3468)
!3468 = !{!3469}
!3469 = !DILocalVariable(name: "arg", arg: 1, scope: !3467, file: !413, line: 1079, type: !28)
!3470 = !DILocation(line: 0, scope: !3467)
!3471 = !DILocation(line: 0, scope: !3456, inlinedAt: !3472)
!3472 = distinct !DILocation(line: 1081, column: 10, scope: !3467)
!3473 = !DILocation(line: 0, scope: !3435, inlinedAt: !3474)
!3474 = distinct !DILocation(line: 1075, column: 10, scope: !3456, inlinedAt: !3472)
!3475 = !DILocation(line: 1063, column: 10, scope: !3435, inlinedAt: !3474)
!3476 = !DILocation(line: 1081, column: 3, scope: !3467)
!3477 = distinct !DISubprogram(name: "version_etc_arn", scope: !565, file: !565, line: 61, type: !3478, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !564, retainedNodes: !3483)
!3478 = !DISubroutineType(types: !3479)
!3479 = !{null, !3480, !28, !28, !28, !3482, !85}
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !285, line: 7, baseType: !575)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!3483 = !{!3484, !3485, !3486, !3487, !3488, !3489}
!3484 = !DILocalVariable(name: "stream", arg: 1, scope: !3477, file: !565, line: 61, type: !3480)
!3485 = !DILocalVariable(name: "command_name", arg: 2, scope: !3477, file: !565, line: 62, type: !28)
!3486 = !DILocalVariable(name: "package", arg: 3, scope: !3477, file: !565, line: 62, type: !28)
!3487 = !DILocalVariable(name: "version", arg: 4, scope: !3477, file: !565, line: 63, type: !28)
!3488 = !DILocalVariable(name: "authors", arg: 5, scope: !3477, file: !565, line: 64, type: !3482)
!3489 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3477, file: !565, line: 64, type: !85)
!3490 = !DILocation(line: 0, scope: !3477)
!3491 = !DILocation(line: 66, column: 7, scope: !3492)
!3492 = distinct !DILexicalBlock(scope: !3477, file: !565, line: 66, column: 7)
!3493 = !DILocation(line: 66, column: 7, scope: !3477)
!3494 = !DILocation(line: 67, column: 5, scope: !3492)
!3495 = !DILocation(line: 69, column: 5, scope: !3492)
!3496 = !DILocation(line: 83, column: 3, scope: !3477)
!3497 = !DILocation(line: 85, column: 3, scope: !3477)
!3498 = !DILocation(line: 88, column: 3, scope: !3477)
!3499 = !DILocation(line: 95, column: 3, scope: !3477)
!3500 = !DILocation(line: 97, column: 3, scope: !3477)
!3501 = !DILocation(line: 105, column: 7, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3477, file: !565, line: 98, column: 5)
!3503 = !DILocation(line: 106, column: 7, scope: !3502)
!3504 = !DILocation(line: 109, column: 7, scope: !3502)
!3505 = !DILocation(line: 110, column: 7, scope: !3502)
!3506 = !DILocation(line: 113, column: 7, scope: !3502)
!3507 = !DILocation(line: 115, column: 7, scope: !3502)
!3508 = !DILocation(line: 120, column: 7, scope: !3502)
!3509 = !DILocation(line: 122, column: 7, scope: !3502)
!3510 = !DILocation(line: 127, column: 7, scope: !3502)
!3511 = !DILocation(line: 129, column: 7, scope: !3502)
!3512 = !DILocation(line: 134, column: 7, scope: !3502)
!3513 = !DILocation(line: 137, column: 7, scope: !3502)
!3514 = !DILocation(line: 142, column: 7, scope: !3502)
!3515 = !DILocation(line: 145, column: 7, scope: !3502)
!3516 = !DILocation(line: 150, column: 7, scope: !3502)
!3517 = !DILocation(line: 154, column: 7, scope: !3502)
!3518 = !DILocation(line: 159, column: 7, scope: !3502)
!3519 = !DILocation(line: 163, column: 7, scope: !3502)
!3520 = !DILocation(line: 170, column: 7, scope: !3502)
!3521 = !DILocation(line: 174, column: 7, scope: !3502)
!3522 = !DILocation(line: 176, column: 1, scope: !3477)
!3523 = distinct !DISubprogram(name: "version_etc_ar", scope: !565, file: !565, line: 183, type: !3524, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !564, retainedNodes: !3526)
!3524 = !DISubroutineType(types: !3525)
!3525 = !{null, !3480, !28, !28, !28, !3482}
!3526 = !{!3527, !3528, !3529, !3530, !3531, !3532}
!3527 = !DILocalVariable(name: "stream", arg: 1, scope: !3523, file: !565, line: 183, type: !3480)
!3528 = !DILocalVariable(name: "command_name", arg: 2, scope: !3523, file: !565, line: 184, type: !28)
!3529 = !DILocalVariable(name: "package", arg: 3, scope: !3523, file: !565, line: 184, type: !28)
!3530 = !DILocalVariable(name: "version", arg: 4, scope: !3523, file: !565, line: 185, type: !28)
!3531 = !DILocalVariable(name: "authors", arg: 5, scope: !3523, file: !565, line: 185, type: !3482)
!3532 = !DILocalVariable(name: "n_authors", scope: !3523, file: !565, line: 187, type: !85)
!3533 = !DILocation(line: 0, scope: !3523)
!3534 = !DILocation(line: 189, column: 8, scope: !3535)
!3535 = distinct !DILexicalBlock(scope: !3523, file: !565, line: 189, column: 3)
!3536 = !DILocation(line: 0, scope: !3535)
!3537 = !DILocation(line: 189, column: 23, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3535, file: !565, line: 189, column: 3)
!3539 = !DILocation(line: 189, column: 3, scope: !3535)
!3540 = !DILocation(line: 189, column: 52, scope: !3538)
!3541 = distinct !{!3541, !3539, !3542}
!3542 = !DILocation(line: 190, column: 5, scope: !3535)
!3543 = !DILocation(line: 191, column: 3, scope: !3523)
!3544 = !DILocation(line: 192, column: 1, scope: !3523)
!3545 = distinct !DISubprogram(name: "version_etc_va", scope: !565, file: !565, line: 199, type: !3546, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !564, retainedNodes: !3555)
!3546 = !DISubroutineType(types: !3547)
!3547 = !{null, !3480, !28, !28, !28, !3548}
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !565, line: 192, size: 192, elements: !3550)
!3550 = !{!3551, !3552, !3553, !3554}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3549, file: !565, line: 192, baseType: !7, size: 32)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3549, file: !565, line: 192, baseType: !7, size: 32, offset: 32)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3549, file: !565, line: 192, baseType: !83, size: 64, offset: 64)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3549, file: !565, line: 192, baseType: !83, size: 64, offset: 128)
!3555 = !{!3556, !3557, !3558, !3559, !3560, !3561, !3562}
!3556 = !DILocalVariable(name: "stream", arg: 1, scope: !3545, file: !565, line: 199, type: !3480)
!3557 = !DILocalVariable(name: "command_name", arg: 2, scope: !3545, file: !565, line: 200, type: !28)
!3558 = !DILocalVariable(name: "package", arg: 3, scope: !3545, file: !565, line: 200, type: !28)
!3559 = !DILocalVariable(name: "version", arg: 4, scope: !3545, file: !565, line: 201, type: !28)
!3560 = !DILocalVariable(name: "authors", arg: 5, scope: !3545, file: !565, line: 201, type: !3548)
!3561 = !DILocalVariable(name: "n_authors", scope: !3545, file: !565, line: 203, type: !85)
!3562 = !DILocalVariable(name: "authtab", scope: !3545, file: !565, line: 204, type: !3563)
!3563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 640, elements: !487)
!3564 = !DILocation(line: 0, scope: !3545)
!3565 = !DILocation(line: 204, column: 3, scope: !3545)
!3566 = !DILocation(line: 204, column: 15, scope: !3545)
!3567 = !DILocation(line: 0, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3569, file: !565, line: 206, column: 3)
!3569 = distinct !DILexicalBlock(scope: !3545, file: !565, line: 206, column: 3)
!3570 = !DILocation(line: 208, column: 35, scope: !3568)
!3571 = !DILocation(line: 208, column: 14, scope: !3568)
!3572 = !DILocation(line: 208, column: 33, scope: !3568)
!3573 = !DILocation(line: 208, column: 67, scope: !3568)
!3574 = !DILocation(line: 206, column: 3, scope: !3569)
!3575 = !DILocation(line: 0, scope: !3569)
!3576 = !DILocation(line: 211, column: 3, scope: !3545)
!3577 = !DILocation(line: 213, column: 1, scope: !3545)
!3578 = distinct !DISubprogram(name: "version_etc", scope: !565, file: !565, line: 230, type: !3579, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !564, retainedNodes: !3581)
!3579 = !DISubroutineType(types: !3580)
!3580 = !{null, !3480, !28, !28, !28, null}
!3581 = !{!3582, !3583, !3584, !3585, !3586}
!3582 = !DILocalVariable(name: "stream", arg: 1, scope: !3578, file: !565, line: 230, type: !3480)
!3583 = !DILocalVariable(name: "command_name", arg: 2, scope: !3578, file: !565, line: 231, type: !28)
!3584 = !DILocalVariable(name: "package", arg: 3, scope: !3578, file: !565, line: 231, type: !28)
!3585 = !DILocalVariable(name: "version", arg: 4, scope: !3578, file: !565, line: 232, type: !28)
!3586 = !DILocalVariable(name: "authors", scope: !3578, file: !565, line: 234, type: !3587)
!3587 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !33, line: 52, baseType: !3588)
!3588 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3589, line: 32, baseType: !3590)
!3589 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!3590 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !565, line: 234, baseType: !3591)
!3591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3549, size: 192, elements: !68)
!3592 = !DILocation(line: 0, scope: !3578)
!3593 = !DILocation(line: 234, column: 3, scope: !3578)
!3594 = !DILocation(line: 234, column: 11, scope: !3578)
!3595 = !DILocation(line: 236, column: 3, scope: !3578)
!3596 = !DILocation(line: 237, column: 3, scope: !3578)
!3597 = !DILocation(line: 238, column: 3, scope: !3578)
!3598 = !DILocation(line: 239, column: 1, scope: !3578)
!3599 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !565, file: !565, line: 242, type: !95, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !564, retainedNodes: !31)
!3600 = !DILocation(line: 244, column: 3, scope: !3599)
!3601 = !DILocation(line: 249, column: 3, scope: !3599)
!3602 = !DILocation(line: 255, column: 3, scope: !3599)
!3603 = !DILocation(line: 260, column: 3, scope: !3599)
!3604 = !DILocation(line: 262, column: 1, scope: !3599)
!3605 = distinct !DISubprogram(name: "xnmalloc", scope: !195, file: !195, line: 99, type: !3606, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !606, retainedNodes: !3608)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{!83, !85, !85}
!3608 = !{!3609, !3610}
!3609 = !DILocalVariable(name: "n", arg: 1, scope: !3605, file: !195, line: 99, type: !85)
!3610 = !DILocalVariable(name: "s", arg: 2, scope: !3605, file: !195, line: 99, type: !85)
!3611 = !DILocation(line: 0, scope: !3605)
!3612 = !DILocation(line: 101, column: 7, scope: !3613)
!3613 = distinct !DILexicalBlock(scope: !3605, file: !195, line: 101, column: 7)
!3614 = !DILocation(line: 101, column: 7, scope: !3605)
!3615 = !DILocation(line: 102, column: 5, scope: !3613)
!3616 = !DILocation(line: 103, column: 21, scope: !3605)
!3617 = !DILocalVariable(name: "n", arg: 1, scope: !3618, file: !607, line: 39, type: !85)
!3618 = distinct !DISubprogram(name: "xmalloc", scope: !607, file: !607, line: 39, type: !3619, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !606, retainedNodes: !3621)
!3619 = !DISubroutineType(types: !3620)
!3620 = !{!83, !85}
!3621 = !{!3617, !3622}
!3622 = !DILocalVariable(name: "p", scope: !3618, file: !607, line: 41, type: !83)
!3623 = !DILocation(line: 0, scope: !3618, inlinedAt: !3624)
!3624 = distinct !DILocation(line: 103, column: 10, scope: !3605)
!3625 = !DILocation(line: 41, column: 13, scope: !3618, inlinedAt: !3624)
!3626 = !DILocation(line: 42, column: 8, scope: !3627, inlinedAt: !3624)
!3627 = distinct !DILexicalBlock(scope: !3618, file: !607, line: 42, column: 7)
!3628 = !DILocation(line: 42, column: 15, scope: !3627, inlinedAt: !3624)
!3629 = !DILocation(line: 42, column: 10, scope: !3627, inlinedAt: !3624)
!3630 = !DILocation(line: 43, column: 5, scope: !3627, inlinedAt: !3624)
!3631 = !DILocation(line: 103, column: 3, scope: !3605)
!3632 = !DILocation(line: 0, scope: !3618)
!3633 = !DILocation(line: 41, column: 13, scope: !3618)
!3634 = !DILocation(line: 42, column: 8, scope: !3627)
!3635 = !DILocation(line: 42, column: 15, scope: !3627)
!3636 = !DILocation(line: 42, column: 10, scope: !3627)
!3637 = !DILocation(line: 43, column: 5, scope: !3627)
!3638 = !DILocation(line: 44, column: 3, scope: !3618)
!3639 = distinct !DISubprogram(name: "xnrealloc", scope: !195, file: !195, line: 112, type: !3640, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !606, retainedNodes: !3642)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{!83, !83, !85, !85}
!3642 = !{!3643, !3644, !3645}
!3643 = !DILocalVariable(name: "p", arg: 1, scope: !3639, file: !195, line: 112, type: !83)
!3644 = !DILocalVariable(name: "n", arg: 2, scope: !3639, file: !195, line: 112, type: !85)
!3645 = !DILocalVariable(name: "s", arg: 3, scope: !3639, file: !195, line: 112, type: !85)
!3646 = !DILocation(line: 0, scope: !3639)
!3647 = !DILocation(line: 114, column: 7, scope: !3648)
!3648 = distinct !DILexicalBlock(scope: !3639, file: !195, line: 114, column: 7)
!3649 = !DILocation(line: 114, column: 7, scope: !3639)
!3650 = !DILocation(line: 115, column: 5, scope: !3648)
!3651 = !DILocation(line: 116, column: 25, scope: !3639)
!3652 = !DILocalVariable(name: "p", arg: 1, scope: !3653, file: !607, line: 51, type: !83)
!3653 = distinct !DISubprogram(name: "xrealloc", scope: !607, file: !607, line: 51, type: !3654, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !606, retainedNodes: !3656)
!3654 = !DISubroutineType(types: !3655)
!3655 = !{!83, !83, !85}
!3656 = !{!3652, !3657}
!3657 = !DILocalVariable(name: "n", arg: 2, scope: !3653, file: !607, line: 51, type: !85)
!3658 = !DILocation(line: 0, scope: !3653, inlinedAt: !3659)
!3659 = distinct !DILocation(line: 116, column: 10, scope: !3639)
!3660 = !DILocation(line: 53, column: 8, scope: !3661, inlinedAt: !3659)
!3661 = distinct !DILexicalBlock(scope: !3653, file: !607, line: 53, column: 7)
!3662 = !DILocation(line: 53, column: 13, scope: !3661, inlinedAt: !3659)
!3663 = !DILocation(line: 53, column: 10, scope: !3661, inlinedAt: !3659)
!3664 = !DILocation(line: 57, column: 7, scope: !3665, inlinedAt: !3659)
!3665 = distinct !DILexicalBlock(scope: !3661, file: !607, line: 54, column: 5)
!3666 = !DILocation(line: 58, column: 7, scope: !3665, inlinedAt: !3659)
!3667 = !DILocation(line: 61, column: 7, scope: !3653, inlinedAt: !3659)
!3668 = !DILocation(line: 62, column: 8, scope: !3669, inlinedAt: !3659)
!3669 = distinct !DILexicalBlock(scope: !3653, file: !607, line: 62, column: 7)
!3670 = !DILocation(line: 62, column: 13, scope: !3669, inlinedAt: !3659)
!3671 = !DILocation(line: 62, column: 10, scope: !3669, inlinedAt: !3659)
!3672 = !DILocation(line: 63, column: 5, scope: !3669, inlinedAt: !3659)
!3673 = !DILocation(line: 116, column: 3, scope: !3639)
!3674 = !DILocation(line: 0, scope: !3653)
!3675 = !DILocation(line: 53, column: 8, scope: !3661)
!3676 = !DILocation(line: 53, column: 13, scope: !3661)
!3677 = !DILocation(line: 53, column: 10, scope: !3661)
!3678 = !DILocation(line: 57, column: 7, scope: !3665)
!3679 = !DILocation(line: 58, column: 7, scope: !3665)
!3680 = !DILocation(line: 61, column: 7, scope: !3653)
!3681 = !DILocation(line: 62, column: 8, scope: !3669)
!3682 = !DILocation(line: 62, column: 13, scope: !3669)
!3683 = !DILocation(line: 62, column: 10, scope: !3669)
!3684 = !DILocation(line: 63, column: 5, scope: !3669)
!3685 = !DILocation(line: 65, column: 1, scope: !3653)
!3686 = !DILocation(line: 0, scope: !610)
!3687 = !DILocation(line: 176, column: 14, scope: !610)
!3688 = !DILocation(line: 178, column: 9, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !610, file: !195, line: 178, column: 7)
!3690 = !DILocation(line: 178, column: 7, scope: !610)
!3691 = !DILocation(line: 180, column: 13, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !3693, file: !195, line: 180, column: 11)
!3693 = distinct !DILexicalBlock(scope: !3689, file: !195, line: 179, column: 5)
!3694 = !DILocation(line: 180, column: 11, scope: !3693)
!3695 = !DILocation(line: 188, column: 30, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !3692, file: !195, line: 181, column: 9)
!3697 = !DILocation(line: 189, column: 16, scope: !3696)
!3698 = !DILocation(line: 189, column: 13, scope: !3696)
!3699 = !DILocation(line: 190, column: 9, scope: !3696)
!3700 = !DILocation(line: 191, column: 11, scope: !3701)
!3701 = distinct !DILexicalBlock(scope: !3693, file: !195, line: 191, column: 11)
!3702 = !DILocation(line: 191, column: 11, scope: !3693)
!3703 = !DILocation(line: 206, column: 7, scope: !610)
!3704 = !DILocation(line: 207, column: 25, scope: !610)
!3705 = !DILocation(line: 0, scope: !3653, inlinedAt: !3706)
!3706 = distinct !DILocation(line: 207, column: 10, scope: !610)
!3707 = !DILocation(line: 53, column: 10, scope: !3661, inlinedAt: !3706)
!3708 = !DILocation(line: 192, column: 9, scope: !3701)
!3709 = !DILocation(line: 200, column: 69, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3711, file: !195, line: 200, column: 11)
!3711 = distinct !DILexicalBlock(scope: !3689, file: !195, line: 195, column: 5)
!3712 = !DILocation(line: 201, column: 11, scope: !3710)
!3713 = !DILocation(line: 200, column: 11, scope: !3711)
!3714 = !DILocation(line: 202, column: 9, scope: !3710)
!3715 = !DILocation(line: 203, column: 14, scope: !3711)
!3716 = !DILocation(line: 203, column: 18, scope: !3711)
!3717 = !DILocation(line: 203, column: 9, scope: !3711)
!3718 = !DILocation(line: 53, column: 8, scope: !3661, inlinedAt: !3706)
!3719 = !DILocation(line: 57, column: 7, scope: !3665, inlinedAt: !3706)
!3720 = !DILocation(line: 58, column: 7, scope: !3665, inlinedAt: !3706)
!3721 = !DILocation(line: 61, column: 7, scope: !3653, inlinedAt: !3706)
!3722 = !DILocation(line: 62, column: 8, scope: !3669, inlinedAt: !3706)
!3723 = !DILocation(line: 62, column: 13, scope: !3669, inlinedAt: !3706)
!3724 = !DILocation(line: 62, column: 10, scope: !3669, inlinedAt: !3706)
!3725 = !DILocation(line: 63, column: 5, scope: !3669, inlinedAt: !3706)
!3726 = !DILocation(line: 207, column: 3, scope: !610)
!3727 = distinct !DISubprogram(name: "xcharalloc", scope: !195, file: !195, line: 216, type: !2894, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !606, retainedNodes: !3728)
!3728 = !{!3729}
!3729 = !DILocalVariable(name: "n", arg: 1, scope: !3727, file: !195, line: 216, type: !85)
!3730 = !DILocation(line: 0, scope: !3727)
!3731 = !DILocation(line: 0, scope: !3618, inlinedAt: !3732)
!3732 = distinct !DILocation(line: 218, column: 10, scope: !3727)
!3733 = !DILocation(line: 41, column: 13, scope: !3618, inlinedAt: !3732)
!3734 = !DILocation(line: 42, column: 8, scope: !3627, inlinedAt: !3732)
!3735 = !DILocation(line: 42, column: 15, scope: !3627, inlinedAt: !3732)
!3736 = !DILocation(line: 42, column: 10, scope: !3627, inlinedAt: !3732)
!3737 = !DILocation(line: 43, column: 5, scope: !3627, inlinedAt: !3732)
!3738 = !DILocation(line: 218, column: 3, scope: !3727)
!3739 = distinct !DISubprogram(name: "x2realloc", scope: !607, file: !607, line: 74, type: !3740, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !606, retainedNodes: !3742)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!83, !83, !199}
!3742 = !{!3743, !3744}
!3743 = !DILocalVariable(name: "p", arg: 1, scope: !3739, file: !607, line: 74, type: !83)
!3744 = !DILocalVariable(name: "pn", arg: 2, scope: !3739, file: !607, line: 74, type: !199)
!3745 = !DILocation(line: 0, scope: !3739)
!3746 = !DILocation(line: 0, scope: !610, inlinedAt: !3747)
!3747 = distinct !DILocation(line: 76, column: 10, scope: !3739)
!3748 = !DILocation(line: 176, column: 14, scope: !610, inlinedAt: !3747)
!3749 = !DILocation(line: 178, column: 9, scope: !3689, inlinedAt: !3747)
!3750 = !DILocation(line: 178, column: 7, scope: !610, inlinedAt: !3747)
!3751 = !DILocation(line: 180, column: 13, scope: !3692, inlinedAt: !3747)
!3752 = !DILocation(line: 180, column: 11, scope: !3693, inlinedAt: !3747)
!3753 = !DILocation(line: 191, column: 11, scope: !3701, inlinedAt: !3747)
!3754 = !DILocation(line: 191, column: 11, scope: !3693, inlinedAt: !3747)
!3755 = !DILocation(line: 206, column: 7, scope: !610, inlinedAt: !3747)
!3756 = !DILocation(line: 0, scope: !3653, inlinedAt: !3757)
!3757 = distinct !DILocation(line: 207, column: 10, scope: !610, inlinedAt: !3747)
!3758 = !DILocation(line: 53, column: 10, scope: !3661, inlinedAt: !3757)
!3759 = !DILocation(line: 192, column: 9, scope: !3701, inlinedAt: !3747)
!3760 = !DILocation(line: 201, column: 11, scope: !3710, inlinedAt: !3747)
!3761 = !DILocation(line: 200, column: 11, scope: !3711, inlinedAt: !3747)
!3762 = !DILocation(line: 202, column: 9, scope: !3710, inlinedAt: !3747)
!3763 = !DILocation(line: 203, column: 14, scope: !3711, inlinedAt: !3747)
!3764 = !DILocation(line: 203, column: 18, scope: !3711, inlinedAt: !3747)
!3765 = !DILocation(line: 203, column: 9, scope: !3711, inlinedAt: !3747)
!3766 = !DILocation(line: 53, column: 8, scope: !3661, inlinedAt: !3757)
!3767 = !DILocation(line: 57, column: 7, scope: !3665, inlinedAt: !3757)
!3768 = !DILocation(line: 58, column: 7, scope: !3665, inlinedAt: !3757)
!3769 = !DILocation(line: 61, column: 7, scope: !3653, inlinedAt: !3757)
!3770 = !DILocation(line: 62, column: 8, scope: !3669, inlinedAt: !3757)
!3771 = !DILocation(line: 62, column: 13, scope: !3669, inlinedAt: !3757)
!3772 = !DILocation(line: 62, column: 10, scope: !3669, inlinedAt: !3757)
!3773 = !DILocation(line: 63, column: 5, scope: !3669, inlinedAt: !3757)
!3774 = !DILocation(line: 76, column: 3, scope: !3739)
!3775 = distinct !DISubprogram(name: "xzalloc", scope: !607, file: !607, line: 84, type: !3619, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !606, retainedNodes: !3776)
!3776 = !{!3777}
!3777 = !DILocalVariable(name: "n", arg: 1, scope: !3775, file: !607, line: 84, type: !85)
!3778 = !DILocation(line: 0, scope: !3775)
!3779 = !DILocalVariable(name: "n", arg: 1, scope: !3780, file: !607, line: 93, type: !85)
!3780 = distinct !DISubprogram(name: "xcalloc", scope: !607, file: !607, line: 93, type: !3606, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !606, retainedNodes: !3781)
!3781 = !{!3779, !3782, !3783}
!3782 = !DILocalVariable(name: "s", arg: 2, scope: !3780, file: !607, line: 93, type: !85)
!3783 = !DILocalVariable(name: "p", scope: !3780, file: !607, line: 95, type: !83)
!3784 = !DILocation(line: 0, scope: !3780, inlinedAt: !3785)
!3785 = distinct !DILocation(line: 86, column: 10, scope: !3775)
!3786 = !DILocation(line: 100, column: 7, scope: !3787, inlinedAt: !3785)
!3787 = distinct !DILexicalBlock(scope: !3780, file: !607, line: 100, column: 7)
!3788 = !DILocation(line: 101, column: 7, scope: !3787, inlinedAt: !3785)
!3789 = !DILocation(line: 101, column: 18, scope: !3787, inlinedAt: !3785)
!3790 = !DILocation(line: 101, column: 16, scope: !3787, inlinedAt: !3785)
!3791 = !DILocation(line: 100, column: 7, scope: !3780, inlinedAt: !3785)
!3792 = !DILocation(line: 102, column: 5, scope: !3787, inlinedAt: !3785)
!3793 = !DILocation(line: 86, column: 3, scope: !3775)
!3794 = !DILocation(line: 0, scope: !3780)
!3795 = !DILocation(line: 100, column: 7, scope: !3787)
!3796 = !DILocation(line: 101, column: 7, scope: !3787)
!3797 = !DILocation(line: 101, column: 18, scope: !3787)
!3798 = !DILocation(line: 101, column: 16, scope: !3787)
!3799 = !DILocation(line: 100, column: 7, scope: !3780)
!3800 = !DILocation(line: 102, column: 5, scope: !3787)
!3801 = !DILocation(line: 103, column: 3, scope: !3780)
!3802 = distinct !DISubprogram(name: "xmemdup", scope: !607, file: !607, line: 111, type: !3803, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !606, retainedNodes: !3805)
!3803 = !DISubroutineType(types: !3804)
!3804 = !{!83, !424, !85}
!3805 = !{!3806, !3807}
!3806 = !DILocalVariable(name: "p", arg: 1, scope: !3802, file: !607, line: 111, type: !424)
!3807 = !DILocalVariable(name: "s", arg: 2, scope: !3802, file: !607, line: 111, type: !85)
!3808 = !DILocation(line: 0, scope: !3802)
!3809 = !DILocation(line: 0, scope: !3618, inlinedAt: !3810)
!3810 = distinct !DILocation(line: 113, column: 18, scope: !3802)
!3811 = !DILocation(line: 41, column: 13, scope: !3618, inlinedAt: !3810)
!3812 = !DILocation(line: 42, column: 8, scope: !3627, inlinedAt: !3810)
!3813 = !DILocation(line: 42, column: 15, scope: !3627, inlinedAt: !3810)
!3814 = !DILocation(line: 42, column: 10, scope: !3627, inlinedAt: !3810)
!3815 = !DILocation(line: 43, column: 5, scope: !3627, inlinedAt: !3810)
!3816 = !DILocalVariable(name: "__dest", arg: 1, scope: !3817, file: !2427, line: 31, type: !3820)
!3817 = distinct !DISubprogram(name: "memcpy", scope: !2427, file: !2427, line: 31, type: !3818, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !606, retainedNodes: !3822)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!83, !3820, !3821, !85}
!3820 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !83)
!3821 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !424)
!3822 = !{!3816, !3823, !3824}
!3823 = !DILocalVariable(name: "__src", arg: 2, scope: !3817, file: !2427, line: 31, type: !3821)
!3824 = !DILocalVariable(name: "__len", arg: 3, scope: !3817, file: !2427, line: 31, type: !85)
!3825 = !DILocation(line: 0, scope: !3817, inlinedAt: !3826)
!3826 = distinct !DILocation(line: 113, column: 10, scope: !3802)
!3827 = !DILocation(line: 34, column: 10, scope: !3817, inlinedAt: !3826)
!3828 = !DILocation(line: 113, column: 3, scope: !3802)
!3829 = distinct !DISubprogram(name: "xstrdup", scope: !607, file: !607, line: 119, type: !109, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !606, retainedNodes: !3830)
!3830 = !{!3831}
!3831 = !DILocalVariable(name: "string", arg: 1, scope: !3829, file: !607, line: 119, type: !28)
!3832 = !DILocation(line: 0, scope: !3829)
!3833 = !DILocation(line: 121, column: 27, scope: !3829)
!3834 = !DILocation(line: 121, column: 43, scope: !3829)
!3835 = !DILocation(line: 0, scope: !3802, inlinedAt: !3836)
!3836 = distinct !DILocation(line: 121, column: 10, scope: !3829)
!3837 = !DILocation(line: 0, scope: !3618, inlinedAt: !3838)
!3838 = distinct !DILocation(line: 113, column: 18, scope: !3802, inlinedAt: !3836)
!3839 = !DILocation(line: 41, column: 13, scope: !3618, inlinedAt: !3838)
!3840 = !DILocation(line: 42, column: 8, scope: !3627, inlinedAt: !3838)
!3841 = !DILocation(line: 42, column: 15, scope: !3627, inlinedAt: !3838)
!3842 = !DILocation(line: 42, column: 10, scope: !3627, inlinedAt: !3838)
!3843 = !DILocation(line: 43, column: 5, scope: !3627, inlinedAt: !3838)
!3844 = !DILocation(line: 0, scope: !3817, inlinedAt: !3845)
!3845 = distinct !DILocation(line: 113, column: 10, scope: !3802, inlinedAt: !3836)
!3846 = !DILocation(line: 34, column: 10, scope: !3817, inlinedAt: !3845)
!3847 = !DILocation(line: 121, column: 3, scope: !3829)
!3848 = distinct !DISubprogram(name: "xalloc_die", scope: !623, file: !623, line: 32, type: !95, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !31)
!3849 = !DILocation(line: 34, column: 10, scope: !3848)
!3850 = !DILocation(line: 34, column: 33, scope: !3848)
!3851 = !DILocation(line: 34, column: 3, scope: !3848)
!3852 = !DILocation(line: 40, column: 3, scope: !3848)
!3853 = distinct !DISubprogram(name: "xstrndup", scope: !626, file: !626, line: 30, type: !3084, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !625, retainedNodes: !3854)
!3854 = !{!3855, !3856, !3857}
!3855 = !DILocalVariable(name: "string", arg: 1, scope: !3853, file: !626, line: 30, type: !28)
!3856 = !DILocalVariable(name: "n", arg: 2, scope: !3853, file: !626, line: 30, type: !85)
!3857 = !DILocalVariable(name: "s", scope: !3853, file: !626, line: 32, type: !26)
!3858 = !DILocation(line: 0, scope: !3853)
!3859 = !DILocation(line: 32, column: 13, scope: !3853)
!3860 = !DILocation(line: 33, column: 9, scope: !3861)
!3861 = distinct !DILexicalBlock(scope: !3853, file: !626, line: 33, column: 7)
!3862 = !DILocation(line: 33, column: 7, scope: !3853)
!3863 = !DILocation(line: 34, column: 5, scope: !3861)
!3864 = !DILocation(line: 35, column: 3, scope: !3853)
!3865 = distinct !DISubprogram(name: "rpl_calloc", scope: !629, file: !629, line: 42, type: !3606, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !628, retainedNodes: !3866)
!3866 = !{!3867, !3868, !3869, !3870}
!3867 = !DILocalVariable(name: "n", arg: 1, scope: !3865, file: !629, line: 42, type: !85)
!3868 = !DILocalVariable(name: "s", arg: 2, scope: !3865, file: !629, line: 42, type: !85)
!3869 = !DILocalVariable(name: "result", scope: !3865, file: !629, line: 44, type: !83)
!3870 = !DILocalVariable(name: "bytes", scope: !3871, file: !629, line: 56, type: !85)
!3871 = distinct !DILexicalBlock(scope: !3872, file: !629, line: 53, column: 5)
!3872 = distinct !DILexicalBlock(scope: !3865, file: !629, line: 47, column: 7)
!3873 = !DILocation(line: 0, scope: !3865)
!3874 = !DILocation(line: 47, column: 9, scope: !3872)
!3875 = !DILocation(line: 47, column: 19, scope: !3872)
!3876 = !DILocation(line: 47, column: 14, scope: !3872)
!3877 = !DILocation(line: 0, scope: !3871)
!3878 = !DILocation(line: 57, column: 21, scope: !3879)
!3879 = distinct !DILexicalBlock(scope: !3871, file: !629, line: 57, column: 11)
!3880 = !DILocation(line: 57, column: 11, scope: !3871)
!3881 = !DILocation(line: 59, column: 11, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3879, file: !629, line: 58, column: 9)
!3883 = !DILocation(line: 59, column: 17, scope: !3882)
!3884 = !DILocation(line: 65, column: 12, scope: !3865)
!3885 = !DILocation(line: 72, column: 3, scope: !3865)
!3886 = !DILocation(line: 73, column: 1, scope: !3865)
!3887 = distinct !DISubprogram(name: "rpl_fclose", scope: !632, file: !632, line: 58, type: !3888, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !631, retainedNodes: !3892)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{!30, !3890}
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3891 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !285, line: 7, baseType: !638)
!3892 = !{!3893, !3894, !3895, !3896}
!3893 = !DILocalVariable(name: "fp", arg: 1, scope: !3887, file: !632, line: 58, type: !3890)
!3894 = !DILocalVariable(name: "saved_errno", scope: !3887, file: !632, line: 60, type: !30)
!3895 = !DILocalVariable(name: "fd", scope: !3887, file: !632, line: 61, type: !30)
!3896 = !DILocalVariable(name: "result", scope: !3887, file: !632, line: 62, type: !30)
!3897 = !DILocation(line: 0, scope: !3887)
!3898 = !DILocation(line: 65, column: 8, scope: !3887)
!3899 = !DILocation(line: 66, column: 10, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3887, file: !632, line: 66, column: 7)
!3901 = !DILocation(line: 66, column: 7, scope: !3887)
!3902 = !DILocation(line: 67, column: 12, scope: !3900)
!3903 = !DILocation(line: 67, column: 5, scope: !3900)
!3904 = !DILocation(line: 72, column: 9, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !3887, file: !632, line: 72, column: 7)
!3906 = !DILocation(line: 72, column: 23, scope: !3905)
!3907 = !DILocation(line: 72, column: 33, scope: !3905)
!3908 = !DILocation(line: 72, column: 26, scope: !3905)
!3909 = !DILocation(line: 72, column: 59, scope: !3905)
!3910 = !DILocation(line: 73, column: 7, scope: !3905)
!3911 = !DILocation(line: 73, column: 10, scope: !3905)
!3912 = !DILocation(line: 72, column: 7, scope: !3887)
!3913 = !DILocation(line: 100, column: 12, scope: !3887)
!3914 = !DILocation(line: 105, column: 7, scope: !3887)
!3915 = !DILocation(line: 74, column: 19, scope: !3905)
!3916 = !DILocation(line: 105, column: 19, scope: !3917)
!3917 = distinct !DILexicalBlock(scope: !3887, file: !632, line: 105, column: 7)
!3918 = !DILocation(line: 107, column: 13, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3917, file: !632, line: 106, column: 5)
!3920 = !DILocation(line: 109, column: 5, scope: !3919)
!3921 = !DILocation(line: 112, column: 1, scope: !3887)
!3922 = distinct !DISubprogram(name: "rpl_fflush", scope: !676, file: !676, line: 129, type: !3923, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !675, retainedNodes: !3927)
!3923 = !DISubroutineType(types: !3924)
!3924 = !{!30, !3925}
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !285, line: 7, baseType: !682)
!3927 = !{!3928}
!3928 = !DILocalVariable(name: "stream", arg: 1, scope: !3922, file: !676, line: 129, type: !3925)
!3929 = !DILocation(line: 0, scope: !3922)
!3930 = !DILocation(line: 150, column: 14, scope: !3931)
!3931 = distinct !DILexicalBlock(scope: !3922, file: !676, line: 150, column: 7)
!3932 = !DILocation(line: 150, column: 22, scope: !3931)
!3933 = !DILocation(line: 150, column: 27, scope: !3931)
!3934 = !DILocation(line: 150, column: 7, scope: !3922)
!3935 = !DILocation(line: 151, column: 12, scope: !3931)
!3936 = !DILocation(line: 151, column: 5, scope: !3931)
!3937 = !DILocalVariable(name: "fp", arg: 1, scope: !3938, file: !676, line: 41, type: !3925)
!3938 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !676, file: !676, line: 41, type: !3939, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !675, retainedNodes: !3941)
!3939 = !DISubroutineType(types: !3940)
!3940 = !{null, !3925}
!3941 = !{!3937}
!3942 = !DILocation(line: 0, scope: !3938, inlinedAt: !3943)
!3943 = distinct !DILocation(line: 156, column: 3, scope: !3922)
!3944 = !DILocation(line: 43, column: 11, scope: !3945, inlinedAt: !3943)
!3945 = distinct !DILexicalBlock(scope: !3938, file: !676, line: 43, column: 7)
!3946 = !DILocation(line: 43, column: 18, scope: !3945, inlinedAt: !3943)
!3947 = !DILocation(line: 43, column: 7, scope: !3938, inlinedAt: !3943)
!3948 = !DILocation(line: 45, column: 5, scope: !3945, inlinedAt: !3943)
!3949 = !DILocation(line: 158, column: 10, scope: !3922)
!3950 = !DILocation(line: 158, column: 3, scope: !3922)
!3951 = !DILocation(line: 235, column: 1, scope: !3922)
!3952 = distinct !DISubprogram(name: "rpl_fseeko", scope: !717, file: !717, line: 28, type: !3953, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3957)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{!30, !3955, !1937, !30}
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !285, line: 7, baseType: !723)
!3957 = !{!3958, !3959, !3960, !3961}
!3958 = !DILocalVariable(name: "fp", arg: 1, scope: !3952, file: !717, line: 28, type: !3955)
!3959 = !DILocalVariable(name: "offset", arg: 2, scope: !3952, file: !717, line: 28, type: !1937)
!3960 = !DILocalVariable(name: "whence", arg: 3, scope: !3952, file: !717, line: 28, type: !30)
!3961 = !DILocalVariable(name: "pos", scope: !3962, file: !717, line: 117, type: !1937)
!3962 = distinct !DILexicalBlock(scope: !3963, file: !717, line: 113, column: 5)
!3963 = distinct !DILexicalBlock(scope: !3952, file: !717, line: 52, column: 7)
!3964 = !DILocation(line: 0, scope: !3952)
!3965 = !DILocation(line: 52, column: 11, scope: !3963)
!3966 = !DILocation(line: 52, column: 31, scope: !3963)
!3967 = !DILocation(line: 52, column: 24, scope: !3963)
!3968 = !DILocation(line: 53, column: 7, scope: !3963)
!3969 = !DILocation(line: 53, column: 14, scope: !3963)
!3970 = !DILocation(line: 53, column: 35, scope: !3963)
!3971 = !{!1396, !1255, i64 32}
!3972 = !DILocation(line: 53, column: 28, scope: !3963)
!3973 = !DILocation(line: 54, column: 7, scope: !3963)
!3974 = !DILocation(line: 54, column: 14, scope: !3963)
!3975 = !{!1396, !1255, i64 72}
!3976 = !DILocation(line: 54, column: 28, scope: !3963)
!3977 = !DILocation(line: 52, column: 7, scope: !3952)
!3978 = !DILocation(line: 117, column: 26, scope: !3962)
!3979 = !DILocation(line: 117, column: 19, scope: !3962)
!3980 = !DILocation(line: 0, scope: !3962)
!3981 = !DILocation(line: 118, column: 15, scope: !3982)
!3982 = distinct !DILexicalBlock(scope: !3962, file: !717, line: 118, column: 11)
!3983 = !DILocation(line: 118, column: 11, scope: !3962)
!3984 = !DILocation(line: 129, column: 11, scope: !3962)
!3985 = !DILocation(line: 129, column: 18, scope: !3962)
!3986 = !DILocation(line: 130, column: 11, scope: !3962)
!3987 = !DILocation(line: 130, column: 19, scope: !3962)
!3988 = !{!1396, !1384, i64 144}
!3989 = !DILocation(line: 161, column: 7, scope: !3962)
!3990 = !DILocation(line: 163, column: 10, scope: !3952)
!3991 = !DILocation(line: 163, column: 3, scope: !3952)
!3992 = !DILocation(line: 164, column: 1, scope: !3952)
!3993 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !758, file: !758, line: 86, type: !3994, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !757, retainedNodes: !4000)
!3994 = !DISubroutineType(types: !3995)
!3995 = !{!85, !3996, !28, !85, !3997}
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2171, line: 6, baseType: !3999)
!3999 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !450, line: 21, baseType: !764)
!4000 = !{!4001, !4002, !4003, !4004, !4005, !4006, !4007}
!4001 = !DILocalVariable(name: "pwc", arg: 1, scope: !3993, file: !758, line: 86, type: !3996)
!4002 = !DILocalVariable(name: "s", arg: 2, scope: !3993, file: !758, line: 86, type: !28)
!4003 = !DILocalVariable(name: "n", arg: 3, scope: !3993, file: !758, line: 86, type: !85)
!4004 = !DILocalVariable(name: "ps", arg: 4, scope: !3993, file: !758, line: 86, type: !3997)
!4005 = !DILocalVariable(name: "ret", scope: !3993, file: !758, line: 88, type: !85)
!4006 = !DILocalVariable(name: "wc", scope: !3993, file: !758, line: 89, type: !2175)
!4007 = !DILocalVariable(name: "uc", scope: !4008, file: !758, line: 156, type: !156)
!4008 = distinct !DILexicalBlock(scope: !4009, file: !758, line: 155, column: 5)
!4009 = distinct !DILexicalBlock(scope: !3993, file: !758, line: 154, column: 7)
!4010 = !DILocation(line: 0, scope: !3993)
!4011 = !DILocation(line: 89, column: 3, scope: !3993)
!4012 = !DILocation(line: 105, column: 9, scope: !4013)
!4013 = distinct !DILexicalBlock(scope: !3993, file: !758, line: 105, column: 7)
!4014 = !DILocation(line: 105, column: 7, scope: !3993)
!4015 = !DILocation(line: 145, column: 9, scope: !3993)
!4016 = !DILocation(line: 154, column: 19, scope: !4009)
!4017 = !DILocation(line: 154, column: 31, scope: !4009)
!4018 = !DILocation(line: 154, column: 26, scope: !4009)
!4019 = !DILocation(line: 154, column: 41, scope: !4009)
!4020 = !DILocation(line: 154, column: 7, scope: !3993)
!4021 = !DILocation(line: 156, column: 26, scope: !4008)
!4022 = !DILocation(line: 0, scope: !4008)
!4023 = !DILocation(line: 157, column: 14, scope: !4008)
!4024 = !DILocation(line: 157, column: 12, scope: !4008)
!4025 = !DILocation(line: 163, column: 1, scope: !3993)
!4026 = distinct !DISubprogram(name: "close_stream", scope: !777, file: !777, line: 56, type: !4027, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !4031)
!4027 = !DISubroutineType(types: !4028)
!4028 = !{!30, !4029}
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4030, size: 64)
!4030 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !285, line: 7, baseType: !783)
!4031 = !{!4032, !4033, !4035, !4036}
!4032 = !DILocalVariable(name: "stream", arg: 1, scope: !4026, file: !777, line: 56, type: !4029)
!4033 = !DILocalVariable(name: "some_pending", scope: !4026, file: !777, line: 58, type: !4034)
!4034 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!4035 = !DILocalVariable(name: "prev_fail", scope: !4026, file: !777, line: 59, type: !4034)
!4036 = !DILocalVariable(name: "fclose_fail", scope: !4026, file: !777, line: 60, type: !4034)
!4037 = !DILocation(line: 0, scope: !4026)
!4038 = !DILocation(line: 58, column: 30, scope: !4026)
!4039 = !DILocalVariable(name: "__stream", arg: 1, scope: !4040, file: !1388, line: 135, type: !4029)
!4040 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1388, file: !1388, line: 135, type: !4027, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !4041)
!4041 = !{!4039}
!4042 = !DILocation(line: 0, scope: !4040, inlinedAt: !4043)
!4043 = distinct !DILocation(line: 59, column: 27, scope: !4026)
!4044 = !DILocation(line: 137, column: 10, scope: !4040, inlinedAt: !4043)
!4045 = !DILocation(line: 59, column: 43, scope: !4026)
!4046 = !DILocation(line: 60, column: 29, scope: !4026)
!4047 = !DILocation(line: 60, column: 45, scope: !4026)
!4048 = !DILocation(line: 70, column: 17, scope: !4049)
!4049 = distinct !DILexicalBlock(scope: !4026, file: !777, line: 70, column: 7)
!4050 = !DILocation(line: 58, column: 50, scope: !4026)
!4051 = !DILocation(line: 70, column: 33, scope: !4049)
!4052 = !DILocation(line: 70, column: 53, scope: !4049)
!4053 = !DILocation(line: 70, column: 59, scope: !4049)
!4054 = !DILocation(line: 70, column: 7, scope: !4026)
!4055 = !DILocation(line: 72, column: 11, scope: !4056)
!4056 = distinct !DILexicalBlock(scope: !4049, file: !777, line: 71, column: 5)
!4057 = !DILocation(line: 73, column: 9, scope: !4058)
!4058 = distinct !DILexicalBlock(scope: !4056, file: !777, line: 72, column: 11)
!4059 = !DILocation(line: 73, column: 15, scope: !4058)
!4060 = !DILocation(line: 78, column: 1, scope: !4026)
!4061 = distinct !DISubprogram(name: "hard_locale", scope: !815, file: !815, line: 27, type: !774, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !814, retainedNodes: !4062)
!4062 = !{!4063, !4064}
!4063 = !DILocalVariable(name: "category", arg: 1, scope: !4061, file: !815, line: 27, type: !30)
!4064 = !DILocalVariable(name: "locale", scope: !4061, file: !815, line: 29, type: !4065)
!4065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 2056, elements: !4066)
!4066 = !{!4067}
!4067 = !DISubrange(count: 257)
!4068 = !DILocation(line: 0, scope: !4061)
!4069 = !DILocation(line: 29, column: 3, scope: !4061)
!4070 = !DILocation(line: 29, column: 8, scope: !4061)
!4071 = !DILocation(line: 31, column: 7, scope: !4072)
!4072 = distinct !DILexicalBlock(scope: !4061, file: !815, line: 31, column: 7)
!4073 = !DILocation(line: 31, column: 7, scope: !4061)
!4074 = !DILocation(line: 34, column: 12, scope: !4061)
!4075 = !DILocation(line: 34, column: 38, scope: !4061)
!4076 = !DILocation(line: 34, column: 41, scope: !4061)
!4077 = !DILocation(line: 34, column: 66, scope: !4061)
!4078 = !DILocation(line: 35, column: 1, scope: !4061)
!4079 = distinct !DISubprogram(name: "locale_charset", scope: !822, file: !822, line: 831, type: !473, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !821, retainedNodes: !4080)
!4080 = !{!4081}
!4081 = !DILocalVariable(name: "codeset", scope: !4079, file: !822, line: 833, type: !28)
!4082 = !DILocation(line: 847, column: 13, scope: !4079)
!4083 = !DILocation(line: 0, scope: !4079)
!4084 = !DILocation(line: 911, column: 15, scope: !4085)
!4085 = distinct !DILexicalBlock(scope: !4079, file: !822, line: 911, column: 7)
!4086 = !DILocation(line: 911, column: 7, scope: !4079)
!4087 = !DILocation(line: 1070, column: 13, scope: !4088)
!4088 = distinct !DILexicalBlock(scope: !4089, file: !822, line: 1070, column: 13)
!4089 = distinct !DILexicalBlock(scope: !4090, file: !822, line: 1060, column: 7)
!4090 = distinct !DILexicalBlock(scope: !4079, file: !822, line: 1019, column: 3)
!4091 = !DILocation(line: 1070, column: 24, scope: !4088)
!4092 = !DILocation(line: 1070, column: 13, scope: !4089)
!4093 = !DILocation(line: 1158, column: 3, scope: !4079)
!4094 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1215, file: !1215, line: 269, type: !4095, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1214, retainedNodes: !4097)
!4095 = !DISubroutineType(types: !4096)
!4096 = !{!30, !30, !26, !85}
!4097 = !{!4098, !4099, !4100}
!4098 = !DILocalVariable(name: "category", arg: 1, scope: !4094, file: !1215, line: 269, type: !30)
!4099 = !DILocalVariable(name: "buf", arg: 2, scope: !4094, file: !1215, line: 269, type: !26)
!4100 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4094, file: !1215, line: 269, type: !85)
!4101 = !DILocation(line: 0, scope: !4094)
!4102 = !DILocalVariable(name: "category", arg: 1, scope: !4103, file: !1215, line: 91, type: !30)
!4103 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1215, file: !1215, line: 91, type: !4095, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1214, retainedNodes: !4104)
!4104 = !{!4102, !4105, !4106, !4107, !4108}
!4105 = !DILocalVariable(name: "buf", arg: 2, scope: !4103, file: !1215, line: 91, type: !26)
!4106 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4103, file: !1215, line: 91, type: !85)
!4107 = !DILocalVariable(name: "result", scope: !4103, file: !1215, line: 140, type: !28)
!4108 = !DILocalVariable(name: "length", scope: !4109, file: !1215, line: 154, type: !85)
!4109 = distinct !DILexicalBlock(scope: !4110, file: !1215, line: 153, column: 5)
!4110 = distinct !DILexicalBlock(scope: !4103, file: !1215, line: 142, column: 7)
!4111 = !DILocation(line: 0, scope: !4103, inlinedAt: !4112)
!4112 = distinct !DILocation(line: 274, column: 10, scope: !4094)
!4113 = !DILocalVariable(name: "category", arg: 1, scope: !4114, file: !1215, line: 60, type: !30)
!4114 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !1215, file: !1215, line: 60, type: !4115, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1214, retainedNodes: !4117)
!4115 = !DISubroutineType(types: !4116)
!4116 = !{!28, !30}
!4117 = !{!4113, !4118}
!4118 = !DILocalVariable(name: "result", scope: !4114, file: !1215, line: 62, type: !28)
!4119 = !DILocation(line: 0, scope: !4114, inlinedAt: !4120)
!4120 = distinct !DILocation(line: 140, column: 24, scope: !4103, inlinedAt: !4112)
!4121 = !DILocation(line: 62, column: 24, scope: !4114, inlinedAt: !4120)
!4122 = !DILocation(line: 142, column: 14, scope: !4110, inlinedAt: !4112)
!4123 = !DILocation(line: 142, column: 7, scope: !4103, inlinedAt: !4112)
!4124 = !DILocation(line: 145, column: 19, scope: !4125, inlinedAt: !4112)
!4125 = distinct !DILexicalBlock(scope: !4126, file: !1215, line: 145, column: 11)
!4126 = distinct !DILexicalBlock(scope: !4110, file: !1215, line: 143, column: 5)
!4127 = !DILocation(line: 145, column: 11, scope: !4126, inlinedAt: !4112)
!4128 = !DILocation(line: 149, column: 16, scope: !4125, inlinedAt: !4112)
!4129 = !DILocation(line: 149, column: 9, scope: !4125, inlinedAt: !4112)
!4130 = !DILocation(line: 154, column: 23, scope: !4109, inlinedAt: !4112)
!4131 = !DILocation(line: 0, scope: !4109, inlinedAt: !4112)
!4132 = !DILocation(line: 155, column: 18, scope: !4133, inlinedAt: !4112)
!4133 = distinct !DILexicalBlock(scope: !4109, file: !1215, line: 155, column: 11)
!4134 = !DILocation(line: 155, column: 11, scope: !4109, inlinedAt: !4112)
!4135 = !DILocation(line: 157, column: 39, scope: !4136, inlinedAt: !4112)
!4136 = distinct !DILexicalBlock(scope: !4133, file: !1215, line: 156, column: 9)
!4137 = !DILocalVariable(name: "__dest", arg: 1, scope: !4138, file: !2427, line: 31, type: !3820)
!4138 = distinct !DISubprogram(name: "memcpy", scope: !2427, file: !2427, line: 31, type: !3818, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1214, retainedNodes: !4139)
!4139 = !{!4137, !4140, !4141}
!4140 = !DILocalVariable(name: "__src", arg: 2, scope: !4138, file: !2427, line: 31, type: !3821)
!4141 = !DILocalVariable(name: "__len", arg: 3, scope: !4138, file: !2427, line: 31, type: !85)
!4142 = !DILocation(line: 0, scope: !4138, inlinedAt: !4143)
!4143 = distinct !DILocation(line: 157, column: 11, scope: !4136, inlinedAt: !4112)
!4144 = !DILocation(line: 34, column: 10, scope: !4138, inlinedAt: !4143)
!4145 = !DILocation(line: 158, column: 11, scope: !4136, inlinedAt: !4112)
!4146 = !DILocation(line: 162, column: 23, scope: !4147, inlinedAt: !4112)
!4147 = distinct !DILexicalBlock(scope: !4148, file: !1215, line: 162, column: 15)
!4148 = distinct !DILexicalBlock(scope: !4133, file: !1215, line: 161, column: 9)
!4149 = !DILocation(line: 162, column: 15, scope: !4148, inlinedAt: !4112)
!4150 = !DILocation(line: 167, column: 44, scope: !4151, inlinedAt: !4112)
!4151 = distinct !DILexicalBlock(scope: !4147, file: !1215, line: 163, column: 13)
!4152 = !DILocation(line: 0, scope: !4138, inlinedAt: !4153)
!4153 = distinct !DILocation(line: 167, column: 15, scope: !4151, inlinedAt: !4112)
!4154 = !DILocation(line: 34, column: 10, scope: !4138, inlinedAt: !4153)
!4155 = !DILocation(line: 168, column: 15, scope: !4151, inlinedAt: !4112)
!4156 = !DILocation(line: 168, column: 32, scope: !4151, inlinedAt: !4112)
!4157 = !DILocation(line: 169, column: 13, scope: !4151, inlinedAt: !4112)
!4158 = !DILocation(line: 0, scope: !4110, inlinedAt: !4112)
!4159 = !DILocation(line: 274, column: 3, scope: !4094)
!4160 = distinct !DISubprogram(name: "setlocale_null", scope: !1215, file: !1215, line: 301, type: !4115, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1214, retainedNodes: !4161)
!4161 = !{!4162}
!4162 = !DILocalVariable(name: "category", arg: 1, scope: !4160, file: !1215, line: 301, type: !30)
!4163 = !DILocation(line: 0, scope: !4160)
!4164 = !DILocation(line: 0, scope: !4114, inlinedAt: !4165)
!4165 = distinct !DILocation(line: 304, column: 10, scope: !4160)
!4166 = !DILocation(line: 62, column: 24, scope: !4114, inlinedAt: !4165)
!4167 = !DILocation(line: 304, column: 3, scope: !4160)
