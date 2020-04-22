; ModuleID = 'coreutils-8.32/src/unexpand.bc'
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
@.str.2 = private unnamed_addr constant [66 x i8] c"Convert blanks in each FILE to tabs, writing to standard output.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.14 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.15 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [221 x i8] c"  -a, --all        convert all blanks, instead of just initial blanks\0A      --first-only  convert only leading sequences of blanks (overrides -a)\0A  -t, --tabs=N     have tabs N characters apart instead of 8 (enables -a)\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"unexpand\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.16 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.25 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.27 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.29 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c",0123456789at:\00", align 1
@longopts = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 1, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 97 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@.str.12 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"tab stop value is too large\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.36 = private unnamed_addr constant [23 x i8] c"input line is too long\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"tabs\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"first-only\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@convert_entire_line = dso_local local_unnamed_addr global i8 0, align 1, !dbg !180
@exit_status = dso_local local_unnamed_addr global i32 0, align 4, !dbg !282
@max_column_width = common dso_local local_unnamed_addr global i64 0, align 8, !dbg !295
@first_free_tab = internal unnamed_addr global i64 0, align 8, !dbg !297
@tab_list = internal unnamed_addr global i64* null, align 8, !dbg !299
@n_tabs_allocated = internal unnamed_addr global i64 0, align 8, !dbg !301
@extend_size = internal unnamed_addr global i64 0, align 8, !dbg !303
@.str.13.11 = private unnamed_addr constant [47 x i8] c"'/' specifier only allowed with the last value\00", align 1
@increment_size = internal unnamed_addr global i64 0, align 8, !dbg !305
@.str.14.12 = private unnamed_addr constant [47 x i8] c"'+' specifier only allowed with the last value\00", align 1
@.str.1.13 = private unnamed_addr constant [41 x i8] c"'/' specifier not at start of number: %s\00", align 1
@.str.2.14 = private unnamed_addr constant [41 x i8] c"'+' specifier not at start of number: %s\00", align 1
@.str.3.15 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.4.16 = private unnamed_addr constant [25 x i8] c"tab stop is too large %s\00", align 1
@.str.5.17 = private unnamed_addr constant [43 x i8] c"tab size contains invalid character(s): %s\00", align 1
@.str.15.20 = private unnamed_addr constant [21 x i8] c"tab size cannot be 0\00", align 1
@.str.16.21 = private unnamed_addr constant [28 x i8] c"tab sizes must be ascending\00", align 1
@.str.17.22 = private unnamed_addr constant [45 x i8] c"'/' specifier is mutually exclusive with '+'\00", align 1
@tab_size = internal unnamed_addr global i64 0, align 8, !dbg !307
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !318
@stdin_argv = internal global [2 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9.27, i32 0, i32 0), i8* null], align 16, !dbg !311
@file_list = internal unnamed_addr global i8** null, align 8, !dbg !316
@.str.9.27 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@next_file.prev_file = internal unnamed_addr global i8* null, align 8, !dbg !284
@.str.6.30 = private unnamed_addr constant [10 x i8] c"prev_file\00", align 1
@.str.7.31 = private unnamed_addr constant [20 x i8] c"src/expand-common.c\00", align 1
@__PRETTY_FUNCTION__.next_file = private unnamed_addr constant [24 x i8] c"FILE *next_file(FILE *)\00", align 1
@.str.8.32 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.10.33 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.11.38 = private unnamed_addr constant [62 x i8] c"  -t, --tabs=LIST  use comma separated list of tab positions\0A\00", align 1
@.str.12.39 = private unnamed_addr constant [365 x i8] c"                     The last specified position can be prefixed with '/'\0A                     to specify a tab size to use after the last\0A                     explicitly specified tab stop.  Also a prefix of '+'\0A                     can be used to align remaining tab stops relative to\0A                     the last specified tab stop instead of the first column\0A\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0), align 8, !dbg !319
@.str.42 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !324
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !367
@.str.45 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.46 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.47 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !369
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !375
@.str.56 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.57 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.58 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.60, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.61, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.62, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.63, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.64, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.65, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.66, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.67, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.68, i32 0, i32 0), i8* null], align 16, !dbg !416
@.str.59 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.60 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.61 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.62 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.63 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.64 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.65 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.66 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.67 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.68 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !484
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !490
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !492
@.str.11.69 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.70 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.71 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.72 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.73 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.74 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.75 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !499
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !506
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !494
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !508
@.str.82 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.83 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.84 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.85 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.86 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.87 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.88 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.89 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.90 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.91 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.92 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.93 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.94 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.95 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.96 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.97 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.100 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.101 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.102 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.103 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.104 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.105 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.106 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !514
@.str.1.117 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.118 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.135 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.138 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.139 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !1224 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1229, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i32 %0, metadata !1228, metadata !DIExpression()), !dbg !1250
  %3 = icmp eq i32 %0, 0, !dbg !1251
  br i1 %3, label %9, label %4, !dbg !1252

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1253, !tbaa !1255
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #18, !dbg !1253
  %7 = load i8*, i8** @program_name, align 8, !dbg !1253, !tbaa !1255
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #18, !dbg !1253
  br label %67, !dbg !1253

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #18, !dbg !1259
  %11 = load i8*, i8** @program_name, align 8, !dbg !1259, !tbaa !1255
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #18, !dbg !1259
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 5) #18, !dbg !1260
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1260, !tbaa !1255
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !1260
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.14, i64 0, i64 0), i32 5) #18, !dbg !1261
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1261, !tbaa !1255
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #18, !dbg !1261
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.15, i64 0, i64 0), i32 5) #18, !dbg !1264
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1264, !tbaa !1255
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20) #18, !dbg !1264
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([221 x i8], [221 x i8]* @.str.3, i64 0, i64 0), i32 5) #18, !dbg !1267
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1267, !tbaa !1255
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !1267
  tail call void @emit_tab_list_info() #18, !dbg !1268
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #18, !dbg !1269
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1269, !tbaa !1255
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !1269
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #18, !dbg !1270
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1270, !tbaa !1255
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !1270
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), metadata !1233, metadata !DIExpression()) #18, !dbg !1271
  %31 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1272
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %31) #18, !dbg !1272
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %31, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #18, !dbg !1246
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), metadata !1234, metadata !DIExpression()) #18, !dbg !1271
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1235, metadata !DIExpression()) #18, !dbg !1271
  %32 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1273
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !1235, metadata !DIExpression()) #18, !dbg !1271
  br label %33, !dbg !1274

33:                                               ; preds = %38, %9
  %34 = phi i8* [ %41, %38 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), %9 ]
  %35 = phi %struct.infomap* [ %39, %38 ], [ %32, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !1235, metadata !DIExpression()) #18, !dbg !1271
  %36 = tail call i32 @strcmp(i8* nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* nonnull %34) #21, !dbg !1275
  %37 = icmp eq i32 %36, 0, !dbg !1275
  br i1 %37, label %43, label %38, !dbg !1274

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 1, !dbg !1276
  call void @llvm.dbg.value(metadata %struct.infomap* %39, metadata !1235, metadata !DIExpression()) #18, !dbg !1271
  %40 = getelementptr inbounds %struct.infomap, %struct.infomap* %39, i64 0, i32 0, !dbg !1277
  %41 = load i8*, i8** %40, align 8, !dbg !1277, !tbaa !1278
  %42 = icmp eq i8* %41, null, !dbg !1280
  br i1 %42, label %43, label %33, !dbg !1281, !llvm.loop !1282

43:                                               ; preds = %38, %33
  %44 = phi %struct.infomap* [ %39, %38 ], [ %35, %33 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %44, metadata !1235, metadata !DIExpression()) #18, !dbg !1271
  call void @llvm.dbg.value(metadata %struct.infomap* %44, metadata !1235, metadata !DIExpression()) #18, !dbg !1271
  %45 = getelementptr inbounds %struct.infomap, %struct.infomap* %44, i64 0, i32 1, !dbg !1283
  %46 = load i8*, i8** %45, align 8, !dbg !1283, !tbaa !1285
  %47 = icmp eq i8* %46, null, !dbg !1286
  %48 = select i1 %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %46, !dbg !1287
  call void @llvm.dbg.value(metadata i8* %48, metadata !1234, metadata !DIExpression()) #18, !dbg !1271
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0), i32 5) #18, !dbg !1288
  %50 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.25, i64 0, i64 0)) #18, !dbg !1288
  %51 = tail call i8* @setlocale(i32 5, i8* null) #18, !dbg !1289
  call void @llvm.dbg.value(metadata i8* %51, metadata !1242, metadata !DIExpression()) #18, !dbg !1271
  %52 = icmp eq i8* %51, null, !dbg !1290
  br i1 %52, label %60, label %53, !dbg !1292

53:                                               ; preds = %43
  %54 = tail call i32 @strncmp(i8* nonnull %51, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i64 3) #21, !dbg !1293
  %55 = icmp eq i32 %54, 0, !dbg !1293
  br i1 %55, label %60, label %56, !dbg !1294

56:                                               ; preds = %53
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.27, i64 0, i64 0), i32 5) #18, !dbg !1295
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1295, !tbaa !1255
  %59 = tail call i32 @fputs_unlocked(i8* %57, %struct._IO_FILE* %58) #18, !dbg !1295
  br label %60, !dbg !1297

60:                                               ; preds = %43, %53, %56
  %61 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0), i32 5) #18, !dbg !1298
  %62 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %61, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)) #18, !dbg !1298
  %63 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.29, i64 0, i64 0), i32 5) #18, !dbg !1299
  %64 = icmp eq i8* %48, getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), !dbg !1299
  %65 = select i1 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), !dbg !1299
  %66 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %63, i8* %48, i8* %65) #18, !dbg !1299
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %31) #18, !dbg !1300
  br label %67

67:                                               ; preds = %60, %4
  tail call void @exit(i32 %0) #22, !dbg !1301
  unreachable, !dbg !1301
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
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !1302 {
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !1306, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i8** %1, metadata !1307, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i8 0, metadata !1308, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i8 0, metadata !1311, metadata !DIExpression()), !dbg !1312
  %5 = load i8*, i8** %1, align 8, !dbg !1313, !tbaa !1255
  tail call void @set_program_name(i8* %5) #18, !dbg !1314
  %6 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #18, !dbg !1315
  %7 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #18, !dbg !1316
  %8 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #18, !dbg !1317
  %9 = tail call i32 @atexit(void ()* nonnull @close_stdout) #18, !dbg !1318
  br label %10, !dbg !1319

10:                                               ; preds = %40, %2
  %11 = phi i64 [ %45, %40 ], [ undef, %2 ]
  %12 = phi i8 [ %41, %40 ], [ 0, %2 ]
  %13 = phi i8 [ %18, %40 ], [ 0, %2 ]
  br label %14, !dbg !1319

14:                                               ; preds = %29, %10
  %15 = phi i8 [ %12, %10 ], [ 0, %29 ]
  %16 = phi i8 [ %13, %10 ], [ %18, %29 ]
  br label %17, !dbg !1319

17:                                               ; preds = %19, %14
  %18 = phi i8 [ %16, %14 ], [ 1, %19 ]
  br label %19, !dbg !1319

19:                                               ; preds = %25, %17
  call void @llvm.dbg.value(metadata i64 %11, metadata !1309, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i8 %18, metadata !1311, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i8 %15, metadata !1308, metadata !DIExpression()), !dbg !1312
  %20 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #18, !dbg !1320
  call void @llvm.dbg.value(metadata i32 %20, metadata !1310, metadata !DIExpression()), !dbg !1312
  switch i32 %20, label %35 [
    i32 -1, label %49
    i32 63, label %21
    i32 97, label %22
    i32 116, label %23
    i32 128, label %17
    i32 44, label %26
    i32 -130, label %31
    i32 -131, label %32
  ], !dbg !1319, !llvm.loop !1321

21:                                               ; preds = %19
  tail call void @usage(i32 1) #23, !dbg !1323
  unreachable, !dbg !1323

22:                                               ; preds = %19
  store i8 1, i8* @convert_entire_line, align 1, !dbg !1326, !tbaa !1327
  br label %25, !dbg !1329

23:                                               ; preds = %19
  store i8 1, i8* @convert_entire_line, align 1, !dbg !1330, !tbaa !1327
  %24 = load i8*, i8** @optarg, align 8, !dbg !1331, !tbaa !1255
  tail call void @parse_tab_stops(i8* %24) #18, !dbg !1332
  br label %25, !dbg !1333

25:                                               ; preds = %23, %22
  br label %19, !dbg !1312, !llvm.loop !1321

26:                                               ; preds = %19
  %27 = and i8 %15, 1, !dbg !1334
  %28 = icmp eq i8 %27, 0, !dbg !1334
  br i1 %28, label %29, label %30, !dbg !1336

29:                                               ; preds = %26, %30
  br label %14, !dbg !1319, !llvm.loop !1321

30:                                               ; preds = %26
  tail call void @add_tab_stop(i64 %11) #18, !dbg !1337
  br label %29, !dbg !1337

31:                                               ; preds = %19
  tail call void @usage(i32 0) #23, !dbg !1338
  unreachable, !dbg !1338

32:                                               ; preds = %19
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1339, !tbaa !1255
  %34 = load i8*, i8** @Version, align 8, !dbg !1339, !tbaa !1255
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* null) #18, !dbg !1339
  tail call void @exit(i32 0) #22, !dbg !1339
  unreachable, !dbg !1339

35:                                               ; preds = %19
  %36 = and i8 %15, 1, !dbg !1340
  %37 = icmp eq i8 %36, 0, !dbg !1340
  %38 = select i1 %37, i64 0, i64 %11, !dbg !1342
  call void @llvm.dbg.value(metadata i64 %38, metadata !1309, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i8 undef, metadata !1308, metadata !DIExpression()), !dbg !1312
  %39 = icmp ugt i64 %38, 1844674407370955161, !dbg !1343
  br i1 %39, label %47, label %40, !dbg !1343

40:                                               ; preds = %35
  %41 = select i1 %37, i8 1, i8 %15, !dbg !1342
  call void @llvm.dbg.value(metadata i8 %41, metadata !1308, metadata !DIExpression()), !dbg !1312
  %42 = mul nuw i64 %38, 10, !dbg !1343
  %43 = add nsw i32 %20, -48, !dbg !1343
  %44 = sext i32 %43 to i64, !dbg !1343
  %45 = add i64 %42, %44, !dbg !1343
  %46 = icmp ult i64 %45, %38, !dbg !1343
  br i1 %46, label %47, label %10, !dbg !1345, !llvm.loop !1321

47:                                               ; preds = %40, %35
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i32 5) #18, !dbg !1346
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %48) #18, !dbg !1346
  unreachable, !dbg !1346

49:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 %11, metadata !1309, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i8 %15, metadata !1308, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i8 %18, metadata !1311, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i64 %11, metadata !1309, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i8 %15, metadata !1308, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i8 %18, metadata !1311, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i64 %11, metadata !1309, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i8 %15, metadata !1308, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i8 %18, metadata !1311, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i64 %11, metadata !1309, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i8 %15, metadata !1308, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i8 %18, metadata !1311, metadata !DIExpression()), !dbg !1312
  %50 = icmp eq i8 %18, 0, !dbg !1347
  br i1 %50, label %52, label %51, !dbg !1349

51:                                               ; preds = %49
  store i8 0, i8* @convert_entire_line, align 1, !dbg !1350, !tbaa !1327
  br label %52, !dbg !1351

52:                                               ; preds = %49, %51
  %53 = and i8 %15, 1, !dbg !1352
  %54 = icmp eq i8 %53, 0, !dbg !1352
  br i1 %54, label %56, label %55, !dbg !1354

55:                                               ; preds = %52
  tail call void @add_tab_stop(i64 %11) #18, !dbg !1355
  br label %56, !dbg !1355

56:                                               ; preds = %52, %55
  tail call void @finalize_tab_stops() #18, !dbg !1356
  %57 = load i32, i32* @optind, align 4, !dbg !1357, !tbaa !1358
  %58 = icmp slt i32 %57, %0, !dbg !1360
  %59 = sext i32 %57 to i64, !dbg !1361
  %60 = getelementptr inbounds i8*, i8** %1, i64 %59, !dbg !1361
  %61 = select i1 %58, i8** %60, i8** null, !dbg !1361
  tail call void @set_file_list(i8** %61) #18, !dbg !1362
  %62 = tail call %struct._IO_FILE* @next_file(%struct._IO_FILE* null) #18, !dbg !1363
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %62, metadata !1366, metadata !DIExpression()) #18, !dbg !1394
  %63 = icmp eq %struct._IO_FILE* %62, null, !dbg !1395
  br i1 %63, label %220, label %64, !dbg !1397

64:                                               ; preds = %56
  %65 = load i64, i64* @max_column_width, align 8, !dbg !1398, !tbaa !1399
  %66 = tail call noalias i8* @xmalloc(i64 %65) #18, !dbg !1401
  call void @llvm.dbg.value(metadata i8* %66, metadata !1369, metadata !DIExpression()) #18, !dbg !1394
  %67 = bitcast i64* %3 to i8*, !dbg !1402
  br label %68, !dbg !1403

68:                                               ; preds = %219, %64
  %69 = phi %struct._IO_FILE* [ %62, %64 ], [ %97, %219 ], !dbg !1394
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %69, metadata !1366, metadata !DIExpression()) #18, !dbg !1394
  call void @llvm.dbg.value(metadata i8 1, metadata !1372, metadata !DIExpression()) #18, !dbg !1402
  call void @llvm.dbg.value(metadata i64 0, metadata !1373, metadata !DIExpression()) #18, !dbg !1402
  call void @llvm.dbg.value(metadata i64 0, metadata !1374, metadata !DIExpression()) #18, !dbg !1402
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %67) #18, !dbg !1404
  call void @llvm.dbg.value(metadata i64 0, metadata !1375, metadata !DIExpression()) #18, !dbg !1402
  store i64 0, i64* %3, align 8, !dbg !1405, !tbaa !1399
  call void @llvm.dbg.value(metadata i8 0, metadata !1376, metadata !DIExpression()) #18, !dbg !1402
  call void @llvm.dbg.value(metadata i8 1, metadata !1377, metadata !DIExpression()) #18, !dbg !1402
  call void @llvm.dbg.value(metadata i64 0, metadata !1378, metadata !DIExpression()) #18, !dbg !1402
  br label %70, !dbg !1406

70:                                               ; preds = %211, %68
  %71 = phi i8 [ 1, %68 ], [ %212, %211 ], !dbg !1402
  %72 = phi i64 [ 0, %68 ], [ %213, %211 ], !dbg !1402
  %73 = phi i8 [ 0, %68 ], [ %214, %211 ], !dbg !1402
  %74 = phi i8 [ 1, %68 ], [ %215, %211 ], !dbg !1402
  %75 = phi i64 [ 0, %68 ], [ %216, %211 ], !dbg !1402
  %76 = phi %struct._IO_FILE* [ %69, %68 ], [ %97, %211 ], !dbg !1394
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %76, metadata !1366, metadata !DIExpression()) #18, !dbg !1394
  call void @llvm.dbg.value(metadata i64 %75, metadata !1378, metadata !DIExpression()) #18, !dbg !1402
  call void @llvm.dbg.value(metadata i8 %74, metadata !1377, metadata !DIExpression()) #18, !dbg !1402
  call void @llvm.dbg.value(metadata i8 %73, metadata !1376, metadata !DIExpression()) #18, !dbg !1402
  call void @llvm.dbg.value(metadata i64 %72, metadata !1373, metadata !DIExpression()) #18, !dbg !1402
  call void @llvm.dbg.value(metadata i8 %71, metadata !1372, metadata !DIExpression()) #18, !dbg !1402
  br label %77, !dbg !1407

77:                                               ; preds = %92, %70
  %78 = phi %struct._IO_FILE* [ %76, %70 ], [ %93, %92 ], !dbg !1394
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %78, metadata !1366, metadata !DIExpression()) #18, !dbg !1394
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %78, metadata !1408, metadata !DIExpression()) #18, !dbg !1414
  %79 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %78, i64 0, i32 1, !dbg !1416
  %80 = load i8*, i8** %79, align 8, !dbg !1416, !tbaa !1417
  %81 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %78, i64 0, i32 2, !dbg !1416
  %82 = load i8*, i8** %81, align 8, !dbg !1416, !tbaa !1420
  %83 = icmp ult i8* %80, %82, !dbg !1416
  br i1 %83, label %84, label %89, !dbg !1416, !prof !1421, !misexpect !1422

84:                                               ; preds = %77
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %78, metadata !1366, metadata !DIExpression()) #18, !dbg !1394
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %78, metadata !1366, metadata !DIExpression()) #18, !dbg !1394
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %78, metadata !1366, metadata !DIExpression()) #18, !dbg !1394
  %85 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %78, i64 0, i32 1, !dbg !1416
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %78, metadata !1366, metadata !DIExpression()) #18, !dbg !1394
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %78, metadata !1366, metadata !DIExpression()) #18, !dbg !1394
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %78, metadata !1366, metadata !DIExpression()) #18, !dbg !1394
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %78, metadata !1366, metadata !DIExpression()) #18, !dbg !1394
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %78, metadata !1366, metadata !DIExpression()) #18, !dbg !1394
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %78, metadata !1366, metadata !DIExpression()) #18, !dbg !1394
  %86 = getelementptr inbounds i8, i8* %80, i64 1, !dbg !1416
  store i8* %86, i8** %85, align 8, !dbg !1416, !tbaa !1417
  %87 = load i8, i8* %80, align 1, !dbg !1416, !tbaa !1423
  %88 = zext i8 %87 to i32, !dbg !1416
  br label %95, !dbg !1424

89:                                               ; preds = %77
  %90 = call i32 @__uflow(%struct._IO_FILE* nonnull %78) #18, !dbg !1416
  call void @llvm.dbg.value(metadata i32 %90, metadata !1370, metadata !DIExpression()) #18, !dbg !1402
  %91 = icmp slt i32 %90, 0, !dbg !1425
  br i1 %91, label %92, label %95, !dbg !1424

92:                                               ; preds = %89
  %93 = call %struct._IO_FILE* @next_file(%struct._IO_FILE* %78) #18, !dbg !1426
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %93, metadata !1366, metadata !DIExpression()) #18, !dbg !1394
  %94 = icmp eq %struct._IO_FILE* %93, null, !dbg !1424
  br i1 %94, label %95, label %77, !dbg !1407, !llvm.loop !1427

95:                                               ; preds = %92, %89, %84
  %96 = phi i32 [ %88, %84 ], [ %90, %89 ], [ %90, %92 ]
  %97 = phi %struct._IO_FILE* [ %78, %84 ], [ null, %92 ], [ %78, %89 ], !dbg !1394
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %97, metadata !1366, metadata !DIExpression()) #18, !dbg !1394
  %98 = and i8 %71, 1, !dbg !1429
  %99 = icmp eq i8 %98, 0, !dbg !1429
  br i1 %99, label %184, label %100, !dbg !1430

100:                                              ; preds = %95
  %101 = tail call i16** @__ctype_b_loc() #24, !dbg !1431
  %102 = load i16*, i16** %101, align 8, !dbg !1431, !tbaa !1255
  %103 = sext i32 %96 to i64, !dbg !1431
  %104 = getelementptr inbounds i16, i16* %102, i64 %103, !dbg !1431
  %105 = load i16, i16* %104, align 2, !dbg !1431, !tbaa !1432
  %106 = and i16 %105, 1, !dbg !1431
  %107 = icmp ne i16 %106, 0, !dbg !1433
  %108 = trunc i16 %106 to i8, !dbg !1434
  call void @llvm.dbg.value(metadata i8 %108, metadata !1379, metadata !DIExpression()) #18, !dbg !1435
  br i1 %107, label %109, label %140, !dbg !1436

109:                                              ; preds = %100
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %4) #18, !dbg !1437
  call void @llvm.dbg.value(metadata i64* %3, metadata !1375, metadata !DIExpression(DW_OP_deref)) #18, !dbg !1402
  call void @llvm.dbg.value(metadata i8* %4, metadata !1383, metadata !DIExpression(DW_OP_deref)) #18, !dbg !1438
  %110 = call i64 @get_next_tab_column(i64 %72, i64* nonnull %3, i8* nonnull %4) #18, !dbg !1439
  call void @llvm.dbg.value(metadata i64 %110, metadata !1374, metadata !DIExpression()) #18, !dbg !1402
  %111 = load i8, i8* %4, align 1, !dbg !1440, !tbaa !1327, !range !1442
  call void @llvm.dbg.value(metadata i8 %111, metadata !1383, metadata !DIExpression()) #18, !dbg !1438
  %112 = icmp eq i8 %111, 0, !dbg !1440
  %113 = select i1 %112, i8 %71, i8 0, !dbg !1443
  call void @llvm.dbg.value(metadata i8 %113, metadata !1372, metadata !DIExpression()) #18, !dbg !1402
  %114 = and i8 %113, 1, !dbg !1444
  %115 = icmp eq i8 %114, 0, !dbg !1444
  br i1 %115, label %136, label %116, !dbg !1446

116:                                              ; preds = %109
  %117 = icmp ult i64 %110, %72, !dbg !1447
  br i1 %117, label %118, label %120, !dbg !1450

118:                                              ; preds = %116
  %119 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i64 0, i64 0), i32 5) #18, !dbg !1451
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %119) #18, !dbg !1451
  unreachable, !dbg !1451

120:                                              ; preds = %116
  %121 = icmp eq i32 %96, 9, !dbg !1452
  br i1 %121, label %122, label %124, !dbg !1454

122:                                              ; preds = %120
  call void @llvm.dbg.value(metadata i64 %110, metadata !1373, metadata !DIExpression()) #18, !dbg !1402
  %123 = icmp eq i64 %75, 0, !dbg !1455
  br i1 %123, label %132, label %130, !dbg !1458

124:                                              ; preds = %120
  %125 = add i64 %72, 1, !dbg !1459
  call void @llvm.dbg.value(metadata i64 %125, metadata !1373, metadata !DIExpression()) #18, !dbg !1402
  %126 = and i8 %74, 1, !dbg !1461
  %127 = icmp ne i8 %126, 0, !dbg !1461
  %128 = icmp eq i64 %125, %110, !dbg !1463
  %129 = and i1 %127, %128, !dbg !1464
  br i1 %129, label %130, label %179, !dbg !1464

130:                                              ; preds = %124, %122
  %131 = phi i64 [ %110, %122 ], [ %125, %124 ]
  store i8 9, i8* %66, align 1, !dbg !1465, !tbaa !1423
  br label %132, !dbg !1466

132:                                              ; preds = %130, %122
  %133 = phi i64 [ %110, %122 ], [ %131, %130 ], !dbg !1465
  call void @llvm.dbg.value(metadata i32 9, metadata !1370, metadata !DIExpression()) #18, !dbg !1402
  call void @llvm.dbg.value(metadata i64 %133, metadata !1373, metadata !DIExpression()) #18, !dbg !1402
  %134 = and i8 %73, 1, !dbg !1466
  %135 = zext i8 %134 to i64, !dbg !1466
  call void @llvm.dbg.value(metadata i64 %135, metadata !1378, metadata !DIExpression()) #18, !dbg !1402
  br label %136, !dbg !1467

136:                                              ; preds = %132, %109
  %137 = phi i64 [ %72, %109 ], [ %133, %132 ]
  %138 = phi i64 [ %75, %109 ], [ %135, %132 ]
  %139 = phi i32 [ %96, %109 ], [ 9, %132 ]
  call void @llvm.dbg.value(metadata i32 %96, metadata !1370, metadata !DIExpression()) #18, !dbg !1402
  call void @llvm.dbg.value(metadata i64 %182, metadata !1378, metadata !DIExpression()) #18, !dbg !1402
  call void @llvm.dbg.value(metadata i8 1, metadata !1377, metadata !DIExpression()) #18, !dbg !1402
  call void @llvm.dbg.value(metadata i8 %180, metadata !1376, metadata !DIExpression()) #18, !dbg !1402
  call void @llvm.dbg.value(metadata i64 %125, metadata !1373, metadata !DIExpression()) #18, !dbg !1402
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %4) #18, !dbg !1468
  br label %155

140:                                              ; preds = %100
  %141 = icmp eq i32 %96, 8, !dbg !1469
  br i1 %141, label %142, label %150, !dbg !1471

142:                                              ; preds = %140
  %143 = icmp ne i64 %72, 0, !dbg !1472
  %144 = sext i1 %143 to i64, !dbg !1474
  %145 = add i64 %72, %144, !dbg !1474
  call void @llvm.dbg.value(metadata i64 %145, metadata !1373, metadata !DIExpression()) #18, !dbg !1402
  call void @llvm.dbg.value(metadata i64 %145, metadata !1374, metadata !DIExpression()) #18, !dbg !1402
  %146 = load i64, i64* %3, align 8, !dbg !1475, !tbaa !1399
  call void @llvm.dbg.value(metadata i64 %146, metadata !1375, metadata !DIExpression()) #18, !dbg !1402
  %147 = icmp ne i64 %146, 0, !dbg !1476
  %148 = sext i1 %147 to i64, !dbg !1477
  %149 = add i64 %146, %148, !dbg !1477
  call void @llvm.dbg.value(metadata i64 %149, metadata !1375, metadata !DIExpression()) #18, !dbg !1402
  store i64 %149, i64* %3, align 8, !dbg !1477, !tbaa !1399
  br label %155, !dbg !1478

150:                                              ; preds = %140
  %151 = add i64 %72, 1, !dbg !1479
  call void @llvm.dbg.value(metadata i64 %151, metadata !1373, metadata !DIExpression()) #18, !dbg !1402
  %152 = icmp eq i64 %151, 0, !dbg !1481
  br i1 %152, label %153, label %155, !dbg !1483

153:                                              ; preds = %150
  %154 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i64 0, i64 0), i32 5) #18, !dbg !1484
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %154) #18, !dbg !1484
  unreachable, !dbg !1484

155:                                              ; preds = %150, %142, %136
  %156 = phi i8 [ %71, %142 ], [ %71, %150 ], [ %113, %136 ], !dbg !1402
  %157 = phi i64 [ %145, %142 ], [ %151, %150 ], [ %137, %136 ], !dbg !1485
  %158 = phi i64 [ %75, %142 ], [ %75, %150 ], [ %138, %136 ], !dbg !1402
  %159 = phi i32 [ 8, %142 ], [ %96, %150 ], [ %139, %136 ], !dbg !1486
  call void @llvm.dbg.value(metadata i32 %159, metadata !1370, metadata !DIExpression()) #18, !dbg !1402
  call void @llvm.dbg.value(metadata i64 %158, metadata !1378, metadata !DIExpression()) #18, !dbg !1402
  call void @llvm.dbg.value(metadata i8 %73, metadata !1376, metadata !DIExpression()) #18, !dbg !1402
  call void @llvm.dbg.value(metadata i64 %157, metadata !1373, metadata !DIExpression()) #18, !dbg !1402
  call void @llvm.dbg.value(metadata i8 %156, metadata !1372, metadata !DIExpression()) #18, !dbg !1402
  switch i64 %158, label %160 [
    i64 0, label %172
    i64 1, label %164
  ], !dbg !1487

160:                                              ; preds = %155
  %161 = and i8 %73, 1, !dbg !1488
  %162 = icmp eq i8 %161, 0, !dbg !1488
  br i1 %162, label %164, label %163, !dbg !1490

163:                                              ; preds = %160
  store i8 9, i8* %66, align 1, !dbg !1491, !tbaa !1423
  br label %164, !dbg !1492

164:                                              ; preds = %155, %160, %163
  %165 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1493, !tbaa !1255
  %166 = call i64 @fwrite_unlocked(i8* %66, i64 1, i64 %158, %struct._IO_FILE* %165) #18, !dbg !1494
  %167 = icmp eq i64 %166, %158, !dbg !1495
  br i1 %167, label %172, label %168, !dbg !1496

168:                                              ; preds = %164
  %169 = tail call i32* @__errno_location() #24, !dbg !1497
  %170 = load i32, i32* %169, align 4, !dbg !1497, !tbaa !1358
  %171 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0), i32 5) #18, !dbg !1497
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %170, i8* %171) #18, !dbg !1497
  unreachable, !dbg !1497

172:                                              ; preds = %164, %155
  %173 = phi i8 [ %73, %155 ], [ 0, %164 ], !dbg !1402
  call void @llvm.dbg.value(metadata i64 0, metadata !1378, metadata !DIExpression()) #18, !dbg !1402
  call void @llvm.dbg.value(metadata i8 %173, metadata !1376, metadata !DIExpression()) #18, !dbg !1402
  call void @llvm.dbg.value(metadata i8 %108, metadata !1377, metadata !DIExpression()) #18, !dbg !1402
  %174 = load i8, i8* @convert_entire_line, align 1, !dbg !1498, !tbaa !1327, !range !1442
  %175 = icmp ne i8 %174, 0, !dbg !1498
  %176 = or i1 %107, %175, !dbg !1499
  %177 = zext i1 %176 to i8, !dbg !1499
  %178 = and i8 %156, %177, !dbg !1500
  call void @llvm.dbg.value(metadata i8 %178, metadata !1372, metadata !DIExpression()) #18, !dbg !1402
  call void @llvm.dbg.value(metadata i32 %96, metadata !1370, metadata !DIExpression()) #18, !dbg !1402
  call void @llvm.dbg.value(metadata i8 1, metadata !1377, metadata !DIExpression()) #18, !dbg !1402
  br label %184

179:                                              ; preds = %124
  %180 = select i1 %128, i8 1, i8 %73, !dbg !1501
  call void @llvm.dbg.value(metadata i8 %180, metadata !1376, metadata !DIExpression()) #18, !dbg !1402
  %181 = trunc i32 %96 to i8, !dbg !1503
  %182 = add i64 %75, 1, !dbg !1504
  call void @llvm.dbg.value(metadata i64 %182, metadata !1378, metadata !DIExpression()) #18, !dbg !1402
  %183 = getelementptr inbounds i8, i8* %66, i64 %75, !dbg !1505
  store i8 %181, i8* %183, align 1, !dbg !1506, !tbaa !1423
  call void @llvm.dbg.value(metadata i8 1, metadata !1377, metadata !DIExpression()) #18, !dbg !1402
  call void @llvm.dbg.value(metadata i32 %96, metadata !1370, metadata !DIExpression()) #18, !dbg !1402
  call void @llvm.dbg.value(metadata i64 %182, metadata !1378, metadata !DIExpression()) #18, !dbg !1402
  call void @llvm.dbg.value(metadata i8 1, metadata !1377, metadata !DIExpression()) #18, !dbg !1402
  call void @llvm.dbg.value(metadata i8 %180, metadata !1376, metadata !DIExpression()) #18, !dbg !1402
  call void @llvm.dbg.value(metadata i64 %125, metadata !1373, metadata !DIExpression()) #18, !dbg !1402
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %4) #18, !dbg !1468
  call void @llvm.dbg.value(metadata i32 %96, metadata !1370, metadata !DIExpression()) #18, !dbg !1402
  call void @llvm.dbg.value(metadata i64 %182, metadata !1378, metadata !DIExpression()) #18, !dbg !1402
  call void @llvm.dbg.value(metadata i8 1, metadata !1377, metadata !DIExpression()) #18, !dbg !1402
  call void @llvm.dbg.value(metadata i8 %180, metadata !1376, metadata !DIExpression()) #18, !dbg !1402
  call void @llvm.dbg.value(metadata i64 %125, metadata !1373, metadata !DIExpression()) #18, !dbg !1402
  call void @llvm.dbg.value(metadata i8 %113, metadata !1372, metadata !DIExpression()) #18, !dbg !1402
  br label %211

184:                                              ; preds = %172, %95
  %185 = phi i8 [ %71, %95 ], [ %178, %172 ], !dbg !1402
  %186 = phi i64 [ %72, %95 ], [ %157, %172 ], !dbg !1402
  %187 = phi i8 [ %73, %95 ], [ %173, %172 ], !dbg !1402
  %188 = phi i8 [ %74, %95 ], [ %108, %172 ], !dbg !1402
  %189 = phi i64 [ %75, %95 ], [ 0, %172 ], !dbg !1402
  %190 = phi i32 [ %96, %95 ], [ %159, %172 ], !dbg !1486
  call void @llvm.dbg.value(metadata i32 %190, metadata !1370, metadata !DIExpression()) #18, !dbg !1402
  call void @llvm.dbg.value(metadata i64 %189, metadata !1378, metadata !DIExpression()) #18, !dbg !1402
  call void @llvm.dbg.value(metadata i8 %188, metadata !1377, metadata !DIExpression()) #18, !dbg !1402
  call void @llvm.dbg.value(metadata i8 %187, metadata !1376, metadata !DIExpression()) #18, !dbg !1402
  call void @llvm.dbg.value(metadata i64 %186, metadata !1373, metadata !DIExpression()) #18, !dbg !1402
  call void @llvm.dbg.value(metadata i8 %185, metadata !1372, metadata !DIExpression()) #18, !dbg !1402
  %191 = icmp slt i32 %190, 0, !dbg !1507
  br i1 %191, label %192, label %193, !dbg !1509

192:                                              ; preds = %184
  call void @free(i8* %66) #18, !dbg !1510
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %67) #18, !dbg !1512
  br label %220

193:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i32 %190, metadata !1513, metadata !DIExpression()) #18, !dbg !1518
  %194 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1521, !tbaa !1255
  %195 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %194, i64 0, i32 5, !dbg !1521
  %196 = load i8*, i8** %195, align 8, !dbg !1521, !tbaa !1522
  %197 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %194, i64 0, i32 6, !dbg !1521
  %198 = load i8*, i8** %197, align 8, !dbg !1521, !tbaa !1523
  %199 = icmp ult i8* %196, %198, !dbg !1521
  br i1 %199, label %200, label %203, !dbg !1521, !prof !1421, !misexpect !1422

200:                                              ; preds = %193
  %201 = trunc i32 %190 to i8, !dbg !1521
  %202 = getelementptr inbounds i8, i8* %196, i64 1, !dbg !1521
  store i8* %202, i8** %195, align 8, !dbg !1521, !tbaa !1522
  store i8 %201, i8* %196, align 1, !dbg !1521, !tbaa !1423
  br label %211, !dbg !1524

203:                                              ; preds = %193
  %204 = and i32 %190, 255, !dbg !1521
  %205 = call i32 @__overflow(%struct._IO_FILE* %194, i32 %204) #18, !dbg !1521
  %206 = icmp slt i32 %205, 0, !dbg !1525
  br i1 %206, label %207, label %211, !dbg !1524

207:                                              ; preds = %203
  %208 = tail call i32* @__errno_location() #24, !dbg !1526
  %209 = load i32, i32* %208, align 4, !dbg !1526, !tbaa !1358
  %210 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0), i32 5) #18, !dbg !1526
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %209, i8* %210) #18, !dbg !1526
  unreachable, !dbg !1526

211:                                              ; preds = %203, %200, %179
  %212 = phi i8 [ %185, %203 ], [ %113, %179 ], [ %185, %200 ], !dbg !1500
  %213 = phi i64 [ %186, %203 ], [ %125, %179 ], [ %186, %200 ], !dbg !1527
  %214 = phi i8 [ %187, %203 ], [ %180, %179 ], [ %187, %200 ], !dbg !1528
  %215 = phi i8 [ %188, %203 ], [ 1, %179 ], [ %188, %200 ], !dbg !1529
  %216 = phi i64 [ %189, %203 ], [ %182, %179 ], [ %189, %200 ], !dbg !1530
  %217 = phi i32 [ %190, %203 ], [ %96, %179 ], [ %190, %200 ], !dbg !1486
  call void @llvm.dbg.value(metadata i32 %217, metadata !1370, metadata !DIExpression()) #18, !dbg !1402
  call void @llvm.dbg.value(metadata i64 %216, metadata !1378, metadata !DIExpression()) #18, !dbg !1402
  call void @llvm.dbg.value(metadata i8 %215, metadata !1377, metadata !DIExpression()) #18, !dbg !1402
  call void @llvm.dbg.value(metadata i8 %214, metadata !1376, metadata !DIExpression()) #18, !dbg !1402
  call void @llvm.dbg.value(metadata i64 %213, metadata !1373, metadata !DIExpression()) #18, !dbg !1402
  call void @llvm.dbg.value(metadata i8 %212, metadata !1372, metadata !DIExpression()) #18, !dbg !1402
  %218 = icmp eq i32 %217, 10, !dbg !1531
  br i1 %218, label %219, label %70, !dbg !1532, !llvm.loop !1533

219:                                              ; preds = %211
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %97, metadata !1366, metadata !DIExpression()) #18, !dbg !1394
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %97, metadata !1366, metadata !DIExpression()) #18, !dbg !1394
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %97, metadata !1366, metadata !DIExpression()) #18, !dbg !1394
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %97, metadata !1366, metadata !DIExpression()) #18, !dbg !1394
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %97, metadata !1366, metadata !DIExpression()) #18, !dbg !1394
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %97, metadata !1366, metadata !DIExpression()) #18, !dbg !1394
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %97, metadata !1366, metadata !DIExpression()) #18, !dbg !1394
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %97, metadata !1366, metadata !DIExpression()) #18, !dbg !1394
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %97, metadata !1366, metadata !DIExpression()) #18, !dbg !1394
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %67) #18, !dbg !1512
  br label %68

220:                                              ; preds = %56, %192
  call void @cleanup_file_list_stdin() #18, !dbg !1535
  %221 = load i32, i32* @exit_status, align 4, !dbg !1536, !tbaa !1358
  ret i32 %221, !dbg !1537
}

; Function Attrs: nounwind
declare !dbg !105 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !108 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !111 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !116 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !143 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare !dbg !166 i64 @fwrite_unlocked(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !171 void @free(i8* nocapture) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @add_tab_stop(i64 %0) local_unnamed_addr #8 !dbg !1538 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1542, metadata !DIExpression()), !dbg !1545
  %2 = load i64, i64* @first_free_tab, align 8, !dbg !1546, !tbaa !1399
  %3 = icmp eq i64 %2, 0, !dbg !1546
  br i1 %3, label %9, label %4, !dbg !1546

4:                                                ; preds = %1
  %5 = load i64*, i64** @tab_list, align 8, !dbg !1547, !tbaa !1255
  %6 = add i64 %2, -1, !dbg !1548
  %7 = getelementptr inbounds i64, i64* %5, i64 %6, !dbg !1547
  %8 = load i64, i64* %7, align 8, !dbg !1547, !tbaa !1399
  br label %9, !dbg !1546

9:                                                ; preds = %1, %4
  %10 = phi i64 [ %8, %4 ], [ 0, %1 ], !dbg !1546
  call void @llvm.dbg.value(metadata i64 %10, metadata !1543, metadata !DIExpression()), !dbg !1545
  %11 = tail call i64 @llvm.usub.sat.i64(i64 %0, i64 %10), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %11, metadata !1544, metadata !DIExpression()), !dbg !1545
  %12 = load i64, i64* @n_tabs_allocated, align 8, !dbg !1550, !tbaa !1399
  %13 = icmp eq i64 %2, %12, !dbg !1552
  br i1 %13, label %16, label %14, !dbg !1553

14:                                               ; preds = %9
  %15 = load i64*, i64** @tab_list, align 8, !dbg !1554, !tbaa !1255
  br label %36, !dbg !1553

16:                                               ; preds = %9
  %17 = load i8*, i8** bitcast (i64** @tab_list to i8**), align 8, !dbg !1555, !tbaa !1255
  call void @llvm.dbg.value(metadata i8* %17, metadata !214, metadata !DIExpression()) #18, !dbg !1556
  call void @llvm.dbg.value(metadata i64* @n_tabs_allocated, metadata !215, metadata !DIExpression()) #18, !dbg !1556
  call void @llvm.dbg.value(metadata i64 8, metadata !216, metadata !DIExpression()) #18, !dbg !1556
  call void @llvm.dbg.value(metadata i64 %12, metadata !217, metadata !DIExpression()) #18, !dbg !1556
  %18 = icmp eq i8* %17, null, !dbg !1558
  br i1 %18, label %19, label %23, !dbg !1560

19:                                               ; preds = %16
  br i1 %3, label %30, label %20, !dbg !1561

20:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 %12, metadata !217, metadata !DIExpression()) #18, !dbg !1556
  %21 = icmp ugt i64 %2, 1152921504606846975, !dbg !1563
  br i1 %21, label %22, label %30, !dbg !1565

22:                                               ; preds = %20
  tail call void @xalloc_die() #22, !dbg !1566
  unreachable, !dbg !1566

23:                                               ; preds = %16
  %24 = icmp ult i64 %2, 768614336404564650, !dbg !1567
  br i1 %24, label %26, label %25, !dbg !1570

25:                                               ; preds = %23
  tail call void @xalloc_die() #22, !dbg !1571
  unreachable, !dbg !1571

26:                                               ; preds = %23
  %27 = lshr i64 %2, 1, !dbg !1572
  %28 = add nuw nsw i64 %2, 1, !dbg !1573
  %29 = add nuw nsw i64 %28, %27, !dbg !1574
  call void @llvm.dbg.value(metadata i64 %29, metadata !217, metadata !DIExpression()) #18, !dbg !1556
  br label %30

30:                                               ; preds = %19, %20, %26
  %31 = phi i64 [ %29, %26 ], [ %2, %20 ], [ 16, %19 ], !dbg !1556
  call void @llvm.dbg.value(metadata i64 %31, metadata !217, metadata !DIExpression()) #18, !dbg !1556
  store i64 %31, i64* @n_tabs_allocated, align 8, !dbg !1575, !tbaa !1399
  %32 = shl nuw nsw i64 %31, 3, !dbg !1576
  %33 = tail call i8* @xrealloc(i8* %17, i64 %32) #18, !dbg !1577
  store i8* %33, i8** bitcast (i64** @tab_list to i8**), align 8, !dbg !1578, !tbaa !1255
  %34 = bitcast i8* %33 to i64*, !dbg !1579
  %35 = load i64, i64* @first_free_tab, align 8, !dbg !1580, !tbaa !1399
  br label %36, !dbg !1579

36:                                               ; preds = %14, %30
  %37 = phi i64 [ %2, %14 ], [ %35, %30 ], !dbg !1580
  %38 = phi i64* [ %15, %14 ], [ %34, %30 ], !dbg !1554
  %39 = add i64 %37, 1, !dbg !1580
  store i64 %39, i64* @first_free_tab, align 8, !dbg !1580, !tbaa !1399
  %40 = getelementptr inbounds i64, i64* %38, i64 %37, !dbg !1554
  store i64 %0, i64* %40, align 8, !dbg !1581, !tbaa !1399
  %41 = load i64, i64* @max_column_width, align 8, !dbg !1582, !tbaa !1399
  %42 = icmp ult i64 %41, %11, !dbg !1584
  br i1 %42, label %43, label %44, !dbg !1585

43:                                               ; preds = %36
  store i64 %11, i64* @max_column_width, align 8, !dbg !1586, !tbaa !1399
  br label %44, !dbg !1588

44:                                               ; preds = %43, %36
  ret void, !dbg !1589
}

; Function Attrs: nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_tab_stops(i8* %0) local_unnamed_addr #8 !dbg !1590 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1592, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 0, metadata !1593, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 0, metadata !1594, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 0, metadata !1595, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 0, metadata !1596, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8* null, metadata !1597, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 1, metadata !1598, metadata !DIExpression()), !dbg !1611
  br label %2, !dbg !1612

2:                                                ; preds = %81, %1
  %3 = phi i64 [ 0, %1 ], [ %82, %81 ], !dbg !1613
  %4 = phi i8 [ 0, %1 ], [ %83, %81 ], !dbg !1614
  %5 = phi i8 [ 0, %1 ], [ %84, %81 ], !dbg !1615
  %6 = phi i8* [ null, %1 ], [ %85, %81 ], !dbg !1616
  %7 = phi i8 [ 1, %1 ], [ %86, %81 ], !dbg !1617
  %8 = phi i8 [ 0, %1 ], [ %87, %81 ], !dbg !1611
  %9 = phi i8* [ %0, %1 ], [ %89, %81 ]
  call void @llvm.dbg.value(metadata i64 %3, metadata !1594, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8* %9, metadata !1592, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %8, metadata !1593, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %7, metadata !1598, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8* %6, metadata !1597, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %5, metadata !1596, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %4, metadata !1595, metadata !DIExpression()), !dbg !1611
  %10 = load i8, i8* %9, align 1, !dbg !1618, !tbaa !1423
  switch i8 %10, label %11 [
    i8 0, label %90
    i8 44, label %19
  ], !dbg !1619

11:                                               ; preds = %2
  %12 = tail call i16** @__ctype_b_loc() #24, !dbg !1620
  %13 = load i16*, i16** %12, align 8, !dbg !1620, !tbaa !1255
  %14 = zext i8 %10 to i64, !dbg !1620
  %15 = getelementptr inbounds i16, i16* %13, i64 %14, !dbg !1620
  %16 = load i16, i16* %15, align 2, !dbg !1620, !tbaa !1432
  %17 = and i16 %16, 1, !dbg !1620
  %18 = icmp eq i16 %17, 0, !dbg !1620
  br i1 %18, label %41, label %19, !dbg !1621

19:                                               ; preds = %2, %11
  %20 = and i8 %8, 1, !dbg !1622
  %21 = icmp eq i8 %20, 0, !dbg !1622
  br i1 %21, label %81, label %22, !dbg !1625

22:                                               ; preds = %19
  %23 = and i8 %4, 1, !dbg !1626
  %24 = icmp eq i8 %23, 0, !dbg !1626
  br i1 %24, label %31, label %25, !dbg !1629

25:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 %3, metadata !1630, metadata !DIExpression()) #18, !dbg !1636
  call void @llvm.dbg.value(metadata i8 1, metadata !1635, metadata !DIExpression()) #18, !dbg !1636
  %26 = load i64, i64* @extend_size, align 8, !dbg !1640, !tbaa !1399
  %27 = icmp eq i64 %26, 0, !dbg !1640
  br i1 %27, label %28, label %29, !dbg !1642

28:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i8 undef, metadata !1635, metadata !DIExpression()) #18, !dbg !1636
  store i64 %3, i64* @extend_size, align 8, !dbg !1643, !tbaa !1399
  br label %81, !dbg !1644

29:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i64 %3, metadata !1594, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %3, metadata !1594, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %3, metadata !1594, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %3, metadata !1594, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %3, metadata !1594, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %3, metadata !1594, metadata !DIExpression()), !dbg !1611
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13.11, i64 0, i64 0), i32 5) #18, !dbg !1645
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %30) #18, !dbg !1647
  call void @llvm.dbg.value(metadata i8 0, metadata !1635, metadata !DIExpression()) #18, !dbg !1636
  call void @llvm.dbg.value(metadata i8 undef, metadata !1635, metadata !DIExpression()) #18, !dbg !1636
  store i64 %3, i64* @extend_size, align 8, !dbg !1643, !tbaa !1399
  br label %119, !dbg !1644

31:                                               ; preds = %22
  %32 = and i8 %5, 1, !dbg !1648
  %33 = icmp eq i8 %32, 0, !dbg !1648
  br i1 %33, label %40, label %34, !dbg !1650

34:                                               ; preds = %31
  call void @llvm.dbg.value(metadata i64 %3, metadata !1651, metadata !DIExpression()) #18, !dbg !1655
  call void @llvm.dbg.value(metadata i8 1, metadata !1654, metadata !DIExpression()) #18, !dbg !1655
  %35 = load i64, i64* @increment_size, align 8, !dbg !1659, !tbaa !1399
  %36 = icmp eq i64 %35, 0, !dbg !1659
  br i1 %36, label %37, label %38, !dbg !1661

37:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i8 undef, metadata !1654, metadata !DIExpression()) #18, !dbg !1655
  store i64 %3, i64* @increment_size, align 8, !dbg !1662, !tbaa !1399
  br label %81, !dbg !1663

38:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 %3, metadata !1594, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %3, metadata !1594, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %3, metadata !1594, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %3, metadata !1594, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %3, metadata !1594, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %3, metadata !1594, metadata !DIExpression()), !dbg !1611
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.14.12, i64 0, i64 0), i32 5) #18, !dbg !1664
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %39) #18, !dbg !1666
  call void @llvm.dbg.value(metadata i8 0, metadata !1654, metadata !DIExpression()) #18, !dbg !1655
  call void @llvm.dbg.value(metadata i8 undef, metadata !1654, metadata !DIExpression()) #18, !dbg !1655
  store i64 %3, i64* @increment_size, align 8, !dbg !1662, !tbaa !1399
  br label %119, !dbg !1663

40:                                               ; preds = %31
  tail call void @add_tab_stop(i64 %3), !dbg !1667
  br label %81

41:                                               ; preds = %11
  switch i8 %10, label %54 [
    i8 47, label %42
    i8 43, label %48
  ], !dbg !1668

42:                                               ; preds = %41
  %43 = and i8 %8, 1, !dbg !1669
  %44 = icmp eq i8 %43, 0, !dbg !1669
  br i1 %44, label %81, label %45, !dbg !1672

45:                                               ; preds = %42
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1.13, i64 0, i64 0), i32 5) #18, !dbg !1673
  %47 = tail call i8* @quote(i8* nonnull %9) #18, !dbg !1675
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %46, i8* %47) #18, !dbg !1676
  call void @llvm.dbg.value(metadata i8 0, metadata !1598, metadata !DIExpression()), !dbg !1611
  br label %81, !dbg !1677

48:                                               ; preds = %41
  %49 = and i8 %8, 1, !dbg !1678
  %50 = icmp eq i8 %49, 0, !dbg !1678
  br i1 %50, label %81, label %51, !dbg !1681

51:                                               ; preds = %48
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2.14, i64 0, i64 0), i32 5) #18, !dbg !1682
  %53 = tail call i8* @quote(i8* nonnull %9) #18, !dbg !1684
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %52, i8* %53) #18, !dbg !1685
  call void @llvm.dbg.value(metadata i8 0, metadata !1598, metadata !DIExpression()), !dbg !1611
  br label %81, !dbg !1686

54:                                               ; preds = %41
  %55 = sext i8 %10 to i32, !dbg !1687
  %56 = add nsw i32 %55, -48, !dbg !1688
  %57 = icmp ult i32 %56, 10, !dbg !1688
  br i1 %57, label %58, label %78, !dbg !1689

58:                                               ; preds = %54
  %59 = and i8 %8, 1, !dbg !1690
  %60 = icmp eq i8 %59, 0, !dbg !1690
  %61 = select i1 %60, i64 0, i64 %3, !dbg !1692
  %62 = select i1 %60, i8* %9, i8* %6, !dbg !1692
  %63 = select i1 %60, i8 1, i8 %8, !dbg !1692
  call void @llvm.dbg.value(metadata i64 %61, metadata !1594, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %63, metadata !1593, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8* %62, metadata !1597, metadata !DIExpression()), !dbg !1611
  %64 = icmp ugt i64 %61, 1844674407370955161, !dbg !1693
  br i1 %64, label %71, label %65, !dbg !1693

65:                                               ; preds = %58
  %66 = mul nuw i64 %61, 10, !dbg !1693
  %67 = sext i8 %10 to i64, !dbg !1693
  %68 = add nsw i64 %67, -48, !dbg !1693
  %69 = add i64 %68, %66, !dbg !1693
  %70 = icmp ult i64 %69, %61, !dbg !1693
  br i1 %70, label %71, label %81, !dbg !1694

71:                                               ; preds = %65, %58
  %72 = tail call i64 @strspn(i8* %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3.15, i64 0, i64 0)) #21, !dbg !1695
  call void @llvm.dbg.value(metadata i64 %72, metadata !1599, metadata !DIExpression()), !dbg !1696
  %73 = tail call noalias i8* @xstrndup(i8* %62, i64 %72) #18, !dbg !1697
  call void @llvm.dbg.value(metadata i8* %73, metadata !1610, metadata !DIExpression()), !dbg !1696
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4.16, i64 0, i64 0), i32 5) #18, !dbg !1698
  %75 = tail call i8* @quote(i8* %73) #18, !dbg !1699
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %74, i8* %75) #18, !dbg !1700
  tail call void @free(i8* %73) #18, !dbg !1701
  call void @llvm.dbg.value(metadata i8 0, metadata !1598, metadata !DIExpression()), !dbg !1611
  %76 = getelementptr inbounds i8, i8* %62, i64 -1, !dbg !1702
  %77 = getelementptr inbounds i8, i8* %76, i64 %72, !dbg !1703
  call void @llvm.dbg.value(metadata i8* %77, metadata !1592, metadata !DIExpression()), !dbg !1611
  br label %81, !dbg !1704

78:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i8* %9, metadata !1592, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8* %9, metadata !1592, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8* %9, metadata !1592, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8* %9, metadata !1592, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8* %9, metadata !1592, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8* %9, metadata !1592, metadata !DIExpression()), !dbg !1611
  %79 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5.17, i64 0, i64 0), i32 5) #18, !dbg !1705
  %80 = tail call i8* @quote(i8* nonnull %9) #18, !dbg !1707
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %79, i8* %80) #18, !dbg !1708
  call void @llvm.dbg.value(metadata i8 0, metadata !1598, metadata !DIExpression()), !dbg !1611
  br label %119, !dbg !1709

81:                                               ; preds = %65, %37, %28, %51, %48, %45, %42, %40, %19, %71
  %82 = phi i64 [ %69, %65 ], [ %61, %71 ], [ %3, %19 ], [ %3, %40 ], [ %3, %42 ], [ %3, %45 ], [ %3, %48 ], [ %3, %51 ], [ %3, %28 ], [ %3, %37 ], !dbg !1613
  %83 = phi i8 [ %4, %65 ], [ %4, %71 ], [ %4, %19 ], [ %4, %40 ], [ 1, %42 ], [ 1, %45 ], [ 0, %48 ], [ 0, %51 ], [ %4, %28 ], [ %4, %37 ], !dbg !1611
  %84 = phi i8 [ %5, %65 ], [ %5, %71 ], [ %5, %19 ], [ %5, %40 ], [ 0, %42 ], [ 0, %45 ], [ 1, %48 ], [ 1, %51 ], [ %5, %28 ], [ %5, %37 ], !dbg !1611
  %85 = phi i8* [ %62, %65 ], [ %62, %71 ], [ %6, %19 ], [ %6, %40 ], [ %6, %42 ], [ %6, %45 ], [ %6, %48 ], [ %6, %51 ], [ %6, %28 ], [ %6, %37 ], !dbg !1616
  %86 = phi i8 [ %7, %65 ], [ 0, %71 ], [ %7, %19 ], [ %7, %40 ], [ %7, %42 ], [ 0, %45 ], [ %7, %48 ], [ 0, %51 ], [ %7, %28 ], [ %7, %37 ], !dbg !1611
  %87 = phi i8 [ %63, %65 ], [ %63, %71 ], [ 0, %19 ], [ 0, %40 ], [ %8, %42 ], [ %8, %45 ], [ %8, %48 ], [ %8, %51 ], [ 0, %28 ], [ 0, %37 ], !dbg !1611
  %88 = phi i8* [ %9, %65 ], [ %77, %71 ], [ %9, %19 ], [ %9, %40 ], [ %9, %42 ], [ %9, %45 ], [ %9, %48 ], [ %9, %51 ], [ %9, %28 ], [ %9, %37 ]
  call void @llvm.dbg.value(metadata i64 %82, metadata !1594, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8* %88, metadata !1592, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %87, metadata !1593, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %86, metadata !1598, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8* %85, metadata !1597, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %84, metadata !1596, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %83, metadata !1595, metadata !DIExpression()), !dbg !1611
  %89 = getelementptr inbounds i8, i8* %88, i64 1, !dbg !1710
  call void @llvm.dbg.value(metadata i8* %89, metadata !1592, metadata !DIExpression()), !dbg !1611
  br label %2, !dbg !1711, !llvm.loop !1712

90:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i64 %3, metadata !1594, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %4, metadata !1595, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %5, metadata !1596, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %7, metadata !1598, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %8, metadata !1593, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %3, metadata !1594, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %4, metadata !1595, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %5, metadata !1596, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %7, metadata !1598, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %8, metadata !1593, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %3, metadata !1594, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %4, metadata !1595, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %5, metadata !1596, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %7, metadata !1598, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %8, metadata !1593, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %3, metadata !1594, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %4, metadata !1595, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %5, metadata !1596, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %7, metadata !1598, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %8, metadata !1593, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %3, metadata !1594, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %4, metadata !1595, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %5, metadata !1596, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %7, metadata !1598, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %8, metadata !1593, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %3, metadata !1594, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %4, metadata !1595, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %5, metadata !1596, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %7, metadata !1598, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %8, metadata !1593, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %7, metadata !1598, metadata !DIExpression()), !dbg !1611
  %91 = and i8 %8, 1, !dbg !1714
  %92 = and i8 %91, %7, !dbg !1714
  %93 = icmp eq i8 %92, 0, !dbg !1714
  br i1 %93, label %115, label %94, !dbg !1714

94:                                               ; preds = %90
  %95 = and i8 %4, 1, !dbg !1716
  %96 = icmp eq i8 %95, 0, !dbg !1716
  br i1 %96, label %104, label %97, !dbg !1719

97:                                               ; preds = %94
  call void @llvm.dbg.value(metadata i64 %3, metadata !1630, metadata !DIExpression()) #18, !dbg !1720
  call void @llvm.dbg.value(metadata i8 1, metadata !1635, metadata !DIExpression()) #18, !dbg !1720
  %98 = load i64, i64* @extend_size, align 8, !dbg !1722, !tbaa !1399
  %99 = icmp eq i64 %98, 0, !dbg !1722
  br i1 %99, label %102, label %100, !dbg !1723

100:                                              ; preds = %97
  %101 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13.11, i64 0, i64 0), i32 5) #18, !dbg !1724
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %101) #18, !dbg !1725
  call void @llvm.dbg.value(metadata i8 0, metadata !1635, metadata !DIExpression()) #18, !dbg !1720
  br label %102, !dbg !1726

102:                                              ; preds = %97, %100
  %103 = phi i8 [ 0, %100 ], [ 1, %97 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1635, metadata !DIExpression()) #18, !dbg !1720
  store i64 %3, i64* @extend_size, align 8, !dbg !1727, !tbaa !1399
  call void @llvm.dbg.value(metadata i8 %103, metadata !1598, metadata !DIExpression()), !dbg !1611
  br label %115, !dbg !1728

104:                                              ; preds = %94
  %105 = and i8 %5, 1, !dbg !1729
  %106 = icmp eq i8 %105, 0, !dbg !1729
  br i1 %106, label %114, label %107, !dbg !1731

107:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i64 %3, metadata !1651, metadata !DIExpression()) #18, !dbg !1732
  call void @llvm.dbg.value(metadata i8 1, metadata !1654, metadata !DIExpression()) #18, !dbg !1732
  %108 = load i64, i64* @increment_size, align 8, !dbg !1734, !tbaa !1399
  %109 = icmp eq i64 %108, 0, !dbg !1734
  br i1 %109, label %112, label %110, !dbg !1735

110:                                              ; preds = %107
  %111 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.14.12, i64 0, i64 0), i32 5) #18, !dbg !1736
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %111) #18, !dbg !1737
  call void @llvm.dbg.value(metadata i8 0, metadata !1654, metadata !DIExpression()) #18, !dbg !1732
  br label %112, !dbg !1738

112:                                              ; preds = %107, %110
  %113 = phi i8 [ 0, %110 ], [ 1, %107 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1654, metadata !DIExpression()) #18, !dbg !1732
  store i64 %3, i64* @increment_size, align 8, !dbg !1739, !tbaa !1399
  call void @llvm.dbg.value(metadata i8 %113, metadata !1598, metadata !DIExpression()), !dbg !1611
  br label %115, !dbg !1740

114:                                              ; preds = %104
  tail call void @add_tab_stop(i64 %3), !dbg !1741
  br label %115

115:                                              ; preds = %90, %102, %114, %112
  %116 = phi i8 [ %103, %102 ], [ %113, %112 ], [ %7, %114 ], [ %7, %90 ], !dbg !1611
  call void @llvm.dbg.value(metadata i8 %116, metadata !1598, metadata !DIExpression()), !dbg !1611
  %117 = and i8 %116, 1, !dbg !1742
  %118 = icmp eq i8 %117, 0, !dbg !1742
  br i1 %118, label %119, label %120, !dbg !1744

119:                                              ; preds = %78, %29, %38, %115
  tail call void @exit(i32 1) #22, !dbg !1745
  unreachable, !dbg !1745

120:                                              ; preds = %115
  ret void, !dbg !1746
}

; Function Attrs: nofree nounwind readonly
declare i64 @strspn(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @finalize_tab_stops() local_unnamed_addr #8 !dbg !1747 {
  %1 = load i64*, i64** @tab_list, align 8, !dbg !1748, !tbaa !1255
  %2 = load i64, i64* @first_free_tab, align 8, !dbg !1749, !tbaa !1399
  call void @llvm.dbg.value(metadata i64* %1, metadata !1750, metadata !DIExpression()) #18, !dbg !1761
  call void @llvm.dbg.value(metadata i64 %2, metadata !1757, metadata !DIExpression()) #18, !dbg !1761
  call void @llvm.dbg.value(metadata i64 0, metadata !1758, metadata !DIExpression()) #18, !dbg !1761
  call void @llvm.dbg.value(metadata i64 0, metadata !1759, metadata !DIExpression()) #18, !dbg !1763
  %3 = icmp eq i64 %2, 0, !dbg !1764
  br i1 %3, label %6, label %12, !dbg !1766

4:                                                ; preds = %20
  call void @llvm.dbg.value(metadata i64 %22, metadata !1759, metadata !DIExpression()) #18, !dbg !1763
  call void @llvm.dbg.value(metadata i64 %16, metadata !1758, metadata !DIExpression()) #18, !dbg !1761
  %5 = icmp eq i64 %22, %2, !dbg !1764
  br i1 %5, label %6, label %12, !dbg !1766, !llvm.loop !1767

6:                                                ; preds = %4, %0
  %7 = load i64, i64* @increment_size, align 8, !dbg !1769, !tbaa !1399
  %8 = icmp ne i64 %7, 0, !dbg !1769
  %9 = load i64, i64* @extend_size, align 8, !dbg !1771
  %10 = icmp ne i64 %9, 0, !dbg !1771
  %11 = and i1 %8, %10, !dbg !1772
  br i1 %11, label %25, label %27, !dbg !1772

12:                                               ; preds = %0, %4
  %13 = phi i64 [ %22, %4 ], [ 0, %0 ]
  %14 = phi i64 [ %16, %4 ], [ 0, %0 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !1759, metadata !DIExpression()) #18, !dbg !1763
  call void @llvm.dbg.value(metadata i64 %14, metadata !1758, metadata !DIExpression()) #18, !dbg !1761
  %15 = getelementptr inbounds i64, i64* %1, i64 %13, !dbg !1773
  %16 = load i64, i64* %15, align 8, !dbg !1773, !tbaa !1399
  %17 = icmp eq i64 %16, 0, !dbg !1776
  br i1 %17, label %18, label %20, !dbg !1777

18:                                               ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15.20, i64 0, i64 0), i32 5) #18, !dbg !1778
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %19) #18, !dbg !1778
  unreachable, !dbg !1778

20:                                               ; preds = %12
  %21 = icmp ugt i64 %16, %14, !dbg !1779
  call void @llvm.dbg.value(metadata i64 %16, metadata !1758, metadata !DIExpression()) #18, !dbg !1761
  %22 = add nuw i64 %13, 1, !dbg !1781
  call void @llvm.dbg.value(metadata i64 %22, metadata !1759, metadata !DIExpression()) #18, !dbg !1763
  br i1 %21, label %4, label %23, !dbg !1782

23:                                               ; preds = %20
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16.21, i64 0, i64 0), i32 5) #18, !dbg !1783
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %24) #18, !dbg !1783
  unreachable, !dbg !1783

25:                                               ; preds = %6
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.17.22, i64 0, i64 0), i32 5) #18, !dbg !1784
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %26) #18, !dbg !1784
  unreachable, !dbg !1784

27:                                               ; preds = %6
  br i1 %3, label %28, label %33, !dbg !1785

28:                                               ; preds = %27
  %29 = icmp eq i64 %9, 0, !dbg !1786
  %30 = icmp eq i64 %7, 0, !dbg !1786
  %31 = select i1 %30, i64 8, i64 %7, !dbg !1786
  %32 = select i1 %29, i64 %31, i64 %9, !dbg !1786
  store i64 %32, i64* @max_column_width, align 8, !dbg !1788, !tbaa !1399
  br label %40, !dbg !1789

33:                                               ; preds = %27
  %34 = icmp ne i64 %2, 1, !dbg !1790
  %35 = or i64 %9, %7, !dbg !1792
  %36 = icmp ne i64 %35, 0, !dbg !1792
  %37 = or i1 %34, %36, !dbg !1792
  br i1 %37, label %40, label %38, !dbg !1792

38:                                               ; preds = %33
  %39 = load i64, i64* %1, align 8, !dbg !1793, !tbaa !1399
  br label %40, !dbg !1794

40:                                               ; preds = %33, %38, %28
  %41 = phi i64 [ %39, %38 ], [ %32, %28 ], [ 0, %33 ]
  store i64 %41, i64* @tab_size, align 8, !dbg !1795, !tbaa !1399
  ret void, !dbg !1796
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i64 @get_next_tab_column(i64 %0, i64* nocapture %1, i8* nocapture %2) local_unnamed_addr #10 !dbg !1797 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1801, metadata !DIExpression()), !dbg !1811
  call void @llvm.dbg.value(metadata i64* %1, metadata !1802, metadata !DIExpression()), !dbg !1811
  call void @llvm.dbg.value(metadata i8* %2, metadata !1803, metadata !DIExpression()), !dbg !1811
  store i8 0, i8* %2, align 1, !dbg !1812, !tbaa !1327
  %4 = load i64, i64* @tab_size, align 8, !dbg !1813, !tbaa !1399
  %5 = icmp eq i64 %4, 0, !dbg !1813
  br i1 %5, label %6, label %12, !dbg !1815

6:                                                ; preds = %3
  %7 = load i64, i64* %1, align 8, !dbg !1816, !tbaa !1399
  %8 = load i64, i64* @first_free_tab, align 8, !dbg !1817, !tbaa !1399
  %9 = icmp ult i64 %7, %8, !dbg !1818
  br i1 %9, label %10, label %24, !dbg !1819

10:                                               ; preds = %6
  %11 = load i64*, i64** @tab_list, align 8, !dbg !1820, !tbaa !1255
  br label %16, !dbg !1819

12:                                               ; preds = %3
  %13 = urem i64 %0, %4, !dbg !1821
  %14 = add i64 %4, %0, !dbg !1822
  %15 = sub i64 %14, %13, !dbg !1823
  br label %44, !dbg !1824

16:                                               ; preds = %10, %21
  %17 = phi i64 [ %7, %10 ], [ %22, %21 ]
  %18 = getelementptr inbounds i64, i64* %11, i64 %17, !dbg !1825
  %19 = load i64, i64* %18, align 8, !dbg !1825, !tbaa !1399
  call void @llvm.dbg.value(metadata i64 %19, metadata !1804, metadata !DIExpression()), !dbg !1820
  %20 = icmp ugt i64 %19, %0, !dbg !1826
  br i1 %20, label %44, label %21

21:                                               ; preds = %16
  %22 = add nuw i64 %17, 1, !dbg !1828
  store i64 %22, i64* %1, align 8, !dbg !1828, !tbaa !1399
  %23 = icmp ult i64 %22, %8, !dbg !1818
  br i1 %23, label %16, label %24, !dbg !1819, !llvm.loop !1829

24:                                               ; preds = %21, %6
  %25 = load i64, i64* @extend_size, align 8, !dbg !1831, !tbaa !1399
  %26 = icmp eq i64 %25, 0, !dbg !1831
  br i1 %26, label %31, label %27, !dbg !1833

27:                                               ; preds = %24
  %28 = urem i64 %0, %25, !dbg !1834
  %29 = add i64 %25, %0, !dbg !1835
  %30 = sub i64 %29, %28, !dbg !1836
  br label %44, !dbg !1837

31:                                               ; preds = %24
  %32 = load i64, i64* @increment_size, align 8, !dbg !1838, !tbaa !1399
  %33 = icmp eq i64 %32, 0, !dbg !1838
  br i1 %33, label %43, label %34, !dbg !1839

34:                                               ; preds = %31
  %35 = load i64*, i64** @tab_list, align 8, !dbg !1840, !tbaa !1255
  %36 = add i64 %8, -1, !dbg !1841
  %37 = getelementptr inbounds i64, i64* %35, i64 %36, !dbg !1840
  %38 = load i64, i64* %37, align 8, !dbg !1840, !tbaa !1399
  call void @llvm.dbg.value(metadata i64 %38, metadata !1808, metadata !DIExpression()), !dbg !1842
  %39 = sub i64 %0, %38, !dbg !1843
  %40 = urem i64 %39, %32, !dbg !1844
  %41 = add i64 %32, %0, !dbg !1845
  %42 = sub i64 %41, %40, !dbg !1846
  br label %44

43:                                               ; preds = %31
  store i8 1, i8* %2, align 1, !dbg !1847, !tbaa !1327
  br label %44, !dbg !1848

44:                                               ; preds = %16, %43, %34, %27, %12
  %45 = phi i64 [ %15, %12 ], [ %30, %27 ], [ %42, %34 ], [ 0, %43 ], [ %19, %16 ], !dbg !1811
  ret i64 %45, !dbg !1849
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_file_list(i8** %0) local_unnamed_addr #11 !dbg !1850 {
  call void @llvm.dbg.value(metadata i8** %0, metadata !1852, metadata !DIExpression()), !dbg !1853
  store i1 false, i1* @have_read_stdin, align 1, !dbg !1854
  %2 = icmp eq i8** %0, null, !dbg !1855
  %3 = select i1 %2, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @stdin_argv, i64 0, i64 0), i8** %0
  store i8** %3, i8*** @file_list, align 8, !dbg !1857, !tbaa !1255
  ret void, !dbg !1858
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct._IO_FILE* @next_file(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !286 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !293, metadata !DIExpression()), !dbg !1859
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !1860
  br i1 %2, label %30, label %3, !dbg !1862

3:                                                ; preds = %1
  %4 = load i8*, i8** @next_file.prev_file, align 8, !dbg !1863, !tbaa !1255
  %5 = icmp eq i8* %4, null, !dbg !1863
  br i1 %5, label %6, label %7, !dbg !1867

6:                                                ; preds = %3
  tail call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.30, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7.31, i64 0, i64 0), i32 341, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.next_file, i64 0, i64 0)) #22, !dbg !1863
  unreachable, !dbg !1863

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1868, metadata !DIExpression()), !dbg !1873
  %8 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !1876
  %9 = load i32, i32* %8, align 8, !dbg !1876, !tbaa !1877
  %10 = and i32 %9, 32, !dbg !1876
  %11 = icmp eq i32 %10, 0, !dbg !1878
  br i1 %11, label %17, label %12, !dbg !1879

12:                                               ; preds = %7
  %13 = tail call i32* @__errno_location() #24, !dbg !1880
  %14 = load i32, i32* %13, align 4, !dbg !1880, !tbaa !1358
  %15 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %4) #18, !dbg !1882
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8.32, i64 0, i64 0), i8* %15) #18, !dbg !1883
  store i32 1, i32* @exit_status, align 4, !dbg !1884, !tbaa !1358
  %16 = load i8*, i8** @next_file.prev_file, align 8, !dbg !1885, !tbaa !1255
  br label %17, !dbg !1887

17:                                               ; preds = %7, %12
  %18 = phi i8* [ %4, %7 ], [ %16, %12 ], !dbg !1885
  %19 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %18, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9.27, i64 0, i64 0)) #21, !dbg !1885
  %20 = icmp eq i32 %19, 0, !dbg !1885
  br i1 %20, label %21, label %22, !dbg !1888

21:                                               ; preds = %17
  tail call void @clearerr_unlocked(%struct._IO_FILE* nonnull %0) #18, !dbg !1889
  br label %30, !dbg !1889

22:                                               ; preds = %17
  %23 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) #18, !dbg !1890
  %24 = icmp eq i32 %23, 0, !dbg !1892
  br i1 %24, label %30, label %25, !dbg !1893

25:                                               ; preds = %22
  %26 = tail call i32* @__errno_location() #24, !dbg !1894
  %27 = load i32, i32* %26, align 4, !dbg !1894, !tbaa !1358
  %28 = load i8*, i8** @next_file.prev_file, align 8, !dbg !1896, !tbaa !1255
  %29 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %28) #18, !dbg !1896
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8.32, i64 0, i64 0), i8* %29) #18, !dbg !1897
  store i32 1, i32* @exit_status, align 4, !dbg !1898, !tbaa !1358
  br label %30, !dbg !1899

30:                                               ; preds = %22, %1, %21, %25
  %31 = load i8**, i8*** @file_list, align 8, !dbg !1900, !tbaa !1255
  %32 = getelementptr inbounds i8*, i8** %31, i64 1, !dbg !1900
  store i8** %32, i8*** @file_list, align 8, !dbg !1900, !tbaa !1255
  %33 = load i8*, i8** %31, align 8, !dbg !1901, !tbaa !1255
  call void @llvm.dbg.value(metadata i8* %33, metadata !294, metadata !DIExpression()), !dbg !1859
  %34 = icmp eq i8* %33, null, !dbg !1902
  br i1 %34, label %55, label %35, !dbg !1903

35:                                               ; preds = %30, %47
  %36 = phi i8* [ %53, %47 ], [ %33, %30 ]
  %37 = tail call i32 @strcmp(i8* nonnull %36, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9.27, i64 0, i64 0)) #21, !dbg !1904
  %38 = icmp eq i32 %37, 0, !dbg !1904
  br i1 %38, label %39, label %41, !dbg !1907

39:                                               ; preds = %35
  store i1 true, i1* @have_read_stdin, align 1, !dbg !1908
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1910, !tbaa !1255
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %40, metadata !293, metadata !DIExpression()), !dbg !1859
  br label %43, !dbg !1911

41:                                               ; preds = %35
  %42 = tail call %struct._IO_FILE* @fopen(i8* nonnull %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.33, i64 0, i64 0)), !dbg !1912
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %42, metadata !293, metadata !DIExpression()), !dbg !1859
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi %struct._IO_FILE* [ %40, %39 ], [ %42, %41 ], !dbg !1913
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %44, metadata !293, metadata !DIExpression()), !dbg !1859
  %45 = icmp eq %struct._IO_FILE* %44, null, !dbg !1914
  br i1 %45, label %47, label %46, !dbg !1916

46:                                               ; preds = %43
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %44, metadata !293, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %44, metadata !293, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %44, metadata !293, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %44, metadata !293, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %44, metadata !293, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %44, metadata !293, metadata !DIExpression()), !dbg !1859
  store i8* %36, i8** @next_file.prev_file, align 8, !dbg !1917, !tbaa !1255
  tail call void @fadvise(%struct._IO_FILE* nonnull %44, i32 2) #18, !dbg !1919
  br label %55, !dbg !1920

47:                                               ; preds = %43
  %48 = tail call i32* @__errno_location() #24, !dbg !1921
  %49 = load i32, i32* %48, align 4, !dbg !1921, !tbaa !1358
  %50 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %36) #18, !dbg !1922
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8.32, i64 0, i64 0), i8* %50) #18, !dbg !1923
  store i32 1, i32* @exit_status, align 4, !dbg !1924, !tbaa !1358
  %51 = load i8**, i8*** @file_list, align 8, !dbg !1900, !tbaa !1255
  %52 = getelementptr inbounds i8*, i8** %51, i64 1, !dbg !1900
  store i8** %52, i8*** @file_list, align 8, !dbg !1900, !tbaa !1255
  %53 = load i8*, i8** %51, align 8, !dbg !1901, !tbaa !1255
  call void @llvm.dbg.value(metadata i8* %53, metadata !294, metadata !DIExpression()), !dbg !1859
  %54 = icmp eq i8* %53, null, !dbg !1902
  br i1 %54, label %55, label %35, !dbg !1903, !llvm.loop !1925

55:                                               ; preds = %47, %30, %46
  %56 = phi %struct._IO_FILE* [ %44, %46 ], [ null, %30 ], [ null, %47 ], !dbg !1859
  ret %struct._IO_FILE* %56, !dbg !1927
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !232 void @clearerr_unlocked(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @cleanup_file_list_stdin() local_unnamed_addr #8 !dbg !1928 {
  %1 = load i1, i1* @have_read_stdin, align 1, !dbg !1929
  br i1 %1, label %2, label %9, !dbg !1931

2:                                                ; preds = %0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1932, !tbaa !1255
  %4 = tail call i32 @rpl_fclose(%struct._IO_FILE* %3) #18, !dbg !1933
  %5 = icmp eq i32 %4, 0, !dbg !1934
  br i1 %5, label %9, label %6, !dbg !1935

6:                                                ; preds = %2
  %7 = tail call i32* @__errno_location() #24, !dbg !1936
  %8 = load i32, i32* %7, align 4, !dbg !1936, !tbaa !1358
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9.27, i64 0, i64 0)) #18, !dbg !1936
  unreachable, !dbg !1936

9:                                                ; preds = %2, %0
  ret void, !dbg !1937
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_tab_list_info() local_unnamed_addr #8 !dbg !1938 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.11.38, i64 0, i64 0), i32 5) #18, !dbg !1939
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1939, !tbaa !1255
  %3 = tail call i32 @fputs_unlocked(i8* %1, %struct._IO_FILE* %2), !dbg !1939
  %4 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([365 x i8], [365 x i8]* @.str.12.39, i64 0, i64 0), i32 5) #18, !dbg !1940
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1940, !tbaa !1255
  %6 = tail call i32 @fputs_unlocked(i8* %4, %struct._IO_FILE* %5), !dbg !1940
  ret void, !dbg !1941
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #11 !dbg !1942 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1944, metadata !DIExpression()), !dbg !1945
  store i8* %0, i8** @file_name, align 8, !dbg !1946, !tbaa !1255
  ret void, !dbg !1947
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #11 !dbg !1948 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1952, metadata !DIExpression()), !dbg !1953
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1954, !tbaa !1327
  ret void, !dbg !1955
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1956 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1961, !tbaa !1255
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #18, !dbg !1962
  %3 = icmp eq i32 %2, 0, !dbg !1963
  br i1 %3, label %22, label %4, !dbg !1964

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1965, !tbaa !1327, !range !1442
  %6 = icmp eq i8 %5, 0, !dbg !1965
  br i1 %6, label %11, label %7, !dbg !1966

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #24, !dbg !1967
  %9 = load i32, i32* %8, align 4, !dbg !1967, !tbaa !1358
  %10 = icmp eq i32 %9, 32, !dbg !1968
  br i1 %10, label %22, label %11, !dbg !1969

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i64 0, i64 0), i32 5) #18, !dbg !1970
  call void @llvm.dbg.value(metadata i8* %12, metadata !1958, metadata !DIExpression()), !dbg !1971
  %13 = load i8*, i8** @file_name, align 8, !dbg !1972, !tbaa !1255
  %14 = icmp eq i8* %13, null, !dbg !1972
  %15 = tail call i32* @__errno_location() #24, !dbg !1974
  %16 = load i32, i32* %15, align 4, !dbg !1974, !tbaa !1358
  br i1 %14, label %19, label %17, !dbg !1975

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #18, !dbg !1976
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.46, i64 0, i64 0), i8* %18, i8* %12) #18, !dbg !1977
  br label %20, !dbg !1977

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.47, i64 0, i64 0), i8* %12) #18, !dbg !1978
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1979, !tbaa !1358
  tail call void @_exit(i32 %21) #22, !dbg !1980
  unreachable, !dbg !1980

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1981, !tbaa !1255
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #18, !dbg !1983
  %25 = icmp eq i32 %24, 0, !dbg !1984
  br i1 %25, label %28, label %26, !dbg !1985

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1986, !tbaa !1358
  tail call void @_exit(i32 %27) #22, !dbg !1987
  unreachable, !dbg !1987

28:                                               ; preds = %22
  ret void, !dbg !1988
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32 %0, i64 %1, i64 %2, i32 %3) local_unnamed_addr #8 !dbg !1989 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1995, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i64 %1, metadata !1996, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i64 %2, metadata !1997, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i32 %3, metadata !1998, metadata !DIExpression()), !dbg !2001
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #18, !dbg !2002
  call void @llvm.dbg.value(metadata i32 %5, metadata !1999, metadata !DIExpression()), !dbg !2003
  ret void, !dbg !2004
}

; Function Attrs: nounwind
declare !dbg !526 i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE* %0, i32 %1) local_unnamed_addr #8 !dbg !2005 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2011, metadata !DIExpression()), !dbg !2013
  call void @llvm.dbg.value(metadata i32 %1, metadata !2012, metadata !DIExpression()), !dbg !2013
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !2014
  br i1 %3, label %7, label %4, !dbg !2016

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !2017
  call void @llvm.dbg.value(metadata i32 %5, metadata !1995, metadata !DIExpression()) #18, !dbg !2018
  call void @llvm.dbg.value(metadata i64 0, metadata !1996, metadata !DIExpression()) #18, !dbg !2018
  call void @llvm.dbg.value(metadata i64 0, metadata !1997, metadata !DIExpression()) #18, !dbg !2018
  call void @llvm.dbg.value(metadata i32 %1, metadata !1998, metadata !DIExpression()) #18, !dbg !2018
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #18, !dbg !2020
  call void @llvm.dbg.value(metadata i32 %6, metadata !1999, metadata !DIExpression()) #18, !dbg !2021
  br label %7, !dbg !2022

7:                                                ; preds = %2, %4
  ret void, !dbg !2023
}

; Function Attrs: nofree nounwind
declare !dbg !530 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !2024 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2026, metadata !DIExpression()), !dbg !2029
  %2 = icmp eq i8* %0, null, !dbg !2030
  br i1 %2, label %3, label %6, !dbg !2032

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2033, !tbaa !1255
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.56, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #25, !dbg !2035
  tail call void @abort() #22, !dbg !2036
  unreachable, !dbg !2036

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #21, !dbg !2037
  call void @llvm.dbg.value(metadata i8* %7, metadata !2027, metadata !DIExpression()), !dbg !2029
  %8 = icmp eq i8* %7, null, !dbg !2038
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2039
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2039
  call void @llvm.dbg.value(metadata i8* %10, metadata !2028, metadata !DIExpression()), !dbg !2029
  %11 = ptrtoint i8* %10 to i64, !dbg !2040
  %12 = ptrtoint i8* %0 to i64, !dbg !2040
  %13 = sub i64 %11, %12, !dbg !2040
  %14 = icmp sgt i64 %13, 6, !dbg !2042
  br i1 %14, label %15, label %24, !dbg !2043

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2044
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.57, i64 0, i64 0), i64 7) #21, !dbg !2045
  %18 = icmp eq i32 %17, 0, !dbg !2046
  br i1 %18, label %19, label %24, !dbg !2047

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !2026, metadata !DIExpression()), !dbg !2029
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.58, i64 0, i64 0), i64 3) #21, !dbg !2048
  %21 = icmp eq i32 %20, 0, !dbg !2051
  br i1 %21, label %22, label %24, !dbg !2052

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2053
  call void @llvm.dbg.value(metadata i8* %23, metadata !2026, metadata !DIExpression()), !dbg !2029
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2055, !tbaa !1255
  br label %24, !dbg !2056

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !2026, metadata !DIExpression()), !dbg !2029
  store i8* %25, i8** @program_name, align 8, !dbg !2057, !tbaa !1255
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2058, !tbaa !1255
  ret void, !dbg !2059
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #13

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !2060 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2065, metadata !DIExpression()), !dbg !2068
  %2 = tail call i32* @__errno_location() #24, !dbg !2069
  %3 = load i32, i32* %2, align 4, !dbg !2069, !tbaa !1358
  call void @llvm.dbg.value(metadata i32 %3, metadata !2066, metadata !DIExpression()), !dbg !2068
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2070
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2070
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2070
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #18, !dbg !2071
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2071
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2067, metadata !DIExpression()), !dbg !2068
  store i32 %3, i32* %2, align 4, !dbg !2072, !tbaa !1358
  ret %struct.quoting_options* %8, !dbg !2073
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #14 !dbg !2074 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2078, metadata !DIExpression()), !dbg !2079
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2080
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2080
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2081
  %5 = load i32, i32* %4, align 8, !dbg !2081, !tbaa !2082
  ret i32 %5, !dbg !2084
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #11 !dbg !2085 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2089, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i32 %1, metadata !2090, metadata !DIExpression()), !dbg !2091
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2092
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2092
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2093
  store i32 %1, i32* %5, align 8, !dbg !2094, !tbaa !2082
  ret void, !dbg !2095
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #10 !dbg !2096 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2100, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i8 %1, metadata !2101, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i32 %2, metadata !2102, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i8 %1, metadata !2103, metadata !DIExpression()), !dbg !2108
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2109
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2109
  %6 = lshr i8 %1, 5, !dbg !2110
  %7 = zext i8 %6 to i64, !dbg !2110
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2111
  call void @llvm.dbg.value(metadata i32* %8, metadata !2104, metadata !DIExpression()), !dbg !2108
  %9 = and i8 %1, 31, !dbg !2112
  %10 = zext i8 %9 to i32, !dbg !2112
  call void @llvm.dbg.value(metadata i32 %10, metadata !2106, metadata !DIExpression()), !dbg !2108
  %11 = load i32, i32* %8, align 4, !dbg !2113, !tbaa !1358
  %12 = lshr i32 %11, %10, !dbg !2114
  %13 = and i32 %12, 1, !dbg !2115
  call void @llvm.dbg.value(metadata i32 %13, metadata !2107, metadata !DIExpression()), !dbg !2108
  %14 = and i32 %2, 1, !dbg !2116
  %15 = xor i32 %13, %14, !dbg !2117
  %16 = shl i32 %15, %10, !dbg !2118
  %17 = xor i32 %16, %11, !dbg !2119
  store i32 %17, i32* %8, align 4, !dbg !2119, !tbaa !1358
  ret i32 %13, !dbg !2120
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #10 !dbg !2121 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2125, metadata !DIExpression()), !dbg !2128
  call void @llvm.dbg.value(metadata i32 %1, metadata !2126, metadata !DIExpression()), !dbg !2128
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2129
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2131
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2125, metadata !DIExpression()), !dbg !2128
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2132
  %6 = load i32, i32* %5, align 4, !dbg !2132, !tbaa !2133
  call void @llvm.dbg.value(metadata i32 %6, metadata !2127, metadata !DIExpression()), !dbg !2128
  store i32 %1, i32* %5, align 4, !dbg !2134, !tbaa !2133
  ret i32 %6, !dbg !2135
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2136 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2140, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8* %1, metadata !2141, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8* %2, metadata !2142, metadata !DIExpression()), !dbg !2143
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2144
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2146
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2140, metadata !DIExpression()), !dbg !2143
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2147
  store i32 10, i32* %6, align 8, !dbg !2148, !tbaa !2082
  %7 = icmp ne i8* %1, null, !dbg !2149
  %8 = icmp ne i8* %2, null, !dbg !2151
  %9 = and i1 %7, %8, !dbg !2152
  br i1 %9, label %11, label %10, !dbg !2152

10:                                               ; preds = %3
  tail call void @abort() #22, !dbg !2153
  unreachable, !dbg !2153

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2154
  store i8* %1, i8** %12, align 8, !dbg !2155, !tbaa !2156
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2157
  store i8* %2, i8** %13, align 8, !dbg !2158, !tbaa !2159
  ret void, !dbg !2160
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !2161 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2165, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i64 %1, metadata !2166, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i8* %2, metadata !2167, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i64 %3, metadata !2168, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2169, metadata !DIExpression()), !dbg !2173
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2174
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2174
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2170, metadata !DIExpression()), !dbg !2173
  %8 = tail call i32* @__errno_location() #24, !dbg !2175
  %9 = load i32, i32* %8, align 4, !dbg !2175, !tbaa !1358
  call void @llvm.dbg.value(metadata i32 %9, metadata !2171, metadata !DIExpression()), !dbg !2173
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2176
  %11 = load i32, i32* %10, align 8, !dbg !2176, !tbaa !2082
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2177
  %13 = load i32, i32* %12, align 4, !dbg !2177, !tbaa !2133
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2178
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2179
  %16 = load i8*, i8** %15, align 8, !dbg !2179, !tbaa !2156
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2180
  %18 = load i8*, i8** %17, align 8, !dbg !2180, !tbaa !2159
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2181
  call void @llvm.dbg.value(metadata i64 %19, metadata !2172, metadata !DIExpression()), !dbg !2173
  store i32 %9, i32* %8, align 4, !dbg !2182, !tbaa !1358
  ret i64 %19, !dbg !2183
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !2184 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2190, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %1, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %2, metadata !2192, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %3, metadata !2193, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i32 %4, metadata !2194, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i32 %5, metadata !2195, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i32* %6, metadata !2196, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %7, metadata !2197, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %8, metadata !2198, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 0, metadata !2200, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 0, metadata !2201, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* null, metadata !2202, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 0, metadata !2203, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 0, metadata !2204, metadata !DIExpression()), !dbg !2248
  %13 = tail call i64 @__ctype_get_mb_cur_max() #18, !dbg !2249
  %14 = icmp eq i64 %13, 1, !dbg !2250
  call void @llvm.dbg.value(metadata i1 %14, metadata !2205, metadata !DIExpression()), !dbg !2248
  %15 = lshr i32 %5, 1, !dbg !2251
  %16 = trunc i32 %15 to i8, !dbg !2251
  %17 = and i8 %16, 1, !dbg !2251
  call void @llvm.dbg.value(metadata i8 %17, metadata !2206, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 0, metadata !2207, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 0, metadata !2208, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 1, metadata !2209, metadata !DIExpression()), !dbg !2248
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !2252
  %19 = and i32 %5, 4, !dbg !2254
  %20 = icmp eq i32 %19, 0, !dbg !2254
  %21 = and i32 %5, 1, !dbg !2257
  %22 = icmp eq i32 %21, 0, !dbg !2257
  %23 = bitcast i64* %10 to i8*, !dbg !2260
  %24 = bitcast i32* %12 to i8*, !dbg !2261
  %25 = icmp eq i32* %6, null, !dbg !2262
  br label %26, !dbg !2264

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !2265
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !2266
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !2267
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !2268
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !2248
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !2269
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !2270
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !2271
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %38, metadata !2209, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %37, metadata !2208, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %36, metadata !2207, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %35, metadata !2206, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %34, metadata !2193, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %33, metadata !2204, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %32, metadata !2203, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %31, metadata !2202, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %30, metadata !2201, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 0, metadata !2200, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %29, metadata !2198, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %28, metadata !2197, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i32 %27, metadata !2194, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.label(metadata !2242), !dbg !2272
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
  ], !dbg !2273

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !2194, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 1, metadata !2206, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %35, metadata !2206, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i32 5, metadata !2194, metadata !DIExpression()), !dbg !2248
  br label %92, !dbg !2274

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2206, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i32 5, metadata !2194, metadata !DIExpression()), !dbg !2248
  %42 = and i8 %35, 1, !dbg !2276
  %43 = icmp eq i8 %42, 0, !dbg !2276
  br i1 %43, label %44, label %92, !dbg !2274

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !2278
  br i1 %45, label %92, label %46, !dbg !2281

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !2278, !tbaa !1423
  br label %92, !dbg !2278

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.69, i64 0, i64 0), i32 %27), !dbg !2282
  call void @llvm.dbg.value(metadata i8* %48, metadata !2197, metadata !DIExpression()), !dbg !2248
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), i32 %27), !dbg !2286
  call void @llvm.dbg.value(metadata i8* %49, metadata !2198, metadata !DIExpression()), !dbg !2248
  br label %50, !dbg !2287

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !2198, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %51, metadata !2197, metadata !DIExpression()), !dbg !2248
  %53 = and i8 %35, 1, !dbg !2288
  %54 = icmp eq i8 %53, 0, !dbg !2288
  br i1 %54, label %55, label %70, !dbg !2290

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !2202, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 0, metadata !2200, metadata !DIExpression()), !dbg !2248
  %56 = load i8, i8* %51, align 1, !dbg !2291, !tbaa !1423
  %57 = icmp eq i8 %56, 0, !dbg !2294
  br i1 %57, label %70, label %58, !dbg !2294

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !2202, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %61, metadata !2200, metadata !DIExpression()), !dbg !2248
  %62 = icmp ult i64 %61, %39, !dbg !2295
  br i1 %62, label %63, label %65, !dbg !2298

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !2295
  store i8 %59, i8* %64, align 1, !dbg !2295, !tbaa !1423
  br label %65, !dbg !2295

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !2298
  call void @llvm.dbg.value(metadata i64 %66, metadata !2200, metadata !DIExpression()), !dbg !2248
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2299
  call void @llvm.dbg.value(metadata i8* %67, metadata !2202, metadata !DIExpression()), !dbg !2248
  %68 = load i8, i8* %67, align 1, !dbg !2291, !tbaa !1423
  %69 = icmp eq i8 %68, 0, !dbg !2294
  br i1 %69, label %70, label %58, !dbg !2294, !llvm.loop !2300

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !2302
  call void @llvm.dbg.value(metadata i64 %71, metadata !2200, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 1, metadata !2204, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %52, metadata !2202, metadata !DIExpression()), !dbg !2248
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #21, !dbg !2303
  call void @llvm.dbg.value(metadata i64 %72, metadata !2203, metadata !DIExpression()), !dbg !2248
  br label %92, !dbg !2304

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !2204, metadata !DIExpression()), !dbg !2248
  br label %74, !dbg !2305

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !2248
  call void @llvm.dbg.value(metadata i8 %75, metadata !2204, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 1, metadata !2206, metadata !DIExpression()), !dbg !2248
  br label %76, !dbg !2306

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !2268
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !2248
  call void @llvm.dbg.value(metadata i8 %78, metadata !2206, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %77, metadata !2204, metadata !DIExpression()), !dbg !2248
  %79 = and i8 %78, 1, !dbg !2307
  %80 = icmp eq i8 %79, 0, !dbg !2307
  %81 = select i1 %80, i8 1, i8 %77, !dbg !2309
  br label %82, !dbg !2309

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !2248
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !2251
  call void @llvm.dbg.value(metadata i8 %84, metadata !2206, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %83, metadata !2204, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i32 2, metadata !2194, metadata !DIExpression()), !dbg !2248
  %85 = and i8 %84, 1, !dbg !2310
  %86 = icmp eq i8 %85, 0, !dbg !2310
  br i1 %86, label %87, label %92, !dbg !2312

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !2313
  br i1 %88, label %92, label %89, !dbg !2316

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !2313, !tbaa !1423
  br label %92, !dbg !2313

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !2206, metadata !DIExpression()), !dbg !2248
  br label %92, !dbg !2317

91:                                               ; preds = %26
  call void @abort() #22, !dbg !2318
  unreachable, !dbg !2318

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !2302
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.71, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.71, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.71, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.71, i64 0, i64 0), %40 ], !dbg !2248
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !2248
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !2248
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !2248
  call void @llvm.dbg.value(metadata i8 %100, metadata !2206, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %99, metadata !2204, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %98, metadata !2203, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %97, metadata !2202, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %96, metadata !2200, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %95, metadata !2198, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %94, metadata !2197, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i32 %93, metadata !2194, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 0, metadata !2199, metadata !DIExpression()), !dbg !2248
  %101 = and i8 %99, 1, !dbg !2319
  %102 = icmp ne i8 %101, 0, !dbg !2319
  %103 = icmp ne i32 %93, 2, !dbg !2319
  %104 = and i1 %103, %102, !dbg !2319
  %105 = icmp ne i64 %98, 0, !dbg !2319
  %106 = and i1 %105, %104, !dbg !2319
  %107 = icmp ugt i64 %98, 1, !dbg !2319
  %108 = and i8 %100, 1, !dbg !2321
  %109 = icmp eq i8 %108, 0, !dbg !2321
  %110 = icmp eq i32 %93, 2, !dbg !2324
  %111 = or i1 %103, %109, !dbg !2326
  %112 = icmp ne i8 %108, 0, !dbg !2328
  %113 = and i1 %110, %112, !dbg !2328
  %114 = xor i1 %102, true, !dbg !2329
  %115 = xor i1 %104, true, !dbg !2262
  %116 = and i1 %109, %115, !dbg !2262
  %117 = or i1 %25, %116, !dbg !2262
  %118 = and i8 %99, %100, !dbg !2330
  %119 = and i8 %118, 1, !dbg !2330
  %120 = icmp ne i8 %119, 0, !dbg !2330
  %121 = and i1 %120, %105, !dbg !2330
  br label %122, !dbg !2332

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !2333
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !2302
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !2265
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !2269
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !2270
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !2271
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %129, metadata !2209, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %128, metadata !2208, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %127, metadata !2207, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %126, metadata !2193, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %125, metadata !2201, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %124, metadata !2200, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %123, metadata !2199, metadata !DIExpression()), !dbg !2248
  %131 = icmp eq i64 %126, -1, !dbg !2334
  br i1 %131, label %132, label %136, !dbg !2335

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2336
  %134 = load i8, i8* %133, align 1, !dbg !2336, !tbaa !1423
  %135 = icmp eq i8 %134, 0, !dbg !2337
  br i1 %135, label %581, label %138, !dbg !2338

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !2339
  br i1 %137, label %581, label %138, !dbg !2338

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !2215, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i8 0, metadata !2216, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i8 0, metadata !2217, metadata !DIExpression()), !dbg !2340
  br i1 %106, label %139, label %154, !dbg !2341

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !2342
  %141 = and i1 %107, %131, !dbg !2343
  br i1 %141, label %142, label %144, !dbg !2343

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #21, !dbg !2344
  call void @llvm.dbg.value(metadata i64 %143, metadata !2193, metadata !DIExpression()), !dbg !2248
  br label %144, !dbg !2345

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !2193, metadata !DIExpression()), !dbg !2248
  %146 = icmp ugt i64 %140, %145, !dbg !2346
  br i1 %146, label %154, label %147, !dbg !2347

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2348
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !2349
  %150 = icmp ne i32 %149, 0, !dbg !2350
  %151 = or i1 %150, %109, !dbg !2351
  %152 = xor i1 %150, true, !dbg !2351
  %153 = zext i1 %152 to i8, !dbg !2351
  br i1 %151, label %154, label %639, !dbg !2351

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !2340
  call void @llvm.dbg.value(metadata i8 %156, metadata !2215, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i64 %155, metadata !2193, metadata !DIExpression()), !dbg !2248
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2352
  %158 = load i8, i8* %157, align 1, !dbg !2352, !tbaa !1423
  call void @llvm.dbg.value(metadata i8 %158, metadata !2210, metadata !DIExpression()), !dbg !2340
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
  ], !dbg !2353

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !2354

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !2355

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !2216, metadata !DIExpression()), !dbg !2340
  %162 = and i8 %127, 1, !dbg !2358
  %163 = icmp eq i8 %162, 0, !dbg !2358
  %164 = and i1 %110, %163, !dbg !2358
  br i1 %164, label %165, label %181, !dbg !2358

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !2360
  br i1 %166, label %167, label %169, !dbg !2364

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2360
  store i8 39, i8* %168, align 1, !dbg !2360, !tbaa !1423
  br label %169, !dbg !2360

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !2364
  call void @llvm.dbg.value(metadata i64 %170, metadata !2200, metadata !DIExpression()), !dbg !2248
  %171 = icmp ult i64 %170, %130, !dbg !2365
  br i1 %171, label %172, label %174, !dbg !2368

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2365
  store i8 36, i8* %173, align 1, !dbg !2365, !tbaa !1423
  br label %174, !dbg !2365

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !2368
  call void @llvm.dbg.value(metadata i64 %175, metadata !2200, metadata !DIExpression()), !dbg !2248
  %176 = icmp ult i64 %175, %130, !dbg !2369
  br i1 %176, label %177, label %179, !dbg !2372

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2369
  store i8 39, i8* %178, align 1, !dbg !2369, !tbaa !1423
  br label %179, !dbg !2369

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !2372
  call void @llvm.dbg.value(metadata i64 %180, metadata !2200, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 1, metadata !2207, metadata !DIExpression()), !dbg !2248
  br label %181, !dbg !2373

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !2248
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !2248
  call void @llvm.dbg.value(metadata i8 %183, metadata !2207, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %182, metadata !2200, metadata !DIExpression()), !dbg !2248
  %184 = icmp ult i64 %182, %130, !dbg !2374
  br i1 %184, label %185, label %187, !dbg !2377

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2374
  store i8 92, i8* %186, align 1, !dbg !2374, !tbaa !1423
  br label %187, !dbg !2374

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2377
  call void @llvm.dbg.value(metadata i64 %188, metadata !2200, metadata !DIExpression()), !dbg !2248
  br i1 %103, label %189, label %463, !dbg !2378

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !2380
  %191 = icmp ult i64 %190, %155, !dbg !2381
  br i1 %191, label %192, label %463, !dbg !2382

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !2383
  %194 = load i8, i8* %193, align 1, !dbg !2383, !tbaa !1423
  %195 = add i8 %194, -48, !dbg !2384
  %196 = icmp ult i8 %195, 10, !dbg !2384
  br i1 %196, label %197, label %463, !dbg !2384

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !2385
  br i1 %198, label %199, label %201, !dbg !2389

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2385
  store i8 48, i8* %200, align 1, !dbg !2385, !tbaa !1423
  br label %201, !dbg !2385

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2389
  call void @llvm.dbg.value(metadata i64 %202, metadata !2200, metadata !DIExpression()), !dbg !2248
  %203 = icmp ult i64 %202, %130, !dbg !2390
  br i1 %203, label %204, label %206, !dbg !2393

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2390
  store i8 48, i8* %205, align 1, !dbg !2390, !tbaa !1423
  br label %206, !dbg !2390

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2393
  call void @llvm.dbg.value(metadata i64 %207, metadata !2200, metadata !DIExpression()), !dbg !2248
  br label %463, !dbg !2394

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !2395

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2396

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !2397

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !2398

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !2399
  %214 = icmp ult i64 %213, %155, !dbg !2400
  br i1 %214, label %215, label %463, !dbg !2401

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !2402
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2403
  %218 = load i8, i8* %217, align 1, !dbg !2403, !tbaa !1423
  %219 = icmp eq i8 %218, 63, !dbg !2404
  br i1 %219, label %220, label %463, !dbg !2405

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2406
  %222 = load i8, i8* %221, align 1, !dbg !2406, !tbaa !1423
  %223 = sext i8 %222 to i32, !dbg !2406
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
  ], !dbg !2407

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !2408

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !2210, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i64 %213, metadata !2199, metadata !DIExpression()), !dbg !2248
  %226 = icmp ult i64 %124, %130, !dbg !2410
  br i1 %226, label %227, label %229, !dbg !2413

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2410
  store i8 63, i8* %228, align 1, !dbg !2410, !tbaa !1423
  br label %229, !dbg !2410

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2413
  call void @llvm.dbg.value(metadata i64 %230, metadata !2200, metadata !DIExpression()), !dbg !2248
  %231 = icmp ult i64 %230, %130, !dbg !2414
  br i1 %231, label %232, label %234, !dbg !2417

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2414
  store i8 34, i8* %233, align 1, !dbg !2414, !tbaa !1423
  br label %234, !dbg !2414

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2417
  call void @llvm.dbg.value(metadata i64 %235, metadata !2200, metadata !DIExpression()), !dbg !2248
  %236 = icmp ult i64 %235, %130, !dbg !2418
  br i1 %236, label %237, label %239, !dbg !2421

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2418
  store i8 34, i8* %238, align 1, !dbg !2418, !tbaa !1423
  br label %239, !dbg !2418

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2421
  call void @llvm.dbg.value(metadata i64 %240, metadata !2200, metadata !DIExpression()), !dbg !2248
  %241 = icmp ult i64 %240, %130, !dbg !2422
  br i1 %241, label %242, label %244, !dbg !2425

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2422
  store i8 63, i8* %243, align 1, !dbg !2422, !tbaa !1423
  br label %244, !dbg !2422

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2425
  call void @llvm.dbg.value(metadata i64 %245, metadata !2200, metadata !DIExpression()), !dbg !2248
  br label %463, !dbg !2426

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !2214, metadata !DIExpression()), !dbg !2340
  br label %256, !dbg !2427

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !2214, metadata !DIExpression()), !dbg !2340
  br label %256, !dbg !2428

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !2214, metadata !DIExpression()), !dbg !2340
  br label %254, !dbg !2429

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !2214, metadata !DIExpression()), !dbg !2340
  br label %254, !dbg !2430

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !2214, metadata !DIExpression()), !dbg !2340
  br label %256, !dbg !2431

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !2214, metadata !DIExpression()), !dbg !2340
  br i1 %110, label %252, label %253, !dbg !2432

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !2433

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !2436

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !2437
  call void @llvm.dbg.value(metadata i8 %255, metadata !2214, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.label(metadata !2243), !dbg !2438
  br i1 %111, label %256, label %625, !dbg !2439

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !2437
  call void @llvm.dbg.value(metadata i8 %257, metadata !2214, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.label(metadata !2244), !dbg !2441
  br i1 %102, label %488, label %463, !dbg !2442

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2443

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2444, !tbaa !1423
  %261 = icmp eq i8 %260, 0, !dbg !2445
  br i1 %261, label %262, label %463, !dbg !2446

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !2447
  br i1 %263, label %264, label %463, !dbg !2449

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2217, metadata !DIExpression()), !dbg !2340
  br label %265, !dbg !2450

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !2340
  call void @llvm.dbg.value(metadata i8 %266, metadata !2217, metadata !DIExpression()), !dbg !2340
  br i1 %111, label %463, label %625, !dbg !2451

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2208, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 1, metadata !2217, metadata !DIExpression()), !dbg !2340
  br i1 %110, label %268, label %463, !dbg !2452

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !2453

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !2455
  %271 = icmp ne i64 %125, 0, !dbg !2457
  %272 = or i1 %271, %270, !dbg !2458
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !2458
  %274 = select i1 %272, i64 %130, i64 0, !dbg !2458
  call void @llvm.dbg.value(metadata i64 %274, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %273, metadata !2201, metadata !DIExpression()), !dbg !2248
  %275 = icmp ult i64 %124, %274, !dbg !2459
  br i1 %275, label %276, label %278, !dbg !2462

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2459
  store i8 39, i8* %277, align 1, !dbg !2459, !tbaa !1423
  br label %278, !dbg !2459

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !2462
  call void @llvm.dbg.value(metadata i64 %279, metadata !2200, metadata !DIExpression()), !dbg !2248
  %280 = icmp ult i64 %279, %274, !dbg !2463
  br i1 %280, label %281, label %283, !dbg !2466

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2463
  store i8 92, i8* %282, align 1, !dbg !2463, !tbaa !1423
  br label %283, !dbg !2463

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !2466
  call void @llvm.dbg.value(metadata i64 %284, metadata !2200, metadata !DIExpression()), !dbg !2248
  %285 = icmp ult i64 %284, %274, !dbg !2467
  br i1 %285, label %286, label %288, !dbg !2470

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2467
  store i8 39, i8* %287, align 1, !dbg !2467, !tbaa !1423
  br label %288, !dbg !2467

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !2470
  call void @llvm.dbg.value(metadata i64 %289, metadata !2200, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 0, metadata !2207, metadata !DIExpression()), !dbg !2248
  br label %463, !dbg !2471

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !2472

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !2218, metadata !DIExpression()), !dbg !2473
  %292 = tail call i16** @__ctype_b_loc() #24, !dbg !2474
  %293 = load i16*, i16** %292, align 8, !dbg !2474, !tbaa !1255
  %294 = zext i8 %158 to i64, !dbg !2474
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2474
  %296 = load i16, i16* %295, align 2, !dbg !2474, !tbaa !1432
  %297 = lshr i16 %296, 14, !dbg !2476
  %298 = trunc i16 %297 to i8, !dbg !2476
  %299 = and i8 %298, 1, !dbg !2476
  call void @llvm.dbg.value(metadata i8 %299, metadata !2221, metadata !DIExpression()), !dbg !2473
  br label %355, !dbg !2477

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #18, !dbg !2478
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !2222, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i8* %23, metadata !2480, metadata !DIExpression()) #18, !dbg !2488
  call void @llvm.dbg.value(metadata i32 0, metadata !2486, metadata !DIExpression()) #18, !dbg !2488
  call void @llvm.dbg.value(metadata i64 8, metadata !2487, metadata !DIExpression()) #18, !dbg !2488
  store i64 0, i64* %10, align 8, !dbg !2490
  call void @llvm.dbg.value(metadata i64 0, metadata !2218, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i8 1, metadata !2221, metadata !DIExpression()), !dbg !2473
  %301 = icmp eq i64 %155, -1, !dbg !2491
  br i1 %301, label %302, label %304, !dbg !2493

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #21, !dbg !2494
  call void @llvm.dbg.value(metadata i64 %303, metadata !2193, metadata !DIExpression()), !dbg !2248
  br label %304, !dbg !2495

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !2340
  call void @llvm.dbg.value(metadata i64 %305, metadata !2193, metadata !DIExpression()), !dbg !2248
  br label %306, !dbg !2496

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !2497
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !2498
  call void @llvm.dbg.value(metadata i8 %308, metadata !2221, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i64 %307, metadata !2218, metadata !DIExpression()), !dbg !2473
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #18, !dbg !2499
  %309 = add i64 %307, %123, !dbg !2500
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !2501
  %311 = sub i64 %305, %309, !dbg !2502
  call void @llvm.dbg.value(metadata i32* %12, metadata !2228, metadata !DIExpression(DW_OP_deref)), !dbg !2261
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #18, !dbg !2503
  call void @llvm.dbg.value(metadata i64 %312, metadata !2231, metadata !DIExpression()), !dbg !2261
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !2504

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2218, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i64 %307, metadata !2218, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i64 %307, metadata !2218, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i64 %307, metadata !2218, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i64 %307, metadata !2218, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i64 %307, metadata !2218, metadata !DIExpression()), !dbg !2473
  %314 = icmp ugt i64 %305, %309, !dbg !2505
  br i1 %314, label %315, label %340, !dbg !2507

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !2508
  br label %317, !dbg !2508

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !2218, metadata !DIExpression()), !dbg !2473
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !2509
  %321 = load i8, i8* %320, align 1, !dbg !2509, !tbaa !1423
  %322 = icmp eq i8 %321, 0, !dbg !2507
  br i1 %322, label %340, label %323, !dbg !2508

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !2510
  call void @llvm.dbg.value(metadata i64 %324, metadata !2218, metadata !DIExpression()), !dbg !2473
  %325 = add i64 %324, %123, !dbg !2511
  %326 = icmp ult i64 %325, %305, !dbg !2505
  br i1 %326, label %317, label %340, !dbg !2507, !llvm.loop !2512

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !2513
  %329 = and i1 %113, %328, !dbg !2516
  call void @llvm.dbg.value(metadata i64 1, metadata !2232, metadata !DIExpression()), !dbg !2517
  br i1 %329, label %330, label %343, !dbg !2516

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !2232, metadata !DIExpression()), !dbg !2517
  %332 = add i64 %331, %309, !dbg !2518
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !2519
  %334 = load i8, i8* %333, align 1, !dbg !2519, !tbaa !1423
  %335 = sext i8 %334 to i32, !dbg !2519
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !2520

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !2521
  call void @llvm.dbg.value(metadata i64 %337, metadata !2232, metadata !DIExpression()), !dbg !2517
  %338 = icmp eq i64 %337, %312, !dbg !2513
  br i1 %338, label %343, label %330, !dbg !2522, !llvm.loop !2523

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2218, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i8 %308, metadata !2221, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i64 %307, metadata !2218, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i8 %308, metadata !2221, metadata !DIExpression()), !dbg !2473
  br label %340, !dbg !2525

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !2525
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !2526, !tbaa !1358
  call void @llvm.dbg.value(metadata i32 %344, metadata !2228, metadata !DIExpression()), !dbg !2261
  %345 = call i32 @iswprint(i32 %344) #18, !dbg !2528
  %346 = icmp eq i32 %345, 0, !dbg !2528
  %347 = select i1 %346, i8 0, i8 %308, !dbg !2529
  call void @llvm.dbg.value(metadata i8 %347, metadata !2221, metadata !DIExpression()), !dbg !2473
  %348 = add i64 %312, %307, !dbg !2530
  call void @llvm.dbg.value(metadata i64 %348, metadata !2218, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i8 %347, metadata !2221, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i64 %348, metadata !2218, metadata !DIExpression()), !dbg !2473
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !2525
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #21, !dbg !2531
  %350 = icmp eq i32 %349, 0, !dbg !2532
  br i1 %350, label %306, label %351, !dbg !2533, !llvm.loop !2534

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #18, !dbg !2536
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !2197, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %94, metadata !2197, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %94, metadata !2197, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %94, metadata !2197, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %94, metadata !2197, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %95, metadata !2198, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %95, metadata !2198, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %95, metadata !2198, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %95, metadata !2198, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %95, metadata !2198, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %130, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %130, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %130, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %130, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %130, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %305, metadata !2193, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %305, metadata !2193, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %305, metadata !2193, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %305, metadata !2193, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %305, metadata !2193, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %94, metadata !2197, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %94, metadata !2197, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %94, metadata !2197, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %94, metadata !2197, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %94, metadata !2197, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %95, metadata !2198, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %95, metadata !2198, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %95, metadata !2198, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %95, metadata !2198, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %95, metadata !2198, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %130, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %130, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %130, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %130, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %130, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %305, metadata !2193, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %305, metadata !2193, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %305, metadata !2193, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %305, metadata !2193, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %305, metadata !2193, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %94, metadata !2197, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %94, metadata !2197, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %94, metadata !2197, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %94, metadata !2197, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %94, metadata !2197, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %95, metadata !2198, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %95, metadata !2198, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %95, metadata !2198, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %95, metadata !2198, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %95, metadata !2198, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %130, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %130, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %130, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %130, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %130, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %305, metadata !2193, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %305, metadata !2193, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %305, metadata !2193, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %305, metadata !2193, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %305, metadata !2193, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %94, metadata !2197, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %94, metadata !2197, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %94, metadata !2197, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %94, metadata !2197, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %94, metadata !2197, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %95, metadata !2198, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %95, metadata !2198, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %95, metadata !2198, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %95, metadata !2198, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %95, metadata !2198, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %130, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %130, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %130, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %130, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %130, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %305, metadata !2193, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %305, metadata !2193, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %305, metadata !2193, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %305, metadata !2193, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %305, metadata !2193, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i32 2, metadata !2194, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i32 2, metadata !2194, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i32 2, metadata !2194, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i32 2, metadata !2194, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i32 2, metadata !2194, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %94, metadata !2197, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %94, metadata !2197, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %94, metadata !2197, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %94, metadata !2197, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %94, metadata !2197, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %95, metadata !2198, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %95, metadata !2198, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %95, metadata !2198, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %95, metadata !2198, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %95, metadata !2198, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %99, metadata !2204, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %99, metadata !2204, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %99, metadata !2204, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %99, metadata !2204, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %99, metadata !2204, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %130, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %130, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %130, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %130, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %130, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %305, metadata !2193, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %305, metadata !2193, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %305, metadata !2193, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %305, metadata !2193, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %305, metadata !2193, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i32 2, metadata !2194, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i32 2, metadata !2194, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i32 2, metadata !2194, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i32 2, metadata !2194, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i32 2, metadata !2194, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %94, metadata !2197, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %94, metadata !2197, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %94, metadata !2197, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %94, metadata !2197, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %94, metadata !2197, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %95, metadata !2198, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %95, metadata !2198, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %95, metadata !2198, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %95, metadata !2198, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %95, metadata !2198, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %99, metadata !2204, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %99, metadata !2204, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %99, metadata !2204, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %99, metadata !2204, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %99, metadata !2204, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %130, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %130, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %130, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %130, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %130, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %305, metadata !2193, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %305, metadata !2193, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %305, metadata !2193, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %305, metadata !2193, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %305, metadata !2193, metadata !DIExpression()), !dbg !2248
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !2525
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #18, !dbg !2536
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !2340
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !2537
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !2537
  call void @llvm.dbg.value(metadata i8 %358, metadata !2221, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i64 %357, metadata !2218, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i64 %356, metadata !2193, metadata !DIExpression()), !dbg !2248
  %359 = and i8 %358, 1, !dbg !2538
  %360 = icmp ne i8 %359, 0, !dbg !2538
  call void @llvm.dbg.value(metadata i8 %359, metadata !2217, metadata !DIExpression()), !dbg !2340
  %361 = icmp ult i64 %357, 2, !dbg !2539
  %362 = or i1 %360, %114, !dbg !2540
  %363 = and i1 %361, %362, !dbg !2541
  br i1 %363, label %463, label %364, !dbg !2541

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !2542
  call void @llvm.dbg.value(metadata i64 %365, metadata !2239, metadata !DIExpression()), !dbg !2543
  br label %366, !dbg !2544

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !2333
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !2248
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !2269
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !2340
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !2340
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !2545
  call void @llvm.dbg.value(metadata i8 %372, metadata !2216, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i8 %371, metadata !2215, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i8 %370, metadata !2210, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i8 %369, metadata !2207, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %368, metadata !2200, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %367, metadata !2199, metadata !DIExpression()), !dbg !2248
  br i1 %362, label %419, label %373, !dbg !2546

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !2551

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !2216, metadata !DIExpression()), !dbg !2340
  %375 = and i8 %369, 1, !dbg !2554
  %376 = icmp eq i8 %375, 0, !dbg !2554
  %377 = and i1 %110, %376, !dbg !2554
  br i1 %377, label %378, label %394, !dbg !2554

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !2556
  br i1 %379, label %380, label %382, !dbg !2560

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2556
  store i8 39, i8* %381, align 1, !dbg !2556, !tbaa !1423
  br label %382, !dbg !2556

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !2560
  call void @llvm.dbg.value(metadata i64 %383, metadata !2200, metadata !DIExpression()), !dbg !2248
  %384 = icmp ult i64 %383, %130, !dbg !2561
  br i1 %384, label %385, label %387, !dbg !2564

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2561
  store i8 36, i8* %386, align 1, !dbg !2561, !tbaa !1423
  br label %387, !dbg !2561

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !2564
  call void @llvm.dbg.value(metadata i64 %388, metadata !2200, metadata !DIExpression()), !dbg !2248
  %389 = icmp ult i64 %388, %130, !dbg !2565
  br i1 %389, label %390, label %392, !dbg !2568

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !2565
  store i8 39, i8* %391, align 1, !dbg !2565, !tbaa !1423
  br label %392, !dbg !2565

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !2568
  call void @llvm.dbg.value(metadata i64 %393, metadata !2200, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 1, metadata !2207, metadata !DIExpression()), !dbg !2248
  br label %394, !dbg !2569

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !2248
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !2248
  call void @llvm.dbg.value(metadata i8 %396, metadata !2207, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %395, metadata !2200, metadata !DIExpression()), !dbg !2248
  %397 = icmp ult i64 %395, %130, !dbg !2570
  br i1 %397, label %398, label %400, !dbg !2573

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2570
  store i8 92, i8* %399, align 1, !dbg !2570, !tbaa !1423
  br label %400, !dbg !2570

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !2573
  call void @llvm.dbg.value(metadata i64 %401, metadata !2200, metadata !DIExpression()), !dbg !2248
  %402 = icmp ult i64 %401, %130, !dbg !2574
  br i1 %402, label %403, label %407, !dbg !2577

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !2574
  %405 = or i8 %404, 48, !dbg !2574
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2574
  store i8 %405, i8* %406, align 1, !dbg !2574, !tbaa !1423
  br label %407, !dbg !2574

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !2577
  call void @llvm.dbg.value(metadata i64 %408, metadata !2200, metadata !DIExpression()), !dbg !2248
  %409 = icmp ult i64 %408, %130, !dbg !2578
  br i1 %409, label %410, label %415, !dbg !2581

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !2578
  %412 = and i8 %411, 7, !dbg !2578
  %413 = or i8 %412, 48, !dbg !2578
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2578
  store i8 %413, i8* %414, align 1, !dbg !2578, !tbaa !1423
  br label %415, !dbg !2578

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !2581
  call void @llvm.dbg.value(metadata i64 %416, metadata !2200, metadata !DIExpression()), !dbg !2248
  %417 = and i8 %370, 7, !dbg !2582
  %418 = or i8 %417, 48, !dbg !2583
  call void @llvm.dbg.value(metadata i8 %418, metadata !2210, metadata !DIExpression()), !dbg !2340
  br label %428, !dbg !2584

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !2585
  %421 = icmp eq i8 %420, 0, !dbg !2585
  br i1 %421, label %428, label %422, !dbg !2587

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !2588
  br i1 %423, label %424, label %426, !dbg !2592

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2588
  store i8 92, i8* %425, align 1, !dbg !2588, !tbaa !1423
  br label %426, !dbg !2588

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !2592
  call void @llvm.dbg.value(metadata i64 %427, metadata !2200, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 0, metadata !2215, metadata !DIExpression()), !dbg !2340
  br label %428, !dbg !2593

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !2248
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !2269
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !2340
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !2340
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !2340
  call void @llvm.dbg.value(metadata i8 %433, metadata !2216, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i8 %432, metadata !2215, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i8 %431, metadata !2210, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i8 %430, metadata !2207, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %429, metadata !2200, metadata !DIExpression()), !dbg !2248
  %434 = add i64 %367, 1, !dbg !2594
  %435 = icmp ugt i64 %365, %434, !dbg !2596
  br i1 %435, label %436, label %526, !dbg !2597

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !2598
  %438 = icmp ne i8 %437, 0, !dbg !2598
  %439 = and i8 %433, 1, !dbg !2598
  %440 = icmp eq i8 %439, 0, !dbg !2598
  %441 = and i1 %438, %440, !dbg !2598
  br i1 %441, label %442, label %453, !dbg !2598

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !2601
  br i1 %443, label %444, label %446, !dbg !2605

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !2601
  store i8 39, i8* %445, align 1, !dbg !2601, !tbaa !1423
  br label %446, !dbg !2601

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !2605
  call void @llvm.dbg.value(metadata i64 %447, metadata !2200, metadata !DIExpression()), !dbg !2248
  %448 = icmp ult i64 %447, %130, !dbg !2606
  br i1 %448, label %449, label %451, !dbg !2609

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !2606
  store i8 39, i8* %450, align 1, !dbg !2606, !tbaa !1423
  br label %451, !dbg !2606

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !2609
  call void @llvm.dbg.value(metadata i64 %452, metadata !2200, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 0, metadata !2207, metadata !DIExpression()), !dbg !2248
  br label %453, !dbg !2610

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !2611
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !2248
  call void @llvm.dbg.value(metadata i8 %455, metadata !2207, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %454, metadata !2200, metadata !DIExpression()), !dbg !2248
  %456 = icmp ult i64 %454, %130, !dbg !2612
  br i1 %456, label %457, label %459, !dbg !2615

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2612
  store i8 %431, i8* %458, align 1, !dbg !2612, !tbaa !1423
  br label %459, !dbg !2612

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !2615
  call void @llvm.dbg.value(metadata i64 %460, metadata !2200, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %434, metadata !2199, metadata !DIExpression()), !dbg !2248
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !2616
  %462 = load i8, i8* %461, align 1, !dbg !2616, !tbaa !1423
  call void @llvm.dbg.value(metadata i8 %462, metadata !2210, metadata !DIExpression()), !dbg !2340
  br label %366, !dbg !2617, !llvm.loop !2618

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !2333
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !2248
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !2265
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !2621
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !2248
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !2248
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !2340
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !2340
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !2340
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %472, metadata !2217, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i8 %471, metadata !2216, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i8 %156, metadata !2215, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i8 %470, metadata !2210, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i8 %469, metadata !2208, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %468, metadata !2207, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %467, metadata !2193, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %466, metadata !2201, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %465, metadata !2200, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %464, metadata !2199, metadata !DIExpression()), !dbg !2248
  br i1 %117, label %486, label %474, !dbg !2622

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !2623
  %476 = zext i8 %475 to i64, !dbg !2623
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !2624
  %478 = load i32, i32* %477, align 4, !dbg !2624, !tbaa !1358
  %479 = and i8 %470, 31, !dbg !2625
  %480 = zext i8 %479 to i32, !dbg !2625
  %481 = shl nuw i32 1, %480, !dbg !2626
  %482 = and i32 %478, %481, !dbg !2626
  %483 = icmp eq i32 %482, 0, !dbg !2626
  %484 = icmp eq i8 %156, 0, !dbg !2627
  %485 = and i1 %484, %483, !dbg !2628
  br i1 %485, label %526, label %488, !dbg !2628

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !2627
  br i1 %487, label %526, label %488, !dbg !2629

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !2630
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !2248
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !2265
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !2621
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !2269
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !2270
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !2340
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !2340
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %496, metadata !2217, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i8 %495, metadata !2210, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i8 %494, metadata !2208, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %493, metadata !2207, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %492, metadata !2193, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %491, metadata !2201, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %490, metadata !2200, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %489, metadata !2199, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.label(metadata !2245), !dbg !2631
  br i1 %109, label %498, label %629, !dbg !2632

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !2216, metadata !DIExpression()), !dbg !2340
  %499 = and i8 %493, 1, !dbg !2634
  %500 = icmp eq i8 %499, 0, !dbg !2634
  %501 = and i1 %110, %500, !dbg !2634
  br i1 %501, label %502, label %518, !dbg !2634

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !2636
  br i1 %503, label %504, label %506, !dbg !2640

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !2636
  store i8 39, i8* %505, align 1, !dbg !2636, !tbaa !1423
  br label %506, !dbg !2636

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !2640
  call void @llvm.dbg.value(metadata i64 %507, metadata !2200, metadata !DIExpression()), !dbg !2248
  %508 = icmp ult i64 %507, %497, !dbg !2641
  br i1 %508, label %509, label %511, !dbg !2644

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !2641
  store i8 36, i8* %510, align 1, !dbg !2641, !tbaa !1423
  br label %511, !dbg !2641

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !2644
  call void @llvm.dbg.value(metadata i64 %512, metadata !2200, metadata !DIExpression()), !dbg !2248
  %513 = icmp ult i64 %512, %497, !dbg !2645
  br i1 %513, label %514, label %516, !dbg !2648

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2645
  store i8 39, i8* %515, align 1, !dbg !2645, !tbaa !1423
  br label %516, !dbg !2645

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !2648
  call void @llvm.dbg.value(metadata i64 %517, metadata !2200, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 1, metadata !2207, metadata !DIExpression()), !dbg !2248
  br label %518, !dbg !2649

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !2340
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !2248
  call void @llvm.dbg.value(metadata i8 %520, metadata !2207, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %519, metadata !2200, metadata !DIExpression()), !dbg !2248
  %521 = icmp ult i64 %519, %497, !dbg !2650
  br i1 %521, label %522, label %524, !dbg !2653

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2650
  store i8 92, i8* %523, align 1, !dbg !2650, !tbaa !1423
  br label %524, !dbg !2650

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !2653
  call void @llvm.dbg.value(metadata i64 %525, metadata !2200, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %536, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %535, metadata !2217, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i8 %534, metadata !2216, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i8 %533, metadata !2210, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i8 %532, metadata !2208, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %531, metadata !2207, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %530, metadata !2193, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %529, metadata !2201, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %528, metadata !2200, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %527, metadata !2199, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.label(metadata !2246), !dbg !2654
  br label %553, !dbg !2655

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !2630
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !2248
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !2265
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !2621
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !2269
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !2270
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !2658
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !2340
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !2340
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %535, metadata !2217, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i8 %534, metadata !2216, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i8 %533, metadata !2210, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i8 %532, metadata !2208, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %531, metadata !2207, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %530, metadata !2193, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %529, metadata !2201, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %528, metadata !2200, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %527, metadata !2199, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.label(metadata !2246), !dbg !2654
  %537 = and i8 %531, 1, !dbg !2655
  %538 = icmp ne i8 %537, 0, !dbg !2655
  %539 = and i8 %534, 1, !dbg !2655
  %540 = icmp eq i8 %539, 0, !dbg !2655
  %541 = and i1 %538, %540, !dbg !2655
  br i1 %541, label %542, label %553, !dbg !2655

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !2659
  br i1 %543, label %544, label %546, !dbg !2663

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2659
  store i8 39, i8* %545, align 1, !dbg !2659, !tbaa !1423
  br label %546, !dbg !2659

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !2663
  call void @llvm.dbg.value(metadata i64 %547, metadata !2200, metadata !DIExpression()), !dbg !2248
  %548 = icmp ult i64 %547, %536, !dbg !2664
  br i1 %548, label %549, label %551, !dbg !2667

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !2664
  store i8 39, i8* %550, align 1, !dbg !2664, !tbaa !1423
  br label %551, !dbg !2664

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !2667
  call void @llvm.dbg.value(metadata i64 %552, metadata !2200, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 0, metadata !2207, metadata !DIExpression()), !dbg !2248
  br label %553, !dbg !2668

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !2340
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !2248
  call void @llvm.dbg.value(metadata i8 %562, metadata !2207, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %561, metadata !2200, metadata !DIExpression()), !dbg !2248
  %563 = icmp ult i64 %561, %554, !dbg !2669
  br i1 %563, label %564, label %566, !dbg !2672

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !2669
  store i8 %556, i8* %565, align 1, !dbg !2669, !tbaa !1423
  br label %566, !dbg !2669

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2672
  call void @llvm.dbg.value(metadata i64 %567, metadata !2200, metadata !DIExpression()), !dbg !2248
  %568 = and i8 %555, 1, !dbg !2673
  %569 = icmp eq i8 %568, 0, !dbg !2673
  %570 = select i1 %569, i8 0, i8 %129, !dbg !2675
  call void @llvm.dbg.value(metadata i8 %570, metadata !2209, metadata !DIExpression()), !dbg !2248
  br label %571, !dbg !2676

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !2630
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !2248
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !2265
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !2621
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !2269
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !2248
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !2271
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %578, metadata !2209, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %577, metadata !2208, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %576, metadata !2207, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %575, metadata !2193, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %574, metadata !2201, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %573, metadata !2200, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %572, metadata !2199, metadata !DIExpression()), !dbg !2248
  %580 = add i64 %572, 1, !dbg !2677
  call void @llvm.dbg.value(metadata i64 %580, metadata !2199, metadata !DIExpression()), !dbg !2248
  br label %122, !dbg !2678, !llvm.loop !2679

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !2200, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %124, metadata !2200, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %125, metadata !2201, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %125, metadata !2201, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %127, metadata !2207, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %127, metadata !2207, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %128, metadata !2208, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %128, metadata !2208, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %129, metadata !2209, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %129, metadata !2209, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %130, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %130, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %124, metadata !2200, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %124, metadata !2200, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %125, metadata !2201, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %125, metadata !2201, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %127, metadata !2207, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %127, metadata !2207, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %128, metadata !2208, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %128, metadata !2208, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %129, metadata !2209, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %129, metadata !2209, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %130, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %130, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %124, metadata !2200, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %124, metadata !2200, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %125, metadata !2201, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %125, metadata !2201, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %127, metadata !2207, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %127, metadata !2207, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %128, metadata !2208, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %128, metadata !2208, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %129, metadata !2209, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %129, metadata !2209, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %130, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %130, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %124, metadata !2200, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %124, metadata !2200, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %125, metadata !2201, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %125, metadata !2201, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %127, metadata !2207, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %127, metadata !2207, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %128, metadata !2208, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %128, metadata !2208, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %129, metadata !2209, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %129, metadata !2209, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %130, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %130, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %124, metadata !2200, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %124, metadata !2200, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %125, metadata !2201, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %125, metadata !2201, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %582, metadata !2193, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %582, metadata !2193, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %127, metadata !2207, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %127, metadata !2207, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %128, metadata !2208, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %128, metadata !2208, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %129, metadata !2209, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %129, metadata !2209, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %130, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %130, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %124, metadata !2200, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %124, metadata !2200, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %125, metadata !2201, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %125, metadata !2201, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %582, metadata !2193, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %582, metadata !2193, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %127, metadata !2207, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %127, metadata !2207, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %128, metadata !2208, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %128, metadata !2208, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %129, metadata !2209, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 %129, metadata !2209, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %130, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %130, metadata !2191, metadata !DIExpression()), !dbg !2248
  %583 = icmp eq i64 %124, 0, !dbg !2681
  %584 = and i1 %110, %583, !dbg !2683
  %585 = xor i1 %584, true, !dbg !2683
  %586 = or i1 %109, %585, !dbg !2683
  br i1 %586, label %587, label %629, !dbg !2683

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !2684
  %589 = xor i1 %588, true, !dbg !2684
  %590 = and i8 %128, 1, !dbg !2686
  %591 = icmp eq i8 %590, 0, !dbg !2686
  %592 = or i1 %591, %589, !dbg !2684
  br i1 %592, label %602, label %593, !dbg !2684

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !2687
  %595 = icmp eq i8 %594, 0, !dbg !2687
  br i1 %595, label %598, label %596, !dbg !2690

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !2193, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %94, metadata !2197, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %95, metadata !2198, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %125, metadata !2201, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %582, metadata !2193, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %94, metadata !2197, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %95, metadata !2198, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %125, metadata !2201, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %582, metadata !2193, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %94, metadata !2197, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %95, metadata !2198, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %125, metadata !2201, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %582, metadata !2193, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %94, metadata !2197, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %95, metadata !2198, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %125, metadata !2201, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %94, metadata !2197, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %95, metadata !2198, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %125, metadata !2201, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %582, metadata !2193, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %94, metadata !2197, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %95, metadata !2198, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %125, metadata !2201, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %582, metadata !2193, metadata !DIExpression()), !dbg !2248
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2691
  br label %645, !dbg !2692

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !2693
  %600 = icmp ne i64 %125, 0, !dbg !2695
  %601 = and i1 %600, %599, !dbg !2696
  br i1 %601, label %26, label %602, !dbg !2696

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !2202, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %97, metadata !2202, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %124, metadata !2200, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %124, metadata !2200, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %130, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %130, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %97, metadata !2202, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %97, metadata !2202, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %124, metadata !2200, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %124, metadata !2200, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %130, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %130, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %97, metadata !2202, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %97, metadata !2202, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %124, metadata !2200, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %124, metadata !2200, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %130, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %130, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %97, metadata !2202, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %97, metadata !2202, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %124, metadata !2200, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %124, metadata !2200, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %130, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %130, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %97, metadata !2202, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %97, metadata !2202, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %124, metadata !2200, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %124, metadata !2200, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %130, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %130, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %97, metadata !2202, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %97, metadata !2202, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %124, metadata !2200, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %124, metadata !2200, metadata !DIExpression()), !dbg !2248
  %603 = icmp ne i8* %97, null, !dbg !2697
  %604 = and i1 %603, %109, !dbg !2699
  br i1 %604, label %605, label %620, !dbg !2699

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !2202, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %124, metadata !2200, metadata !DIExpression()), !dbg !2248
  %606 = load i8, i8* %97, align 1, !dbg !2700, !tbaa !1423
  %607 = icmp eq i8 %606, 0, !dbg !2703
  br i1 %607, label %620, label %608, !dbg !2703

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !2202, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %611, metadata !2200, metadata !DIExpression()), !dbg !2248
  %612 = icmp ult i64 %611, %130, !dbg !2704
  br i1 %612, label %613, label %615, !dbg !2707

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !2704
  store i8 %609, i8* %614, align 1, !dbg !2704, !tbaa !1423
  br label %615, !dbg !2704

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !2707
  call void @llvm.dbg.value(metadata i64 %616, metadata !2200, metadata !DIExpression()), !dbg !2248
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !2708
  call void @llvm.dbg.value(metadata i8* %617, metadata !2202, metadata !DIExpression()), !dbg !2248
  %618 = load i8, i8* %617, align 1, !dbg !2700, !tbaa !1423
  %619 = icmp eq i8 %618, 0, !dbg !2703
  br i1 %619, label %620, label %608, !dbg !2703, !llvm.loop !2709

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !2302
  call void @llvm.dbg.value(metadata i64 %621, metadata !2200, metadata !DIExpression()), !dbg !2248
  %622 = icmp ult i64 %621, %130, !dbg !2711
  br i1 %622, label %623, label %645, !dbg !2713

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2714
  store i8 0, i8* %624, align 1, !dbg !2715, !tbaa !1423
  br label %645, !dbg !2714

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %630, metadata !2193, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.label(metadata !2247), !dbg !2716
  %627 = icmp eq i8 %101, 0, !dbg !2717
  %628 = select i1 %627, i32 2, i32 4, !dbg !2717
  br label %635, !dbg !2717

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2191, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %630, metadata !2193, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.label(metadata !2247), !dbg !2716
  %632 = icmp eq i32 %93, 2, !dbg !2719
  %633 = icmp eq i8 %101, 0, !dbg !2717
  %634 = select i1 %633, i32 2, i32 4, !dbg !2717
  br i1 %632, label %635, label %639, !dbg !2717

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !2717

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !2194, metadata !DIExpression()), !dbg !2248
  %643 = and i32 %5, -3, !dbg !2720
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !2721
  br label %645, !dbg !2722

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !2723
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2724 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2728, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata i32 %1, metadata !2729, metadata !DIExpression()), !dbg !2732
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #18, !dbg !2733
  call void @llvm.dbg.value(metadata i8* %3, metadata !2730, metadata !DIExpression()), !dbg !2732
  %4 = icmp eq i8* %3, %0, !dbg !2734
  br i1 %4, label %5, label %71, !dbg !2736

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #18, !dbg !2737
  call void @llvm.dbg.value(metadata i8* %6, metadata !2731, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata i8* %6, metadata !2738, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* undef, metadata !2744, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 85, metadata !2745, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 84, metadata !2746, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 70, metadata !2747, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 45, metadata !2748, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 56, metadata !2749, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 0, metadata !2750, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 0, metadata !2751, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 0, metadata !2752, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8 0, metadata !2753, metadata !DIExpression()), !dbg !2754
  %7 = load i8, i8* %6, align 1, !dbg !2757, !tbaa !1423
  %8 = and i8 %7, -33, !dbg !2757
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2757

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2759, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i8* undef, metadata !2764, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i8 84, metadata !2765, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i8 70, metadata !2766, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i8 45, metadata !2767, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i8 56, metadata !2768, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i8 0, metadata !2769, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i8 0, metadata !2770, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i8 0, metadata !2771, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i8 0, metadata !2772, metadata !DIExpression()), !dbg !2773
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2777
  %11 = load i8, i8* %10, align 1, !dbg !2777, !tbaa !1423
  %12 = and i8 %11, -33, !dbg !2777
  %13 = icmp eq i8 %12, 84, !dbg !2777
  br i1 %13, label %14, label %68, !dbg !2777

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2779, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i8* undef, metadata !2784, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i8 70, metadata !2785, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i8 45, metadata !2786, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i8 56, metadata !2787, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i8 0, metadata !2788, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i8 0, metadata !2789, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i8 0, metadata !2790, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i8 0, metadata !2791, metadata !DIExpression()), !dbg !2792
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2796
  %16 = load i8, i8* %15, align 1, !dbg !2796, !tbaa !1423
  %17 = and i8 %16, -33, !dbg !2796
  %18 = icmp eq i8 %17, 70, !dbg !2796
  br i1 %18, label %19, label %68, !dbg !2796

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2798, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i8* undef, metadata !2803, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i8 45, metadata !2804, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i8 56, metadata !2805, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i8 0, metadata !2806, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i8 0, metadata !2807, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i8 0, metadata !2808, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i8 0, metadata !2809, metadata !DIExpression()), !dbg !2810
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2814
  %21 = load i8, i8* %20, align 1, !dbg !2814, !tbaa !1423
  %22 = icmp eq i8 %21, 45, !dbg !2814
  br i1 %22, label %23, label %68, !dbg !2816

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2817, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata i8* undef, metadata !2822, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata i8 56, metadata !2823, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata i8 0, metadata !2824, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata i8 0, metadata !2825, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata i8 0, metadata !2826, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata i8 0, metadata !2827, metadata !DIExpression()), !dbg !2828
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2832
  %25 = load i8, i8* %24, align 1, !dbg !2832, !tbaa !1423
  %26 = icmp eq i8 %25, 56, !dbg !2832
  br i1 %26, label %27, label %68, !dbg !2834

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2835, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i8* undef, metadata !2840, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i8 0, metadata !2841, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i8 0, metadata !2842, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i8 0, metadata !2843, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i8 0, metadata !2844, metadata !DIExpression()), !dbg !2845
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2849
  %29 = load i8, i8* %28, align 1, !dbg !2849, !tbaa !1423
  %30 = icmp eq i8 %29, 0, !dbg !2849
  br i1 %30, label %31, label %68, !dbg !2851

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2852, !tbaa !1423
  %33 = icmp eq i8 %32, 96, !dbg !2853
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.72, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.73, i64 0, i64 0), !dbg !2852
  br label %71, !dbg !2854

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2759, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* undef, metadata !2764, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 66, metadata !2765, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 49, metadata !2766, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 56, metadata !2767, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 48, metadata !2768, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 51, metadata !2769, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 48, metadata !2770, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 0, metadata !2771, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 0, metadata !2772, metadata !DIExpression()), !dbg !2855
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2859
  %37 = load i8, i8* %36, align 1, !dbg !2859, !tbaa !1423
  %38 = and i8 %37, -33, !dbg !2859
  %39 = icmp eq i8 %38, 66, !dbg !2859
  br i1 %39, label %40, label %68, !dbg !2859

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2779, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata i8* undef, metadata !2784, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata i8 49, metadata !2785, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata i8 56, metadata !2786, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata i8 48, metadata !2787, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata i8 51, metadata !2788, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata i8 48, metadata !2789, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata i8 0, metadata !2790, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata i8 0, metadata !2791, metadata !DIExpression()), !dbg !2860
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2862
  %42 = load i8, i8* %41, align 1, !dbg !2862, !tbaa !1423
  %43 = icmp eq i8 %42, 49, !dbg !2862
  br i1 %43, label %44, label %68, !dbg !2863

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2798, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i8* undef, metadata !2803, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i8 56, metadata !2804, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i8 48, metadata !2805, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i8 51, metadata !2806, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i8 48, metadata !2807, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i8 0, metadata !2808, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i8 0, metadata !2809, metadata !DIExpression()), !dbg !2864
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2866
  %46 = load i8, i8* %45, align 1, !dbg !2866, !tbaa !1423
  %47 = icmp eq i8 %46, 56, !dbg !2866
  br i1 %47, label %48, label %68, !dbg !2867

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2817, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata i8* undef, metadata !2822, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata i8 48, metadata !2823, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata i8 51, metadata !2824, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata i8 48, metadata !2825, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata i8 0, metadata !2826, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata i8 0, metadata !2827, metadata !DIExpression()), !dbg !2868
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2870
  %50 = load i8, i8* %49, align 1, !dbg !2870, !tbaa !1423
  %51 = icmp eq i8 %50, 48, !dbg !2870
  br i1 %51, label %52, label %68, !dbg !2871

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2835, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i8* undef, metadata !2840, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i8 51, metadata !2841, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i8 48, metadata !2842, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i8 0, metadata !2843, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i8 0, metadata !2844, metadata !DIExpression()), !dbg !2872
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2874
  %54 = load i8, i8* %53, align 1, !dbg !2874, !tbaa !1423
  %55 = icmp eq i8 %54, 51, !dbg !2874
  br i1 %55, label %56, label %68, !dbg !2875

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2876, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i8* undef, metadata !2881, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i8 48, metadata !2882, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i8 0, metadata !2883, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i8 0, metadata !2884, metadata !DIExpression()), !dbg !2885
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2889
  %58 = load i8, i8* %57, align 1, !dbg !2889, !tbaa !1423
  %59 = icmp eq i8 %58, 48, !dbg !2889
  br i1 %59, label %60, label %68, !dbg !2891

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2892, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i8* undef, metadata !2897, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i8 0, metadata !2898, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i8 0, metadata !2899, metadata !DIExpression()), !dbg !2900
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2904
  %62 = load i8, i8* %61, align 1, !dbg !2904, !tbaa !1423
  %63 = icmp eq i8 %62, 0, !dbg !2904
  br i1 %63, label %64, label %68, !dbg !2906

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2907, !tbaa !1423
  %66 = icmp eq i8 %65, 96, !dbg !2908
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.74, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.75, i64 0, i64 0), !dbg !2907
  br label %71, !dbg !2909

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2910
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.71, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), !dbg !2911
  br label %71, !dbg !2912

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2732
  ret i8* %72, !dbg !2913
}

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #15

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #16

; Function Attrs: nounwind
declare !dbg !465 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !469 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2914 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2918, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i64 %1, metadata !2919, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2920, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i8* %0, metadata !2922, metadata !DIExpression()) #18, !dbg !2935
  call void @llvm.dbg.value(metadata i64 %1, metadata !2927, metadata !DIExpression()) #18, !dbg !2935
  call void @llvm.dbg.value(metadata i64* null, metadata !2928, metadata !DIExpression()) #18, !dbg !2935
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2929, metadata !DIExpression()) #18, !dbg !2935
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2937
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2937
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2930, metadata !DIExpression()) #18, !dbg !2935
  %6 = tail call i32* @__errno_location() #24, !dbg !2938
  %7 = load i32, i32* %6, align 4, !dbg !2938, !tbaa !1358
  call void @llvm.dbg.value(metadata i32 %7, metadata !2931, metadata !DIExpression()) #18, !dbg !2935
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2939
  %9 = load i32, i32* %8, align 4, !dbg !2939, !tbaa !2133
  %10 = or i32 %9, 1, !dbg !2940
  call void @llvm.dbg.value(metadata i32 %10, metadata !2932, metadata !DIExpression()) #18, !dbg !2935
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2941
  %12 = load i32, i32* %11, align 8, !dbg !2941, !tbaa !2082
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2942
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2943
  %15 = load i8*, i8** %14, align 8, !dbg !2943, !tbaa !2156
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2944
  %17 = load i8*, i8** %16, align 8, !dbg !2944, !tbaa !2159
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #18, !dbg !2945
  %19 = add i64 %18, 1, !dbg !2946
  call void @llvm.dbg.value(metadata i64 %19, metadata !2933, metadata !DIExpression()) #18, !dbg !2935
  call void @llvm.dbg.value(metadata i64 %19, metadata !2947, metadata !DIExpression()) #18, !dbg !2952
  %20 = tail call noalias i8* @xmalloc(i64 %19) #18, !dbg !2954
  call void @llvm.dbg.value(metadata i8* %20, metadata !2934, metadata !DIExpression()) #18, !dbg !2935
  %21 = load i32, i32* %11, align 8, !dbg !2955, !tbaa !2082
  %22 = load i8*, i8** %14, align 8, !dbg !2956, !tbaa !2156
  %23 = load i8*, i8** %16, align 8, !dbg !2957, !tbaa !2159
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #18, !dbg !2958
  store i32 %7, i32* %6, align 4, !dbg !2959, !tbaa !1358
  ret i8* %20, !dbg !2960
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2923 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2922, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata i64 %1, metadata !2927, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata i64* %2, metadata !2928, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2929, metadata !DIExpression()), !dbg !2961
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2962
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2962
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2930, metadata !DIExpression()), !dbg !2961
  %7 = tail call i32* @__errno_location() #24, !dbg !2963
  %8 = load i32, i32* %7, align 4, !dbg !2963, !tbaa !1358
  call void @llvm.dbg.value(metadata i32 %8, metadata !2931, metadata !DIExpression()), !dbg !2961
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2964
  %10 = load i32, i32* %9, align 4, !dbg !2964, !tbaa !2133
  %11 = icmp ne i64* %2, null, !dbg !2965
  %12 = xor i1 %11, true, !dbg !2965
  %13 = zext i1 %12 to i32, !dbg !2965
  %14 = or i32 %10, %13, !dbg !2966
  call void @llvm.dbg.value(metadata i32 %14, metadata !2932, metadata !DIExpression()), !dbg !2961
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2967
  %16 = load i32, i32* %15, align 8, !dbg !2967, !tbaa !2082
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2968
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2969
  %19 = load i8*, i8** %18, align 8, !dbg !2969, !tbaa !2156
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2970
  %21 = load i8*, i8** %20, align 8, !dbg !2970, !tbaa !2159
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2971
  %23 = add i64 %22, 1, !dbg !2972
  call void @llvm.dbg.value(metadata i64 %23, metadata !2933, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata i64 %23, metadata !2947, metadata !DIExpression()) #18, !dbg !2973
  %24 = tail call noalias i8* @xmalloc(i64 %23) #18, !dbg !2975
  call void @llvm.dbg.value(metadata i8* %24, metadata !2934, metadata !DIExpression()), !dbg !2961
  %25 = load i32, i32* %15, align 8, !dbg !2976, !tbaa !2082
  %26 = load i8*, i8** %18, align 8, !dbg !2977, !tbaa !2156
  %27 = load i8*, i8** %20, align 8, !dbg !2978, !tbaa !2159
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2979
  store i32 %8, i32* %7, align 4, !dbg !2980, !tbaa !1358
  br i1 %11, label %29, label %30, !dbg !2981

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2982, !tbaa !1399
  br label %30, !dbg !2984

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !2985
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2986 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2990, !tbaa !1255
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2988, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata i32 1, metadata !2989, metadata !DIExpression()), !dbg !2991
  %2 = load i32, i32* @nslots, align 4, !dbg !2992, !tbaa !1358
  %3 = icmp sgt i32 %2, 1, !dbg !2995
  br i1 %3, label %4, label %12, !dbg !2996

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2989, metadata !DIExpression()), !dbg !2991
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2997
  %7 = load i8*, i8** %6, align 8, !dbg !2997, !tbaa !2998
  tail call void @free(i8* %7) #18, !dbg !3000
  %8 = add nuw nsw i64 %5, 1, !dbg !3001
  call void @llvm.dbg.value(metadata i64 %8, metadata !2989, metadata !DIExpression()), !dbg !2991
  %9 = load i32, i32* @nslots, align 4, !dbg !2992, !tbaa !1358
  %10 = sext i32 %9 to i64, !dbg !2995
  %11 = icmp slt i64 %8, %10, !dbg !2995
  br i1 %11, label %4, label %12, !dbg !2996, !llvm.loop !3002

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3004
  %14 = load i8*, i8** %13, align 8, !dbg !3004, !tbaa !2998
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3006
  br i1 %15, label %17, label %16, !dbg !3007

16:                                               ; preds = %12
  tail call void @free(i8* %14) #18, !dbg !3008
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3010, !tbaa !3011
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3012, !tbaa !2998
  br label %17, !dbg !3013

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3014
  br i1 %18, label %21, label %19, !dbg !3016

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3017
  tail call void @free(i8* %20) #18, !dbg !3019
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3020, !tbaa !1255
  br label %21, !dbg !3021

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !3022, !tbaa !1358
  ret void, !dbg !3023
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3024 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3026, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i8* %1, metadata !3027, metadata !DIExpression()), !dbg !3028
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3029
  ret i8* %3, !dbg !3030
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !3031 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3035, metadata !DIExpression()), !dbg !3050
  call void @llvm.dbg.value(metadata i8* %1, metadata !3036, metadata !DIExpression()), !dbg !3050
  call void @llvm.dbg.value(metadata i64 %2, metadata !3037, metadata !DIExpression()), !dbg !3050
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3038, metadata !DIExpression()), !dbg !3050
  %5 = tail call i32* @__errno_location() #24, !dbg !3051
  %6 = load i32, i32* %5, align 4, !dbg !3051, !tbaa !1358
  call void @llvm.dbg.value(metadata i32 %6, metadata !3039, metadata !DIExpression()), !dbg !3050
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3052, !tbaa !1255
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !3040, metadata !DIExpression()), !dbg !3050
  %8 = icmp slt i32 %0, 0, !dbg !3053
  br i1 %8, label %9, label %10, !dbg !3055

9:                                                ; preds = %4
  tail call void @abort() #22, !dbg !3056
  unreachable, !dbg !3056

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3057, !tbaa !1358
  %12 = icmp sgt i32 %11, %0, !dbg !3058
  br i1 %12, label %34, label %13, !dbg !3059

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3060
  call void @llvm.dbg.value(metadata i1 %14, metadata !3041, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !3044, metadata !DIExpression()), !dbg !3061
  %15 = icmp eq i32 %0, 2147483647, !dbg !3062
  br i1 %15, label %16, label %17, !dbg !3064

16:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !3065
  unreachable, !dbg !3065

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !3066
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3066
  %20 = add nuw nsw i32 %0, 1, !dbg !3067
  %21 = sext i32 %20 to i64, !dbg !3068
  %22 = shl nuw nsw i64 %21, 4, !dbg !3069
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #18, !dbg !3070
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3070
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3040, metadata !DIExpression()), !dbg !3050
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3071, !tbaa !1255
  br i1 %14, label %25, label %26, !dbg !3072

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3073, !tbaa.struct !3075
  br label %26, !dbg !3076

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3077, !tbaa !1358
  %28 = sext i32 %27 to i64, !dbg !3078
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3078
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3079
  %31 = sub nsw i32 %20, %27, !dbg !3080
  %32 = sext i32 %31 to i64, !dbg !3081
  %33 = shl nsw i64 %32, 4, !dbg !3082
  call void @llvm.dbg.value(metadata i8* %30, metadata !2480, metadata !DIExpression()) #18, !dbg !3083
  call void @llvm.dbg.value(metadata i32 0, metadata !2486, metadata !DIExpression()) #18, !dbg !3083
  call void @llvm.dbg.value(metadata i64 %33, metadata !2487, metadata !DIExpression()) #18, !dbg !3083
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #18, !dbg !3085
  store i32 %20, i32* @nslots, align 4, !dbg !3086, !tbaa !1358
  br label %34, !dbg !3087

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !3050
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !3040, metadata !DIExpression()), !dbg !3050
  %36 = zext i32 %0 to i64, !dbg !3088
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3089
  %38 = load i64, i64* %37, align 8, !dbg !3089, !tbaa !3011
  call void @llvm.dbg.value(metadata i64 %38, metadata !3045, metadata !DIExpression()), !dbg !3090
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3091
  %40 = load i8*, i8** %39, align 8, !dbg !3091, !tbaa !2998
  call void @llvm.dbg.value(metadata i8* %40, metadata !3047, metadata !DIExpression()), !dbg !3090
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3092
  %42 = load i32, i32* %41, align 4, !dbg !3092, !tbaa !2133
  %43 = or i32 %42, 1, !dbg !3093
  call void @llvm.dbg.value(metadata i32 %43, metadata !3048, metadata !DIExpression()), !dbg !3090
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3094
  %45 = load i32, i32* %44, align 8, !dbg !3094, !tbaa !2082
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3095
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3096
  %48 = load i8*, i8** %47, align 8, !dbg !3096, !tbaa !2156
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3097
  %50 = load i8*, i8** %49, align 8, !dbg !3097, !tbaa !2159
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3098
  call void @llvm.dbg.value(metadata i64 %51, metadata !3049, metadata !DIExpression()), !dbg !3090
  %52 = icmp ugt i64 %38, %51, !dbg !3099
  br i1 %52, label %63, label %53, !dbg !3101

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !3102
  call void @llvm.dbg.value(metadata i64 %54, metadata !3045, metadata !DIExpression()), !dbg !3090
  store i64 %54, i64* %37, align 8, !dbg !3104, !tbaa !3011
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3105
  br i1 %55, label %57, label %56, !dbg !3107

56:                                               ; preds = %53
  tail call void @free(i8* %40) #18, !dbg !3108
  br label %57, !dbg !3108

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2947, metadata !DIExpression()) #18, !dbg !3109
  %58 = tail call noalias i8* @xmalloc(i64 %54) #18, !dbg !3111
  call void @llvm.dbg.value(metadata i8* %58, metadata !3047, metadata !DIExpression()), !dbg !3090
  store i8* %58, i8** %39, align 8, !dbg !3112, !tbaa !2998
  %59 = load i32, i32* %44, align 8, !dbg !3113, !tbaa !2082
  %60 = load i8*, i8** %47, align 8, !dbg !3114, !tbaa !2156
  %61 = load i8*, i8** %49, align 8, !dbg !3115, !tbaa !2159
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3116
  br label %63, !dbg !3117

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3090
  call void @llvm.dbg.value(metadata i8* %64, metadata !3047, metadata !DIExpression()), !dbg !3090
  store i32 %6, i32* %5, align 4, !dbg !3118, !tbaa !1358
  ret i8* %64, !dbg !3119
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3120 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3124, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.value(metadata i8* %1, metadata !3125, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.value(metadata i64 %2, metadata !3126, metadata !DIExpression()), !dbg !3127
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3128
  ret i8* %4, !dbg !3129
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !3130 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3132, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i32 0, metadata !3026, metadata !DIExpression()) #18, !dbg !3134
  call void @llvm.dbg.value(metadata i8* %0, metadata !3027, metadata !DIExpression()) #18, !dbg !3134
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #18, !dbg !3136
  ret i8* %2, !dbg !3137
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3138 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3142, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.value(metadata i64 %1, metadata !3143, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.value(metadata i32 0, metadata !3124, metadata !DIExpression()) #18, !dbg !3145
  call void @llvm.dbg.value(metadata i8* %0, metadata !3125, metadata !DIExpression()) #18, !dbg !3145
  call void @llvm.dbg.value(metadata i64 %1, metadata !3126, metadata !DIExpression()) #18, !dbg !3145
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #18, !dbg !3147
  ret i8* %3, !dbg !3148
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3149 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3151, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata i32 %1, metadata !3152, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata i8* %2, metadata !3153, metadata !DIExpression()), !dbg !3155
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3156
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3156
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3154, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata i32 %1, metadata !3158, metadata !DIExpression()) #18, !dbg !3164
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3163, metadata !DIExpression()) #18, !dbg !3166
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #18, !dbg !3166, !alias.scope !3167
  %6 = icmp eq i32 %1, 10, !dbg !3170
  br i1 %6, label %7, label %8, !dbg !3172

7:                                                ; preds = %3
  tail call void @abort() #22, !dbg !3173, !noalias !3167
  unreachable, !dbg !3173

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3174
  store i32 %1, i32* %9, align 8, !dbg !3175, !tbaa !2082, !alias.scope !3167
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3176
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3177
  ret i8* %10, !dbg !3178
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3179 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3183, metadata !DIExpression()), !dbg !3188
  call void @llvm.dbg.value(metadata i32 %1, metadata !3184, metadata !DIExpression()), !dbg !3188
  call void @llvm.dbg.value(metadata i8* %2, metadata !3185, metadata !DIExpression()), !dbg !3188
  call void @llvm.dbg.value(metadata i64 %3, metadata !3186, metadata !DIExpression()), !dbg !3188
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3189
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3189
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3187, metadata !DIExpression()), !dbg !3190
  call void @llvm.dbg.value(metadata i32 %1, metadata !3158, metadata !DIExpression()) #18, !dbg !3191
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3163, metadata !DIExpression()) #18, !dbg !3193
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #18, !dbg !3193, !alias.scope !3194
  %7 = icmp eq i32 %1, 10, !dbg !3197
  br i1 %7, label %8, label %9, !dbg !3198

8:                                                ; preds = %4
  tail call void @abort() #22, !dbg !3199, !noalias !3194
  unreachable, !dbg !3199

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3200
  store i32 %1, i32* %10, align 8, !dbg !3201, !tbaa !2082, !alias.scope !3194
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3202
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3203
  ret i8* %11, !dbg !3204
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3205 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3163, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3154, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata i32 %0, metadata !3209, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %1, metadata !3210, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i32 0, metadata !3151, metadata !DIExpression()) #18, !dbg !3216
  call void @llvm.dbg.value(metadata i32 %0, metadata !3152, metadata !DIExpression()) #18, !dbg !3216
  call void @llvm.dbg.value(metadata i8* %1, metadata !3153, metadata !DIExpression()) #18, !dbg !3216
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3217
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !3217
  call void @llvm.dbg.value(metadata i32 %0, metadata !3158, metadata !DIExpression()) #18, !dbg !3218
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #18, !dbg !3211, !alias.scope !3219
  %5 = icmp eq i32 %0, 10, !dbg !3222
  br i1 %5, label %6, label %7, !dbg !3223

6:                                                ; preds = %2
  tail call void @abort() #22, !dbg !3224, !noalias !3219
  unreachable, !dbg !3224

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3225
  store i32 %0, i32* %8, align 8, !dbg !3226, !tbaa !2082, !alias.scope !3219
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #18, !dbg !3227
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !3228
  ret i8* %9, !dbg !3229
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3230 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3163, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3187, metadata !DIExpression()), !dbg !3240
  call void @llvm.dbg.value(metadata i32 %0, metadata !3234, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata i8* %1, metadata !3235, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata i64 %2, metadata !3236, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata i32 0, metadata !3183, metadata !DIExpression()) #18, !dbg !3242
  call void @llvm.dbg.value(metadata i32 %0, metadata !3184, metadata !DIExpression()) #18, !dbg !3242
  call void @llvm.dbg.value(metadata i8* %1, metadata !3185, metadata !DIExpression()) #18, !dbg !3242
  call void @llvm.dbg.value(metadata i64 %2, metadata !3186, metadata !DIExpression()) #18, !dbg !3242
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3243
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3243
  call void @llvm.dbg.value(metadata i32 %0, metadata !3158, metadata !DIExpression()) #18, !dbg !3244
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #18, !dbg !3237, !alias.scope !3245
  %6 = icmp eq i32 %0, 10, !dbg !3248
  br i1 %6, label %7, label %8, !dbg !3249

7:                                                ; preds = %3
  tail call void @abort() #22, !dbg !3250, !noalias !3245
  unreachable, !dbg !3250

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3251
  store i32 %0, i32* %9, align 8, !dbg !3252, !tbaa !2082, !alias.scope !3245
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #18, !dbg !3253
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3254
  ret i8* %10, !dbg !3255
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !3256 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3260, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata i64 %1, metadata !3261, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata i8 %2, metadata !3262, metadata !DIExpression()), !dbg !3264
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3265
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3265
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3263, metadata !DIExpression()), !dbg !3266
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3267, !tbaa.struct !3268
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2100, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.value(metadata i8 %2, metadata !2101, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.value(metadata i32 1, metadata !2102, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.value(metadata i8 %2, metadata !2103, metadata !DIExpression()), !dbg !3269
  %6 = lshr i8 %2, 5, !dbg !3271
  %7 = zext i8 %6 to i64, !dbg !3271
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3272
  call void @llvm.dbg.value(metadata i32* %8, metadata !2104, metadata !DIExpression()), !dbg !3269
  %9 = and i8 %2, 31, !dbg !3273
  %10 = zext i8 %9 to i32, !dbg !3273
  call void @llvm.dbg.value(metadata i32 %10, metadata !2106, metadata !DIExpression()), !dbg !3269
  %11 = load i32, i32* %8, align 4, !dbg !3274, !tbaa !1358
  %12 = lshr i32 %11, %10, !dbg !3275
  %13 = and i32 %12, 1, !dbg !3276
  call void @llvm.dbg.value(metadata i32 %13, metadata !2107, metadata !DIExpression()), !dbg !3269
  %14 = xor i32 %13, 1, !dbg !3277
  %15 = shl i32 %14, %10, !dbg !3278
  %16 = xor i32 %15, %11, !dbg !3279
  store i32 %16, i32* %8, align 4, !dbg !3279, !tbaa !1358
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3280
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3281
  ret i8* %17, !dbg !3282
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !3283 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3263, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i8* %0, metadata !3287, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i8 %1, metadata !3288, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i8* %0, metadata !3260, metadata !DIExpression()) #18, !dbg !3292
  call void @llvm.dbg.value(metadata i64 -1, metadata !3261, metadata !DIExpression()) #18, !dbg !3292
  call void @llvm.dbg.value(metadata i8 %1, metadata !3262, metadata !DIExpression()) #18, !dbg !3292
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3293
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !3293
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3294, !tbaa.struct !3268
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2100, metadata !DIExpression()) #18, !dbg !3295
  call void @llvm.dbg.value(metadata i8 %1, metadata !2101, metadata !DIExpression()) #18, !dbg !3295
  call void @llvm.dbg.value(metadata i32 1, metadata !2102, metadata !DIExpression()) #18, !dbg !3295
  call void @llvm.dbg.value(metadata i8 %1, metadata !2103, metadata !DIExpression()) #18, !dbg !3295
  %5 = lshr i8 %1, 5, !dbg !3297
  %6 = zext i8 %5 to i64, !dbg !3297
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3298
  call void @llvm.dbg.value(metadata i32* %7, metadata !2104, metadata !DIExpression()) #18, !dbg !3295
  %8 = and i8 %1, 31, !dbg !3299
  %9 = zext i8 %8 to i32, !dbg !3299
  call void @llvm.dbg.value(metadata i32 %9, metadata !2106, metadata !DIExpression()) #18, !dbg !3295
  %10 = load i32, i32* %7, align 4, !dbg !3300, !tbaa !1358
  %11 = lshr i32 %10, %9, !dbg !3301
  %12 = and i32 %11, 1, !dbg !3302
  call void @llvm.dbg.value(metadata i32 %12, metadata !2107, metadata !DIExpression()) #18, !dbg !3295
  %13 = xor i32 %12, 1, !dbg !3303
  %14 = shl i32 %13, %9, !dbg !3304
  %15 = xor i32 %14, %10, !dbg !3305
  store i32 %15, i32* %7, align 4, !dbg !3305, !tbaa !1358
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #18, !dbg !3306
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !3307
  ret i8* %16, !dbg !3308
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !3309 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3263, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i8* %0, metadata !3311, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata i8* %0, metadata !3287, metadata !DIExpression()) #18, !dbg !3316
  call void @llvm.dbg.value(metadata i8 58, metadata !3288, metadata !DIExpression()) #18, !dbg !3316
  call void @llvm.dbg.value(metadata i8* %0, metadata !3260, metadata !DIExpression()) #18, !dbg !3317
  call void @llvm.dbg.value(metadata i64 -1, metadata !3261, metadata !DIExpression()) #18, !dbg !3317
  call void @llvm.dbg.value(metadata i8 58, metadata !3262, metadata !DIExpression()) #18, !dbg !3317
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3318
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #18, !dbg !3318
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3319, !tbaa.struct !3268
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2100, metadata !DIExpression()) #18, !dbg !3320
  call void @llvm.dbg.value(metadata i8 58, metadata !2101, metadata !DIExpression()) #18, !dbg !3320
  call void @llvm.dbg.value(metadata i32 1, metadata !2102, metadata !DIExpression()) #18, !dbg !3320
  call void @llvm.dbg.value(metadata i8 58, metadata !2103, metadata !DIExpression()) #18, !dbg !3320
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3322
  call void @llvm.dbg.value(metadata i32* %4, metadata !2104, metadata !DIExpression()) #18, !dbg !3320
  call void @llvm.dbg.value(metadata i32 26, metadata !2106, metadata !DIExpression()) #18, !dbg !3320
  %5 = load i32, i32* %4, align 4, !dbg !3323, !tbaa !1358
  call void @llvm.dbg.value(metadata i32 %5, metadata !2107, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #18, !dbg !3320
  %6 = or i32 %5, 67108864, !dbg !3324
  store i32 %6, i32* %4, align 4, !dbg !3324, !tbaa !1358
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #18, !dbg !3325
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #18, !dbg !3326
  ret i8* %7, !dbg !3327
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3328 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3263, metadata !DIExpression()), !dbg !3332
  call void @llvm.dbg.value(metadata i8* %0, metadata !3330, metadata !DIExpression()), !dbg !3334
  call void @llvm.dbg.value(metadata i64 %1, metadata !3331, metadata !DIExpression()), !dbg !3334
  call void @llvm.dbg.value(metadata i8* %0, metadata !3260, metadata !DIExpression()) #18, !dbg !3335
  call void @llvm.dbg.value(metadata i64 %1, metadata !3261, metadata !DIExpression()) #18, !dbg !3335
  call void @llvm.dbg.value(metadata i8 58, metadata !3262, metadata !DIExpression()) #18, !dbg !3335
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3336
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !3336
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3337, !tbaa.struct !3268
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2100, metadata !DIExpression()) #18, !dbg !3338
  call void @llvm.dbg.value(metadata i8 58, metadata !2101, metadata !DIExpression()) #18, !dbg !3338
  call void @llvm.dbg.value(metadata i32 1, metadata !2102, metadata !DIExpression()) #18, !dbg !3338
  call void @llvm.dbg.value(metadata i8 58, metadata !2103, metadata !DIExpression()) #18, !dbg !3338
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3340
  call void @llvm.dbg.value(metadata i32* %5, metadata !2104, metadata !DIExpression()) #18, !dbg !3338
  call void @llvm.dbg.value(metadata i32 26, metadata !2106, metadata !DIExpression()) #18, !dbg !3338
  %6 = load i32, i32* %5, align 4, !dbg !3341, !tbaa !1358
  call void @llvm.dbg.value(metadata i32 %6, metadata !2107, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #18, !dbg !3338
  %7 = or i32 %6, 67108864, !dbg !3342
  store i32 %7, i32* %5, align 4, !dbg !3342, !tbaa !1358
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #18, !dbg !3343
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !3344
  ret i8* %8, !dbg !3345
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3346 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3163, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3352
  call void @llvm.dbg.value(metadata i32 %0, metadata !3348, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i32 %1, metadata !3349, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i8* %2, metadata !3350, metadata !DIExpression()), !dbg !3354
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3355
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3355
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3351, metadata !DIExpression()), !dbg !3356
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3357
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3357
  call void @llvm.dbg.value(metadata i32 %1, metadata !3158, metadata !DIExpression()) #18, !dbg !3358
  call void @llvm.dbg.value(metadata i32 0, metadata !3163, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3358
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !3352, !alias.scope !3359
  %8 = icmp eq i32 %1, 10, !dbg !3362
  br i1 %8, label %9, label %10, !dbg !3363

9:                                                ; preds = %3
  tail call void @abort() #22, !dbg !3364, !noalias !3359
  unreachable, !dbg !3364

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3163, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3358
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3357
  store i32 %1, i32* %11, align 8, !dbg !3357, !tbaa.struct !3268
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3357
  %13 = bitcast i32* %12 to i8*, !dbg !3357
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !3357, !tbaa.struct !3268
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3357
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2100, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i8 58, metadata !2101, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i32 1, metadata !2102, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i8 58, metadata !2103, metadata !DIExpression()), !dbg !3365
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3367
  call void @llvm.dbg.value(metadata i32* %14, metadata !2104, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i32 26, metadata !2106, metadata !DIExpression()), !dbg !3365
  %15 = load i32, i32* %14, align 4, !dbg !3368, !tbaa !1358
  call void @llvm.dbg.value(metadata i32 %15, metadata !2107, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3365
  %16 = or i32 %15, 67108864, !dbg !3369
  store i32 %16, i32* %14, align 4, !dbg !3369, !tbaa !1358
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3370
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3371
  ret i8* %17, !dbg !3372
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3373 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3381, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.value(metadata i32 %0, metadata !3377, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata i8* %1, metadata !3378, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata i8* %2, metadata !3379, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata i8* %3, metadata !3380, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata i32 %0, metadata !3386, metadata !DIExpression()) #18, !dbg !3394
  call void @llvm.dbg.value(metadata i8* %1, metadata !3387, metadata !DIExpression()) #18, !dbg !3394
  call void @llvm.dbg.value(metadata i8* %2, metadata !3388, metadata !DIExpression()) #18, !dbg !3394
  call void @llvm.dbg.value(metadata i8* %3, metadata !3389, metadata !DIExpression()) #18, !dbg !3394
  call void @llvm.dbg.value(metadata i64 -1, metadata !3390, metadata !DIExpression()) #18, !dbg !3394
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3395
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3395
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3396, !tbaa.struct !3268
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2140, metadata !DIExpression()) #18, !dbg !3397
  call void @llvm.dbg.value(metadata i8* %1, metadata !2141, metadata !DIExpression()) #18, !dbg !3397
  call void @llvm.dbg.value(metadata i8* %2, metadata !2142, metadata !DIExpression()) #18, !dbg !3397
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2140, metadata !DIExpression()) #18, !dbg !3397
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3399
  store i32 10, i32* %7, align 8, !dbg !3400, !tbaa !2082
  %8 = icmp ne i8* %1, null, !dbg !3401
  %9 = icmp ne i8* %2, null, !dbg !3402
  %10 = and i1 %8, %9, !dbg !3403
  br i1 %10, label %12, label %11, !dbg !3403

11:                                               ; preds = %4
  tail call void @abort() #22, !dbg !3404
  unreachable, !dbg !3404

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3405
  store i8* %1, i8** %13, align 8, !dbg !3406, !tbaa !2156
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3407
  store i8* %2, i8** %14, align 8, !dbg !3408, !tbaa !2159
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #18, !dbg !3409
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3410
  ret i8* %15, !dbg !3411
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !3382 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3386, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata i8* %1, metadata !3387, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata i8* %2, metadata !3388, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata i8* %3, metadata !3389, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata i64 %4, metadata !3390, metadata !DIExpression()), !dbg !3412
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3413
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #18, !dbg !3413
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3381, metadata !DIExpression()), !dbg !3414
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3415, !tbaa.struct !3268
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2140, metadata !DIExpression()) #18, !dbg !3416
  call void @llvm.dbg.value(metadata i8* %1, metadata !2141, metadata !DIExpression()) #18, !dbg !3416
  call void @llvm.dbg.value(metadata i8* %2, metadata !2142, metadata !DIExpression()) #18, !dbg !3416
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2140, metadata !DIExpression()) #18, !dbg !3416
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3418
  store i32 10, i32* %8, align 8, !dbg !3419, !tbaa !2082
  %9 = icmp ne i8* %1, null, !dbg !3420
  %10 = icmp ne i8* %2, null, !dbg !3421
  %11 = and i1 %9, %10, !dbg !3422
  br i1 %11, label %13, label %12, !dbg !3422

12:                                               ; preds = %5
  tail call void @abort() #22, !dbg !3423
  unreachable, !dbg !3423

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3424
  store i8* %1, i8** %14, align 8, !dbg !3425, !tbaa !2156
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3426
  store i8* %2, i8** %15, align 8, !dbg !3427, !tbaa !2159
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3428
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #18, !dbg !3429
  ret i8* %16, !dbg !3430
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3431 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3381, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.value(metadata i8* %0, metadata !3435, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.value(metadata i8* %1, metadata !3436, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.value(metadata i8* %2, metadata !3437, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.value(metadata i32 0, metadata !3377, metadata !DIExpression()) #18, !dbg !3442
  call void @llvm.dbg.value(metadata i8* %0, metadata !3378, metadata !DIExpression()) #18, !dbg !3442
  call void @llvm.dbg.value(metadata i8* %1, metadata !3379, metadata !DIExpression()) #18, !dbg !3442
  call void @llvm.dbg.value(metadata i8* %2, metadata !3380, metadata !DIExpression()) #18, !dbg !3442
  call void @llvm.dbg.value(metadata i32 0, metadata !3386, metadata !DIExpression()) #18, !dbg !3443
  call void @llvm.dbg.value(metadata i8* %0, metadata !3387, metadata !DIExpression()) #18, !dbg !3443
  call void @llvm.dbg.value(metadata i8* %1, metadata !3388, metadata !DIExpression()) #18, !dbg !3443
  call void @llvm.dbg.value(metadata i8* %2, metadata !3389, metadata !DIExpression()) #18, !dbg !3443
  call void @llvm.dbg.value(metadata i64 -1, metadata !3390, metadata !DIExpression()) #18, !dbg !3443
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3444
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3444
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3445, !tbaa.struct !3268
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2140, metadata !DIExpression()) #18, !dbg !3446
  call void @llvm.dbg.value(metadata i8* %0, metadata !2141, metadata !DIExpression()) #18, !dbg !3446
  call void @llvm.dbg.value(metadata i8* %1, metadata !2142, metadata !DIExpression()) #18, !dbg !3446
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2140, metadata !DIExpression()) #18, !dbg !3446
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3448
  store i32 10, i32* %6, align 8, !dbg !3449, !tbaa !2082
  %7 = icmp ne i8* %0, null, !dbg !3450
  %8 = icmp ne i8* %1, null, !dbg !3451
  %9 = and i1 %7, %8, !dbg !3452
  br i1 %9, label %11, label %10, !dbg !3452

10:                                               ; preds = %3
  tail call void @abort() #22, !dbg !3453
  unreachable, !dbg !3453

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3454
  store i8* %0, i8** %12, align 8, !dbg !3455, !tbaa !2156
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3456
  store i8* %1, i8** %13, align 8, !dbg !3457, !tbaa !2159
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #18, !dbg !3458
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3459
  ret i8* %14, !dbg !3460
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3461 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3381, metadata !DIExpression()), !dbg !3469
  call void @llvm.dbg.value(metadata i8* %0, metadata !3465, metadata !DIExpression()), !dbg !3471
  call void @llvm.dbg.value(metadata i8* %1, metadata !3466, metadata !DIExpression()), !dbg !3471
  call void @llvm.dbg.value(metadata i8* %2, metadata !3467, metadata !DIExpression()), !dbg !3471
  call void @llvm.dbg.value(metadata i64 %3, metadata !3468, metadata !DIExpression()), !dbg !3471
  call void @llvm.dbg.value(metadata i32 0, metadata !3386, metadata !DIExpression()) #18, !dbg !3472
  call void @llvm.dbg.value(metadata i8* %0, metadata !3387, metadata !DIExpression()) #18, !dbg !3472
  call void @llvm.dbg.value(metadata i8* %1, metadata !3388, metadata !DIExpression()) #18, !dbg !3472
  call void @llvm.dbg.value(metadata i8* %2, metadata !3389, metadata !DIExpression()) #18, !dbg !3472
  call void @llvm.dbg.value(metadata i64 %3, metadata !3390, metadata !DIExpression()) #18, !dbg !3472
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3473
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3473
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3474, !tbaa.struct !3268
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2140, metadata !DIExpression()) #18, !dbg !3475
  call void @llvm.dbg.value(metadata i8* %0, metadata !2141, metadata !DIExpression()) #18, !dbg !3475
  call void @llvm.dbg.value(metadata i8* %1, metadata !2142, metadata !DIExpression()) #18, !dbg !3475
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2140, metadata !DIExpression()) #18, !dbg !3475
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3477
  store i32 10, i32* %7, align 8, !dbg !3478, !tbaa !2082
  %8 = icmp ne i8* %0, null, !dbg !3479
  %9 = icmp ne i8* %1, null, !dbg !3480
  %10 = and i1 %8, %9, !dbg !3481
  br i1 %10, label %12, label %11, !dbg !3481

11:                                               ; preds = %4
  tail call void @abort() #22, !dbg !3482
  unreachable, !dbg !3482

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3483
  store i8* %0, i8** %13, align 8, !dbg !3484, !tbaa !2156
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3485
  store i8* %1, i8** %14, align 8, !dbg !3486, !tbaa !2159
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #18, !dbg !3487
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3488
  ret i8* %15, !dbg !3489
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3490 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3494, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.value(metadata i8* %1, metadata !3495, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.value(metadata i64 %2, metadata !3496, metadata !DIExpression()), !dbg !3497
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3498
  ret i8* %4, !dbg !3499
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3500 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3504, metadata !DIExpression()), !dbg !3506
  call void @llvm.dbg.value(metadata i64 %1, metadata !3505, metadata !DIExpression()), !dbg !3506
  call void @llvm.dbg.value(metadata i32 0, metadata !3494, metadata !DIExpression()) #18, !dbg !3507
  call void @llvm.dbg.value(metadata i8* %0, metadata !3495, metadata !DIExpression()) #18, !dbg !3507
  call void @llvm.dbg.value(metadata i64 %1, metadata !3496, metadata !DIExpression()) #18, !dbg !3507
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !3509
  ret i8* %3, !dbg !3510
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3511 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3515, metadata !DIExpression()), !dbg !3517
  call void @llvm.dbg.value(metadata i8* %1, metadata !3516, metadata !DIExpression()), !dbg !3517
  call void @llvm.dbg.value(metadata i32 %0, metadata !3494, metadata !DIExpression()) #18, !dbg !3518
  call void @llvm.dbg.value(metadata i8* %1, metadata !3495, metadata !DIExpression()) #18, !dbg !3518
  call void @llvm.dbg.value(metadata i64 -1, metadata !3496, metadata !DIExpression()) #18, !dbg !3518
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !3520
  ret i8* %3, !dbg !3521
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3522 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3524, metadata !DIExpression()), !dbg !3525
  call void @llvm.dbg.value(metadata i32 0, metadata !3515, metadata !DIExpression()) #18, !dbg !3526
  call void @llvm.dbg.value(metadata i8* %0, metadata !3516, metadata !DIExpression()) #18, !dbg !3526
  call void @llvm.dbg.value(metadata i32 0, metadata !3494, metadata !DIExpression()) #18, !dbg !3528
  call void @llvm.dbg.value(metadata i8* %0, metadata !3495, metadata !DIExpression()) #18, !dbg !3528
  call void @llvm.dbg.value(metadata i64 -1, metadata !3496, metadata !DIExpression()) #18, !dbg !3528
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !3530
  ret i8* %2, !dbg !3531
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3532 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3539, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i8* %1, metadata !3540, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i8* %2, metadata !3541, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i8* %3, metadata !3542, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i8** %4, metadata !3543, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i64 %5, metadata !3544, metadata !DIExpression()), !dbg !3545
  %7 = icmp eq i8* %1, null, !dbg !3546
  br i1 %7, label %10, label %8, !dbg !3548

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.82, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #18, !dbg !3549
  br label %12, !dbg !3549

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.83, i64 0, i64 0), i8* %2, i8* %3) #18, !dbg !3550
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.84, i64 0, i64 0), i32 5) #18, !dbg !3551
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #18, !dbg !3551
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.85, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3552
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.86, i64 0, i64 0), i32 5) #18, !dbg !3553
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.87, i64 0, i64 0)) #18, !dbg !3553
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.85, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3554
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
  ], !dbg !3555

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.88, i64 0, i64 0), i32 5) #18, !dbg !3556
  %21 = load i8*, i8** %4, align 8, !dbg !3556, !tbaa !1255
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #18, !dbg !3556
  br label %147, !dbg !3558

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.89, i64 0, i64 0), i32 5) #18, !dbg !3559
  %25 = load i8*, i8** %4, align 8, !dbg !3559, !tbaa !1255
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3559
  %27 = load i8*, i8** %26, align 8, !dbg !3559, !tbaa !1255
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #18, !dbg !3559
  br label %147, !dbg !3560

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.90, i64 0, i64 0), i32 5) #18, !dbg !3561
  %31 = load i8*, i8** %4, align 8, !dbg !3561, !tbaa !1255
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3561
  %33 = load i8*, i8** %32, align 8, !dbg !3561, !tbaa !1255
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3561
  %35 = load i8*, i8** %34, align 8, !dbg !3561, !tbaa !1255
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #18, !dbg !3561
  br label %147, !dbg !3562

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.91, i64 0, i64 0), i32 5) #18, !dbg !3563
  %39 = load i8*, i8** %4, align 8, !dbg !3563, !tbaa !1255
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3563
  %41 = load i8*, i8** %40, align 8, !dbg !3563, !tbaa !1255
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3563
  %43 = load i8*, i8** %42, align 8, !dbg !3563, !tbaa !1255
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3563
  %45 = load i8*, i8** %44, align 8, !dbg !3563, !tbaa !1255
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #18, !dbg !3563
  br label %147, !dbg !3564

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.92, i64 0, i64 0), i32 5) #18, !dbg !3565
  %49 = load i8*, i8** %4, align 8, !dbg !3565, !tbaa !1255
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3565
  %51 = load i8*, i8** %50, align 8, !dbg !3565, !tbaa !1255
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3565
  %53 = load i8*, i8** %52, align 8, !dbg !3565, !tbaa !1255
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3565
  %55 = load i8*, i8** %54, align 8, !dbg !3565, !tbaa !1255
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3565
  %57 = load i8*, i8** %56, align 8, !dbg !3565, !tbaa !1255
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #18, !dbg !3565
  br label %147, !dbg !3566

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.93, i64 0, i64 0), i32 5) #18, !dbg !3567
  %61 = load i8*, i8** %4, align 8, !dbg !3567, !tbaa !1255
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3567
  %63 = load i8*, i8** %62, align 8, !dbg !3567, !tbaa !1255
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3567
  %65 = load i8*, i8** %64, align 8, !dbg !3567, !tbaa !1255
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3567
  %67 = load i8*, i8** %66, align 8, !dbg !3567, !tbaa !1255
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3567
  %69 = load i8*, i8** %68, align 8, !dbg !3567, !tbaa !1255
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3567
  %71 = load i8*, i8** %70, align 8, !dbg !3567, !tbaa !1255
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #18, !dbg !3567
  br label %147, !dbg !3568

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.94, i64 0, i64 0), i32 5) #18, !dbg !3569
  %75 = load i8*, i8** %4, align 8, !dbg !3569, !tbaa !1255
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3569
  %77 = load i8*, i8** %76, align 8, !dbg !3569, !tbaa !1255
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3569
  %79 = load i8*, i8** %78, align 8, !dbg !3569, !tbaa !1255
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3569
  %81 = load i8*, i8** %80, align 8, !dbg !3569, !tbaa !1255
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3569
  %83 = load i8*, i8** %82, align 8, !dbg !3569, !tbaa !1255
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3569
  %85 = load i8*, i8** %84, align 8, !dbg !3569, !tbaa !1255
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3569
  %87 = load i8*, i8** %86, align 8, !dbg !3569, !tbaa !1255
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #18, !dbg !3569
  br label %147, !dbg !3570

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.95, i64 0, i64 0), i32 5) #18, !dbg !3571
  %91 = load i8*, i8** %4, align 8, !dbg !3571, !tbaa !1255
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3571
  %93 = load i8*, i8** %92, align 8, !dbg !3571, !tbaa !1255
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3571
  %95 = load i8*, i8** %94, align 8, !dbg !3571, !tbaa !1255
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3571
  %97 = load i8*, i8** %96, align 8, !dbg !3571, !tbaa !1255
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3571
  %99 = load i8*, i8** %98, align 8, !dbg !3571, !tbaa !1255
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3571
  %101 = load i8*, i8** %100, align 8, !dbg !3571, !tbaa !1255
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3571
  %103 = load i8*, i8** %102, align 8, !dbg !3571, !tbaa !1255
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3571
  %105 = load i8*, i8** %104, align 8, !dbg !3571, !tbaa !1255
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #18, !dbg !3571
  br label %147, !dbg !3572

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.96, i64 0, i64 0), i32 5) #18, !dbg !3573
  %109 = load i8*, i8** %4, align 8, !dbg !3573, !tbaa !1255
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3573
  %111 = load i8*, i8** %110, align 8, !dbg !3573, !tbaa !1255
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3573
  %113 = load i8*, i8** %112, align 8, !dbg !3573, !tbaa !1255
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3573
  %115 = load i8*, i8** %114, align 8, !dbg !3573, !tbaa !1255
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3573
  %117 = load i8*, i8** %116, align 8, !dbg !3573, !tbaa !1255
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3573
  %119 = load i8*, i8** %118, align 8, !dbg !3573, !tbaa !1255
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3573
  %121 = load i8*, i8** %120, align 8, !dbg !3573, !tbaa !1255
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3573
  %123 = load i8*, i8** %122, align 8, !dbg !3573, !tbaa !1255
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3573
  %125 = load i8*, i8** %124, align 8, !dbg !3573, !tbaa !1255
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #18, !dbg !3573
  br label %147, !dbg !3574

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.97, i64 0, i64 0), i32 5) #18, !dbg !3575
  %129 = load i8*, i8** %4, align 8, !dbg !3575, !tbaa !1255
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3575
  %131 = load i8*, i8** %130, align 8, !dbg !3575, !tbaa !1255
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3575
  %133 = load i8*, i8** %132, align 8, !dbg !3575, !tbaa !1255
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3575
  %135 = load i8*, i8** %134, align 8, !dbg !3575, !tbaa !1255
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3575
  %137 = load i8*, i8** %136, align 8, !dbg !3575, !tbaa !1255
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3575
  %139 = load i8*, i8** %138, align 8, !dbg !3575, !tbaa !1255
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3575
  %141 = load i8*, i8** %140, align 8, !dbg !3575, !tbaa !1255
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3575
  %143 = load i8*, i8** %142, align 8, !dbg !3575, !tbaa !1255
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3575
  %145 = load i8*, i8** %144, align 8, !dbg !3575, !tbaa !1255
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #18, !dbg !3575
  br label %147, !dbg !3576

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3577
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3578 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3582, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i8* %1, metadata !3583, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i8* %2, metadata !3584, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i8* %3, metadata !3585, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i8** %4, metadata !3586, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i64 0, metadata !3587, metadata !DIExpression()), !dbg !3588
  br label %6, !dbg !3589

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3591
  call void @llvm.dbg.value(metadata i64 %7, metadata !3587, metadata !DIExpression()), !dbg !3588
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3592
  %9 = load i8*, i8** %8, align 8, !dbg !3592, !tbaa !1255
  %10 = icmp eq i8* %9, null, !dbg !3594
  %11 = add i64 %7, 1, !dbg !3595
  call void @llvm.dbg.value(metadata i64 %11, metadata !3587, metadata !DIExpression()), !dbg !3588
  br i1 %10, label %12, label %6, !dbg !3594, !llvm.loop !3596

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3587, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i64 %7, metadata !3587, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i64 %7, metadata !3587, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i64 %7, metadata !3587, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i64 %7, metadata !3587, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i64 %7, metadata !3587, metadata !DIExpression()), !dbg !3588
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3598
  ret void, !dbg !3599
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3600 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3611, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata i8* %1, metadata !3612, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata i8* %2, metadata !3613, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata i8* %3, metadata !3614, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3615, metadata !DIExpression()), !dbg !3619
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3620
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #18, !dbg !3620
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3617, metadata !DIExpression()), !dbg !3621
  call void @llvm.dbg.value(metadata i64 0, metadata !3616, metadata !DIExpression()), !dbg !3619
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !3622
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !3622
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !3622
  %11 = load i32, i32* %8, align 8, !dbg !3625
  %12 = icmp ult i32 %11, 41, !dbg !3625
  br i1 %12, label %13, label %18, !dbg !3625

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3625
  %15 = zext i32 %11 to i64, !dbg !3625
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3625
  %17 = add nuw nsw i32 %11, 8, !dbg !3625
  store i32 %17, i32* %8, align 8, !dbg !3625
  br label %21, !dbg !3625

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3625
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3625
  store i8* %20, i8** %9, align 8, !dbg !3625
  br label %21, !dbg !3625

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3625
  %25 = load i8*, i8** %24, align 8, !dbg !3625
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3626
  store i8* %25, i8** %26, align 16, !dbg !3627, !tbaa !1255
  %27 = icmp eq i8* %25, null, !dbg !3628
  br i1 %27, label %30, label %28, !dbg !3629

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3616, metadata !DIExpression()), !dbg !3619
  %29 = icmp ult i32 %22, 41, !dbg !3625
  br i1 %29, label %35, label %32, !dbg !3625

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3630
  call void @llvm.dbg.value(metadata i64 %31, metadata !3616, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata i64 %31, metadata !3616, metadata !DIExpression()), !dbg !3619
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3631
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #18, !dbg !3632
  ret void, !dbg !3632

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3625
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3625
  store i8* %34, i8** %9, align 8, !dbg !3625
  br label %40, !dbg !3625

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3625
  %37 = zext i32 %22 to i64, !dbg !3625
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3625
  %39 = add nuw nsw i32 %22, 8, !dbg !3625
  store i32 %39, i32* %8, align 8, !dbg !3625
  br label %40, !dbg !3625

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3625
  %44 = load i8*, i8** %43, align 8, !dbg !3625
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3626
  store i8* %44, i8** %45, align 8, !dbg !3627, !tbaa !1255
  %46 = icmp eq i8* %44, null, !dbg !3628
  br i1 %46, label %30, label %47, !dbg !3629

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3616, metadata !DIExpression()), !dbg !3619
  %48 = icmp ult i32 %41, 41, !dbg !3625
  br i1 %48, label %52, label %49, !dbg !3625

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3625
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3625
  store i8* %51, i8** %9, align 8, !dbg !3625
  br label %57, !dbg !3625

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3625
  %54 = zext i32 %41 to i64, !dbg !3625
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3625
  %56 = add nuw nsw i32 %41, 8, !dbg !3625
  store i32 %56, i32* %8, align 8, !dbg !3625
  br label %57, !dbg !3625

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3625
  %61 = load i8*, i8** %60, align 8, !dbg !3625
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3626
  store i8* %61, i8** %62, align 16, !dbg !3627, !tbaa !1255
  %63 = icmp eq i8* %61, null, !dbg !3628
  br i1 %63, label %30, label %64, !dbg !3629

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3616, metadata !DIExpression()), !dbg !3619
  %65 = icmp ult i32 %58, 41, !dbg !3625
  br i1 %65, label %69, label %66, !dbg !3625

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3625
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3625
  store i8* %68, i8** %9, align 8, !dbg !3625
  br label %74, !dbg !3625

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3625
  %71 = zext i32 %58 to i64, !dbg !3625
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3625
  %73 = add nuw nsw i32 %58, 8, !dbg !3625
  store i32 %73, i32* %8, align 8, !dbg !3625
  br label %74, !dbg !3625

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3625
  %78 = load i8*, i8** %77, align 8, !dbg !3625
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3626
  store i8* %78, i8** %79, align 8, !dbg !3627, !tbaa !1255
  %80 = icmp eq i8* %78, null, !dbg !3628
  br i1 %80, label %30, label %81, !dbg !3629

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3616, metadata !DIExpression()), !dbg !3619
  %82 = icmp ult i32 %75, 41, !dbg !3625
  br i1 %82, label %86, label %83, !dbg !3625

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3625
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3625
  store i8* %85, i8** %9, align 8, !dbg !3625
  br label %91, !dbg !3625

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3625
  %88 = zext i32 %75 to i64, !dbg !3625
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3625
  %90 = add nuw nsw i32 %75, 8, !dbg !3625
  store i32 %90, i32* %8, align 8, !dbg !3625
  br label %91, !dbg !3625

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3625
  %95 = load i8*, i8** %94, align 8, !dbg !3625
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3626
  store i8* %95, i8** %96, align 16, !dbg !3627, !tbaa !1255
  %97 = icmp eq i8* %95, null, !dbg !3628
  br i1 %97, label %30, label %98, !dbg !3629

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3616, metadata !DIExpression()), !dbg !3619
  %99 = icmp ult i32 %92, 41, !dbg !3625
  br i1 %99, label %103, label %100, !dbg !3625

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3625
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3625
  store i8* %102, i8** %9, align 8, !dbg !3625
  br label %108, !dbg !3625

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3625
  %105 = zext i32 %92 to i64, !dbg !3625
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3625
  %107 = add nuw nsw i32 %92, 8, !dbg !3625
  store i32 %107, i32* %8, align 8, !dbg !3625
  br label %108, !dbg !3625

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3625
  %111 = load i8*, i8** %110, align 8, !dbg !3625
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3626
  store i8* %111, i8** %112, align 8, !dbg !3627, !tbaa !1255
  %113 = icmp eq i8* %111, null, !dbg !3628
  br i1 %113, label %30, label %114, !dbg !3629

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3616, metadata !DIExpression()), !dbg !3619
  %115 = load i8*, i8** %9, align 8, !dbg !3625
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3625
  store i8* %116, i8** %9, align 8, !dbg !3625
  %117 = bitcast i8* %115 to i8**, !dbg !3625
  %118 = load i8*, i8** %117, align 8, !dbg !3625
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3626
  store i8* %118, i8** %119, align 16, !dbg !3627, !tbaa !1255
  %120 = icmp eq i8* %118, null, !dbg !3628
  br i1 %120, label %30, label %121, !dbg !3629

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3616, metadata !DIExpression()), !dbg !3619
  %122 = load i8*, i8** %9, align 8, !dbg !3625
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3625
  store i8* %123, i8** %9, align 8, !dbg !3625
  %124 = bitcast i8* %122 to i8**, !dbg !3625
  %125 = load i8*, i8** %124, align 8, !dbg !3625
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3626
  store i8* %125, i8** %126, align 8, !dbg !3627, !tbaa !1255
  %127 = icmp eq i8* %125, null, !dbg !3628
  br i1 %127, label %30, label %128, !dbg !3629

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3616, metadata !DIExpression()), !dbg !3619
  %129 = load i8*, i8** %9, align 8, !dbg !3625
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3625
  store i8* %130, i8** %9, align 8, !dbg !3625
  %131 = bitcast i8* %129 to i8**, !dbg !3625
  %132 = load i8*, i8** %131, align 8, !dbg !3625
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3626
  store i8* %132, i8** %133, align 16, !dbg !3627, !tbaa !1255
  %134 = icmp eq i8* %132, null, !dbg !3628
  br i1 %134, label %30, label %135, !dbg !3629

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3616, metadata !DIExpression()), !dbg !3619
  %136 = load i8*, i8** %9, align 8, !dbg !3625
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3625
  store i8* %137, i8** %9, align 8, !dbg !3625
  %138 = bitcast i8* %136 to i8**, !dbg !3625
  %139 = load i8*, i8** %138, align 8, !dbg !3625
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3626
  store i8* %139, i8** %140, align 8, !dbg !3627, !tbaa !1255
  %141 = icmp eq i8* %139, null, !dbg !3628
  %142 = select i1 %141, i64 9, i64 10, !dbg !3629
  br label %30, !dbg !3629
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3633 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3637, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata i8* %1, metadata !3638, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata i8* %2, metadata !3639, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata i8* %3, metadata !3640, metadata !DIExpression()), !dbg !3647
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3648
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #18, !dbg !3648
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3641, metadata !DIExpression()), !dbg !3649
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3650
  call void @llvm.va_start(i8* nonnull %6), !dbg !3650
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3651
  call void @llvm.va_end(i8* nonnull %6), !dbg !3652
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #18, !dbg !3653
  ret void, !dbg !3653
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #18

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3654 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3655, !tbaa !1255
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.85, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3655
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.100, i64 0, i64 0), i32 5) #18, !dbg !3656
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.101, i64 0, i64 0)) #18, !dbg !3656
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.102, i64 0, i64 0), i32 5) #18, !dbg !3657
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.103, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.104, i64 0, i64 0)) #18, !dbg !3657
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.105, i64 0, i64 0), i32 5) #18, !dbg !3658
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.106, i64 0, i64 0)) #18, !dbg !3658
  ret void, !dbg !3659
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #19 !dbg !3660 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3664, metadata !DIExpression()), !dbg !3666
  call void @llvm.dbg.value(metadata i64 %1, metadata !3665, metadata !DIExpression()), !dbg !3666
  %3 = udiv i64 9223372036854775807, %1, !dbg !3667
  %4 = icmp ult i64 %3, %0, !dbg !3667
  br i1 %4, label %5, label %6, !dbg !3669

5:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !3670
  unreachable, !dbg !3670

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3671
  call void @llvm.dbg.value(metadata i64 %7, metadata !3672, metadata !DIExpression()) #18, !dbg !3678
  %8 = tail call noalias i8* @malloc(i64 %7) #18, !dbg !3680
  call void @llvm.dbg.value(metadata i8* %8, metadata !3677, metadata !DIExpression()) #18, !dbg !3678
  %9 = icmp eq i8* %8, null, !dbg !3681
  %10 = icmp ne i64 %7, 0, !dbg !3683
  %11 = and i1 %10, %9, !dbg !3684
  br i1 %11, label %12, label %13, !dbg !3684

12:                                               ; preds = %6
  tail call void @xalloc_die() #22, !dbg !3685
  unreachable, !dbg !3685

13:                                               ; preds = %6
  ret i8* %8, !dbg !3686
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3673 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3672, metadata !DIExpression()), !dbg !3687
  %2 = tail call noalias i8* @malloc(i64 %0) #18, !dbg !3688
  call void @llvm.dbg.value(metadata i8* %2, metadata !3677, metadata !DIExpression()), !dbg !3687
  %3 = icmp eq i8* %2, null, !dbg !3689
  %4 = icmp ne i64 %0, 0, !dbg !3690
  %5 = and i1 %4, %3, !dbg !3691
  br i1 %5, label %6, label %7, !dbg !3691

6:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3692
  unreachable, !dbg !3692

7:                                                ; preds = %1
  ret i8* %2, !dbg !3693
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #19 !dbg !3694 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3698, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata i64 %1, metadata !3699, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata i64 %2, metadata !3700, metadata !DIExpression()), !dbg !3701
  %4 = udiv i64 9223372036854775807, %2, !dbg !3702
  %5 = icmp ult i64 %4, %1, !dbg !3702
  br i1 %5, label %6, label %7, !dbg !3704

6:                                                ; preds = %3
  tail call void @xalloc_die() #22, !dbg !3705
  unreachable, !dbg !3705

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3706
  call void @llvm.dbg.value(metadata i8* %0, metadata !3707, metadata !DIExpression()) #18, !dbg !3713
  call void @llvm.dbg.value(metadata i64 %8, metadata !3712, metadata !DIExpression()) #18, !dbg !3713
  %9 = icmp eq i64 %8, 0, !dbg !3715
  %10 = icmp ne i8* %0, null, !dbg !3717
  %11 = and i1 %10, %9, !dbg !3718
  br i1 %11, label %12, label %13, !dbg !3718

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #18, !dbg !3719
  br label %19, !dbg !3721

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #18, !dbg !3722
  call void @llvm.dbg.value(metadata i8* %14, metadata !3707, metadata !DIExpression()) #18, !dbg !3713
  %15 = icmp eq i8* %14, null, !dbg !3723
  %16 = icmp ne i64 %8, 0, !dbg !3725
  %17 = and i1 %16, %15, !dbg !3726
  br i1 %17, label %18, label %19, !dbg !3726

18:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !3727
  unreachable, !dbg !3727

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3713
  ret i8* %20, !dbg !3728
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3708 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3707, metadata !DIExpression()), !dbg !3729
  call void @llvm.dbg.value(metadata i64 %1, metadata !3712, metadata !DIExpression()), !dbg !3729
  %3 = icmp eq i64 %1, 0, !dbg !3730
  %4 = icmp ne i8* %0, null, !dbg !3731
  %5 = and i1 %4, %3, !dbg !3732
  br i1 %5, label %6, label %7, !dbg !3732

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #18, !dbg !3733
  br label %13, !dbg !3734

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #18, !dbg !3735
  call void @llvm.dbg.value(metadata i8* %8, metadata !3707, metadata !DIExpression()), !dbg !3729
  %9 = icmp eq i8* %8, null, !dbg !3736
  %10 = icmp ne i64 %1, 0, !dbg !3737
  %11 = and i1 %10, %9, !dbg !3738
  br i1 %11, label %12, label %13, !dbg !3738

12:                                               ; preds = %7
  tail call void @xalloc_die() #22, !dbg !3739
  unreachable, !dbg !3739

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3729
  ret i8* %14, !dbg !3740
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #19 !dbg !611 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !613, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.value(metadata i64* %1, metadata !614, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.value(metadata i64 %2, metadata !615, metadata !DIExpression()), !dbg !3741
  %4 = load i64, i64* %1, align 8, !dbg !3742, !tbaa !1399
  call void @llvm.dbg.value(metadata i64 %4, metadata !616, metadata !DIExpression()), !dbg !3741
  %5 = icmp eq i8* %0, null, !dbg !3743
  br i1 %5, label %6, label %20, !dbg !3745

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3746
  br i1 %7, label %8, label %13, !dbg !3749

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3750
  call void @llvm.dbg.value(metadata i64 %9, metadata !616, metadata !DIExpression()), !dbg !3741
  %10 = icmp ugt i64 %2, 128, !dbg !3752
  %11 = zext i1 %10 to i64, !dbg !3752
  %12 = add nuw nsw i64 %9, %11, !dbg !3753
  call void @llvm.dbg.value(metadata i64 %12, metadata !616, metadata !DIExpression()), !dbg !3741
  br label %13, !dbg !3754

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3741
  call void @llvm.dbg.value(metadata i64 %14, metadata !616, metadata !DIExpression()), !dbg !3741
  %15 = udiv i64 9223372036854775807, %2, !dbg !3755
  %16 = icmp ult i64 %15, %14, !dbg !3755
  br i1 %16, label %19, label %17, !dbg !3757

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !616, metadata !DIExpression()), !dbg !3741
  store i64 %14, i64* %1, align 8, !dbg !3758, !tbaa !1399
  %18 = mul i64 %14, %2, !dbg !3759
  call void @llvm.dbg.value(metadata i8* %0, metadata !3707, metadata !DIExpression()) #18, !dbg !3760
  call void @llvm.dbg.value(metadata i64 %28, metadata !3712, metadata !DIExpression()) #18, !dbg !3760
  br label %31, !dbg !3762

19:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !3763
  unreachable, !dbg !3763

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3764
  %22 = icmp ugt i64 %21, %4, !dbg !3767
  br i1 %22, label %24, label %23, !dbg !3768

23:                                               ; preds = %20
  tail call void @xalloc_die() #22, !dbg !3769
  unreachable, !dbg !3769

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3770
  %26 = add nuw i64 %4, 1, !dbg !3771
  %27 = add i64 %26, %25, !dbg !3772
  call void @llvm.dbg.value(metadata i64 %27, metadata !616, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.value(metadata i64 %27, metadata !616, metadata !DIExpression()), !dbg !3741
  store i64 %27, i64* %1, align 8, !dbg !3758, !tbaa !1399
  %28 = mul i64 %27, %2, !dbg !3759
  call void @llvm.dbg.value(metadata i8* %0, metadata !3707, metadata !DIExpression()) #18, !dbg !3760
  call void @llvm.dbg.value(metadata i64 %28, metadata !3712, metadata !DIExpression()) #18, !dbg !3760
  %29 = icmp eq i64 %28, 0, !dbg !3773
  br i1 %29, label %30, label %31, !dbg !3762

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #18, !dbg !3774
  br label %38, !dbg !3775

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #18, !dbg !3776
  call void @llvm.dbg.value(metadata i8* %33, metadata !3707, metadata !DIExpression()) #18, !dbg !3760
  %34 = icmp eq i8* %33, null, !dbg !3777
  %35 = icmp ne i64 %32, 0, !dbg !3778
  %36 = and i1 %35, %34, !dbg !3779
  br i1 %36, label %37, label %38, !dbg !3779

37:                                               ; preds = %31
  tail call void @xalloc_die() #22, !dbg !3780
  unreachable, !dbg !3780

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3760
  ret i8* %39, !dbg !3781
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #19 !dbg !3782 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3784, metadata !DIExpression()), !dbg !3785
  call void @llvm.dbg.value(metadata i64 %0, metadata !3672, metadata !DIExpression()) #18, !dbg !3786
  %2 = tail call noalias i8* @malloc(i64 %0) #18, !dbg !3788
  call void @llvm.dbg.value(metadata i8* %2, metadata !3677, metadata !DIExpression()) #18, !dbg !3786
  %3 = icmp eq i8* %2, null, !dbg !3789
  %4 = icmp ne i64 %0, 0, !dbg !3790
  %5 = and i1 %4, %3, !dbg !3791
  br i1 %5, label %6, label %7, !dbg !3791

6:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3792
  unreachable, !dbg !3792

7:                                                ; preds = %1
  ret i8* %2, !dbg !3793
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3794 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3798, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.value(metadata i64* %1, metadata !3799, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.value(metadata i8* %0, metadata !613, metadata !DIExpression()) #18, !dbg !3801
  call void @llvm.dbg.value(metadata i64* %1, metadata !614, metadata !DIExpression()) #18, !dbg !3801
  call void @llvm.dbg.value(metadata i64 1, metadata !615, metadata !DIExpression()) #18, !dbg !3801
  %3 = load i64, i64* %1, align 8, !dbg !3803, !tbaa !1399
  call void @llvm.dbg.value(metadata i64 %3, metadata !616, metadata !DIExpression()) #18, !dbg !3801
  %4 = icmp eq i8* %0, null, !dbg !3804
  br i1 %4, label %5, label %12, !dbg !3805

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3806
  br i1 %6, label %9, label %7, !dbg !3807

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !616, metadata !DIExpression()) #18, !dbg !3801
  %8 = icmp slt i64 %3, 0, !dbg !3808
  br i1 %8, label %11, label %9, !dbg !3809

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !616, metadata !DIExpression()) #18, !dbg !3801
  store i64 %10, i64* %1, align 8, !dbg !3810, !tbaa !1399
  call void @llvm.dbg.value(metadata i8* %0, metadata !3707, metadata !DIExpression()) #18, !dbg !3811
  call void @llvm.dbg.value(metadata i64 %18, metadata !3712, metadata !DIExpression()) #18, !dbg !3811
  br label %21, !dbg !3813

11:                                               ; preds = %7
  tail call void @xalloc_die() #22, !dbg !3814
  unreachable, !dbg !3814

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3815
  br i1 %13, label %15, label %14, !dbg !3816

14:                                               ; preds = %12
  tail call void @xalloc_die() #22, !dbg !3817
  unreachable, !dbg !3817

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3818
  %17 = add nuw nsw i64 %3, 1, !dbg !3819
  %18 = add nuw nsw i64 %17, %16, !dbg !3820
  call void @llvm.dbg.value(metadata i64 %18, metadata !616, metadata !DIExpression()) #18, !dbg !3801
  call void @llvm.dbg.value(metadata i64 %18, metadata !616, metadata !DIExpression()) #18, !dbg !3801
  store i64 %18, i64* %1, align 8, !dbg !3810, !tbaa !1399
  call void @llvm.dbg.value(metadata i8* %0, metadata !3707, metadata !DIExpression()) #18, !dbg !3811
  call void @llvm.dbg.value(metadata i64 %18, metadata !3712, metadata !DIExpression()) #18, !dbg !3811
  %19 = icmp eq i64 %18, 0, !dbg !3821
  br i1 %19, label %20, label %21, !dbg !3813

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #18, !dbg !3822
  br label %28, !dbg !3823

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #18, !dbg !3824
  call void @llvm.dbg.value(metadata i8* %23, metadata !3707, metadata !DIExpression()) #18, !dbg !3811
  %24 = icmp eq i8* %23, null, !dbg !3825
  %25 = icmp ne i64 %22, 0, !dbg !3826
  %26 = and i1 %25, %24, !dbg !3827
  br i1 %26, label %27, label %28, !dbg !3827

27:                                               ; preds = %21
  tail call void @xalloc_die() #22, !dbg !3828
  unreachable, !dbg !3828

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3811
  ret i8* %29, !dbg !3829
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3830 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3832, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i64 %0, metadata !3834, metadata !DIExpression()) #18, !dbg !3839
  call void @llvm.dbg.value(metadata i64 1, metadata !3837, metadata !DIExpression()) #18, !dbg !3839
  %2 = icmp slt i64 %0, 0, !dbg !3841
  br i1 %2, label %6, label %3, !dbg !3843

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #18, !dbg !3844
  call void @llvm.dbg.value(metadata i8* %4, metadata !3838, metadata !DIExpression()) #18, !dbg !3839
  %5 = icmp eq i8* %4, null, !dbg !3845
  br i1 %5, label %6, label %7, !dbg !3846

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #22, !dbg !3847
  unreachable, !dbg !3847

7:                                                ; preds = %3
  ret i8* %4, !dbg !3848
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3835 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3834, metadata !DIExpression()), !dbg !3849
  call void @llvm.dbg.value(metadata i64 %1, metadata !3837, metadata !DIExpression()), !dbg !3849
  %3 = udiv i64 9223372036854775807, %1, !dbg !3850
  %4 = icmp ult i64 %3, %0, !dbg !3850
  br i1 %4, label %8, label %5, !dbg !3851

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #18, !dbg !3852
  call void @llvm.dbg.value(metadata i8* %6, metadata !3838, metadata !DIExpression()), !dbg !3849
  %7 = icmp eq i8* %6, null, !dbg !3853
  br i1 %7, label %8, label %9, !dbg !3854

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #22, !dbg !3855
  unreachable, !dbg !3855

9:                                                ; preds = %5
  ret i8* %6, !dbg !3856
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3857 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3861, metadata !DIExpression()), !dbg !3863
  call void @llvm.dbg.value(metadata i64 %1, metadata !3862, metadata !DIExpression()), !dbg !3863
  call void @llvm.dbg.value(metadata i64 %1, metadata !3672, metadata !DIExpression()) #18, !dbg !3864
  %3 = tail call noalias i8* @malloc(i64 %1) #18, !dbg !3866
  call void @llvm.dbg.value(metadata i8* %3, metadata !3677, metadata !DIExpression()) #18, !dbg !3864
  %4 = icmp eq i8* %3, null, !dbg !3867
  %5 = icmp ne i64 %1, 0, !dbg !3868
  %6 = and i1 %5, %4, !dbg !3869
  br i1 %6, label %7, label %8, !dbg !3869

7:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !3870
  unreachable, !dbg !3870

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3871, metadata !DIExpression()) #18, !dbg !3880
  call void @llvm.dbg.value(metadata i8* %0, metadata !3878, metadata !DIExpression()) #18, !dbg !3880
  call void @llvm.dbg.value(metadata i64 %1, metadata !3879, metadata !DIExpression()) #18, !dbg !3880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #18, !dbg !3882
  ret i8* %3, !dbg !3883
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3884 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3886, metadata !DIExpression()), !dbg !3887
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #21, !dbg !3888
  %3 = add i64 %2, 1, !dbg !3889
  call void @llvm.dbg.value(metadata i8* %0, metadata !3861, metadata !DIExpression()) #18, !dbg !3890
  call void @llvm.dbg.value(metadata i64 %3, metadata !3862, metadata !DIExpression()) #18, !dbg !3890
  call void @llvm.dbg.value(metadata i64 %3, metadata !3672, metadata !DIExpression()) #18, !dbg !3892
  %4 = tail call noalias i8* @malloc(i64 %3) #18, !dbg !3894
  call void @llvm.dbg.value(metadata i8* %4, metadata !3677, metadata !DIExpression()) #18, !dbg !3892
  %5 = icmp eq i8* %4, null, !dbg !3895
  %6 = icmp ne i64 %3, 0, !dbg !3896
  %7 = and i1 %6, %5, !dbg !3897
  br i1 %7, label %8, label %9, !dbg !3897

8:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3898
  unreachable, !dbg !3898

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3871, metadata !DIExpression()) #18, !dbg !3899
  call void @llvm.dbg.value(metadata i8* %0, metadata !3878, metadata !DIExpression()) #18, !dbg !3899
  call void @llvm.dbg.value(metadata i64 %3, metadata !3879, metadata !DIExpression()) #18, !dbg !3899
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #18, !dbg !3901
  ret i8* %4, !dbg !3902
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3903 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3904, !tbaa !1358
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.117, i64 0, i64 0), i32 5) #18, !dbg !3905
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.118, i64 0, i64 0), i8* %2) #18, !dbg !3906
  tail call void @abort() #22, !dbg !3907
  unreachable, !dbg !3907
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrndup(i8* nocapture readonly %0, i64 %1) local_unnamed_addr #8 !dbg !3908 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3910, metadata !DIExpression()), !dbg !3913
  call void @llvm.dbg.value(metadata i64 %1, metadata !3911, metadata !DIExpression()), !dbg !3913
  %3 = tail call noalias i8* @strndup(i8* %0, i64 %1) #18, !dbg !3914
  call void @llvm.dbg.value(metadata i8* %3, metadata !3912, metadata !DIExpression()), !dbg !3913
  %4 = icmp eq i8* %3, null, !dbg !3915
  br i1 %4, label %5, label %6, !dbg !3917

5:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !3918
  unreachable, !dbg !3918

6:                                                ; preds = %2
  ret i8* %3, !dbg !3919
}

; Function Attrs: nofree nounwind
declare noalias i8* @strndup(i8* nocapture readonly, i64) local_unnamed_addr #4

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #20 !dbg !3920 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3922, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata i64 %1, metadata !3923, metadata !DIExpression()), !dbg !3928
  %3 = icmp eq i64 %0, 0, !dbg !3929
  %4 = icmp eq i64 %1, 0, !dbg !3930
  %5 = or i1 %3, %4, !dbg !3931
  br i1 %5, label %11, label %6, !dbg !3931

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3925, metadata !DIExpression()), !dbg !3932
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3933
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3933
  br i1 %8, label %9, label %11, !dbg !3935

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #24, !dbg !3936
  store i32 12, i32* %10, align 4, !dbg !3938, !tbaa !1358
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3922, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata i64 %12, metadata !3923, metadata !DIExpression()), !dbg !3928
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #18, !dbg !3939
  call void @llvm.dbg.value(metadata i8* %14, metadata !3924, metadata !DIExpression()), !dbg !3928
  br label %15, !dbg !3940

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3928
  ret i8* %16, !dbg !3941
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3942 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3948, metadata !DIExpression()), !dbg !3952
  call void @llvm.dbg.value(metadata i32 0, metadata !3949, metadata !DIExpression()), !dbg !3952
  call void @llvm.dbg.value(metadata i32 0, metadata !3951, metadata !DIExpression()), !dbg !3952
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !3953
  call void @llvm.dbg.value(metadata i32 %2, metadata !3950, metadata !DIExpression()), !dbg !3952
  %3 = icmp slt i32 %2, 0, !dbg !3954
  br i1 %3, label %4, label %6, !dbg !3956

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3957
  br label %24, !dbg !3958

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #18, !dbg !3959
  %8 = icmp eq i32 %7, 0, !dbg !3959
  br i1 %8, label %13, label %9, !dbg !3961

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !3962
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #18, !dbg !3963
  %12 = icmp eq i64 %11, -1, !dbg !3964
  br i1 %12, label %16, label %13, !dbg !3965

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #18, !dbg !3966
  %15 = icmp eq i32 %14, 0, !dbg !3966
  br i1 %15, label %16, label %18, !dbg !3967

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3949, metadata !DIExpression()), !dbg !3952
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3968
  call void @llvm.dbg.value(metadata i32 %21, metadata !3951, metadata !DIExpression()), !dbg !3952
  br label %24, !dbg !3969

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #24, !dbg !3970
  %20 = load i32, i32* %19, align 4, !dbg !3970, !tbaa !1358
  call void @llvm.dbg.value(metadata i32 %20, metadata !3949, metadata !DIExpression()), !dbg !3952
  call void @llvm.dbg.value(metadata i32 %20, metadata !3949, metadata !DIExpression()), !dbg !3952
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3968
  call void @llvm.dbg.value(metadata i32 %21, metadata !3951, metadata !DIExpression()), !dbg !3952
  %22 = icmp eq i32 %20, 0, !dbg !3971
  br i1 %22, label %24, label %23, !dbg !3969

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3973, !tbaa !1358
  call void @llvm.dbg.value(metadata i32 -1, metadata !3951, metadata !DIExpression()), !dbg !3952
  br label %24, !dbg !3975

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3952
  ret i32 %25, !dbg !3976
}

; Function Attrs: nofree nounwind
declare !dbg !670 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !671 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3977 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3983, metadata !DIExpression()), !dbg !3984
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3985
  br i1 %2, label %6, label %3, !dbg !3987

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #18, !dbg !3988
  %5 = icmp eq i32 %4, 0, !dbg !3988
  br i1 %5, label %6, label %8, !dbg !3989

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3990
  br label %17, !dbg !3991

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3992, metadata !DIExpression()) #18, !dbg !3997
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3999
  %10 = load i32, i32* %9, align 8, !dbg !3999, !tbaa !1877
  %11 = and i32 %10, 256, !dbg !4001
  %12 = icmp eq i32 %11, 0, !dbg !4001
  br i1 %12, label %15, label %13, !dbg !4002

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #18, !dbg !4003
  br label %15, !dbg !4003

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4004
  br label %17, !dbg !4005

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3984
  ret i32 %18, !dbg !4006
}

; Function Attrs: nofree nounwind
declare !dbg !679 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4007 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4013, metadata !DIExpression()), !dbg !4019
  call void @llvm.dbg.value(metadata i64 %1, metadata !4014, metadata !DIExpression()), !dbg !4019
  call void @llvm.dbg.value(metadata i32 %2, metadata !4015, metadata !DIExpression()), !dbg !4019
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4020
  %5 = load i8*, i8** %4, align 8, !dbg !4020, !tbaa !1420
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4021
  %7 = load i8*, i8** %6, align 8, !dbg !4021, !tbaa !1417
  %8 = icmp eq i8* %5, %7, !dbg !4022
  br i1 %8, label %9, label %28, !dbg !4023

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4024
  %11 = load i8*, i8** %10, align 8, !dbg !4024, !tbaa !1522
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4025
  %13 = load i8*, i8** %12, align 8, !dbg !4025, !tbaa !4026
  %14 = icmp eq i8* %11, %13, !dbg !4027
  br i1 %14, label %15, label %28, !dbg !4028

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4029
  %17 = load i8*, i8** %16, align 8, !dbg !4029, !tbaa !4030
  %18 = icmp eq i8* %17, null, !dbg !4031
  br i1 %18, label %19, label %28, !dbg !4032

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !4033
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #18, !dbg !4034
  call void @llvm.dbg.value(metadata i64 %21, metadata !4016, metadata !DIExpression()), !dbg !4035
  %22 = icmp eq i64 %21, -1, !dbg !4036
  br i1 %22, label %30, label %23, !dbg !4038

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4039
  %25 = load i32, i32* %24, align 8, !dbg !4040, !tbaa !1877
  %26 = and i32 %25, -17, !dbg !4040
  store i32 %26, i32* %24, align 8, !dbg !4040, !tbaa !1877
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4041
  store i64 %21, i64* %27, align 8, !dbg !4042, !tbaa !4043
  br label %30, !dbg !4044

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4045
  br label %30, !dbg !4046

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4019
  ret i32 %31, !dbg !4047
}

; Function Attrs: nofree nounwind
declare !dbg !755 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !4048 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4056, metadata !DIExpression()), !dbg !4065
  call void @llvm.dbg.value(metadata i8* %1, metadata !4057, metadata !DIExpression()), !dbg !4065
  call void @llvm.dbg.value(metadata i64 %2, metadata !4058, metadata !DIExpression()), !dbg !4065
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4059, metadata !DIExpression()), !dbg !4065
  %6 = bitcast i32* %5 to i8*, !dbg !4066
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #18, !dbg !4066
  %7 = icmp eq i32* %0, null, !dbg !4067
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4069
  call void @llvm.dbg.value(metadata i32* %8, metadata !4056, metadata !DIExpression()), !dbg !4065
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #18, !dbg !4070
  call void @llvm.dbg.value(metadata i64 %9, metadata !4060, metadata !DIExpression()), !dbg !4065
  %10 = icmp ugt i64 %9, -3, !dbg !4071
  %11 = icmp ne i64 %2, 0, !dbg !4072
  %12 = and i1 %11, %10, !dbg !4073
  br i1 %12, label %13, label %18, !dbg !4073

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #18, !dbg !4074
  br i1 %14, label %18, label %15, !dbg !4075

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4076, !tbaa !1423
  call void @llvm.dbg.value(metadata i8 %16, metadata !4062, metadata !DIExpression()), !dbg !4077
  %17 = zext i8 %16 to i32, !dbg !4078
  store i32 %17, i32* %8, align 4, !dbg !4079, !tbaa !1358
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4065
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #18, !dbg !4080
  ret i64 %19, !dbg !4080
}

; Function Attrs: nounwind
declare !dbg !761 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4081 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4087, metadata !DIExpression()), !dbg !4092
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #18, !dbg !4093
  call void @llvm.dbg.value(metadata i1 undef, metadata !4088, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4094, metadata !DIExpression()), !dbg !4097
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4099
  %4 = load i32, i32* %3, align 8, !dbg !4099, !tbaa !1877
  %5 = and i32 %4, 32, !dbg !4099
  %6 = icmp eq i32 %5, 0, !dbg !4100
  call void @llvm.dbg.value(metadata i1 %6, metadata !4090, metadata !DIExpression()), !dbg !4092
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #18, !dbg !4101
  %8 = icmp ne i32 %7, 0, !dbg !4102
  call void @llvm.dbg.value(metadata i1 %8, metadata !4091, metadata !DIExpression()), !dbg !4092
  br i1 %6, label %9, label %19, !dbg !4103

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4105
  call void @llvm.dbg.value(metadata i1 %10, metadata !4088, metadata !DIExpression()), !dbg !4092
  %11 = xor i1 %8, true, !dbg !4106
  %12 = or i1 %10, %11, !dbg !4106
  %13 = sext i1 %8 to i32, !dbg !4106
  br i1 %12, label %22, label %14, !dbg !4106

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #24, !dbg !4107
  %16 = load i32, i32* %15, align 4, !dbg !4107, !tbaa !1358
  %17 = icmp ne i32 %16, 9, !dbg !4108
  %18 = sext i1 %17 to i32, !dbg !4109
  br label %22, !dbg !4109

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4110

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #24, !dbg !4112
  store i32 0, i32* %21, align 4, !dbg !4114, !tbaa !1358
  br label %22, !dbg !4112

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4092
  ret i32 %23, !dbg !4115
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !4116 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4118, metadata !DIExpression()), !dbg !4123
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4124
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #18, !dbg !4124
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4119, metadata !DIExpression()), !dbg !4125
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #18, !dbg !4126
  %5 = icmp eq i32 %4, 0, !dbg !4126
  br i1 %5, label %6, label %13, !dbg !4128

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !4129
  %8 = load i16, i16* %7, align 16, !dbg !4129
  %9 = icmp eq i16 %8, 67, !dbg !4129
  br i1 %9, label %13, label %10, !dbg !4130

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.135, i64 0, i64 0), i64 6), !dbg !4131
  %12 = icmp ne i32 %11, 0, !dbg !4132
  br label %13, !dbg !4130

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !4123
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #18, !dbg !4133
  ret i1 %14, !dbg !4133
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !4134 {
  %1 = tail call i8* @nl_langinfo(i32 14) #18, !dbg !4137
  call void @llvm.dbg.value(metadata i8* %1, metadata !4136, metadata !DIExpression()), !dbg !4138
  %2 = icmp eq i8* %1, null, !dbg !4139
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.138, i64 0, i64 0), i8* %1, !dbg !4141
  call void @llvm.dbg.value(metadata i8* %3, metadata !4136, metadata !DIExpression()), !dbg !4138
  %4 = load i8, i8* %3, align 1, !dbg !4142, !tbaa !1423
  %5 = icmp eq i8 %4, 0, !dbg !4146
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.139, i64 0, i64 0), i8* %3, !dbg !4147
  call void @llvm.dbg.value(metadata i8* %6, metadata !4136, metadata !DIExpression()), !dbg !4138
  ret i8* %6, !dbg !4148
}

; Function Attrs: nounwind
declare !dbg !1212 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !4149 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4153, metadata !DIExpression()), !dbg !4156
  call void @llvm.dbg.value(metadata i8* %1, metadata !4154, metadata !DIExpression()), !dbg !4156
  call void @llvm.dbg.value(metadata i64 %2, metadata !4155, metadata !DIExpression()), !dbg !4156
  call void @llvm.dbg.value(metadata i32 %0, metadata !4157, metadata !DIExpression()) #18, !dbg !4166
  call void @llvm.dbg.value(metadata i8* %1, metadata !4160, metadata !DIExpression()) #18, !dbg !4166
  call void @llvm.dbg.value(metadata i64 %2, metadata !4161, metadata !DIExpression()) #18, !dbg !4166
  call void @llvm.dbg.value(metadata i32 %0, metadata !4168, metadata !DIExpression()) #18, !dbg !4174
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #18, !dbg !4176
  call void @llvm.dbg.value(metadata i8* %4, metadata !4173, metadata !DIExpression()) #18, !dbg !4174
  call void @llvm.dbg.value(metadata i8* %4, metadata !4162, metadata !DIExpression()) #18, !dbg !4166
  %5 = icmp eq i8* %4, null, !dbg !4177
  br i1 %5, label %6, label %9, !dbg !4178

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4179
  br i1 %7, label %19, label %8, !dbg !4182

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4183, !tbaa !1423
  br label %19, !dbg !4184

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #21, !dbg !4185
  call void @llvm.dbg.value(metadata i64 %10, metadata !4163, metadata !DIExpression()) #18, !dbg !4186
  %11 = icmp ult i64 %10, %2, !dbg !4187
  br i1 %11, label %12, label %14, !dbg !4189

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4190
  call void @llvm.dbg.value(metadata i8* %1, metadata !4192, metadata !DIExpression()) #18, !dbg !4197
  call void @llvm.dbg.value(metadata i8* %4, metadata !4195, metadata !DIExpression()) #18, !dbg !4197
  call void @llvm.dbg.value(metadata i64 %13, metadata !4196, metadata !DIExpression()) #18, !dbg !4197
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #18, !dbg !4199
  br label %19, !dbg !4200

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4201
  br i1 %15, label %19, label %16, !dbg !4204

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4205
  call void @llvm.dbg.value(metadata i8* %1, metadata !4192, metadata !DIExpression()) #18, !dbg !4207
  call void @llvm.dbg.value(metadata i8* %4, metadata !4195, metadata !DIExpression()) #18, !dbg !4207
  call void @llvm.dbg.value(metadata i64 %17, metadata !4196, metadata !DIExpression()) #18, !dbg !4207
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #18, !dbg !4209
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4210
  store i8 0, i8* %18, align 1, !dbg !4211, !tbaa !1423
  br label %19, !dbg !4212

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !4213
  ret i32 %20, !dbg !4214
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !4215 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4217, metadata !DIExpression()), !dbg !4218
  call void @llvm.dbg.value(metadata i32 %0, metadata !4168, metadata !DIExpression()) #18, !dbg !4219
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #18, !dbg !4221
  call void @llvm.dbg.value(metadata i8* %2, metadata !4173, metadata !DIExpression()) #18, !dbg !4219
  ret i8* %2, !dbg !4222
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

!llvm.dbg.cu = !{!2, !182, !321, !326, !371, !522, !377, !418, !565, !516, !607, !623, !626, !629, !632, !676, !717, !758, !777, !815, !822, !1215}
!llvm.ident = !{!1218, !1218, !1218, !1218, !1218, !1218, !1218, !1218, !1218, !1218, !1218, !1218, !1218, !1218, !1218, !1218, !1218, !1218, !1218, !1218, !1218, !1218}
!llvm.module.flags = !{!1219, !1220, !1221, !1222, !1223}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 61, type: !177, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !176, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/unexpand.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
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
!21 = !{!22, !32, !93, !97, !101, !105, !108, !111, !116, !131, !132, !26, !83, !135, !139, !140, !143, !147, !148, !152, !153, !156, !30, !63, !160, !85, !28, !166, !171, !174, !175}
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
!132 = !DISubprogram(name: "add_tab_stop", scope: !94, file: !94, line: 39, type: !133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!133 = !DISubroutineType(types: !134)
!134 = !{null, !87}
!135 = !DISubprogram(name: "version_etc", scope: !136, file: !136, line: 69, type: !137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!136 = !DIFile(filename: "./lib/version-etc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!137 = !DISubroutineType(types: !138)
!138 = !{null, !36, !28, !28, !28, null}
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !141, line: 102, baseType: !142)
!141 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !60, line: 73, baseType: !87)
!143 = !DISubprogram(name: "error", scope: !144, file: !144, line: 52, type: !145, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!144 = !DIFile(filename: "./lib/error.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!145 = !DISubroutineType(types: !146)
!146 = !{null, !30, !30, !28, null}
!147 = !DISubprogram(name: "finalize_tab_stops", scope: !94, file: !94, line: 54, type: !95, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!148 = !DISubprogram(name: "set_file_list", scope: !94, file: !94, line: 61, type: !149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!149 = !DISubroutineType(types: !150)
!150 = !{null, !151}
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!152 = !DISubprogram(name: "cleanup_file_list_stdin", scope: !94, file: !94, line: 72, type: !95, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!153 = !DISubprogram(name: "next_file", scope: !94, file: !94, line: 68, type: !154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!154 = !DISubroutineType(types: !155)
!155 = !{!36, !36}
!156 = !DISubprogram(name: "xmalloc", scope: !157, file: !157, line: 53, type: !158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!157 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!158 = !DISubroutineType(types: !159)
!159 = !{!83, !87}
!160 = !DISubprogram(name: "get_next_tab_column", scope: !94, file: !94, line: 48, type: !161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!161 = !DISubroutineType(types: !162)
!162 = !{!87, !87, !163, !164}
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!166 = !DISubprogram(name: "fwrite_unlocked", scope: !33, file: !33, line: 675, type: !167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!167 = !DISubroutineType(types: !168)
!168 = !{!87, !169, !87, !87, !36}
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!171 = !DISubprogram(name: "free", scope: !112, file: !112, line: 565, type: !172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!172 = !DISubroutineType(types: !173)
!173 = !{null, !83}
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!176 = !{!0}
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 1536, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 6)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(name: "convert_entire_line", scope: !182, file: !183, line: 33, type: !165, isLocal: false, isDefinition: true)
!182 = distinct !DICompileUnit(language: DW_LANG_C99, file: !183, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !184, retainedTypes: !220, globals: !281, splitDebugInlining: false, nameTableKind: None)
!183 = !DIFile(filename: "src/expand-common.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!184 = !{!5, !185, !199, !208}
!185 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !186, line: 32, baseType: !7, size: 32, elements: !187)
!186 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!187 = !{!188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198}
!188 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!189 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!190 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!191 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!192 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!193 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!194 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!195 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!196 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!197 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!198 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!199 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !200, line: 45, baseType: !7, size: 32, elements: !201)
!200 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!201 = !{!202, !203, !204, !205, !206, !207}
!202 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0, isUnsigned: true)
!203 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2, isUnsigned: true)
!204 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5, isUnsigned: true)
!205 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4, isUnsigned: true)
!206 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3, isUnsigned: true)
!207 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1, isUnsigned: true)
!208 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !209, file: !157, line: 186, baseType: !7, size: 32, elements: !218)
!209 = distinct !DISubprogram(name: "x2nrealloc", scope: !157, file: !157, line: 174, type: !210, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !182, retainedNodes: !213)
!210 = !DISubroutineType(types: !211)
!211 = !{!83, !83, !212, !85}
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!213 = !{!214, !215, !216, !217}
!214 = !DILocalVariable(name: "p", arg: 1, scope: !209, file: !157, line: 174, type: !83)
!215 = !DILocalVariable(name: "pn", arg: 2, scope: !209, file: !157, line: 174, type: !212)
!216 = !DILocalVariable(name: "s", arg: 3, scope: !209, file: !157, line: 174, type: !85)
!217 = !DILocalVariable(name: "n", scope: !209, file: !157, line: 176, type: !85)
!218 = !{!219}
!219 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!220 = !{!22, !143, !30, !63, !221, !7, !139, !83, !140, !225, !171, !229, !232, !267, !271, !274, !85, !277, !278}
!221 = !DISubprogram(name: "quote", scope: !222, file: !222, line: 44, type: !223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!222 = !DIFile(filename: "./lib/quote.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!223 = !DISubroutineType(types: !224)
!224 = !{!28, !28}
!225 = !DISubprogram(name: "xstrndup", scope: !226, file: !226, line: 23, type: !227, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!226 = !DIFile(filename: "./lib/xstrndup.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!227 = !DISubroutineType(types: !228)
!228 = !{!26, !28, !87}
!229 = !DISubprogram(name: "quotearg_n_style_colon", scope: !186, file: !186, line: 397, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!230 = !DISubroutineType(types: !231)
!231 = !{!26, !30, !185, !28}
!232 = !DISubprogram(name: "clearerr_unlocked", scope: !33, file: !33, line: 765, type: !233, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!233 = !DISubroutineType(types: !234)
!234 = !{null, !235}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !38, line: 49, size: 1728, elements: !237)
!237 = !{!238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !236, file: !38, line: 51, baseType: !30, size: 32)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !236, file: !38, line: 54, baseType: !26, size: 64, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !236, file: !38, line: 55, baseType: !26, size: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !236, file: !38, line: 56, baseType: !26, size: 64, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !236, file: !38, line: 57, baseType: !26, size: 64, offset: 256)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !236, file: !38, line: 58, baseType: !26, size: 64, offset: 320)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !236, file: !38, line: 59, baseType: !26, size: 64, offset: 384)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !236, file: !38, line: 60, baseType: !26, size: 64, offset: 448)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !236, file: !38, line: 61, baseType: !26, size: 64, offset: 512)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !236, file: !38, line: 64, baseType: !26, size: 64, offset: 576)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !236, file: !38, line: 65, baseType: !26, size: 64, offset: 640)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !236, file: !38, line: 66, baseType: !26, size: 64, offset: 704)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !236, file: !38, line: 68, baseType: !53, size: 64, offset: 768)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !236, file: !38, line: 70, baseType: !235, size: 64, offset: 832)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !236, file: !38, line: 72, baseType: !30, size: 32, offset: 896)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !236, file: !38, line: 73, baseType: !30, size: 32, offset: 928)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !236, file: !38, line: 74, baseType: !59, size: 64, offset: 960)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !236, file: !38, line: 77, baseType: !63, size: 16, offset: 1024)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !236, file: !38, line: 78, baseType: !65, size: 8, offset: 1040)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !236, file: !38, line: 79, baseType: !67, size: 8, offset: 1048)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !236, file: !38, line: 81, baseType: !71, size: 64, offset: 1088)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !236, file: !38, line: 89, baseType: !74, size: 64, offset: 1152)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !236, file: !38, line: 91, baseType: !76, size: 64, offset: 1216)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !236, file: !38, line: 92, baseType: !79, size: 64, offset: 1280)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !236, file: !38, line: 93, baseType: !235, size: 64, offset: 1344)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !236, file: !38, line: 94, baseType: !83, size: 64, offset: 1408)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !236, file: !38, line: 95, baseType: !85, size: 64, offset: 1472)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !236, file: !38, line: 96, baseType: !30, size: 32, offset: 1536)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !236, file: !38, line: 98, baseType: !90, size: 160, offset: 1568)
!267 = !DISubprogram(name: "rpl_fclose", scope: !268, file: !268, line: 672, type: !269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!268 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!269 = !DISubroutineType(types: !270)
!270 = !{!30, !235}
!271 = !DISubprogram(name: "fadvise", scope: !200, file: !200, line: 72, type: !272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!272 = !DISubroutineType(types: !273)
!273 = !{null, !235, !199}
!274 = !DISubprogram(name: "fputs_unlocked", scope: !33, file: !33, line: 662, type: !275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!275 = !DISubroutineType(types: !276)
!276 = !{!30, !28, !235}
!277 = !DISubprogram(name: "xalloc_die", scope: !157, file: !157, line: 51, type: !95, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !31)
!278 = !DISubprogram(name: "xrealloc", scope: !157, file: !157, line: 59, type: !279, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!279 = !DISubroutineType(types: !280)
!280 = !{!83, !83, !87}
!281 = !{!180, !282, !284, !295, !297, !299, !301, !303, !305, !307, !309, !311, !316}
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(name: "exit_status", scope: !182, file: !183, line: 72, type: !30, isLocal: false, isDefinition: true)
!284 = !DIGlobalVariableExpression(var: !285, expr: !DIExpression())
!285 = distinct !DIGlobalVariable(name: "prev_file", scope: !286, file: !183, line: 336, type: !26, isLocal: true, isDefinition: true)
!286 = distinct !DISubprogram(name: "next_file", scope: !183, file: !183, line: 334, type: !287, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !182, retainedNodes: !292)
!287 = !DISubroutineType(types: !288)
!288 = !{!289, !289}
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !291, line: 7, baseType: !236)
!291 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!292 = !{!293, !294}
!293 = !DILocalVariable(name: "fp", arg: 1, scope: !286, file: !183, line: 334, type: !289)
!294 = !DILocalVariable(name: "file", scope: !286, file: !183, line: 337, type: !26)
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(name: "max_column_width", scope: !182, file: !183, line: 45, type: !85, isLocal: false, isDefinition: true)
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(name: "first_free_tab", scope: !182, file: !183, line: 57, type: !85, isLocal: true, isDefinition: true)
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(name: "tab_list", scope: !182, file: !183, line: 50, type: !139, isLocal: true, isDefinition: true)
!301 = !DIGlobalVariableExpression(var: !302, expr: !DIExpression())
!302 = distinct !DIGlobalVariable(name: "n_tabs_allocated", scope: !182, file: !183, line: 53, type: !85, isLocal: true, isDefinition: true)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(name: "extend_size", scope: !182, file: !183, line: 39, type: !140, isLocal: true, isDefinition: true)
!305 = !DIGlobalVariableExpression(var: !306, expr: !DIExpression())
!306 = distinct !DIGlobalVariable(name: "increment_size", scope: !182, file: !183, line: 42, type: !140, isLocal: true, isDefinition: true)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(name: "tab_size", scope: !182, file: !183, line: 36, type: !140, isLocal: true, isDefinition: true)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !182, file: !183, line: 69, type: !165, isLocal: true, isDefinition: true)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(name: "stdin_argv", scope: !182, file: !183, line: 63, type: !313, isLocal: true, isDefinition: true)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 128, elements: !314)
!314 = !{!315}
!315 = !DISubrange(count: 2)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(name: "file_list", scope: !182, file: !183, line: 60, type: !151, isLocal: true, isDefinition: true)
!318 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(name: "Version", scope: !321, file: !322, line: 2, type: !28, isLocal: false, isDefinition: true)
!321 = distinct !DICompileUnit(language: DW_LANG_C99, file: !322, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, globals: !323, splitDebugInlining: false, nameTableKind: None)
!322 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!323 = !{!319}
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(name: "file_name", scope: !326, file: !327, line: 46, type: !28, isLocal: true, isDefinition: true)
!326 = distinct !DICompileUnit(language: DW_LANG_C99, file: !327, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !328, globals: !366, splitDebugInlining: false, nameTableKind: None)
!327 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!328 = !{!329, !22, !365, !143}
!329 = !DISubprogram(name: "close_stream", scope: !330, file: !330, line: 2, type: !331, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!330 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!331 = !DISubroutineType(types: !332)
!332 = !{!30, !333}
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !38, line: 49, size: 1728, elements: !335)
!335 = !{!336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !334, file: !38, line: 51, baseType: !30, size: 32)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !334, file: !38, line: 54, baseType: !26, size: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !334, file: !38, line: 55, baseType: !26, size: 64, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !334, file: !38, line: 56, baseType: !26, size: 64, offset: 192)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !334, file: !38, line: 57, baseType: !26, size: 64, offset: 256)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !334, file: !38, line: 58, baseType: !26, size: 64, offset: 320)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !334, file: !38, line: 59, baseType: !26, size: 64, offset: 384)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !334, file: !38, line: 60, baseType: !26, size: 64, offset: 448)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !334, file: !38, line: 61, baseType: !26, size: 64, offset: 512)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !334, file: !38, line: 64, baseType: !26, size: 64, offset: 576)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !334, file: !38, line: 65, baseType: !26, size: 64, offset: 640)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !334, file: !38, line: 66, baseType: !26, size: 64, offset: 704)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !334, file: !38, line: 68, baseType: !53, size: 64, offset: 768)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !334, file: !38, line: 70, baseType: !333, size: 64, offset: 832)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !334, file: !38, line: 72, baseType: !30, size: 32, offset: 896)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !334, file: !38, line: 73, baseType: !30, size: 32, offset: 928)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !334, file: !38, line: 74, baseType: !59, size: 64, offset: 960)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !334, file: !38, line: 77, baseType: !63, size: 16, offset: 1024)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !334, file: !38, line: 78, baseType: !65, size: 8, offset: 1040)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !334, file: !38, line: 79, baseType: !67, size: 8, offset: 1048)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !334, file: !38, line: 81, baseType: !71, size: 64, offset: 1088)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !334, file: !38, line: 89, baseType: !74, size: 64, offset: 1152)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !334, file: !38, line: 91, baseType: !76, size: 64, offset: 1216)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !334, file: !38, line: 92, baseType: !79, size: 64, offset: 1280)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !334, file: !38, line: 93, baseType: !333, size: 64, offset: 1344)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !334, file: !38, line: 94, baseType: !83, size: 64, offset: 1408)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !334, file: !38, line: 95, baseType: !85, size: 64, offset: 1472)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !334, file: !38, line: 96, baseType: !30, size: 32, offset: 1536)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !334, file: !38, line: 98, baseType: !90, size: 160, offset: 1568)
!365 = !DISubprogram(name: "quotearg_colon", scope: !186, file: !186, line: 391, type: !109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!366 = !{!324, !367}
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !326, file: !327, line: 56, type: !165, isLocal: true, isDefinition: true)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(name: "exit_failure", scope: !371, file: !372, line: 24, type: !374, isLocal: false, isDefinition: true)
!371 = distinct !DICompileUnit(language: DW_LANG_C99, file: !372, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, globals: !373, splitDebugInlining: false, nameTableKind: None)
!372 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!373 = !{!369}
!374 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !30)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(name: "program_name", scope: !377, file: !378, line: 33, type: !28, isLocal: false, isDefinition: true)
!377 = distinct !DICompileUnit(language: DW_LANG_C99, file: !378, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !379, globals: !415, splitDebugInlining: false, nameTableKind: None)
!378 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!379 = !{!83, !380, !26}
!380 = !DISubprogram(name: "fputs", scope: !33, file: !33, line: 626, type: !381, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!381 = !DISubroutineType(types: !382)
!382 = !{!30, !28, !383}
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !38, line: 49, size: 1728, elements: !385)
!385 = !{!386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !384, file: !38, line: 51, baseType: !30, size: 32)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !384, file: !38, line: 54, baseType: !26, size: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !384, file: !38, line: 55, baseType: !26, size: 64, offset: 128)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !384, file: !38, line: 56, baseType: !26, size: 64, offset: 192)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !384, file: !38, line: 57, baseType: !26, size: 64, offset: 256)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !384, file: !38, line: 58, baseType: !26, size: 64, offset: 320)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !384, file: !38, line: 59, baseType: !26, size: 64, offset: 384)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !384, file: !38, line: 60, baseType: !26, size: 64, offset: 448)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !384, file: !38, line: 61, baseType: !26, size: 64, offset: 512)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !384, file: !38, line: 64, baseType: !26, size: 64, offset: 576)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !384, file: !38, line: 65, baseType: !26, size: 64, offset: 640)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !384, file: !38, line: 66, baseType: !26, size: 64, offset: 704)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !384, file: !38, line: 68, baseType: !53, size: 64, offset: 768)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !384, file: !38, line: 70, baseType: !383, size: 64, offset: 832)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !384, file: !38, line: 72, baseType: !30, size: 32, offset: 896)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !384, file: !38, line: 73, baseType: !30, size: 32, offset: 928)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !384, file: !38, line: 74, baseType: !59, size: 64, offset: 960)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !384, file: !38, line: 77, baseType: !63, size: 16, offset: 1024)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !384, file: !38, line: 78, baseType: !65, size: 8, offset: 1040)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !384, file: !38, line: 79, baseType: !67, size: 8, offset: 1048)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !384, file: !38, line: 81, baseType: !71, size: 64, offset: 1088)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !384, file: !38, line: 89, baseType: !74, size: 64, offset: 1152)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !384, file: !38, line: 91, baseType: !76, size: 64, offset: 1216)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !384, file: !38, line: 92, baseType: !79, size: 64, offset: 1280)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !384, file: !38, line: 93, baseType: !383, size: 64, offset: 1344)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !384, file: !38, line: 94, baseType: !83, size: 64, offset: 1408)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !384, file: !38, line: 95, baseType: !85, size: 64, offset: 1472)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !384, file: !38, line: 96, baseType: !30, size: 32, offset: 1536)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !384, file: !38, line: 98, baseType: !90, size: 160, offset: 1568)
!415 = !{!375}
!416 = !DIGlobalVariableExpression(var: !417, expr: !DIExpression())
!417 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !418, file: !419, line: 85, type: !510, isLocal: false, isDefinition: true)
!418 = distinct !DICompileUnit(language: DW_LANG_C99, file: !419, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !420, retainedTypes: !426, globals: !483, splitDebugInlining: false, nameTableKind: None)
!419 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!420 = !{!185, !421, !5}
!421 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !186, line: 242, baseType: !7, size: 32, elements: !422)
!422 = !{!423, !424, !425}
!423 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!424 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!425 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!426 = !{!427, !430, !171, !445, !30, !63, !448, !85, !465, !469, !22, !475, !479, !26, !156, !277, !278}
!427 = !DISubprogram(name: "xmemdup", scope: !157, file: !157, line: 62, type: !428, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!428 = !DISubroutineType(types: !429)
!429 = !{!83, !169, !87}
!430 = !DISubprogram(name: "quotearg_alloc_mem", scope: !186, file: !186, line: 342, type: !431, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!431 = !DISubroutineType(types: !432)
!432 = !{!26, !28, !87, !163, !433}
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !435)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !419, line: 65, size: 448, elements: !436)
!436 = !{!437, !438, !439, !443, !444}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !435, file: !419, line: 68, baseType: !185, size: 32)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !435, file: !419, line: 71, baseType: !30, size: 32, offset: 32)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !435, file: !419, line: 75, baseType: !440, size: 256, offset: 64)
!440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !441)
!441 = !{!442}
!442 = !DISubrange(count: 8)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !435, file: !419, line: 78, baseType: !28, size: 64, offset: 320)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !435, file: !419, line: 81, baseType: !28, size: 64, offset: 384)
!445 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !186, file: !186, line: 408, type: !446, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!446 = !DISubroutineType(types: !447)
!447 = !{!26, !30, !28, !28, !28, !87}
!448 = !DISubprogram(name: "rpl_mbrtowc", scope: !449, file: !449, line: 717, type: !450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!449 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!450 = !DISubroutineType(types: !451)
!451 = !{!87, !129, !28, !87, !452}
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !454, line: 13, size: 64, elements: !455)
!454 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!455 = !{!456, !457}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !453, file: !454, line: 15, baseType: !30, size: 32)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !453, file: !454, line: 20, baseType: !458, size: 32, offset: 32)
!458 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !453, file: !454, line: 16, size: 32, elements: !459)
!459 = !{!460, !461}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !458, file: !454, line: 18, baseType: !7, size: 32)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !458, file: !454, line: 19, baseType: !462, size: 32)
!462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 32, elements: !463)
!463 = !{!464}
!464 = !DISubrange(count: 4)
!465 = !DISubprogram(name: "iswprint", scope: !466, file: !466, line: 120, type: !467, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!466 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!467 = !DISubroutineType(types: !468)
!468 = !{!30, !7}
!469 = !DISubprogram(name: "mbsinit", scope: !470, file: !470, line: 292, type: !471, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!470 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!471 = !DISubroutineType(types: !472)
!472 = !{!30, !473}
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !453)
!475 = !DISubprogram(name: "locale_charset", scope: !476, file: !476, line: 35, type: !477, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!476 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!477 = !DISubroutineType(types: !478)
!478 = !{!28}
!479 = !DISubprogram(name: "c_strcasecmp", scope: !480, file: !480, line: 42, type: !481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!480 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!481 = !DISubroutineType(types: !482)
!482 = !{!30, !28, !28}
!483 = !{!416, !484, !490, !492, !494, !499, !506, !508}
!484 = !DIGlobalVariableExpression(var: !485, expr: !DIExpression())
!485 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !418, file: !419, line: 101, type: !486, isLocal: false, isDefinition: true)
!486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !487, size: 320, elements: !488)
!487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!488 = !{!489}
!489 = !DISubrange(count: 10)
!490 = !DIGlobalVariableExpression(var: !491, expr: !DIExpression())
!491 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !418, file: !419, line: 1052, type: !435, isLocal: false, isDefinition: true)
!492 = !DIGlobalVariableExpression(var: !493, expr: !DIExpression())
!493 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !418, file: !419, line: 116, type: !435, isLocal: true, isDefinition: true)
!494 = !DIGlobalVariableExpression(var: !495, expr: !DIExpression())
!495 = distinct !DIGlobalVariable(name: "slot0", scope: !418, file: !419, line: 842, type: !496, isLocal: true, isDefinition: true)
!496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 2048, elements: !497)
!497 = !{!498}
!498 = !DISubrange(count: 256)
!499 = !DIGlobalVariableExpression(var: !500, expr: !DIExpression())
!500 = distinct !DIGlobalVariable(name: "slotvec", scope: !418, file: !419, line: 845, type: !501, isLocal: true, isDefinition: true)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !419, line: 834, size: 128, elements: !503)
!503 = !{!504, !505}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !502, file: !419, line: 836, baseType: !85, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !502, file: !419, line: 837, baseType: !26, size: 64, offset: 64)
!506 = !DIGlobalVariableExpression(var: !507, expr: !DIExpression())
!507 = distinct !DIGlobalVariable(name: "nslots", scope: !418, file: !419, line: 843, type: !30, isLocal: true, isDefinition: true)
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(name: "slotvec0", scope: !418, file: !419, line: 844, type: !502, isLocal: true, isDefinition: true)
!510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !511, size: 704, elements: !512)
!511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!512 = !{!513}
!513 = !DISubrange(count: 11)
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !516, file: !517, line: 26, type: !519, isLocal: false, isDefinition: true)
!516 = distinct !DICompileUnit(language: DW_LANG_C99, file: !517, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, globals: !518, splitDebugInlining: false, nameTableKind: None)
!517 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!518 = !{!514}
!519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 376, elements: !520)
!520 = !{!521}
!521 = !DISubrange(count: 47)
!522 = distinct !DICompileUnit(language: DW_LANG_C99, file: !523, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !524, retainedTypes: !525, splitDebugInlining: false, nameTableKind: None)
!523 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!524 = !{!199}
!525 = !{!526, !530}
!526 = !DISubprogram(name: "posix_fadvise", scope: !527, file: !527, line: 288, type: !528, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!527 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!528 = !DISubroutineType(types: !529)
!529 = !{!30, !30, !61, !61, !30}
!530 = !DISubprogram(name: "fileno", scope: !33, file: !33, line: 786, type: !531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!531 = !DISubroutineType(types: !532)
!532 = !{!30, !533}
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !38, line: 49, size: 1728, elements: !535)
!535 = !{!536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !534, file: !38, line: 51, baseType: !30, size: 32)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !534, file: !38, line: 54, baseType: !26, size: 64, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !534, file: !38, line: 55, baseType: !26, size: 64, offset: 128)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !534, file: !38, line: 56, baseType: !26, size: 64, offset: 192)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !534, file: !38, line: 57, baseType: !26, size: 64, offset: 256)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !534, file: !38, line: 58, baseType: !26, size: 64, offset: 320)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !534, file: !38, line: 59, baseType: !26, size: 64, offset: 384)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !534, file: !38, line: 60, baseType: !26, size: 64, offset: 448)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !534, file: !38, line: 61, baseType: !26, size: 64, offset: 512)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !534, file: !38, line: 64, baseType: !26, size: 64, offset: 576)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !534, file: !38, line: 65, baseType: !26, size: 64, offset: 640)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !534, file: !38, line: 66, baseType: !26, size: 64, offset: 704)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !534, file: !38, line: 68, baseType: !53, size: 64, offset: 768)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !534, file: !38, line: 70, baseType: !533, size: 64, offset: 832)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !534, file: !38, line: 72, baseType: !30, size: 32, offset: 896)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !534, file: !38, line: 73, baseType: !30, size: 32, offset: 928)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !534, file: !38, line: 74, baseType: !59, size: 64, offset: 960)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !534, file: !38, line: 77, baseType: !63, size: 16, offset: 1024)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !534, file: !38, line: 78, baseType: !65, size: 8, offset: 1040)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !534, file: !38, line: 79, baseType: !67, size: 8, offset: 1048)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !534, file: !38, line: 81, baseType: !71, size: 64, offset: 1088)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !534, file: !38, line: 89, baseType: !74, size: 64, offset: 1152)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !534, file: !38, line: 91, baseType: !76, size: 64, offset: 1216)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !534, file: !38, line: 92, baseType: !79, size: 64, offset: 1280)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !534, file: !38, line: 93, baseType: !533, size: 64, offset: 1344)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !534, file: !38, line: 94, baseType: !83, size: 64, offset: 1408)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !534, file: !38, line: 95, baseType: !85, size: 64, offset: 1472)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !534, file: !38, line: 96, baseType: !30, size: 32, offset: 1536)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !534, file: !38, line: 98, baseType: !90, size: 160, offset: 1568)
!565 = distinct !DICompileUnit(language: DW_LANG_C99, file: !566, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !567, retainedTypes: !571, splitDebugInlining: false, nameTableKind: None)
!566 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!567 = !{!568}
!568 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !566, line: 40, baseType: !7, size: 32, elements: !569)
!569 = !{!570}
!570 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!571 = !{!22, !572, !83}
!572 = !DISubprogram(name: "fputs_unlocked", scope: !33, file: !33, line: 662, type: !573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!573 = !DISubroutineType(types: !574)
!574 = !{!30, !28, !575}
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !38, line: 49, size: 1728, elements: !577)
!577 = !{!578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !576, file: !38, line: 51, baseType: !30, size: 32)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !576, file: !38, line: 54, baseType: !26, size: 64, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !576, file: !38, line: 55, baseType: !26, size: 64, offset: 128)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !576, file: !38, line: 56, baseType: !26, size: 64, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !576, file: !38, line: 57, baseType: !26, size: 64, offset: 256)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !576, file: !38, line: 58, baseType: !26, size: 64, offset: 320)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !576, file: !38, line: 59, baseType: !26, size: 64, offset: 384)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !576, file: !38, line: 60, baseType: !26, size: 64, offset: 448)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !576, file: !38, line: 61, baseType: !26, size: 64, offset: 512)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !576, file: !38, line: 64, baseType: !26, size: 64, offset: 576)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !576, file: !38, line: 65, baseType: !26, size: 64, offset: 640)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !576, file: !38, line: 66, baseType: !26, size: 64, offset: 704)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !576, file: !38, line: 68, baseType: !53, size: 64, offset: 768)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !576, file: !38, line: 70, baseType: !575, size: 64, offset: 832)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !576, file: !38, line: 72, baseType: !30, size: 32, offset: 896)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !576, file: !38, line: 73, baseType: !30, size: 32, offset: 928)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !576, file: !38, line: 74, baseType: !59, size: 64, offset: 960)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !576, file: !38, line: 77, baseType: !63, size: 16, offset: 1024)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !576, file: !38, line: 78, baseType: !65, size: 8, offset: 1040)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !576, file: !38, line: 79, baseType: !67, size: 8, offset: 1048)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !576, file: !38, line: 81, baseType: !71, size: 64, offset: 1088)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !576, file: !38, line: 89, baseType: !74, size: 64, offset: 1152)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !576, file: !38, line: 91, baseType: !76, size: 64, offset: 1216)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !576, file: !38, line: 92, baseType: !79, size: 64, offset: 1280)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !576, file: !38, line: 93, baseType: !575, size: 64, offset: 1344)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !576, file: !38, line: 94, baseType: !83, size: 64, offset: 1408)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !576, file: !38, line: 95, baseType: !85, size: 64, offset: 1472)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !576, file: !38, line: 96, baseType: !30, size: 32, offset: 1536)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !576, file: !38, line: 98, baseType: !90, size: 160, offset: 1568)
!607 = distinct !DICompileUnit(language: DW_LANG_C99, file: !608, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !609, retainedTypes: !617, splitDebugInlining: false, nameTableKind: None)
!608 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!609 = !{!610}
!610 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !611, file: !157, line: 186, baseType: !7, size: 32, elements: !218)
!611 = distinct !DISubprogram(name: "x2nrealloc", scope: !157, file: !157, line: 174, type: !210, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !607, retainedNodes: !612)
!612 = !{!613, !614, !615, !616}
!613 = !DILocalVariable(name: "p", arg: 1, scope: !611, file: !157, line: 174, type: !83)
!614 = !DILocalVariable(name: "pn", arg: 2, scope: !611, file: !157, line: 174, type: !212)
!615 = !DILocalVariable(name: "s", arg: 3, scope: !611, file: !157, line: 174, type: !85)
!616 = !DILocalVariable(name: "n", scope: !611, file: !157, line: 176, type: !85)
!617 = !{!85, !277, !156, !278, !26, !171, !83, !618, !621}
!618 = !DISubprogram(name: "xcalloc", scope: !157, file: !157, line: 57, type: !619, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!619 = !DISubroutineType(types: !620)
!620 = !{!83, !87, !87}
!621 = !DISubprogram(name: "rpl_calloc", scope: !622, file: !622, line: 688, type: !619, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!622 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!623 = distinct !DICompileUnit(language: DW_LANG_C99, file: !624, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !625, splitDebugInlining: false, nameTableKind: None)
!624 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!625 = !{!22, !143}
!626 = distinct !DICompileUnit(language: DW_LANG_C99, file: !627, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !628, splitDebugInlining: false, nameTableKind: None)
!627 = !DIFile(filename: "lib/xstrndup.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!628 = !{!277}
!629 = distinct !DICompileUnit(language: DW_LANG_C99, file: !630, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !631, splitDebugInlining: false, nameTableKind: None)
!630 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!631 = !{!83}
!632 = distinct !DICompileUnit(language: DW_LANG_C99, file: !633, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !634, splitDebugInlining: false, nameTableKind: None)
!633 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!634 = !{!635, !670, !671, !675}
!635 = !DISubprogram(name: "fileno", scope: !33, file: !33, line: 786, type: !636, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!636 = !DISubroutineType(types: !637)
!637 = !{!30, !638}
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !38, line: 49, size: 1728, elements: !640)
!640 = !{!641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !639, file: !38, line: 51, baseType: !30, size: 32)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !639, file: !38, line: 54, baseType: !26, size: 64, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !639, file: !38, line: 55, baseType: !26, size: 64, offset: 128)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !639, file: !38, line: 56, baseType: !26, size: 64, offset: 192)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !639, file: !38, line: 57, baseType: !26, size: 64, offset: 256)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !639, file: !38, line: 58, baseType: !26, size: 64, offset: 320)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !639, file: !38, line: 59, baseType: !26, size: 64, offset: 384)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !639, file: !38, line: 60, baseType: !26, size: 64, offset: 448)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !639, file: !38, line: 61, baseType: !26, size: 64, offset: 512)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !639, file: !38, line: 64, baseType: !26, size: 64, offset: 576)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !639, file: !38, line: 65, baseType: !26, size: 64, offset: 640)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !639, file: !38, line: 66, baseType: !26, size: 64, offset: 704)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !639, file: !38, line: 68, baseType: !53, size: 64, offset: 768)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !639, file: !38, line: 70, baseType: !638, size: 64, offset: 832)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !639, file: !38, line: 72, baseType: !30, size: 32, offset: 896)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !639, file: !38, line: 73, baseType: !30, size: 32, offset: 928)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !639, file: !38, line: 74, baseType: !59, size: 64, offset: 960)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !639, file: !38, line: 77, baseType: !63, size: 16, offset: 1024)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !639, file: !38, line: 78, baseType: !65, size: 8, offset: 1040)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !639, file: !38, line: 79, baseType: !67, size: 8, offset: 1048)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !639, file: !38, line: 81, baseType: !71, size: 64, offset: 1088)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !639, file: !38, line: 89, baseType: !74, size: 64, offset: 1152)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !639, file: !38, line: 91, baseType: !76, size: 64, offset: 1216)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !639, file: !38, line: 92, baseType: !79, size: 64, offset: 1280)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !639, file: !38, line: 93, baseType: !638, size: 64, offset: 1344)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !639, file: !38, line: 94, baseType: !83, size: 64, offset: 1408)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !639, file: !38, line: 95, baseType: !85, size: 64, offset: 1472)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !639, file: !38, line: 96, baseType: !30, size: 32, offset: 1536)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !639, file: !38, line: 98, baseType: !90, size: 160, offset: 1568)
!670 = !DISubprogram(name: "fclose", scope: !33, file: !33, line: 213, type: !636, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!671 = !DISubprogram(name: "lseek", scope: !672, file: !672, line: 334, type: !673, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!672 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!673 = !DISubroutineType(types: !674)
!674 = !{!61, !30, !61, !30}
!675 = !DISubprogram(name: "rpl_fflush", scope: !268, file: !268, line: 718, type: !636, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!676 = distinct !DICompileUnit(language: DW_LANG_C99, file: !677, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !678, splitDebugInlining: false, nameTableKind: None)
!677 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!678 = !{!83, !679, !714}
!679 = !DISubprogram(name: "fflush", scope: !33, file: !33, line: 218, type: !680, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!680 = !DISubroutineType(types: !681)
!681 = !{!30, !682}
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !38, line: 49, size: 1728, elements: !684)
!684 = !{!685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !683, file: !38, line: 51, baseType: !30, size: 32)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !683, file: !38, line: 54, baseType: !26, size: 64, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !683, file: !38, line: 55, baseType: !26, size: 64, offset: 128)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !683, file: !38, line: 56, baseType: !26, size: 64, offset: 192)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !683, file: !38, line: 57, baseType: !26, size: 64, offset: 256)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !683, file: !38, line: 58, baseType: !26, size: 64, offset: 320)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !683, file: !38, line: 59, baseType: !26, size: 64, offset: 384)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !683, file: !38, line: 60, baseType: !26, size: 64, offset: 448)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !683, file: !38, line: 61, baseType: !26, size: 64, offset: 512)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !683, file: !38, line: 64, baseType: !26, size: 64, offset: 576)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !683, file: !38, line: 65, baseType: !26, size: 64, offset: 640)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !683, file: !38, line: 66, baseType: !26, size: 64, offset: 704)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !683, file: !38, line: 68, baseType: !53, size: 64, offset: 768)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !683, file: !38, line: 70, baseType: !682, size: 64, offset: 832)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !683, file: !38, line: 72, baseType: !30, size: 32, offset: 896)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !683, file: !38, line: 73, baseType: !30, size: 32, offset: 928)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !683, file: !38, line: 74, baseType: !59, size: 64, offset: 960)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !683, file: !38, line: 77, baseType: !63, size: 16, offset: 1024)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !683, file: !38, line: 78, baseType: !65, size: 8, offset: 1040)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !683, file: !38, line: 79, baseType: !67, size: 8, offset: 1048)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !683, file: !38, line: 81, baseType: !71, size: 64, offset: 1088)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !683, file: !38, line: 89, baseType: !74, size: 64, offset: 1152)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !683, file: !38, line: 91, baseType: !76, size: 64, offset: 1216)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !683, file: !38, line: 92, baseType: !79, size: 64, offset: 1280)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !683, file: !38, line: 93, baseType: !682, size: 64, offset: 1344)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !683, file: !38, line: 94, baseType: !83, size: 64, offset: 1408)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !683, file: !38, line: 95, baseType: !85, size: 64, offset: 1472)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !683, file: !38, line: 96, baseType: !30, size: 32, offset: 1536)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !683, file: !38, line: 98, baseType: !90, size: 160, offset: 1568)
!714 = !DISubprogram(name: "rpl_fseeko", scope: !268, file: !268, line: 1034, type: !715, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!715 = !DISubroutineType(types: !716)
!716 = !{!30, !682, !61, !30}
!717 = distinct !DICompileUnit(language: DW_LANG_C99, file: !718, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !719, splitDebugInlining: false, nameTableKind: None)
!718 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!719 = !{!83, !720, !671, !755}
!720 = !DISubprogram(name: "fileno", scope: !33, file: !33, line: 786, type: !721, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!721 = !DISubroutineType(types: !722)
!722 = !{!30, !723}
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !38, line: 49, size: 1728, elements: !725)
!725 = !{!726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !724, file: !38, line: 51, baseType: !30, size: 32)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !724, file: !38, line: 54, baseType: !26, size: 64, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !724, file: !38, line: 55, baseType: !26, size: 64, offset: 128)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !724, file: !38, line: 56, baseType: !26, size: 64, offset: 192)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !724, file: !38, line: 57, baseType: !26, size: 64, offset: 256)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !724, file: !38, line: 58, baseType: !26, size: 64, offset: 320)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !724, file: !38, line: 59, baseType: !26, size: 64, offset: 384)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !724, file: !38, line: 60, baseType: !26, size: 64, offset: 448)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !724, file: !38, line: 61, baseType: !26, size: 64, offset: 512)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !724, file: !38, line: 64, baseType: !26, size: 64, offset: 576)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !724, file: !38, line: 65, baseType: !26, size: 64, offset: 640)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !724, file: !38, line: 66, baseType: !26, size: 64, offset: 704)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !724, file: !38, line: 68, baseType: !53, size: 64, offset: 768)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !724, file: !38, line: 70, baseType: !723, size: 64, offset: 832)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !724, file: !38, line: 72, baseType: !30, size: 32, offset: 896)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !724, file: !38, line: 73, baseType: !30, size: 32, offset: 928)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !724, file: !38, line: 74, baseType: !59, size: 64, offset: 960)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !724, file: !38, line: 77, baseType: !63, size: 16, offset: 1024)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !724, file: !38, line: 78, baseType: !65, size: 8, offset: 1040)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !724, file: !38, line: 79, baseType: !67, size: 8, offset: 1048)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !724, file: !38, line: 81, baseType: !71, size: 64, offset: 1088)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !724, file: !38, line: 89, baseType: !74, size: 64, offset: 1152)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !724, file: !38, line: 91, baseType: !76, size: 64, offset: 1216)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !724, file: !38, line: 92, baseType: !79, size: 64, offset: 1280)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !724, file: !38, line: 93, baseType: !723, size: 64, offset: 1344)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !724, file: !38, line: 94, baseType: !83, size: 64, offset: 1408)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !724, file: !38, line: 95, baseType: !85, size: 64, offset: 1472)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !724, file: !38, line: 96, baseType: !30, size: 32, offset: 1536)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !724, file: !38, line: 98, baseType: !90, size: 160, offset: 1568)
!755 = !DISubprogram(name: "fseeko", scope: !33, file: !33, line: 707, type: !756, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!756 = !DISubroutineType(types: !757)
!757 = !{!30, !723, !61, !30}
!758 = distinct !DICompileUnit(language: DW_LANG_C99, file: !759, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !760, splitDebugInlining: false, nameTableKind: None)
!759 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!760 = !{!761, !85, !773}
!761 = !DISubprogram(name: "mbrtowc", scope: !470, file: !470, line: 296, type: !762, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!762 = !DISubroutineType(types: !763)
!763 = !{!87, !129, !28, !87, !764}
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !454, line: 13, size: 64, elements: !766)
!766 = !{!767, !768}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !765, file: !454, line: 15, baseType: !30, size: 32)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !765, file: !454, line: 20, baseType: !769, size: 32, offset: 32)
!769 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !765, file: !454, line: 16, size: 32, elements: !770)
!770 = !{!771, !772}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !769, file: !454, line: 18, baseType: !7, size: 32)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !769, file: !454, line: 19, baseType: !462, size: 32)
!773 = !DISubprogram(name: "hard_locale", scope: !774, file: !774, line: 26, type: !775, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!774 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!775 = !DISubroutineType(types: !776)
!776 = !{!165, !30}
!777 = distinct !DICompileUnit(language: DW_LANG_C99, file: !778, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !779, splitDebugInlining: false, nameTableKind: None)
!778 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!779 = !{!780}
!780 = !DISubprogram(name: "rpl_fclose", scope: !268, file: !268, line: 672, type: !781, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!781 = !DISubroutineType(types: !782)
!782 = !{!30, !783}
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !38, line: 49, size: 1728, elements: !785)
!785 = !{!786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !784, file: !38, line: 51, baseType: !30, size: 32)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !784, file: !38, line: 54, baseType: !26, size: 64, offset: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !784, file: !38, line: 55, baseType: !26, size: 64, offset: 128)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !784, file: !38, line: 56, baseType: !26, size: 64, offset: 192)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !784, file: !38, line: 57, baseType: !26, size: 64, offset: 256)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !784, file: !38, line: 58, baseType: !26, size: 64, offset: 320)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !784, file: !38, line: 59, baseType: !26, size: 64, offset: 384)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !784, file: !38, line: 60, baseType: !26, size: 64, offset: 448)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !784, file: !38, line: 61, baseType: !26, size: 64, offset: 512)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !784, file: !38, line: 64, baseType: !26, size: 64, offset: 576)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !784, file: !38, line: 65, baseType: !26, size: 64, offset: 640)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !784, file: !38, line: 66, baseType: !26, size: 64, offset: 704)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !784, file: !38, line: 68, baseType: !53, size: 64, offset: 768)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !784, file: !38, line: 70, baseType: !783, size: 64, offset: 832)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !784, file: !38, line: 72, baseType: !30, size: 32, offset: 896)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !784, file: !38, line: 73, baseType: !30, size: 32, offset: 928)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !784, file: !38, line: 74, baseType: !59, size: 64, offset: 960)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !784, file: !38, line: 77, baseType: !63, size: 16, offset: 1024)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !784, file: !38, line: 78, baseType: !65, size: 8, offset: 1040)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !784, file: !38, line: 79, baseType: !67, size: 8, offset: 1048)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !784, file: !38, line: 81, baseType: !71, size: 64, offset: 1088)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !784, file: !38, line: 89, baseType: !74, size: 64, offset: 1152)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !784, file: !38, line: 91, baseType: !76, size: 64, offset: 1216)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !784, file: !38, line: 92, baseType: !79, size: 64, offset: 1280)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !784, file: !38, line: 93, baseType: !783, size: 64, offset: 1344)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !784, file: !38, line: 94, baseType: !83, size: 64, offset: 1408)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !784, file: !38, line: 95, baseType: !85, size: 64, offset: 1472)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !784, file: !38, line: 96, baseType: !30, size: 32, offset: 1536)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !784, file: !38, line: 98, baseType: !90, size: 160, offset: 1568)
!815 = distinct !DICompileUnit(language: DW_LANG_C99, file: !816, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !817, splitDebugInlining: false, nameTableKind: None)
!816 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!817 = !{!818}
!818 = !DISubprogram(name: "setlocale_null_r", scope: !819, file: !819, line: 64, type: !820, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!819 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!820 = !DISubroutineType(types: !821)
!821 = !{!30, !30, !26, !87}
!822 = distinct !DICompileUnit(language: DW_LANG_C99, file: !823, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !824, retainedTypes: !1211, splitDebugInlining: false, nameTableKind: None)
!823 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!824 = !{!825}
!825 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !826, line: 41, baseType: !7, size: 32, elements: !827)
!826 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!827 = !{!828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210}
!828 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!829 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!830 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!831 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!832 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!833 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!834 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!835 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!836 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!837 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!838 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!839 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!840 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!841 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!842 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!843 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!844 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!845 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!846 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!847 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!848 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!849 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!850 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!851 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!852 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!853 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!854 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!855 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!856 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!857 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!858 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!859 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!860 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!861 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!862 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!863 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!864 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!865 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!866 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!867 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!868 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!869 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!870 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!871 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!872 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!873 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!874 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!875 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!876 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!877 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!878 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!879 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!880 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!881 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!882 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!883 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!884 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!885 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!886 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!887 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!888 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!889 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!890 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!891 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!892 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!893 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!894 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!895 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!896 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!897 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!898 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!899 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!900 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!901 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!902 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!903 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!904 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!905 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!906 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!907 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!908 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!909 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!910 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!911 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!912 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!913 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!914 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!915 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!916 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!917 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!918 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!919 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!920 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!921 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!922 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!923 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!924 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!925 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!926 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!927 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!928 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!929 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!930 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!931 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!932 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!933 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!934 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!935 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!936 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!937 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!938 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!939 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!940 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!941 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!942 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!943 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!944 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!945 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!946 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!947 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!948 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!949 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!950 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!951 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!952 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!953 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!954 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!955 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!956 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!957 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!958 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!959 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!960 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!961 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!962 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!963 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!964 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!965 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!966 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!967 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!968 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!969 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!970 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!971 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!972 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!973 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!974 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!975 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!976 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!977 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!978 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!979 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!980 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!981 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!982 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!983 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!984 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!985 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!986 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!987 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!988 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!989 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!990 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!991 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!992 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!993 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!994 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!995 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!996 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!997 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!998 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!999 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!1000 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!1001 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!1002 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!1003 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!1004 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!1005 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!1006 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!1007 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!1008 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!1009 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!1010 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!1011 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!1012 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!1013 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!1014 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!1015 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!1016 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!1017 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!1018 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!1019 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!1020 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!1021 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!1022 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!1023 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!1024 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!1025 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!1026 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!1027 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!1028 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!1029 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!1030 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!1031 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!1032 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!1033 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!1034 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!1035 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!1036 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!1037 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!1038 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!1039 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!1040 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!1041 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!1042 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!1043 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!1044 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!1045 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!1046 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!1047 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!1048 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!1049 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!1050 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!1051 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!1052 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!1053 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!1054 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!1055 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!1056 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!1057 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!1058 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!1059 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!1060 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!1061 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!1062 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!1063 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!1064 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!1065 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!1066 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!1067 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!1068 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!1069 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!1070 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!1071 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!1072 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!1073 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!1074 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!1075 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!1076 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!1077 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!1078 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!1079 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!1080 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!1081 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!1082 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!1083 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!1084 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!1085 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!1086 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!1087 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!1088 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!1089 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!1090 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!1091 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!1092 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!1093 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!1094 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!1095 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!1096 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!1097 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!1098 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!1099 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!1100 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!1101 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!1102 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!1103 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!1104 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!1105 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!1106 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!1107 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!1108 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!1109 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!1110 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!1111 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!1112 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!1113 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!1114 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!1115 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!1116 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!1117 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!1118 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!1119 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!1120 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!1121 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!1122 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!1123 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!1124 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!1125 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!1126 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!1127 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!1128 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!1129 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!1130 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!1131 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!1132 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!1133 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!1134 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!1135 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!1136 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!1137 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!1138 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!1139 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!1140 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!1141 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!1142 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!1143 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!1144 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!1145 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!1146 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!1147 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!1148 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!1149 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!1150 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!1151 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!1152 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!1153 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!1154 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!1155 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!1156 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!1157 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!1158 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!1159 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!1160 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!1161 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!1162 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!1163 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!1164 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!1165 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!1166 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!1167 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!1168 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!1169 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!1170 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!1171 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!1172 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!1173 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!1174 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!1175 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!1176 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!1177 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!1178 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!1179 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!1180 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!1181 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!1182 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!1183 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!1184 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!1185 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!1186 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!1187 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!1188 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!1189 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!1190 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!1191 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!1192 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!1193 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!1194 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!1195 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!1196 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!1197 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!1198 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!1199 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!1200 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!1201 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!1202 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!1203 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!1204 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!1205 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!1206 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!1207 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!1208 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!1209 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!1210 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!1211 = !{!1212, !83}
!1212 = !DISubprogram(name: "nl_langinfo", scope: !826, file: !826, line: 661, type: !1213, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !31)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!26, !30}
!1215 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1216, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !31, retainedTypes: !1217, splitDebugInlining: false, nameTableKind: None)
!1216 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1217 = !{!83, !101}
!1218 = !{!"clang version 10.0.0 "}
!1219 = !{i32 7, !"Dwarf Version", i32 4}
!1220 = !{i32 2, !"Debug Info Version", i32 3}
!1221 = !{i32 1, !"wchar_size", i32 4}
!1222 = !{i32 7, !"PIC Level", i32 2}
!1223 = !{i32 7, !"PIE Level", i32 2}
!1224 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 72, type: !1225, scopeLine: 73, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1227)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{null, !30}
!1227 = !{!1228}
!1228 = !DILocalVariable(name: "status", arg: 1, scope: !1224, file: !3, line: 72, type: !30)
!1229 = !DILocalVariable(name: "infomap", scope: !1230, file: !1231, line: 636, type: !1243)
!1230 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1231, file: !1231, line: 634, type: !99, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1232)
!1231 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1232 = !{!1233, !1229, !1234, !1235, !1242}
!1233 = !DILocalVariable(name: "program", arg: 1, scope: !1230, file: !1231, line: 634, type: !28)
!1234 = !DILocalVariable(name: "node", scope: !1230, file: !1231, line: 646, type: !28)
!1235 = !DILocalVariable(name: "map_prog", scope: !1230, file: !1231, line: 647, type: !1236)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1238)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1230, file: !1231, line: 636, size: 128, elements: !1239)
!1239 = !{!1240, !1241}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1238, file: !1231, line: 636, baseType: !28, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1238, file: !1231, line: 636, baseType: !28, size: 64, offset: 64)
!1242 = !DILocalVariable(name: "lc_messages", scope: !1230, file: !1231, line: 659, type: !28)
!1243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1237, size: 896, elements: !1244)
!1244 = !{!1245}
!1245 = !DISubrange(count: 7)
!1246 = !DILocation(line: 636, column: 67, scope: !1230, inlinedAt: !1247)
!1247 = distinct !DILocation(line: 97, column: 7, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 77, column: 5)
!1249 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 74, column: 7)
!1250 = !DILocation(line: 0, scope: !1224)
!1251 = !DILocation(line: 74, column: 14, scope: !1249)
!1252 = !DILocation(line: 74, column: 7, scope: !1224)
!1253 = !DILocation(line: 75, column: 5, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 75, column: 5)
!1255 = !{!1256, !1256, i64 0}
!1256 = !{!"any pointer", !1257, i64 0}
!1257 = !{!"omnipotent char", !1258, i64 0}
!1258 = !{!"Simple C/C++ TBAA"}
!1259 = !DILocation(line: 78, column: 7, scope: !1248)
!1260 = !DILocation(line: 82, column: 7, scope: !1248)
!1261 = !DILocation(line: 583, column: 3, scope: !1262, inlinedAt: !1263)
!1262 = distinct !DISubprogram(name: "emit_stdin_note", scope: !1231, file: !1231, line: 581, type: !95, scopeLine: 582, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !31)
!1263 = distinct !DILocation(line: 86, column: 7, scope: !1248)
!1264 = !DILocation(line: 590, column: 3, scope: !1265, inlinedAt: !1266)
!1265 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !1231, file: !1231, line: 588, type: !95, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !31)
!1266 = distinct !DILocation(line: 87, column: 7, scope: !1248)
!1267 = !DILocation(line: 89, column: 7, scope: !1248)
!1268 = !DILocation(line: 94, column: 7, scope: !1248)
!1269 = !DILocation(line: 95, column: 7, scope: !1248)
!1270 = !DILocation(line: 96, column: 7, scope: !1248)
!1271 = !DILocation(line: 0, scope: !1230, inlinedAt: !1247)
!1272 = !DILocation(line: 636, column: 3, scope: !1230, inlinedAt: !1247)
!1273 = !DILocation(line: 647, column: 36, scope: !1230, inlinedAt: !1247)
!1274 = !DILocation(line: 649, column: 3, scope: !1230, inlinedAt: !1247)
!1275 = !DILocation(line: 649, column: 33, scope: !1230, inlinedAt: !1247)
!1276 = !DILocation(line: 650, column: 13, scope: !1230, inlinedAt: !1247)
!1277 = !DILocation(line: 649, column: 20, scope: !1230, inlinedAt: !1247)
!1278 = !{!1279, !1256, i64 0}
!1279 = !{!"infomap", !1256, i64 0, !1256, i64 8}
!1280 = !DILocation(line: 649, column: 10, scope: !1230, inlinedAt: !1247)
!1281 = !DILocation(line: 649, column: 28, scope: !1230, inlinedAt: !1247)
!1282 = distinct !{!1282, !1274, !1276}
!1283 = !DILocation(line: 652, column: 17, scope: !1284, inlinedAt: !1247)
!1284 = distinct !DILexicalBlock(scope: !1230, file: !1231, line: 652, column: 7)
!1285 = !{!1279, !1256, i64 8}
!1286 = !DILocation(line: 652, column: 7, scope: !1284, inlinedAt: !1247)
!1287 = !DILocation(line: 652, column: 7, scope: !1230, inlinedAt: !1247)
!1288 = !DILocation(line: 655, column: 3, scope: !1230, inlinedAt: !1247)
!1289 = !DILocation(line: 659, column: 29, scope: !1230, inlinedAt: !1247)
!1290 = !DILocation(line: 660, column: 7, scope: !1291, inlinedAt: !1247)
!1291 = distinct !DILexicalBlock(scope: !1230, file: !1231, line: 660, column: 7)
!1292 = !DILocation(line: 660, column: 19, scope: !1291, inlinedAt: !1247)
!1293 = !DILocation(line: 660, column: 22, scope: !1291, inlinedAt: !1247)
!1294 = !DILocation(line: 660, column: 7, scope: !1230, inlinedAt: !1247)
!1295 = !DILocation(line: 666, column: 7, scope: !1296, inlinedAt: !1247)
!1296 = distinct !DILexicalBlock(scope: !1291, file: !1231, line: 661, column: 5)
!1297 = !DILocation(line: 668, column: 5, scope: !1296, inlinedAt: !1247)
!1298 = !DILocation(line: 669, column: 3, scope: !1230, inlinedAt: !1247)
!1299 = !DILocation(line: 671, column: 3, scope: !1230, inlinedAt: !1247)
!1300 = !DILocation(line: 673, column: 1, scope: !1230, inlinedAt: !1247)
!1301 = !DILocation(line: 99, column: 3, scope: !1224)
!1302 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 257, type: !1303, scopeLine: 258, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1305)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!30, !30, !151}
!1305 = !{!1306, !1307, !1308, !1309, !1310, !1311}
!1306 = !DILocalVariable(name: "argc", arg: 1, scope: !1302, file: !3, line: 257, type: !30)
!1307 = !DILocalVariable(name: "argv", arg: 2, scope: !1302, file: !3, line: 257, type: !151)
!1308 = !DILocalVariable(name: "have_tabval", scope: !1302, file: !3, line: 259, type: !165)
!1309 = !DILocalVariable(name: "tabval", scope: !1302, file: !3, line: 260, type: !140)
!1310 = !DILocalVariable(name: "c", scope: !1302, file: !3, line: 261, type: !30)
!1311 = !DILocalVariable(name: "convert_first_only", scope: !1302, file: !3, line: 265, type: !165)
!1312 = !DILocation(line: 0, scope: !1302)
!1313 = !DILocation(line: 268, column: 21, scope: !1302)
!1314 = !DILocation(line: 268, column: 3, scope: !1302)
!1315 = !DILocation(line: 269, column: 3, scope: !1302)
!1316 = !DILocation(line: 270, column: 3, scope: !1302)
!1317 = !DILocation(line: 271, column: 3, scope: !1302)
!1318 = !DILocation(line: 273, column: 3, scope: !1302)
!1319 = !DILocation(line: 275, column: 3, scope: !1302)
!1320 = !DILocation(line: 275, column: 15, scope: !1302)
!1321 = distinct !{!1321, !1319, !1322}
!1322 = !DILocation(line: 309, column: 5, scope: !1302)
!1323 = !DILocation(line: 281, column: 11, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 279, column: 9)
!1325 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 277, column: 5)
!1326 = !DILocation(line: 283, column: 31, scope: !1324)
!1327 = !{!1328, !1328, i64 0}
!1328 = !{!"_Bool", !1257, i64 0}
!1329 = !DILocation(line: 284, column: 11, scope: !1324)
!1330 = !DILocation(line: 286, column: 31, scope: !1324)
!1331 = !DILocation(line: 287, column: 28, scope: !1324)
!1332 = !DILocation(line: 287, column: 11, scope: !1324)
!1333 = !DILocation(line: 288, column: 11, scope: !1324)
!1334 = !DILocation(line: 293, column: 15, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 293, column: 15)
!1336 = !DILocation(line: 293, column: 15, scope: !1324)
!1337 = !DILocation(line: 294, column: 13, scope: !1335)
!1338 = !DILocation(line: 297, column: 9, scope: !1324)
!1339 = !DILocation(line: 298, column: 9, scope: !1324)
!1340 = !DILocation(line: 300, column: 16, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 300, column: 15)
!1342 = !DILocation(line: 300, column: 15, scope: !1324)
!1343 = !DILocation(line: 305, column: 16, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 305, column: 15)
!1345 = !DILocation(line: 305, column: 15, scope: !1324)
!1346 = !DILocation(line: 306, column: 13, scope: !1344)
!1347 = !DILocation(line: 311, column: 7, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 311, column: 7)
!1349 = !DILocation(line: 311, column: 7, scope: !1302)
!1350 = !DILocation(line: 312, column: 25, scope: !1348)
!1351 = !DILocation(line: 312, column: 5, scope: !1348)
!1352 = !DILocation(line: 314, column: 7, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 314, column: 7)
!1354 = !DILocation(line: 314, column: 7, scope: !1302)
!1355 = !DILocation(line: 315, column: 5, scope: !1353)
!1356 = !DILocation(line: 317, column: 3, scope: !1302)
!1357 = !DILocation(line: 319, column: 20, scope: !1302)
!1358 = !{!1359, !1359, i64 0}
!1359 = !{!"int", !1257, i64 0}
!1360 = !DILocation(line: 319, column: 27, scope: !1302)
!1361 = !DILocation(line: 319, column: 19, scope: !1302)
!1362 = !DILocation(line: 319, column: 3, scope: !1302)
!1363 = !DILocation(line: 109, column: 14, scope: !1364, inlinedAt: !1393)
!1364 = distinct !DISubprogram(name: "unexpand", scope: !3, file: !3, line: 106, type: !95, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1365)
!1365 = !{!1366, !1369, !1370, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1383, !1386, !1391, !1392}
!1366 = !DILocalVariable(name: "fp", scope: !1364, file: !3, line: 109, type: !1367)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !291, line: 7, baseType: !37)
!1369 = !DILocalVariable(name: "pending_blank", scope: !1364, file: !3, line: 114, type: !26)
!1370 = !DILocalVariable(name: "c", scope: !1371, file: !3, line: 127, type: !30)
!1371 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 125, column: 5)
!1372 = !DILocalVariable(name: "convert", scope: !1371, file: !3, line: 130, type: !165)
!1373 = !DILocalVariable(name: "column", scope: !1371, file: !3, line: 137, type: !140)
!1374 = !DILocalVariable(name: "next_tab_column", scope: !1371, file: !3, line: 140, type: !140)
!1375 = !DILocalVariable(name: "tab_index", scope: !1371, file: !3, line: 143, type: !85)
!1376 = !DILocalVariable(name: "one_blank_before_tab_stop", scope: !1371, file: !3, line: 146, type: !165)
!1377 = !DILocalVariable(name: "prev_blank", scope: !1371, file: !3, line: 151, type: !165)
!1378 = !DILocalVariable(name: "pending", scope: !1371, file: !3, line: 154, type: !85)
!1379 = !DILocalVariable(name: "blank", scope: !1380, file: !3, line: 166, type: !165)
!1380 = distinct !DILexicalBlock(scope: !1381, file: !3, line: 165, column: 13)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 164, column: 15)
!1382 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 160, column: 9)
!1383 = !DILocalVariable(name: "last_tab", scope: !1384, file: !3, line: 170, type: !165)
!1384 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 169, column: 17)
!1385 = distinct !DILexicalBlock(scope: !1380, file: !3, line: 168, column: 19)
!1386 = !DILocalVariable(name: "__ptr", scope: !1387, file: !3, line: 233, type: !28)
!1387 = distinct !DILexicalBlock(scope: !1388, file: !3, line: 233, column: 23)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 233, column: 23)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !3, line: 230, column: 17)
!1390 = distinct !DILexicalBlock(scope: !1380, file: !3, line: 229, column: 19)
!1391 = !DILocalVariable(name: "__stream", scope: !1387, file: !3, line: 233, type: !1367)
!1392 = !DILocalVariable(name: "__cnt", scope: !1387, file: !3, line: 233, type: !85)
!1393 = distinct !DILocation(line: 321, column: 3, scope: !1302)
!1394 = !DILocation(line: 0, scope: !1364, inlinedAt: !1393)
!1395 = !DILocation(line: 116, column: 8, scope: !1396, inlinedAt: !1393)
!1396 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 116, column: 7)
!1397 = !DILocation(line: 116, column: 7, scope: !1364, inlinedAt: !1393)
!1398 = !DILocation(line: 122, column: 28, scope: !1364, inlinedAt: !1393)
!1399 = !{!1400, !1400, i64 0}
!1400 = !{!"long", !1257, i64 0}
!1401 = !DILocation(line: 122, column: 19, scope: !1364, inlinedAt: !1393)
!1402 = !DILocation(line: 0, scope: !1371, inlinedAt: !1393)
!1403 = !DILocation(line: 124, column: 3, scope: !1364, inlinedAt: !1393)
!1404 = !DILocation(line: 143, column: 7, scope: !1371, inlinedAt: !1393)
!1405 = !DILocation(line: 143, column: 14, scope: !1371, inlinedAt: !1393)
!1406 = !DILocation(line: 159, column: 7, scope: !1371, inlinedAt: !1393)
!1407 = !DILocation(line: 161, column: 11, scope: !1382, inlinedAt: !1393)
!1408 = !DILocalVariable(name: "__fp", arg: 1, scope: !1409, file: !1410, line: 66, type: !1367)
!1409 = distinct !DISubprogram(name: "getc_unlocked", scope: !1410, file: !1410, line: 66, type: !1411, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1413)
!1410 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!30, !1367}
!1413 = !{!1408}
!1414 = !DILocation(line: 0, scope: !1409, inlinedAt: !1415)
!1415 = distinct !DILocation(line: 161, column: 23, scope: !1382, inlinedAt: !1393)
!1416 = !DILocation(line: 68, column: 10, scope: !1409, inlinedAt: !1415)
!1417 = !{!1418, !1256, i64 8}
!1418 = !{!"_IO_FILE", !1359, i64 0, !1256, i64 8, !1256, i64 16, !1256, i64 24, !1256, i64 32, !1256, i64 40, !1256, i64 48, !1256, i64 56, !1256, i64 64, !1256, i64 72, !1256, i64 80, !1256, i64 88, !1256, i64 96, !1256, i64 104, !1359, i64 112, !1359, i64 116, !1400, i64 120, !1419, i64 128, !1257, i64 130, !1257, i64 131, !1256, i64 136, !1400, i64 144, !1256, i64 152, !1256, i64 160, !1256, i64 168, !1256, i64 176, !1400, i64 184, !1359, i64 192, !1257, i64 196}
!1419 = !{!"short", !1257, i64 0}
!1420 = !{!1418, !1256, i64 16}
!1421 = !{!"branch_weights", i32 2000, i32 1}
!1422 = !{!"misexpect", i64 1, i64 2000, i64 1}
!1423 = !{!1257, !1257, i64 0}
!1424 = !DILocation(line: 161, column: 38, scope: !1382, inlinedAt: !1393)
!1425 = !DILocation(line: 161, column: 34, scope: !1382, inlinedAt: !1393)
!1426 = !DILocation(line: 161, column: 47, scope: !1382, inlinedAt: !1393)
!1427 = distinct !{!1427, !1407, !1428}
!1428 = !DILocation(line: 162, column: 13, scope: !1382, inlinedAt: !1393)
!1429 = !DILocation(line: 164, column: 15, scope: !1381, inlinedAt: !1393)
!1430 = !DILocation(line: 164, column: 15, scope: !1382, inlinedAt: !1393)
!1431 = !DILocation(line: 166, column: 31, scope: !1380, inlinedAt: !1393)
!1432 = !{!1419, !1419, i64 0}
!1433 = !DILocation(line: 166, column: 29, scope: !1380, inlinedAt: !1393)
!1434 = !DILocation(line: 166, column: 20, scope: !1380, inlinedAt: !1393)
!1435 = !DILocation(line: 0, scope: !1380, inlinedAt: !1393)
!1436 = !DILocation(line: 168, column: 19, scope: !1380, inlinedAt: !1393)
!1437 = !DILocation(line: 170, column: 19, scope: !1384, inlinedAt: !1393)
!1438 = !DILocation(line: 0, scope: !1384, inlinedAt: !1393)
!1439 = !DILocation(line: 172, column: 37, scope: !1384, inlinedAt: !1393)
!1440 = !DILocation(line: 175, column: 23, scope: !1441, inlinedAt: !1393)
!1441 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 175, column: 23)
!1442 = !{i8 0, i8 2}
!1443 = !DILocation(line: 175, column: 23, scope: !1384, inlinedAt: !1393)
!1444 = !DILocation(line: 178, column: 23, scope: !1445, inlinedAt: !1393)
!1445 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 178, column: 23)
!1446 = !DILocation(line: 178, column: 23, scope: !1384, inlinedAt: !1393)
!1447 = !DILocation(line: 180, column: 43, scope: !1448, inlinedAt: !1393)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !3, line: 180, column: 27)
!1449 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 179, column: 21)
!1450 = !DILocation(line: 180, column: 27, scope: !1449, inlinedAt: !1393)
!1451 = !DILocation(line: 181, column: 25, scope: !1448, inlinedAt: !1393)
!1452 = !DILocation(line: 183, column: 29, scope: !1453, inlinedAt: !1393)
!1453 = distinct !DILexicalBlock(scope: !1449, file: !3, line: 183, column: 27)
!1454 = !DILocation(line: 183, column: 27, scope: !1449, inlinedAt: !1393)
!1455 = !DILocation(line: 187, column: 31, scope: !1456, inlinedAt: !1393)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 187, column: 31)
!1457 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 184, column: 25)
!1458 = !DILocation(line: 187, column: 31, scope: !1457, inlinedAt: !1393)
!1459 = !DILocation(line: 192, column: 33, scope: !1460, inlinedAt: !1393)
!1460 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 191, column: 25)
!1461 = !DILocation(line: 194, column: 34, scope: !1462, inlinedAt: !1393)
!1462 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 194, column: 31)
!1463 = !DILocation(line: 194, column: 55, scope: !1462, inlinedAt: !1393)
!1464 = !DILocation(line: 194, column: 45, scope: !1462, inlinedAt: !1393)
!1465 = !DILocation(line: 0, scope: !1453, inlinedAt: !1393)
!1466 = !DILocation(line: 211, column: 33, scope: !1449, inlinedAt: !1393)
!1467 = !DILocation(line: 212, column: 21, scope: !1449, inlinedAt: !1393)
!1468 = !DILocation(line: 213, column: 17, scope: !1385, inlinedAt: !1393)
!1469 = !DILocation(line: 214, column: 26, scope: !1470, inlinedAt: !1393)
!1470 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 214, column: 24)
!1471 = !DILocation(line: 214, column: 24, scope: !1385, inlinedAt: !1393)
!1472 = !DILocation(line: 218, column: 30, scope: !1473, inlinedAt: !1393)
!1473 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 215, column: 17)
!1474 = !DILocation(line: 218, column: 26, scope: !1473, inlinedAt: !1393)
!1475 = !DILocation(line: 220, column: 34, scope: !1473, inlinedAt: !1393)
!1476 = !DILocation(line: 220, column: 33, scope: !1473, inlinedAt: !1393)
!1477 = !DILocation(line: 220, column: 29, scope: !1473, inlinedAt: !1393)
!1478 = !DILocation(line: 221, column: 17, scope: !1473, inlinedAt: !1393)
!1479 = !DILocation(line: 224, column: 25, scope: !1480, inlinedAt: !1393)
!1480 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 223, column: 17)
!1481 = !DILocation(line: 225, column: 24, scope: !1482, inlinedAt: !1393)
!1482 = distinct !DILexicalBlock(scope: !1480, file: !3, line: 225, column: 23)
!1483 = !DILocation(line: 225, column: 23, scope: !1480, inlinedAt: !1393)
!1484 = !DILocation(line: 226, column: 21, scope: !1482, inlinedAt: !1393)
!1485 = !DILocation(line: 0, scope: !1385, inlinedAt: !1393)
!1486 = !DILocation(line: 161, column: 21, scope: !1382, inlinedAt: !1393)
!1487 = !DILocation(line: 229, column: 19, scope: !1380, inlinedAt: !1393)
!1488 = !DILocation(line: 231, column: 38, scope: !1489, inlinedAt: !1393)
!1489 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 231, column: 23)
!1490 = !DILocation(line: 231, column: 23, scope: !1389, inlinedAt: !1393)
!1491 = !DILocation(line: 232, column: 38, scope: !1489, inlinedAt: !1393)
!1492 = !DILocation(line: 232, column: 21, scope: !1489, inlinedAt: !1393)
!1493 = !DILocation(line: 0, scope: !1388, inlinedAt: !1393)
!1494 = !DILocation(line: 233, column: 23, scope: !1388, inlinedAt: !1393)
!1495 = !DILocation(line: 233, column: 66, scope: !1388, inlinedAt: !1393)
!1496 = !DILocation(line: 233, column: 23, scope: !1389, inlinedAt: !1393)
!1497 = !DILocation(line: 234, column: 21, scope: !1388, inlinedAt: !1393)
!1498 = !DILocation(line: 240, column: 26, scope: !1380, inlinedAt: !1393)
!1499 = !DILocation(line: 240, column: 46, scope: !1380, inlinedAt: !1393)
!1500 = !DILocation(line: 240, column: 23, scope: !1380, inlinedAt: !1393)
!1501 = !DILocation(line: 198, column: 35, scope: !1502, inlinedAt: !1393)
!1502 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 195, column: 29)
!1503 = !DILocation(line: 200, column: 58, scope: !1502, inlinedAt: !1393)
!1504 = !DILocation(line: 200, column: 52, scope: !1502, inlinedAt: !1393)
!1505 = !DILocation(line: 200, column: 31, scope: !1502, inlinedAt: !1393)
!1506 = !DILocation(line: 200, column: 56, scope: !1502, inlinedAt: !1393)
!1507 = !DILocation(line: 243, column: 17, scope: !1508, inlinedAt: !1393)
!1508 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 243, column: 15)
!1509 = !DILocation(line: 243, column: 15, scope: !1382, inlinedAt: !1393)
!1510 = !DILocation(line: 245, column: 15, scope: !1511, inlinedAt: !1393)
!1511 = distinct !DILexicalBlock(scope: !1508, file: !3, line: 244, column: 13)
!1512 = !DILocation(line: 253, column: 5, scope: !1364, inlinedAt: !1393)
!1513 = !DILocalVariable(name: "__c", arg: 1, scope: !1514, file: !1410, line: 108, type: !30)
!1514 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1410, file: !1410, line: 108, type: !1515, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1517)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!30, !30}
!1517 = !{!1513}
!1518 = !DILocation(line: 0, scope: !1514, inlinedAt: !1519)
!1519 = distinct !DILocation(line: 249, column: 15, scope: !1520, inlinedAt: !1393)
!1520 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 249, column: 15)
!1521 = !DILocation(line: 110, column: 10, scope: !1514, inlinedAt: !1519)
!1522 = !{!1418, !1256, i64 40}
!1523 = !{!1418, !1256, i64 48}
!1524 = !DILocation(line: 249, column: 15, scope: !1382, inlinedAt: !1393)
!1525 = !DILocation(line: 249, column: 27, scope: !1520, inlinedAt: !1393)
!1526 = !DILocation(line: 250, column: 13, scope: !1520, inlinedAt: !1393)
!1527 = !DILocation(line: 185, column: 34, scope: !1457, inlinedAt: !1393)
!1528 = !DILocation(line: 236, column: 45, scope: !1389, inlinedAt: !1393)
!1529 = !DILocation(line: 239, column: 26, scope: !1380, inlinedAt: !1393)
!1530 = !DILocation(line: 235, column: 27, scope: !1389, inlinedAt: !1393)
!1531 = !DILocation(line: 252, column: 16, scope: !1371, inlinedAt: !1393)
!1532 = !DILocation(line: 251, column: 9, scope: !1382, inlinedAt: !1393)
!1533 = distinct !{!1533, !1406, !1534}
!1534 = !DILocation(line: 252, column: 23, scope: !1371, inlinedAt: !1393)
!1535 = !DILocation(line: 323, column: 3, scope: !1302)
!1536 = !DILocation(line: 325, column: 10, scope: !1302)
!1537 = !DILocation(line: 326, column: 1, scope: !1302)
!1538 = distinct !DISubprogram(name: "add_tab_stop", scope: !183, file: !183, line: 78, type: !1539, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !182, retainedNodes: !1541)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{null, !140}
!1541 = !{!1542, !1543, !1544}
!1542 = !DILocalVariable(name: "tabval", arg: 1, scope: !1538, file: !183, line: 78, type: !140)
!1543 = !DILocalVariable(name: "prev_column", scope: !1538, file: !183, line: 80, type: !140)
!1544 = !DILocalVariable(name: "column_width", scope: !1538, file: !183, line: 81, type: !140)
!1545 = !DILocation(line: 0, scope: !1538)
!1546 = !DILocation(line: 80, column: 27, scope: !1538)
!1547 = !DILocation(line: 80, column: 44, scope: !1538)
!1548 = !DILocation(line: 80, column: 68, scope: !1538)
!1549 = !DILocation(line: 81, column: 28, scope: !1538)
!1550 = !DILocation(line: 83, column: 25, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1538, file: !183, line: 83, column: 7)
!1552 = !DILocation(line: 83, column: 22, scope: !1551)
!1553 = !DILocation(line: 83, column: 7, scope: !1538)
!1554 = !DILocation(line: 85, column: 3, scope: !1538)
!1555 = !DILocation(line: 84, column: 16, scope: !1551)
!1556 = !DILocation(line: 0, scope: !209, inlinedAt: !1557)
!1557 = distinct !DILocation(line: 84, column: 16, scope: !1551)
!1558 = !DILocation(line: 178, column: 9, scope: !1559, inlinedAt: !1557)
!1559 = distinct !DILexicalBlock(scope: !209, file: !157, line: 178, column: 7)
!1560 = !DILocation(line: 178, column: 7, scope: !209, inlinedAt: !1557)
!1561 = !DILocation(line: 180, column: 11, scope: !1562, inlinedAt: !1557)
!1562 = distinct !DILexicalBlock(scope: !1559, file: !157, line: 179, column: 5)
!1563 = !DILocation(line: 191, column: 11, scope: !1564, inlinedAt: !1557)
!1564 = distinct !DILexicalBlock(scope: !1562, file: !157, line: 191, column: 11)
!1565 = !DILocation(line: 191, column: 11, scope: !1562, inlinedAt: !1557)
!1566 = !DILocation(line: 192, column: 9, scope: !1564, inlinedAt: !1557)
!1567 = !DILocation(line: 201, column: 11, scope: !1568, inlinedAt: !1557)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !157, line: 200, column: 11)
!1569 = distinct !DILexicalBlock(scope: !1559, file: !157, line: 195, column: 5)
!1570 = !DILocation(line: 200, column: 11, scope: !1569, inlinedAt: !1557)
!1571 = !DILocation(line: 202, column: 9, scope: !1568, inlinedAt: !1557)
!1572 = !DILocation(line: 203, column: 14, scope: !1569, inlinedAt: !1557)
!1573 = !DILocation(line: 203, column: 18, scope: !1569, inlinedAt: !1557)
!1574 = !DILocation(line: 203, column: 9, scope: !1569, inlinedAt: !1557)
!1575 = !DILocation(line: 206, column: 7, scope: !209, inlinedAt: !1557)
!1576 = !DILocation(line: 207, column: 25, scope: !209, inlinedAt: !1557)
!1577 = !DILocation(line: 207, column: 10, scope: !209, inlinedAt: !1557)
!1578 = !DILocation(line: 84, column: 14, scope: !1551)
!1579 = !DILocation(line: 84, column: 5, scope: !1551)
!1580 = !DILocation(line: 85, column: 26, scope: !1538)
!1581 = !DILocation(line: 85, column: 30, scope: !1538)
!1582 = !DILocation(line: 87, column: 7, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1538, file: !183, line: 87, column: 7)
!1584 = !DILocation(line: 87, column: 24, scope: !1583)
!1585 = !DILocation(line: 87, column: 7, scope: !1538)
!1586 = !DILocation(line: 91, column: 24, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1583, file: !183, line: 88, column: 5)
!1588 = !DILocation(line: 92, column: 5, scope: !1587)
!1589 = !DILocation(line: 93, column: 1, scope: !1538)
!1590 = distinct !DISubprogram(name: "parse_tab_stops", scope: !183, file: !183, line: 132, type: !99, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !182, retainedNodes: !1591)
!1591 = !{!1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1610}
!1592 = !DILocalVariable(name: "stops", arg: 1, scope: !1590, file: !183, line: 132, type: !28)
!1593 = !DILocalVariable(name: "have_tabval", scope: !1590, file: !183, line: 134, type: !165)
!1594 = !DILocalVariable(name: "tabval", scope: !1590, file: !183, line: 135, type: !140)
!1595 = !DILocalVariable(name: "extend_tabval", scope: !1590, file: !183, line: 136, type: !165)
!1596 = !DILocalVariable(name: "increment_tabval", scope: !1590, file: !183, line: 137, type: !165)
!1597 = !DILocalVariable(name: "num_start", scope: !1590, file: !183, line: 138, type: !28)
!1598 = !DILocalVariable(name: "ok", scope: !1590, file: !183, line: 139, type: !165)
!1599 = !DILocalVariable(name: "len", scope: !1600, file: !183, line: 202, type: !85)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !183, line: 201, column: 13)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !183, line: 200, column: 15)
!1602 = distinct !DILexicalBlock(scope: !1603, file: !183, line: 191, column: 9)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !183, line: 190, column: 16)
!1604 = distinct !DILexicalBlock(scope: !1605, file: !183, line: 179, column: 16)
!1605 = distinct !DILexicalBlock(scope: !1606, file: !183, line: 168, column: 16)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !183, line: 143, column: 11)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !183, line: 142, column: 5)
!1608 = distinct !DILexicalBlock(scope: !1609, file: !183, line: 141, column: 3)
!1609 = distinct !DILexicalBlock(scope: !1590, file: !183, line: 141, column: 3)
!1610 = !DILocalVariable(name: "bad_num", scope: !1600, file: !183, line: 203, type: !26)
!1611 = !DILocation(line: 0, scope: !1590)
!1612 = !DILocation(line: 141, column: 3, scope: !1590)
!1613 = !DILocation(line: 135, column: 13, scope: !1590)
!1614 = !DILocation(line: 136, column: 8, scope: !1590)
!1615 = !DILocation(line: 137, column: 8, scope: !1590)
!1616 = !DILocation(line: 138, column: 15, scope: !1590)
!1617 = !DILocation(line: 139, column: 8, scope: !1590)
!1618 = !DILocation(line: 141, column: 10, scope: !1608)
!1619 = !DILocation(line: 141, column: 3, scope: !1609)
!1620 = !DILocation(line: 143, column: 28, scope: !1606)
!1621 = !DILocation(line: 143, column: 11, scope: !1607)
!1622 = !DILocation(line: 145, column: 15, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !183, line: 145, column: 15)
!1624 = distinct !DILexicalBlock(scope: !1606, file: !183, line: 144, column: 9)
!1625 = !DILocation(line: 145, column: 15, scope: !1624)
!1626 = !DILocation(line: 147, column: 19, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !183, line: 147, column: 19)
!1628 = distinct !DILexicalBlock(scope: !1623, file: !183, line: 146, column: 13)
!1629 = !DILocation(line: 147, column: 19, scope: !1628)
!1630 = !DILocalVariable(name: "tabval", arg: 1, scope: !1631, file: !183, line: 96, type: !140)
!1631 = distinct !DISubprogram(name: "set_extend_size", scope: !183, file: !183, line: 96, type: !1632, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !182, retainedNodes: !1634)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!165, !140}
!1634 = !{!1630, !1635}
!1635 = !DILocalVariable(name: "ok", scope: !1631, file: !183, line: 98, type: !165)
!1636 = !DILocation(line: 0, scope: !1631, inlinedAt: !1637)
!1637 = distinct !DILocation(line: 149, column: 25, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !183, line: 149, column: 23)
!1639 = distinct !DILexicalBlock(scope: !1627, file: !183, line: 148, column: 17)
!1640 = !DILocation(line: 100, column: 7, scope: !1641, inlinedAt: !1637)
!1641 = distinct !DILexicalBlock(scope: !1631, file: !183, line: 100, column: 7)
!1642 = !DILocation(line: 100, column: 7, scope: !1631, inlinedAt: !1637)
!1643 = !DILocation(line: 107, column: 15, scope: !1631, inlinedAt: !1637)
!1644 = !DILocation(line: 149, column: 23, scope: !1639)
!1645 = !DILocation(line: 103, column: 14, scope: !1646, inlinedAt: !1637)
!1646 = distinct !DILexicalBlock(scope: !1641, file: !183, line: 101, column: 5)
!1647 = !DILocation(line: 102, column: 7, scope: !1646, inlinedAt: !1637)
!1648 = !DILocation(line: 155, column: 24, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1627, file: !183, line: 155, column: 24)
!1650 = !DILocation(line: 155, column: 24, scope: !1627)
!1651 = !DILocalVariable(name: "tabval", arg: 1, scope: !1652, file: !183, line: 113, type: !140)
!1652 = distinct !DISubprogram(name: "set_increment_size", scope: !183, file: !183, line: 113, type: !1632, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !182, retainedNodes: !1653)
!1653 = !{!1651, !1654}
!1654 = !DILocalVariable(name: "ok", scope: !1652, file: !183, line: 115, type: !165)
!1655 = !DILocation(line: 0, scope: !1652, inlinedAt: !1656)
!1656 = distinct !DILocation(line: 157, column: 25, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !183, line: 157, column: 23)
!1658 = distinct !DILexicalBlock(scope: !1649, file: !183, line: 156, column: 17)
!1659 = !DILocation(line: 117, column: 7, scope: !1660, inlinedAt: !1656)
!1660 = distinct !DILexicalBlock(scope: !1652, file: !183, line: 117, column: 7)
!1661 = !DILocation(line: 117, column: 7, scope: !1652, inlinedAt: !1656)
!1662 = !DILocation(line: 124, column: 18, scope: !1652, inlinedAt: !1656)
!1663 = !DILocation(line: 157, column: 23, scope: !1658)
!1664 = !DILocation(line: 120, column: 14, scope: !1665, inlinedAt: !1656)
!1665 = distinct !DILexicalBlock(scope: !1660, file: !183, line: 118, column: 5)
!1666 = !DILocation(line: 119, column: 7, scope: !1665, inlinedAt: !1656)
!1667 = !DILocation(line: 164, column: 17, scope: !1649)
!1668 = !DILocation(line: 168, column: 16, scope: !1606)
!1669 = !DILocation(line: 170, column: 15, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1671, file: !183, line: 170, column: 15)
!1671 = distinct !DILexicalBlock(scope: !1605, file: !183, line: 169, column: 9)
!1672 = !DILocation(line: 170, column: 15, scope: !1671)
!1673 = !DILocation(line: 172, column: 28, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1670, file: !183, line: 171, column: 13)
!1675 = !DILocation(line: 173, column: 22, scope: !1674)
!1676 = !DILocation(line: 172, column: 15, scope: !1674)
!1677 = !DILocation(line: 175, column: 13, scope: !1674)
!1678 = !DILocation(line: 181, column: 15, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1680, file: !183, line: 181, column: 15)
!1680 = distinct !DILexicalBlock(scope: !1604, file: !183, line: 180, column: 9)
!1681 = !DILocation(line: 181, column: 15, scope: !1680)
!1682 = !DILocation(line: 183, column: 28, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1679, file: !183, line: 182, column: 13)
!1684 = !DILocation(line: 184, column: 22, scope: !1683)
!1685 = !DILocation(line: 183, column: 15, scope: !1683)
!1686 = !DILocation(line: 186, column: 13, scope: !1683)
!1687 = !DILocation(line: 168, column: 16, scope: !1605)
!1688 = !DILocation(line: 190, column: 16, scope: !1603)
!1689 = !DILocation(line: 190, column: 16, scope: !1604)
!1690 = !DILocation(line: 192, column: 16, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1602, file: !183, line: 192, column: 15)
!1692 = !DILocation(line: 192, column: 15, scope: !1602)
!1693 = !DILocation(line: 200, column: 16, scope: !1601)
!1694 = !DILocation(line: 200, column: 15, scope: !1602)
!1695 = !DILocation(line: 202, column: 28, scope: !1600)
!1696 = !DILocation(line: 0, scope: !1600)
!1697 = !DILocation(line: 203, column: 31, scope: !1600)
!1698 = !DILocation(line: 204, column: 28, scope: !1600)
!1699 = !DILocation(line: 204, column: 59, scope: !1600)
!1700 = !DILocation(line: 204, column: 15, scope: !1600)
!1701 = !DILocation(line: 205, column: 15, scope: !1600)
!1702 = !DILocation(line: 207, column: 33, scope: !1600)
!1703 = !DILocation(line: 207, column: 39, scope: !1600)
!1704 = !DILocation(line: 208, column: 13, scope: !1600)
!1705 = !DILocation(line: 212, column: 24, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1603, file: !183, line: 211, column: 9)
!1707 = !DILocation(line: 213, column: 18, scope: !1706)
!1708 = !DILocation(line: 212, column: 11, scope: !1706)
!1709 = !DILocation(line: 215, column: 11, scope: !1706)
!1710 = !DILocation(line: 141, column: 23, scope: !1608)
!1711 = !DILocation(line: 141, column: 3, scope: !1608)
!1712 = distinct !{!1712, !1619, !1713}
!1713 = !DILocation(line: 217, column: 5, scope: !1609)
!1714 = !DILocation(line: 219, column: 10, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1590, file: !183, line: 219, column: 7)
!1716 = !DILocation(line: 221, column: 11, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1718, file: !183, line: 221, column: 11)
!1718 = distinct !DILexicalBlock(scope: !1715, file: !183, line: 220, column: 5)
!1719 = !DILocation(line: 221, column: 11, scope: !1718)
!1720 = !DILocation(line: 0, scope: !1631, inlinedAt: !1721)
!1721 = distinct !DILocation(line: 222, column: 15, scope: !1717)
!1722 = !DILocation(line: 100, column: 7, scope: !1641, inlinedAt: !1721)
!1723 = !DILocation(line: 100, column: 7, scope: !1631, inlinedAt: !1721)
!1724 = !DILocation(line: 103, column: 14, scope: !1646, inlinedAt: !1721)
!1725 = !DILocation(line: 102, column: 7, scope: !1646, inlinedAt: !1721)
!1726 = !DILocation(line: 106, column: 5, scope: !1646, inlinedAt: !1721)
!1727 = !DILocation(line: 107, column: 15, scope: !1631, inlinedAt: !1721)
!1728 = !DILocation(line: 222, column: 9, scope: !1717)
!1729 = !DILocation(line: 223, column: 16, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1717, file: !183, line: 223, column: 16)
!1731 = !DILocation(line: 223, column: 16, scope: !1717)
!1732 = !DILocation(line: 0, scope: !1652, inlinedAt: !1733)
!1733 = distinct !DILocation(line: 224, column: 15, scope: !1730)
!1734 = !DILocation(line: 117, column: 7, scope: !1660, inlinedAt: !1733)
!1735 = !DILocation(line: 117, column: 7, scope: !1652, inlinedAt: !1733)
!1736 = !DILocation(line: 120, column: 14, scope: !1665, inlinedAt: !1733)
!1737 = !DILocation(line: 119, column: 7, scope: !1665, inlinedAt: !1733)
!1738 = !DILocation(line: 123, column: 5, scope: !1665, inlinedAt: !1733)
!1739 = !DILocation(line: 124, column: 18, scope: !1652, inlinedAt: !1733)
!1740 = !DILocation(line: 224, column: 9, scope: !1730)
!1741 = !DILocation(line: 226, column: 9, scope: !1730)
!1742 = !DILocation(line: 229, column: 9, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1590, file: !183, line: 229, column: 7)
!1744 = !DILocation(line: 229, column: 7, scope: !1590)
!1745 = !DILocation(line: 230, column: 5, scope: !1743)
!1746 = !DILocation(line: 231, column: 1, scope: !1590)
!1747 = distinct !DISubprogram(name: "finalize_tab_stops", scope: !183, file: !183, line: 263, type: !95, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !182, retainedNodes: !31)
!1748 = !DILocation(line: 265, column: 23, scope: !1747)
!1749 = !DILocation(line: 265, column: 33, scope: !1747)
!1750 = !DILocalVariable(name: "tabs", arg: 1, scope: !1751, file: !183, line: 237, type: !1754)
!1751 = distinct !DISubprogram(name: "validate_tab_stops", scope: !183, file: !183, line: 237, type: !1752, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !182, retainedNodes: !1756)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{null, !1754, !85}
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!1756 = !{!1750, !1757, !1758, !1759}
!1757 = !DILocalVariable(name: "entries", arg: 2, scope: !1751, file: !183, line: 237, type: !85)
!1758 = !DILocalVariable(name: "prev_tab", scope: !1751, file: !183, line: 239, type: !140)
!1759 = !DILocalVariable(name: "i", scope: !1760, file: !183, line: 241, type: !85)
!1760 = distinct !DILexicalBlock(scope: !1751, file: !183, line: 241, column: 3)
!1761 = !DILocation(line: 0, scope: !1751, inlinedAt: !1762)
!1762 = distinct !DILocation(line: 265, column: 3, scope: !1747)
!1763 = !DILocation(line: 0, scope: !1760, inlinedAt: !1762)
!1764 = !DILocation(line: 241, column: 24, scope: !1765, inlinedAt: !1762)
!1765 = distinct !DILexicalBlock(scope: !1760, file: !183, line: 241, column: 3)
!1766 = !DILocation(line: 241, column: 3, scope: !1760, inlinedAt: !1762)
!1767 = distinct !{!1767, !1766, !1768}
!1768 = !DILocation(line: 248, column: 5, scope: !1760, inlinedAt: !1762)
!1769 = !DILocation(line: 250, column: 7, scope: !1770, inlinedAt: !1762)
!1770 = distinct !DILexicalBlock(scope: !1751, file: !183, line: 250, column: 7)
!1771 = !DILocation(line: 250, column: 25, scope: !1770, inlinedAt: !1762)
!1772 = !DILocation(line: 250, column: 22, scope: !1770, inlinedAt: !1762)
!1773 = !DILocation(line: 243, column: 11, scope: !1774, inlinedAt: !1762)
!1774 = distinct !DILexicalBlock(scope: !1775, file: !183, line: 243, column: 11)
!1775 = distinct !DILexicalBlock(scope: !1765, file: !183, line: 242, column: 5)
!1776 = !DILocation(line: 243, column: 19, scope: !1774, inlinedAt: !1762)
!1777 = !DILocation(line: 243, column: 11, scope: !1775, inlinedAt: !1762)
!1778 = !DILocation(line: 244, column: 9, scope: !1774, inlinedAt: !1762)
!1779 = !DILocation(line: 245, column: 19, scope: !1780, inlinedAt: !1762)
!1780 = distinct !DILexicalBlock(scope: !1775, file: !183, line: 245, column: 11)
!1781 = !DILocation(line: 241, column: 36, scope: !1765, inlinedAt: !1762)
!1782 = !DILocation(line: 245, column: 11, scope: !1775, inlinedAt: !1762)
!1783 = !DILocation(line: 246, column: 9, scope: !1780, inlinedAt: !1762)
!1784 = !DILocation(line: 251, column: 5, scope: !1770, inlinedAt: !1762)
!1785 = !DILocation(line: 267, column: 7, scope: !1747)
!1786 = !DILocation(line: 268, column: 35, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1747, file: !183, line: 267, column: 7)
!1788 = !DILocation(line: 268, column: 33, scope: !1787)
!1789 = !DILocation(line: 268, column: 5, scope: !1787)
!1790 = !DILocation(line: 271, column: 27, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1787, file: !183, line: 271, column: 12)
!1792 = !DILocation(line: 271, column: 32, scope: !1791)
!1793 = !DILocation(line: 272, column: 16, scope: !1791)
!1794 = !DILocation(line: 272, column: 5, scope: !1791)
!1795 = !DILocation(line: 0, scope: !1787)
!1796 = !DILocation(line: 275, column: 1, scope: !1747)
!1797 = distinct !DISubprogram(name: "get_next_tab_column", scope: !183, file: !183, line: 279, type: !1798, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !182, retainedNodes: !1800)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{!140, !1755, !212, !164}
!1800 = !{!1801, !1802, !1803, !1804, !1808}
!1801 = !DILocalVariable(name: "column", arg: 1, scope: !1797, file: !183, line: 279, type: !1755)
!1802 = !DILocalVariable(name: "tab_index", arg: 2, scope: !1797, file: !183, line: 279, type: !212)
!1803 = !DILocalVariable(name: "last_tab", arg: 3, scope: !1797, file: !183, line: 280, type: !164)
!1804 = !DILocalVariable(name: "tab", scope: !1805, file: !183, line: 292, type: !140)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !183, line: 291, column: 5)
!1806 = distinct !DILexicalBlock(scope: !1807, file: !183, line: 290, column: 3)
!1807 = distinct !DILexicalBlock(scope: !1797, file: !183, line: 290, column: 3)
!1808 = !DILocalVariable(name: "end_tab", scope: !1809, file: !183, line: 304, type: !140)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !183, line: 303, column: 5)
!1810 = distinct !DILexicalBlock(scope: !1797, file: !183, line: 302, column: 7)
!1811 = !DILocation(line: 0, scope: !1797)
!1812 = !DILocation(line: 282, column: 13, scope: !1797)
!1813 = !DILocation(line: 285, column: 7, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1797, file: !183, line: 285, column: 7)
!1815 = !DILocation(line: 285, column: 7, scope: !1797)
!1816 = !DILocation(line: 290, column: 11, scope: !1806)
!1817 = !DILocation(line: 290, column: 24, scope: !1806)
!1818 = !DILocation(line: 290, column: 22, scope: !1806)
!1819 = !DILocation(line: 290, column: 3, scope: !1807)
!1820 = !DILocation(line: 0, scope: !1805)
!1821 = !DILocation(line: 286, column: 40, scope: !1814)
!1822 = !DILocation(line: 286, column: 31, scope: !1814)
!1823 = !DILocation(line: 286, column: 19, scope: !1814)
!1824 = !DILocation(line: 286, column: 5, scope: !1814)
!1825 = !DILocation(line: 292, column: 25, scope: !1805)
!1826 = !DILocation(line: 293, column: 20, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1805, file: !183, line: 293, column: 13)
!1828 = !DILocation(line: 290, column: 53, scope: !1806)
!1829 = distinct !{!1829, !1819, !1830}
!1830 = !DILocation(line: 295, column: 5, scope: !1807)
!1831 = !DILocation(line: 298, column: 7, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1797, file: !183, line: 298, column: 7)
!1833 = !DILocation(line: 298, column: 7, scope: !1797)
!1834 = !DILocation(line: 299, column: 43, scope: !1832)
!1835 = !DILocation(line: 299, column: 34, scope: !1832)
!1836 = !DILocation(line: 299, column: 19, scope: !1832)
!1837 = !DILocation(line: 299, column: 5, scope: !1832)
!1838 = !DILocation(line: 302, column: 7, scope: !1810)
!1839 = !DILocation(line: 302, column: 7, scope: !1797)
!1840 = !DILocation(line: 304, column: 27, scope: !1809)
!1841 = !DILocation(line: 304, column: 51, scope: !1809)
!1842 = !DILocation(line: 0, scope: !1809)
!1843 = !DILocation(line: 306, column: 50, scope: !1809)
!1844 = !DILocation(line: 306, column: 61, scope: !1809)
!1845 = !DILocation(line: 306, column: 39, scope: !1809)
!1846 = !DILocation(line: 306, column: 21, scope: !1809)
!1847 = !DILocation(line: 309, column: 13, scope: !1797)
!1848 = !DILocation(line: 310, column: 3, scope: !1797)
!1849 = !DILocation(line: 311, column: 1, scope: !1797)
!1850 = distinct !DISubprogram(name: "set_file_list", scope: !183, file: !183, line: 318, type: !149, scopeLine: 319, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !182, retainedNodes: !1851)
!1851 = !{!1852}
!1852 = !DILocalVariable(name: "list", arg: 1, scope: !1850, file: !183, line: 318, type: !151)
!1853 = !DILocation(line: 0, scope: !1850)
!1854 = !DILocation(line: 320, column: 19, scope: !1850)
!1855 = !DILocation(line: 322, column: 8, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1850, file: !183, line: 322, column: 7)
!1857 = !DILocation(line: 0, scope: !1856)
!1858 = !DILocation(line: 326, column: 1, scope: !1850)
!1859 = !DILocation(line: 0, scope: !286)
!1860 = !DILocation(line: 339, column: 7, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !286, file: !183, line: 339, column: 7)
!1862 = !DILocation(line: 339, column: 7, scope: !286)
!1863 = !DILocation(line: 341, column: 7, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1865, file: !183, line: 341, column: 7)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !183, line: 341, column: 7)
!1866 = distinct !DILexicalBlock(scope: !1861, file: !183, line: 340, column: 5)
!1867 = !DILocation(line: 341, column: 7, scope: !1865)
!1868 = !DILocalVariable(name: "__stream", arg: 1, scope: !1869, file: !1410, line: 135, type: !289)
!1869 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1410, file: !1410, line: 135, type: !1870, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !182, retainedNodes: !1872)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{!30, !289}
!1872 = !{!1868}
!1873 = !DILocation(line: 0, scope: !1869, inlinedAt: !1874)
!1874 = distinct !DILocation(line: 342, column: 11, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1866, file: !183, line: 342, column: 11)
!1876 = !DILocation(line: 137, column: 10, scope: !1869, inlinedAt: !1874)
!1877 = !{!1418, !1359, i64 0}
!1878 = !DILocation(line: 342, column: 11, scope: !1875)
!1879 = !DILocation(line: 342, column: 11, scope: !1866)
!1880 = !DILocation(line: 344, column: 21, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1875, file: !183, line: 343, column: 9)
!1882 = !DILocation(line: 344, column: 34, scope: !1881)
!1883 = !DILocation(line: 344, column: 11, scope: !1881)
!1884 = !DILocation(line: 345, column: 23, scope: !1881)
!1885 = !DILocation(line: 347, column: 11, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1866, file: !183, line: 347, column: 11)
!1887 = !DILocation(line: 346, column: 9, scope: !1881)
!1888 = !DILocation(line: 347, column: 11, scope: !1866)
!1889 = !DILocation(line: 348, column: 9, scope: !1886)
!1890 = !DILocation(line: 349, column: 16, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1886, file: !183, line: 349, column: 16)
!1892 = !DILocation(line: 349, column: 28, scope: !1891)
!1893 = !DILocation(line: 349, column: 16, scope: !1886)
!1894 = !DILocation(line: 351, column: 21, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1891, file: !183, line: 350, column: 9)
!1896 = !DILocation(line: 351, column: 34, scope: !1895)
!1897 = !DILocation(line: 351, column: 11, scope: !1895)
!1898 = !DILocation(line: 352, column: 23, scope: !1895)
!1899 = !DILocation(line: 353, column: 9, scope: !1895)
!1900 = !DILocation(line: 356, column: 28, scope: !286)
!1901 = !DILocation(line: 356, column: 18, scope: !286)
!1902 = !DILocation(line: 356, column: 32, scope: !286)
!1903 = !DILocation(line: 356, column: 3, scope: !286)
!1904 = !DILocation(line: 358, column: 11, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1906, file: !183, line: 358, column: 11)
!1906 = distinct !DILexicalBlock(scope: !286, file: !183, line: 357, column: 5)
!1907 = !DILocation(line: 358, column: 11, scope: !1906)
!1908 = !DILocation(line: 360, column: 27, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1905, file: !183, line: 359, column: 9)
!1910 = !DILocation(line: 361, column: 16, scope: !1909)
!1911 = !DILocation(line: 362, column: 9, scope: !1909)
!1912 = !DILocation(line: 364, column: 14, scope: !1905)
!1913 = !DILocation(line: 0, scope: !1905)
!1914 = !DILocation(line: 365, column: 11, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1906, file: !183, line: 365, column: 11)
!1916 = !DILocation(line: 365, column: 11, scope: !1906)
!1917 = !DILocation(line: 367, column: 21, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1915, file: !183, line: 366, column: 9)
!1919 = !DILocation(line: 368, column: 11, scope: !1918)
!1920 = !DILocation(line: 369, column: 11, scope: !1918)
!1921 = !DILocation(line: 371, column: 17, scope: !1906)
!1922 = !DILocation(line: 371, column: 30, scope: !1906)
!1923 = !DILocation(line: 371, column: 7, scope: !1906)
!1924 = !DILocation(line: 372, column: 19, scope: !1906)
!1925 = distinct !{!1925, !1903, !1926}
!1926 = !DILocation(line: 373, column: 5, scope: !286)
!1927 = !DILocation(line: 375, column: 1, scope: !286)
!1928 = distinct !DISubprogram(name: "cleanup_file_list_stdin", scope: !183, file: !183, line: 379, type: !95, scopeLine: 380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !182, retainedNodes: !31)
!1929 = !DILocation(line: 381, column: 9, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1928, file: !183, line: 381, column: 9)
!1931 = !DILocation(line: 381, column: 25, scope: !1930)
!1932 = !DILocation(line: 381, column: 36, scope: !1930)
!1933 = !DILocation(line: 381, column: 28, scope: !1930)
!1934 = !DILocation(line: 381, column: 43, scope: !1930)
!1935 = !DILocation(line: 381, column: 9, scope: !1928)
!1936 = !DILocation(line: 382, column: 7, scope: !1930)
!1937 = !DILocation(line: 383, column: 1, scope: !1928)
!1938 = distinct !DISubprogram(name: "emit_tab_list_info", scope: !183, file: !183, line: 387, type: !95, scopeLine: 388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !182, retainedNodes: !31)
!1939 = !DILocation(line: 390, column: 3, scope: !1938)
!1940 = !DILocation(line: 393, column: 3, scope: !1938)
!1941 = !DILocation(line: 400, column: 1, scope: !1938)
!1942 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !327, file: !327, line: 51, type: !99, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !326, retainedNodes: !1943)
!1943 = !{!1944}
!1944 = !DILocalVariable(name: "file", arg: 1, scope: !1942, file: !327, line: 51, type: !28)
!1945 = !DILocation(line: 0, scope: !1942)
!1946 = !DILocation(line: 53, column: 13, scope: !1942)
!1947 = !DILocation(line: 54, column: 1, scope: !1942)
!1948 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !327, file: !327, line: 88, type: !1949, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !326, retainedNodes: !1951)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{null, !165}
!1951 = !{!1952}
!1952 = !DILocalVariable(name: "ignore", arg: 1, scope: !1948, file: !327, line: 88, type: !165)
!1953 = !DILocation(line: 0, scope: !1948)
!1954 = !DILocation(line: 90, column: 16, scope: !1948)
!1955 = !DILocation(line: 91, column: 1, scope: !1948)
!1956 = distinct !DISubprogram(name: "close_stdout", scope: !327, file: !327, line: 117, type: !95, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !326, retainedNodes: !1957)
!1957 = !{!1958}
!1958 = !DILocalVariable(name: "write_error", scope: !1959, file: !327, line: 122, type: !28)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !327, line: 121, column: 5)
!1960 = distinct !DILexicalBlock(scope: !1956, file: !327, line: 119, column: 7)
!1961 = !DILocation(line: 119, column: 21, scope: !1960)
!1962 = !DILocation(line: 119, column: 7, scope: !1960)
!1963 = !DILocation(line: 119, column: 29, scope: !1960)
!1964 = !DILocation(line: 120, column: 7, scope: !1960)
!1965 = !DILocation(line: 120, column: 12, scope: !1960)
!1966 = !DILocation(line: 120, column: 25, scope: !1960)
!1967 = !DILocation(line: 120, column: 28, scope: !1960)
!1968 = !DILocation(line: 120, column: 34, scope: !1960)
!1969 = !DILocation(line: 119, column: 7, scope: !1956)
!1970 = !DILocation(line: 122, column: 33, scope: !1959)
!1971 = !DILocation(line: 0, scope: !1959)
!1972 = !DILocation(line: 123, column: 11, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1959, file: !327, line: 123, column: 11)
!1974 = !DILocation(line: 0, scope: !1973)
!1975 = !DILocation(line: 123, column: 11, scope: !1959)
!1976 = !DILocation(line: 124, column: 36, scope: !1973)
!1977 = !DILocation(line: 124, column: 9, scope: !1973)
!1978 = !DILocation(line: 127, column: 9, scope: !1973)
!1979 = !DILocation(line: 129, column: 14, scope: !1959)
!1980 = !DILocation(line: 129, column: 7, scope: !1959)
!1981 = !DILocation(line: 134, column: 42, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1956, file: !327, line: 134, column: 7)
!1983 = !DILocation(line: 134, column: 28, scope: !1982)
!1984 = !DILocation(line: 134, column: 50, scope: !1982)
!1985 = !DILocation(line: 134, column: 7, scope: !1956)
!1986 = !DILocation(line: 135, column: 12, scope: !1982)
!1987 = !DILocation(line: 135, column: 5, scope: !1982)
!1988 = !DILocation(line: 136, column: 1, scope: !1956)
!1989 = distinct !DISubprogram(name: "fdadvise", scope: !523, file: !523, line: 31, type: !1990, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !1994)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{null, !30, !1992, !1992, !1993}
!1992 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !33, line: 63, baseType: !59)
!1993 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !200, line: 52, baseType: !199)
!1994 = !{!1995, !1996, !1997, !1998, !1999}
!1995 = !DILocalVariable(name: "fd", arg: 1, scope: !1989, file: !523, line: 31, type: !30)
!1996 = !DILocalVariable(name: "offset", arg: 2, scope: !1989, file: !523, line: 31, type: !1992)
!1997 = !DILocalVariable(name: "len", arg: 3, scope: !1989, file: !523, line: 31, type: !1992)
!1998 = !DILocalVariable(name: "advice", arg: 4, scope: !1989, file: !523, line: 31, type: !1993)
!1999 = !DILocalVariable(name: "__x", scope: !2000, file: !523, line: 34, type: !30)
!2000 = distinct !DILexicalBlock(scope: !1989, file: !523, line: 34, column: 3)
!2001 = !DILocation(line: 0, scope: !1989)
!2002 = !DILocation(line: 34, column: 3, scope: !2000)
!2003 = !DILocation(line: 0, scope: !2000)
!2004 = !DILocation(line: 36, column: 1, scope: !1989)
!2005 = distinct !DISubprogram(name: "fadvise", scope: !523, file: !523, line: 39, type: !2006, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !2010)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{null, !2008, !1993}
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !291, line: 7, baseType: !534)
!2010 = !{!2011, !2012}
!2011 = !DILocalVariable(name: "fp", arg: 1, scope: !2005, file: !523, line: 39, type: !2008)
!2012 = !DILocalVariable(name: "advice", arg: 2, scope: !2005, file: !523, line: 39, type: !1993)
!2013 = !DILocation(line: 0, scope: !2005)
!2014 = !DILocation(line: 41, column: 7, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2005, file: !523, line: 41, column: 7)
!2016 = !DILocation(line: 41, column: 7, scope: !2005)
!2017 = !DILocation(line: 42, column: 15, scope: !2015)
!2018 = !DILocation(line: 0, scope: !1989, inlinedAt: !2019)
!2019 = distinct !DILocation(line: 42, column: 5, scope: !2015)
!2020 = !DILocation(line: 34, column: 3, scope: !2000, inlinedAt: !2019)
!2021 = !DILocation(line: 0, scope: !2000, inlinedAt: !2019)
!2022 = !DILocation(line: 42, column: 5, scope: !2015)
!2023 = !DILocation(line: 43, column: 1, scope: !2005)
!2024 = distinct !DISubprogram(name: "set_program_name", scope: !378, file: !378, line: 39, type: !99, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !377, retainedNodes: !2025)
!2025 = !{!2026, !2027, !2028}
!2026 = !DILocalVariable(name: "argv0", arg: 1, scope: !2024, file: !378, line: 39, type: !28)
!2027 = !DILocalVariable(name: "slash", scope: !2024, file: !378, line: 46, type: !28)
!2028 = !DILocalVariable(name: "base", scope: !2024, file: !378, line: 47, type: !28)
!2029 = !DILocation(line: 0, scope: !2024)
!2030 = !DILocation(line: 51, column: 13, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2024, file: !378, line: 51, column: 7)
!2032 = !DILocation(line: 51, column: 7, scope: !2024)
!2033 = !DILocation(line: 55, column: 14, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2031, file: !378, line: 52, column: 5)
!2035 = !DILocation(line: 54, column: 7, scope: !2034)
!2036 = !DILocation(line: 56, column: 7, scope: !2034)
!2037 = !DILocation(line: 59, column: 11, scope: !2024)
!2038 = !DILocation(line: 60, column: 17, scope: !2024)
!2039 = !DILocation(line: 60, column: 11, scope: !2024)
!2040 = !DILocation(line: 61, column: 12, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2024, file: !378, line: 61, column: 7)
!2042 = !DILocation(line: 61, column: 20, scope: !2041)
!2043 = !DILocation(line: 61, column: 25, scope: !2041)
!2044 = !DILocation(line: 61, column: 42, scope: !2041)
!2045 = !DILocation(line: 61, column: 28, scope: !2041)
!2046 = !DILocation(line: 61, column: 61, scope: !2041)
!2047 = !DILocation(line: 61, column: 7, scope: !2024)
!2048 = !DILocation(line: 64, column: 11, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !378, line: 64, column: 11)
!2050 = distinct !DILexicalBlock(scope: !2041, file: !378, line: 62, column: 5)
!2051 = !DILocation(line: 64, column: 36, scope: !2049)
!2052 = !DILocation(line: 64, column: 11, scope: !2050)
!2053 = !DILocation(line: 66, column: 24, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2049, file: !378, line: 65, column: 9)
!2055 = !DILocation(line: 70, column: 41, scope: !2054)
!2056 = !DILocation(line: 72, column: 9, scope: !2054)
!2057 = !DILocation(line: 84, column: 16, scope: !2024)
!2058 = !DILocation(line: 90, column: 27, scope: !2024)
!2059 = !DILocation(line: 92, column: 1, scope: !2024)
!2060 = distinct !DISubprogram(name: "clone_quoting_options", scope: !419, file: !419, line: 122, type: !2061, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !2064)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!2063, !2063}
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!2064 = !{!2065, !2066, !2067}
!2065 = !DILocalVariable(name: "o", arg: 1, scope: !2060, file: !419, line: 122, type: !2063)
!2066 = !DILocalVariable(name: "e", scope: !2060, file: !419, line: 124, type: !30)
!2067 = !DILocalVariable(name: "p", scope: !2060, file: !419, line: 125, type: !2063)
!2068 = !DILocation(line: 0, scope: !2060)
!2069 = !DILocation(line: 124, column: 11, scope: !2060)
!2070 = !DILocation(line: 125, column: 40, scope: !2060)
!2071 = !DILocation(line: 125, column: 31, scope: !2060)
!2072 = !DILocation(line: 127, column: 9, scope: !2060)
!2073 = !DILocation(line: 128, column: 3, scope: !2060)
!2074 = distinct !DISubprogram(name: "get_quoting_style", scope: !419, file: !419, line: 133, type: !2075, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !2077)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{!185, !433}
!2077 = !{!2078}
!2078 = !DILocalVariable(name: "o", arg: 1, scope: !2074, file: !419, line: 133, type: !433)
!2079 = !DILocation(line: 0, scope: !2074)
!2080 = !DILocation(line: 135, column: 11, scope: !2074)
!2081 = !DILocation(line: 135, column: 46, scope: !2074)
!2082 = !{!2083, !1257, i64 0}
!2083 = !{!"quoting_options", !1257, i64 0, !1359, i64 4, !1257, i64 8, !1256, i64 40, !1256, i64 48}
!2084 = !DILocation(line: 135, column: 3, scope: !2074)
!2085 = distinct !DISubprogram(name: "set_quoting_style", scope: !419, file: !419, line: 141, type: !2086, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !2088)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{null, !2063, !185}
!2088 = !{!2089, !2090}
!2089 = !DILocalVariable(name: "o", arg: 1, scope: !2085, file: !419, line: 141, type: !2063)
!2090 = !DILocalVariable(name: "s", arg: 2, scope: !2085, file: !419, line: 141, type: !185)
!2091 = !DILocation(line: 0, scope: !2085)
!2092 = !DILocation(line: 143, column: 4, scope: !2085)
!2093 = !DILocation(line: 143, column: 39, scope: !2085)
!2094 = !DILocation(line: 143, column: 45, scope: !2085)
!2095 = !DILocation(line: 144, column: 1, scope: !2085)
!2096 = distinct !DISubprogram(name: "set_char_quoting", scope: !419, file: !419, line: 152, type: !2097, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !2099)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{!30, !2063, !27, !30}
!2099 = !{!2100, !2101, !2102, !2103, !2104, !2106, !2107}
!2100 = !DILocalVariable(name: "o", arg: 1, scope: !2096, file: !419, line: 152, type: !2063)
!2101 = !DILocalVariable(name: "c", arg: 2, scope: !2096, file: !419, line: 152, type: !27)
!2102 = !DILocalVariable(name: "i", arg: 3, scope: !2096, file: !419, line: 152, type: !30)
!2103 = !DILocalVariable(name: "uc", scope: !2096, file: !419, line: 154, type: !175)
!2104 = !DILocalVariable(name: "p", scope: !2096, file: !419, line: 155, type: !2105)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2106 = !DILocalVariable(name: "shift", scope: !2096, file: !419, line: 157, type: !30)
!2107 = !DILocalVariable(name: "r", scope: !2096, file: !419, line: 158, type: !30)
!2108 = !DILocation(line: 0, scope: !2096)
!2109 = !DILocation(line: 156, column: 6, scope: !2096)
!2110 = !DILocation(line: 156, column: 62, scope: !2096)
!2111 = !DILocation(line: 156, column: 57, scope: !2096)
!2112 = !DILocation(line: 157, column: 15, scope: !2096)
!2113 = !DILocation(line: 158, column: 12, scope: !2096)
!2114 = !DILocation(line: 158, column: 15, scope: !2096)
!2115 = !DILocation(line: 158, column: 25, scope: !2096)
!2116 = !DILocation(line: 159, column: 13, scope: !2096)
!2117 = !DILocation(line: 159, column: 18, scope: !2096)
!2118 = !DILocation(line: 159, column: 23, scope: !2096)
!2119 = !DILocation(line: 159, column: 6, scope: !2096)
!2120 = !DILocation(line: 160, column: 3, scope: !2096)
!2121 = distinct !DISubprogram(name: "set_quoting_flags", scope: !419, file: !419, line: 168, type: !2122, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !2124)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!30, !2063, !30}
!2124 = !{!2125, !2126, !2127}
!2125 = !DILocalVariable(name: "o", arg: 1, scope: !2121, file: !419, line: 168, type: !2063)
!2126 = !DILocalVariable(name: "i", arg: 2, scope: !2121, file: !419, line: 168, type: !30)
!2127 = !DILocalVariable(name: "r", scope: !2121, file: !419, line: 170, type: !30)
!2128 = !DILocation(line: 0, scope: !2121)
!2129 = !DILocation(line: 171, column: 8, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2121, file: !419, line: 171, column: 7)
!2131 = !DILocation(line: 171, column: 7, scope: !2121)
!2132 = !DILocation(line: 173, column: 10, scope: !2121)
!2133 = !{!2083, !1359, i64 4}
!2134 = !DILocation(line: 174, column: 12, scope: !2121)
!2135 = !DILocation(line: 175, column: 3, scope: !2121)
!2136 = distinct !DISubprogram(name: "set_custom_quoting", scope: !419, file: !419, line: 179, type: !2137, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !2139)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{null, !2063, !28, !28}
!2139 = !{!2140, !2141, !2142}
!2140 = !DILocalVariable(name: "o", arg: 1, scope: !2136, file: !419, line: 179, type: !2063)
!2141 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2136, file: !419, line: 180, type: !28)
!2142 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2136, file: !419, line: 180, type: !28)
!2143 = !DILocation(line: 0, scope: !2136)
!2144 = !DILocation(line: 182, column: 8, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2136, file: !419, line: 182, column: 7)
!2146 = !DILocation(line: 182, column: 7, scope: !2136)
!2147 = !DILocation(line: 184, column: 6, scope: !2136)
!2148 = !DILocation(line: 184, column: 12, scope: !2136)
!2149 = !DILocation(line: 185, column: 8, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2136, file: !419, line: 185, column: 7)
!2151 = !DILocation(line: 185, column: 23, scope: !2150)
!2152 = !DILocation(line: 185, column: 19, scope: !2150)
!2153 = !DILocation(line: 186, column: 5, scope: !2150)
!2154 = !DILocation(line: 187, column: 6, scope: !2136)
!2155 = !DILocation(line: 187, column: 17, scope: !2136)
!2156 = !{!2083, !1256, i64 40}
!2157 = !DILocation(line: 188, column: 6, scope: !2136)
!2158 = !DILocation(line: 188, column: 18, scope: !2136)
!2159 = !{!2083, !1256, i64 48}
!2160 = !DILocation(line: 189, column: 1, scope: !2136)
!2161 = distinct !DISubprogram(name: "quotearg_buffer", scope: !419, file: !419, line: 784, type: !2162, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !2164)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{!85, !26, !85, !28, !85, !433}
!2164 = !{!2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172}
!2165 = !DILocalVariable(name: "buffer", arg: 1, scope: !2161, file: !419, line: 784, type: !26)
!2166 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2161, file: !419, line: 784, type: !85)
!2167 = !DILocalVariable(name: "arg", arg: 3, scope: !2161, file: !419, line: 785, type: !28)
!2168 = !DILocalVariable(name: "argsize", arg: 4, scope: !2161, file: !419, line: 785, type: !85)
!2169 = !DILocalVariable(name: "o", arg: 5, scope: !2161, file: !419, line: 786, type: !433)
!2170 = !DILocalVariable(name: "p", scope: !2161, file: !419, line: 788, type: !433)
!2171 = !DILocalVariable(name: "e", scope: !2161, file: !419, line: 789, type: !30)
!2172 = !DILocalVariable(name: "r", scope: !2161, file: !419, line: 790, type: !85)
!2173 = !DILocation(line: 0, scope: !2161)
!2174 = !DILocation(line: 788, column: 37, scope: !2161)
!2175 = !DILocation(line: 789, column: 11, scope: !2161)
!2176 = !DILocation(line: 791, column: 43, scope: !2161)
!2177 = !DILocation(line: 791, column: 53, scope: !2161)
!2178 = !DILocation(line: 791, column: 60, scope: !2161)
!2179 = !DILocation(line: 792, column: 43, scope: !2161)
!2180 = !DILocation(line: 792, column: 58, scope: !2161)
!2181 = !DILocation(line: 790, column: 14, scope: !2161)
!2182 = !DILocation(line: 793, column: 9, scope: !2161)
!2183 = !DILocation(line: 794, column: 3, scope: !2161)
!2184 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !419, file: !419, line: 256, type: !2185, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !2189)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{!85, !26, !85, !28, !85, !185, !30, !2187, !28, !28}
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2189 = !{!2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2214, !2215, !2216, !2217, !2218, !2221, !2222, !2228, !2231, !2232, !2239, !2242, !2243, !2244, !2245, !2246, !2247}
!2190 = !DILocalVariable(name: "buffer", arg: 1, scope: !2184, file: !419, line: 256, type: !26)
!2191 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2184, file: !419, line: 256, type: !85)
!2192 = !DILocalVariable(name: "arg", arg: 3, scope: !2184, file: !419, line: 257, type: !28)
!2193 = !DILocalVariable(name: "argsize", arg: 4, scope: !2184, file: !419, line: 257, type: !85)
!2194 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2184, file: !419, line: 258, type: !185)
!2195 = !DILocalVariable(name: "flags", arg: 6, scope: !2184, file: !419, line: 258, type: !30)
!2196 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2184, file: !419, line: 259, type: !2187)
!2197 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2184, file: !419, line: 260, type: !28)
!2198 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2184, file: !419, line: 261, type: !28)
!2199 = !DILocalVariable(name: "i", scope: !2184, file: !419, line: 263, type: !85)
!2200 = !DILocalVariable(name: "len", scope: !2184, file: !419, line: 264, type: !85)
!2201 = !DILocalVariable(name: "orig_buffersize", scope: !2184, file: !419, line: 265, type: !85)
!2202 = !DILocalVariable(name: "quote_string", scope: !2184, file: !419, line: 266, type: !28)
!2203 = !DILocalVariable(name: "quote_string_len", scope: !2184, file: !419, line: 267, type: !85)
!2204 = !DILocalVariable(name: "backslash_escapes", scope: !2184, file: !419, line: 268, type: !165)
!2205 = !DILocalVariable(name: "unibyte_locale", scope: !2184, file: !419, line: 269, type: !165)
!2206 = !DILocalVariable(name: "elide_outer_quotes", scope: !2184, file: !419, line: 270, type: !165)
!2207 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2184, file: !419, line: 271, type: !165)
!2208 = !DILocalVariable(name: "encountered_single_quote", scope: !2184, file: !419, line: 272, type: !165)
!2209 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2184, file: !419, line: 273, type: !165)
!2210 = !DILocalVariable(name: "c", scope: !2211, file: !419, line: 402, type: !175)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !419, line: 401, column: 5)
!2212 = distinct !DILexicalBlock(scope: !2213, file: !419, line: 400, column: 3)
!2213 = distinct !DILexicalBlock(scope: !2184, file: !419, line: 400, column: 3)
!2214 = !DILocalVariable(name: "esc", scope: !2211, file: !419, line: 403, type: !175)
!2215 = !DILocalVariable(name: "is_right_quote", scope: !2211, file: !419, line: 404, type: !165)
!2216 = !DILocalVariable(name: "escaping", scope: !2211, file: !419, line: 405, type: !165)
!2217 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2211, file: !419, line: 406, type: !165)
!2218 = !DILocalVariable(name: "m", scope: !2219, file: !419, line: 610, type: !85)
!2219 = distinct !DILexicalBlock(scope: !2220, file: !419, line: 608, column: 11)
!2220 = distinct !DILexicalBlock(scope: !2211, file: !419, line: 426, column: 9)
!2221 = !DILocalVariable(name: "printable", scope: !2219, file: !419, line: 612, type: !165)
!2222 = !DILocalVariable(name: "mbstate", scope: !2223, file: !419, line: 621, type: !2225)
!2223 = distinct !DILexicalBlock(scope: !2224, file: !419, line: 620, column: 15)
!2224 = distinct !DILexicalBlock(scope: !2219, file: !419, line: 614, column: 17)
!2225 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2226, line: 6, baseType: !2227)
!2226 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!2227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !454, line: 21, baseType: !453)
!2228 = !DILocalVariable(name: "w", scope: !2229, file: !419, line: 631, type: !2230)
!2229 = distinct !DILexicalBlock(scope: !2223, file: !419, line: 630, column: 19)
!2230 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !86, line: 74, baseType: !30)
!2231 = !DILocalVariable(name: "bytes", scope: !2229, file: !419, line: 632, type: !85)
!2232 = !DILocalVariable(name: "j", scope: !2233, file: !419, line: 657, type: !85)
!2233 = distinct !DILexicalBlock(scope: !2234, file: !419, line: 656, column: 27)
!2234 = distinct !DILexicalBlock(scope: !2235, file: !419, line: 654, column: 29)
!2235 = distinct !DILexicalBlock(scope: !2236, file: !419, line: 649, column: 23)
!2236 = distinct !DILexicalBlock(scope: !2237, file: !419, line: 641, column: 30)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !419, line: 636, column: 30)
!2238 = distinct !DILexicalBlock(scope: !2229, file: !419, line: 634, column: 25)
!2239 = !DILocalVariable(name: "ilim", scope: !2240, file: !419, line: 684, type: !85)
!2240 = distinct !DILexicalBlock(scope: !2241, file: !419, line: 681, column: 15)
!2241 = distinct !DILexicalBlock(scope: !2219, file: !419, line: 680, column: 17)
!2242 = !DILabel(scope: !2184, name: "process_input", file: !419, line: 314)
!2243 = !DILabel(scope: !2220, name: "c_and_shell_escape", file: !419, line: 512)
!2244 = !DILabel(scope: !2220, name: "c_escape", file: !419, line: 517)
!2245 = !DILabel(scope: !2211, name: "store_escape", file: !419, line: 719)
!2246 = !DILabel(scope: !2211, name: "store_c", file: !419, line: 722)
!2247 = !DILabel(scope: !2184, name: "force_outer_quoting_style", file: !419, line: 763)
!2248 = !DILocation(line: 0, scope: !2184)
!2249 = !DILocation(line: 269, column: 25, scope: !2184)
!2250 = !DILocation(line: 269, column: 36, scope: !2184)
!2251 = !DILocation(line: 270, column: 8, scope: !2184)
!2252 = !DILocation(line: 0, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2220, file: !419, line: 526, column: 15)
!2254 = !DILocation(line: 0, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2256, file: !419, line: 462, column: 19)
!2256 = distinct !DILexicalBlock(scope: !2220, file: !419, line: 455, column: 13)
!2257 = !DILocation(line: 0, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2259, file: !419, line: 449, column: 20)
!2259 = distinct !DILexicalBlock(scope: !2220, file: !419, line: 428, column: 15)
!2260 = !DILocation(line: 0, scope: !2223)
!2261 = !DILocation(line: 0, scope: !2229)
!2262 = !DILocation(line: 0, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2211, file: !419, line: 712, column: 11)
!2264 = !DILocation(line: 273, column: 3, scope: !2184)
!2265 = !DILocation(line: 265, column: 10, scope: !2184)
!2266 = !DILocation(line: 266, column: 15, scope: !2184)
!2267 = !DILocation(line: 267, column: 10, scope: !2184)
!2268 = !DILocation(line: 268, column: 8, scope: !2184)
!2269 = !DILocation(line: 271, column: 8, scope: !2184)
!2270 = !DILocation(line: 272, column: 8, scope: !2184)
!2271 = !DILocation(line: 273, column: 8, scope: !2184)
!2272 = !DILocation(line: 314, column: 2, scope: !2184)
!2273 = !DILocation(line: 316, column: 3, scope: !2184)
!2274 = !DILocation(line: 323, column: 11, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2184, file: !419, line: 317, column: 5)
!2276 = !DILocation(line: 323, column: 12, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2275, file: !419, line: 323, column: 11)
!2278 = !DILocation(line: 324, column: 9, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2280, file: !419, line: 324, column: 9)
!2280 = distinct !DILexicalBlock(scope: !2277, file: !419, line: 324, column: 9)
!2281 = !DILocation(line: 324, column: 9, scope: !2280)
!2282 = !DILocation(line: 362, column: 26, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2284, file: !419, line: 340, column: 11)
!2284 = distinct !DILexicalBlock(scope: !2285, file: !419, line: 339, column: 13)
!2285 = distinct !DILexicalBlock(scope: !2275, file: !419, line: 338, column: 7)
!2286 = !DILocation(line: 363, column: 27, scope: !2283)
!2287 = !DILocation(line: 364, column: 11, scope: !2283)
!2288 = !DILocation(line: 365, column: 14, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2285, file: !419, line: 365, column: 13)
!2290 = !DILocation(line: 365, column: 13, scope: !2285)
!2291 = !DILocation(line: 366, column: 43, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2293, file: !419, line: 366, column: 11)
!2293 = distinct !DILexicalBlock(scope: !2289, file: !419, line: 366, column: 11)
!2294 = !DILocation(line: 366, column: 11, scope: !2293)
!2295 = !DILocation(line: 367, column: 13, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !419, line: 367, column: 13)
!2297 = distinct !DILexicalBlock(scope: !2292, file: !419, line: 367, column: 13)
!2298 = !DILocation(line: 367, column: 13, scope: !2297)
!2299 = !DILocation(line: 366, column: 70, scope: !2292)
!2300 = distinct !{!2300, !2294, !2301}
!2301 = !DILocation(line: 367, column: 13, scope: !2293)
!2302 = !DILocation(line: 264, column: 10, scope: !2184)
!2303 = !DILocation(line: 370, column: 28, scope: !2285)
!2304 = !DILocation(line: 372, column: 7, scope: !2275)
!2305 = !DILocation(line: 376, column: 7, scope: !2275)
!2306 = !DILocation(line: 379, column: 7, scope: !2275)
!2307 = !DILocation(line: 381, column: 12, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2275, file: !419, line: 381, column: 11)
!2309 = !DILocation(line: 381, column: 11, scope: !2275)
!2310 = !DILocation(line: 386, column: 12, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2275, file: !419, line: 386, column: 11)
!2312 = !DILocation(line: 386, column: 11, scope: !2275)
!2313 = !DILocation(line: 387, column: 9, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2315, file: !419, line: 387, column: 9)
!2315 = distinct !DILexicalBlock(scope: !2311, file: !419, line: 387, column: 9)
!2316 = !DILocation(line: 387, column: 9, scope: !2315)
!2317 = !DILocation(line: 394, column: 7, scope: !2275)
!2318 = !DILocation(line: 397, column: 7, scope: !2275)
!2319 = !DILocation(line: 0, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2211, file: !419, line: 408, column: 11)
!2321 = !DILocation(line: 0, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2323, file: !419, line: 419, column: 15)
!2323 = distinct !DILexicalBlock(scope: !2320, file: !419, line: 418, column: 9)
!2324 = !DILocation(line: 0, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2220, file: !419, line: 556, column: 15)
!2326 = !DILocation(line: 0, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2220, file: !419, line: 548, column: 15)
!2328 = !DILocation(line: 0, scope: !2234)
!2329 = !DILocation(line: 0, scope: !2241)
!2330 = !DILocation(line: 0, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2220, file: !419, line: 509, column: 15)
!2332 = !DILocation(line: 400, column: 8, scope: !2213)
!2333 = !DILocation(line: 0, scope: !2213)
!2334 = !DILocation(line: 400, column: 27, scope: !2212)
!2335 = !DILocation(line: 400, column: 19, scope: !2212)
!2336 = !DILocation(line: 400, column: 41, scope: !2212)
!2337 = !DILocation(line: 400, column: 48, scope: !2212)
!2338 = !DILocation(line: 400, column: 3, scope: !2213)
!2339 = !DILocation(line: 400, column: 60, scope: !2212)
!2340 = !DILocation(line: 0, scope: !2211)
!2341 = !DILocation(line: 409, column: 11, scope: !2320)
!2342 = !DILocation(line: 411, column: 17, scope: !2320)
!2343 = !DILocation(line: 412, column: 39, scope: !2320)
!2344 = !DILocation(line: 416, column: 32, scope: !2320)
!2345 = !DILocation(line: 412, column: 19, scope: !2320)
!2346 = !DILocation(line: 412, column: 15, scope: !2320)
!2347 = !DILocation(line: 417, column: 11, scope: !2320)
!2348 = !DILocation(line: 417, column: 26, scope: !2320)
!2349 = !DILocation(line: 417, column: 14, scope: !2320)
!2350 = !DILocation(line: 417, column: 63, scope: !2320)
!2351 = !DILocation(line: 408, column: 11, scope: !2211)
!2352 = !DILocation(line: 424, column: 11, scope: !2211)
!2353 = !DILocation(line: 425, column: 7, scope: !2211)
!2354 = !DILocation(line: 428, column: 15, scope: !2220)
!2355 = !DILocation(line: 430, column: 15, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2357, file: !419, line: 430, column: 15)
!2357 = distinct !DILexicalBlock(scope: !2259, file: !419, line: 429, column: 13)
!2358 = !DILocation(line: 430, column: 15, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2356, file: !419, line: 430, column: 15)
!2360 = !DILocation(line: 430, column: 15, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2362, file: !419, line: 430, column: 15)
!2362 = distinct !DILexicalBlock(scope: !2363, file: !419, line: 430, column: 15)
!2363 = distinct !DILexicalBlock(scope: !2359, file: !419, line: 430, column: 15)
!2364 = !DILocation(line: 430, column: 15, scope: !2362)
!2365 = !DILocation(line: 430, column: 15, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2367, file: !419, line: 430, column: 15)
!2367 = distinct !DILexicalBlock(scope: !2363, file: !419, line: 430, column: 15)
!2368 = !DILocation(line: 430, column: 15, scope: !2367)
!2369 = !DILocation(line: 430, column: 15, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2371, file: !419, line: 430, column: 15)
!2371 = distinct !DILexicalBlock(scope: !2363, file: !419, line: 430, column: 15)
!2372 = !DILocation(line: 430, column: 15, scope: !2371)
!2373 = !DILocation(line: 430, column: 15, scope: !2363)
!2374 = !DILocation(line: 430, column: 15, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2376, file: !419, line: 430, column: 15)
!2376 = distinct !DILexicalBlock(scope: !2356, file: !419, line: 430, column: 15)
!2377 = !DILocation(line: 430, column: 15, scope: !2376)
!2378 = !DILocation(line: 438, column: 19, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2357, file: !419, line: 437, column: 19)
!2380 = !DILocation(line: 438, column: 24, scope: !2379)
!2381 = !DILocation(line: 438, column: 28, scope: !2379)
!2382 = !DILocation(line: 438, column: 38, scope: !2379)
!2383 = !DILocation(line: 438, column: 48, scope: !2379)
!2384 = !DILocation(line: 438, column: 59, scope: !2379)
!2385 = !DILocation(line: 440, column: 19, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2387, file: !419, line: 440, column: 19)
!2387 = distinct !DILexicalBlock(scope: !2388, file: !419, line: 440, column: 19)
!2388 = distinct !DILexicalBlock(scope: !2379, file: !419, line: 439, column: 17)
!2389 = !DILocation(line: 440, column: 19, scope: !2387)
!2390 = !DILocation(line: 441, column: 19, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2392, file: !419, line: 441, column: 19)
!2392 = distinct !DILexicalBlock(scope: !2388, file: !419, line: 441, column: 19)
!2393 = !DILocation(line: 441, column: 19, scope: !2392)
!2394 = !DILocation(line: 442, column: 17, scope: !2388)
!2395 = !DILocation(line: 449, column: 20, scope: !2259)
!2396 = !DILocation(line: 454, column: 11, scope: !2220)
!2397 = !DILocation(line: 457, column: 19, scope: !2256)
!2398 = !DILocation(line: 463, column: 19, scope: !2255)
!2399 = !DILocation(line: 463, column: 24, scope: !2255)
!2400 = !DILocation(line: 463, column: 28, scope: !2255)
!2401 = !DILocation(line: 463, column: 38, scope: !2255)
!2402 = !DILocation(line: 463, column: 47, scope: !2255)
!2403 = !DILocation(line: 463, column: 41, scope: !2255)
!2404 = !DILocation(line: 463, column: 52, scope: !2255)
!2405 = !DILocation(line: 462, column: 19, scope: !2256)
!2406 = !DILocation(line: 464, column: 25, scope: !2255)
!2407 = !DILocation(line: 464, column: 17, scope: !2255)
!2408 = !DILocation(line: 471, column: 25, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2255, file: !419, line: 465, column: 19)
!2410 = !DILocation(line: 475, column: 21, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2412, file: !419, line: 475, column: 21)
!2412 = distinct !DILexicalBlock(scope: !2409, file: !419, line: 475, column: 21)
!2413 = !DILocation(line: 475, column: 21, scope: !2412)
!2414 = !DILocation(line: 476, column: 21, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2416, file: !419, line: 476, column: 21)
!2416 = distinct !DILexicalBlock(scope: !2409, file: !419, line: 476, column: 21)
!2417 = !DILocation(line: 476, column: 21, scope: !2416)
!2418 = !DILocation(line: 477, column: 21, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2420, file: !419, line: 477, column: 21)
!2420 = distinct !DILexicalBlock(scope: !2409, file: !419, line: 477, column: 21)
!2421 = !DILocation(line: 477, column: 21, scope: !2420)
!2422 = !DILocation(line: 478, column: 21, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2424, file: !419, line: 478, column: 21)
!2424 = distinct !DILexicalBlock(scope: !2409, file: !419, line: 478, column: 21)
!2425 = !DILocation(line: 478, column: 21, scope: !2424)
!2426 = !DILocation(line: 479, column: 21, scope: !2409)
!2427 = !DILocation(line: 492, column: 31, scope: !2220)
!2428 = !DILocation(line: 493, column: 31, scope: !2220)
!2429 = !DILocation(line: 495, column: 31, scope: !2220)
!2430 = !DILocation(line: 496, column: 31, scope: !2220)
!2431 = !DILocation(line: 497, column: 31, scope: !2220)
!2432 = !DILocation(line: 500, column: 15, scope: !2220)
!2433 = !DILocation(line: 502, column: 19, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2435, file: !419, line: 501, column: 13)
!2435 = distinct !DILexicalBlock(scope: !2220, file: !419, line: 500, column: 15)
!2436 = !DILocation(line: 509, column: 33, scope: !2331)
!2437 = !DILocation(line: 0, scope: !2220)
!2438 = !DILocation(line: 512, column: 9, scope: !2220)
!2439 = !DILocation(line: 514, column: 15, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2220, file: !419, line: 513, column: 15)
!2441 = !DILocation(line: 517, column: 9, scope: !2220)
!2442 = !DILocation(line: 518, column: 15, scope: !2220)
!2443 = !DILocation(line: 526, column: 15, scope: !2220)
!2444 = !DILocation(line: 526, column: 40, scope: !2253)
!2445 = !DILocation(line: 526, column: 47, scope: !2253)
!2446 = !DILocation(line: 526, column: 18, scope: !2253)
!2447 = !DILocation(line: 530, column: 17, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2220, file: !419, line: 530, column: 15)
!2449 = !DILocation(line: 530, column: 15, scope: !2220)
!2450 = !DILocation(line: 535, column: 11, scope: !2220)
!2451 = !DILocation(line: 549, column: 15, scope: !2327)
!2452 = !DILocation(line: 556, column: 15, scope: !2220)
!2453 = !DILocation(line: 558, column: 19, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2325, file: !419, line: 557, column: 13)
!2455 = !DILocation(line: 561, column: 19, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2454, file: !419, line: 561, column: 19)
!2457 = !DILocation(line: 561, column: 35, scope: !2456)
!2458 = !DILocation(line: 561, column: 30, scope: !2456)
!2459 = !DILocation(line: 570, column: 15, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2461, file: !419, line: 570, column: 15)
!2461 = distinct !DILexicalBlock(scope: !2454, file: !419, line: 570, column: 15)
!2462 = !DILocation(line: 570, column: 15, scope: !2461)
!2463 = !DILocation(line: 571, column: 15, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2465, file: !419, line: 571, column: 15)
!2465 = distinct !DILexicalBlock(scope: !2454, file: !419, line: 571, column: 15)
!2466 = !DILocation(line: 571, column: 15, scope: !2465)
!2467 = !DILocation(line: 572, column: 15, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2469, file: !419, line: 572, column: 15)
!2469 = distinct !DILexicalBlock(scope: !2454, file: !419, line: 572, column: 15)
!2470 = !DILocation(line: 572, column: 15, scope: !2469)
!2471 = !DILocation(line: 574, column: 13, scope: !2454)
!2472 = !DILocation(line: 614, column: 17, scope: !2219)
!2473 = !DILocation(line: 0, scope: !2219)
!2474 = !DILocation(line: 617, column: 29, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2224, file: !419, line: 615, column: 15)
!2476 = !DILocation(line: 617, column: 27, scope: !2475)
!2477 = !DILocation(line: 618, column: 15, scope: !2475)
!2478 = !DILocation(line: 621, column: 17, scope: !2223)
!2479 = !DILocation(line: 621, column: 27, scope: !2223)
!2480 = !DILocalVariable(name: "__dest", arg: 1, scope: !2481, file: !2482, line: 59, type: !83)
!2481 = distinct !DISubprogram(name: "memset", scope: !2482, file: !2482, line: 59, type: !2483, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !2485)
!2482 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!2483 = !DISubroutineType(types: !2484)
!2484 = !{!83, !83, !30, !85}
!2485 = !{!2480, !2486, !2487}
!2486 = !DILocalVariable(name: "__ch", arg: 2, scope: !2481, file: !2482, line: 59, type: !30)
!2487 = !DILocalVariable(name: "__len", arg: 3, scope: !2481, file: !2482, line: 59, type: !85)
!2488 = !DILocation(line: 0, scope: !2481, inlinedAt: !2489)
!2489 = distinct !DILocation(line: 622, column: 17, scope: !2223)
!2490 = !DILocation(line: 71, column: 10, scope: !2481, inlinedAt: !2489)
!2491 = !DILocation(line: 626, column: 29, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2223, file: !419, line: 626, column: 21)
!2493 = !DILocation(line: 626, column: 21, scope: !2223)
!2494 = !DILocation(line: 627, column: 29, scope: !2492)
!2495 = !DILocation(line: 627, column: 19, scope: !2492)
!2496 = !DILocation(line: 629, column: 17, scope: !2223)
!2497 = !DILocation(line: 624, column: 19, scope: !2223)
!2498 = !DILocation(line: 625, column: 27, scope: !2223)
!2499 = !DILocation(line: 631, column: 21, scope: !2229)
!2500 = !DILocation(line: 632, column: 56, scope: !2229)
!2501 = !DILocation(line: 632, column: 50, scope: !2229)
!2502 = !DILocation(line: 633, column: 53, scope: !2229)
!2503 = !DILocation(line: 632, column: 36, scope: !2229)
!2504 = !DILocation(line: 634, column: 25, scope: !2229)
!2505 = !DILocation(line: 644, column: 38, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2236, file: !419, line: 642, column: 23)
!2507 = !DILocation(line: 644, column: 48, scope: !2506)
!2508 = !DILocation(line: 644, column: 25, scope: !2506)
!2509 = !DILocation(line: 644, column: 51, scope: !2506)
!2510 = !DILocation(line: 645, column: 28, scope: !2506)
!2511 = !DILocation(line: 644, column: 34, scope: !2506)
!2512 = distinct !{!2512, !2508, !2510}
!2513 = !DILocation(line: 658, column: 43, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2515, file: !419, line: 658, column: 29)
!2515 = distinct !DILexicalBlock(scope: !2233, file: !419, line: 658, column: 29)
!2516 = !DILocation(line: 655, column: 29, scope: !2234)
!2517 = !DILocation(line: 0, scope: !2233)
!2518 = !DILocation(line: 659, column: 49, scope: !2514)
!2519 = !DILocation(line: 659, column: 39, scope: !2514)
!2520 = !DILocation(line: 659, column: 31, scope: !2514)
!2521 = !DILocation(line: 658, column: 53, scope: !2514)
!2522 = !DILocation(line: 658, column: 29, scope: !2515)
!2523 = distinct !{!2523, !2522, !2524}
!2524 = !DILocation(line: 667, column: 33, scope: !2515)
!2525 = !DILocation(line: 674, column: 19, scope: !2223)
!2526 = !DILocation(line: 670, column: 41, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2235, file: !419, line: 670, column: 29)
!2528 = !DILocation(line: 670, column: 31, scope: !2527)
!2529 = !DILocation(line: 670, column: 29, scope: !2235)
!2530 = !DILocation(line: 672, column: 27, scope: !2235)
!2531 = !DILocation(line: 675, column: 26, scope: !2223)
!2532 = !DILocation(line: 675, column: 24, scope: !2223)
!2533 = !DILocation(line: 674, column: 19, scope: !2229)
!2534 = distinct !{!2534, !2496, !2535}
!2535 = !DILocation(line: 675, column: 44, scope: !2223)
!2536 = !DILocation(line: 676, column: 15, scope: !2224)
!2537 = !DILocation(line: 0, scope: !2224)
!2538 = !DILocation(line: 678, column: 40, scope: !2219)
!2539 = !DILocation(line: 680, column: 19, scope: !2241)
!2540 = !DILocation(line: 680, column: 45, scope: !2241)
!2541 = !DILocation(line: 680, column: 23, scope: !2241)
!2542 = !DILocation(line: 684, column: 33, scope: !2240)
!2543 = !DILocation(line: 0, scope: !2240)
!2544 = !DILocation(line: 686, column: 17, scope: !2240)
!2545 = !DILocation(line: 405, column: 12, scope: !2211)
!2546 = !DILocation(line: 688, column: 43, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2548, file: !419, line: 688, column: 25)
!2548 = distinct !DILexicalBlock(scope: !2549, file: !419, line: 687, column: 19)
!2549 = distinct !DILexicalBlock(scope: !2550, file: !419, line: 686, column: 17)
!2550 = distinct !DILexicalBlock(scope: !2240, file: !419, line: 686, column: 17)
!2551 = !DILocation(line: 690, column: 25, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2553, file: !419, line: 690, column: 25)
!2553 = distinct !DILexicalBlock(scope: !2547, file: !419, line: 689, column: 23)
!2554 = !DILocation(line: 690, column: 25, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2552, file: !419, line: 690, column: 25)
!2556 = !DILocation(line: 690, column: 25, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2558, file: !419, line: 690, column: 25)
!2558 = distinct !DILexicalBlock(scope: !2559, file: !419, line: 690, column: 25)
!2559 = distinct !DILexicalBlock(scope: !2555, file: !419, line: 690, column: 25)
!2560 = !DILocation(line: 690, column: 25, scope: !2558)
!2561 = !DILocation(line: 690, column: 25, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2563, file: !419, line: 690, column: 25)
!2563 = distinct !DILexicalBlock(scope: !2559, file: !419, line: 690, column: 25)
!2564 = !DILocation(line: 690, column: 25, scope: !2563)
!2565 = !DILocation(line: 690, column: 25, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2567, file: !419, line: 690, column: 25)
!2567 = distinct !DILexicalBlock(scope: !2559, file: !419, line: 690, column: 25)
!2568 = !DILocation(line: 690, column: 25, scope: !2567)
!2569 = !DILocation(line: 690, column: 25, scope: !2559)
!2570 = !DILocation(line: 690, column: 25, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2572, file: !419, line: 690, column: 25)
!2572 = distinct !DILexicalBlock(scope: !2552, file: !419, line: 690, column: 25)
!2573 = !DILocation(line: 690, column: 25, scope: !2572)
!2574 = !DILocation(line: 691, column: 25, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2576, file: !419, line: 691, column: 25)
!2576 = distinct !DILexicalBlock(scope: !2553, file: !419, line: 691, column: 25)
!2577 = !DILocation(line: 691, column: 25, scope: !2576)
!2578 = !DILocation(line: 692, column: 25, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2580, file: !419, line: 692, column: 25)
!2580 = distinct !DILexicalBlock(scope: !2553, file: !419, line: 692, column: 25)
!2581 = !DILocation(line: 692, column: 25, scope: !2580)
!2582 = !DILocation(line: 693, column: 38, scope: !2553)
!2583 = !DILocation(line: 693, column: 33, scope: !2553)
!2584 = !DILocation(line: 694, column: 23, scope: !2553)
!2585 = !DILocation(line: 695, column: 30, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2547, file: !419, line: 695, column: 30)
!2587 = !DILocation(line: 695, column: 30, scope: !2547)
!2588 = !DILocation(line: 697, column: 25, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2590, file: !419, line: 697, column: 25)
!2590 = distinct !DILexicalBlock(scope: !2591, file: !419, line: 697, column: 25)
!2591 = distinct !DILexicalBlock(scope: !2586, file: !419, line: 696, column: 23)
!2592 = !DILocation(line: 697, column: 25, scope: !2590)
!2593 = !DILocation(line: 699, column: 23, scope: !2591)
!2594 = !DILocation(line: 700, column: 35, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2548, file: !419, line: 700, column: 25)
!2596 = !DILocation(line: 700, column: 30, scope: !2595)
!2597 = !DILocation(line: 700, column: 25, scope: !2548)
!2598 = !DILocation(line: 702, column: 21, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2600, file: !419, line: 702, column: 21)
!2600 = distinct !DILexicalBlock(scope: !2548, file: !419, line: 702, column: 21)
!2601 = !DILocation(line: 702, column: 21, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2603, file: !419, line: 702, column: 21)
!2603 = distinct !DILexicalBlock(scope: !2604, file: !419, line: 702, column: 21)
!2604 = distinct !DILexicalBlock(scope: !2599, file: !419, line: 702, column: 21)
!2605 = !DILocation(line: 702, column: 21, scope: !2603)
!2606 = !DILocation(line: 702, column: 21, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2608, file: !419, line: 702, column: 21)
!2608 = distinct !DILexicalBlock(scope: !2604, file: !419, line: 702, column: 21)
!2609 = !DILocation(line: 702, column: 21, scope: !2608)
!2610 = !DILocation(line: 702, column: 21, scope: !2604)
!2611 = !DILocation(line: 0, scope: !2548)
!2612 = !DILocation(line: 703, column: 21, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2614, file: !419, line: 703, column: 21)
!2614 = distinct !DILexicalBlock(scope: !2548, file: !419, line: 703, column: 21)
!2615 = !DILocation(line: 703, column: 21, scope: !2614)
!2616 = !DILocation(line: 704, column: 25, scope: !2548)
!2617 = !DILocation(line: 686, column: 17, scope: !2549)
!2618 = distinct !{!2618, !2619, !2620}
!2619 = !DILocation(line: 686, column: 17, scope: !2550)
!2620 = !DILocation(line: 705, column: 19, scope: !2550)
!2621 = !DILocation(line: 416, column: 30, scope: !2320)
!2622 = !DILocation(line: 712, column: 34, scope: !2263)
!2623 = !DILocation(line: 715, column: 35, scope: !2263)
!2624 = !DILocation(line: 715, column: 17, scope: !2263)
!2625 = !DILocation(line: 715, column: 47, scope: !2263)
!2626 = !DILocation(line: 715, column: 65, scope: !2263)
!2627 = !DILocation(line: 716, column: 15, scope: !2263)
!2628 = !DILocation(line: 716, column: 11, scope: !2263)
!2629 = !DILocation(line: 712, column: 11, scope: !2211)
!2630 = !DILocation(line: 400, column: 10, scope: !2213)
!2631 = !DILocation(line: 719, column: 5, scope: !2211)
!2632 = !DILocation(line: 720, column: 7, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2211, file: !419, line: 720, column: 7)
!2634 = !DILocation(line: 720, column: 7, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2633, file: !419, line: 720, column: 7)
!2636 = !DILocation(line: 720, column: 7, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2638, file: !419, line: 720, column: 7)
!2638 = distinct !DILexicalBlock(scope: !2639, file: !419, line: 720, column: 7)
!2639 = distinct !DILexicalBlock(scope: !2635, file: !419, line: 720, column: 7)
!2640 = !DILocation(line: 720, column: 7, scope: !2638)
!2641 = !DILocation(line: 720, column: 7, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2643, file: !419, line: 720, column: 7)
!2643 = distinct !DILexicalBlock(scope: !2639, file: !419, line: 720, column: 7)
!2644 = !DILocation(line: 720, column: 7, scope: !2643)
!2645 = !DILocation(line: 720, column: 7, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2647, file: !419, line: 720, column: 7)
!2647 = distinct !DILexicalBlock(scope: !2639, file: !419, line: 720, column: 7)
!2648 = !DILocation(line: 720, column: 7, scope: !2647)
!2649 = !DILocation(line: 720, column: 7, scope: !2639)
!2650 = !DILocation(line: 720, column: 7, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2652, file: !419, line: 720, column: 7)
!2652 = distinct !DILexicalBlock(scope: !2633, file: !419, line: 720, column: 7)
!2653 = !DILocation(line: 720, column: 7, scope: !2652)
!2654 = !DILocation(line: 722, column: 5, scope: !2211)
!2655 = !DILocation(line: 723, column: 7, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2657, file: !419, line: 723, column: 7)
!2657 = distinct !DILexicalBlock(scope: !2211, file: !419, line: 723, column: 7)
!2658 = !DILocation(line: 424, column: 9, scope: !2211)
!2659 = !DILocation(line: 723, column: 7, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2661, file: !419, line: 723, column: 7)
!2661 = distinct !DILexicalBlock(scope: !2662, file: !419, line: 723, column: 7)
!2662 = distinct !DILexicalBlock(scope: !2656, file: !419, line: 723, column: 7)
!2663 = !DILocation(line: 723, column: 7, scope: !2661)
!2664 = !DILocation(line: 723, column: 7, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2666, file: !419, line: 723, column: 7)
!2666 = distinct !DILexicalBlock(scope: !2662, file: !419, line: 723, column: 7)
!2667 = !DILocation(line: 723, column: 7, scope: !2666)
!2668 = !DILocation(line: 723, column: 7, scope: !2662)
!2669 = !DILocation(line: 724, column: 7, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2671, file: !419, line: 724, column: 7)
!2671 = distinct !DILexicalBlock(scope: !2211, file: !419, line: 724, column: 7)
!2672 = !DILocation(line: 724, column: 7, scope: !2671)
!2673 = !DILocation(line: 726, column: 13, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2211, file: !419, line: 726, column: 11)
!2675 = !DILocation(line: 726, column: 11, scope: !2211)
!2676 = !DILocation(line: 728, column: 5, scope: !2212)
!2677 = !DILocation(line: 400, column: 75, scope: !2212)
!2678 = !DILocation(line: 400, column: 3, scope: !2212)
!2679 = distinct !{!2679, !2338, !2680}
!2680 = !DILocation(line: 728, column: 5, scope: !2213)
!2681 = !DILocation(line: 730, column: 11, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2184, file: !419, line: 730, column: 7)
!2683 = !DILocation(line: 730, column: 16, scope: !2682)
!2684 = !DILocation(line: 738, column: 51, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2184, file: !419, line: 738, column: 7)
!2686 = !DILocation(line: 739, column: 10, scope: !2685)
!2687 = !DILocation(line: 741, column: 11, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2689, file: !419, line: 741, column: 11)
!2689 = distinct !DILexicalBlock(scope: !2685, file: !419, line: 740, column: 5)
!2690 = !DILocation(line: 741, column: 11, scope: !2689)
!2691 = !DILocation(line: 742, column: 16, scope: !2688)
!2692 = !DILocation(line: 742, column: 9, scope: !2688)
!2693 = !DILocation(line: 746, column: 18, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2688, file: !419, line: 746, column: 16)
!2695 = !DILocation(line: 746, column: 32, scope: !2694)
!2696 = !DILocation(line: 746, column: 29, scope: !2694)
!2697 = !DILocation(line: 755, column: 7, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2184, file: !419, line: 755, column: 7)
!2699 = !DILocation(line: 755, column: 20, scope: !2698)
!2700 = !DILocation(line: 756, column: 12, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2702, file: !419, line: 756, column: 5)
!2702 = distinct !DILexicalBlock(scope: !2698, file: !419, line: 756, column: 5)
!2703 = !DILocation(line: 756, column: 5, scope: !2702)
!2704 = !DILocation(line: 757, column: 7, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2706, file: !419, line: 757, column: 7)
!2706 = distinct !DILexicalBlock(scope: !2701, file: !419, line: 757, column: 7)
!2707 = !DILocation(line: 757, column: 7, scope: !2706)
!2708 = !DILocation(line: 756, column: 39, scope: !2701)
!2709 = distinct !{!2709, !2703, !2710}
!2710 = !DILocation(line: 757, column: 7, scope: !2702)
!2711 = !DILocation(line: 759, column: 11, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2184, file: !419, line: 759, column: 7)
!2713 = !DILocation(line: 759, column: 7, scope: !2184)
!2714 = !DILocation(line: 760, column: 5, scope: !2712)
!2715 = !DILocation(line: 760, column: 17, scope: !2712)
!2716 = !DILocation(line: 763, column: 2, scope: !2184)
!2717 = !DILocation(line: 766, column: 51, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2184, file: !419, line: 766, column: 7)
!2719 = !DILocation(line: 766, column: 21, scope: !2718)
!2720 = !DILocation(line: 770, column: 42, scope: !2184)
!2721 = !DILocation(line: 768, column: 10, scope: !2184)
!2722 = !DILocation(line: 768, column: 3, scope: !2184)
!2723 = !DILocation(line: 772, column: 1, scope: !2184)
!2724 = distinct !DISubprogram(name: "gettext_quote", scope: !419, file: !419, line: 207, type: !2725, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !2727)
!2725 = !DISubroutineType(types: !2726)
!2726 = !{!28, !28, !185}
!2727 = !{!2728, !2729, !2730, !2731}
!2728 = !DILocalVariable(name: "msgid", arg: 1, scope: !2724, file: !419, line: 207, type: !28)
!2729 = !DILocalVariable(name: "s", arg: 2, scope: !2724, file: !419, line: 207, type: !185)
!2730 = !DILocalVariable(name: "translation", scope: !2724, file: !419, line: 209, type: !28)
!2731 = !DILocalVariable(name: "locale_code", scope: !2724, file: !419, line: 210, type: !28)
!2732 = !DILocation(line: 0, scope: !2724)
!2733 = !DILocation(line: 209, column: 29, scope: !2724)
!2734 = !DILocation(line: 212, column: 19, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2724, file: !419, line: 212, column: 7)
!2736 = !DILocation(line: 212, column: 7, scope: !2724)
!2737 = !DILocation(line: 233, column: 17, scope: !2724)
!2738 = !DILocalVariable(name: "s1", arg: 1, scope: !2739, file: !2740, line: 160, type: !28)
!2739 = distinct !DISubprogram(name: "strcaseeq0", scope: !2740, file: !2740, line: 160, type: !2741, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !2743)
!2740 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2741 = !DISubroutineType(types: !2742)
!2742 = !{!30, !28, !28, !27, !27, !27, !27, !27, !27, !27, !27, !27}
!2743 = !{!2738, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753}
!2744 = !DILocalVariable(name: "s2", arg: 2, scope: !2739, file: !2740, line: 160, type: !28)
!2745 = !DILocalVariable(name: "s20", arg: 3, scope: !2739, file: !2740, line: 160, type: !27)
!2746 = !DILocalVariable(name: "s21", arg: 4, scope: !2739, file: !2740, line: 160, type: !27)
!2747 = !DILocalVariable(name: "s22", arg: 5, scope: !2739, file: !2740, line: 160, type: !27)
!2748 = !DILocalVariable(name: "s23", arg: 6, scope: !2739, file: !2740, line: 160, type: !27)
!2749 = !DILocalVariable(name: "s24", arg: 7, scope: !2739, file: !2740, line: 160, type: !27)
!2750 = !DILocalVariable(name: "s25", arg: 8, scope: !2739, file: !2740, line: 160, type: !27)
!2751 = !DILocalVariable(name: "s26", arg: 9, scope: !2739, file: !2740, line: 160, type: !27)
!2752 = !DILocalVariable(name: "s27", arg: 10, scope: !2739, file: !2740, line: 160, type: !27)
!2753 = !DILocalVariable(name: "s28", arg: 11, scope: !2739, file: !2740, line: 160, type: !27)
!2754 = !DILocation(line: 0, scope: !2739, inlinedAt: !2755)
!2755 = distinct !DILocation(line: 234, column: 7, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2724, file: !419, line: 234, column: 7)
!2757 = !DILocation(line: 162, column: 7, scope: !2758, inlinedAt: !2755)
!2758 = distinct !DILexicalBlock(scope: !2739, file: !2740, line: 162, column: 7)
!2759 = !DILocalVariable(name: "s1", arg: 1, scope: !2760, file: !2740, line: 146, type: !28)
!2760 = distinct !DISubprogram(name: "strcaseeq1", scope: !2740, file: !2740, line: 146, type: !2761, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !2763)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!30, !28, !28, !27, !27, !27, !27, !27, !27, !27, !27}
!2763 = !{!2759, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772}
!2764 = !DILocalVariable(name: "s2", arg: 2, scope: !2760, file: !2740, line: 146, type: !28)
!2765 = !DILocalVariable(name: "s21", arg: 3, scope: !2760, file: !2740, line: 146, type: !27)
!2766 = !DILocalVariable(name: "s22", arg: 4, scope: !2760, file: !2740, line: 146, type: !27)
!2767 = !DILocalVariable(name: "s23", arg: 5, scope: !2760, file: !2740, line: 146, type: !27)
!2768 = !DILocalVariable(name: "s24", arg: 6, scope: !2760, file: !2740, line: 146, type: !27)
!2769 = !DILocalVariable(name: "s25", arg: 7, scope: !2760, file: !2740, line: 146, type: !27)
!2770 = !DILocalVariable(name: "s26", arg: 8, scope: !2760, file: !2740, line: 146, type: !27)
!2771 = !DILocalVariable(name: "s27", arg: 9, scope: !2760, file: !2740, line: 146, type: !27)
!2772 = !DILocalVariable(name: "s28", arg: 10, scope: !2760, file: !2740, line: 146, type: !27)
!2773 = !DILocation(line: 0, scope: !2760, inlinedAt: !2774)
!2774 = distinct !DILocation(line: 167, column: 16, scope: !2775, inlinedAt: !2755)
!2775 = distinct !DILexicalBlock(scope: !2776, file: !2740, line: 164, column: 11)
!2776 = distinct !DILexicalBlock(scope: !2758, file: !2740, line: 163, column: 5)
!2777 = !DILocation(line: 148, column: 7, scope: !2778, inlinedAt: !2774)
!2778 = distinct !DILexicalBlock(scope: !2760, file: !2740, line: 148, column: 7)
!2779 = !DILocalVariable(name: "s1", arg: 1, scope: !2780, file: !2740, line: 132, type: !28)
!2780 = distinct !DISubprogram(name: "strcaseeq2", scope: !2740, file: !2740, line: 132, type: !2781, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !2783)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{!30, !28, !28, !27, !27, !27, !27, !27, !27, !27}
!2783 = !{!2779, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791}
!2784 = !DILocalVariable(name: "s2", arg: 2, scope: !2780, file: !2740, line: 132, type: !28)
!2785 = !DILocalVariable(name: "s22", arg: 3, scope: !2780, file: !2740, line: 132, type: !27)
!2786 = !DILocalVariable(name: "s23", arg: 4, scope: !2780, file: !2740, line: 132, type: !27)
!2787 = !DILocalVariable(name: "s24", arg: 5, scope: !2780, file: !2740, line: 132, type: !27)
!2788 = !DILocalVariable(name: "s25", arg: 6, scope: !2780, file: !2740, line: 132, type: !27)
!2789 = !DILocalVariable(name: "s26", arg: 7, scope: !2780, file: !2740, line: 132, type: !27)
!2790 = !DILocalVariable(name: "s27", arg: 8, scope: !2780, file: !2740, line: 132, type: !27)
!2791 = !DILocalVariable(name: "s28", arg: 9, scope: !2780, file: !2740, line: 132, type: !27)
!2792 = !DILocation(line: 0, scope: !2780, inlinedAt: !2793)
!2793 = distinct !DILocation(line: 153, column: 16, scope: !2794, inlinedAt: !2774)
!2794 = distinct !DILexicalBlock(scope: !2795, file: !2740, line: 150, column: 11)
!2795 = distinct !DILexicalBlock(scope: !2778, file: !2740, line: 149, column: 5)
!2796 = !DILocation(line: 134, column: 7, scope: !2797, inlinedAt: !2793)
!2797 = distinct !DILexicalBlock(scope: !2780, file: !2740, line: 134, column: 7)
!2798 = !DILocalVariable(name: "s1", arg: 1, scope: !2799, file: !2740, line: 118, type: !28)
!2799 = distinct !DISubprogram(name: "strcaseeq3", scope: !2740, file: !2740, line: 118, type: !2800, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !2802)
!2800 = !DISubroutineType(types: !2801)
!2801 = !{!30, !28, !28, !27, !27, !27, !27, !27, !27}
!2802 = !{!2798, !2803, !2804, !2805, !2806, !2807, !2808, !2809}
!2803 = !DILocalVariable(name: "s2", arg: 2, scope: !2799, file: !2740, line: 118, type: !28)
!2804 = !DILocalVariable(name: "s23", arg: 3, scope: !2799, file: !2740, line: 118, type: !27)
!2805 = !DILocalVariable(name: "s24", arg: 4, scope: !2799, file: !2740, line: 118, type: !27)
!2806 = !DILocalVariable(name: "s25", arg: 5, scope: !2799, file: !2740, line: 118, type: !27)
!2807 = !DILocalVariable(name: "s26", arg: 6, scope: !2799, file: !2740, line: 118, type: !27)
!2808 = !DILocalVariable(name: "s27", arg: 7, scope: !2799, file: !2740, line: 118, type: !27)
!2809 = !DILocalVariable(name: "s28", arg: 8, scope: !2799, file: !2740, line: 118, type: !27)
!2810 = !DILocation(line: 0, scope: !2799, inlinedAt: !2811)
!2811 = distinct !DILocation(line: 139, column: 16, scope: !2812, inlinedAt: !2793)
!2812 = distinct !DILexicalBlock(scope: !2813, file: !2740, line: 136, column: 11)
!2813 = distinct !DILexicalBlock(scope: !2797, file: !2740, line: 135, column: 5)
!2814 = !DILocation(line: 120, column: 7, scope: !2815, inlinedAt: !2811)
!2815 = distinct !DILexicalBlock(scope: !2799, file: !2740, line: 120, column: 7)
!2816 = !DILocation(line: 120, column: 7, scope: !2799, inlinedAt: !2811)
!2817 = !DILocalVariable(name: "s1", arg: 1, scope: !2818, file: !2740, line: 104, type: !28)
!2818 = distinct !DISubprogram(name: "strcaseeq4", scope: !2740, file: !2740, line: 104, type: !2819, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !2821)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{!30, !28, !28, !27, !27, !27, !27, !27}
!2821 = !{!2817, !2822, !2823, !2824, !2825, !2826, !2827}
!2822 = !DILocalVariable(name: "s2", arg: 2, scope: !2818, file: !2740, line: 104, type: !28)
!2823 = !DILocalVariable(name: "s24", arg: 3, scope: !2818, file: !2740, line: 104, type: !27)
!2824 = !DILocalVariable(name: "s25", arg: 4, scope: !2818, file: !2740, line: 104, type: !27)
!2825 = !DILocalVariable(name: "s26", arg: 5, scope: !2818, file: !2740, line: 104, type: !27)
!2826 = !DILocalVariable(name: "s27", arg: 6, scope: !2818, file: !2740, line: 104, type: !27)
!2827 = !DILocalVariable(name: "s28", arg: 7, scope: !2818, file: !2740, line: 104, type: !27)
!2828 = !DILocation(line: 0, scope: !2818, inlinedAt: !2829)
!2829 = distinct !DILocation(line: 125, column: 16, scope: !2830, inlinedAt: !2811)
!2830 = distinct !DILexicalBlock(scope: !2831, file: !2740, line: 122, column: 11)
!2831 = distinct !DILexicalBlock(scope: !2815, file: !2740, line: 121, column: 5)
!2832 = !DILocation(line: 106, column: 7, scope: !2833, inlinedAt: !2829)
!2833 = distinct !DILexicalBlock(scope: !2818, file: !2740, line: 106, column: 7)
!2834 = !DILocation(line: 106, column: 7, scope: !2818, inlinedAt: !2829)
!2835 = !DILocalVariable(name: "s1", arg: 1, scope: !2836, file: !2740, line: 90, type: !28)
!2836 = distinct !DISubprogram(name: "strcaseeq5", scope: !2740, file: !2740, line: 90, type: !2837, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !2839)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{!30, !28, !28, !27, !27, !27, !27}
!2839 = !{!2835, !2840, !2841, !2842, !2843, !2844}
!2840 = !DILocalVariable(name: "s2", arg: 2, scope: !2836, file: !2740, line: 90, type: !28)
!2841 = !DILocalVariable(name: "s25", arg: 3, scope: !2836, file: !2740, line: 90, type: !27)
!2842 = !DILocalVariable(name: "s26", arg: 4, scope: !2836, file: !2740, line: 90, type: !27)
!2843 = !DILocalVariable(name: "s27", arg: 5, scope: !2836, file: !2740, line: 90, type: !27)
!2844 = !DILocalVariable(name: "s28", arg: 6, scope: !2836, file: !2740, line: 90, type: !27)
!2845 = !DILocation(line: 0, scope: !2836, inlinedAt: !2846)
!2846 = distinct !DILocation(line: 111, column: 16, scope: !2847, inlinedAt: !2829)
!2847 = distinct !DILexicalBlock(scope: !2848, file: !2740, line: 108, column: 11)
!2848 = distinct !DILexicalBlock(scope: !2833, file: !2740, line: 107, column: 5)
!2849 = !DILocation(line: 92, column: 7, scope: !2850, inlinedAt: !2846)
!2850 = distinct !DILexicalBlock(scope: !2836, file: !2740, line: 92, column: 7)
!2851 = !DILocation(line: 92, column: 7, scope: !2836, inlinedAt: !2846)
!2852 = !DILocation(line: 235, column: 12, scope: !2756)
!2853 = !DILocation(line: 235, column: 21, scope: !2756)
!2854 = !DILocation(line: 235, column: 5, scope: !2756)
!2855 = !DILocation(line: 0, scope: !2760, inlinedAt: !2856)
!2856 = distinct !DILocation(line: 167, column: 16, scope: !2775, inlinedAt: !2857)
!2857 = distinct !DILocation(line: 236, column: 7, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2724, file: !419, line: 236, column: 7)
!2859 = !DILocation(line: 148, column: 7, scope: !2778, inlinedAt: !2856)
!2860 = !DILocation(line: 0, scope: !2780, inlinedAt: !2861)
!2861 = distinct !DILocation(line: 153, column: 16, scope: !2794, inlinedAt: !2856)
!2862 = !DILocation(line: 134, column: 7, scope: !2797, inlinedAt: !2861)
!2863 = !DILocation(line: 134, column: 7, scope: !2780, inlinedAt: !2861)
!2864 = !DILocation(line: 0, scope: !2799, inlinedAt: !2865)
!2865 = distinct !DILocation(line: 139, column: 16, scope: !2812, inlinedAt: !2861)
!2866 = !DILocation(line: 120, column: 7, scope: !2815, inlinedAt: !2865)
!2867 = !DILocation(line: 120, column: 7, scope: !2799, inlinedAt: !2865)
!2868 = !DILocation(line: 0, scope: !2818, inlinedAt: !2869)
!2869 = distinct !DILocation(line: 125, column: 16, scope: !2830, inlinedAt: !2865)
!2870 = !DILocation(line: 106, column: 7, scope: !2833, inlinedAt: !2869)
!2871 = !DILocation(line: 106, column: 7, scope: !2818, inlinedAt: !2869)
!2872 = !DILocation(line: 0, scope: !2836, inlinedAt: !2873)
!2873 = distinct !DILocation(line: 111, column: 16, scope: !2847, inlinedAt: !2869)
!2874 = !DILocation(line: 92, column: 7, scope: !2850, inlinedAt: !2873)
!2875 = !DILocation(line: 92, column: 7, scope: !2836, inlinedAt: !2873)
!2876 = !DILocalVariable(name: "s1", arg: 1, scope: !2877, file: !2740, line: 76, type: !28)
!2877 = distinct !DISubprogram(name: "strcaseeq6", scope: !2740, file: !2740, line: 76, type: !2878, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !2880)
!2878 = !DISubroutineType(types: !2879)
!2879 = !{!30, !28, !28, !27, !27, !27}
!2880 = !{!2876, !2881, !2882, !2883, !2884}
!2881 = !DILocalVariable(name: "s2", arg: 2, scope: !2877, file: !2740, line: 76, type: !28)
!2882 = !DILocalVariable(name: "s26", arg: 3, scope: !2877, file: !2740, line: 76, type: !27)
!2883 = !DILocalVariable(name: "s27", arg: 4, scope: !2877, file: !2740, line: 76, type: !27)
!2884 = !DILocalVariable(name: "s28", arg: 5, scope: !2877, file: !2740, line: 76, type: !27)
!2885 = !DILocation(line: 0, scope: !2877, inlinedAt: !2886)
!2886 = distinct !DILocation(line: 97, column: 16, scope: !2887, inlinedAt: !2873)
!2887 = distinct !DILexicalBlock(scope: !2888, file: !2740, line: 94, column: 11)
!2888 = distinct !DILexicalBlock(scope: !2850, file: !2740, line: 93, column: 5)
!2889 = !DILocation(line: 78, column: 7, scope: !2890, inlinedAt: !2886)
!2890 = distinct !DILexicalBlock(scope: !2877, file: !2740, line: 78, column: 7)
!2891 = !DILocation(line: 78, column: 7, scope: !2877, inlinedAt: !2886)
!2892 = !DILocalVariable(name: "s1", arg: 1, scope: !2893, file: !2740, line: 62, type: !28)
!2893 = distinct !DISubprogram(name: "strcaseeq7", scope: !2740, file: !2740, line: 62, type: !2894, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !2896)
!2894 = !DISubroutineType(types: !2895)
!2895 = !{!30, !28, !28, !27, !27}
!2896 = !{!2892, !2897, !2898, !2899}
!2897 = !DILocalVariable(name: "s2", arg: 2, scope: !2893, file: !2740, line: 62, type: !28)
!2898 = !DILocalVariable(name: "s27", arg: 3, scope: !2893, file: !2740, line: 62, type: !27)
!2899 = !DILocalVariable(name: "s28", arg: 4, scope: !2893, file: !2740, line: 62, type: !27)
!2900 = !DILocation(line: 0, scope: !2893, inlinedAt: !2901)
!2901 = distinct !DILocation(line: 83, column: 16, scope: !2902, inlinedAt: !2886)
!2902 = distinct !DILexicalBlock(scope: !2903, file: !2740, line: 80, column: 11)
!2903 = distinct !DILexicalBlock(scope: !2890, file: !2740, line: 79, column: 5)
!2904 = !DILocation(line: 64, column: 7, scope: !2905, inlinedAt: !2901)
!2905 = distinct !DILexicalBlock(scope: !2893, file: !2740, line: 64, column: 7)
!2906 = !DILocation(line: 236, column: 7, scope: !2724)
!2907 = !DILocation(line: 237, column: 12, scope: !2858)
!2908 = !DILocation(line: 237, column: 21, scope: !2858)
!2909 = !DILocation(line: 237, column: 5, scope: !2858)
!2910 = !DILocation(line: 239, column: 13, scope: !2724)
!2911 = !DILocation(line: 239, column: 11, scope: !2724)
!2912 = !DILocation(line: 239, column: 3, scope: !2724)
!2913 = !DILocation(line: 240, column: 1, scope: !2724)
!2914 = distinct !DISubprogram(name: "quotearg_alloc", scope: !419, file: !419, line: 799, type: !2915, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !2917)
!2915 = !DISubroutineType(types: !2916)
!2916 = !{!26, !28, !85, !433}
!2917 = !{!2918, !2919, !2920}
!2918 = !DILocalVariable(name: "arg", arg: 1, scope: !2914, file: !419, line: 799, type: !28)
!2919 = !DILocalVariable(name: "argsize", arg: 2, scope: !2914, file: !419, line: 799, type: !85)
!2920 = !DILocalVariable(name: "o", arg: 3, scope: !2914, file: !419, line: 800, type: !433)
!2921 = !DILocation(line: 0, scope: !2914)
!2922 = !DILocalVariable(name: "arg", arg: 1, scope: !2923, file: !419, line: 812, type: !28)
!2923 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !419, file: !419, line: 812, type: !2924, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !2926)
!2924 = !DISubroutineType(types: !2925)
!2925 = !{!26, !28, !85, !212, !433}
!2926 = !{!2922, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934}
!2927 = !DILocalVariable(name: "argsize", arg: 2, scope: !2923, file: !419, line: 812, type: !85)
!2928 = !DILocalVariable(name: "size", arg: 3, scope: !2923, file: !419, line: 812, type: !212)
!2929 = !DILocalVariable(name: "o", arg: 4, scope: !2923, file: !419, line: 813, type: !433)
!2930 = !DILocalVariable(name: "p", scope: !2923, file: !419, line: 815, type: !433)
!2931 = !DILocalVariable(name: "e", scope: !2923, file: !419, line: 816, type: !30)
!2932 = !DILocalVariable(name: "flags", scope: !2923, file: !419, line: 818, type: !30)
!2933 = !DILocalVariable(name: "bufsize", scope: !2923, file: !419, line: 819, type: !85)
!2934 = !DILocalVariable(name: "buf", scope: !2923, file: !419, line: 823, type: !26)
!2935 = !DILocation(line: 0, scope: !2923, inlinedAt: !2936)
!2936 = distinct !DILocation(line: 802, column: 10, scope: !2914)
!2937 = !DILocation(line: 815, column: 37, scope: !2923, inlinedAt: !2936)
!2938 = !DILocation(line: 816, column: 11, scope: !2923, inlinedAt: !2936)
!2939 = !DILocation(line: 818, column: 18, scope: !2923, inlinedAt: !2936)
!2940 = !DILocation(line: 818, column: 24, scope: !2923, inlinedAt: !2936)
!2941 = !DILocation(line: 819, column: 69, scope: !2923, inlinedAt: !2936)
!2942 = !DILocation(line: 820, column: 53, scope: !2923, inlinedAt: !2936)
!2943 = !DILocation(line: 821, column: 49, scope: !2923, inlinedAt: !2936)
!2944 = !DILocation(line: 822, column: 49, scope: !2923, inlinedAt: !2936)
!2945 = !DILocation(line: 819, column: 20, scope: !2923, inlinedAt: !2936)
!2946 = !DILocation(line: 822, column: 62, scope: !2923, inlinedAt: !2936)
!2947 = !DILocalVariable(name: "n", arg: 1, scope: !2948, file: !157, line: 216, type: !85)
!2948 = distinct !DISubprogram(name: "xcharalloc", scope: !157, file: !157, line: 216, type: !2949, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !2951)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{!26, !85}
!2951 = !{!2947}
!2952 = !DILocation(line: 0, scope: !2948, inlinedAt: !2953)
!2953 = distinct !DILocation(line: 823, column: 15, scope: !2923, inlinedAt: !2936)
!2954 = !DILocation(line: 218, column: 10, scope: !2948, inlinedAt: !2953)
!2955 = !DILocation(line: 824, column: 60, scope: !2923, inlinedAt: !2936)
!2956 = !DILocation(line: 826, column: 32, scope: !2923, inlinedAt: !2936)
!2957 = !DILocation(line: 826, column: 47, scope: !2923, inlinedAt: !2936)
!2958 = !DILocation(line: 824, column: 3, scope: !2923, inlinedAt: !2936)
!2959 = !DILocation(line: 827, column: 9, scope: !2923, inlinedAt: !2936)
!2960 = !DILocation(line: 802, column: 3, scope: !2914)
!2961 = !DILocation(line: 0, scope: !2923)
!2962 = !DILocation(line: 815, column: 37, scope: !2923)
!2963 = !DILocation(line: 816, column: 11, scope: !2923)
!2964 = !DILocation(line: 818, column: 18, scope: !2923)
!2965 = !DILocation(line: 818, column: 27, scope: !2923)
!2966 = !DILocation(line: 818, column: 24, scope: !2923)
!2967 = !DILocation(line: 819, column: 69, scope: !2923)
!2968 = !DILocation(line: 820, column: 53, scope: !2923)
!2969 = !DILocation(line: 821, column: 49, scope: !2923)
!2970 = !DILocation(line: 822, column: 49, scope: !2923)
!2971 = !DILocation(line: 819, column: 20, scope: !2923)
!2972 = !DILocation(line: 822, column: 62, scope: !2923)
!2973 = !DILocation(line: 0, scope: !2948, inlinedAt: !2974)
!2974 = distinct !DILocation(line: 823, column: 15, scope: !2923)
!2975 = !DILocation(line: 218, column: 10, scope: !2948, inlinedAt: !2974)
!2976 = !DILocation(line: 824, column: 60, scope: !2923)
!2977 = !DILocation(line: 826, column: 32, scope: !2923)
!2978 = !DILocation(line: 826, column: 47, scope: !2923)
!2979 = !DILocation(line: 824, column: 3, scope: !2923)
!2980 = !DILocation(line: 827, column: 9, scope: !2923)
!2981 = !DILocation(line: 828, column: 7, scope: !2923)
!2982 = !DILocation(line: 829, column: 11, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2923, file: !419, line: 828, column: 7)
!2984 = !DILocation(line: 829, column: 5, scope: !2983)
!2985 = !DILocation(line: 830, column: 3, scope: !2923)
!2986 = distinct !DISubprogram(name: "quotearg_free", scope: !419, file: !419, line: 848, type: !95, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !2987)
!2987 = !{!2988, !2989}
!2988 = !DILocalVariable(name: "sv", scope: !2986, file: !419, line: 850, type: !501)
!2989 = !DILocalVariable(name: "i", scope: !2986, file: !419, line: 851, type: !30)
!2990 = !DILocation(line: 850, column: 24, scope: !2986)
!2991 = !DILocation(line: 0, scope: !2986)
!2992 = !DILocation(line: 852, column: 19, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2994, file: !419, line: 852, column: 3)
!2994 = distinct !DILexicalBlock(scope: !2986, file: !419, line: 852, column: 3)
!2995 = !DILocation(line: 852, column: 17, scope: !2993)
!2996 = !DILocation(line: 852, column: 3, scope: !2994)
!2997 = !DILocation(line: 853, column: 17, scope: !2993)
!2998 = !{!2999, !1256, i64 8}
!2999 = !{!"slotvec", !1400, i64 0, !1256, i64 8}
!3000 = !DILocation(line: 853, column: 5, scope: !2993)
!3001 = !DILocation(line: 852, column: 28, scope: !2993)
!3002 = distinct !{!3002, !2996, !3003}
!3003 = !DILocation(line: 853, column: 20, scope: !2994)
!3004 = !DILocation(line: 854, column: 13, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !2986, file: !419, line: 854, column: 7)
!3006 = !DILocation(line: 854, column: 17, scope: !3005)
!3007 = !DILocation(line: 854, column: 7, scope: !2986)
!3008 = !DILocation(line: 856, column: 7, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !3005, file: !419, line: 855, column: 5)
!3010 = !DILocation(line: 857, column: 21, scope: !3009)
!3011 = !{!2999, !1400, i64 0}
!3012 = !DILocation(line: 858, column: 20, scope: !3009)
!3013 = !DILocation(line: 859, column: 5, scope: !3009)
!3014 = !DILocation(line: 860, column: 10, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !2986, file: !419, line: 860, column: 7)
!3016 = !DILocation(line: 860, column: 7, scope: !2986)
!3017 = !DILocation(line: 862, column: 13, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3015, file: !419, line: 861, column: 5)
!3019 = !DILocation(line: 862, column: 7, scope: !3018)
!3020 = !DILocation(line: 863, column: 15, scope: !3018)
!3021 = !DILocation(line: 864, column: 5, scope: !3018)
!3022 = !DILocation(line: 865, column: 10, scope: !2986)
!3023 = !DILocation(line: 866, column: 1, scope: !2986)
!3024 = distinct !DISubprogram(name: "quotearg_n", scope: !419, file: !419, line: 931, type: !103, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3025)
!3025 = !{!3026, !3027}
!3026 = !DILocalVariable(name: "n", arg: 1, scope: !3024, file: !419, line: 931, type: !30)
!3027 = !DILocalVariable(name: "arg", arg: 2, scope: !3024, file: !419, line: 931, type: !28)
!3028 = !DILocation(line: 0, scope: !3024)
!3029 = !DILocation(line: 933, column: 10, scope: !3024)
!3030 = !DILocation(line: 933, column: 3, scope: !3024)
!3031 = distinct !DISubprogram(name: "quotearg_n_options", scope: !419, file: !419, line: 877, type: !3032, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3034)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{!26, !30, !28, !85, !433}
!3034 = !{!3035, !3036, !3037, !3038, !3039, !3040, !3041, !3044, !3045, !3047, !3048, !3049}
!3035 = !DILocalVariable(name: "n", arg: 1, scope: !3031, file: !419, line: 877, type: !30)
!3036 = !DILocalVariable(name: "arg", arg: 2, scope: !3031, file: !419, line: 877, type: !28)
!3037 = !DILocalVariable(name: "argsize", arg: 3, scope: !3031, file: !419, line: 877, type: !85)
!3038 = !DILocalVariable(name: "options", arg: 4, scope: !3031, file: !419, line: 878, type: !433)
!3039 = !DILocalVariable(name: "e", scope: !3031, file: !419, line: 880, type: !30)
!3040 = !DILocalVariable(name: "sv", scope: !3031, file: !419, line: 882, type: !501)
!3041 = !DILocalVariable(name: "preallocated", scope: !3042, file: !419, line: 889, type: !165)
!3042 = distinct !DILexicalBlock(scope: !3043, file: !419, line: 888, column: 5)
!3043 = distinct !DILexicalBlock(scope: !3031, file: !419, line: 887, column: 7)
!3044 = !DILocalVariable(name: "nmax", scope: !3042, file: !419, line: 890, type: !30)
!3045 = !DILocalVariable(name: "size", scope: !3046, file: !419, line: 903, type: !85)
!3046 = distinct !DILexicalBlock(scope: !3031, file: !419, line: 902, column: 3)
!3047 = !DILocalVariable(name: "val", scope: !3046, file: !419, line: 904, type: !26)
!3048 = !DILocalVariable(name: "flags", scope: !3046, file: !419, line: 906, type: !30)
!3049 = !DILocalVariable(name: "qsize", scope: !3046, file: !419, line: 907, type: !85)
!3050 = !DILocation(line: 0, scope: !3031)
!3051 = !DILocation(line: 880, column: 11, scope: !3031)
!3052 = !DILocation(line: 882, column: 24, scope: !3031)
!3053 = !DILocation(line: 884, column: 9, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !3031, file: !419, line: 884, column: 7)
!3055 = !DILocation(line: 884, column: 7, scope: !3031)
!3056 = !DILocation(line: 885, column: 5, scope: !3054)
!3057 = !DILocation(line: 887, column: 7, scope: !3043)
!3058 = !DILocation(line: 887, column: 14, scope: !3043)
!3059 = !DILocation(line: 887, column: 7, scope: !3031)
!3060 = !DILocation(line: 889, column: 31, scope: !3042)
!3061 = !DILocation(line: 0, scope: !3042)
!3062 = !DILocation(line: 892, column: 16, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3042, file: !419, line: 892, column: 11)
!3064 = !DILocation(line: 892, column: 11, scope: !3042)
!3065 = !DILocation(line: 893, column: 9, scope: !3063)
!3066 = !DILocation(line: 895, column: 32, scope: !3042)
!3067 = !DILocation(line: 895, column: 61, scope: !3042)
!3068 = !DILocation(line: 895, column: 58, scope: !3042)
!3069 = !DILocation(line: 895, column: 66, scope: !3042)
!3070 = !DILocation(line: 895, column: 22, scope: !3042)
!3071 = !DILocation(line: 895, column: 15, scope: !3042)
!3072 = !DILocation(line: 896, column: 11, scope: !3042)
!3073 = !DILocation(line: 897, column: 15, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3042, file: !419, line: 896, column: 11)
!3075 = !{i64 0, i64 8, !1399, i64 8, i64 8, !1255}
!3076 = !DILocation(line: 897, column: 9, scope: !3074)
!3077 = !DILocation(line: 898, column: 20, scope: !3042)
!3078 = !DILocation(line: 898, column: 18, scope: !3042)
!3079 = !DILocation(line: 898, column: 15, scope: !3042)
!3080 = !DILocation(line: 898, column: 38, scope: !3042)
!3081 = !DILocation(line: 898, column: 31, scope: !3042)
!3082 = !DILocation(line: 898, column: 48, scope: !3042)
!3083 = !DILocation(line: 0, scope: !2481, inlinedAt: !3084)
!3084 = distinct !DILocation(line: 898, column: 7, scope: !3042)
!3085 = !DILocation(line: 71, column: 10, scope: !2481, inlinedAt: !3084)
!3086 = !DILocation(line: 899, column: 14, scope: !3042)
!3087 = !DILocation(line: 900, column: 5, scope: !3042)
!3088 = !DILocation(line: 903, column: 19, scope: !3046)
!3089 = !DILocation(line: 903, column: 25, scope: !3046)
!3090 = !DILocation(line: 0, scope: !3046)
!3091 = !DILocation(line: 904, column: 23, scope: !3046)
!3092 = !DILocation(line: 906, column: 26, scope: !3046)
!3093 = !DILocation(line: 906, column: 32, scope: !3046)
!3094 = !DILocation(line: 908, column: 55, scope: !3046)
!3095 = !DILocation(line: 909, column: 46, scope: !3046)
!3096 = !DILocation(line: 910, column: 55, scope: !3046)
!3097 = !DILocation(line: 911, column: 55, scope: !3046)
!3098 = !DILocation(line: 907, column: 20, scope: !3046)
!3099 = !DILocation(line: 913, column: 14, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3046, file: !419, line: 913, column: 9)
!3101 = !DILocation(line: 913, column: 9, scope: !3046)
!3102 = !DILocation(line: 915, column: 35, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3100, file: !419, line: 914, column: 7)
!3104 = !DILocation(line: 915, column: 20, scope: !3103)
!3105 = !DILocation(line: 916, column: 17, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3103, file: !419, line: 916, column: 13)
!3107 = !DILocation(line: 916, column: 13, scope: !3103)
!3108 = !DILocation(line: 917, column: 11, scope: !3106)
!3109 = !DILocation(line: 0, scope: !2948, inlinedAt: !3110)
!3110 = distinct !DILocation(line: 918, column: 27, scope: !3103)
!3111 = !DILocation(line: 218, column: 10, scope: !2948, inlinedAt: !3110)
!3112 = !DILocation(line: 918, column: 19, scope: !3103)
!3113 = !DILocation(line: 919, column: 69, scope: !3103)
!3114 = !DILocation(line: 921, column: 44, scope: !3103)
!3115 = !DILocation(line: 922, column: 44, scope: !3103)
!3116 = !DILocation(line: 919, column: 9, scope: !3103)
!3117 = !DILocation(line: 923, column: 7, scope: !3103)
!3118 = !DILocation(line: 925, column: 11, scope: !3046)
!3119 = !DILocation(line: 926, column: 5, scope: !3046)
!3120 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !419, file: !419, line: 937, type: !3121, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3123)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{!26, !30, !28, !85}
!3123 = !{!3124, !3125, !3126}
!3124 = !DILocalVariable(name: "n", arg: 1, scope: !3120, file: !419, line: 937, type: !30)
!3125 = !DILocalVariable(name: "arg", arg: 2, scope: !3120, file: !419, line: 937, type: !28)
!3126 = !DILocalVariable(name: "argsize", arg: 3, scope: !3120, file: !419, line: 937, type: !85)
!3127 = !DILocation(line: 0, scope: !3120)
!3128 = !DILocation(line: 939, column: 10, scope: !3120)
!3129 = !DILocation(line: 939, column: 3, scope: !3120)
!3130 = distinct !DISubprogram(name: "quotearg", scope: !419, file: !419, line: 943, type: !109, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3131)
!3131 = !{!3132}
!3132 = !DILocalVariable(name: "arg", arg: 1, scope: !3130, file: !419, line: 943, type: !28)
!3133 = !DILocation(line: 0, scope: !3130)
!3134 = !DILocation(line: 0, scope: !3024, inlinedAt: !3135)
!3135 = distinct !DILocation(line: 945, column: 10, scope: !3130)
!3136 = !DILocation(line: 933, column: 10, scope: !3024, inlinedAt: !3135)
!3137 = !DILocation(line: 945, column: 3, scope: !3130)
!3138 = distinct !DISubprogram(name: "quotearg_mem", scope: !419, file: !419, line: 949, type: !3139, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3141)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{!26, !28, !85}
!3141 = !{!3142, !3143}
!3142 = !DILocalVariable(name: "arg", arg: 1, scope: !3138, file: !419, line: 949, type: !28)
!3143 = !DILocalVariable(name: "argsize", arg: 2, scope: !3138, file: !419, line: 949, type: !85)
!3144 = !DILocation(line: 0, scope: !3138)
!3145 = !DILocation(line: 0, scope: !3120, inlinedAt: !3146)
!3146 = distinct !DILocation(line: 951, column: 10, scope: !3138)
!3147 = !DILocation(line: 939, column: 10, scope: !3120, inlinedAt: !3146)
!3148 = !DILocation(line: 951, column: 3, scope: !3138)
!3149 = distinct !DISubprogram(name: "quotearg_n_style", scope: !419, file: !419, line: 955, type: !230, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3150)
!3150 = !{!3151, !3152, !3153, !3154}
!3151 = !DILocalVariable(name: "n", arg: 1, scope: !3149, file: !419, line: 955, type: !30)
!3152 = !DILocalVariable(name: "s", arg: 2, scope: !3149, file: !419, line: 955, type: !185)
!3153 = !DILocalVariable(name: "arg", arg: 3, scope: !3149, file: !419, line: 955, type: !28)
!3154 = !DILocalVariable(name: "o", scope: !3149, file: !419, line: 957, type: !434)
!3155 = !DILocation(line: 0, scope: !3149)
!3156 = !DILocation(line: 957, column: 3, scope: !3149)
!3157 = !DILocation(line: 957, column: 32, scope: !3149)
!3158 = !DILocalVariable(name: "style", arg: 1, scope: !3159, file: !419, line: 193, type: !185)
!3159 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !419, file: !419, line: 193, type: !3160, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3162)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{!435, !185}
!3162 = !{!3158, !3163}
!3163 = !DILocalVariable(name: "o", scope: !3159, file: !419, line: 195, type: !435)
!3164 = !DILocation(line: 0, scope: !3159, inlinedAt: !3165)
!3165 = distinct !DILocation(line: 957, column: 36, scope: !3149)
!3166 = !DILocation(line: 195, column: 26, scope: !3159, inlinedAt: !3165)
!3167 = !{!3168}
!3168 = distinct !{!3168, !3169, !"quoting_options_from_style: argument 0"}
!3169 = distinct !{!3169, !"quoting_options_from_style"}
!3170 = !DILocation(line: 196, column: 13, scope: !3171, inlinedAt: !3165)
!3171 = distinct !DILexicalBlock(scope: !3159, file: !419, line: 196, column: 7)
!3172 = !DILocation(line: 196, column: 7, scope: !3159, inlinedAt: !3165)
!3173 = !DILocation(line: 197, column: 5, scope: !3171, inlinedAt: !3165)
!3174 = !DILocation(line: 198, column: 5, scope: !3159, inlinedAt: !3165)
!3175 = !DILocation(line: 198, column: 11, scope: !3159, inlinedAt: !3165)
!3176 = !DILocation(line: 958, column: 10, scope: !3149)
!3177 = !DILocation(line: 959, column: 1, scope: !3149)
!3178 = !DILocation(line: 958, column: 3, scope: !3149)
!3179 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !419, file: !419, line: 962, type: !3180, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3182)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{!26, !30, !185, !28, !85}
!3182 = !{!3183, !3184, !3185, !3186, !3187}
!3183 = !DILocalVariable(name: "n", arg: 1, scope: !3179, file: !419, line: 962, type: !30)
!3184 = !DILocalVariable(name: "s", arg: 2, scope: !3179, file: !419, line: 962, type: !185)
!3185 = !DILocalVariable(name: "arg", arg: 3, scope: !3179, file: !419, line: 963, type: !28)
!3186 = !DILocalVariable(name: "argsize", arg: 4, scope: !3179, file: !419, line: 963, type: !85)
!3187 = !DILocalVariable(name: "o", scope: !3179, file: !419, line: 965, type: !434)
!3188 = !DILocation(line: 0, scope: !3179)
!3189 = !DILocation(line: 965, column: 3, scope: !3179)
!3190 = !DILocation(line: 965, column: 32, scope: !3179)
!3191 = !DILocation(line: 0, scope: !3159, inlinedAt: !3192)
!3192 = distinct !DILocation(line: 965, column: 36, scope: !3179)
!3193 = !DILocation(line: 195, column: 26, scope: !3159, inlinedAt: !3192)
!3194 = !{!3195}
!3195 = distinct !{!3195, !3196, !"quoting_options_from_style: argument 0"}
!3196 = distinct !{!3196, !"quoting_options_from_style"}
!3197 = !DILocation(line: 196, column: 13, scope: !3171, inlinedAt: !3192)
!3198 = !DILocation(line: 196, column: 7, scope: !3159, inlinedAt: !3192)
!3199 = !DILocation(line: 197, column: 5, scope: !3171, inlinedAt: !3192)
!3200 = !DILocation(line: 198, column: 5, scope: !3159, inlinedAt: !3192)
!3201 = !DILocation(line: 198, column: 11, scope: !3159, inlinedAt: !3192)
!3202 = !DILocation(line: 966, column: 10, scope: !3179)
!3203 = !DILocation(line: 967, column: 1, scope: !3179)
!3204 = !DILocation(line: 966, column: 3, scope: !3179)
!3205 = distinct !DISubprogram(name: "quotearg_style", scope: !419, file: !419, line: 970, type: !3206, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3208)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!26, !185, !28}
!3208 = !{!3209, !3210}
!3209 = !DILocalVariable(name: "s", arg: 1, scope: !3205, file: !419, line: 970, type: !185)
!3210 = !DILocalVariable(name: "arg", arg: 2, scope: !3205, file: !419, line: 970, type: !28)
!3211 = !DILocation(line: 195, column: 26, scope: !3159, inlinedAt: !3212)
!3212 = distinct !DILocation(line: 957, column: 36, scope: !3149, inlinedAt: !3213)
!3213 = distinct !DILocation(line: 972, column: 10, scope: !3205)
!3214 = !DILocation(line: 957, column: 32, scope: !3149, inlinedAt: !3213)
!3215 = !DILocation(line: 0, scope: !3205)
!3216 = !DILocation(line: 0, scope: !3149, inlinedAt: !3213)
!3217 = !DILocation(line: 957, column: 3, scope: !3149, inlinedAt: !3213)
!3218 = !DILocation(line: 0, scope: !3159, inlinedAt: !3212)
!3219 = !{!3220}
!3220 = distinct !{!3220, !3221, !"quoting_options_from_style: argument 0"}
!3221 = distinct !{!3221, !"quoting_options_from_style"}
!3222 = !DILocation(line: 196, column: 13, scope: !3171, inlinedAt: !3212)
!3223 = !DILocation(line: 196, column: 7, scope: !3159, inlinedAt: !3212)
!3224 = !DILocation(line: 197, column: 5, scope: !3171, inlinedAt: !3212)
!3225 = !DILocation(line: 198, column: 5, scope: !3159, inlinedAt: !3212)
!3226 = !DILocation(line: 198, column: 11, scope: !3159, inlinedAt: !3212)
!3227 = !DILocation(line: 958, column: 10, scope: !3149, inlinedAt: !3213)
!3228 = !DILocation(line: 959, column: 1, scope: !3149, inlinedAt: !3213)
!3229 = !DILocation(line: 972, column: 3, scope: !3205)
!3230 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !419, file: !419, line: 976, type: !3231, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3233)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!26, !185, !28, !85}
!3233 = !{!3234, !3235, !3236}
!3234 = !DILocalVariable(name: "s", arg: 1, scope: !3230, file: !419, line: 976, type: !185)
!3235 = !DILocalVariable(name: "arg", arg: 2, scope: !3230, file: !419, line: 976, type: !28)
!3236 = !DILocalVariable(name: "argsize", arg: 3, scope: !3230, file: !419, line: 976, type: !85)
!3237 = !DILocation(line: 195, column: 26, scope: !3159, inlinedAt: !3238)
!3238 = distinct !DILocation(line: 965, column: 36, scope: !3179, inlinedAt: !3239)
!3239 = distinct !DILocation(line: 978, column: 10, scope: !3230)
!3240 = !DILocation(line: 965, column: 32, scope: !3179, inlinedAt: !3239)
!3241 = !DILocation(line: 0, scope: !3230)
!3242 = !DILocation(line: 0, scope: !3179, inlinedAt: !3239)
!3243 = !DILocation(line: 965, column: 3, scope: !3179, inlinedAt: !3239)
!3244 = !DILocation(line: 0, scope: !3159, inlinedAt: !3238)
!3245 = !{!3246}
!3246 = distinct !{!3246, !3247, !"quoting_options_from_style: argument 0"}
!3247 = distinct !{!3247, !"quoting_options_from_style"}
!3248 = !DILocation(line: 196, column: 13, scope: !3171, inlinedAt: !3238)
!3249 = !DILocation(line: 196, column: 7, scope: !3159, inlinedAt: !3238)
!3250 = !DILocation(line: 197, column: 5, scope: !3171, inlinedAt: !3238)
!3251 = !DILocation(line: 198, column: 5, scope: !3159, inlinedAt: !3238)
!3252 = !DILocation(line: 198, column: 11, scope: !3159, inlinedAt: !3238)
!3253 = !DILocation(line: 966, column: 10, scope: !3179, inlinedAt: !3239)
!3254 = !DILocation(line: 967, column: 1, scope: !3179, inlinedAt: !3239)
!3255 = !DILocation(line: 978, column: 3, scope: !3230)
!3256 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !419, file: !419, line: 982, type: !3257, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3259)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!26, !28, !85, !27}
!3259 = !{!3260, !3261, !3262, !3263}
!3260 = !DILocalVariable(name: "arg", arg: 1, scope: !3256, file: !419, line: 982, type: !28)
!3261 = !DILocalVariable(name: "argsize", arg: 2, scope: !3256, file: !419, line: 982, type: !85)
!3262 = !DILocalVariable(name: "ch", arg: 3, scope: !3256, file: !419, line: 982, type: !27)
!3263 = !DILocalVariable(name: "options", scope: !3256, file: !419, line: 984, type: !435)
!3264 = !DILocation(line: 0, scope: !3256)
!3265 = !DILocation(line: 984, column: 3, scope: !3256)
!3266 = !DILocation(line: 984, column: 26, scope: !3256)
!3267 = !DILocation(line: 985, column: 13, scope: !3256)
!3268 = !{i64 0, i64 4, !1423, i64 4, i64 4, !1358, i64 8, i64 32, !1423, i64 40, i64 8, !1255, i64 48, i64 8, !1255}
!3269 = !DILocation(line: 0, scope: !2096, inlinedAt: !3270)
!3270 = distinct !DILocation(line: 986, column: 3, scope: !3256)
!3271 = !DILocation(line: 156, column: 62, scope: !2096, inlinedAt: !3270)
!3272 = !DILocation(line: 156, column: 57, scope: !2096, inlinedAt: !3270)
!3273 = !DILocation(line: 157, column: 15, scope: !2096, inlinedAt: !3270)
!3274 = !DILocation(line: 158, column: 12, scope: !2096, inlinedAt: !3270)
!3275 = !DILocation(line: 158, column: 15, scope: !2096, inlinedAt: !3270)
!3276 = !DILocation(line: 158, column: 25, scope: !2096, inlinedAt: !3270)
!3277 = !DILocation(line: 159, column: 18, scope: !2096, inlinedAt: !3270)
!3278 = !DILocation(line: 159, column: 23, scope: !2096, inlinedAt: !3270)
!3279 = !DILocation(line: 159, column: 6, scope: !2096, inlinedAt: !3270)
!3280 = !DILocation(line: 987, column: 10, scope: !3256)
!3281 = !DILocation(line: 988, column: 1, scope: !3256)
!3282 = !DILocation(line: 987, column: 3, scope: !3256)
!3283 = distinct !DISubprogram(name: "quotearg_char", scope: !419, file: !419, line: 991, type: !3284, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3286)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{!26, !28, !27}
!3286 = !{!3287, !3288}
!3287 = !DILocalVariable(name: "arg", arg: 1, scope: !3283, file: !419, line: 991, type: !28)
!3288 = !DILocalVariable(name: "ch", arg: 2, scope: !3283, file: !419, line: 991, type: !27)
!3289 = !DILocation(line: 984, column: 26, scope: !3256, inlinedAt: !3290)
!3290 = distinct !DILocation(line: 993, column: 10, scope: !3283)
!3291 = !DILocation(line: 0, scope: !3283)
!3292 = !DILocation(line: 0, scope: !3256, inlinedAt: !3290)
!3293 = !DILocation(line: 984, column: 3, scope: !3256, inlinedAt: !3290)
!3294 = !DILocation(line: 985, column: 13, scope: !3256, inlinedAt: !3290)
!3295 = !DILocation(line: 0, scope: !2096, inlinedAt: !3296)
!3296 = distinct !DILocation(line: 986, column: 3, scope: !3256, inlinedAt: !3290)
!3297 = !DILocation(line: 156, column: 62, scope: !2096, inlinedAt: !3296)
!3298 = !DILocation(line: 156, column: 57, scope: !2096, inlinedAt: !3296)
!3299 = !DILocation(line: 157, column: 15, scope: !2096, inlinedAt: !3296)
!3300 = !DILocation(line: 158, column: 12, scope: !2096, inlinedAt: !3296)
!3301 = !DILocation(line: 158, column: 15, scope: !2096, inlinedAt: !3296)
!3302 = !DILocation(line: 158, column: 25, scope: !2096, inlinedAt: !3296)
!3303 = !DILocation(line: 159, column: 18, scope: !2096, inlinedAt: !3296)
!3304 = !DILocation(line: 159, column: 23, scope: !2096, inlinedAt: !3296)
!3305 = !DILocation(line: 159, column: 6, scope: !2096, inlinedAt: !3296)
!3306 = !DILocation(line: 987, column: 10, scope: !3256, inlinedAt: !3290)
!3307 = !DILocation(line: 988, column: 1, scope: !3256, inlinedAt: !3290)
!3308 = !DILocation(line: 993, column: 3, scope: !3283)
!3309 = distinct !DISubprogram(name: "quotearg_colon", scope: !419, file: !419, line: 997, type: !109, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3310)
!3310 = !{!3311}
!3311 = !DILocalVariable(name: "arg", arg: 1, scope: !3309, file: !419, line: 997, type: !28)
!3312 = !DILocation(line: 984, column: 26, scope: !3256, inlinedAt: !3313)
!3313 = distinct !DILocation(line: 993, column: 10, scope: !3283, inlinedAt: !3314)
!3314 = distinct !DILocation(line: 999, column: 10, scope: !3309)
!3315 = !DILocation(line: 0, scope: !3309)
!3316 = !DILocation(line: 0, scope: !3283, inlinedAt: !3314)
!3317 = !DILocation(line: 0, scope: !3256, inlinedAt: !3313)
!3318 = !DILocation(line: 984, column: 3, scope: !3256, inlinedAt: !3313)
!3319 = !DILocation(line: 985, column: 13, scope: !3256, inlinedAt: !3313)
!3320 = !DILocation(line: 0, scope: !2096, inlinedAt: !3321)
!3321 = distinct !DILocation(line: 986, column: 3, scope: !3256, inlinedAt: !3313)
!3322 = !DILocation(line: 156, column: 57, scope: !2096, inlinedAt: !3321)
!3323 = !DILocation(line: 158, column: 12, scope: !2096, inlinedAt: !3321)
!3324 = !DILocation(line: 159, column: 6, scope: !2096, inlinedAt: !3321)
!3325 = !DILocation(line: 987, column: 10, scope: !3256, inlinedAt: !3313)
!3326 = !DILocation(line: 988, column: 1, scope: !3256, inlinedAt: !3313)
!3327 = !DILocation(line: 999, column: 3, scope: !3309)
!3328 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !419, file: !419, line: 1003, type: !3139, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3329)
!3329 = !{!3330, !3331}
!3330 = !DILocalVariable(name: "arg", arg: 1, scope: !3328, file: !419, line: 1003, type: !28)
!3331 = !DILocalVariable(name: "argsize", arg: 2, scope: !3328, file: !419, line: 1003, type: !85)
!3332 = !DILocation(line: 984, column: 26, scope: !3256, inlinedAt: !3333)
!3333 = distinct !DILocation(line: 1005, column: 10, scope: !3328)
!3334 = !DILocation(line: 0, scope: !3328)
!3335 = !DILocation(line: 0, scope: !3256, inlinedAt: !3333)
!3336 = !DILocation(line: 984, column: 3, scope: !3256, inlinedAt: !3333)
!3337 = !DILocation(line: 985, column: 13, scope: !3256, inlinedAt: !3333)
!3338 = !DILocation(line: 0, scope: !2096, inlinedAt: !3339)
!3339 = distinct !DILocation(line: 986, column: 3, scope: !3256, inlinedAt: !3333)
!3340 = !DILocation(line: 156, column: 57, scope: !2096, inlinedAt: !3339)
!3341 = !DILocation(line: 158, column: 12, scope: !2096, inlinedAt: !3339)
!3342 = !DILocation(line: 159, column: 6, scope: !2096, inlinedAt: !3339)
!3343 = !DILocation(line: 987, column: 10, scope: !3256, inlinedAt: !3333)
!3344 = !DILocation(line: 988, column: 1, scope: !3256, inlinedAt: !3333)
!3345 = !DILocation(line: 1005, column: 3, scope: !3328)
!3346 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !419, file: !419, line: 1009, type: !230, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3347)
!3347 = !{!3348, !3349, !3350, !3351}
!3348 = !DILocalVariable(name: "n", arg: 1, scope: !3346, file: !419, line: 1009, type: !30)
!3349 = !DILocalVariable(name: "s", arg: 2, scope: !3346, file: !419, line: 1009, type: !185)
!3350 = !DILocalVariable(name: "arg", arg: 3, scope: !3346, file: !419, line: 1009, type: !28)
!3351 = !DILocalVariable(name: "options", scope: !3346, file: !419, line: 1011, type: !435)
!3352 = !DILocation(line: 195, column: 26, scope: !3159, inlinedAt: !3353)
!3353 = distinct !DILocation(line: 1012, column: 13, scope: !3346)
!3354 = !DILocation(line: 0, scope: !3346)
!3355 = !DILocation(line: 1011, column: 3, scope: !3346)
!3356 = !DILocation(line: 1011, column: 26, scope: !3346)
!3357 = !DILocation(line: 1012, column: 13, scope: !3346)
!3358 = !DILocation(line: 0, scope: !3159, inlinedAt: !3353)
!3359 = !{!3360}
!3360 = distinct !{!3360, !3361, !"quoting_options_from_style: argument 0"}
!3361 = distinct !{!3361, !"quoting_options_from_style"}
!3362 = !DILocation(line: 196, column: 13, scope: !3171, inlinedAt: !3353)
!3363 = !DILocation(line: 196, column: 7, scope: !3159, inlinedAt: !3353)
!3364 = !DILocation(line: 197, column: 5, scope: !3171, inlinedAt: !3353)
!3365 = !DILocation(line: 0, scope: !2096, inlinedAt: !3366)
!3366 = distinct !DILocation(line: 1013, column: 3, scope: !3346)
!3367 = !DILocation(line: 156, column: 57, scope: !2096, inlinedAt: !3366)
!3368 = !DILocation(line: 158, column: 12, scope: !2096, inlinedAt: !3366)
!3369 = !DILocation(line: 159, column: 6, scope: !2096, inlinedAt: !3366)
!3370 = !DILocation(line: 1014, column: 10, scope: !3346)
!3371 = !DILocation(line: 1015, column: 1, scope: !3346)
!3372 = !DILocation(line: 1014, column: 3, scope: !3346)
!3373 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !419, file: !419, line: 1018, type: !3374, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3376)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{!26, !30, !28, !28, !28}
!3376 = !{!3377, !3378, !3379, !3380}
!3377 = !DILocalVariable(name: "n", arg: 1, scope: !3373, file: !419, line: 1018, type: !30)
!3378 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3373, file: !419, line: 1018, type: !28)
!3379 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3373, file: !419, line: 1019, type: !28)
!3380 = !DILocalVariable(name: "arg", arg: 4, scope: !3373, file: !419, line: 1019, type: !28)
!3381 = !DILocalVariable(name: "o", scope: !3382, file: !419, line: 1030, type: !435)
!3382 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !419, file: !419, line: 1026, type: !3383, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3385)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!26, !30, !28, !28, !28, !85}
!3385 = !{!3386, !3387, !3388, !3389, !3390, !3381}
!3386 = !DILocalVariable(name: "n", arg: 1, scope: !3382, file: !419, line: 1026, type: !30)
!3387 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3382, file: !419, line: 1026, type: !28)
!3388 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3382, file: !419, line: 1027, type: !28)
!3389 = !DILocalVariable(name: "arg", arg: 4, scope: !3382, file: !419, line: 1028, type: !28)
!3390 = !DILocalVariable(name: "argsize", arg: 5, scope: !3382, file: !419, line: 1028, type: !85)
!3391 = !DILocation(line: 1030, column: 26, scope: !3382, inlinedAt: !3392)
!3392 = distinct !DILocation(line: 1021, column: 10, scope: !3373)
!3393 = !DILocation(line: 0, scope: !3373)
!3394 = !DILocation(line: 0, scope: !3382, inlinedAt: !3392)
!3395 = !DILocation(line: 1030, column: 3, scope: !3382, inlinedAt: !3392)
!3396 = !DILocation(line: 1030, column: 30, scope: !3382, inlinedAt: !3392)
!3397 = !DILocation(line: 0, scope: !2136, inlinedAt: !3398)
!3398 = distinct !DILocation(line: 1031, column: 3, scope: !3382, inlinedAt: !3392)
!3399 = !DILocation(line: 184, column: 6, scope: !2136, inlinedAt: !3398)
!3400 = !DILocation(line: 184, column: 12, scope: !2136, inlinedAt: !3398)
!3401 = !DILocation(line: 185, column: 8, scope: !2150, inlinedAt: !3398)
!3402 = !DILocation(line: 185, column: 23, scope: !2150, inlinedAt: !3398)
!3403 = !DILocation(line: 185, column: 19, scope: !2150, inlinedAt: !3398)
!3404 = !DILocation(line: 186, column: 5, scope: !2150, inlinedAt: !3398)
!3405 = !DILocation(line: 187, column: 6, scope: !2136, inlinedAt: !3398)
!3406 = !DILocation(line: 187, column: 17, scope: !2136, inlinedAt: !3398)
!3407 = !DILocation(line: 188, column: 6, scope: !2136, inlinedAt: !3398)
!3408 = !DILocation(line: 188, column: 18, scope: !2136, inlinedAt: !3398)
!3409 = !DILocation(line: 1032, column: 10, scope: !3382, inlinedAt: !3392)
!3410 = !DILocation(line: 1033, column: 1, scope: !3382, inlinedAt: !3392)
!3411 = !DILocation(line: 1021, column: 3, scope: !3373)
!3412 = !DILocation(line: 0, scope: !3382)
!3413 = !DILocation(line: 1030, column: 3, scope: !3382)
!3414 = !DILocation(line: 1030, column: 26, scope: !3382)
!3415 = !DILocation(line: 1030, column: 30, scope: !3382)
!3416 = !DILocation(line: 0, scope: !2136, inlinedAt: !3417)
!3417 = distinct !DILocation(line: 1031, column: 3, scope: !3382)
!3418 = !DILocation(line: 184, column: 6, scope: !2136, inlinedAt: !3417)
!3419 = !DILocation(line: 184, column: 12, scope: !2136, inlinedAt: !3417)
!3420 = !DILocation(line: 185, column: 8, scope: !2150, inlinedAt: !3417)
!3421 = !DILocation(line: 185, column: 23, scope: !2150, inlinedAt: !3417)
!3422 = !DILocation(line: 185, column: 19, scope: !2150, inlinedAt: !3417)
!3423 = !DILocation(line: 186, column: 5, scope: !2150, inlinedAt: !3417)
!3424 = !DILocation(line: 187, column: 6, scope: !2136, inlinedAt: !3417)
!3425 = !DILocation(line: 187, column: 17, scope: !2136, inlinedAt: !3417)
!3426 = !DILocation(line: 188, column: 6, scope: !2136, inlinedAt: !3417)
!3427 = !DILocation(line: 188, column: 18, scope: !2136, inlinedAt: !3417)
!3428 = !DILocation(line: 1032, column: 10, scope: !3382)
!3429 = !DILocation(line: 1033, column: 1, scope: !3382)
!3430 = !DILocation(line: 1032, column: 3, scope: !3382)
!3431 = distinct !DISubprogram(name: "quotearg_custom", scope: !419, file: !419, line: 1036, type: !3432, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3434)
!3432 = !DISubroutineType(types: !3433)
!3433 = !{!26, !28, !28, !28}
!3434 = !{!3435, !3436, !3437}
!3435 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3431, file: !419, line: 1036, type: !28)
!3436 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3431, file: !419, line: 1036, type: !28)
!3437 = !DILocalVariable(name: "arg", arg: 3, scope: !3431, file: !419, line: 1037, type: !28)
!3438 = !DILocation(line: 1030, column: 26, scope: !3382, inlinedAt: !3439)
!3439 = distinct !DILocation(line: 1021, column: 10, scope: !3373, inlinedAt: !3440)
!3440 = distinct !DILocation(line: 1039, column: 10, scope: !3431)
!3441 = !DILocation(line: 0, scope: !3431)
!3442 = !DILocation(line: 0, scope: !3373, inlinedAt: !3440)
!3443 = !DILocation(line: 0, scope: !3382, inlinedAt: !3439)
!3444 = !DILocation(line: 1030, column: 3, scope: !3382, inlinedAt: !3439)
!3445 = !DILocation(line: 1030, column: 30, scope: !3382, inlinedAt: !3439)
!3446 = !DILocation(line: 0, scope: !2136, inlinedAt: !3447)
!3447 = distinct !DILocation(line: 1031, column: 3, scope: !3382, inlinedAt: !3439)
!3448 = !DILocation(line: 184, column: 6, scope: !2136, inlinedAt: !3447)
!3449 = !DILocation(line: 184, column: 12, scope: !2136, inlinedAt: !3447)
!3450 = !DILocation(line: 185, column: 8, scope: !2150, inlinedAt: !3447)
!3451 = !DILocation(line: 185, column: 23, scope: !2150, inlinedAt: !3447)
!3452 = !DILocation(line: 185, column: 19, scope: !2150, inlinedAt: !3447)
!3453 = !DILocation(line: 186, column: 5, scope: !2150, inlinedAt: !3447)
!3454 = !DILocation(line: 187, column: 6, scope: !2136, inlinedAt: !3447)
!3455 = !DILocation(line: 187, column: 17, scope: !2136, inlinedAt: !3447)
!3456 = !DILocation(line: 188, column: 6, scope: !2136, inlinedAt: !3447)
!3457 = !DILocation(line: 188, column: 18, scope: !2136, inlinedAt: !3447)
!3458 = !DILocation(line: 1032, column: 10, scope: !3382, inlinedAt: !3439)
!3459 = !DILocation(line: 1033, column: 1, scope: !3382, inlinedAt: !3439)
!3460 = !DILocation(line: 1039, column: 3, scope: !3431)
!3461 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !419, file: !419, line: 1043, type: !3462, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3464)
!3462 = !DISubroutineType(types: !3463)
!3463 = !{!26, !28, !28, !28, !85}
!3464 = !{!3465, !3466, !3467, !3468}
!3465 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3461, file: !419, line: 1043, type: !28)
!3466 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3461, file: !419, line: 1043, type: !28)
!3467 = !DILocalVariable(name: "arg", arg: 3, scope: !3461, file: !419, line: 1044, type: !28)
!3468 = !DILocalVariable(name: "argsize", arg: 4, scope: !3461, file: !419, line: 1044, type: !85)
!3469 = !DILocation(line: 1030, column: 26, scope: !3382, inlinedAt: !3470)
!3470 = distinct !DILocation(line: 1046, column: 10, scope: !3461)
!3471 = !DILocation(line: 0, scope: !3461)
!3472 = !DILocation(line: 0, scope: !3382, inlinedAt: !3470)
!3473 = !DILocation(line: 1030, column: 3, scope: !3382, inlinedAt: !3470)
!3474 = !DILocation(line: 1030, column: 30, scope: !3382, inlinedAt: !3470)
!3475 = !DILocation(line: 0, scope: !2136, inlinedAt: !3476)
!3476 = distinct !DILocation(line: 1031, column: 3, scope: !3382, inlinedAt: !3470)
!3477 = !DILocation(line: 184, column: 6, scope: !2136, inlinedAt: !3476)
!3478 = !DILocation(line: 184, column: 12, scope: !2136, inlinedAt: !3476)
!3479 = !DILocation(line: 185, column: 8, scope: !2150, inlinedAt: !3476)
!3480 = !DILocation(line: 185, column: 23, scope: !2150, inlinedAt: !3476)
!3481 = !DILocation(line: 185, column: 19, scope: !2150, inlinedAt: !3476)
!3482 = !DILocation(line: 186, column: 5, scope: !2150, inlinedAt: !3476)
!3483 = !DILocation(line: 187, column: 6, scope: !2136, inlinedAt: !3476)
!3484 = !DILocation(line: 187, column: 17, scope: !2136, inlinedAt: !3476)
!3485 = !DILocation(line: 188, column: 6, scope: !2136, inlinedAt: !3476)
!3486 = !DILocation(line: 188, column: 18, scope: !2136, inlinedAt: !3476)
!3487 = !DILocation(line: 1032, column: 10, scope: !3382, inlinedAt: !3470)
!3488 = !DILocation(line: 1033, column: 1, scope: !3382, inlinedAt: !3470)
!3489 = !DILocation(line: 1046, column: 3, scope: !3461)
!3490 = distinct !DISubprogram(name: "quote_n_mem", scope: !419, file: !419, line: 1061, type: !3491, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3493)
!3491 = !DISubroutineType(types: !3492)
!3492 = !{!28, !30, !28, !85}
!3493 = !{!3494, !3495, !3496}
!3494 = !DILocalVariable(name: "n", arg: 1, scope: !3490, file: !419, line: 1061, type: !30)
!3495 = !DILocalVariable(name: "arg", arg: 2, scope: !3490, file: !419, line: 1061, type: !28)
!3496 = !DILocalVariable(name: "argsize", arg: 3, scope: !3490, file: !419, line: 1061, type: !85)
!3497 = !DILocation(line: 0, scope: !3490)
!3498 = !DILocation(line: 1063, column: 10, scope: !3490)
!3499 = !DILocation(line: 1063, column: 3, scope: !3490)
!3500 = distinct !DISubprogram(name: "quote_mem", scope: !419, file: !419, line: 1067, type: !3501, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3503)
!3501 = !DISubroutineType(types: !3502)
!3502 = !{!28, !28, !85}
!3503 = !{!3504, !3505}
!3504 = !DILocalVariable(name: "arg", arg: 1, scope: !3500, file: !419, line: 1067, type: !28)
!3505 = !DILocalVariable(name: "argsize", arg: 2, scope: !3500, file: !419, line: 1067, type: !85)
!3506 = !DILocation(line: 0, scope: !3500)
!3507 = !DILocation(line: 0, scope: !3490, inlinedAt: !3508)
!3508 = distinct !DILocation(line: 1069, column: 10, scope: !3500)
!3509 = !DILocation(line: 1063, column: 10, scope: !3490, inlinedAt: !3508)
!3510 = !DILocation(line: 1069, column: 3, scope: !3500)
!3511 = distinct !DISubprogram(name: "quote_n", scope: !419, file: !419, line: 1073, type: !3512, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3514)
!3512 = !DISubroutineType(types: !3513)
!3513 = !{!28, !30, !28}
!3514 = !{!3515, !3516}
!3515 = !DILocalVariable(name: "n", arg: 1, scope: !3511, file: !419, line: 1073, type: !30)
!3516 = !DILocalVariable(name: "arg", arg: 2, scope: !3511, file: !419, line: 1073, type: !28)
!3517 = !DILocation(line: 0, scope: !3511)
!3518 = !DILocation(line: 0, scope: !3490, inlinedAt: !3519)
!3519 = distinct !DILocation(line: 1075, column: 10, scope: !3511)
!3520 = !DILocation(line: 1063, column: 10, scope: !3490, inlinedAt: !3519)
!3521 = !DILocation(line: 1075, column: 3, scope: !3511)
!3522 = distinct !DISubprogram(name: "quote", scope: !419, file: !419, line: 1079, type: !223, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3523)
!3523 = !{!3524}
!3524 = !DILocalVariable(name: "arg", arg: 1, scope: !3522, file: !419, line: 1079, type: !28)
!3525 = !DILocation(line: 0, scope: !3522)
!3526 = !DILocation(line: 0, scope: !3511, inlinedAt: !3527)
!3527 = distinct !DILocation(line: 1081, column: 10, scope: !3522)
!3528 = !DILocation(line: 0, scope: !3490, inlinedAt: !3529)
!3529 = distinct !DILocation(line: 1075, column: 10, scope: !3511, inlinedAt: !3527)
!3530 = !DILocation(line: 1063, column: 10, scope: !3490, inlinedAt: !3529)
!3531 = !DILocation(line: 1081, column: 3, scope: !3522)
!3532 = distinct !DISubprogram(name: "version_etc_arn", scope: !566, file: !566, line: 61, type: !3533, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3538)
!3533 = !DISubroutineType(types: !3534)
!3534 = !{null, !3535, !28, !28, !28, !3537, !85}
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3536, size: 64)
!3536 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !291, line: 7, baseType: !576)
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!3538 = !{!3539, !3540, !3541, !3542, !3543, !3544}
!3539 = !DILocalVariable(name: "stream", arg: 1, scope: !3532, file: !566, line: 61, type: !3535)
!3540 = !DILocalVariable(name: "command_name", arg: 2, scope: !3532, file: !566, line: 62, type: !28)
!3541 = !DILocalVariable(name: "package", arg: 3, scope: !3532, file: !566, line: 62, type: !28)
!3542 = !DILocalVariable(name: "version", arg: 4, scope: !3532, file: !566, line: 63, type: !28)
!3543 = !DILocalVariable(name: "authors", arg: 5, scope: !3532, file: !566, line: 64, type: !3537)
!3544 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3532, file: !566, line: 64, type: !85)
!3545 = !DILocation(line: 0, scope: !3532)
!3546 = !DILocation(line: 66, column: 7, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3532, file: !566, line: 66, column: 7)
!3548 = !DILocation(line: 66, column: 7, scope: !3532)
!3549 = !DILocation(line: 67, column: 5, scope: !3547)
!3550 = !DILocation(line: 69, column: 5, scope: !3547)
!3551 = !DILocation(line: 83, column: 3, scope: !3532)
!3552 = !DILocation(line: 85, column: 3, scope: !3532)
!3553 = !DILocation(line: 88, column: 3, scope: !3532)
!3554 = !DILocation(line: 95, column: 3, scope: !3532)
!3555 = !DILocation(line: 97, column: 3, scope: !3532)
!3556 = !DILocation(line: 105, column: 7, scope: !3557)
!3557 = distinct !DILexicalBlock(scope: !3532, file: !566, line: 98, column: 5)
!3558 = !DILocation(line: 106, column: 7, scope: !3557)
!3559 = !DILocation(line: 109, column: 7, scope: !3557)
!3560 = !DILocation(line: 110, column: 7, scope: !3557)
!3561 = !DILocation(line: 113, column: 7, scope: !3557)
!3562 = !DILocation(line: 115, column: 7, scope: !3557)
!3563 = !DILocation(line: 120, column: 7, scope: !3557)
!3564 = !DILocation(line: 122, column: 7, scope: !3557)
!3565 = !DILocation(line: 127, column: 7, scope: !3557)
!3566 = !DILocation(line: 129, column: 7, scope: !3557)
!3567 = !DILocation(line: 134, column: 7, scope: !3557)
!3568 = !DILocation(line: 137, column: 7, scope: !3557)
!3569 = !DILocation(line: 142, column: 7, scope: !3557)
!3570 = !DILocation(line: 145, column: 7, scope: !3557)
!3571 = !DILocation(line: 150, column: 7, scope: !3557)
!3572 = !DILocation(line: 154, column: 7, scope: !3557)
!3573 = !DILocation(line: 159, column: 7, scope: !3557)
!3574 = !DILocation(line: 163, column: 7, scope: !3557)
!3575 = !DILocation(line: 170, column: 7, scope: !3557)
!3576 = !DILocation(line: 174, column: 7, scope: !3557)
!3577 = !DILocation(line: 176, column: 1, scope: !3532)
!3578 = distinct !DISubprogram(name: "version_etc_ar", scope: !566, file: !566, line: 183, type: !3579, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3581)
!3579 = !DISubroutineType(types: !3580)
!3580 = !{null, !3535, !28, !28, !28, !3537}
!3581 = !{!3582, !3583, !3584, !3585, !3586, !3587}
!3582 = !DILocalVariable(name: "stream", arg: 1, scope: !3578, file: !566, line: 183, type: !3535)
!3583 = !DILocalVariable(name: "command_name", arg: 2, scope: !3578, file: !566, line: 184, type: !28)
!3584 = !DILocalVariable(name: "package", arg: 3, scope: !3578, file: !566, line: 184, type: !28)
!3585 = !DILocalVariable(name: "version", arg: 4, scope: !3578, file: !566, line: 185, type: !28)
!3586 = !DILocalVariable(name: "authors", arg: 5, scope: !3578, file: !566, line: 185, type: !3537)
!3587 = !DILocalVariable(name: "n_authors", scope: !3578, file: !566, line: 187, type: !85)
!3588 = !DILocation(line: 0, scope: !3578)
!3589 = !DILocation(line: 189, column: 8, scope: !3590)
!3590 = distinct !DILexicalBlock(scope: !3578, file: !566, line: 189, column: 3)
!3591 = !DILocation(line: 0, scope: !3590)
!3592 = !DILocation(line: 189, column: 23, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3590, file: !566, line: 189, column: 3)
!3594 = !DILocation(line: 189, column: 3, scope: !3590)
!3595 = !DILocation(line: 189, column: 52, scope: !3593)
!3596 = distinct !{!3596, !3594, !3597}
!3597 = !DILocation(line: 190, column: 5, scope: !3590)
!3598 = !DILocation(line: 191, column: 3, scope: !3578)
!3599 = !DILocation(line: 192, column: 1, scope: !3578)
!3600 = distinct !DISubprogram(name: "version_etc_va", scope: !566, file: !566, line: 199, type: !3601, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3610)
!3601 = !DISubroutineType(types: !3602)
!3602 = !{null, !3535, !28, !28, !28, !3603}
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3604, size: 64)
!3604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !566, line: 192, size: 192, elements: !3605)
!3605 = !{!3606, !3607, !3608, !3609}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3604, file: !566, line: 192, baseType: !7, size: 32)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3604, file: !566, line: 192, baseType: !7, size: 32, offset: 32)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3604, file: !566, line: 192, baseType: !83, size: 64, offset: 64)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3604, file: !566, line: 192, baseType: !83, size: 64, offset: 128)
!3610 = !{!3611, !3612, !3613, !3614, !3615, !3616, !3617}
!3611 = !DILocalVariable(name: "stream", arg: 1, scope: !3600, file: !566, line: 199, type: !3535)
!3612 = !DILocalVariable(name: "command_name", arg: 2, scope: !3600, file: !566, line: 200, type: !28)
!3613 = !DILocalVariable(name: "package", arg: 3, scope: !3600, file: !566, line: 200, type: !28)
!3614 = !DILocalVariable(name: "version", arg: 4, scope: !3600, file: !566, line: 201, type: !28)
!3615 = !DILocalVariable(name: "authors", arg: 5, scope: !3600, file: !566, line: 201, type: !3603)
!3616 = !DILocalVariable(name: "n_authors", scope: !3600, file: !566, line: 203, type: !85)
!3617 = !DILocalVariable(name: "authtab", scope: !3600, file: !566, line: 204, type: !3618)
!3618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 640, elements: !488)
!3619 = !DILocation(line: 0, scope: !3600)
!3620 = !DILocation(line: 204, column: 3, scope: !3600)
!3621 = !DILocation(line: 204, column: 15, scope: !3600)
!3622 = !DILocation(line: 0, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3624, file: !566, line: 206, column: 3)
!3624 = distinct !DILexicalBlock(scope: !3600, file: !566, line: 206, column: 3)
!3625 = !DILocation(line: 208, column: 35, scope: !3623)
!3626 = !DILocation(line: 208, column: 14, scope: !3623)
!3627 = !DILocation(line: 208, column: 33, scope: !3623)
!3628 = !DILocation(line: 208, column: 67, scope: !3623)
!3629 = !DILocation(line: 206, column: 3, scope: !3624)
!3630 = !DILocation(line: 0, scope: !3624)
!3631 = !DILocation(line: 211, column: 3, scope: !3600)
!3632 = !DILocation(line: 213, column: 1, scope: !3600)
!3633 = distinct !DISubprogram(name: "version_etc", scope: !566, file: !566, line: 230, type: !3634, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3636)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{null, !3535, !28, !28, !28, null}
!3636 = !{!3637, !3638, !3639, !3640, !3641}
!3637 = !DILocalVariable(name: "stream", arg: 1, scope: !3633, file: !566, line: 230, type: !3535)
!3638 = !DILocalVariable(name: "command_name", arg: 2, scope: !3633, file: !566, line: 231, type: !28)
!3639 = !DILocalVariable(name: "package", arg: 3, scope: !3633, file: !566, line: 231, type: !28)
!3640 = !DILocalVariable(name: "version", arg: 4, scope: !3633, file: !566, line: 232, type: !28)
!3641 = !DILocalVariable(name: "authors", scope: !3633, file: !566, line: 234, type: !3642)
!3642 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !33, line: 52, baseType: !3643)
!3643 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3644, line: 32, baseType: !3645)
!3644 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!3645 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !566, line: 234, baseType: !3646)
!3646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3604, size: 192, elements: !68)
!3647 = !DILocation(line: 0, scope: !3633)
!3648 = !DILocation(line: 234, column: 3, scope: !3633)
!3649 = !DILocation(line: 234, column: 11, scope: !3633)
!3650 = !DILocation(line: 236, column: 3, scope: !3633)
!3651 = !DILocation(line: 237, column: 3, scope: !3633)
!3652 = !DILocation(line: 238, column: 3, scope: !3633)
!3653 = !DILocation(line: 239, column: 1, scope: !3633)
!3654 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !566, file: !566, line: 242, type: !95, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !31)
!3655 = !DILocation(line: 244, column: 3, scope: !3654)
!3656 = !DILocation(line: 249, column: 3, scope: !3654)
!3657 = !DILocation(line: 255, column: 3, scope: !3654)
!3658 = !DILocation(line: 260, column: 3, scope: !3654)
!3659 = !DILocation(line: 262, column: 1, scope: !3654)
!3660 = distinct !DISubprogram(name: "xnmalloc", scope: !157, file: !157, line: 99, type: !3661, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !607, retainedNodes: !3663)
!3661 = !DISubroutineType(types: !3662)
!3662 = !{!83, !85, !85}
!3663 = !{!3664, !3665}
!3664 = !DILocalVariable(name: "n", arg: 1, scope: !3660, file: !157, line: 99, type: !85)
!3665 = !DILocalVariable(name: "s", arg: 2, scope: !3660, file: !157, line: 99, type: !85)
!3666 = !DILocation(line: 0, scope: !3660)
!3667 = !DILocation(line: 101, column: 7, scope: !3668)
!3668 = distinct !DILexicalBlock(scope: !3660, file: !157, line: 101, column: 7)
!3669 = !DILocation(line: 101, column: 7, scope: !3660)
!3670 = !DILocation(line: 102, column: 5, scope: !3668)
!3671 = !DILocation(line: 103, column: 21, scope: !3660)
!3672 = !DILocalVariable(name: "n", arg: 1, scope: !3673, file: !608, line: 39, type: !85)
!3673 = distinct !DISubprogram(name: "xmalloc", scope: !608, file: !608, line: 39, type: !3674, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !607, retainedNodes: !3676)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{!83, !85}
!3676 = !{!3672, !3677}
!3677 = !DILocalVariable(name: "p", scope: !3673, file: !608, line: 41, type: !83)
!3678 = !DILocation(line: 0, scope: !3673, inlinedAt: !3679)
!3679 = distinct !DILocation(line: 103, column: 10, scope: !3660)
!3680 = !DILocation(line: 41, column: 13, scope: !3673, inlinedAt: !3679)
!3681 = !DILocation(line: 42, column: 8, scope: !3682, inlinedAt: !3679)
!3682 = distinct !DILexicalBlock(scope: !3673, file: !608, line: 42, column: 7)
!3683 = !DILocation(line: 42, column: 15, scope: !3682, inlinedAt: !3679)
!3684 = !DILocation(line: 42, column: 10, scope: !3682, inlinedAt: !3679)
!3685 = !DILocation(line: 43, column: 5, scope: !3682, inlinedAt: !3679)
!3686 = !DILocation(line: 103, column: 3, scope: !3660)
!3687 = !DILocation(line: 0, scope: !3673)
!3688 = !DILocation(line: 41, column: 13, scope: !3673)
!3689 = !DILocation(line: 42, column: 8, scope: !3682)
!3690 = !DILocation(line: 42, column: 15, scope: !3682)
!3691 = !DILocation(line: 42, column: 10, scope: !3682)
!3692 = !DILocation(line: 43, column: 5, scope: !3682)
!3693 = !DILocation(line: 44, column: 3, scope: !3673)
!3694 = distinct !DISubprogram(name: "xnrealloc", scope: !157, file: !157, line: 112, type: !3695, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !607, retainedNodes: !3697)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{!83, !83, !85, !85}
!3697 = !{!3698, !3699, !3700}
!3698 = !DILocalVariable(name: "p", arg: 1, scope: !3694, file: !157, line: 112, type: !83)
!3699 = !DILocalVariable(name: "n", arg: 2, scope: !3694, file: !157, line: 112, type: !85)
!3700 = !DILocalVariable(name: "s", arg: 3, scope: !3694, file: !157, line: 112, type: !85)
!3701 = !DILocation(line: 0, scope: !3694)
!3702 = !DILocation(line: 114, column: 7, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3694, file: !157, line: 114, column: 7)
!3704 = !DILocation(line: 114, column: 7, scope: !3694)
!3705 = !DILocation(line: 115, column: 5, scope: !3703)
!3706 = !DILocation(line: 116, column: 25, scope: !3694)
!3707 = !DILocalVariable(name: "p", arg: 1, scope: !3708, file: !608, line: 51, type: !83)
!3708 = distinct !DISubprogram(name: "xrealloc", scope: !608, file: !608, line: 51, type: !3709, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !607, retainedNodes: !3711)
!3709 = !DISubroutineType(types: !3710)
!3710 = !{!83, !83, !85}
!3711 = !{!3707, !3712}
!3712 = !DILocalVariable(name: "n", arg: 2, scope: !3708, file: !608, line: 51, type: !85)
!3713 = !DILocation(line: 0, scope: !3708, inlinedAt: !3714)
!3714 = distinct !DILocation(line: 116, column: 10, scope: !3694)
!3715 = !DILocation(line: 53, column: 8, scope: !3716, inlinedAt: !3714)
!3716 = distinct !DILexicalBlock(scope: !3708, file: !608, line: 53, column: 7)
!3717 = !DILocation(line: 53, column: 13, scope: !3716, inlinedAt: !3714)
!3718 = !DILocation(line: 53, column: 10, scope: !3716, inlinedAt: !3714)
!3719 = !DILocation(line: 57, column: 7, scope: !3720, inlinedAt: !3714)
!3720 = distinct !DILexicalBlock(scope: !3716, file: !608, line: 54, column: 5)
!3721 = !DILocation(line: 58, column: 7, scope: !3720, inlinedAt: !3714)
!3722 = !DILocation(line: 61, column: 7, scope: !3708, inlinedAt: !3714)
!3723 = !DILocation(line: 62, column: 8, scope: !3724, inlinedAt: !3714)
!3724 = distinct !DILexicalBlock(scope: !3708, file: !608, line: 62, column: 7)
!3725 = !DILocation(line: 62, column: 13, scope: !3724, inlinedAt: !3714)
!3726 = !DILocation(line: 62, column: 10, scope: !3724, inlinedAt: !3714)
!3727 = !DILocation(line: 63, column: 5, scope: !3724, inlinedAt: !3714)
!3728 = !DILocation(line: 116, column: 3, scope: !3694)
!3729 = !DILocation(line: 0, scope: !3708)
!3730 = !DILocation(line: 53, column: 8, scope: !3716)
!3731 = !DILocation(line: 53, column: 13, scope: !3716)
!3732 = !DILocation(line: 53, column: 10, scope: !3716)
!3733 = !DILocation(line: 57, column: 7, scope: !3720)
!3734 = !DILocation(line: 58, column: 7, scope: !3720)
!3735 = !DILocation(line: 61, column: 7, scope: !3708)
!3736 = !DILocation(line: 62, column: 8, scope: !3724)
!3737 = !DILocation(line: 62, column: 13, scope: !3724)
!3738 = !DILocation(line: 62, column: 10, scope: !3724)
!3739 = !DILocation(line: 63, column: 5, scope: !3724)
!3740 = !DILocation(line: 65, column: 1, scope: !3708)
!3741 = !DILocation(line: 0, scope: !611)
!3742 = !DILocation(line: 176, column: 14, scope: !611)
!3743 = !DILocation(line: 178, column: 9, scope: !3744)
!3744 = distinct !DILexicalBlock(scope: !611, file: !157, line: 178, column: 7)
!3745 = !DILocation(line: 178, column: 7, scope: !611)
!3746 = !DILocation(line: 180, column: 13, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !3748, file: !157, line: 180, column: 11)
!3748 = distinct !DILexicalBlock(scope: !3744, file: !157, line: 179, column: 5)
!3749 = !DILocation(line: 180, column: 11, scope: !3748)
!3750 = !DILocation(line: 188, column: 30, scope: !3751)
!3751 = distinct !DILexicalBlock(scope: !3747, file: !157, line: 181, column: 9)
!3752 = !DILocation(line: 189, column: 16, scope: !3751)
!3753 = !DILocation(line: 189, column: 13, scope: !3751)
!3754 = !DILocation(line: 190, column: 9, scope: !3751)
!3755 = !DILocation(line: 191, column: 11, scope: !3756)
!3756 = distinct !DILexicalBlock(scope: !3748, file: !157, line: 191, column: 11)
!3757 = !DILocation(line: 191, column: 11, scope: !3748)
!3758 = !DILocation(line: 206, column: 7, scope: !611)
!3759 = !DILocation(line: 207, column: 25, scope: !611)
!3760 = !DILocation(line: 0, scope: !3708, inlinedAt: !3761)
!3761 = distinct !DILocation(line: 207, column: 10, scope: !611)
!3762 = !DILocation(line: 53, column: 10, scope: !3716, inlinedAt: !3761)
!3763 = !DILocation(line: 192, column: 9, scope: !3756)
!3764 = !DILocation(line: 200, column: 69, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3766, file: !157, line: 200, column: 11)
!3766 = distinct !DILexicalBlock(scope: !3744, file: !157, line: 195, column: 5)
!3767 = !DILocation(line: 201, column: 11, scope: !3765)
!3768 = !DILocation(line: 200, column: 11, scope: !3766)
!3769 = !DILocation(line: 202, column: 9, scope: !3765)
!3770 = !DILocation(line: 203, column: 14, scope: !3766)
!3771 = !DILocation(line: 203, column: 18, scope: !3766)
!3772 = !DILocation(line: 203, column: 9, scope: !3766)
!3773 = !DILocation(line: 53, column: 8, scope: !3716, inlinedAt: !3761)
!3774 = !DILocation(line: 57, column: 7, scope: !3720, inlinedAt: !3761)
!3775 = !DILocation(line: 58, column: 7, scope: !3720, inlinedAt: !3761)
!3776 = !DILocation(line: 61, column: 7, scope: !3708, inlinedAt: !3761)
!3777 = !DILocation(line: 62, column: 8, scope: !3724, inlinedAt: !3761)
!3778 = !DILocation(line: 62, column: 13, scope: !3724, inlinedAt: !3761)
!3779 = !DILocation(line: 62, column: 10, scope: !3724, inlinedAt: !3761)
!3780 = !DILocation(line: 63, column: 5, scope: !3724, inlinedAt: !3761)
!3781 = !DILocation(line: 207, column: 3, scope: !611)
!3782 = distinct !DISubprogram(name: "xcharalloc", scope: !157, file: !157, line: 216, type: !2949, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !607, retainedNodes: !3783)
!3783 = !{!3784}
!3784 = !DILocalVariable(name: "n", arg: 1, scope: !3782, file: !157, line: 216, type: !85)
!3785 = !DILocation(line: 0, scope: !3782)
!3786 = !DILocation(line: 0, scope: !3673, inlinedAt: !3787)
!3787 = distinct !DILocation(line: 218, column: 10, scope: !3782)
!3788 = !DILocation(line: 41, column: 13, scope: !3673, inlinedAt: !3787)
!3789 = !DILocation(line: 42, column: 8, scope: !3682, inlinedAt: !3787)
!3790 = !DILocation(line: 42, column: 15, scope: !3682, inlinedAt: !3787)
!3791 = !DILocation(line: 42, column: 10, scope: !3682, inlinedAt: !3787)
!3792 = !DILocation(line: 43, column: 5, scope: !3682, inlinedAt: !3787)
!3793 = !DILocation(line: 218, column: 3, scope: !3782)
!3794 = distinct !DISubprogram(name: "x2realloc", scope: !608, file: !608, line: 74, type: !3795, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !607, retainedNodes: !3797)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!83, !83, !212}
!3797 = !{!3798, !3799}
!3798 = !DILocalVariable(name: "p", arg: 1, scope: !3794, file: !608, line: 74, type: !83)
!3799 = !DILocalVariable(name: "pn", arg: 2, scope: !3794, file: !608, line: 74, type: !212)
!3800 = !DILocation(line: 0, scope: !3794)
!3801 = !DILocation(line: 0, scope: !611, inlinedAt: !3802)
!3802 = distinct !DILocation(line: 76, column: 10, scope: !3794)
!3803 = !DILocation(line: 176, column: 14, scope: !611, inlinedAt: !3802)
!3804 = !DILocation(line: 178, column: 9, scope: !3744, inlinedAt: !3802)
!3805 = !DILocation(line: 178, column: 7, scope: !611, inlinedAt: !3802)
!3806 = !DILocation(line: 180, column: 13, scope: !3747, inlinedAt: !3802)
!3807 = !DILocation(line: 180, column: 11, scope: !3748, inlinedAt: !3802)
!3808 = !DILocation(line: 191, column: 11, scope: !3756, inlinedAt: !3802)
!3809 = !DILocation(line: 191, column: 11, scope: !3748, inlinedAt: !3802)
!3810 = !DILocation(line: 206, column: 7, scope: !611, inlinedAt: !3802)
!3811 = !DILocation(line: 0, scope: !3708, inlinedAt: !3812)
!3812 = distinct !DILocation(line: 207, column: 10, scope: !611, inlinedAt: !3802)
!3813 = !DILocation(line: 53, column: 10, scope: !3716, inlinedAt: !3812)
!3814 = !DILocation(line: 192, column: 9, scope: !3756, inlinedAt: !3802)
!3815 = !DILocation(line: 201, column: 11, scope: !3765, inlinedAt: !3802)
!3816 = !DILocation(line: 200, column: 11, scope: !3766, inlinedAt: !3802)
!3817 = !DILocation(line: 202, column: 9, scope: !3765, inlinedAt: !3802)
!3818 = !DILocation(line: 203, column: 14, scope: !3766, inlinedAt: !3802)
!3819 = !DILocation(line: 203, column: 18, scope: !3766, inlinedAt: !3802)
!3820 = !DILocation(line: 203, column: 9, scope: !3766, inlinedAt: !3802)
!3821 = !DILocation(line: 53, column: 8, scope: !3716, inlinedAt: !3812)
!3822 = !DILocation(line: 57, column: 7, scope: !3720, inlinedAt: !3812)
!3823 = !DILocation(line: 58, column: 7, scope: !3720, inlinedAt: !3812)
!3824 = !DILocation(line: 61, column: 7, scope: !3708, inlinedAt: !3812)
!3825 = !DILocation(line: 62, column: 8, scope: !3724, inlinedAt: !3812)
!3826 = !DILocation(line: 62, column: 13, scope: !3724, inlinedAt: !3812)
!3827 = !DILocation(line: 62, column: 10, scope: !3724, inlinedAt: !3812)
!3828 = !DILocation(line: 63, column: 5, scope: !3724, inlinedAt: !3812)
!3829 = !DILocation(line: 76, column: 3, scope: !3794)
!3830 = distinct !DISubprogram(name: "xzalloc", scope: !608, file: !608, line: 84, type: !3674, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !607, retainedNodes: !3831)
!3831 = !{!3832}
!3832 = !DILocalVariable(name: "n", arg: 1, scope: !3830, file: !608, line: 84, type: !85)
!3833 = !DILocation(line: 0, scope: !3830)
!3834 = !DILocalVariable(name: "n", arg: 1, scope: !3835, file: !608, line: 93, type: !85)
!3835 = distinct !DISubprogram(name: "xcalloc", scope: !608, file: !608, line: 93, type: !3661, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !607, retainedNodes: !3836)
!3836 = !{!3834, !3837, !3838}
!3837 = !DILocalVariable(name: "s", arg: 2, scope: !3835, file: !608, line: 93, type: !85)
!3838 = !DILocalVariable(name: "p", scope: !3835, file: !608, line: 95, type: !83)
!3839 = !DILocation(line: 0, scope: !3835, inlinedAt: !3840)
!3840 = distinct !DILocation(line: 86, column: 10, scope: !3830)
!3841 = !DILocation(line: 100, column: 7, scope: !3842, inlinedAt: !3840)
!3842 = distinct !DILexicalBlock(scope: !3835, file: !608, line: 100, column: 7)
!3843 = !DILocation(line: 101, column: 7, scope: !3842, inlinedAt: !3840)
!3844 = !DILocation(line: 101, column: 18, scope: !3842, inlinedAt: !3840)
!3845 = !DILocation(line: 101, column: 16, scope: !3842, inlinedAt: !3840)
!3846 = !DILocation(line: 100, column: 7, scope: !3835, inlinedAt: !3840)
!3847 = !DILocation(line: 102, column: 5, scope: !3842, inlinedAt: !3840)
!3848 = !DILocation(line: 86, column: 3, scope: !3830)
!3849 = !DILocation(line: 0, scope: !3835)
!3850 = !DILocation(line: 100, column: 7, scope: !3842)
!3851 = !DILocation(line: 101, column: 7, scope: !3842)
!3852 = !DILocation(line: 101, column: 18, scope: !3842)
!3853 = !DILocation(line: 101, column: 16, scope: !3842)
!3854 = !DILocation(line: 100, column: 7, scope: !3835)
!3855 = !DILocation(line: 102, column: 5, scope: !3842)
!3856 = !DILocation(line: 103, column: 3, scope: !3835)
!3857 = distinct !DISubprogram(name: "xmemdup", scope: !608, file: !608, line: 111, type: !3858, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !607, retainedNodes: !3860)
!3858 = !DISubroutineType(types: !3859)
!3859 = !{!83, !169, !85}
!3860 = !{!3861, !3862}
!3861 = !DILocalVariable(name: "p", arg: 1, scope: !3857, file: !608, line: 111, type: !169)
!3862 = !DILocalVariable(name: "s", arg: 2, scope: !3857, file: !608, line: 111, type: !85)
!3863 = !DILocation(line: 0, scope: !3857)
!3864 = !DILocation(line: 0, scope: !3673, inlinedAt: !3865)
!3865 = distinct !DILocation(line: 113, column: 18, scope: !3857)
!3866 = !DILocation(line: 41, column: 13, scope: !3673, inlinedAt: !3865)
!3867 = !DILocation(line: 42, column: 8, scope: !3682, inlinedAt: !3865)
!3868 = !DILocation(line: 42, column: 15, scope: !3682, inlinedAt: !3865)
!3869 = !DILocation(line: 42, column: 10, scope: !3682, inlinedAt: !3865)
!3870 = !DILocation(line: 43, column: 5, scope: !3682, inlinedAt: !3865)
!3871 = !DILocalVariable(name: "__dest", arg: 1, scope: !3872, file: !2482, line: 31, type: !3875)
!3872 = distinct !DISubprogram(name: "memcpy", scope: !2482, file: !2482, line: 31, type: !3873, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !607, retainedNodes: !3877)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{!83, !3875, !3876, !85}
!3875 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !83)
!3876 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !169)
!3877 = !{!3871, !3878, !3879}
!3878 = !DILocalVariable(name: "__src", arg: 2, scope: !3872, file: !2482, line: 31, type: !3876)
!3879 = !DILocalVariable(name: "__len", arg: 3, scope: !3872, file: !2482, line: 31, type: !85)
!3880 = !DILocation(line: 0, scope: !3872, inlinedAt: !3881)
!3881 = distinct !DILocation(line: 113, column: 10, scope: !3857)
!3882 = !DILocation(line: 34, column: 10, scope: !3872, inlinedAt: !3881)
!3883 = !DILocation(line: 113, column: 3, scope: !3857)
!3884 = distinct !DISubprogram(name: "xstrdup", scope: !608, file: !608, line: 119, type: !109, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !607, retainedNodes: !3885)
!3885 = !{!3886}
!3886 = !DILocalVariable(name: "string", arg: 1, scope: !3884, file: !608, line: 119, type: !28)
!3887 = !DILocation(line: 0, scope: !3884)
!3888 = !DILocation(line: 121, column: 27, scope: !3884)
!3889 = !DILocation(line: 121, column: 43, scope: !3884)
!3890 = !DILocation(line: 0, scope: !3857, inlinedAt: !3891)
!3891 = distinct !DILocation(line: 121, column: 10, scope: !3884)
!3892 = !DILocation(line: 0, scope: !3673, inlinedAt: !3893)
!3893 = distinct !DILocation(line: 113, column: 18, scope: !3857, inlinedAt: !3891)
!3894 = !DILocation(line: 41, column: 13, scope: !3673, inlinedAt: !3893)
!3895 = !DILocation(line: 42, column: 8, scope: !3682, inlinedAt: !3893)
!3896 = !DILocation(line: 42, column: 15, scope: !3682, inlinedAt: !3893)
!3897 = !DILocation(line: 42, column: 10, scope: !3682, inlinedAt: !3893)
!3898 = !DILocation(line: 43, column: 5, scope: !3682, inlinedAt: !3893)
!3899 = !DILocation(line: 0, scope: !3872, inlinedAt: !3900)
!3900 = distinct !DILocation(line: 113, column: 10, scope: !3857, inlinedAt: !3891)
!3901 = !DILocation(line: 34, column: 10, scope: !3872, inlinedAt: !3900)
!3902 = !DILocation(line: 121, column: 3, scope: !3884)
!3903 = distinct !DISubprogram(name: "xalloc_die", scope: !624, file: !624, line: 32, type: !95, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !623, retainedNodes: !31)
!3904 = !DILocation(line: 34, column: 10, scope: !3903)
!3905 = !DILocation(line: 34, column: 33, scope: !3903)
!3906 = !DILocation(line: 34, column: 3, scope: !3903)
!3907 = !DILocation(line: 40, column: 3, scope: !3903)
!3908 = distinct !DISubprogram(name: "xstrndup", scope: !627, file: !627, line: 30, type: !3139, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !626, retainedNodes: !3909)
!3909 = !{!3910, !3911, !3912}
!3910 = !DILocalVariable(name: "string", arg: 1, scope: !3908, file: !627, line: 30, type: !28)
!3911 = !DILocalVariable(name: "n", arg: 2, scope: !3908, file: !627, line: 30, type: !85)
!3912 = !DILocalVariable(name: "s", scope: !3908, file: !627, line: 32, type: !26)
!3913 = !DILocation(line: 0, scope: !3908)
!3914 = !DILocation(line: 32, column: 13, scope: !3908)
!3915 = !DILocation(line: 33, column: 9, scope: !3916)
!3916 = distinct !DILexicalBlock(scope: !3908, file: !627, line: 33, column: 7)
!3917 = !DILocation(line: 33, column: 7, scope: !3908)
!3918 = !DILocation(line: 34, column: 5, scope: !3916)
!3919 = !DILocation(line: 35, column: 3, scope: !3908)
!3920 = distinct !DISubprogram(name: "rpl_calloc", scope: !630, file: !630, line: 42, type: !3661, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !629, retainedNodes: !3921)
!3921 = !{!3922, !3923, !3924, !3925}
!3922 = !DILocalVariable(name: "n", arg: 1, scope: !3920, file: !630, line: 42, type: !85)
!3923 = !DILocalVariable(name: "s", arg: 2, scope: !3920, file: !630, line: 42, type: !85)
!3924 = !DILocalVariable(name: "result", scope: !3920, file: !630, line: 44, type: !83)
!3925 = !DILocalVariable(name: "bytes", scope: !3926, file: !630, line: 56, type: !85)
!3926 = distinct !DILexicalBlock(scope: !3927, file: !630, line: 53, column: 5)
!3927 = distinct !DILexicalBlock(scope: !3920, file: !630, line: 47, column: 7)
!3928 = !DILocation(line: 0, scope: !3920)
!3929 = !DILocation(line: 47, column: 9, scope: !3927)
!3930 = !DILocation(line: 47, column: 19, scope: !3927)
!3931 = !DILocation(line: 47, column: 14, scope: !3927)
!3932 = !DILocation(line: 0, scope: !3926)
!3933 = !DILocation(line: 57, column: 21, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !3926, file: !630, line: 57, column: 11)
!3935 = !DILocation(line: 57, column: 11, scope: !3926)
!3936 = !DILocation(line: 59, column: 11, scope: !3937)
!3937 = distinct !DILexicalBlock(scope: !3934, file: !630, line: 58, column: 9)
!3938 = !DILocation(line: 59, column: 17, scope: !3937)
!3939 = !DILocation(line: 65, column: 12, scope: !3920)
!3940 = !DILocation(line: 72, column: 3, scope: !3920)
!3941 = !DILocation(line: 73, column: 1, scope: !3920)
!3942 = distinct !DISubprogram(name: "rpl_fclose", scope: !633, file: !633, line: 58, type: !3943, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !632, retainedNodes: !3947)
!3943 = !DISubroutineType(types: !3944)
!3944 = !{!30, !3945}
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3946, size: 64)
!3946 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !291, line: 7, baseType: !639)
!3947 = !{!3948, !3949, !3950, !3951}
!3948 = !DILocalVariable(name: "fp", arg: 1, scope: !3942, file: !633, line: 58, type: !3945)
!3949 = !DILocalVariable(name: "saved_errno", scope: !3942, file: !633, line: 60, type: !30)
!3950 = !DILocalVariable(name: "fd", scope: !3942, file: !633, line: 61, type: !30)
!3951 = !DILocalVariable(name: "result", scope: !3942, file: !633, line: 62, type: !30)
!3952 = !DILocation(line: 0, scope: !3942)
!3953 = !DILocation(line: 65, column: 8, scope: !3942)
!3954 = !DILocation(line: 66, column: 10, scope: !3955)
!3955 = distinct !DILexicalBlock(scope: !3942, file: !633, line: 66, column: 7)
!3956 = !DILocation(line: 66, column: 7, scope: !3942)
!3957 = !DILocation(line: 67, column: 12, scope: !3955)
!3958 = !DILocation(line: 67, column: 5, scope: !3955)
!3959 = !DILocation(line: 72, column: 9, scope: !3960)
!3960 = distinct !DILexicalBlock(scope: !3942, file: !633, line: 72, column: 7)
!3961 = !DILocation(line: 72, column: 23, scope: !3960)
!3962 = !DILocation(line: 72, column: 33, scope: !3960)
!3963 = !DILocation(line: 72, column: 26, scope: !3960)
!3964 = !DILocation(line: 72, column: 59, scope: !3960)
!3965 = !DILocation(line: 73, column: 7, scope: !3960)
!3966 = !DILocation(line: 73, column: 10, scope: !3960)
!3967 = !DILocation(line: 72, column: 7, scope: !3942)
!3968 = !DILocation(line: 100, column: 12, scope: !3942)
!3969 = !DILocation(line: 105, column: 7, scope: !3942)
!3970 = !DILocation(line: 74, column: 19, scope: !3960)
!3971 = !DILocation(line: 105, column: 19, scope: !3972)
!3972 = distinct !DILexicalBlock(scope: !3942, file: !633, line: 105, column: 7)
!3973 = !DILocation(line: 107, column: 13, scope: !3974)
!3974 = distinct !DILexicalBlock(scope: !3972, file: !633, line: 106, column: 5)
!3975 = !DILocation(line: 109, column: 5, scope: !3974)
!3976 = !DILocation(line: 112, column: 1, scope: !3942)
!3977 = distinct !DISubprogram(name: "rpl_fflush", scope: !677, file: !677, line: 129, type: !3978, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !676, retainedNodes: !3982)
!3978 = !DISubroutineType(types: !3979)
!3979 = !{!30, !3980}
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !291, line: 7, baseType: !683)
!3982 = !{!3983}
!3983 = !DILocalVariable(name: "stream", arg: 1, scope: !3977, file: !677, line: 129, type: !3980)
!3984 = !DILocation(line: 0, scope: !3977)
!3985 = !DILocation(line: 150, column: 14, scope: !3986)
!3986 = distinct !DILexicalBlock(scope: !3977, file: !677, line: 150, column: 7)
!3987 = !DILocation(line: 150, column: 22, scope: !3986)
!3988 = !DILocation(line: 150, column: 27, scope: !3986)
!3989 = !DILocation(line: 150, column: 7, scope: !3977)
!3990 = !DILocation(line: 151, column: 12, scope: !3986)
!3991 = !DILocation(line: 151, column: 5, scope: !3986)
!3992 = !DILocalVariable(name: "fp", arg: 1, scope: !3993, file: !677, line: 41, type: !3980)
!3993 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !677, file: !677, line: 41, type: !3994, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !676, retainedNodes: !3996)
!3994 = !DISubroutineType(types: !3995)
!3995 = !{null, !3980}
!3996 = !{!3992}
!3997 = !DILocation(line: 0, scope: !3993, inlinedAt: !3998)
!3998 = distinct !DILocation(line: 156, column: 3, scope: !3977)
!3999 = !DILocation(line: 43, column: 11, scope: !4000, inlinedAt: !3998)
!4000 = distinct !DILexicalBlock(scope: !3993, file: !677, line: 43, column: 7)
!4001 = !DILocation(line: 43, column: 18, scope: !4000, inlinedAt: !3998)
!4002 = !DILocation(line: 43, column: 7, scope: !3993, inlinedAt: !3998)
!4003 = !DILocation(line: 45, column: 5, scope: !4000, inlinedAt: !3998)
!4004 = !DILocation(line: 158, column: 10, scope: !3977)
!4005 = !DILocation(line: 158, column: 3, scope: !3977)
!4006 = !DILocation(line: 235, column: 1, scope: !3977)
!4007 = distinct !DISubprogram(name: "rpl_fseeko", scope: !718, file: !718, line: 28, type: !4008, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !4012)
!4008 = !DISubroutineType(types: !4009)
!4009 = !{!30, !4010, !1992, !30}
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !291, line: 7, baseType: !724)
!4012 = !{!4013, !4014, !4015, !4016}
!4013 = !DILocalVariable(name: "fp", arg: 1, scope: !4007, file: !718, line: 28, type: !4010)
!4014 = !DILocalVariable(name: "offset", arg: 2, scope: !4007, file: !718, line: 28, type: !1992)
!4015 = !DILocalVariable(name: "whence", arg: 3, scope: !4007, file: !718, line: 28, type: !30)
!4016 = !DILocalVariable(name: "pos", scope: !4017, file: !718, line: 117, type: !1992)
!4017 = distinct !DILexicalBlock(scope: !4018, file: !718, line: 113, column: 5)
!4018 = distinct !DILexicalBlock(scope: !4007, file: !718, line: 52, column: 7)
!4019 = !DILocation(line: 0, scope: !4007)
!4020 = !DILocation(line: 52, column: 11, scope: !4018)
!4021 = !DILocation(line: 52, column: 31, scope: !4018)
!4022 = !DILocation(line: 52, column: 24, scope: !4018)
!4023 = !DILocation(line: 53, column: 7, scope: !4018)
!4024 = !DILocation(line: 53, column: 14, scope: !4018)
!4025 = !DILocation(line: 53, column: 35, scope: !4018)
!4026 = !{!1418, !1256, i64 32}
!4027 = !DILocation(line: 53, column: 28, scope: !4018)
!4028 = !DILocation(line: 54, column: 7, scope: !4018)
!4029 = !DILocation(line: 54, column: 14, scope: !4018)
!4030 = !{!1418, !1256, i64 72}
!4031 = !DILocation(line: 54, column: 28, scope: !4018)
!4032 = !DILocation(line: 52, column: 7, scope: !4007)
!4033 = !DILocation(line: 117, column: 26, scope: !4017)
!4034 = !DILocation(line: 117, column: 19, scope: !4017)
!4035 = !DILocation(line: 0, scope: !4017)
!4036 = !DILocation(line: 118, column: 15, scope: !4037)
!4037 = distinct !DILexicalBlock(scope: !4017, file: !718, line: 118, column: 11)
!4038 = !DILocation(line: 118, column: 11, scope: !4017)
!4039 = !DILocation(line: 129, column: 11, scope: !4017)
!4040 = !DILocation(line: 129, column: 18, scope: !4017)
!4041 = !DILocation(line: 130, column: 11, scope: !4017)
!4042 = !DILocation(line: 130, column: 19, scope: !4017)
!4043 = !{!1418, !1400, i64 144}
!4044 = !DILocation(line: 161, column: 7, scope: !4017)
!4045 = !DILocation(line: 163, column: 10, scope: !4007)
!4046 = !DILocation(line: 163, column: 3, scope: !4007)
!4047 = !DILocation(line: 164, column: 1, scope: !4007)
!4048 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !759, file: !759, line: 86, type: !4049, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !758, retainedNodes: !4055)
!4049 = !DISubroutineType(types: !4050)
!4050 = !{!85, !4051, !28, !85, !4052}
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4053, size: 64)
!4053 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2226, line: 6, baseType: !4054)
!4054 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !454, line: 21, baseType: !765)
!4055 = !{!4056, !4057, !4058, !4059, !4060, !4061, !4062}
!4056 = !DILocalVariable(name: "pwc", arg: 1, scope: !4048, file: !759, line: 86, type: !4051)
!4057 = !DILocalVariable(name: "s", arg: 2, scope: !4048, file: !759, line: 86, type: !28)
!4058 = !DILocalVariable(name: "n", arg: 3, scope: !4048, file: !759, line: 86, type: !85)
!4059 = !DILocalVariable(name: "ps", arg: 4, scope: !4048, file: !759, line: 86, type: !4052)
!4060 = !DILocalVariable(name: "ret", scope: !4048, file: !759, line: 88, type: !85)
!4061 = !DILocalVariable(name: "wc", scope: !4048, file: !759, line: 89, type: !2230)
!4062 = !DILocalVariable(name: "uc", scope: !4063, file: !759, line: 156, type: !175)
!4063 = distinct !DILexicalBlock(scope: !4064, file: !759, line: 155, column: 5)
!4064 = distinct !DILexicalBlock(scope: !4048, file: !759, line: 154, column: 7)
!4065 = !DILocation(line: 0, scope: !4048)
!4066 = !DILocation(line: 89, column: 3, scope: !4048)
!4067 = !DILocation(line: 105, column: 9, scope: !4068)
!4068 = distinct !DILexicalBlock(scope: !4048, file: !759, line: 105, column: 7)
!4069 = !DILocation(line: 105, column: 7, scope: !4048)
!4070 = !DILocation(line: 145, column: 9, scope: !4048)
!4071 = !DILocation(line: 154, column: 19, scope: !4064)
!4072 = !DILocation(line: 154, column: 31, scope: !4064)
!4073 = !DILocation(line: 154, column: 26, scope: !4064)
!4074 = !DILocation(line: 154, column: 41, scope: !4064)
!4075 = !DILocation(line: 154, column: 7, scope: !4048)
!4076 = !DILocation(line: 156, column: 26, scope: !4063)
!4077 = !DILocation(line: 0, scope: !4063)
!4078 = !DILocation(line: 157, column: 14, scope: !4063)
!4079 = !DILocation(line: 157, column: 12, scope: !4063)
!4080 = !DILocation(line: 163, column: 1, scope: !4048)
!4081 = distinct !DISubprogram(name: "close_stream", scope: !778, file: !778, line: 56, type: !4082, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !4086)
!4082 = !DISubroutineType(types: !4083)
!4083 = !{!30, !4084}
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !291, line: 7, baseType: !784)
!4086 = !{!4087, !4088, !4090, !4091}
!4087 = !DILocalVariable(name: "stream", arg: 1, scope: !4081, file: !778, line: 56, type: !4084)
!4088 = !DILocalVariable(name: "some_pending", scope: !4081, file: !778, line: 58, type: !4089)
!4089 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!4090 = !DILocalVariable(name: "prev_fail", scope: !4081, file: !778, line: 59, type: !4089)
!4091 = !DILocalVariable(name: "fclose_fail", scope: !4081, file: !778, line: 60, type: !4089)
!4092 = !DILocation(line: 0, scope: !4081)
!4093 = !DILocation(line: 58, column: 30, scope: !4081)
!4094 = !DILocalVariable(name: "__stream", arg: 1, scope: !4095, file: !1410, line: 135, type: !4084)
!4095 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1410, file: !1410, line: 135, type: !4082, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !4096)
!4096 = !{!4094}
!4097 = !DILocation(line: 0, scope: !4095, inlinedAt: !4098)
!4098 = distinct !DILocation(line: 59, column: 27, scope: !4081)
!4099 = !DILocation(line: 137, column: 10, scope: !4095, inlinedAt: !4098)
!4100 = !DILocation(line: 59, column: 43, scope: !4081)
!4101 = !DILocation(line: 60, column: 29, scope: !4081)
!4102 = !DILocation(line: 60, column: 45, scope: !4081)
!4103 = !DILocation(line: 70, column: 17, scope: !4104)
!4104 = distinct !DILexicalBlock(scope: !4081, file: !778, line: 70, column: 7)
!4105 = !DILocation(line: 58, column: 50, scope: !4081)
!4106 = !DILocation(line: 70, column: 33, scope: !4104)
!4107 = !DILocation(line: 70, column: 53, scope: !4104)
!4108 = !DILocation(line: 70, column: 59, scope: !4104)
!4109 = !DILocation(line: 70, column: 7, scope: !4081)
!4110 = !DILocation(line: 72, column: 11, scope: !4111)
!4111 = distinct !DILexicalBlock(scope: !4104, file: !778, line: 71, column: 5)
!4112 = !DILocation(line: 73, column: 9, scope: !4113)
!4113 = distinct !DILexicalBlock(scope: !4111, file: !778, line: 72, column: 11)
!4114 = !DILocation(line: 73, column: 15, scope: !4113)
!4115 = !DILocation(line: 78, column: 1, scope: !4081)
!4116 = distinct !DISubprogram(name: "hard_locale", scope: !816, file: !816, line: 27, type: !775, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !4117)
!4117 = !{!4118, !4119}
!4118 = !DILocalVariable(name: "category", arg: 1, scope: !4116, file: !816, line: 27, type: !30)
!4119 = !DILocalVariable(name: "locale", scope: !4116, file: !816, line: 29, type: !4120)
!4120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 2056, elements: !4121)
!4121 = !{!4122}
!4122 = !DISubrange(count: 257)
!4123 = !DILocation(line: 0, scope: !4116)
!4124 = !DILocation(line: 29, column: 3, scope: !4116)
!4125 = !DILocation(line: 29, column: 8, scope: !4116)
!4126 = !DILocation(line: 31, column: 7, scope: !4127)
!4127 = distinct !DILexicalBlock(scope: !4116, file: !816, line: 31, column: 7)
!4128 = !DILocation(line: 31, column: 7, scope: !4116)
!4129 = !DILocation(line: 34, column: 12, scope: !4116)
!4130 = !DILocation(line: 34, column: 38, scope: !4116)
!4131 = !DILocation(line: 34, column: 41, scope: !4116)
!4132 = !DILocation(line: 34, column: 66, scope: !4116)
!4133 = !DILocation(line: 35, column: 1, scope: !4116)
!4134 = distinct !DISubprogram(name: "locale_charset", scope: !823, file: !823, line: 831, type: !477, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !4135)
!4135 = !{!4136}
!4136 = !DILocalVariable(name: "codeset", scope: !4134, file: !823, line: 833, type: !28)
!4137 = !DILocation(line: 847, column: 13, scope: !4134)
!4138 = !DILocation(line: 0, scope: !4134)
!4139 = !DILocation(line: 911, column: 15, scope: !4140)
!4140 = distinct !DILexicalBlock(scope: !4134, file: !823, line: 911, column: 7)
!4141 = !DILocation(line: 911, column: 7, scope: !4134)
!4142 = !DILocation(line: 1070, column: 13, scope: !4143)
!4143 = distinct !DILexicalBlock(scope: !4144, file: !823, line: 1070, column: 13)
!4144 = distinct !DILexicalBlock(scope: !4145, file: !823, line: 1060, column: 7)
!4145 = distinct !DILexicalBlock(scope: !4134, file: !823, line: 1019, column: 3)
!4146 = !DILocation(line: 1070, column: 24, scope: !4143)
!4147 = !DILocation(line: 1070, column: 13, scope: !4144)
!4148 = !DILocation(line: 1158, column: 3, scope: !4134)
!4149 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1216, file: !1216, line: 269, type: !4150, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1215, retainedNodes: !4152)
!4150 = !DISubroutineType(types: !4151)
!4151 = !{!30, !30, !26, !85}
!4152 = !{!4153, !4154, !4155}
!4153 = !DILocalVariable(name: "category", arg: 1, scope: !4149, file: !1216, line: 269, type: !30)
!4154 = !DILocalVariable(name: "buf", arg: 2, scope: !4149, file: !1216, line: 269, type: !26)
!4155 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4149, file: !1216, line: 269, type: !85)
!4156 = !DILocation(line: 0, scope: !4149)
!4157 = !DILocalVariable(name: "category", arg: 1, scope: !4158, file: !1216, line: 91, type: !30)
!4158 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1216, file: !1216, line: 91, type: !4150, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1215, retainedNodes: !4159)
!4159 = !{!4157, !4160, !4161, !4162, !4163}
!4160 = !DILocalVariable(name: "buf", arg: 2, scope: !4158, file: !1216, line: 91, type: !26)
!4161 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4158, file: !1216, line: 91, type: !85)
!4162 = !DILocalVariable(name: "result", scope: !4158, file: !1216, line: 140, type: !28)
!4163 = !DILocalVariable(name: "length", scope: !4164, file: !1216, line: 154, type: !85)
!4164 = distinct !DILexicalBlock(scope: !4165, file: !1216, line: 153, column: 5)
!4165 = distinct !DILexicalBlock(scope: !4158, file: !1216, line: 142, column: 7)
!4166 = !DILocation(line: 0, scope: !4158, inlinedAt: !4167)
!4167 = distinct !DILocation(line: 274, column: 10, scope: !4149)
!4168 = !DILocalVariable(name: "category", arg: 1, scope: !4169, file: !1216, line: 60, type: !30)
!4169 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !1216, file: !1216, line: 60, type: !4170, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1215, retainedNodes: !4172)
!4170 = !DISubroutineType(types: !4171)
!4171 = !{!28, !30}
!4172 = !{!4168, !4173}
!4173 = !DILocalVariable(name: "result", scope: !4169, file: !1216, line: 62, type: !28)
!4174 = !DILocation(line: 0, scope: !4169, inlinedAt: !4175)
!4175 = distinct !DILocation(line: 140, column: 24, scope: !4158, inlinedAt: !4167)
!4176 = !DILocation(line: 62, column: 24, scope: !4169, inlinedAt: !4175)
!4177 = !DILocation(line: 142, column: 14, scope: !4165, inlinedAt: !4167)
!4178 = !DILocation(line: 142, column: 7, scope: !4158, inlinedAt: !4167)
!4179 = !DILocation(line: 145, column: 19, scope: !4180, inlinedAt: !4167)
!4180 = distinct !DILexicalBlock(scope: !4181, file: !1216, line: 145, column: 11)
!4181 = distinct !DILexicalBlock(scope: !4165, file: !1216, line: 143, column: 5)
!4182 = !DILocation(line: 145, column: 11, scope: !4181, inlinedAt: !4167)
!4183 = !DILocation(line: 149, column: 16, scope: !4180, inlinedAt: !4167)
!4184 = !DILocation(line: 149, column: 9, scope: !4180, inlinedAt: !4167)
!4185 = !DILocation(line: 154, column: 23, scope: !4164, inlinedAt: !4167)
!4186 = !DILocation(line: 0, scope: !4164, inlinedAt: !4167)
!4187 = !DILocation(line: 155, column: 18, scope: !4188, inlinedAt: !4167)
!4188 = distinct !DILexicalBlock(scope: !4164, file: !1216, line: 155, column: 11)
!4189 = !DILocation(line: 155, column: 11, scope: !4164, inlinedAt: !4167)
!4190 = !DILocation(line: 157, column: 39, scope: !4191, inlinedAt: !4167)
!4191 = distinct !DILexicalBlock(scope: !4188, file: !1216, line: 156, column: 9)
!4192 = !DILocalVariable(name: "__dest", arg: 1, scope: !4193, file: !2482, line: 31, type: !3875)
!4193 = distinct !DISubprogram(name: "memcpy", scope: !2482, file: !2482, line: 31, type: !3873, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1215, retainedNodes: !4194)
!4194 = !{!4192, !4195, !4196}
!4195 = !DILocalVariable(name: "__src", arg: 2, scope: !4193, file: !2482, line: 31, type: !3876)
!4196 = !DILocalVariable(name: "__len", arg: 3, scope: !4193, file: !2482, line: 31, type: !85)
!4197 = !DILocation(line: 0, scope: !4193, inlinedAt: !4198)
!4198 = distinct !DILocation(line: 157, column: 11, scope: !4191, inlinedAt: !4167)
!4199 = !DILocation(line: 34, column: 10, scope: !4193, inlinedAt: !4198)
!4200 = !DILocation(line: 158, column: 11, scope: !4191, inlinedAt: !4167)
!4201 = !DILocation(line: 162, column: 23, scope: !4202, inlinedAt: !4167)
!4202 = distinct !DILexicalBlock(scope: !4203, file: !1216, line: 162, column: 15)
!4203 = distinct !DILexicalBlock(scope: !4188, file: !1216, line: 161, column: 9)
!4204 = !DILocation(line: 162, column: 15, scope: !4203, inlinedAt: !4167)
!4205 = !DILocation(line: 167, column: 44, scope: !4206, inlinedAt: !4167)
!4206 = distinct !DILexicalBlock(scope: !4202, file: !1216, line: 163, column: 13)
!4207 = !DILocation(line: 0, scope: !4193, inlinedAt: !4208)
!4208 = distinct !DILocation(line: 167, column: 15, scope: !4206, inlinedAt: !4167)
!4209 = !DILocation(line: 34, column: 10, scope: !4193, inlinedAt: !4208)
!4210 = !DILocation(line: 168, column: 15, scope: !4206, inlinedAt: !4167)
!4211 = !DILocation(line: 168, column: 32, scope: !4206, inlinedAt: !4167)
!4212 = !DILocation(line: 169, column: 13, scope: !4206, inlinedAt: !4167)
!4213 = !DILocation(line: 0, scope: !4165, inlinedAt: !4167)
!4214 = !DILocation(line: 274, column: 3, scope: !4149)
!4215 = distinct !DISubprogram(name: "setlocale_null", scope: !1216, file: !1216, line: 301, type: !4170, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1215, retainedNodes: !4216)
!4216 = !{!4217}
!4217 = !DILocalVariable(name: "category", arg: 1, scope: !4215, file: !1216, line: 301, type: !30)
!4218 = !DILocation(line: 0, scope: !4215)
!4219 = !DILocation(line: 0, scope: !4169, inlinedAt: !4220)
!4220 = distinct !DILocation(line: 304, column: 10, scope: !4215)
!4221 = !DILocation(line: 62, column: 24, scope: !4169, inlinedAt: !4220)
!4222 = !DILocation(line: 304, column: 3, scope: !4215)
