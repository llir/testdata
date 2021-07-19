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
@longopts = internal constant [5 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i32 1, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i32 0, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !30
@optarg = external local_unnamed_addr global i8*, align 8
@.str.11 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.33 = private unnamed_addr constant [23 x i8] c"input line is too long\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"tabs\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"initial\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@convert_entire_line = dso_local local_unnamed_addr global i8 0, align 1, !dbg !49
@exit_status = dso_local local_unnamed_addr global i32 0, align 4, !dbg !100
@max_column_width = dso_local local_unnamed_addr global i64 0, align 8, !dbg !164
@first_free_tab = internal unnamed_addr global i64 0, align 8, !dbg !166
@tab_list = internal unnamed_addr global i64* null, align 8, !dbg !168
@n_tabs_allocated = internal unnamed_addr global i64 0, align 8, !dbg !170
@extend_size = internal unnamed_addr global i64 0, align 8, !dbg !172
@.str.13.7 = private unnamed_addr constant [47 x i8] c"'/' specifier only allowed with the last value\00", align 1
@increment_size = internal unnamed_addr global i64 0, align 8, !dbg !174
@.str.14.8 = private unnamed_addr constant [47 x i8] c"'+' specifier only allowed with the last value\00", align 1
@.str.1.9 = private unnamed_addr constant [41 x i8] c"'/' specifier not at start of number: %s\00", align 1
@.str.2.10 = private unnamed_addr constant [41 x i8] c"'+' specifier not at start of number: %s\00", align 1
@.str.3.11 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.4.12 = private unnamed_addr constant [25 x i8] c"tab stop is too large %s\00", align 1
@.str.5.13 = private unnamed_addr constant [43 x i8] c"tab size contains invalid character(s): %s\00", align 1
@.str.15.16 = private unnamed_addr constant [21 x i8] c"tab size cannot be 0\00", align 1
@.str.16.17 = private unnamed_addr constant [28 x i8] c"tab sizes must be ascending\00", align 1
@.str.17.18 = private unnamed_addr constant [45 x i8] c"'/' specifier is mutually exclusive with '+'\00", align 1
@tab_size = internal unnamed_addr global i64 0, align 8, !dbg !176
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !189
@stdin_argv = internal global [2 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9.23, i32 0, i32 0), i8* null], align 16, !dbg !181
@file_list = internal unnamed_addr global i8** null, align 8, !dbg !186
@.str.9.23 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@next_file.prev_file = internal unnamed_addr global i8* null, align 8, !dbg !102
@.str.6.26 = private unnamed_addr constant [10 x i8] c"prev_file\00", align 1
@.str.7.27 = private unnamed_addr constant [20 x i8] c"src/expand-common.c\00", align 1
@__PRETTY_FUNCTION__.next_file = private unnamed_addr constant [24 x i8] c"FILE *next_file(FILE *)\00", align 1
@.str.8.28 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.10.29 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.11.34 = private unnamed_addr constant [62 x i8] c"  -t, --tabs=LIST  use comma separated list of tab positions\0A\00", align 1
@.str.12.35 = private unnamed_addr constant [365 x i8] c"                     The last specified position can be prefixed with '/'\0A                     to specify a tab size to use after the last\0A                     explicitly specified tab stop.  Also a prefix of '+'\0A                     can be used to align remaining tab stops relative to\0A                     the last specified tab stop instead of the first column\0A\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), align 8, !dbg !190
@.str.38 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !196
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !201
@.str.41 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.42 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.43 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !203
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !209
@.str.52 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.53 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.54 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.56, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.57, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.58, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.59, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.60, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.61, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.62, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.63, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.64, i32 0, i32 0), i8* null], align 16, !dbg !215
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !227
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !233
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !245
@.str.11.65 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.66 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.67 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.68 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.69 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.70 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.71 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !252
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !259
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !247
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !261
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !267
@.str.1.113 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.114 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.131 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.134 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.135 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !712 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !716, metadata !DIExpression()), !dbg !717
  %3 = icmp eq i32 %0, 0, !dbg !718
  br i1 %3, label %9, label %4, !dbg !720

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !721, !tbaa !723
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #26, !dbg !721
  %7 = load i8*, i8** @program_name, align 8, !dbg !721, !tbaa !723
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #26, !dbg !721
  br label %67, !dbg !721

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #26, !dbg !727
  %11 = load i8*, i8** @program_name, align 8, !dbg !727, !tbaa !723
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #26, !dbg !727
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 5) #26, !dbg !729
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !729, !tbaa !723
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !729
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.12, i64 0, i64 0), i32 5) #26, !dbg !730
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !730, !tbaa !723
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #26, !dbg !730
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.13, i64 0, i64 0), i32 5) #26, !dbg !736
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !736, !tbaa !723
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20) #26, !dbg !736
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.3, i64 0, i64 0), i32 5) #26, !dbg !739
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !739, !tbaa !723
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !739
  tail call void @emit_tab_list_info() #26, !dbg !740
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #26, !dbg !741
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !741, !tbaa !723
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !741
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #26, !dbg !742
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !742, !tbaa !723
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !742
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), metadata !743, metadata !DIExpression()) #26, !dbg !761
  %31 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !763
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %31) #26, !dbg !763
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !748, metadata !DIExpression()) #26, !dbg !764
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %31, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #26, !dbg !764
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), metadata !757, metadata !DIExpression()) #26, !dbg !761
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !758, metadata !DIExpression()) #26, !dbg !761
  %32 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !765
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !758, metadata !DIExpression()) #26, !dbg !761
  br label %33, !dbg !766

33:                                               ; preds = %38, %9
  %34 = phi i8* [ %41, %38 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), %9 ]
  %35 = phi %struct.infomap* [ %39, %38 ], [ %32, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !758, metadata !DIExpression()) #26, !dbg !761
  %36 = tail call i32 @strcmp(i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* nonnull %34) #27, !dbg !767
  %37 = icmp eq i32 %36, 0, !dbg !767
  br i1 %37, label %43, label %38, !dbg !766

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 1, !dbg !768
  call void @llvm.dbg.value(metadata %struct.infomap* %39, metadata !758, metadata !DIExpression()) #26, !dbg !761
  %40 = getelementptr inbounds %struct.infomap, %struct.infomap* %39, i64 0, i32 0, !dbg !769
  %41 = load i8*, i8** %40, align 8, !dbg !769, !tbaa !770
  %42 = icmp eq i8* %41, null, !dbg !772
  br i1 %42, label %43, label %33, !dbg !773, !llvm.loop !774

43:                                               ; preds = %38, %33
  %44 = phi %struct.infomap* [ %35, %33 ], [ %39, %38 ]
  %45 = getelementptr inbounds %struct.infomap, %struct.infomap* %44, i64 0, i32 1, !dbg !776
  %46 = load i8*, i8** %45, align 8, !dbg !776, !tbaa !778
  %47 = icmp eq i8* %46, null, !dbg !779
  %48 = select i1 %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %46, !dbg !780
  call void @llvm.dbg.value(metadata i8* %48, metadata !757, metadata !DIExpression()) #26, !dbg !761
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 5) #26, !dbg !781
  %50 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0)) #26, !dbg !781
  %51 = tail call i8* @setlocale(i32 5, i8* null) #26, !dbg !782
  call void @llvm.dbg.value(metadata i8* %51, metadata !760, metadata !DIExpression()) #26, !dbg !761
  %52 = icmp eq i8* %51, null, !dbg !783
  br i1 %52, label %60, label %53, !dbg !785

53:                                               ; preds = %43
  %54 = tail call i32 @strncmp(i8* nonnull %51, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i64 3) #27, !dbg !786
  %55 = icmp eq i32 %54, 0, !dbg !786
  br i1 %55, label %60, label %56, !dbg !787

56:                                               ; preds = %53
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.25, i64 0, i64 0), i32 5) #26, !dbg !788
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !788, !tbaa !723
  %59 = tail call i32 @fputs_unlocked(i8* %57, %struct._IO_FILE* %58) #26, !dbg !788
  br label %60, !dbg !790

60:                                               ; preds = %43, %53, %56
  %61 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0), i32 5) #26, !dbg !791
  %62 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %61, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)) #26, !dbg !791
  %63 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i64 0, i64 0), i32 5) #26, !dbg !792
  %64 = icmp eq i8* %48, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), !dbg !792
  %65 = select i1 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), !dbg !792
  %66 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %63, i8* %48, i8* %65) #26, !dbg !792
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %31) #26, !dbg !793
  br label %67

67:                                               ; preds = %60, %4
  tail call void @exit(i32 %0) #28, !dbg !794
  unreachable, !dbg !794
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !795 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !799 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !835 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !839 {
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  %5 = alloca [2 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !843, metadata !DIExpression()), !dbg !852
  call void @llvm.dbg.value(metadata i8** %1, metadata !844, metadata !DIExpression()), !dbg !852
  %6 = load i8*, i8** %1, align 8, !dbg !853, !tbaa !723
  tail call void @set_program_name(i8* %6) #26, !dbg !854
  %7 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #26, !dbg !855
  %8 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #26, !dbg !856
  %9 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #26, !dbg !857
  %10 = tail call i32 @atexit(void ()* nonnull @close_stdout) #26, !dbg !858
  store i8 1, i8* @convert_entire_line, align 1, !dbg !859, !tbaa !860
  %11 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %12 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 1
  br label %13, !dbg !862

13:                                               ; preds = %23, %2
  %14 = call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @shortopts, i64 0, i64 0), %struct.option* getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #26, !dbg !863
  call void @llvm.dbg.value(metadata i32 %14, metadata !845, metadata !DIExpression()), !dbg !852
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
  ], !dbg !862

15:                                               ; preds = %13
  store i8 0, i8* @convert_entire_line, align 1, !dbg !864, !tbaa !860
  br label %23, !dbg !865

16:                                               ; preds = %13
  %17 = load i8*, i8** @optarg, align 8, !dbg !866, !tbaa !723
  call void @parse_tab_stops(i8* %17) #26, !dbg !867
  br label %23, !dbg !868

18:                                               ; preds = %13, %13, %13, %13, %13, %13, %13, %13, %13, %13
  %19 = load i8*, i8** @optarg, align 8, !dbg !869, !tbaa !723
  %20 = icmp eq i8* %19, null, !dbg !869
  br i1 %20, label %24, label %21, !dbg !870

21:                                               ; preds = %18
  %22 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !871
  call void @parse_tab_stops(i8* nonnull %22) #26, !dbg !872
  br label %23, !dbg !872

23:                                               ; preds = %21, %24, %16, %15
  br label %13, !dbg !863, !llvm.loop !873

24:                                               ; preds = %18
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %11) #26, !dbg !875
  call void @llvm.dbg.declare(metadata [2 x i8]* %5, metadata !846, metadata !DIExpression()), !dbg !876
  %25 = trunc i32 %14 to i8, !dbg !877
  store i8 %25, i8* %11, align 1, !dbg !878, !tbaa !879
  store i8 0, i8* %12, align 1, !dbg !880, !tbaa !879
  call void @parse_tab_stops(i8* nonnull %11) #26, !dbg !881
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %11) #26, !dbg !882
  br label %23

26:                                               ; preds = %13
  call void @usage(i32 0) #29, !dbg !883
  unreachable, !dbg !883

27:                                               ; preds = %13
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !884, !tbaa !723
  %29 = load i8*, i8** @Version, align 8, !dbg !884, !tbaa !723
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8* null) #26, !dbg !884
  call void @exit(i32 0) #28, !dbg !884
  unreachable, !dbg !884

30:                                               ; preds = %13
  call void @usage(i32 1) #29, !dbg !885
  unreachable, !dbg !885

31:                                               ; preds = %13
  call void @finalize_tab_stops() #26, !dbg !886
  %32 = load i32, i32* @optind, align 4, !dbg !887, !tbaa !888
  %33 = icmp slt i32 %32, %0, !dbg !890
  %34 = sext i32 %32 to i64, !dbg !891
  %35 = getelementptr inbounds i8*, i8** %1, i64 %34, !dbg !891
  %36 = select i1 %33, i8** %35, i8** null, !dbg !891
  call void @set_file_list(i8** %36) #26, !dbg !892
  %37 = call %struct._IO_FILE* @next_file(%struct._IO_FILE* null) #26, !dbg !893
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %37, metadata !896, metadata !DIExpression()) #26, !dbg !912
  %38 = icmp eq %struct._IO_FILE* %37, null, !dbg !913
  br i1 %38, label %163, label %39, !dbg !915

39:                                               ; preds = %31
  %40 = bitcast i64* %3 to i8*
  br label %41, !dbg !916

41:                                               ; preds = %161, %39
  %42 = phi %struct._IO_FILE* [ %67, %161 ], [ %37, %39 ], !dbg !912
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %42, metadata !896, metadata !DIExpression()) #26, !dbg !912
  call void @llvm.dbg.value(metadata i8 1, metadata !901, metadata !DIExpression()) #26, !dbg !917
  call void @llvm.dbg.value(metadata i64 0, metadata !902, metadata !DIExpression()) #26, !dbg !917
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %40) #26, !dbg !918
  call void @llvm.dbg.value(metadata i64 0, metadata !903, metadata !DIExpression()) #26, !dbg !917
  store i64 0, i64* %3, align 8, !dbg !919, !tbaa !920
  br label %43, !dbg !916

43:                                               ; preds = %159, %41
  %44 = phi %struct._IO_FILE* [ %42, %41 ], [ %67, %159 ], !dbg !912
  %45 = phi i8 [ 1, %41 ], [ %138, %159 ], !dbg !917
  %46 = phi i64 [ 0, %41 ], [ %139, %159 ], !dbg !917
  call void @llvm.dbg.value(metadata i64 %46, metadata !902, metadata !DIExpression()) #26, !dbg !917
  call void @llvm.dbg.value(metadata i8 %45, metadata !901, metadata !DIExpression()) #26, !dbg !917
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %44, metadata !896, metadata !DIExpression()) #26, !dbg !912
  br label %47, !dbg !922

47:                                               ; preds = %62, %43
  %48 = phi %struct._IO_FILE* [ %44, %43 ], [ %63, %62 ], !dbg !912
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %48, metadata !896, metadata !DIExpression()) #26, !dbg !912
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %48, metadata !923, metadata !DIExpression()) #26, !dbg !929
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %48, i64 0, i32 1, !dbg !931
  %50 = load i8*, i8** %49, align 8, !dbg !931, !tbaa !932
  %51 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %48, i64 0, i32 2, !dbg !931
  %52 = load i8*, i8** %51, align 8, !dbg !931, !tbaa !935
  %53 = icmp ult i8* %50, %52, !dbg !931
  br i1 %53, label %54, label %59, !dbg !931, !prof !936

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %48, i64 0, i32 1, !dbg !931
  %56 = getelementptr inbounds i8, i8* %50, i64 1, !dbg !931
  store i8* %56, i8** %55, align 8, !dbg !931, !tbaa !932
  %57 = load i8, i8* %50, align 1, !dbg !931, !tbaa !879
  %58 = zext i8 %57 to i32, !dbg !931
  call void @llvm.dbg.value(metadata i32 undef, metadata !899, metadata !DIExpression()) #26, !dbg !917
  br label %65, !dbg !937

59:                                               ; preds = %47
  %60 = call i32 @__uflow(%struct._IO_FILE* nonnull %48) #26, !dbg !931
  call void @llvm.dbg.value(metadata i32 %60, metadata !899, metadata !DIExpression()) #26, !dbg !917
  %61 = icmp slt i32 %60, 0, !dbg !938
  br i1 %61, label %62, label %65, !dbg !937

62:                                               ; preds = %59
  %63 = call %struct._IO_FILE* @next_file(%struct._IO_FILE* nonnull %48) #26, !dbg !939
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %63, metadata !896, metadata !DIExpression()) #26, !dbg !912
  %64 = icmp eq %struct._IO_FILE* %63, null, !dbg !937
  br i1 %64, label %65, label %47, !dbg !922, !llvm.loop !940

65:                                               ; preds = %62, %59, %54
  %66 = phi i32 [ %58, %54 ], [ %60, %59 ], [ %60, %62 ]
  %67 = phi %struct._IO_FILE* [ %48, %54 ], [ null, %62 ], [ %48, %59 ], !dbg !912
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %67, metadata !896, metadata !DIExpression()) #26, !dbg !912
  %68 = and i8 %45, 1, !dbg !942
  %69 = icmp eq i8 %68, 0, !dbg !942
  br i1 %69, label %136, label %70, !dbg !943

70:                                               ; preds = %65
  switch i32 %66, label %115 [
    i32 9, label %71
    i32 8, label %107
  ], !dbg !944

71:                                               ; preds = %70
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %4) #26, !dbg !945
  call void @llvm.dbg.value(metadata i64* %3, metadata !903, metadata !DIExpression(DW_OP_deref)) #26, !dbg !917
  call void @llvm.dbg.value(metadata i8* %4, metadata !910, metadata !DIExpression(DW_OP_deref)) #26, !dbg !946
  %72 = call i64 @get_next_tab_column(i64 %46, i64* nonnull %3, i8* nonnull %4) #26, !dbg !947
  call void @llvm.dbg.value(metadata i64 %72, metadata !904, metadata !DIExpression()) #26, !dbg !946
  %73 = load i8, i8* %4, align 1, !dbg !948, !tbaa !860, !range !950
  call void @llvm.dbg.value(metadata i8 %73, metadata !910, metadata !DIExpression()) #26, !dbg !946
  %74 = icmp eq i8 %73, 0, !dbg !948
  %75 = add i64 %46, 1
  %76 = select i1 %74, i64 %72, i64 %75, !dbg !951
  call void @llvm.dbg.value(metadata i64 %76, metadata !904, metadata !DIExpression()) #26, !dbg !946
  %77 = icmp ult i64 %76, %46, !dbg !952
  br i1 %77, label %82, label %78, !dbg !954

78:                                               ; preds = %71
  %79 = icmp ugt i64 %76, %75, !dbg !955
  %80 = select i1 %79, i64 %76, i64 %75, !dbg !955
  %81 = add i64 %80, -1, !dbg !955
  br label %84, !dbg !955

82:                                               ; preds = %71
  %83 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33, i64 0, i64 0), i32 5) #26, !dbg !956
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %83) #26, !dbg !956
  unreachable, !dbg !956

84:                                               ; preds = %99, %78
  %85 = phi i64 [ %86, %99 ], [ %46, %78 ], !dbg !917
  call void @llvm.dbg.value(metadata i64 %85, metadata !902, metadata !DIExpression()) #26, !dbg !917
  %86 = add i64 %85, 1, !dbg !957
  call void @llvm.dbg.value(metadata i64 %86, metadata !902, metadata !DIExpression()) #26, !dbg !917
  %87 = icmp eq i64 %85, %81, !dbg !958
  br i1 %87, label %106, label %88, !dbg !955

88:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i32 32, metadata !959, metadata !DIExpression()) #26, !dbg !964
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !967, !tbaa !723
  %90 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %89, i64 0, i32 5, !dbg !967
  %91 = load i8*, i8** %90, align 8, !dbg !967, !tbaa !968
  %92 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %89, i64 0, i32 6, !dbg !967
  %93 = load i8*, i8** %92, align 8, !dbg !967, !tbaa !969
  %94 = icmp ult i8* %91, %93, !dbg !967
  br i1 %94, label %97, label %95, !dbg !967, !prof !936

95:                                               ; preds = %88
  %96 = call i32 @__overflow(%struct._IO_FILE* nonnull %89, i32 32) #26, !dbg !967
  br label %99, !dbg !967

97:                                               ; preds = %88
  %98 = getelementptr inbounds i8, i8* %91, i64 1, !dbg !967
  store i8* %98, i8** %90, align 8, !dbg !967, !tbaa !968
  store i8 32, i8* %91, align 1, !dbg !967, !tbaa !879
  br label %99, !dbg !967

99:                                               ; preds = %97, %95
  %100 = phi i32 [ %96, %95 ], [ 32, %97 ], !dbg !967
  %101 = icmp slt i32 %100, 0, !dbg !970
  br i1 %101, label %102, label %84, !dbg !971, !llvm.loop !972

102:                                              ; preds = %99
  %103 = tail call i32* @__errno_location() #30, !dbg !974
  %104 = load i32, i32* %103, align 4, !dbg !974, !tbaa !888
  %105 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), i32 5) #26, !dbg !974
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %104, i8* %105) #26, !dbg !974
  unreachable, !dbg !974

106:                                              ; preds = %84
  call void @llvm.dbg.value(metadata i32 32, metadata !899, metadata !DIExpression()) #26, !dbg !917
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %4) #26, !dbg !975
  br label %120, !dbg !976

107:                                              ; preds = %70
  %108 = icmp ne i64 %46, 0, !dbg !977
  %109 = sext i1 %108 to i64, !dbg !980
  %110 = add i64 %46, %109, !dbg !981
  call void @llvm.dbg.value(metadata i64 %110, metadata !902, metadata !DIExpression()) #26, !dbg !917
  %111 = load i64, i64* %3, align 8, !dbg !982, !tbaa !920
  call void @llvm.dbg.value(metadata i64 %111, metadata !903, metadata !DIExpression()) #26, !dbg !917
  %112 = icmp ne i64 %111, 0, !dbg !983
  %113 = sext i1 %112 to i64, !dbg !984
  %114 = add i64 %111, %113, !dbg !985
  call void @llvm.dbg.value(metadata i64 %114, metadata !903, metadata !DIExpression()) #26, !dbg !917
  store i64 %114, i64* %3, align 8, !dbg !985, !tbaa !920
  br label %120, !dbg !986

115:                                              ; preds = %70
  %116 = add i64 %46, 1, !dbg !987
  call void @llvm.dbg.value(metadata i64 %116, metadata !902, metadata !DIExpression()) #26, !dbg !917
  %117 = icmp eq i64 %116, 0, !dbg !989
  br i1 %117, label %118, label %120, !dbg !991

118:                                              ; preds = %115
  %119 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33, i64 0, i64 0), i32 5) #26, !dbg !992
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %119) #26, !dbg !992
  unreachable, !dbg !992

120:                                              ; preds = %115, %107, %106
  %121 = phi i32 [ 32, %106 ], [ 8, %107 ], [ %66, %115 ], !dbg !993
  %122 = phi i64 [ %80, %106 ], [ %110, %107 ], [ %116, %115 ], !dbg !994
  call void @llvm.dbg.value(metadata i64 %122, metadata !902, metadata !DIExpression()) #26, !dbg !917
  call void @llvm.dbg.value(metadata i32 %121, metadata !899, metadata !DIExpression()) #26, !dbg !917
  %123 = load i8, i8* @convert_entire_line, align 1, !dbg !995, !tbaa !860, !range !950
  %124 = icmp eq i8 %123, 0, !dbg !995
  br i1 %124, label %125, label %133, !dbg !996

125:                                              ; preds = %120
  %126 = tail call i16** @__ctype_b_loc() #30, !dbg !997
  %127 = load i16*, i16** %126, align 8, !dbg !997, !tbaa !723
  %128 = sext i32 %121 to i64, !dbg !997
  %129 = getelementptr inbounds i16, i16* %127, i64 %128, !dbg !997
  %130 = load i16, i16* %129, align 2, !dbg !997, !tbaa !998
  %131 = and i16 %130, 1, !dbg !997
  %132 = icmp ne i16 %131, 0, !dbg !999
  br label %133, !dbg !996

133:                                              ; preds = %125, %120
  %134 = phi i1 [ true, %120 ], [ %132, %125 ]
  %135 = zext i1 %134 to i8, !dbg !1000
  call void @llvm.dbg.value(metadata i8 %135, metadata !901, metadata !DIExpression()) #26, !dbg !917
  br label %136, !dbg !1001

136:                                              ; preds = %133, %65
  %137 = phi i32 [ %121, %133 ], [ %66, %65 ], !dbg !993
  %138 = phi i8 [ %135, %133 ], [ %45, %65 ], !dbg !917
  %139 = phi i64 [ %122, %133 ], [ %46, %65 ], !dbg !917
  call void @llvm.dbg.value(metadata i64 %139, metadata !902, metadata !DIExpression()) #26, !dbg !917
  call void @llvm.dbg.value(metadata i8 %138, metadata !901, metadata !DIExpression()) #26, !dbg !917
  call void @llvm.dbg.value(metadata i32 %137, metadata !899, metadata !DIExpression()) #26, !dbg !917
  %140 = icmp slt i32 %137, 0, !dbg !1002
  br i1 %140, label %162, label %141, !dbg !1004

141:                                              ; preds = %136
  call void @llvm.dbg.value(metadata i32 %137, metadata !959, metadata !DIExpression()) #26, !dbg !1005
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1008, !tbaa !723
  %143 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %142, i64 0, i32 5, !dbg !1008
  %144 = load i8*, i8** %143, align 8, !dbg !1008, !tbaa !968
  %145 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %142, i64 0, i32 6, !dbg !1008
  %146 = load i8*, i8** %145, align 8, !dbg !1008, !tbaa !969
  %147 = icmp ult i8* %144, %146, !dbg !1008
  br i1 %147, label %148, label %151, !dbg !1008, !prof !936

148:                                              ; preds = %141
  %149 = trunc i32 %137 to i8, !dbg !1008
  %150 = getelementptr inbounds i8, i8* %144, i64 1, !dbg !1008
  store i8* %150, i8** %143, align 8, !dbg !1008, !tbaa !968
  store i8 %149, i8* %144, align 1, !dbg !1008, !tbaa !879
  br label %159, !dbg !1009

151:                                              ; preds = %141
  %152 = and i32 %137, 255, !dbg !1008
  %153 = call i32 @__overflow(%struct._IO_FILE* nonnull %142, i32 %152) #26, !dbg !1008
  %154 = icmp slt i32 %153, 0, !dbg !1010
  br i1 %154, label %155, label %159, !dbg !1009

155:                                              ; preds = %151
  %156 = tail call i32* @__errno_location() #30, !dbg !1011
  %157 = load i32, i32* %156, align 4, !dbg !1011, !tbaa !888
  %158 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), i32 5) #26, !dbg !1011
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %157, i8* %158) #26, !dbg !1011
  unreachable, !dbg !1011

159:                                              ; preds = %151, %148
  %160 = icmp eq i32 %137, 10, !dbg !1012
  br i1 %160, label %161, label %43, !dbg !1013, !llvm.loop !1014

161:                                              ; preds = %159
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %40) #26, !dbg !1016
  br label %41

162:                                              ; preds = %136
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %40) #26, !dbg !1016
  br label %163

163:                                              ; preds = %31, %162
  call void @cleanup_file_list_stdin() #26, !dbg !1017
  %164 = load i32, i32* @exit_status, align 4, !dbg !1018, !tbaa !888
  ret i32 %164, !dbg !1019
}

; Function Attrs: nounwind
declare !dbg !1020 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1023 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1026 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1031 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

declare !dbg !1037 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @add_tab_stop(i64 %0) local_unnamed_addr #8 !dbg !1041 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1045, metadata !DIExpression()), !dbg !1048
  %2 = load i64, i64* @first_free_tab, align 8, !dbg !1049, !tbaa !920
  %3 = icmp eq i64 %2, 0, !dbg !1049
  br i1 %3, label %9, label %4, !dbg !1049

4:                                                ; preds = %1
  %5 = load i64*, i64** @tab_list, align 8, !dbg !1050, !tbaa !723
  %6 = add i64 %2, -1, !dbg !1051
  %7 = getelementptr inbounds i64, i64* %5, i64 %6, !dbg !1050
  %8 = load i64, i64* %7, align 8, !dbg !1050, !tbaa !920
  br label %9, !dbg !1049

9:                                                ; preds = %1, %4
  %10 = phi i64 [ %8, %4 ], [ 0, %1 ], !dbg !1049
  call void @llvm.dbg.value(metadata i64 %10, metadata !1046, metadata !DIExpression()), !dbg !1048
  %11 = tail call i64 @llvm.usub.sat.i64(i64 %0, i64 %10), !dbg !1052
  call void @llvm.dbg.value(metadata i64 %11, metadata !1047, metadata !DIExpression()), !dbg !1048
  %12 = load i64, i64* @n_tabs_allocated, align 8, !dbg !1053, !tbaa !920
  %13 = icmp eq i64 %2, %12, !dbg !1055
  br i1 %13, label %16, label %14, !dbg !1056

14:                                               ; preds = %9
  %15 = load i64*, i64** @tab_list, align 8, !dbg !1057, !tbaa !723
  br label %36, !dbg !1056

16:                                               ; preds = %9
  %17 = load i8*, i8** bitcast (i64** @tab_list to i8**), align 8, !dbg !1058, !tbaa !723
  call void @llvm.dbg.value(metadata i8* %17, metadata !87, metadata !DIExpression()) #26, !dbg !1059
  call void @llvm.dbg.value(metadata i64* @n_tabs_allocated, metadata !88, metadata !DIExpression()) #26, !dbg !1059
  call void @llvm.dbg.value(metadata i64 8, metadata !89, metadata !DIExpression()) #26, !dbg !1059
  call void @llvm.dbg.value(metadata i64 %12, metadata !90, metadata !DIExpression()) #26, !dbg !1059
  %18 = icmp eq i8* %17, null, !dbg !1061
  br i1 %18, label %19, label %23, !dbg !1063

19:                                               ; preds = %16
  br i1 %3, label %30, label %20, !dbg !1064

20:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 %12, metadata !90, metadata !DIExpression()) #26, !dbg !1059
  %21 = icmp ugt i64 %2, 1152921504606846975, !dbg !1066
  br i1 %21, label %22, label %30, !dbg !1068

22:                                               ; preds = %20
  tail call void @xalloc_die() #28, !dbg !1069
  unreachable, !dbg !1069

23:                                               ; preds = %16
  %24 = icmp ult i64 %2, 768614336404564650, !dbg !1070
  br i1 %24, label %26, label %25, !dbg !1073

25:                                               ; preds = %23
  tail call void @xalloc_die() #28, !dbg !1074
  unreachable, !dbg !1074

26:                                               ; preds = %23
  %27 = lshr i64 %2, 1, !dbg !1075
  %28 = add nuw nsw i64 %2, 1, !dbg !1076
  %29 = add nuw nsw i64 %28, %27, !dbg !1077
  call void @llvm.dbg.value(metadata i64 %29, metadata !90, metadata !DIExpression()) #26, !dbg !1059
  br label %30

30:                                               ; preds = %19, %20, %26
  %31 = phi i64 [ %29, %26 ], [ %2, %20 ], [ 16, %19 ], !dbg !1059
  call void @llvm.dbg.value(metadata i64 %31, metadata !90, metadata !DIExpression()) #26, !dbg !1059
  store i64 %31, i64* @n_tabs_allocated, align 8, !dbg !1078, !tbaa !920
  %32 = shl nuw nsw i64 %31, 3, !dbg !1079
  %33 = tail call i8* @xrealloc(i8* %17, i64 %32) #26, !dbg !1080
  store i8* %33, i8** bitcast (i64** @tab_list to i8**), align 8, !dbg !1081, !tbaa !723
  %34 = bitcast i8* %33 to i64*, !dbg !1082
  %35 = load i64, i64* @first_free_tab, align 8, !dbg !1083, !tbaa !920
  br label %36, !dbg !1082

36:                                               ; preds = %14, %30
  %37 = phi i64 [ %2, %14 ], [ %35, %30 ], !dbg !1083
  %38 = phi i64* [ %15, %14 ], [ %34, %30 ], !dbg !1057
  %39 = add i64 %37, 1, !dbg !1083
  store i64 %39, i64* @first_free_tab, align 8, !dbg !1083, !tbaa !920
  %40 = getelementptr inbounds i64, i64* %38, i64 %37, !dbg !1057
  store i64 %0, i64* %40, align 8, !dbg !1084, !tbaa !920
  %41 = load i64, i64* @max_column_width, align 8, !dbg !1085, !tbaa !920
  %42 = icmp ult i64 %41, %11, !dbg !1087
  br i1 %42, label %43, label %44, !dbg !1088

43:                                               ; preds = %36
  store i64 %11, i64* @max_column_width, align 8, !dbg !1089, !tbaa !920
  br label %44, !dbg !1091

44:                                               ; preds = %43, %36
  ret void, !dbg !1092
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_tab_stops(i8* %0) local_unnamed_addr #8 !dbg !1093 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1095, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i8 0, metadata !1096, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i64 0, metadata !1097, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i8 0, metadata !1098, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i8 0, metadata !1099, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i8* null, metadata !1100, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i8 1, metadata !1101, metadata !DIExpression()), !dbg !1114
  br label %2, !dbg !1115

2:                                                ; preds = %81, %1
  %3 = phi i64 [ 0, %1 ], [ %82, %81 ], !dbg !1116
  %4 = phi i8 [ 0, %1 ], [ %83, %81 ], !dbg !1117
  %5 = phi i8 [ 0, %1 ], [ %84, %81 ], !dbg !1118
  %6 = phi i8* [ null, %1 ], [ %85, %81 ], !dbg !1119
  %7 = phi i8 [ 1, %1 ], [ %86, %81 ], !dbg !1120
  %8 = phi i8 [ 0, %1 ], [ %87, %81 ], !dbg !1114
  %9 = phi i8* [ %0, %1 ], [ %89, %81 ]
  call void @llvm.dbg.value(metadata i64 %3, metadata !1097, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i8* %9, metadata !1095, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i8 %8, metadata !1096, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i8 %7, metadata !1101, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i8* %6, metadata !1100, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i8 %5, metadata !1099, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i8 %4, metadata !1098, metadata !DIExpression()), !dbg !1114
  %10 = load i8, i8* %9, align 1, !dbg !1121, !tbaa !879
  switch i8 %10, label %11 [
    i8 0, label %90
    i8 44, label %19
  ], !dbg !1122

11:                                               ; preds = %2
  %12 = tail call i16** @__ctype_b_loc() #30, !dbg !1123
  %13 = load i16*, i16** %12, align 8, !dbg !1123, !tbaa !723
  %14 = zext i8 %10 to i64
  %15 = getelementptr inbounds i16, i16* %13, i64 %14, !dbg !1123
  %16 = load i16, i16* %15, align 2, !dbg !1123, !tbaa !998
  %17 = and i16 %16, 1, !dbg !1123
  %18 = icmp eq i16 %17, 0, !dbg !1123
  br i1 %18, label %41, label %19, !dbg !1124

19:                                               ; preds = %2, %11
  %20 = and i8 %8, 1, !dbg !1125
  %21 = icmp eq i8 %20, 0, !dbg !1125
  br i1 %21, label %81, label %22, !dbg !1128

22:                                               ; preds = %19
  %23 = and i8 %4, 1, !dbg !1129
  %24 = icmp eq i8 %23, 0, !dbg !1129
  br i1 %24, label %31, label %25, !dbg !1132

25:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 %3, metadata !1133, metadata !DIExpression()) #26, !dbg !1139
  call void @llvm.dbg.value(metadata i8 1, metadata !1138, metadata !DIExpression()) #26, !dbg !1139
  %26 = load i64, i64* @extend_size, align 8, !dbg !1143, !tbaa !920
  %27 = icmp eq i64 %26, 0, !dbg !1143
  br i1 %27, label %28, label %29, !dbg !1145

28:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i8 undef, metadata !1138, metadata !DIExpression()) #26, !dbg !1139
  store i64 %3, i64* @extend_size, align 8, !dbg !1146, !tbaa !920
  br label %81, !dbg !1147

29:                                               ; preds = %25
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13.7, i64 0, i64 0), i32 5) #26, !dbg !1148
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %30) #26, !dbg !1150
  call void @llvm.dbg.value(metadata i8 undef, metadata !1138, metadata !DIExpression()) #26, !dbg !1139
  store i64 %3, i64* @extend_size, align 8, !dbg !1146, !tbaa !920
  br label %119, !dbg !1147

31:                                               ; preds = %22
  %32 = and i8 %5, 1, !dbg !1151
  %33 = icmp eq i8 %32, 0, !dbg !1151
  br i1 %33, label %40, label %34, !dbg !1153

34:                                               ; preds = %31
  call void @llvm.dbg.value(metadata i64 %3, metadata !1154, metadata !DIExpression()) #26, !dbg !1158
  call void @llvm.dbg.value(metadata i8 1, metadata !1157, metadata !DIExpression()) #26, !dbg !1158
  %35 = load i64, i64* @increment_size, align 8, !dbg !1162, !tbaa !920
  %36 = icmp eq i64 %35, 0, !dbg !1162
  br i1 %36, label %37, label %38, !dbg !1164

37:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i8 undef, metadata !1157, metadata !DIExpression()) #26, !dbg !1158
  store i64 %3, i64* @increment_size, align 8, !dbg !1165, !tbaa !920
  br label %81, !dbg !1166

38:                                               ; preds = %34
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.14.8, i64 0, i64 0), i32 5) #26, !dbg !1167
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %39) #26, !dbg !1169
  call void @llvm.dbg.value(metadata i8 undef, metadata !1157, metadata !DIExpression()) #26, !dbg !1158
  store i64 %3, i64* @increment_size, align 8, !dbg !1165, !tbaa !920
  br label %119, !dbg !1166

40:                                               ; preds = %31
  tail call void @add_tab_stop(i64 %3), !dbg !1170
  br label %81

41:                                               ; preds = %11
  switch i8 %10, label %54 [
    i8 47, label %42
    i8 43, label %48
  ], !dbg !1171

42:                                               ; preds = %41
  %43 = and i8 %8, 1, !dbg !1172
  %44 = icmp eq i8 %43, 0, !dbg !1172
  br i1 %44, label %81, label %45, !dbg !1175

45:                                               ; preds = %42
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1.9, i64 0, i64 0), i32 5) #26, !dbg !1176
  %47 = tail call i8* @quote(i8* nonnull %9) #26, !dbg !1178
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %46, i8* %47) #26, !dbg !1179
  call void @llvm.dbg.value(metadata i8 0, metadata !1101, metadata !DIExpression()), !dbg !1114
  br label %81, !dbg !1180

48:                                               ; preds = %41
  %49 = and i8 %8, 1, !dbg !1181
  %50 = icmp eq i8 %49, 0, !dbg !1181
  br i1 %50, label %81, label %51, !dbg !1184

51:                                               ; preds = %48
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2.10, i64 0, i64 0), i32 5) #26, !dbg !1185
  %53 = tail call i8* @quote(i8* nonnull %9) #26, !dbg !1187
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %52, i8* %53) #26, !dbg !1188
  call void @llvm.dbg.value(metadata i8 0, metadata !1101, metadata !DIExpression()), !dbg !1114
  br label %81, !dbg !1189

54:                                               ; preds = %41
  %55 = sext i8 %10 to i32, !dbg !1190
  %56 = add nsw i32 %55, -48, !dbg !1191
  %57 = icmp ult i32 %56, 10, !dbg !1191
  br i1 %57, label %58, label %78, !dbg !1192

58:                                               ; preds = %54
  %59 = and i8 %8, 1, !dbg !1193
  %60 = icmp eq i8 %59, 0, !dbg !1193
  %61 = select i1 %60, i64 0, i64 %3, !dbg !1195
  %62 = select i1 %60, i8* %9, i8* %6, !dbg !1195
  %63 = select i1 %60, i8 1, i8 %8, !dbg !1195
  call void @llvm.dbg.value(metadata i64 %61, metadata !1097, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i8 %63, metadata !1096, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i8* %62, metadata !1100, metadata !DIExpression()), !dbg !1114
  %64 = icmp ugt i64 %61, 1844674407370955161, !dbg !1196
  br i1 %64, label %71, label %65, !dbg !1196

65:                                               ; preds = %58
  %66 = mul nuw i64 %61, 10, !dbg !1196
  %67 = sext i8 %10 to i64, !dbg !1196
  %68 = add nsw i64 %67, -48, !dbg !1196
  %69 = add i64 %68, %66, !dbg !1196
  %70 = icmp ult i64 %69, %61, !dbg !1196
  call void @llvm.dbg.value(metadata i64 undef, metadata !1097, metadata !DIExpression()), !dbg !1114
  br i1 %70, label %71, label %81, !dbg !1197

71:                                               ; preds = %58, %65
  %72 = tail call i64 @strspn(i8* %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3.11, i64 0, i64 0)) #27, !dbg !1198
  call void @llvm.dbg.value(metadata i64 %72, metadata !1102, metadata !DIExpression()), !dbg !1199
  %73 = tail call noalias i8* @xstrndup(i8* %62, i64 %72) #26, !dbg !1200
  call void @llvm.dbg.value(metadata i8* %73, metadata !1113, metadata !DIExpression()), !dbg !1199
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4.12, i64 0, i64 0), i32 5) #26, !dbg !1201
  %75 = tail call i8* @quote(i8* %73) #26, !dbg !1202
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %74, i8* %75) #26, !dbg !1203
  tail call void @free(i8* %73) #26, !dbg !1204
  call void @llvm.dbg.value(metadata i8 0, metadata !1101, metadata !DIExpression()), !dbg !1114
  %76 = getelementptr inbounds i8, i8* %62, i64 -1, !dbg !1205
  %77 = getelementptr inbounds i8, i8* %76, i64 %72, !dbg !1206
  call void @llvm.dbg.value(metadata i8* %77, metadata !1095, metadata !DIExpression()), !dbg !1114
  br label %81, !dbg !1207

78:                                               ; preds = %54
  %79 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5.13, i64 0, i64 0), i32 5) #26, !dbg !1208
  %80 = tail call i8* @quote(i8* nonnull %9) #26, !dbg !1210
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %79, i8* %80) #26, !dbg !1211
  call void @llvm.dbg.value(metadata i8 0, metadata !1101, metadata !DIExpression()), !dbg !1114
  br label %119, !dbg !1212

81:                                               ; preds = %37, %28, %48, %51, %42, %45, %19, %40, %65, %71
  %82 = phi i64 [ %69, %65 ], [ %61, %71 ], [ %3, %40 ], [ %3, %19 ], [ %3, %45 ], [ %3, %42 ], [ %3, %51 ], [ %3, %48 ], [ %3, %28 ], [ %3, %37 ], !dbg !1116
  %83 = phi i8 [ %4, %65 ], [ %4, %71 ], [ %4, %40 ], [ %4, %19 ], [ 1, %45 ], [ 1, %42 ], [ 0, %51 ], [ 0, %48 ], [ %4, %28 ], [ %4, %37 ], !dbg !1114
  %84 = phi i8 [ %5, %65 ], [ %5, %71 ], [ %5, %40 ], [ %5, %19 ], [ 0, %45 ], [ 0, %42 ], [ 1, %51 ], [ 1, %48 ], [ %5, %28 ], [ %5, %37 ], !dbg !1114
  %85 = phi i8* [ %62, %65 ], [ %62, %71 ], [ %6, %40 ], [ %6, %19 ], [ %6, %45 ], [ %6, %42 ], [ %6, %51 ], [ %6, %48 ], [ %6, %28 ], [ %6, %37 ], !dbg !1119
  %86 = phi i8 [ %7, %65 ], [ 0, %71 ], [ %7, %40 ], [ %7, %19 ], [ 0, %45 ], [ %7, %42 ], [ 0, %51 ], [ %7, %48 ], [ %7, %28 ], [ %7, %37 ], !dbg !1114
  %87 = phi i8 [ %63, %65 ], [ %63, %71 ], [ 0, %40 ], [ 0, %19 ], [ %8, %45 ], [ %8, %42 ], [ %8, %51 ], [ %8, %48 ], [ 0, %28 ], [ 0, %37 ], !dbg !1114
  %88 = phi i8* [ %9, %65 ], [ %77, %71 ], [ %9, %40 ], [ %9, %19 ], [ %9, %45 ], [ %9, %42 ], [ %9, %51 ], [ %9, %48 ], [ %9, %28 ], [ %9, %37 ]
  call void @llvm.dbg.value(metadata i64 %82, metadata !1097, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i8* %88, metadata !1095, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i8 %87, metadata !1096, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i8 %86, metadata !1101, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i8* %85, metadata !1100, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i8 %84, metadata !1099, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i8 %83, metadata !1098, metadata !DIExpression()), !dbg !1114
  %89 = getelementptr inbounds i8, i8* %88, i64 1, !dbg !1213
  call void @llvm.dbg.value(metadata i8* %89, metadata !1095, metadata !DIExpression()), !dbg !1114
  br label %2, !dbg !1214, !llvm.loop !1215

90:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i8 %7, metadata !1101, metadata !DIExpression()), !dbg !1114
  %91 = and i8 %8, 1, !dbg !1217
  %92 = and i8 %91, %7, !dbg !1217
  %93 = icmp eq i8 %92, 0, !dbg !1217
  br i1 %93, label %115, label %94, !dbg !1217

94:                                               ; preds = %90
  %95 = and i8 %4, 1, !dbg !1219
  %96 = icmp eq i8 %95, 0, !dbg !1219
  br i1 %96, label %104, label %97, !dbg !1222

97:                                               ; preds = %94
  call void @llvm.dbg.value(metadata i64 %3, metadata !1133, metadata !DIExpression()) #26, !dbg !1223
  call void @llvm.dbg.value(metadata i8 1, metadata !1138, metadata !DIExpression()) #26, !dbg !1223
  %98 = load i64, i64* @extend_size, align 8, !dbg !1225, !tbaa !920
  %99 = icmp eq i64 %98, 0, !dbg !1225
  br i1 %99, label %102, label %100, !dbg !1226

100:                                              ; preds = %97
  %101 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13.7, i64 0, i64 0), i32 5) #26, !dbg !1227
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %101) #26, !dbg !1228
  call void @llvm.dbg.value(metadata i8 0, metadata !1138, metadata !DIExpression()) #26, !dbg !1223
  br label %102, !dbg !1229

102:                                              ; preds = %97, %100
  call void @llvm.dbg.value(metadata i8 undef, metadata !1138, metadata !DIExpression()) #26, !dbg !1223
  store i64 %3, i64* @extend_size, align 8, !dbg !1230, !tbaa !920
  %103 = zext i1 %99 to i8, !dbg !1231
  call void @llvm.dbg.value(metadata i8 %103, metadata !1101, metadata !DIExpression()), !dbg !1114
  br label %115, !dbg !1232

104:                                              ; preds = %94
  %105 = and i8 %5, 1, !dbg !1233
  %106 = icmp eq i8 %105, 0, !dbg !1233
  br i1 %106, label %114, label %107, !dbg !1235

107:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i64 %3, metadata !1154, metadata !DIExpression()) #26, !dbg !1236
  call void @llvm.dbg.value(metadata i8 1, metadata !1157, metadata !DIExpression()) #26, !dbg !1236
  %108 = load i64, i64* @increment_size, align 8, !dbg !1238, !tbaa !920
  %109 = icmp eq i64 %108, 0, !dbg !1238
  br i1 %109, label %112, label %110, !dbg !1239

110:                                              ; preds = %107
  %111 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.14.8, i64 0, i64 0), i32 5) #26, !dbg !1240
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %111) #26, !dbg !1241
  call void @llvm.dbg.value(metadata i8 0, metadata !1157, metadata !DIExpression()) #26, !dbg !1236
  br label %112, !dbg !1242

112:                                              ; preds = %107, %110
  call void @llvm.dbg.value(metadata i8 undef, metadata !1157, metadata !DIExpression()) #26, !dbg !1236
  store i64 %3, i64* @increment_size, align 8, !dbg !1243, !tbaa !920
  %113 = zext i1 %109 to i8, !dbg !1244
  call void @llvm.dbg.value(metadata i8 %113, metadata !1101, metadata !DIExpression()), !dbg !1114
  br label %115, !dbg !1245

114:                                              ; preds = %104
  tail call void @add_tab_stop(i64 %3), !dbg !1246
  br label %115

115:                                              ; preds = %102, %114, %112, %90
  %116 = phi i8 [ %103, %102 ], [ %113, %112 ], [ %7, %114 ], [ %7, %90 ], !dbg !1114
  call void @llvm.dbg.value(metadata i8 %116, metadata !1101, metadata !DIExpression()), !dbg !1114
  %117 = and i8 %116, 1, !dbg !1247
  %118 = icmp eq i8 %117, 0, !dbg !1247
  br i1 %118, label %119, label %120, !dbg !1249

119:                                              ; preds = %78, %29, %38, %115
  tail call void @exit(i32 1) #28, !dbg !1250
  unreachable, !dbg !1250

120:                                              ; preds = %115
  ret void, !dbg !1251
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @finalize_tab_stops() local_unnamed_addr #8 !dbg !1252 {
  %1 = load i64*, i64** @tab_list, align 8, !dbg !1253, !tbaa !723
  %2 = load i64, i64* @first_free_tab, align 8, !dbg !1254, !tbaa !920
  call void @llvm.dbg.value(metadata i64* %1, metadata !1255, metadata !DIExpression()) #26, !dbg !1266
  call void @llvm.dbg.value(metadata i64 %2, metadata !1262, metadata !DIExpression()) #26, !dbg !1266
  call void @llvm.dbg.value(metadata i64 0, metadata !1263, metadata !DIExpression()) #26, !dbg !1266
  call void @llvm.dbg.value(metadata i64 0, metadata !1264, metadata !DIExpression()) #26, !dbg !1268
  %3 = icmp eq i64 %2, 0, !dbg !1269
  br i1 %3, label %12, label %18, !dbg !1271

4:                                                ; preds = %26
  call void @llvm.dbg.value(metadata i64 %28, metadata !1264, metadata !DIExpression()) #26, !dbg !1268
  call void @llvm.dbg.value(metadata i64 %22, metadata !1263, metadata !DIExpression()) #26, !dbg !1266
  %5 = icmp eq i64 %28, %2, !dbg !1269
  br i1 %5, label %6, label %18, !dbg !1271, !llvm.loop !1272

6:                                                ; preds = %4
  %7 = load i64, i64* @increment_size, align 8, !dbg !1274, !tbaa !920
  %8 = icmp ne i64 %7, 0, !dbg !1274
  %9 = load i64, i64* @extend_size, align 8
  %10 = icmp ne i64 %9, 0
  %11 = and i1 %8, %10, !dbg !1276
  br i1 %11, label %31, label %38, !dbg !1276

12:                                               ; preds = %0
  %13 = load i64, i64* @increment_size, align 8, !dbg !1274, !tbaa !920
  %14 = icmp ne i64 %13, 0, !dbg !1274
  %15 = load i64, i64* @extend_size, align 8
  %16 = icmp ne i64 %15, 0
  %17 = and i1 %14, %16, !dbg !1276
  br i1 %17, label %31, label %33, !dbg !1276

18:                                               ; preds = %0, %4
  %19 = phi i64 [ %28, %4 ], [ 0, %0 ]
  %20 = phi i64 [ %22, %4 ], [ 0, %0 ]
  call void @llvm.dbg.value(metadata i64 %19, metadata !1264, metadata !DIExpression()) #26, !dbg !1268
  call void @llvm.dbg.value(metadata i64 %20, metadata !1263, metadata !DIExpression()) #26, !dbg !1266
  %21 = getelementptr inbounds i64, i64* %1, i64 %19, !dbg !1277
  %22 = load i64, i64* %21, align 8, !dbg !1277, !tbaa !920
  %23 = icmp eq i64 %22, 0, !dbg !1280
  br i1 %23, label %24, label %26, !dbg !1281

24:                                               ; preds = %18
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15.16, i64 0, i64 0), i32 5) #26, !dbg !1282
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %25) #26, !dbg !1282
  unreachable, !dbg !1282

26:                                               ; preds = %18
  %27 = icmp ugt i64 %22, %20, !dbg !1283
  call void @llvm.dbg.value(metadata i64 %22, metadata !1263, metadata !DIExpression()) #26, !dbg !1266
  %28 = add nuw i64 %19, 1, !dbg !1285
  call void @llvm.dbg.value(metadata i64 %28, metadata !1264, metadata !DIExpression()) #26, !dbg !1268
  br i1 %27, label %4, label %29, !dbg !1286

29:                                               ; preds = %26
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16.17, i64 0, i64 0), i32 5) #26, !dbg !1287
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %30) #26, !dbg !1287
  unreachable, !dbg !1287

31:                                               ; preds = %12, %6
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.17.18, i64 0, i64 0), i32 5) #26, !dbg !1288
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %32) #26, !dbg !1288
  unreachable, !dbg !1288

33:                                               ; preds = %12
  %34 = icmp eq i64 %15, 0, !dbg !1289
  %35 = icmp eq i64 %13, 0, !dbg !1289
  %36 = select i1 %35, i64 8, i64 %13, !dbg !1289
  %37 = select i1 %34, i64 %36, i64 %15, !dbg !1289
  store i64 %37, i64* @max_column_width, align 8, !dbg !1291, !tbaa !920
  br label %45, !dbg !1292

38:                                               ; preds = %6
  %39 = icmp ne i64 %2, 1, !dbg !1293
  %40 = or i64 %9, %7, !dbg !1295
  %41 = icmp ne i64 %40, 0, !dbg !1295
  %42 = or i1 %39, %41, !dbg !1295
  br i1 %42, label %45, label %43, !dbg !1295

43:                                               ; preds = %38
  %44 = load i64, i64* %1, align 8, !dbg !1296, !tbaa !920
  br label %45, !dbg !1297

45:                                               ; preds = %38, %43, %33
  %46 = phi i64 [ %44, %43 ], [ %37, %33 ], [ 0, %38 ]
  store i64 %46, i64* @tab_size, align 8, !dbg !1298, !tbaa !920
  ret void, !dbg !1299
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i64 @get_next_tab_column(i64 %0, i64* nocapture %1, i8* nocapture %2) local_unnamed_addr #11 !dbg !1300 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1305, metadata !DIExpression()), !dbg !1315
  call void @llvm.dbg.value(metadata i64* %1, metadata !1306, metadata !DIExpression()), !dbg !1315
  call void @llvm.dbg.value(metadata i8* %2, metadata !1307, metadata !DIExpression()), !dbg !1315
  store i8 0, i8* %2, align 1, !dbg !1316, !tbaa !860
  %4 = load i64, i64* @tab_size, align 8, !dbg !1317, !tbaa !920
  %5 = icmp eq i64 %4, 0, !dbg !1317
  br i1 %5, label %6, label %12, !dbg !1319

6:                                                ; preds = %3
  %7 = load i64, i64* %1, align 8, !dbg !1320, !tbaa !920
  %8 = load i64, i64* @first_free_tab, align 8, !dbg !1321, !tbaa !920
  %9 = icmp ult i64 %7, %8, !dbg !1322
  br i1 %9, label %10, label %24, !dbg !1323

10:                                               ; preds = %6
  %11 = load i64*, i64** @tab_list, align 8, !tbaa !723
  br label %16, !dbg !1323

12:                                               ; preds = %3
  %13 = urem i64 %0, %4, !dbg !1324
  %14 = add i64 %4, %0, !dbg !1325
  %15 = sub i64 %14, %13, !dbg !1326
  br label %44, !dbg !1327

16:                                               ; preds = %10, %21
  %17 = phi i64 [ %7, %10 ], [ %22, %21 ]
  %18 = getelementptr inbounds i64, i64* %11, i64 %17, !dbg !1328
  %19 = load i64, i64* %18, align 8, !dbg !1328, !tbaa !920
  call void @llvm.dbg.value(metadata i64 %19, metadata !1308, metadata !DIExpression()), !dbg !1329
  %20 = icmp ugt i64 %19, %0, !dbg !1330
  br i1 %20, label %44, label %21

21:                                               ; preds = %16
  %22 = add nuw i64 %17, 1, !dbg !1332
  store i64 %22, i64* %1, align 8, !dbg !1332, !tbaa !920
  %23 = icmp ult i64 %22, %8, !dbg !1322
  br i1 %23, label %16, label %24, !dbg !1323, !llvm.loop !1333

24:                                               ; preds = %21, %6
  %25 = load i64, i64* @extend_size, align 8, !dbg !1335, !tbaa !920
  %26 = icmp eq i64 %25, 0, !dbg !1335
  br i1 %26, label %31, label %27, !dbg !1337

27:                                               ; preds = %24
  %28 = urem i64 %0, %25, !dbg !1338
  %29 = add i64 %25, %0, !dbg !1339
  %30 = sub i64 %29, %28, !dbg !1340
  br label %44, !dbg !1341

31:                                               ; preds = %24
  %32 = load i64, i64* @increment_size, align 8, !dbg !1342, !tbaa !920
  %33 = icmp eq i64 %32, 0, !dbg !1342
  br i1 %33, label %43, label %34, !dbg !1343

34:                                               ; preds = %31
  %35 = load i64*, i64** @tab_list, align 8, !dbg !1344, !tbaa !723
  %36 = add i64 %8, -1, !dbg !1345
  %37 = getelementptr inbounds i64, i64* %35, i64 %36, !dbg !1344
  %38 = load i64, i64* %37, align 8, !dbg !1344, !tbaa !920
  call void @llvm.dbg.value(metadata i64 %38, metadata !1312, metadata !DIExpression()), !dbg !1346
  %39 = sub i64 %0, %38, !dbg !1347
  %40 = urem i64 %39, %32, !dbg !1348
  %41 = add i64 %32, %0, !dbg !1349
  %42 = sub i64 %41, %40, !dbg !1350
  br label %44

43:                                               ; preds = %31
  store i8 1, i8* %2, align 1, !dbg !1351, !tbaa !860
  br label %44, !dbg !1352

44:                                               ; preds = %16, %43, %34, %27, %12
  %45 = phi i64 [ %15, %12 ], [ %30, %27 ], [ %42, %34 ], [ 0, %43 ], [ %19, %16 ], !dbg !1315
  ret i64 %45, !dbg !1353
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_file_list(i8** %0) local_unnamed_addr #12 !dbg !1354 {
  call void @llvm.dbg.value(metadata i8** %0, metadata !1358, metadata !DIExpression()), !dbg !1359
  store i1 false, i1* @have_read_stdin, align 1, !dbg !1360
  %2 = icmp eq i8** %0, null, !dbg !1361
  %3 = select i1 %2, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @stdin_argv, i64 0, i64 0), i8** %0, !dbg !1363
  store i8** %3, i8*** @file_list, align 8, !dbg !1364, !tbaa !723
  ret void, !dbg !1365
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct._IO_FILE* @next_file(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !104 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !162, metadata !DIExpression()), !dbg !1366
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !1367
  br i1 %2, label %30, label %3, !dbg !1369

3:                                                ; preds = %1
  %4 = load i8*, i8** @next_file.prev_file, align 8, !dbg !1370, !tbaa !723
  %5 = icmp eq i8* %4, null, !dbg !1370
  br i1 %5, label %6, label %7, !dbg !1374

6:                                                ; preds = %3
  tail call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.26, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7.27, i64 0, i64 0), i32 341, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.next_file, i64 0, i64 0)) #28, !dbg !1370
  unreachable, !dbg !1370

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1375, metadata !DIExpression()), !dbg !1380
  %8 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !1383
  %9 = load i32, i32* %8, align 8, !dbg !1383, !tbaa !1384
  %10 = and i32 %9, 32, !dbg !1385
  %11 = icmp eq i32 %10, 0, !dbg !1385
  br i1 %11, label %17, label %12, !dbg !1386

12:                                               ; preds = %7
  %13 = tail call i32* @__errno_location() #30, !dbg !1387
  %14 = load i32, i32* %13, align 4, !dbg !1387, !tbaa !888
  %15 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %4) #26, !dbg !1389
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8.28, i64 0, i64 0), i8* %15) #26, !dbg !1390
  store i32 1, i32* @exit_status, align 4, !dbg !1391, !tbaa !888
  %16 = load i8*, i8** @next_file.prev_file, align 8, !dbg !1392, !tbaa !723
  br label %17, !dbg !1394

17:                                               ; preds = %12, %7
  %18 = phi i8* [ %16, %12 ], [ %4, %7 ], !dbg !1392
  %19 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %18, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9.23, i64 0, i64 0)) #27, !dbg !1392
  %20 = icmp eq i32 %19, 0, !dbg !1392
  br i1 %20, label %21, label %22, !dbg !1395

21:                                               ; preds = %17
  tail call void @clearerr_unlocked(%struct._IO_FILE* nonnull %0) #26, !dbg !1396
  br label %30, !dbg !1396

22:                                               ; preds = %17
  %23 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) #26, !dbg !1397
  %24 = icmp eq i32 %23, 0, !dbg !1399
  br i1 %24, label %30, label %25, !dbg !1400

25:                                               ; preds = %22
  %26 = tail call i32* @__errno_location() #30, !dbg !1401
  %27 = load i32, i32* %26, align 4, !dbg !1401, !tbaa !888
  %28 = load i8*, i8** @next_file.prev_file, align 8, !dbg !1403, !tbaa !723
  %29 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %28) #26, !dbg !1403
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8.28, i64 0, i64 0), i8* %29) #26, !dbg !1404
  store i32 1, i32* @exit_status, align 4, !dbg !1405, !tbaa !888
  br label %30, !dbg !1406

30:                                               ; preds = %21, %25, %22, %1
  %31 = load i8**, i8*** @file_list, align 8, !dbg !1407, !tbaa !723
  %32 = getelementptr inbounds i8*, i8** %31, i64 1, !dbg !1407
  store i8** %32, i8*** @file_list, align 8, !dbg !1407, !tbaa !723
  %33 = load i8*, i8** %31, align 8, !dbg !1408, !tbaa !723
  call void @llvm.dbg.value(metadata i8* %33, metadata !163, metadata !DIExpression()), !dbg !1366
  %34 = icmp eq i8* %33, null, !dbg !1409
  br i1 %34, label %55, label %35, !dbg !1410

35:                                               ; preds = %30, %47
  %36 = phi i8* [ %53, %47 ], [ %33, %30 ]
  %37 = tail call i32 @strcmp(i8* nonnull %36, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9.23, i64 0, i64 0)) #27, !dbg !1411
  %38 = icmp eq i32 %37, 0, !dbg !1411
  br i1 %38, label %39, label %41, !dbg !1414

39:                                               ; preds = %35
  store i1 true, i1* @have_read_stdin, align 1, !dbg !1415
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1417, !tbaa !723
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %40, metadata !162, metadata !DIExpression()), !dbg !1366
  br label %43, !dbg !1418

41:                                               ; preds = %35
  %42 = tail call %struct._IO_FILE* @fopen(i8* nonnull %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.29, i64 0, i64 0)), !dbg !1419
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %42, metadata !162, metadata !DIExpression()), !dbg !1366
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi %struct._IO_FILE* [ %40, %39 ], [ %42, %41 ], !dbg !1420
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %44, metadata !162, metadata !DIExpression()), !dbg !1366
  %45 = icmp eq %struct._IO_FILE* %44, null, !dbg !1421
  br i1 %45, label %47, label %46, !dbg !1423

46:                                               ; preds = %43
  store i8* %36, i8** @next_file.prev_file, align 8, !dbg !1424, !tbaa !723
  tail call void @fadvise(%struct._IO_FILE* nonnull %44, i32 2) #26, !dbg !1426
  br label %55, !dbg !1427

47:                                               ; preds = %43
  %48 = tail call i32* @__errno_location() #30, !dbg !1428
  %49 = load i32, i32* %48, align 4, !dbg !1428, !tbaa !888
  %50 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %36) #26, !dbg !1429
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8.28, i64 0, i64 0), i8* %50) #26, !dbg !1430
  store i32 1, i32* @exit_status, align 4, !dbg !1431, !tbaa !888
  %51 = load i8**, i8*** @file_list, align 8, !dbg !1407, !tbaa !723
  %52 = getelementptr inbounds i8*, i8** %51, i64 1, !dbg !1407
  store i8** %52, i8*** @file_list, align 8, !dbg !1407, !tbaa !723
  %53 = load i8*, i8** %51, align 8, !dbg !1408, !tbaa !723
  call void @llvm.dbg.value(metadata i8* %53, metadata !163, metadata !DIExpression()), !dbg !1366
  %54 = icmp eq i8* %53, null, !dbg !1409
  br i1 %54, label %55, label %35, !dbg !1410, !llvm.loop !1432

55:                                               ; preds = %47, %30, %46
  %56 = phi %struct._IO_FILE* [ %44, %46 ], [ null, %30 ], [ null, %47 ], !dbg !1366
  ret %struct._IO_FILE* %56, !dbg !1434
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !1435 void @clearerr_unlocked(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @cleanup_file_list_stdin() local_unnamed_addr #8 !dbg !1438 {
  %1 = load i1, i1* @have_read_stdin, align 1, !dbg !1439
  br i1 %1, label %2, label %9, !dbg !1441

2:                                                ; preds = %0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1442, !tbaa !723
  %4 = tail call i32 @rpl_fclose(%struct._IO_FILE* %3) #26, !dbg !1443
  %5 = icmp eq i32 %4, 0, !dbg !1444
  br i1 %5, label %9, label %6, !dbg !1445

6:                                                ; preds = %2
  %7 = tail call i32* @__errno_location() #30, !dbg !1446
  %8 = load i32, i32* %7, align 4, !dbg !1446, !tbaa !888
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9.23, i64 0, i64 0)) #26, !dbg !1446
  unreachable, !dbg !1446

9:                                                ; preds = %2, %0
  ret void, !dbg !1447
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_tab_list_info() local_unnamed_addr #8 !dbg !1448 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.11.34, i64 0, i64 0), i32 5) #26, !dbg !1449
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1449, !tbaa !723
  %3 = tail call i32 @fputs_unlocked(i8* %1, %struct._IO_FILE* %2), !dbg !1449
  %4 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([365 x i8], [365 x i8]* @.str.12.35, i64 0, i64 0), i32 5) #26, !dbg !1450
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1450, !tbaa !723
  %6 = tail call i32 @fputs_unlocked(i8* %4, %struct._IO_FILE* %5), !dbg !1450
  ret void, !dbg !1451
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #12 !dbg !1452 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1454, metadata !DIExpression()), !dbg !1455
  store i8* %0, i8** @file_name, align 8, !dbg !1456, !tbaa !723
  ret void, !dbg !1457
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #12 !dbg !1458 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1462, metadata !DIExpression()), !dbg !1463
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1464, !tbaa !860
  ret void, !dbg !1465
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1466 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1471, !tbaa !723
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #26, !dbg !1472
  %3 = icmp eq i32 %2, 0, !dbg !1473
  br i1 %3, label %22, label %4, !dbg !1474

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1475, !tbaa !860, !range !950
  %6 = icmp eq i8 %5, 0, !dbg !1475
  br i1 %6, label %11, label %7, !dbg !1476

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #30, !dbg !1477
  %9 = load i32, i32* %8, align 4, !dbg !1477, !tbaa !888
  %10 = icmp eq i32 %9, 32, !dbg !1478
  br i1 %10, label %22, label %11, !dbg !1479

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i64 0, i64 0), i32 5) #26, !dbg !1480
  call void @llvm.dbg.value(metadata i8* %12, metadata !1468, metadata !DIExpression()), !dbg !1481
  %13 = load i8*, i8** @file_name, align 8, !dbg !1482, !tbaa !723
  %14 = icmp eq i8* %13, null, !dbg !1482
  %15 = tail call i32* @__errno_location() #30, !dbg !1484
  %16 = load i32, i32* %15, align 4, !dbg !1484, !tbaa !888
  br i1 %14, label %19, label %17, !dbg !1485

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #26, !dbg !1486
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.42, i64 0, i64 0), i8* %18, i8* %12) #26, !dbg !1487
  br label %20, !dbg !1487

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.43, i64 0, i64 0), i8* %12) #26, !dbg !1488
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1489, !tbaa !888
  tail call void @_exit(i32 %21) #28, !dbg !1490
  unreachable, !dbg !1490

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1491, !tbaa !723
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #26, !dbg !1493
  %25 = icmp eq i32 %24, 0, !dbg !1494
  br i1 %25, label %28, label %26, !dbg !1495

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1496, !tbaa !888
  tail call void @_exit(i32 %27) #28, !dbg !1497
  unreachable, !dbg !1497

28:                                               ; preds = %22
  ret void, !dbg !1498
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #13

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32 %0, i64 %1, i64 %2, i32 %3) local_unnamed_addr #8 !dbg !1499 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1505, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i64 %1, metadata !1506, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i64 %2, metadata !1507, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i32 %3, metadata !1508, metadata !DIExpression()), !dbg !1511
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #26, !dbg !1512
  call void @llvm.dbg.value(metadata i32 %5, metadata !1509, metadata !DIExpression()), !dbg !1513
  ret void, !dbg !1514
}

; Function Attrs: nounwind
declare !dbg !1515 i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE* %0, i32 %1) local_unnamed_addr #8 !dbg !1519 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1557, metadata !DIExpression()), !dbg !1559
  call void @llvm.dbg.value(metadata i32 %1, metadata !1558, metadata !DIExpression()), !dbg !1559
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1560
  br i1 %3, label %7, label %4, !dbg !1562

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #26, !dbg !1563
  call void @llvm.dbg.value(metadata i32 %5, metadata !1505, metadata !DIExpression()) #26, !dbg !1564
  call void @llvm.dbg.value(metadata i64 0, metadata !1506, metadata !DIExpression()) #26, !dbg !1564
  call void @llvm.dbg.value(metadata i64 0, metadata !1507, metadata !DIExpression()) #26, !dbg !1564
  call void @llvm.dbg.value(metadata i32 %1, metadata !1508, metadata !DIExpression()) #26, !dbg !1564
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #26, !dbg !1566
  call void @llvm.dbg.value(metadata i32 %6, metadata !1509, metadata !DIExpression()) #26, !dbg !1567
  br label %7, !dbg !1568

7:                                                ; preds = %4, %2
  ret void, !dbg !1569
}

; Function Attrs: nofree nounwind
declare !dbg !1570 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1573 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1575, metadata !DIExpression()), !dbg !1578
  %2 = icmp eq i8* %0, null, !dbg !1579
  br i1 %2, label %3, label %6, !dbg !1581

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1582, !tbaa !723
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.52, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #31, !dbg !1584
  tail call void @abort() #28, !dbg !1585
  unreachable, !dbg !1585

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #27, !dbg !1586
  call void @llvm.dbg.value(metadata i8* %7, metadata !1576, metadata !DIExpression()), !dbg !1578
  %8 = icmp eq i8* %7, null, !dbg !1587
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1588
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1588
  call void @llvm.dbg.value(metadata i8* %10, metadata !1577, metadata !DIExpression()), !dbg !1578
  %11 = ptrtoint i8* %10 to i64, !dbg !1589
  %12 = ptrtoint i8* %0 to i64, !dbg !1589
  %13 = sub i64 %11, %12, !dbg !1589
  %14 = icmp sgt i64 %13, 6, !dbg !1591
  br i1 %14, label %15, label %24, !dbg !1592

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1593
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.53, i64 0, i64 0), i64 7) #27, !dbg !1594
  %18 = icmp eq i32 %17, 0, !dbg !1595
  br i1 %18, label %19, label %24, !dbg !1596

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1575, metadata !DIExpression()), !dbg !1578
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.54, i64 0, i64 0), i64 3) #27, !dbg !1597
  %21 = icmp eq i32 %20, 0, !dbg !1600
  br i1 %21, label %22, label %24, !dbg !1601

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1602
  call void @llvm.dbg.value(metadata i8* %23, metadata !1575, metadata !DIExpression()), !dbg !1578
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1604, !tbaa !723
  br label %24, !dbg !1605

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1575, metadata !DIExpression()), !dbg !1578
  store i8* %25, i8** @program_name, align 8, !dbg !1606, !tbaa !723
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1607, !tbaa !723
  ret void, !dbg !1608
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #14

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1609 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1614, metadata !DIExpression()), !dbg !1617
  %2 = tail call i32* @__errno_location() #30, !dbg !1618
  %3 = load i32, i32* %2, align 4, !dbg !1618, !tbaa !888
  call void @llvm.dbg.value(metadata i32 %3, metadata !1615, metadata !DIExpression()), !dbg !1617
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1619
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1619
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1619
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #26, !dbg !1620
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1620
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1616, metadata !DIExpression()), !dbg !1617
  store i32 %3, i32* %2, align 4, !dbg !1621, !tbaa !888
  ret %struct.quoting_options* %8, !dbg !1622
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #15 !dbg !1623 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1629, metadata !DIExpression()), !dbg !1630
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1631
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1631
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1632
  %5 = load i32, i32* %4, align 8, !dbg !1632, !tbaa !1633
  ret i32 %5, !dbg !1635
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #12 !dbg !1636 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1640, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata i32 %1, metadata !1641, metadata !DIExpression()), !dbg !1642
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1643
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1643
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1644
  store i32 %1, i32* %5, align 8, !dbg !1645, !tbaa !1633
  ret void, !dbg !1646
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #16 !dbg !1647 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1651, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8 %1, metadata !1652, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i32 %2, metadata !1653, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8 %1, metadata !1654, metadata !DIExpression()), !dbg !1659
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1660
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1660
  %6 = lshr i8 %1, 5, !dbg !1661
  %7 = zext i8 %6 to i64, !dbg !1661
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1662
  call void @llvm.dbg.value(metadata i32* %8, metadata !1655, metadata !DIExpression()), !dbg !1659
  %9 = and i8 %1, 31, !dbg !1663
  %10 = zext i8 %9 to i32, !dbg !1663
  call void @llvm.dbg.value(metadata i32 %10, metadata !1657, metadata !DIExpression()), !dbg !1659
  %11 = load i32, i32* %8, align 4, !dbg !1664, !tbaa !888
  %12 = lshr i32 %11, %10, !dbg !1665
  %13 = and i32 %12, 1, !dbg !1666
  call void @llvm.dbg.value(metadata i32 %13, metadata !1658, metadata !DIExpression()), !dbg !1659
  %14 = and i32 %2, 1, !dbg !1667
  %15 = xor i32 %13, %14, !dbg !1668
  %16 = shl i32 %15, %10, !dbg !1669
  %17 = xor i32 %16, %11, !dbg !1670
  store i32 %17, i32* %8, align 4, !dbg !1670, !tbaa !888
  ret i32 %13, !dbg !1671
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #16 !dbg !1672 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1676, metadata !DIExpression()), !dbg !1679
  call void @llvm.dbg.value(metadata i32 %1, metadata !1677, metadata !DIExpression()), !dbg !1679
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1680
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1682
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1676, metadata !DIExpression()), !dbg !1679
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1683
  %6 = load i32, i32* %5, align 4, !dbg !1683, !tbaa !1684
  call void @llvm.dbg.value(metadata i32 %6, metadata !1678, metadata !DIExpression()), !dbg !1679
  store i32 %1, i32* %5, align 4, !dbg !1685, !tbaa !1684
  ret i32 %6, !dbg !1686
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1687 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1691, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8* %1, metadata !1692, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8* %2, metadata !1693, metadata !DIExpression()), !dbg !1694
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1695
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1697
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1691, metadata !DIExpression()), !dbg !1694
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1698
  store i32 10, i32* %6, align 8, !dbg !1699, !tbaa !1633
  %7 = icmp ne i8* %1, null, !dbg !1700
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1702
  br i1 %9, label %11, label %10, !dbg !1702

10:                                               ; preds = %3
  tail call void @abort() #28, !dbg !1703
  unreachable, !dbg !1703

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1704
  store i8* %1, i8** %12, align 8, !dbg !1705, !tbaa !1706
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1707
  store i8* %2, i8** %13, align 8, !dbg !1708, !tbaa !1709
  ret void, !dbg !1710
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1711 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1715, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata i64 %1, metadata !1716, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata i8* %2, metadata !1717, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata i64 %3, metadata !1718, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1719, metadata !DIExpression()), !dbg !1723
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1724
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1724
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1720, metadata !DIExpression()), !dbg !1723
  %8 = tail call i32* @__errno_location() #30, !dbg !1725
  %9 = load i32, i32* %8, align 4, !dbg !1725, !tbaa !888
  call void @llvm.dbg.value(metadata i32 %9, metadata !1721, metadata !DIExpression()), !dbg !1723
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1726
  %11 = load i32, i32* %10, align 8, !dbg !1726, !tbaa !1633
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1727
  %13 = load i32, i32* %12, align 4, !dbg !1727, !tbaa !1684
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1728
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1729
  %16 = load i8*, i8** %15, align 8, !dbg !1729, !tbaa !1706
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1730
  %18 = load i8*, i8** %17, align 8, !dbg !1730, !tbaa !1709
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1731
  call void @llvm.dbg.value(metadata i64 %19, metadata !1722, metadata !DIExpression()), !dbg !1723
  store i32 %9, i32* %8, align 4, !dbg !1732, !tbaa !888
  ret i64 %19, !dbg !1733
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1734 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1740, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %1, metadata !1741, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8* %2, metadata !1742, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %3, metadata !1743, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i32 %4, metadata !1744, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i32 %5, metadata !1745, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i32* %6, metadata !1746, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8* %7, metadata !1747, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8* %8, metadata !1748, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 0, metadata !1750, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 0, metadata !1751, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8* null, metadata !1752, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 0, metadata !1753, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8 0, metadata !1754, metadata !DIExpression()), !dbg !1810
  %13 = tail call i64 @__ctype_get_mb_cur_max() #26, !dbg !1811
  %14 = icmp eq i64 %13, 1, !dbg !1812
  call void @llvm.dbg.value(metadata i1 %14, metadata !1755, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1810
  %15 = lshr i32 %5, 1, !dbg !1813
  %16 = trunc i32 %15 to i8, !dbg !1813
  %17 = and i8 %16, 1, !dbg !1813
  call void @llvm.dbg.value(metadata i8 %17, metadata !1756, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8 0, metadata !1757, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8 0, metadata !1758, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8 1, metadata !1759, metadata !DIExpression()), !dbg !1810
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !1814

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !1815
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !1816
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !1817
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !1818
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !1810
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !1819
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !1820
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !1821
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1741, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8 %38, metadata !1759, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8 %37, metadata !1758, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8 %36, metadata !1757, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8 %35, metadata !1756, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %34, metadata !1743, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8 %33, metadata !1754, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %32, metadata !1753, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8* %31, metadata !1752, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %30, metadata !1751, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 0, metadata !1750, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8* %29, metadata !1748, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8* %28, metadata !1747, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i32 %27, metadata !1744, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.label(metadata !1804), !dbg !1822
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
  ], !dbg !1823

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1756, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i32 5, metadata !1744, metadata !DIExpression()), !dbg !1810
  br label %92, !dbg !1824

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1756, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i32 5, metadata !1744, metadata !DIExpression()), !dbg !1810
  %42 = and i8 %35, 1, !dbg !1826
  %43 = icmp eq i8 %42, 0, !dbg !1826
  br i1 %43, label %44, label %92, !dbg !1824

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1828
  br i1 %45, label %92, label %46, !dbg !1831

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1828, !tbaa !879
  br label %92, !dbg !1828

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.65, i64 0, i64 0), i32 %27), !dbg !1832
  call void @llvm.dbg.value(metadata i8* %48, metadata !1747, metadata !DIExpression()), !dbg !1810
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), i32 %27), !dbg !1836
  call void @llvm.dbg.value(metadata i8* %49, metadata !1748, metadata !DIExpression()), !dbg !1810
  br label %50, !dbg !1837

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1748, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8* %51, metadata !1747, metadata !DIExpression()), !dbg !1810
  %53 = and i8 %35, 1, !dbg !1838
  %54 = icmp eq i8 %53, 0, !dbg !1838
  br i1 %54, label %55, label %70, !dbg !1840

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1752, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 0, metadata !1750, metadata !DIExpression()), !dbg !1810
  %56 = load i8, i8* %51, align 1, !dbg !1841, !tbaa !879
  %57 = icmp eq i8 %56, 0, !dbg !1844
  br i1 %57, label %70, label %58, !dbg !1844

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1752, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %61, metadata !1750, metadata !DIExpression()), !dbg !1810
  %62 = icmp ult i64 %61, %39, !dbg !1845
  br i1 %62, label %63, label %65, !dbg !1848

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1845
  store i8 %59, i8* %64, align 1, !dbg !1845, !tbaa !879
  br label %65, !dbg !1845

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1848
  call void @llvm.dbg.value(metadata i64 %66, metadata !1750, metadata !DIExpression()), !dbg !1810
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1849
  call void @llvm.dbg.value(metadata i8* %67, metadata !1752, metadata !DIExpression()), !dbg !1810
  %68 = load i8, i8* %67, align 1, !dbg !1841, !tbaa !879
  %69 = icmp eq i8 %68, 0, !dbg !1844
  br i1 %69, label %70, label %58, !dbg !1844, !llvm.loop !1850

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1852
  call void @llvm.dbg.value(metadata i64 %71, metadata !1750, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8 1, metadata !1754, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8* %52, metadata !1752, metadata !DIExpression()), !dbg !1810
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #27, !dbg !1853
  call void @llvm.dbg.value(metadata i64 %72, metadata !1753, metadata !DIExpression()), !dbg !1810
  br label %92, !dbg !1854

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1754, metadata !DIExpression()), !dbg !1810
  br label %74, !dbg !1855

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1810
  call void @llvm.dbg.value(metadata i8 %75, metadata !1754, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8 1, metadata !1756, metadata !DIExpression()), !dbg !1810
  br label %76, !dbg !1856

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1818
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1810
  call void @llvm.dbg.value(metadata i8 %78, metadata !1756, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8 %77, metadata !1754, metadata !DIExpression()), !dbg !1810
  %79 = and i8 %78, 1, !dbg !1857
  %80 = icmp eq i8 %79, 0, !dbg !1857
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1859
  br label %82, !dbg !1859

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1810
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1813
  call void @llvm.dbg.value(metadata i8 %84, metadata !1756, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8 %83, metadata !1754, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i32 2, metadata !1744, metadata !DIExpression()), !dbg !1810
  %85 = and i8 %84, 1, !dbg !1860
  %86 = icmp eq i8 %85, 0, !dbg !1860
  br i1 %86, label %87, label %92, !dbg !1862

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1863
  br i1 %88, label %92, label %89, !dbg !1866

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1863, !tbaa !879
  br label %92, !dbg !1863

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1756, metadata !DIExpression()), !dbg !1810
  br label %92, !dbg !1867

91:                                               ; preds = %26
  call void @abort() #28, !dbg !1868
  unreachable, !dbg !1868

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !1852
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %40 ], !dbg !1810
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !1810
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !1810
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !1810
  call void @llvm.dbg.value(metadata i8 %100, metadata !1756, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8 %99, metadata !1754, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %98, metadata !1753, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8* %97, metadata !1752, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %96, metadata !1750, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8* %95, metadata !1748, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8* %94, metadata !1747, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i32 %93, metadata !1744, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 0, metadata !1749, metadata !DIExpression()), !dbg !1810
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
  br label %121, !dbg !1869

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !1870
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !1852
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !1815
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !1819
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !1820
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !1821
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1741, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8 %128, metadata !1759, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8 %127, metadata !1758, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8 %126, metadata !1757, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %125, metadata !1743, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %124, metadata !1751, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %123, metadata !1750, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %122, metadata !1749, metadata !DIExpression()), !dbg !1810
  %130 = icmp eq i64 %125, -1, !dbg !1871
  br i1 %130, label %131, label %135, !dbg !1872

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1873
  %133 = load i8, i8* %132, align 1, !dbg !1873, !tbaa !879
  %134 = icmp eq i8 %133, 0, !dbg !1874
  br i1 %134, label %587, label %137, !dbg !1875

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1876
  br i1 %136, label %587, label %137, !dbg !1875

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1765, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i8 0, metadata !1766, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i8 0, metadata !1767, metadata !DIExpression()), !dbg !1877
  br i1 %106, label %138, label %153, !dbg !1878

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !1880
  %140 = and i1 %107, %130, !dbg !1881
  br i1 %140, label %141, label %143, !dbg !1881

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #27, !dbg !1882
  call void @llvm.dbg.value(metadata i64 %142, metadata !1743, metadata !DIExpression()), !dbg !1810
  br label %143, !dbg !1883

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !1883
  call void @llvm.dbg.value(metadata i64 %144, metadata !1743, metadata !DIExpression()), !dbg !1810
  %145 = icmp ugt i64 %139, %144, !dbg !1884
  br i1 %145, label %153, label %146, !dbg !1885

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1886
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !1887
  %149 = icmp ne i32 %148, 0, !dbg !1888
  %150 = or i1 %149, %109, !dbg !1889
  %151 = xor i1 %149, true, !dbg !1889
  %152 = zext i1 %151 to i8, !dbg !1889
  br i1 %150, label %153, label %646, !dbg !1889

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !1877
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1877
  call void @llvm.dbg.value(metadata i8 %156, metadata !1765, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i64 %154, metadata !1743, metadata !DIExpression()), !dbg !1810
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1890
  %158 = load i8, i8* %157, align 1, !dbg !1890, !tbaa !879
  call void @llvm.dbg.value(metadata i8 %158, metadata !1760, metadata !DIExpression()), !dbg !1877
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
  ], !dbg !1891

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !1892

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !1893

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1766, metadata !DIExpression()), !dbg !1877
  %162 = and i8 %126, 1, !dbg !1897
  %163 = icmp eq i8 %162, 0, !dbg !1897
  %164 = and i1 %110, %163, !dbg !1897
  br i1 %164, label %165, label %181, !dbg !1897

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !1899
  br i1 %166, label %167, label %169, !dbg !1903

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1899
  store i8 39, i8* %168, align 1, !dbg !1899, !tbaa !879
  br label %169, !dbg !1899

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !1903
  call void @llvm.dbg.value(metadata i64 %170, metadata !1750, metadata !DIExpression()), !dbg !1810
  %171 = icmp ult i64 %170, %129, !dbg !1904
  br i1 %171, label %172, label %174, !dbg !1907

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1904
  store i8 36, i8* %173, align 1, !dbg !1904, !tbaa !879
  br label %174, !dbg !1904

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !1907
  call void @llvm.dbg.value(metadata i64 %175, metadata !1750, metadata !DIExpression()), !dbg !1810
  %176 = icmp ult i64 %175, %129, !dbg !1908
  br i1 %176, label %177, label %179, !dbg !1911

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1908
  store i8 39, i8* %178, align 1, !dbg !1908, !tbaa !879
  br label %179, !dbg !1908

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !1911
  call void @llvm.dbg.value(metadata i64 %180, metadata !1750, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8 1, metadata !1757, metadata !DIExpression()), !dbg !1810
  br label %181, !dbg !1912

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !1810
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !1810
  call void @llvm.dbg.value(metadata i8 %183, metadata !1757, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %182, metadata !1750, metadata !DIExpression()), !dbg !1810
  %184 = icmp ult i64 %182, %129, !dbg !1913
  br i1 %184, label %185, label %187, !dbg !1916

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1913
  store i8 92, i8* %186, align 1, !dbg !1913, !tbaa !879
  br label %187, !dbg !1913

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1916
  call void @llvm.dbg.value(metadata i64 %188, metadata !1750, metadata !DIExpression()), !dbg !1810
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !1917
  br i1 %191, label %192, label %473, !dbg !1917

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1919
  %194 = load i8, i8* %193, align 1, !dbg !1919, !tbaa !879
  %195 = add i8 %194, -48, !dbg !1920
  %196 = icmp ult i8 %195, 10, !dbg !1920
  br i1 %196, label %197, label %473, !dbg !1920

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !1921
  br i1 %198, label %199, label %201, !dbg !1925

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1921
  store i8 48, i8* %200, align 1, !dbg !1921, !tbaa !879
  br label %201, !dbg !1921

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1925
  call void @llvm.dbg.value(metadata i64 %202, metadata !1750, metadata !DIExpression()), !dbg !1810
  %203 = icmp ult i64 %202, %129, !dbg !1926
  br i1 %203, label %204, label %206, !dbg !1929

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1926
  store i8 48, i8* %205, align 1, !dbg !1926, !tbaa !879
  br label %206, !dbg !1926

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1929
  call void @llvm.dbg.value(metadata i64 %207, metadata !1750, metadata !DIExpression()), !dbg !1810
  br label %473, !dbg !1930

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !1931

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1932

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !1933

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !1935
  br i1 %214, label %215, label %473, !dbg !1935

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !1937
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1938
  %218 = load i8, i8* %217, align 1, !dbg !1938, !tbaa !879
  %219 = icmp eq i8 %218, 63, !dbg !1939
  br i1 %219, label %220, label %473, !dbg !1940

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1941
  %222 = load i8, i8* %221, align 1, !dbg !1941, !tbaa !879
  %223 = sext i8 %222 to i32, !dbg !1941
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
  ], !dbg !1942

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !1943

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1760, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i64 undef, metadata !1749, metadata !DIExpression()), !dbg !1810
  %226 = icmp ult i64 %123, %129, !dbg !1945
  br i1 %226, label %227, label %229, !dbg !1948

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1945
  store i8 63, i8* %228, align 1, !dbg !1945, !tbaa !879
  br label %229, !dbg !1945

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !1948
  call void @llvm.dbg.value(metadata i64 %230, metadata !1750, metadata !DIExpression()), !dbg !1810
  %231 = icmp ult i64 %230, %129, !dbg !1949
  br i1 %231, label %232, label %234, !dbg !1952

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1949
  store i8 34, i8* %233, align 1, !dbg !1949, !tbaa !879
  br label %234, !dbg !1949

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !1952
  call void @llvm.dbg.value(metadata i64 %235, metadata !1750, metadata !DIExpression()), !dbg !1810
  %236 = icmp ult i64 %235, %129, !dbg !1953
  br i1 %236, label %237, label %239, !dbg !1956

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1953
  store i8 34, i8* %238, align 1, !dbg !1953, !tbaa !879
  br label %239, !dbg !1953

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !1956
  call void @llvm.dbg.value(metadata i64 %240, metadata !1750, metadata !DIExpression()), !dbg !1810
  %241 = icmp ult i64 %240, %129, !dbg !1957
  br i1 %241, label %242, label %244, !dbg !1960

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1957
  store i8 63, i8* %243, align 1, !dbg !1957, !tbaa !879
  br label %244, !dbg !1957

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !1960
  call void @llvm.dbg.value(metadata i64 %245, metadata !1750, metadata !DIExpression()), !dbg !1810
  br label %473, !dbg !1961

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1764, metadata !DIExpression()), !dbg !1877
  br label %256, !dbg !1962

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1764, metadata !DIExpression()), !dbg !1877
  br label %256, !dbg !1963

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1764, metadata !DIExpression()), !dbg !1877
  br label %254, !dbg !1964

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1764, metadata !DIExpression()), !dbg !1877
  br label %254, !dbg !1965

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1764, metadata !DIExpression()), !dbg !1877
  br label %256, !dbg !1966

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !1764, metadata !DIExpression()), !dbg !1877
  br i1 %110, label %252, label %253, !dbg !1967

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !1968

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !1971

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !1973
  call void @llvm.dbg.value(metadata i8 %255, metadata !1764, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.label(metadata !1805), !dbg !1974
  br i1 %111, label %256, label %631, !dbg !1975

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !1973
  call void @llvm.dbg.value(metadata i8 %257, metadata !1764, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.label(metadata !1806), !dbg !1977
  br i1 %102, label %495, label %473, !dbg !1978

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1979

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1980, !tbaa !879
  %261 = icmp eq i8 %260, 0, !dbg !1982
  br i1 %261, label %262, label %473, !dbg !1983

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !1984
  br i1 %263, label %264, label %473, !dbg !1986

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1767, metadata !DIExpression()), !dbg !1877
  br label %265, !dbg !1987

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !1877
  call void @llvm.dbg.value(metadata i8 %266, metadata !1767, metadata !DIExpression()), !dbg !1877
  br i1 %111, label %473, label %631, !dbg !1988

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1758, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8 1, metadata !1767, metadata !DIExpression()), !dbg !1877
  br i1 %110, label %268, label %473, !dbg !1990

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !1991

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !1994
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !1996
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !1996
  %274 = select i1 %272, i64 %129, i64 0, !dbg !1996
  call void @llvm.dbg.value(metadata i64 %274, metadata !1741, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %273, metadata !1751, metadata !DIExpression()), !dbg !1810
  %275 = icmp ult i64 %123, %274, !dbg !1997
  br i1 %275, label %276, label %278, !dbg !2000

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1997
  store i8 39, i8* %277, align 1, !dbg !1997, !tbaa !879
  br label %278, !dbg !1997

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !2000
  call void @llvm.dbg.value(metadata i64 %279, metadata !1750, metadata !DIExpression()), !dbg !1810
  %280 = icmp ult i64 %279, %274, !dbg !2001
  br i1 %280, label %281, label %283, !dbg !2004

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2001
  store i8 92, i8* %282, align 1, !dbg !2001, !tbaa !879
  br label %283, !dbg !2001

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !2004
  call void @llvm.dbg.value(metadata i64 %284, metadata !1750, metadata !DIExpression()), !dbg !1810
  %285 = icmp ult i64 %284, %274, !dbg !2005
  br i1 %285, label %286, label %288, !dbg !2008

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2005
  store i8 39, i8* %287, align 1, !dbg !2005, !tbaa !879
  br label %288, !dbg !2005

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !2008
  call void @llvm.dbg.value(metadata i64 %289, metadata !1750, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8 0, metadata !1757, metadata !DIExpression()), !dbg !1810
  br label %473, !dbg !2009

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !2010

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1768, metadata !DIExpression()), !dbg !2011
  %292 = tail call i16** @__ctype_b_loc() #30, !dbg !2012
  %293 = load i16*, i16** %292, align 8, !dbg !2012, !tbaa !723
  %294 = zext i8 %158 to i64, !dbg !2012
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2012
  %296 = load i16, i16* %295, align 2, !dbg !2012, !tbaa !998
  %297 = lshr i16 %296, 14, !dbg !2014
  %298 = trunc i16 %297 to i8, !dbg !2014
  %299 = and i8 %298, 1, !dbg !2014
  call void @llvm.dbg.value(metadata i8 %354, metadata !1771, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %355, metadata !1768, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %306, metadata !1743, metadata !DIExpression()), !dbg !1810
  %300 = icmp eq i8 %299, 0, !dbg !2015
  call void @llvm.dbg.value(metadata i1 %357, metadata !1767, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1877
  br label %359, !dbg !2016

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #26, !dbg !2017
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1772, metadata !DIExpression()), !dbg !2018
  call void @llvm.dbg.value(metadata i8* %23, metadata !2019, metadata !DIExpression()) #26, !dbg !2027
  call void @llvm.dbg.value(metadata i32 0, metadata !2025, metadata !DIExpression()) #26, !dbg !2027
  call void @llvm.dbg.value(metadata i64 8, metadata !2026, metadata !DIExpression()) #26, !dbg !2027
  store i64 0, i64* %10, align 8, !dbg !2029
  call void @llvm.dbg.value(metadata i64 0, metadata !1768, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i8 1, metadata !1771, metadata !DIExpression()), !dbg !2011
  %302 = icmp eq i64 %154, -1, !dbg !2030
  br i1 %302, label %303, label %305, !dbg !2032

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #27, !dbg !2033
  call void @llvm.dbg.value(metadata i64 %304, metadata !1743, metadata !DIExpression()), !dbg !1810
  br label %305, !dbg !2034

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !1877
  call void @llvm.dbg.value(metadata i64 %306, metadata !1743, metadata !DIExpression()), !dbg !1810
  br label %307, !dbg !2035

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !2036
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !2037
  call void @llvm.dbg.value(metadata i8 %309, metadata !1771, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %308, metadata !1768, metadata !DIExpression()), !dbg !2011
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #26, !dbg !2038
  %310 = add i64 %308, %122, !dbg !2039
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !2040
  %312 = sub i64 %306, %310, !dbg !2041
  call void @llvm.dbg.value(metadata i32* %12, metadata !1790, metadata !DIExpression(DW_OP_deref)), !dbg !2042
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #26, !dbg !2043
  call void @llvm.dbg.value(metadata i64 %313, metadata !1793, metadata !DIExpression()), !dbg !2042
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !2044

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !1768, metadata !DIExpression()), !dbg !2011
  %315 = icmp ugt i64 %306, %310, !dbg !2045
  br i1 %315, label %316, label %341, !dbg !2047

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !2048
  br label %318, !dbg !2048

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !1768, metadata !DIExpression()), !dbg !2011
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !2049
  %322 = load i8, i8* %321, align 1, !dbg !2049, !tbaa !879
  %323 = icmp eq i8 %322, 0, !dbg !2047
  br i1 %323, label %341, label %324, !dbg !2048

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !2050
  call void @llvm.dbg.value(metadata i64 %325, metadata !1768, metadata !DIExpression()), !dbg !2011
  %326 = add i64 %325, %122, !dbg !2051
  %327 = icmp ult i64 %326, %306, !dbg !2045
  br i1 %327, label %318, label %341, !dbg !2047, !llvm.loop !2052

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !2053
  call void @llvm.dbg.value(metadata i64 1, metadata !1794, metadata !DIExpression()), !dbg !2054
  br i1 %330, label %331, label %344, !dbg !2053

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !1794, metadata !DIExpression()), !dbg !2054
  %333 = add i64 %332, %310, !dbg !2055
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !2058
  %335 = load i8, i8* %334, align 1, !dbg !2058, !tbaa !879
  %336 = sext i8 %335 to i32, !dbg !2058
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !2059

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !2060
  call void @llvm.dbg.value(metadata i64 %338, metadata !1794, metadata !DIExpression()), !dbg !2054
  %339 = icmp eq i64 %338, %313, !dbg !2061
  br i1 %339, label %344, label %331, !dbg !2062, !llvm.loop !2063

340:                                              ; preds = %307
  br label %341, !dbg !2065

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1771, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 undef, metadata !1768, metadata !DIExpression()), !dbg !2011
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #26, !dbg !2065
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !2066, !tbaa !888
  call void @llvm.dbg.value(metadata i32 %345, metadata !1790, metadata !DIExpression()), !dbg !2042
  %346 = call i32 @iswprint(i32 %345) #26, !dbg !2068
  %347 = icmp eq i32 %346, 0, !dbg !2068
  %348 = select i1 %347, i8 0, i8 %309, !dbg !2069
  call void @llvm.dbg.value(metadata i8 %348, metadata !1771, metadata !DIExpression()), !dbg !2011
  %349 = add i64 %313, %308, !dbg !2070
  call void @llvm.dbg.value(metadata i64 %349, metadata !1768, metadata !DIExpression()), !dbg !2011
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #26, !dbg !2065
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #27, !dbg !2071
  %351 = icmp eq i32 %350, 0, !dbg !2072
  br i1 %351, label %307, label %353, !dbg !2073, !llvm.loop !2074

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !1771, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 undef, metadata !1768, metadata !DIExpression()), !dbg !2011
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #26, !dbg !2065
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #26, !dbg !2076
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #26, !dbg !2076
  call void @llvm.dbg.value(metadata i8 %354, metadata !1771, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %355, metadata !1768, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %306, metadata !1743, metadata !DIExpression()), !dbg !1810
  %356 = and i8 %354, 1, !dbg !2015
  %357 = icmp eq i8 %356, 0, !dbg !2015
  call void @llvm.dbg.value(metadata i1 %357, metadata !1767, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1877
  %358 = icmp ugt i64 %355, 1, !dbg !2077
  br i1 %358, label %367, label %359, !dbg !2016

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !2078
  br i1 %364, label %367, label %365, !dbg !2078

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !1877
  call void @llvm.dbg.value(metadata i8 %472, metadata !1767, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i8 %441, metadata !1766, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i8 %440, metadata !1765, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i8 %439, metadata !1760, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i8 %438, metadata !1757, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %371, metadata !1743, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %437, metadata !1750, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %375, metadata !1749, metadata !DIExpression()), !dbg !1810
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !2079
  call void @llvm.dbg.value(metadata i64 %372, metadata !1801, metadata !DIExpression()), !dbg !2080
  %373 = and i1 %102, %368
  br label %374, !dbg !2081

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !1870
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !1810
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !1819
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !1877
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !1877
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !2082
  call void @llvm.dbg.value(metadata i8 %380, metadata !1766, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i8 %379, metadata !1765, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i8 %378, metadata !1760, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i8 %377, metadata !1757, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %376, metadata !1750, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %375, metadata !1749, metadata !DIExpression()), !dbg !1810
  br i1 %373, label %381, label %427, !dbg !2083

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !2088

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !1766, metadata !DIExpression()), !dbg !1877
  %383 = and i8 %377, 1, !dbg !2091
  %384 = icmp eq i8 %383, 0, !dbg !2091
  %385 = and i1 %110, %384, !dbg !2091
  br i1 %385, label %386, label %402, !dbg !2091

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !2093
  br i1 %387, label %388, label %390, !dbg !2097

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2093
  store i8 39, i8* %389, align 1, !dbg !2093, !tbaa !879
  br label %390, !dbg !2093

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !2097
  call void @llvm.dbg.value(metadata i64 %391, metadata !1750, metadata !DIExpression()), !dbg !1810
  %392 = icmp ult i64 %391, %129, !dbg !2098
  br i1 %392, label %393, label %395, !dbg !2101

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !2098
  store i8 36, i8* %394, align 1, !dbg !2098, !tbaa !879
  br label %395, !dbg !2098

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !2101
  call void @llvm.dbg.value(metadata i64 %396, metadata !1750, metadata !DIExpression()), !dbg !1810
  %397 = icmp ult i64 %396, %129, !dbg !2102
  br i1 %397, label %398, label %400, !dbg !2105

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2102
  store i8 39, i8* %399, align 1, !dbg !2102, !tbaa !879
  br label %400, !dbg !2102

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !2105
  call void @llvm.dbg.value(metadata i64 %401, metadata !1750, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8 1, metadata !1757, metadata !DIExpression()), !dbg !1810
  br label %402, !dbg !2106

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !1810
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !1810
  call void @llvm.dbg.value(metadata i8 %404, metadata !1757, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %403, metadata !1750, metadata !DIExpression()), !dbg !1810
  %405 = icmp ult i64 %403, %129, !dbg !2107
  br i1 %405, label %406, label %408, !dbg !2110

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2107
  store i8 92, i8* %407, align 1, !dbg !2107, !tbaa !879
  br label %408, !dbg !2107

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !2110
  call void @llvm.dbg.value(metadata i64 %409, metadata !1750, metadata !DIExpression()), !dbg !1810
  %410 = icmp ult i64 %409, %129, !dbg !2111
  br i1 %410, label %411, label %415, !dbg !2114

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !2111
  %413 = or i8 %412, 48, !dbg !2111
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !2111
  store i8 %413, i8* %414, align 1, !dbg !2111, !tbaa !879
  br label %415, !dbg !2111

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !2114
  call void @llvm.dbg.value(metadata i64 %416, metadata !1750, metadata !DIExpression()), !dbg !1810
  %417 = icmp ult i64 %416, %129, !dbg !2115
  br i1 %417, label %418, label %423, !dbg !2118

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !2115
  %420 = and i8 %419, 7, !dbg !2115
  %421 = or i8 %420, 48, !dbg !2115
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !2115
  store i8 %421, i8* %422, align 1, !dbg !2115, !tbaa !879
  br label %423, !dbg !2115

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !2118
  call void @llvm.dbg.value(metadata i64 %424, metadata !1750, metadata !DIExpression()), !dbg !1810
  %425 = and i8 %378, 7, !dbg !2119
  %426 = or i8 %425, 48, !dbg !2120
  call void @llvm.dbg.value(metadata i8 %426, metadata !1760, metadata !DIExpression()), !dbg !1877
  br label %436, !dbg !2121

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !2122
  %429 = icmp eq i8 %428, 0, !dbg !2122
  br i1 %429, label %436, label %430, !dbg !2124

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !2125
  br i1 %431, label %432, label %434, !dbg !2129

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2125
  store i8 92, i8* %433, align 1, !dbg !2125, !tbaa !879
  br label %434, !dbg !2125

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !2129
  call void @llvm.dbg.value(metadata i64 %435, metadata !1750, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8 0, metadata !1765, metadata !DIExpression()), !dbg !1877
  br label %436, !dbg !2130

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !1810
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !1819
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !1877
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !1877
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !1877
  call void @llvm.dbg.value(metadata i8 %441, metadata !1766, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i8 %440, metadata !1765, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i8 %439, metadata !1760, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i8 %438, metadata !1757, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %437, metadata !1750, metadata !DIExpression()), !dbg !1810
  %442 = add i64 %375, 1, !dbg !2131
  %443 = icmp ugt i64 %372, %442, !dbg !2133
  br i1 %443, label %444, label %471, !dbg !2134

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !2135
  %446 = icmp ne i8 %445, 0, !dbg !2135
  %447 = and i8 %441, 1, !dbg !2135
  %448 = icmp eq i8 %447, 0, !dbg !2135
  %449 = and i1 %446, %448, !dbg !2135
  br i1 %449, label %450, label %461, !dbg !2135

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !2138
  br i1 %451, label %452, label %454, !dbg !2142

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !2138
  store i8 39, i8* %453, align 1, !dbg !2138, !tbaa !879
  br label %454, !dbg !2138

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !2142
  call void @llvm.dbg.value(metadata i64 %455, metadata !1750, metadata !DIExpression()), !dbg !1810
  %456 = icmp ult i64 %455, %129, !dbg !2143
  br i1 %456, label %457, label %459, !dbg !2146

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !2143
  store i8 39, i8* %458, align 1, !dbg !2143, !tbaa !879
  br label %459, !dbg !2143

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !2146
  call void @llvm.dbg.value(metadata i64 %460, metadata !1750, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8 0, metadata !1757, metadata !DIExpression()), !dbg !1810
  br label %461, !dbg !2147

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !2148
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !1810
  call void @llvm.dbg.value(metadata i8 %463, metadata !1757, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %462, metadata !1750, metadata !DIExpression()), !dbg !1810
  %464 = icmp ult i64 %462, %129, !dbg !2149
  br i1 %464, label %465, label %467, !dbg !2152

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !2149
  store i8 %439, i8* %466, align 1, !dbg !2149, !tbaa !879
  br label %467, !dbg !2149

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !2152
  call void @llvm.dbg.value(metadata i64 %468, metadata !1750, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %442, metadata !1749, metadata !DIExpression()), !dbg !1810
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !2153
  %470 = load i8, i8* %469, align 1, !dbg !2153, !tbaa !879
  call void @llvm.dbg.value(metadata i8 %470, metadata !1760, metadata !DIExpression()), !dbg !1877
  br label %374, !dbg !2154, !llvm.loop !2155

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !1877
  call void @llvm.dbg.value(metadata i8 %472, metadata !1767, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i8 %441, metadata !1766, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i8 %440, metadata !1765, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i8 %439, metadata !1760, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i8 %438, metadata !1757, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %371, metadata !1743, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %437, metadata !1750, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %375, metadata !1749, metadata !DIExpression()), !dbg !1810
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !1870
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !1810
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !1815
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !2158
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !1810
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !1810
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !1877
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !1877
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !1877
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !1741, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8 %482, metadata !1767, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i8 %481, metadata !1766, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i8 %156, metadata !1765, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i8 %480, metadata !1760, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i8 %479, metadata !1758, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8 %478, metadata !1757, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %477, metadata !1743, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %476, metadata !1751, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %475, metadata !1750, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %474, metadata !1749, metadata !DIExpression()), !dbg !1810
  br i1 %116, label %494, label %484, !dbg !2159

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !2161
  %486 = zext i8 %485 to i64, !dbg !2161
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !2162
  %488 = load i32, i32* %487, align 4, !dbg !2162, !tbaa !888
  %489 = and i8 %480, 31, !dbg !2163
  %490 = zext i8 %489 to i32, !dbg !2163
  %491 = shl nuw i32 1, %490, !dbg !2164
  %492 = and i32 %488, %491, !dbg !2164
  %493 = icmp eq i32 %492, 0, !dbg !2164
  br i1 %493, label %494, label %495, !dbg !2165

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !2166

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !2167
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !1810
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !1815
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !2158
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !1819
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !1820
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !1877
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !1877
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !1741, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8 %503, metadata !1767, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i8 %502, metadata !1760, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i8 %501, metadata !1758, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8 %500, metadata !1757, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %499, metadata !1743, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %498, metadata !1751, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %497, metadata !1750, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %496, metadata !1749, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.label(metadata !1807), !dbg !2168
  br i1 %109, label %505, label %635, !dbg !2169

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !1766, metadata !DIExpression()), !dbg !1877
  %506 = and i8 %500, 1, !dbg !2171
  %507 = icmp eq i8 %506, 0, !dbg !2171
  %508 = and i1 %110, %507, !dbg !2171
  br i1 %508, label %509, label %525, !dbg !2171

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !2173
  br i1 %510, label %511, label %513, !dbg !2177

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !2173
  store i8 39, i8* %512, align 1, !dbg !2173, !tbaa !879
  br label %513, !dbg !2173

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !2177
  call void @llvm.dbg.value(metadata i64 %514, metadata !1750, metadata !DIExpression()), !dbg !1810
  %515 = icmp ult i64 %514, %504, !dbg !2178
  br i1 %515, label %516, label %518, !dbg !2181

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !2178
  store i8 36, i8* %517, align 1, !dbg !2178, !tbaa !879
  br label %518, !dbg !2178

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !2181
  call void @llvm.dbg.value(metadata i64 %519, metadata !1750, metadata !DIExpression()), !dbg !1810
  %520 = icmp ult i64 %519, %504, !dbg !2182
  br i1 %520, label %521, label %523, !dbg !2185

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2182
  store i8 39, i8* %522, align 1, !dbg !2182, !tbaa !879
  br label %523, !dbg !2182

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !2185
  call void @llvm.dbg.value(metadata i64 %524, metadata !1750, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8 1, metadata !1757, metadata !DIExpression()), !dbg !1810
  br label %525, !dbg !2186

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !1877
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !1810
  call void @llvm.dbg.value(metadata i8 %527, metadata !1757, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %526, metadata !1750, metadata !DIExpression()), !dbg !1810
  %528 = icmp ult i64 %526, %504, !dbg !2187
  br i1 %528, label %529, label %531, !dbg !2190

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2187
  store i8 92, i8* %530, align 1, !dbg !2187, !tbaa !879
  br label %531, !dbg !2187

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !2190
  call void @llvm.dbg.value(metadata i64 %543, metadata !1741, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8 %542, metadata !1767, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i8 %541, metadata !1766, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i8 %540, metadata !1760, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i8 %539, metadata !1758, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8 %538, metadata !1757, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %537, metadata !1743, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %536, metadata !1751, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %535, metadata !1750, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %534, metadata !1749, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.label(metadata !1808), !dbg !2191
  br label %560, !dbg !2192

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !2167
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !1810
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !1815
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !2158
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !1819
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !1820
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !2195
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1877
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1877
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !1741, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8 %542, metadata !1767, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i8 %541, metadata !1766, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i8 %540, metadata !1760, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i8 %539, metadata !1758, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8 %538, metadata !1757, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %537, metadata !1743, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %536, metadata !1751, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %535, metadata !1750, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %534, metadata !1749, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.label(metadata !1808), !dbg !2191
  %544 = and i8 %538, 1, !dbg !2192
  %545 = icmp ne i8 %544, 0, !dbg !2192
  %546 = and i8 %541, 1, !dbg !2192
  %547 = icmp eq i8 %546, 0, !dbg !2192
  %548 = and i1 %545, %547, !dbg !2192
  br i1 %548, label %549, label %560, !dbg !2192

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !2196
  br i1 %550, label %551, label %553, !dbg !2200

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !2196
  store i8 39, i8* %552, align 1, !dbg !2196, !tbaa !879
  br label %553, !dbg !2196

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !2200
  call void @llvm.dbg.value(metadata i64 %554, metadata !1750, metadata !DIExpression()), !dbg !1810
  %555 = icmp ult i64 %554, %543, !dbg !2201
  br i1 %555, label %556, label %558, !dbg !2204

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !2201
  store i8 39, i8* %557, align 1, !dbg !2201, !tbaa !879
  br label %558, !dbg !2201

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !2204
  call void @llvm.dbg.value(metadata i64 %559, metadata !1750, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8 0, metadata !1757, metadata !DIExpression()), !dbg !1810
  br label %560, !dbg !2205

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !1877
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !1810
  call void @llvm.dbg.value(metadata i8 %569, metadata !1757, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %568, metadata !1750, metadata !DIExpression()), !dbg !1810
  %570 = icmp ult i64 %568, %561, !dbg !2206
  br i1 %570, label %571, label %573, !dbg !2209

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !2206
  store i8 %563, i8* %572, align 1, !dbg !2206, !tbaa !879
  br label %573, !dbg !2206

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !2209
  call void @llvm.dbg.value(metadata i64 %574, metadata !1750, metadata !DIExpression()), !dbg !1810
  %575 = icmp eq i8 %562, 0, !dbg !2210
  %576 = select i1 %575, i8 0, i8 %128, !dbg !2212
  call void @llvm.dbg.value(metadata i8 %576, metadata !1759, metadata !DIExpression()), !dbg !1810
  br label %577, !dbg !2213

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !2167
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !1810
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !1815
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !2158
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !1819
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !1810
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !1821
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !1741, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8 %584, metadata !1759, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8 %583, metadata !1758, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8 %582, metadata !1757, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %581, metadata !1743, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %580, metadata !1751, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %579, metadata !1750, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %578, metadata !1749, metadata !DIExpression()), !dbg !1810
  %586 = add i64 %578, 1, !dbg !2214
  call void @llvm.dbg.value(metadata i64 %586, metadata !1749, metadata !DIExpression()), !dbg !1810
  br label %121, !dbg !2215, !llvm.loop !2216

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !2218
  %590 = and i1 %110, %589, !dbg !2220
  %591 = xor i1 %590, true, !dbg !2220
  %592 = or i1 %109, %591, !dbg !2220
  br i1 %592, label %593, label %635, !dbg !2220

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !2221
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !2221
  br i1 %597, label %598, label %607, !dbg !2221

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !2223
  %600 = icmp eq i8 %599, 0, !dbg !2223
  br i1 %600, label %603, label %601, !dbg !2226

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2227
  br label %652, !dbg !2228

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !2229
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !2231
  br i1 %606, label %26, label %607, !dbg !2231

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !2232
  %610 = and i1 %609, %608, !dbg !2234
  br i1 %610, label %611, label %626, !dbg !2234

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !1752, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %123, metadata !1750, metadata !DIExpression()), !dbg !1810
  %612 = load i8, i8* %97, align 1, !dbg !2235, !tbaa !879
  %613 = icmp eq i8 %612, 0, !dbg !2238
  br i1 %613, label %626, label %614, !dbg !2238

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !1752, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %617, metadata !1750, metadata !DIExpression()), !dbg !1810
  %618 = icmp ult i64 %617, %129, !dbg !2239
  br i1 %618, label %619, label %621, !dbg !2242

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !2239
  store i8 %615, i8* %620, align 1, !dbg !2239, !tbaa !879
  br label %621, !dbg !2239

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !2242
  call void @llvm.dbg.value(metadata i64 %622, metadata !1750, metadata !DIExpression()), !dbg !1810
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !2243
  call void @llvm.dbg.value(metadata i8* %623, metadata !1752, metadata !DIExpression()), !dbg !1810
  %624 = load i8, i8* %623, align 1, !dbg !2235, !tbaa !879
  %625 = icmp eq i8 %624, 0, !dbg !2238
  br i1 %625, label %626, label %614, !dbg !2238, !llvm.loop !2244

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !1852
  call void @llvm.dbg.value(metadata i64 %627, metadata !1750, metadata !DIExpression()), !dbg !1810
  %628 = icmp ult i64 %627, %129, !dbg !2246
  br i1 %628, label %629, label %652, !dbg !2248

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !2249
  store i8 0, i8* %630, align 1, !dbg !2250, !tbaa !879
  br label %652, !dbg !2249

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1741, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %637, metadata !1743, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.label(metadata !1809), !dbg !2251
  %633 = icmp eq i8 %101, 0, !dbg !2252
  %634 = select i1 %633, i32 2, i32 4, !dbg !2252
  br label %642, !dbg !2252

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1741, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i64 %637, metadata !1743, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.label(metadata !1809), !dbg !2251
  %639 = icmp eq i32 %93, 2, !dbg !2254
  %640 = icmp eq i8 %636, 0, !dbg !2252
  %641 = select i1 %640, i32 2, i32 4, !dbg !2252
  br i1 %639, label %642, label %646, !dbg !2252

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !2252

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !1744, metadata !DIExpression()), !dbg !1810
  %650 = and i32 %5, -3, !dbg !2255
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !2256
  br label %652, !dbg !2257

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !2258
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2259 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2263, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i32 %1, metadata !2264, metadata !DIExpression()), !dbg !2267
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #26, !dbg !2268
  call void @llvm.dbg.value(metadata i8* %3, metadata !2265, metadata !DIExpression()), !dbg !2267
  %4 = icmp eq i8* %3, %0, !dbg !2269
  br i1 %4, label %5, label %72, !dbg !2271

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #26, !dbg !2272
  call void @llvm.dbg.value(metadata i8* %6, metadata !2266, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i8* %6, metadata !2273, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8* undef, metadata !2279, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8 85, metadata !2280, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8 84, metadata !2281, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8 70, metadata !2282, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8 45, metadata !2283, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8 56, metadata !2284, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8 0, metadata !2285, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8 0, metadata !2286, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8 0, metadata !2287, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8 0, metadata !2288, metadata !DIExpression()), !dbg !2289
  %7 = load i8, i8* %6, align 1, !dbg !2292, !tbaa !879
  %8 = and i8 %7, -33, !dbg !2292
  %9 = sext i8 %8 to i32, !dbg !2292
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !2292

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2294, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8* undef, metadata !2299, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8 84, metadata !2300, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8 70, metadata !2301, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8 45, metadata !2302, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8 56, metadata !2303, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8 0, metadata !2304, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8 0, metadata !2305, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8 0, metadata !2306, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8 0, metadata !2307, metadata !DIExpression()), !dbg !2308
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2312
  %12 = load i8, i8* %11, align 1, !dbg !2312, !tbaa !879
  %13 = and i8 %12, -33, !dbg !2312
  %14 = icmp eq i8 %13, 84, !dbg !2312
  br i1 %14, label %15, label %69, !dbg !2312

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !2314, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i8* undef, metadata !2319, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i8 70, metadata !2320, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i8 45, metadata !2321, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i8 56, metadata !2322, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i8 0, metadata !2323, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i8 0, metadata !2324, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i8 0, metadata !2325, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i8 0, metadata !2326, metadata !DIExpression()), !dbg !2327
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2331
  %17 = load i8, i8* %16, align 1, !dbg !2331, !tbaa !879
  %18 = and i8 %17, -33, !dbg !2331
  %19 = icmp eq i8 %18, 70, !dbg !2331
  br i1 %19, label %20, label %69, !dbg !2331

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !2333, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8* undef, metadata !2338, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8 45, metadata !2339, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8 56, metadata !2340, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8 0, metadata !2341, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8 0, metadata !2342, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8 0, metadata !2343, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8 0, metadata !2344, metadata !DIExpression()), !dbg !2345
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2349
  %22 = load i8, i8* %21, align 1, !dbg !2349, !tbaa !879
  %23 = icmp eq i8 %22, 45, !dbg !2349
  br i1 %23, label %24, label %69, !dbg !2351

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !2352, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i8* undef, metadata !2357, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i8 56, metadata !2358, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i8 0, metadata !2359, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i8 0, metadata !2360, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i8 0, metadata !2361, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i8 0, metadata !2362, metadata !DIExpression()), !dbg !2363
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2367
  %26 = load i8, i8* %25, align 1, !dbg !2367, !tbaa !879
  %27 = icmp eq i8 %26, 56, !dbg !2367
  br i1 %27, label %28, label %69, !dbg !2369

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !2370, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata i8* undef, metadata !2375, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata i8 0, metadata !2376, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata i8 0, metadata !2377, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata i8 0, metadata !2378, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata i8 0, metadata !2379, metadata !DIExpression()), !dbg !2380
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2384
  %30 = load i8, i8* %29, align 1, !dbg !2384, !tbaa !879
  %31 = icmp eq i8 %30, 0, !dbg !2384
  br i1 %31, label %32, label %69, !dbg !2386

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !2387, !tbaa !879
  %34 = icmp eq i8 %33, 96, !dbg !2388
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.68, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.69, i64 0, i64 0), !dbg !2387
  br label %72, !dbg !2389

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2294, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8* undef, metadata !2299, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8 66, metadata !2300, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8 49, metadata !2301, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8 56, metadata !2302, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8 48, metadata !2303, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8 51, metadata !2304, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8 48, metadata !2305, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8 0, metadata !2306, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8 0, metadata !2307, metadata !DIExpression()), !dbg !2390
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2394
  %38 = load i8, i8* %37, align 1, !dbg !2394, !tbaa !879
  %39 = and i8 %38, -33, !dbg !2394
  %40 = icmp eq i8 %39, 66, !dbg !2394
  br i1 %40, label %41, label %69, !dbg !2394

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !2314, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i8* undef, metadata !2319, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i8 49, metadata !2320, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i8 56, metadata !2321, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i8 48, metadata !2322, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i8 51, metadata !2323, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i8 48, metadata !2324, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i8 0, metadata !2325, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i8 0, metadata !2326, metadata !DIExpression()), !dbg !2395
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2397
  %43 = load i8, i8* %42, align 1, !dbg !2397, !tbaa !879
  %44 = icmp eq i8 %43, 49, !dbg !2397
  br i1 %44, label %45, label %69, !dbg !2398

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !2333, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i8* undef, metadata !2338, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i8 56, metadata !2339, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i8 48, metadata !2340, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i8 51, metadata !2341, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i8 48, metadata !2342, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i8 0, metadata !2343, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i8 0, metadata !2344, metadata !DIExpression()), !dbg !2399
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2401
  %47 = load i8, i8* %46, align 1, !dbg !2401, !tbaa !879
  %48 = icmp eq i8 %47, 56, !dbg !2401
  br i1 %48, label %49, label %69, !dbg !2402

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !2352, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i8* undef, metadata !2357, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i8 48, metadata !2358, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i8 51, metadata !2359, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i8 48, metadata !2360, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i8 0, metadata !2361, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i8 0, metadata !2362, metadata !DIExpression()), !dbg !2403
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2405
  %51 = load i8, i8* %50, align 1, !dbg !2405, !tbaa !879
  %52 = icmp eq i8 %51, 48, !dbg !2405
  br i1 %52, label %53, label %69, !dbg !2406

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !2370, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata i8* undef, metadata !2375, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata i8 51, metadata !2376, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata i8 48, metadata !2377, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata i8 0, metadata !2378, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata i8 0, metadata !2379, metadata !DIExpression()), !dbg !2407
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2409
  %55 = load i8, i8* %54, align 1, !dbg !2409, !tbaa !879
  %56 = icmp eq i8 %55, 51, !dbg !2409
  br i1 %56, label %57, label %69, !dbg !2410

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !2411, metadata !DIExpression()), !dbg !2420
  call void @llvm.dbg.value(metadata i8* undef, metadata !2416, metadata !DIExpression()), !dbg !2420
  call void @llvm.dbg.value(metadata i8 48, metadata !2417, metadata !DIExpression()), !dbg !2420
  call void @llvm.dbg.value(metadata i8 0, metadata !2418, metadata !DIExpression()), !dbg !2420
  call void @llvm.dbg.value(metadata i8 0, metadata !2419, metadata !DIExpression()), !dbg !2420
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2424
  %59 = load i8, i8* %58, align 1, !dbg !2424, !tbaa !879
  %60 = icmp eq i8 %59, 48, !dbg !2424
  br i1 %60, label %61, label %69, !dbg !2426

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !2427, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i8* undef, metadata !2432, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i8 0, metadata !2433, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i8 0, metadata !2434, metadata !DIExpression()), !dbg !2435
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2439
  %63 = load i8, i8* %62, align 1, !dbg !2439, !tbaa !879
  %64 = icmp eq i8 %63, 0, !dbg !2439
  br i1 %64, label %65, label %69, !dbg !2441

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !2442, !tbaa !879
  %67 = icmp eq i8 %66, 96, !dbg !2443
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.70, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.71, i64 0, i64 0), !dbg !2442
  br label %72, !dbg !2444

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !2445
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), !dbg !2446
  br label %72, !dbg !2447

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !2267
  ret i8* %73, !dbg !2448
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #17

; Function Attrs: nounwind
declare !dbg !2449 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !2453 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2459 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2463, metadata !DIExpression()), !dbg !2466
  call void @llvm.dbg.value(metadata i64 %1, metadata !2464, metadata !DIExpression()), !dbg !2466
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2465, metadata !DIExpression()), !dbg !2466
  call void @llvm.dbg.value(metadata i8* %0, metadata !2467, metadata !DIExpression()) #26, !dbg !2480
  call void @llvm.dbg.value(metadata i64 %1, metadata !2472, metadata !DIExpression()) #26, !dbg !2480
  call void @llvm.dbg.value(metadata i64* null, metadata !2473, metadata !DIExpression()) #26, !dbg !2480
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2474, metadata !DIExpression()) #26, !dbg !2480
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2482
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2482
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2475, metadata !DIExpression()) #26, !dbg !2480
  %6 = tail call i32* @__errno_location() #30, !dbg !2483
  %7 = load i32, i32* %6, align 4, !dbg !2483, !tbaa !888
  call void @llvm.dbg.value(metadata i32 %7, metadata !2476, metadata !DIExpression()) #26, !dbg !2480
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2484
  %9 = load i32, i32* %8, align 4, !dbg !2484, !tbaa !1684
  %10 = or i32 %9, 1, !dbg !2485
  call void @llvm.dbg.value(metadata i32 %10, metadata !2477, metadata !DIExpression()) #26, !dbg !2480
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2486
  %12 = load i32, i32* %11, align 8, !dbg !2486, !tbaa !1633
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2487
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2488
  %15 = load i8*, i8** %14, align 8, !dbg !2488, !tbaa !1706
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2489
  %17 = load i8*, i8** %16, align 8, !dbg !2489, !tbaa !1709
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #26, !dbg !2490
  %19 = add i64 %18, 1, !dbg !2491
  call void @llvm.dbg.value(metadata i64 %19, metadata !2478, metadata !DIExpression()) #26, !dbg !2480
  call void @llvm.dbg.value(metadata i64 %19, metadata !2492, metadata !DIExpression()) #26, !dbg !2497
  %20 = tail call noalias i8* @xmalloc(i64 %19) #26, !dbg !2499
  call void @llvm.dbg.value(metadata i8* %20, metadata !2479, metadata !DIExpression()) #26, !dbg !2480
  %21 = load i32, i32* %11, align 8, !dbg !2500, !tbaa !1633
  %22 = load i8*, i8** %14, align 8, !dbg !2501, !tbaa !1706
  %23 = load i8*, i8** %16, align 8, !dbg !2502, !tbaa !1709
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #26, !dbg !2503
  store i32 %7, i32* %6, align 4, !dbg !2504, !tbaa !888
  ret i8* %20, !dbg !2505
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2468 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2467, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata i64 %1, metadata !2472, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata i64* %2, metadata !2473, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2474, metadata !DIExpression()), !dbg !2506
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2507
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2507
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2475, metadata !DIExpression()), !dbg !2506
  %7 = tail call i32* @__errno_location() #30, !dbg !2508
  %8 = load i32, i32* %7, align 4, !dbg !2508, !tbaa !888
  call void @llvm.dbg.value(metadata i32 %8, metadata !2476, metadata !DIExpression()), !dbg !2506
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2509
  %10 = load i32, i32* %9, align 4, !dbg !2509, !tbaa !1684
  %11 = icmp eq i64* %2, null, !dbg !2510
  %12 = zext i1 %11 to i32, !dbg !2510
  %13 = or i32 %10, %12, !dbg !2511
  call void @llvm.dbg.value(metadata i32 %13, metadata !2477, metadata !DIExpression()), !dbg !2506
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2512
  %15 = load i32, i32* %14, align 8, !dbg !2512, !tbaa !1633
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2513
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2514
  %18 = load i8*, i8** %17, align 8, !dbg !2514, !tbaa !1706
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2515
  %20 = load i8*, i8** %19, align 8, !dbg !2515, !tbaa !1709
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !2516
  %22 = add i64 %21, 1, !dbg !2517
  call void @llvm.dbg.value(metadata i64 %22, metadata !2478, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata i64 %22, metadata !2492, metadata !DIExpression()) #26, !dbg !2518
  %23 = tail call noalias i8* @xmalloc(i64 %22) #26, !dbg !2520
  call void @llvm.dbg.value(metadata i8* %23, metadata !2479, metadata !DIExpression()), !dbg !2506
  %24 = load i32, i32* %14, align 8, !dbg !2521, !tbaa !1633
  %25 = load i8*, i8** %17, align 8, !dbg !2522, !tbaa !1706
  %26 = load i8*, i8** %19, align 8, !dbg !2523, !tbaa !1709
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !2524
  store i32 %8, i32* %7, align 4, !dbg !2525, !tbaa !888
  br i1 %11, label %29, label %28, !dbg !2526

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2527, !tbaa !920
  br label %29, !dbg !2529

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2530
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2531 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2535, !tbaa !723
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2533, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i32 1, metadata !2534, metadata !DIExpression()), !dbg !2536
  %2 = load i32, i32* @nslots, align 4, !dbg !2537, !tbaa !888
  %3 = icmp sgt i32 %2, 1, !dbg !2540
  br i1 %3, label %4, label %12, !dbg !2541

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2540
  br label %6, !dbg !2541

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !2534, metadata !DIExpression()), !dbg !2536
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !2542
  %9 = load i8*, i8** %8, align 8, !dbg !2542, !tbaa !2543
  tail call void @free(i8* %9) #26, !dbg !2545
  %10 = add nuw nsw i64 %7, 1, !dbg !2546
  call void @llvm.dbg.value(metadata i64 %10, metadata !2534, metadata !DIExpression()), !dbg !2536
  %11 = icmp eq i64 %10, %5, !dbg !2540
  br i1 %11, label %12, label %6, !dbg !2541, !llvm.loop !2547

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2549
  %14 = load i8*, i8** %13, align 8, !dbg !2549, !tbaa !2543
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2551
  br i1 %15, label %17, label %16, !dbg !2552

16:                                               ; preds = %12
  tail call void @free(i8* %14) #26, !dbg !2553
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2555, !tbaa !2556
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2557, !tbaa !2543
  br label %17, !dbg !2558

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2559
  br i1 %18, label %21, label %19, !dbg !2561

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2562
  tail call void @free(i8* %20) #26, !dbg !2564
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2565, !tbaa !723
  br label %21, !dbg !2566

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2567, !tbaa !888
  ret void, !dbg !2568
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2569 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2571, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8* %1, metadata !2572, metadata !DIExpression()), !dbg !2573
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2574
  ret i8* %3, !dbg !2575
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2576 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2580, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i8* %1, metadata !2581, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i64 %2, metadata !2582, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2583, metadata !DIExpression()), !dbg !2595
  %5 = tail call i32* @__errno_location() #30, !dbg !2596
  %6 = load i32, i32* %5, align 4, !dbg !2596, !tbaa !888
  call void @llvm.dbg.value(metadata i32 %6, metadata !2584, metadata !DIExpression()), !dbg !2595
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2597, !tbaa !723
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2585, metadata !DIExpression()), !dbg !2595
  %8 = icmp slt i32 %0, 0, !dbg !2598
  br i1 %8, label %9, label %10, !dbg !2600

9:                                                ; preds = %4
  tail call void @abort() #28, !dbg !2601
  unreachable, !dbg !2601

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2602, !tbaa !888
  %12 = icmp sgt i32 %11, %0, !dbg !2603
  br i1 %12, label %34, label %13, !dbg !2604

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2605
  call void @llvm.dbg.value(metadata i1 %14, metadata !2586, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2606
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2589, metadata !DIExpression()), !dbg !2606
  %15 = icmp eq i32 %0, 2147483647, !dbg !2607
  br i1 %15, label %16, label %17, !dbg !2609

16:                                               ; preds = %13
  tail call void @xalloc_die() #28, !dbg !2610
  unreachable, !dbg !2610

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2611
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2611
  %20 = add nuw nsw i32 %0, 1, !dbg !2612
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !2613
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #26, !dbg !2614
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2614
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2585, metadata !DIExpression()), !dbg !2595
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2615, !tbaa !723
  br i1 %14, label %25, label %26, !dbg !2616

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2617, !tbaa.struct !2619
  br label %26, !dbg !2620

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2621, !tbaa !888
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2622
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2623
  %31 = sub nsw i32 %20, %27, !dbg !2624
  %32 = sext i32 %31 to i64, !dbg !2625
  %33 = shl nsw i64 %32, 4, !dbg !2626
  call void @llvm.dbg.value(metadata i8* %30, metadata !2019, metadata !DIExpression()) #26, !dbg !2627
  call void @llvm.dbg.value(metadata i32 0, metadata !2025, metadata !DIExpression()) #26, !dbg !2627
  call void @llvm.dbg.value(metadata i64 %33, metadata !2026, metadata !DIExpression()) #26, !dbg !2627
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #26, !dbg !2629
  store i32 %20, i32* @nslots, align 4, !dbg !2630, !tbaa !888
  br label %34, !dbg !2631

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2595
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2585, metadata !DIExpression()), !dbg !2595
  %36 = zext i32 %0 to i64, !dbg !2632
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2633
  %38 = load i64, i64* %37, align 8, !dbg !2633, !tbaa !2556
  call void @llvm.dbg.value(metadata i64 %38, metadata !2590, metadata !DIExpression()), !dbg !2634
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2635
  %40 = load i8*, i8** %39, align 8, !dbg !2635, !tbaa !2543
  call void @llvm.dbg.value(metadata i8* %40, metadata !2592, metadata !DIExpression()), !dbg !2634
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2636
  %42 = load i32, i32* %41, align 4, !dbg !2636, !tbaa !1684
  %43 = or i32 %42, 1, !dbg !2637
  call void @llvm.dbg.value(metadata i32 %43, metadata !2593, metadata !DIExpression()), !dbg !2634
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2638
  %45 = load i32, i32* %44, align 8, !dbg !2638, !tbaa !1633
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2639
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2640
  %48 = load i8*, i8** %47, align 8, !dbg !2640, !tbaa !1706
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2641
  %50 = load i8*, i8** %49, align 8, !dbg !2641, !tbaa !1709
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2642
  call void @llvm.dbg.value(metadata i64 %51, metadata !2594, metadata !DIExpression()), !dbg !2634
  %52 = icmp ugt i64 %38, %51, !dbg !2643
  br i1 %52, label %63, label %53, !dbg !2645

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2646
  call void @llvm.dbg.value(metadata i64 %54, metadata !2590, metadata !DIExpression()), !dbg !2634
  store i64 %54, i64* %37, align 8, !dbg !2648, !tbaa !2556
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2649
  br i1 %55, label %57, label %56, !dbg !2651

56:                                               ; preds = %53
  tail call void @free(i8* %40) #26, !dbg !2652
  br label %57, !dbg !2652

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !2492, metadata !DIExpression()) #26, !dbg !2653
  %58 = tail call noalias i8* @xmalloc(i64 %54) #26, !dbg !2655
  call void @llvm.dbg.value(metadata i8* %58, metadata !2592, metadata !DIExpression()), !dbg !2634
  store i8* %58, i8** %39, align 8, !dbg !2656, !tbaa !2543
  %59 = load i32, i32* %44, align 8, !dbg !2657, !tbaa !1633
  %60 = load i8*, i8** %47, align 8, !dbg !2658, !tbaa !1706
  %61 = load i8*, i8** %49, align 8, !dbg !2659, !tbaa !1709
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2660
  br label %63, !dbg !2661

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2634
  call void @llvm.dbg.value(metadata i8* %64, metadata !2592, metadata !DIExpression()), !dbg !2634
  store i32 %6, i32* %5, align 4, !dbg !2662, !tbaa !888
  ret i8* %64, !dbg !2663
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2664 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2668, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i8* %1, metadata !2669, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i64 %2, metadata !2670, metadata !DIExpression()), !dbg !2671
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2672
  ret i8* %4, !dbg !2673
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2674 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2676, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata i32 0, metadata !2571, metadata !DIExpression()) #26, !dbg !2678
  call void @llvm.dbg.value(metadata i8* %0, metadata !2572, metadata !DIExpression()) #26, !dbg !2678
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #26, !dbg !2680
  ret i8* %2, !dbg !2681
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2682 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2686, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %1, metadata !2687, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i32 0, metadata !2668, metadata !DIExpression()) #26, !dbg !2689
  call void @llvm.dbg.value(metadata i8* %0, metadata !2669, metadata !DIExpression()) #26, !dbg !2689
  call void @llvm.dbg.value(metadata i64 %1, metadata !2670, metadata !DIExpression()) #26, !dbg !2689
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #26, !dbg !2691
  ret i8* %3, !dbg !2692
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2693 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2697, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i32 %1, metadata !2698, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %2, metadata !2699, metadata !DIExpression()), !dbg !2701
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2702
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2702
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2700, metadata !DIExpression()), !dbg !2703
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2704), !dbg !2707
  call void @llvm.dbg.value(metadata i32 %1, metadata !2708, metadata !DIExpression()) #26, !dbg !2714
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2713, metadata !DIExpression()) #26, !dbg !2716
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #26, !dbg !2716, !alias.scope !2704
  %6 = icmp eq i32 %1, 10, !dbg !2717
  br i1 %6, label %7, label %8, !dbg !2719

7:                                                ; preds = %3
  tail call void @abort() #28, !dbg !2720, !noalias !2704
  unreachable, !dbg !2720

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2721
  store i32 %1, i32* %9, align 8, !dbg !2722, !tbaa !1633, !alias.scope !2704
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2723
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2724
  ret i8* %10, !dbg !2725
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2726 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2730, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i32 %1, metadata !2731, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i8* %2, metadata !2732, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i64 %3, metadata !2733, metadata !DIExpression()), !dbg !2735
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2736
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2736
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2734, metadata !DIExpression()), !dbg !2737
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2738), !dbg !2741
  call void @llvm.dbg.value(metadata i32 %1, metadata !2708, metadata !DIExpression()) #26, !dbg !2742
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2713, metadata !DIExpression()) #26, !dbg !2744
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #26, !dbg !2744, !alias.scope !2738
  %7 = icmp eq i32 %1, 10, !dbg !2745
  br i1 %7, label %8, label %9, !dbg !2746

8:                                                ; preds = %4
  tail call void @abort() #28, !dbg !2747, !noalias !2738
  unreachable, !dbg !2747

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2748
  store i32 %1, i32* %10, align 8, !dbg !2749, !tbaa !1633, !alias.scope !2738
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2750
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2751
  ret i8* %11, !dbg !2752
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2753 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2757, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i8* %1, metadata !2758, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i32 0, metadata !2697, metadata !DIExpression()) #26, !dbg !2760
  call void @llvm.dbg.value(metadata i32 %0, metadata !2698, metadata !DIExpression()) #26, !dbg !2760
  call void @llvm.dbg.value(metadata i8* %1, metadata !2699, metadata !DIExpression()) #26, !dbg !2760
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2762
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2762
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2700, metadata !DIExpression()) #26, !dbg !2763
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2764) #26, !dbg !2767
  call void @llvm.dbg.value(metadata i32 %0, metadata !2708, metadata !DIExpression()) #26, !dbg !2768
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2713, metadata !DIExpression()) #26, !dbg !2770
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #26, !dbg !2770, !alias.scope !2764
  %5 = icmp eq i32 %0, 10, !dbg !2771
  br i1 %5, label %6, label %7, !dbg !2772

6:                                                ; preds = %2
  tail call void @abort() #28, !dbg !2773, !noalias !2764
  unreachable, !dbg !2773

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2774
  store i32 %0, i32* %8, align 8, !dbg !2775, !tbaa !1633, !alias.scope !2764
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #26, !dbg !2776
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2777
  ret i8* %9, !dbg !2778
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2779 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2783, metadata !DIExpression()), !dbg !2786
  call void @llvm.dbg.value(metadata i8* %1, metadata !2784, metadata !DIExpression()), !dbg !2786
  call void @llvm.dbg.value(metadata i64 %2, metadata !2785, metadata !DIExpression()), !dbg !2786
  call void @llvm.dbg.value(metadata i32 0, metadata !2730, metadata !DIExpression()) #26, !dbg !2787
  call void @llvm.dbg.value(metadata i32 %0, metadata !2731, metadata !DIExpression()) #26, !dbg !2787
  call void @llvm.dbg.value(metadata i8* %1, metadata !2732, metadata !DIExpression()) #26, !dbg !2787
  call void @llvm.dbg.value(metadata i64 %2, metadata !2733, metadata !DIExpression()) #26, !dbg !2787
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2789
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2789
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2734, metadata !DIExpression()) #26, !dbg !2790
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2791) #26, !dbg !2794
  call void @llvm.dbg.value(metadata i32 %0, metadata !2708, metadata !DIExpression()) #26, !dbg !2795
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2713, metadata !DIExpression()) #26, !dbg !2797
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #26, !dbg !2797, !alias.scope !2791
  %6 = icmp eq i32 %0, 10, !dbg !2798
  br i1 %6, label %7, label %8, !dbg !2799

7:                                                ; preds = %3
  tail call void @abort() #28, !dbg !2800, !noalias !2791
  unreachable, !dbg !2800

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2801
  store i32 %0, i32* %9, align 8, !dbg !2802, !tbaa !1633, !alias.scope !2791
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #26, !dbg !2803
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2804
  ret i8* %10, !dbg !2805
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2806 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2810, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i64 %1, metadata !2811, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i8 %2, metadata !2812, metadata !DIExpression()), !dbg !2814
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2815
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2815
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2813, metadata !DIExpression()), !dbg !2816
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2817, !tbaa.struct !2818
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1651, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata i8 %2, metadata !1652, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata i32 1, metadata !1653, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata i8 %2, metadata !1654, metadata !DIExpression()), !dbg !2819
  %6 = lshr i8 %2, 5, !dbg !2821
  %7 = zext i8 %6 to i64, !dbg !2821
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2822
  call void @llvm.dbg.value(metadata i32* %8, metadata !1655, metadata !DIExpression()), !dbg !2819
  %9 = and i8 %2, 31, !dbg !2823
  %10 = zext i8 %9 to i32, !dbg !2823
  call void @llvm.dbg.value(metadata i32 %10, metadata !1657, metadata !DIExpression()), !dbg !2819
  %11 = load i32, i32* %8, align 4, !dbg !2824, !tbaa !888
  %12 = lshr i32 %11, %10, !dbg !2825
  %13 = and i32 %12, 1, !dbg !2826
  call void @llvm.dbg.value(metadata i32 %13, metadata !1658, metadata !DIExpression()), !dbg !2819
  %14 = xor i32 %13, 1, !dbg !2827
  %15 = shl i32 %14, %10, !dbg !2828
  %16 = xor i32 %15, %11, !dbg !2829
  store i32 %16, i32* %8, align 4, !dbg !2829, !tbaa !888
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2830
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2831
  ret i8* %17, !dbg !2832
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2833 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2837, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i8 %1, metadata !2838, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i8* %0, metadata !2810, metadata !DIExpression()) #26, !dbg !2840
  call void @llvm.dbg.value(metadata i64 -1, metadata !2811, metadata !DIExpression()) #26, !dbg !2840
  call void @llvm.dbg.value(metadata i8 %1, metadata !2812, metadata !DIExpression()) #26, !dbg !2840
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2842
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2842
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2813, metadata !DIExpression()) #26, !dbg !2843
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #26, !dbg !2844, !tbaa.struct !2818
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1651, metadata !DIExpression()) #26, !dbg !2845
  call void @llvm.dbg.value(metadata i8 %1, metadata !1652, metadata !DIExpression()) #26, !dbg !2845
  call void @llvm.dbg.value(metadata i32 1, metadata !1653, metadata !DIExpression()) #26, !dbg !2845
  call void @llvm.dbg.value(metadata i8 %1, metadata !1654, metadata !DIExpression()) #26, !dbg !2845
  %5 = lshr i8 %1, 5, !dbg !2847
  %6 = zext i8 %5 to i64, !dbg !2847
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2848
  call void @llvm.dbg.value(metadata i32* %7, metadata !1655, metadata !DIExpression()) #26, !dbg !2845
  %8 = and i8 %1, 31, !dbg !2849
  %9 = zext i8 %8 to i32, !dbg !2849
  call void @llvm.dbg.value(metadata i32 %9, metadata !1657, metadata !DIExpression()) #26, !dbg !2845
  %10 = load i32, i32* %7, align 4, !dbg !2850, !tbaa !888
  %11 = lshr i32 %10, %9, !dbg !2851
  %12 = and i32 %11, 1, !dbg !2852
  call void @llvm.dbg.value(metadata i32 %12, metadata !1658, metadata !DIExpression()) #26, !dbg !2845
  %13 = xor i32 %12, 1, !dbg !2853
  %14 = shl i32 %13, %9, !dbg !2854
  %15 = xor i32 %14, %10, !dbg !2855
  store i32 %15, i32* %7, align 4, !dbg !2855, !tbaa !888
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #26, !dbg !2856
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2857
  ret i8* %16, !dbg !2858
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2859 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2861, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata i8* %0, metadata !2837, metadata !DIExpression()) #26, !dbg !2863
  call void @llvm.dbg.value(metadata i8 58, metadata !2838, metadata !DIExpression()) #26, !dbg !2863
  call void @llvm.dbg.value(metadata i8* %0, metadata !2810, metadata !DIExpression()) #26, !dbg !2865
  call void @llvm.dbg.value(metadata i64 -1, metadata !2811, metadata !DIExpression()) #26, !dbg !2865
  call void @llvm.dbg.value(metadata i8 58, metadata !2812, metadata !DIExpression()) #26, !dbg !2865
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2867
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #26, !dbg !2867
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2813, metadata !DIExpression()) #26, !dbg !2868
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #26, !dbg !2869, !tbaa.struct !2818
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1651, metadata !DIExpression()) #26, !dbg !2870
  call void @llvm.dbg.value(metadata i8 58, metadata !1652, metadata !DIExpression()) #26, !dbg !2870
  call void @llvm.dbg.value(metadata i32 1, metadata !1653, metadata !DIExpression()) #26, !dbg !2870
  call void @llvm.dbg.value(metadata i8 58, metadata !1654, metadata !DIExpression()) #26, !dbg !2870
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2872
  call void @llvm.dbg.value(metadata i32* %4, metadata !1655, metadata !DIExpression()) #26, !dbg !2870
  call void @llvm.dbg.value(metadata i32 26, metadata !1657, metadata !DIExpression()) #26, !dbg !2870
  %5 = load i32, i32* %4, align 4, !dbg !2873, !tbaa !888
  call void @llvm.dbg.value(metadata i32 %5, metadata !1658, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #26, !dbg !2870
  %6 = or i32 %5, 67108864, !dbg !2874
  store i32 %6, i32* %4, align 4, !dbg !2874, !tbaa !888
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #26, !dbg !2875
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #26, !dbg !2876
  ret i8* %7, !dbg !2877
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2878 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2880, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata i64 %1, metadata !2881, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata i8* %0, metadata !2810, metadata !DIExpression()) #26, !dbg !2883
  call void @llvm.dbg.value(metadata i64 %1, metadata !2811, metadata !DIExpression()) #26, !dbg !2883
  call void @llvm.dbg.value(metadata i8 58, metadata !2812, metadata !DIExpression()) #26, !dbg !2883
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2885
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2885
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2813, metadata !DIExpression()) #26, !dbg !2886
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #26, !dbg !2887, !tbaa.struct !2818
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1651, metadata !DIExpression()) #26, !dbg !2888
  call void @llvm.dbg.value(metadata i8 58, metadata !1652, metadata !DIExpression()) #26, !dbg !2888
  call void @llvm.dbg.value(metadata i32 1, metadata !1653, metadata !DIExpression()) #26, !dbg !2888
  call void @llvm.dbg.value(metadata i8 58, metadata !1654, metadata !DIExpression()) #26, !dbg !2888
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2890
  call void @llvm.dbg.value(metadata i32* %5, metadata !1655, metadata !DIExpression()) #26, !dbg !2888
  call void @llvm.dbg.value(metadata i32 26, metadata !1657, metadata !DIExpression()) #26, !dbg !2888
  %6 = load i32, i32* %5, align 4, !dbg !2891, !tbaa !888
  call void @llvm.dbg.value(metadata i32 %6, metadata !1658, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #26, !dbg !2888
  %7 = or i32 %6, 67108864, !dbg !2892
  store i32 %7, i32* %5, align 4, !dbg !2892, !tbaa !888
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #26, !dbg !2893
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2894
  ret i8* %8, !dbg !2895
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2896 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2713, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2902
  call void @llvm.dbg.value(metadata i32 %0, metadata !2898, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata i32 %1, metadata !2899, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata i8* %2, metadata !2900, metadata !DIExpression()), !dbg !2904
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2905
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2905
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2901, metadata !DIExpression()), !dbg !2906
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2907
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2907
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2908), !dbg !2907
  call void @llvm.dbg.value(metadata i32 %1, metadata !2708, metadata !DIExpression()) #26, !dbg !2911
  call void @llvm.dbg.value(metadata i32 0, metadata !2713, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2911
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2902, !alias.scope !2908
  %8 = icmp eq i32 %1, 10, !dbg !2912
  br i1 %8, label %9, label %10, !dbg !2913

9:                                                ; preds = %3
  tail call void @abort() #28, !dbg !2914, !noalias !2908
  unreachable, !dbg !2914

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2713, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2911
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2907
  store i32 %1, i32* %11, align 8, !dbg !2907, !tbaa.struct !2818
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2907
  %13 = bitcast i32* %12 to i8*, !dbg !2907
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2907, !tbaa.struct !2915
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2907
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1651, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata i8 58, metadata !1652, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata i32 1, metadata !1653, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata i8 58, metadata !1654, metadata !DIExpression()), !dbg !2916
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2918
  call void @llvm.dbg.value(metadata i32* %14, metadata !1655, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata i32 26, metadata !1657, metadata !DIExpression()), !dbg !2916
  %15 = load i32, i32* %14, align 4, !dbg !2919, !tbaa !888
  call void @llvm.dbg.value(metadata i32 %15, metadata !1658, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2916
  %16 = or i32 %15, 67108864, !dbg !2920
  store i32 %16, i32* %14, align 4, !dbg !2920, !tbaa !888
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2921
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2922
  ret i8* %17, !dbg !2923
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2924 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2928, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8* %1, metadata !2929, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8* %2, metadata !2930, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8* %3, metadata !2931, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i32 %0, metadata !2933, metadata !DIExpression()) #26, !dbg !2943
  call void @llvm.dbg.value(metadata i8* %1, metadata !2938, metadata !DIExpression()) #26, !dbg !2943
  call void @llvm.dbg.value(metadata i8* %2, metadata !2939, metadata !DIExpression()) #26, !dbg !2943
  call void @llvm.dbg.value(metadata i8* %3, metadata !2940, metadata !DIExpression()) #26, !dbg !2943
  call void @llvm.dbg.value(metadata i64 -1, metadata !2941, metadata !DIExpression()) #26, !dbg !2943
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2945
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2945
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2942, metadata !DIExpression()) #26, !dbg !2946
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #26, !dbg !2947, !tbaa.struct !2818
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1691, metadata !DIExpression()) #26, !dbg !2948
  call void @llvm.dbg.value(metadata i8* %1, metadata !1692, metadata !DIExpression()) #26, !dbg !2948
  call void @llvm.dbg.value(metadata i8* %2, metadata !1693, metadata !DIExpression()) #26, !dbg !2948
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1691, metadata !DIExpression()) #26, !dbg !2948
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2950
  store i32 10, i32* %7, align 8, !dbg !2951, !tbaa !1633
  %8 = icmp ne i8* %1, null, !dbg !2952
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2953
  br i1 %10, label %12, label %11, !dbg !2953

11:                                               ; preds = %4
  tail call void @abort() #28, !dbg !2954
  unreachable, !dbg !2954

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2955
  store i8* %1, i8** %13, align 8, !dbg !2956, !tbaa !1706
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2957
  store i8* %2, i8** %14, align 8, !dbg !2958, !tbaa !1709
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #26, !dbg !2959
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2960
  ret i8* %15, !dbg !2961
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2934 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2933, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.value(metadata i8* %1, metadata !2938, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.value(metadata i8* %2, metadata !2939, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.value(metadata i8* %3, metadata !2940, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.value(metadata i64 %4, metadata !2941, metadata !DIExpression()), !dbg !2962
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2963
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #26, !dbg !2963
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2942, metadata !DIExpression()), !dbg !2964
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2965, !tbaa.struct !2818
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1691, metadata !DIExpression()) #26, !dbg !2966
  call void @llvm.dbg.value(metadata i8* %1, metadata !1692, metadata !DIExpression()) #26, !dbg !2966
  call void @llvm.dbg.value(metadata i8* %2, metadata !1693, metadata !DIExpression()) #26, !dbg !2966
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1691, metadata !DIExpression()) #26, !dbg !2966
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2968
  store i32 10, i32* %8, align 8, !dbg !2969, !tbaa !1633
  %9 = icmp ne i8* %1, null, !dbg !2970
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2971
  br i1 %11, label %13, label %12, !dbg !2971

12:                                               ; preds = %5
  tail call void @abort() #28, !dbg !2972
  unreachable, !dbg !2972

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2973
  store i8* %1, i8** %14, align 8, !dbg !2974, !tbaa !1706
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2975
  store i8* %2, i8** %15, align 8, !dbg !2976, !tbaa !1709
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2977
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #26, !dbg !2978
  ret i8* %16, !dbg !2979
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2980 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2984, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i8* %1, metadata !2985, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i8* %2, metadata !2986, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i32 0, metadata !2928, metadata !DIExpression()) #26, !dbg !2988
  call void @llvm.dbg.value(metadata i8* %0, metadata !2929, metadata !DIExpression()) #26, !dbg !2988
  call void @llvm.dbg.value(metadata i8* %1, metadata !2930, metadata !DIExpression()) #26, !dbg !2988
  call void @llvm.dbg.value(metadata i8* %2, metadata !2931, metadata !DIExpression()) #26, !dbg !2988
  call void @llvm.dbg.value(metadata i32 0, metadata !2933, metadata !DIExpression()) #26, !dbg !2990
  call void @llvm.dbg.value(metadata i8* %0, metadata !2938, metadata !DIExpression()) #26, !dbg !2990
  call void @llvm.dbg.value(metadata i8* %1, metadata !2939, metadata !DIExpression()) #26, !dbg !2990
  call void @llvm.dbg.value(metadata i8* %2, metadata !2940, metadata !DIExpression()) #26, !dbg !2990
  call void @llvm.dbg.value(metadata i64 -1, metadata !2941, metadata !DIExpression()) #26, !dbg !2990
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2992
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2992
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2942, metadata !DIExpression()) #26, !dbg !2993
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #26, !dbg !2994, !tbaa.struct !2818
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1691, metadata !DIExpression()) #26, !dbg !2995
  call void @llvm.dbg.value(metadata i8* %0, metadata !1692, metadata !DIExpression()) #26, !dbg !2995
  call void @llvm.dbg.value(metadata i8* %1, metadata !1693, metadata !DIExpression()) #26, !dbg !2995
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1691, metadata !DIExpression()) #26, !dbg !2995
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2997
  store i32 10, i32* %6, align 8, !dbg !2998, !tbaa !1633
  %7 = icmp ne i8* %0, null, !dbg !2999
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !3000
  br i1 %9, label %11, label %10, !dbg !3000

10:                                               ; preds = %3
  tail call void @abort() #28, !dbg !3001
  unreachable, !dbg !3001

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3002
  store i8* %0, i8** %12, align 8, !dbg !3003, !tbaa !1706
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3004
  store i8* %1, i8** %13, align 8, !dbg !3005, !tbaa !1709
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #26, !dbg !3006
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #26, !dbg !3007
  ret i8* %14, !dbg !3008
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3009 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3013, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata i8* %1, metadata !3014, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata i8* %2, metadata !3015, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata i64 %3, metadata !3016, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata i32 0, metadata !2933, metadata !DIExpression()) #26, !dbg !3018
  call void @llvm.dbg.value(metadata i8* %0, metadata !2938, metadata !DIExpression()) #26, !dbg !3018
  call void @llvm.dbg.value(metadata i8* %1, metadata !2939, metadata !DIExpression()) #26, !dbg !3018
  call void @llvm.dbg.value(metadata i8* %2, metadata !2940, metadata !DIExpression()) #26, !dbg !3018
  call void @llvm.dbg.value(metadata i64 %3, metadata !2941, metadata !DIExpression()) #26, !dbg !3018
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3020
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #26, !dbg !3020
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2942, metadata !DIExpression()) #26, !dbg !3021
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #26, !dbg !3022, !tbaa.struct !2818
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1691, metadata !DIExpression()) #26, !dbg !3023
  call void @llvm.dbg.value(metadata i8* %0, metadata !1692, metadata !DIExpression()) #26, !dbg !3023
  call void @llvm.dbg.value(metadata i8* %1, metadata !1693, metadata !DIExpression()) #26, !dbg !3023
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1691, metadata !DIExpression()) #26, !dbg !3023
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3025
  store i32 10, i32* %7, align 8, !dbg !3026, !tbaa !1633
  %8 = icmp ne i8* %0, null, !dbg !3027
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !3028
  br i1 %10, label %12, label %11, !dbg !3028

11:                                               ; preds = %4
  tail call void @abort() #28, !dbg !3029
  unreachable, !dbg !3029

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3030
  store i8* %0, i8** %13, align 8, !dbg !3031, !tbaa !1706
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3032
  store i8* %1, i8** %14, align 8, !dbg !3033, !tbaa !1709
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #26, !dbg !3034
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #26, !dbg !3035
  ret i8* %15, !dbg !3036
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3037 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3041, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i8* %1, metadata !3042, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i64 %2, metadata !3043, metadata !DIExpression()), !dbg !3044
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3045
  ret i8* %4, !dbg !3046
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3047 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3051, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i64 %1, metadata !3052, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i32 0, metadata !3041, metadata !DIExpression()) #26, !dbg !3054
  call void @llvm.dbg.value(metadata i8* %0, metadata !3042, metadata !DIExpression()) #26, !dbg !3054
  call void @llvm.dbg.value(metadata i64 %1, metadata !3043, metadata !DIExpression()) #26, !dbg !3054
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #26, !dbg !3056
  ret i8* %3, !dbg !3057
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3058 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3062, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata i8* %1, metadata !3063, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata i32 %0, metadata !3041, metadata !DIExpression()) #26, !dbg !3065
  call void @llvm.dbg.value(metadata i8* %1, metadata !3042, metadata !DIExpression()) #26, !dbg !3065
  call void @llvm.dbg.value(metadata i64 -1, metadata !3043, metadata !DIExpression()) #26, !dbg !3065
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #26, !dbg !3067
  ret i8* %3, !dbg !3068
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3069 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3073, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata i32 0, metadata !3062, metadata !DIExpression()) #26, !dbg !3075
  call void @llvm.dbg.value(metadata i8* %0, metadata !3063, metadata !DIExpression()) #26, !dbg !3075
  call void @llvm.dbg.value(metadata i32 0, metadata !3041, metadata !DIExpression()) #26, !dbg !3077
  call void @llvm.dbg.value(metadata i8* %0, metadata !3042, metadata !DIExpression()) #26, !dbg !3077
  call void @llvm.dbg.value(metadata i64 -1, metadata !3043, metadata !DIExpression()) #26, !dbg !3077
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #26, !dbg !3079
  ret i8* %2, !dbg !3080
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3081 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3120, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i8* %1, metadata !3121, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i8* %2, metadata !3122, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i8* %3, metadata !3123, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i8** %4, metadata !3124, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i64 %5, metadata !3125, metadata !DIExpression()), !dbg !3126
  %7 = icmp eq i8* %1, null, !dbg !3127
  br i1 %7, label %10, label %8, !dbg !3129

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #26, !dbg !3130
  br label %12, !dbg !3130

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.79, i64 0, i64 0), i8* %2, i8* %3) #26, !dbg !3131
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.80, i64 0, i64 0), i32 5) #26, !dbg !3132
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #26, !dbg !3132
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.81, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3133
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.82, i64 0, i64 0), i32 5) #26, !dbg !3134
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.83, i64 0, i64 0)) #26, !dbg !3134
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.81, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3135
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
  ], !dbg !3136

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.84, i64 0, i64 0), i32 5) #26, !dbg !3137
  %21 = load i8*, i8** %4, align 8, !dbg !3137, !tbaa !723
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #26, !dbg !3137
  br label %147, !dbg !3139

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.85, i64 0, i64 0), i32 5) #26, !dbg !3140
  %25 = load i8*, i8** %4, align 8, !dbg !3140, !tbaa !723
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3140
  %27 = load i8*, i8** %26, align 8, !dbg !3140, !tbaa !723
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #26, !dbg !3140
  br label %147, !dbg !3141

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.86, i64 0, i64 0), i32 5) #26, !dbg !3142
  %31 = load i8*, i8** %4, align 8, !dbg !3142, !tbaa !723
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3142
  %33 = load i8*, i8** %32, align 8, !dbg !3142, !tbaa !723
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3142
  %35 = load i8*, i8** %34, align 8, !dbg !3142, !tbaa !723
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #26, !dbg !3142
  br label %147, !dbg !3143

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.87, i64 0, i64 0), i32 5) #26, !dbg !3144
  %39 = load i8*, i8** %4, align 8, !dbg !3144, !tbaa !723
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3144
  %41 = load i8*, i8** %40, align 8, !dbg !3144, !tbaa !723
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3144
  %43 = load i8*, i8** %42, align 8, !dbg !3144, !tbaa !723
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3144
  %45 = load i8*, i8** %44, align 8, !dbg !3144, !tbaa !723
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #26, !dbg !3144
  br label %147, !dbg !3145

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.88, i64 0, i64 0), i32 5) #26, !dbg !3146
  %49 = load i8*, i8** %4, align 8, !dbg !3146, !tbaa !723
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3146
  %51 = load i8*, i8** %50, align 8, !dbg !3146, !tbaa !723
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3146
  %53 = load i8*, i8** %52, align 8, !dbg !3146, !tbaa !723
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3146
  %55 = load i8*, i8** %54, align 8, !dbg !3146, !tbaa !723
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3146
  %57 = load i8*, i8** %56, align 8, !dbg !3146, !tbaa !723
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #26, !dbg !3146
  br label %147, !dbg !3147

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.89, i64 0, i64 0), i32 5) #26, !dbg !3148
  %61 = load i8*, i8** %4, align 8, !dbg !3148, !tbaa !723
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3148
  %63 = load i8*, i8** %62, align 8, !dbg !3148, !tbaa !723
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3148
  %65 = load i8*, i8** %64, align 8, !dbg !3148, !tbaa !723
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3148
  %67 = load i8*, i8** %66, align 8, !dbg !3148, !tbaa !723
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3148
  %69 = load i8*, i8** %68, align 8, !dbg !3148, !tbaa !723
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3148
  %71 = load i8*, i8** %70, align 8, !dbg !3148, !tbaa !723
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #26, !dbg !3148
  br label %147, !dbg !3149

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.90, i64 0, i64 0), i32 5) #26, !dbg !3150
  %75 = load i8*, i8** %4, align 8, !dbg !3150, !tbaa !723
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3150
  %77 = load i8*, i8** %76, align 8, !dbg !3150, !tbaa !723
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3150
  %79 = load i8*, i8** %78, align 8, !dbg !3150, !tbaa !723
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3150
  %81 = load i8*, i8** %80, align 8, !dbg !3150, !tbaa !723
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3150
  %83 = load i8*, i8** %82, align 8, !dbg !3150, !tbaa !723
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3150
  %85 = load i8*, i8** %84, align 8, !dbg !3150, !tbaa !723
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3150
  %87 = load i8*, i8** %86, align 8, !dbg !3150, !tbaa !723
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #26, !dbg !3150
  br label %147, !dbg !3151

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.91, i64 0, i64 0), i32 5) #26, !dbg !3152
  %91 = load i8*, i8** %4, align 8, !dbg !3152, !tbaa !723
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3152
  %93 = load i8*, i8** %92, align 8, !dbg !3152, !tbaa !723
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3152
  %95 = load i8*, i8** %94, align 8, !dbg !3152, !tbaa !723
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3152
  %97 = load i8*, i8** %96, align 8, !dbg !3152, !tbaa !723
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3152
  %99 = load i8*, i8** %98, align 8, !dbg !3152, !tbaa !723
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3152
  %101 = load i8*, i8** %100, align 8, !dbg !3152, !tbaa !723
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3152
  %103 = load i8*, i8** %102, align 8, !dbg !3152, !tbaa !723
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3152
  %105 = load i8*, i8** %104, align 8, !dbg !3152, !tbaa !723
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #26, !dbg !3152
  br label %147, !dbg !3153

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.92, i64 0, i64 0), i32 5) #26, !dbg !3154
  %109 = load i8*, i8** %4, align 8, !dbg !3154, !tbaa !723
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3154
  %111 = load i8*, i8** %110, align 8, !dbg !3154, !tbaa !723
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3154
  %113 = load i8*, i8** %112, align 8, !dbg !3154, !tbaa !723
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3154
  %115 = load i8*, i8** %114, align 8, !dbg !3154, !tbaa !723
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3154
  %117 = load i8*, i8** %116, align 8, !dbg !3154, !tbaa !723
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3154
  %119 = load i8*, i8** %118, align 8, !dbg !3154, !tbaa !723
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3154
  %121 = load i8*, i8** %120, align 8, !dbg !3154, !tbaa !723
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3154
  %123 = load i8*, i8** %122, align 8, !dbg !3154, !tbaa !723
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3154
  %125 = load i8*, i8** %124, align 8, !dbg !3154, !tbaa !723
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #26, !dbg !3154
  br label %147, !dbg !3155

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.93, i64 0, i64 0), i32 5) #26, !dbg !3156
  %129 = load i8*, i8** %4, align 8, !dbg !3156, !tbaa !723
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3156
  %131 = load i8*, i8** %130, align 8, !dbg !3156, !tbaa !723
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3156
  %133 = load i8*, i8** %132, align 8, !dbg !3156, !tbaa !723
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3156
  %135 = load i8*, i8** %134, align 8, !dbg !3156, !tbaa !723
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3156
  %137 = load i8*, i8** %136, align 8, !dbg !3156, !tbaa !723
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3156
  %139 = load i8*, i8** %138, align 8, !dbg !3156, !tbaa !723
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3156
  %141 = load i8*, i8** %140, align 8, !dbg !3156, !tbaa !723
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3156
  %143 = load i8*, i8** %142, align 8, !dbg !3156, !tbaa !723
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3156
  %145 = load i8*, i8** %144, align 8, !dbg !3156, !tbaa !723
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #26, !dbg !3156
  br label %147, !dbg !3157

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3158
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3159 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3163, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata i8* %1, metadata !3164, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata i8* %2, metadata !3165, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata i8* %3, metadata !3166, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata i8** %4, metadata !3167, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata i64 0, metadata !3168, metadata !DIExpression()), !dbg !3169
  br label %6, !dbg !3170

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3172
  call void @llvm.dbg.value(metadata i64 %7, metadata !3168, metadata !DIExpression()), !dbg !3169
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3173
  %9 = load i8*, i8** %8, align 8, !dbg !3173, !tbaa !723
  %10 = icmp eq i8* %9, null, !dbg !3175
  %11 = add i64 %7, 1, !dbg !3176
  call void @llvm.dbg.value(metadata i64 %11, metadata !3168, metadata !DIExpression()), !dbg !3169
  br i1 %10, label %12, label %6, !dbg !3175, !llvm.loop !3177

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3179
  ret void, !dbg !3180
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3181 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3192, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i8* %1, metadata !3193, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i8* %2, metadata !3194, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i8* %3, metadata !3195, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3196, metadata !DIExpression()), !dbg !3200
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3201
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #26, !dbg !3201
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3198, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata i64 0, metadata !3197, metadata !DIExpression()), !dbg !3200
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !3197, metadata !DIExpression()), !dbg !3200
  %11 = load i32, i32* %8, align 8, !dbg !3203
  %12 = icmp ult i32 %11, 41, !dbg !3203
  br i1 %12, label %13, label %18, !dbg !3203

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3203
  %15 = zext i32 %11 to i64, !dbg !3203
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3203
  %17 = add nuw nsw i32 %11, 8, !dbg !3203
  store i32 %17, i32* %8, align 8, !dbg !3203
  br label %21, !dbg !3203

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3203
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3203
  store i8* %20, i8** %9, align 8, !dbg !3203
  br label %21, !dbg !3203

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3203
  %25 = load i8*, i8** %24, align 8, !dbg !3203
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3206
  store i8* %25, i8** %26, align 16, !dbg !3207, !tbaa !723
  %27 = icmp eq i8* %25, null, !dbg !3208
  br i1 %27, label %30, label %28, !dbg !3209

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3197, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i64 1, metadata !3197, metadata !DIExpression()), !dbg !3200
  %29 = icmp ult i32 %22, 41, !dbg !3203
  br i1 %29, label %35, label %32, !dbg !3203

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3210
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3211
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #26, !dbg !3212
  ret void, !dbg !3212

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3203
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3203
  store i8* %34, i8** %9, align 8, !dbg !3203
  br label %40, !dbg !3203

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3203
  %37 = zext i32 %22 to i64, !dbg !3203
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3203
  %39 = add nuw nsw i32 %22, 8, !dbg !3203
  store i32 %39, i32* %8, align 8, !dbg !3203
  br label %40, !dbg !3203

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3203
  %44 = load i8*, i8** %43, align 8, !dbg !3203
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3206
  store i8* %44, i8** %45, align 8, !dbg !3207, !tbaa !723
  %46 = icmp eq i8* %44, null, !dbg !3208
  br i1 %46, label %30, label %47, !dbg !3209

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3197, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i64 2, metadata !3197, metadata !DIExpression()), !dbg !3200
  %48 = icmp ult i32 %41, 41, !dbg !3203
  br i1 %48, label %52, label %49, !dbg !3203

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3203
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3203
  store i8* %51, i8** %9, align 8, !dbg !3203
  br label %57, !dbg !3203

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3203
  %54 = zext i32 %41 to i64, !dbg !3203
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3203
  %56 = add nuw nsw i32 %41, 8, !dbg !3203
  store i32 %56, i32* %8, align 8, !dbg !3203
  br label %57, !dbg !3203

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3203
  %61 = load i8*, i8** %60, align 8, !dbg !3203
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3206
  store i8* %61, i8** %62, align 16, !dbg !3207, !tbaa !723
  %63 = icmp eq i8* %61, null, !dbg !3208
  br i1 %63, label %30, label %64, !dbg !3209

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3197, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i64 3, metadata !3197, metadata !DIExpression()), !dbg !3200
  %65 = icmp ult i32 %58, 41, !dbg !3203
  br i1 %65, label %69, label %66, !dbg !3203

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3203
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3203
  store i8* %68, i8** %9, align 8, !dbg !3203
  br label %74, !dbg !3203

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3203
  %71 = zext i32 %58 to i64, !dbg !3203
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3203
  %73 = add nuw nsw i32 %58, 8, !dbg !3203
  store i32 %73, i32* %8, align 8, !dbg !3203
  br label %74, !dbg !3203

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3203
  %78 = load i8*, i8** %77, align 8, !dbg !3203
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3206
  store i8* %78, i8** %79, align 8, !dbg !3207, !tbaa !723
  %80 = icmp eq i8* %78, null, !dbg !3208
  br i1 %80, label %30, label %81, !dbg !3209

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3197, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i64 4, metadata !3197, metadata !DIExpression()), !dbg !3200
  %82 = icmp ult i32 %75, 41, !dbg !3203
  br i1 %82, label %86, label %83, !dbg !3203

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3203
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3203
  store i8* %85, i8** %9, align 8, !dbg !3203
  br label %91, !dbg !3203

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3203
  %88 = zext i32 %75 to i64, !dbg !3203
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3203
  %90 = add nuw nsw i32 %75, 8, !dbg !3203
  store i32 %90, i32* %8, align 8, !dbg !3203
  br label %91, !dbg !3203

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3203
  %95 = load i8*, i8** %94, align 8, !dbg !3203
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3206
  store i8* %95, i8** %96, align 16, !dbg !3207, !tbaa !723
  %97 = icmp eq i8* %95, null, !dbg !3208
  br i1 %97, label %30, label %98, !dbg !3209

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3197, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i64 5, metadata !3197, metadata !DIExpression()), !dbg !3200
  %99 = icmp ult i32 %92, 41, !dbg !3203
  br i1 %99, label %103, label %100, !dbg !3203

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3203
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3203
  store i8* %102, i8** %9, align 8, !dbg !3203
  br label %108, !dbg !3203

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3203
  %105 = zext i32 %92 to i64, !dbg !3203
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3203
  %107 = add nuw nsw i32 %92, 8, !dbg !3203
  store i32 %107, i32* %8, align 8, !dbg !3203
  br label %108, !dbg !3203

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3203
  %111 = load i8*, i8** %110, align 8, !dbg !3203
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3206
  store i8* %111, i8** %112, align 8, !dbg !3207, !tbaa !723
  %113 = icmp eq i8* %111, null, !dbg !3208
  br i1 %113, label %30, label %114, !dbg !3209

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3197, metadata !DIExpression()), !dbg !3200
  %115 = load i8*, i8** %9, align 8, !dbg !3203
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3203
  store i8* %116, i8** %9, align 8, !dbg !3203
  %117 = bitcast i8* %115 to i8**, !dbg !3203
  %118 = load i8*, i8** %117, align 8, !dbg !3203
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3206
  store i8* %118, i8** %119, align 16, !dbg !3207, !tbaa !723
  %120 = icmp eq i8* %118, null, !dbg !3208
  br i1 %120, label %30, label %121, !dbg !3209

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3197, metadata !DIExpression()), !dbg !3200
  %122 = load i8*, i8** %9, align 8, !dbg !3203
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3203
  store i8* %123, i8** %9, align 8, !dbg !3203
  %124 = bitcast i8* %122 to i8**, !dbg !3203
  %125 = load i8*, i8** %124, align 8, !dbg !3203
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3206
  store i8* %125, i8** %126, align 8, !dbg !3207, !tbaa !723
  %127 = icmp eq i8* %125, null, !dbg !3208
  br i1 %127, label %30, label %128, !dbg !3209

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3197, metadata !DIExpression()), !dbg !3200
  %129 = load i8*, i8** %9, align 8, !dbg !3203
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3203
  store i8* %130, i8** %9, align 8, !dbg !3203
  %131 = bitcast i8* %129 to i8**, !dbg !3203
  %132 = load i8*, i8** %131, align 8, !dbg !3203
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3206
  store i8* %132, i8** %133, align 16, !dbg !3207, !tbaa !723
  %134 = icmp eq i8* %132, null, !dbg !3208
  br i1 %134, label %30, label %135, !dbg !3209

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3197, metadata !DIExpression()), !dbg !3200
  %136 = load i8*, i8** %9, align 8, !dbg !3203
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3203
  store i8* %137, i8** %9, align 8, !dbg !3203
  %138 = bitcast i8* %136 to i8**, !dbg !3203
  %139 = load i8*, i8** %138, align 8, !dbg !3203
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3206
  store i8* %139, i8** %140, align 8, !dbg !3207, !tbaa !723
  %141 = icmp eq i8* %139, null, !dbg !3208
  %142 = select i1 %141, i64 9, i64 10, !dbg !3209
  br label %30, !dbg !3209
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3213 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3217, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata i8* %1, metadata !3218, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata i8* %2, metadata !3219, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata i8* %3, metadata !3220, metadata !DIExpression()), !dbg !3227
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3228
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #26, !dbg !3228
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3221, metadata !DIExpression()), !dbg !3229
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3230
  call void @llvm.va_start(i8* nonnull %6), !dbg !3230
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3231
  call void @llvm.va_end(i8* nonnull %6), !dbg !3232
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #26, !dbg !3233
  ret void, !dbg !3233
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #21

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #21

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3234 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3235, !tbaa !723
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.81, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3235
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.96, i64 0, i64 0), i32 5) #26, !dbg !3236
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.97, i64 0, i64 0)) #26, !dbg !3236
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.98, i64 0, i64 0), i32 5) #26, !dbg !3237
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.99, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.100, i64 0, i64 0)) #26, !dbg !3237
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.101, i64 0, i64 0), i32 5) #26, !dbg !3238
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.102, i64 0, i64 0)) #26, !dbg !3238
  ret void, !dbg !3239
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #22 !dbg !3240 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3244, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i64 %1, metadata !3245, metadata !DIExpression()), !dbg !3246
  %3 = udiv i64 9223372036854775807, %1, !dbg !3247
  %4 = icmp ult i64 %3, %0, !dbg !3247
  br i1 %4, label %5, label %6, !dbg !3249

5:                                                ; preds = %2
  tail call void @xalloc_die() #28, !dbg !3250
  unreachable, !dbg !3250

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3251
  call void @llvm.dbg.value(metadata i64 %7, metadata !3252, metadata !DIExpression()) #26, !dbg !3258
  %8 = tail call noalias i8* @malloc(i64 %7) #26, !dbg !3260
  call void @llvm.dbg.value(metadata i8* %8, metadata !3257, metadata !DIExpression()) #26, !dbg !3258
  %9 = icmp eq i8* %8, null, !dbg !3261
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !3263
  br i1 %11, label %12, label %13, !dbg !3263

12:                                               ; preds = %6
  tail call void @xalloc_die() #28, !dbg !3264
  unreachable, !dbg !3264

13:                                               ; preds = %6
  ret i8* %8, !dbg !3265
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #23

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3253 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3252, metadata !DIExpression()), !dbg !3266
  %2 = tail call noalias i8* @malloc(i64 %0) #26, !dbg !3267
  call void @llvm.dbg.value(metadata i8* %2, metadata !3257, metadata !DIExpression()), !dbg !3266
  %3 = icmp eq i8* %2, null, !dbg !3268
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3269
  br i1 %5, label %6, label %7, !dbg !3269

6:                                                ; preds = %1
  tail call void @xalloc_die() #28, !dbg !3270
  unreachable, !dbg !3270

7:                                                ; preds = %1
  ret i8* %2, !dbg !3271
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #22 !dbg !3272 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3276, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.value(metadata i64 %1, metadata !3277, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.value(metadata i64 %2, metadata !3278, metadata !DIExpression()), !dbg !3279
  %4 = udiv i64 9223372036854775807, %2, !dbg !3280
  %5 = icmp ult i64 %4, %1, !dbg !3280
  br i1 %5, label %6, label %7, !dbg !3282

6:                                                ; preds = %3
  tail call void @xalloc_die() #28, !dbg !3283
  unreachable, !dbg !3283

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3284
  call void @llvm.dbg.value(metadata i8* %0, metadata !3285, metadata !DIExpression()) #26, !dbg !3291
  call void @llvm.dbg.value(metadata i64 %8, metadata !3290, metadata !DIExpression()) #26, !dbg !3291
  %9 = icmp eq i64 %8, 0, !dbg !3293
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !3295
  br i1 %11, label %12, label %13, !dbg !3295

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #26, !dbg !3296
  br label %19, !dbg !3298

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #26, !dbg !3299
  call void @llvm.dbg.value(metadata i8* %14, metadata !3285, metadata !DIExpression()) #26, !dbg !3291
  %15 = icmp eq i8* %14, null, !dbg !3300
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !3302
  br i1 %17, label %18, label %19, !dbg !3302

18:                                               ; preds = %13
  tail call void @xalloc_die() #28, !dbg !3303
  unreachable, !dbg !3303

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3291
  ret i8* %20, !dbg !3304
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3286 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3285, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata i64 %1, metadata !3290, metadata !DIExpression()), !dbg !3305
  %3 = icmp eq i64 %1, 0, !dbg !3306
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !3307
  br i1 %5, label %6, label %7, !dbg !3307

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #26, !dbg !3308
  br label %13, !dbg !3309

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #26, !dbg !3310
  call void @llvm.dbg.value(metadata i8* %8, metadata !3285, metadata !DIExpression()), !dbg !3305
  %9 = icmp eq i8* %8, null, !dbg !3311
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !3312
  br i1 %11, label %12, label %13, !dbg !3312

12:                                               ; preds = %7
  tail call void @xalloc_die() #28, !dbg !3313
  unreachable, !dbg !3313

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3305
  ret i8* %14, !dbg !3314
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #22 !dbg !289 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !291, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata i64* %1, metadata !292, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata i64 %2, metadata !293, metadata !DIExpression()), !dbg !3315
  %4 = load i64, i64* %1, align 8, !dbg !3316, !tbaa !920
  call void @llvm.dbg.value(metadata i64 %4, metadata !294, metadata !DIExpression()), !dbg !3315
  %5 = icmp eq i8* %0, null, !dbg !3317
  br i1 %5, label %6, label %20, !dbg !3319

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3320
  br i1 %7, label %8, label %13, !dbg !3323

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3324
  call void @llvm.dbg.value(metadata i64 %9, metadata !294, metadata !DIExpression()), !dbg !3315
  %10 = icmp ugt i64 %2, 128, !dbg !3326
  %11 = zext i1 %10 to i64, !dbg !3326
  %12 = add nuw nsw i64 %9, %11, !dbg !3327
  call void @llvm.dbg.value(metadata i64 %12, metadata !294, metadata !DIExpression()), !dbg !3315
  br label %13, !dbg !3328

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3315
  call void @llvm.dbg.value(metadata i64 %14, metadata !294, metadata !DIExpression()), !dbg !3315
  %15 = udiv i64 9223372036854775807, %2, !dbg !3329
  %16 = icmp ult i64 %15, %14, !dbg !3329
  br i1 %16, label %19, label %17, !dbg !3331

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !294, metadata !DIExpression()), !dbg !3315
  store i64 %14, i64* %1, align 8, !dbg !3332, !tbaa !920
  %18 = mul i64 %14, %2, !dbg !3333
  call void @llvm.dbg.value(metadata i8* %0, metadata !3285, metadata !DIExpression()) #26, !dbg !3334
  call void @llvm.dbg.value(metadata i64 %28, metadata !3290, metadata !DIExpression()) #26, !dbg !3334
  br label %31, !dbg !3336

19:                                               ; preds = %13
  tail call void @xalloc_die() #28, !dbg !3337
  unreachable, !dbg !3337

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3338
  %22 = icmp ugt i64 %21, %4, !dbg !3341
  br i1 %22, label %24, label %23, !dbg !3342

23:                                               ; preds = %20
  tail call void @xalloc_die() #28, !dbg !3343
  unreachable, !dbg !3343

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3344
  %26 = add nuw i64 %4, 1, !dbg !3345
  %27 = add i64 %26, %25, !dbg !3346
  call void @llvm.dbg.value(metadata i64 %27, metadata !294, metadata !DIExpression()), !dbg !3315
  store i64 %27, i64* %1, align 8, !dbg !3332, !tbaa !920
  %28 = mul i64 %27, %2, !dbg !3333
  call void @llvm.dbg.value(metadata i8* %0, metadata !3285, metadata !DIExpression()) #26, !dbg !3334
  call void @llvm.dbg.value(metadata i64 %28, metadata !3290, metadata !DIExpression()) #26, !dbg !3334
  %29 = icmp eq i64 %28, 0, !dbg !3347
  br i1 %29, label %30, label %31, !dbg !3336

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #26, !dbg !3348
  br label %38, !dbg !3349

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #26, !dbg !3350
  call void @llvm.dbg.value(metadata i8* %33, metadata !3285, metadata !DIExpression()) #26, !dbg !3334
  %34 = icmp eq i8* %33, null, !dbg !3351
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !3352
  br i1 %36, label %37, label %38, !dbg !3352

37:                                               ; preds = %31
  tail call void @xalloc_die() #28, !dbg !3353
  unreachable, !dbg !3353

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3334
  ret i8* %39, !dbg !3354
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #22 !dbg !3355 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3357, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i64 %0, metadata !3252, metadata !DIExpression()) #26, !dbg !3359
  %2 = tail call noalias i8* @malloc(i64 %0) #26, !dbg !3361
  call void @llvm.dbg.value(metadata i8* %2, metadata !3257, metadata !DIExpression()) #26, !dbg !3359
  %3 = icmp eq i8* %2, null, !dbg !3362
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3363
  br i1 %5, label %6, label %7, !dbg !3363

6:                                                ; preds = %1
  tail call void @xalloc_die() #28, !dbg !3364
  unreachable, !dbg !3364

7:                                                ; preds = %1
  ret i8* %2, !dbg !3365
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3366 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3370, metadata !DIExpression()), !dbg !3372
  call void @llvm.dbg.value(metadata i64* %1, metadata !3371, metadata !DIExpression()), !dbg !3372
  call void @llvm.dbg.value(metadata i8* %0, metadata !291, metadata !DIExpression()) #26, !dbg !3373
  call void @llvm.dbg.value(metadata i64* %1, metadata !292, metadata !DIExpression()) #26, !dbg !3373
  call void @llvm.dbg.value(metadata i64 1, metadata !293, metadata !DIExpression()) #26, !dbg !3373
  %3 = load i64, i64* %1, align 8, !dbg !3375, !tbaa !920
  call void @llvm.dbg.value(metadata i64 %3, metadata !294, metadata !DIExpression()) #26, !dbg !3373
  %4 = icmp eq i8* %0, null, !dbg !3376
  br i1 %4, label %5, label %10, !dbg !3377

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3378
  br i1 %6, label %17, label %7, !dbg !3379

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !294, metadata !DIExpression()) #26, !dbg !3373
  %8 = icmp slt i64 %3, 0, !dbg !3380
  br i1 %8, label %9, label %17, !dbg !3381

9:                                                ; preds = %7
  tail call void @xalloc_die() #28, !dbg !3382
  unreachable, !dbg !3382

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !3383
  br i1 %11, label %13, label %12, !dbg !3384

12:                                               ; preds = %10
  tail call void @xalloc_die() #28, !dbg !3385
  unreachable, !dbg !3385

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !3386
  %15 = add nuw nsw i64 %3, 1, !dbg !3387
  %16 = add nuw nsw i64 %15, %14, !dbg !3388
  call void @llvm.dbg.value(metadata i64 %16, metadata !294, metadata !DIExpression()) #26, !dbg !3373
  call void @llvm.dbg.value(metadata i8* %0, metadata !3285, metadata !DIExpression()) #26, !dbg !3389
  call void @llvm.dbg.value(metadata i64 %16, metadata !3290, metadata !DIExpression()) #26, !dbg !3389
  br label %17, !dbg !3391

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !3392
  store i64 %18, i64* %1, align 8, !dbg !3392, !tbaa !920
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #26, !dbg !3393
  call void @llvm.dbg.value(metadata i8* %19, metadata !3285, metadata !DIExpression()) #26, !dbg !3389
  %20 = icmp eq i8* %19, null, !dbg !3394
  br i1 %20, label %21, label %22, !dbg !3395

21:                                               ; preds = %17
  tail call void @xalloc_die() #28, !dbg !3396
  unreachable, !dbg !3396

22:                                               ; preds = %17
  ret i8* %19, !dbg !3397
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3398 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3400, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i64 %0, metadata !3402, metadata !DIExpression()) #26, !dbg !3407
  call void @llvm.dbg.value(metadata i64 1, metadata !3405, metadata !DIExpression()) #26, !dbg !3407
  %2 = icmp slt i64 %0, 0, !dbg !3409
  br i1 %2, label %6, label %3, !dbg !3411

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #26, !dbg !3412
  call void @llvm.dbg.value(metadata i8* %4, metadata !3406, metadata !DIExpression()) #26, !dbg !3407
  %5 = icmp eq i8* %4, null, !dbg !3413
  br i1 %5, label %6, label %7, !dbg !3414

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #28, !dbg !3415
  unreachable, !dbg !3415

7:                                                ; preds = %3
  ret i8* %4, !dbg !3416
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3403 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3402, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i64 %1, metadata !3405, metadata !DIExpression()), !dbg !3417
  %3 = udiv i64 9223372036854775807, %1, !dbg !3418
  %4 = icmp ult i64 %3, %0, !dbg !3418
  br i1 %4, label %8, label %5, !dbg !3419

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #26, !dbg !3420
  call void @llvm.dbg.value(metadata i8* %6, metadata !3406, metadata !DIExpression()), !dbg !3417
  %7 = icmp eq i8* %6, null, !dbg !3421
  br i1 %7, label %8, label %9, !dbg !3422

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #28, !dbg !3423
  unreachable, !dbg !3423

9:                                                ; preds = %5
  ret i8* %6, !dbg !3424
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3425 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3431, metadata !DIExpression()), !dbg !3433
  call void @llvm.dbg.value(metadata i64 %1, metadata !3432, metadata !DIExpression()), !dbg !3433
  call void @llvm.dbg.value(metadata i64 %1, metadata !3252, metadata !DIExpression()) #26, !dbg !3434
  %3 = tail call noalias i8* @malloc(i64 %1) #26, !dbg !3436
  call void @llvm.dbg.value(metadata i8* %3, metadata !3257, metadata !DIExpression()) #26, !dbg !3434
  %4 = icmp eq i8* %3, null, !dbg !3437
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !3438
  br i1 %6, label %7, label %8, !dbg !3438

7:                                                ; preds = %2
  tail call void @xalloc_die() #28, !dbg !3439
  unreachable, !dbg !3439

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3440, metadata !DIExpression()) #26, !dbg !3449
  call void @llvm.dbg.value(metadata i8* %0, metadata !3447, metadata !DIExpression()) #26, !dbg !3449
  call void @llvm.dbg.value(metadata i64 %1, metadata !3448, metadata !DIExpression()) #26, !dbg !3449
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #26, !dbg !3451
  ret i8* %3, !dbg !3452
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3453 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3455, metadata !DIExpression()), !dbg !3456
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #27, !dbg !3457
  %3 = add i64 %2, 1, !dbg !3458
  call void @llvm.dbg.value(metadata i8* %0, metadata !3431, metadata !DIExpression()) #26, !dbg !3459
  call void @llvm.dbg.value(metadata i64 %3, metadata !3432, metadata !DIExpression()) #26, !dbg !3459
  call void @llvm.dbg.value(metadata i64 %3, metadata !3252, metadata !DIExpression()) #26, !dbg !3461
  %4 = tail call noalias i8* @malloc(i64 %3) #26, !dbg !3463
  call void @llvm.dbg.value(metadata i8* %4, metadata !3257, metadata !DIExpression()) #26, !dbg !3461
  %5 = icmp eq i8* %4, null, !dbg !3464
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !3465
  br i1 %7, label %8, label %9, !dbg !3465

8:                                                ; preds = %1
  tail call void @xalloc_die() #28, !dbg !3466
  unreachable, !dbg !3466

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3440, metadata !DIExpression()) #26, !dbg !3467
  call void @llvm.dbg.value(metadata i8* %0, metadata !3447, metadata !DIExpression()) #26, !dbg !3467
  call void @llvm.dbg.value(metadata i64 %3, metadata !3448, metadata !DIExpression()) #26, !dbg !3467
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #26, !dbg !3469
  ret i8* %4, !dbg !3470
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3471 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3472, !tbaa !888
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.113, i64 0, i64 0), i32 5) #26, !dbg !3473
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.114, i64 0, i64 0), i8* %2) #26, !dbg !3474
  tail call void @abort() #28, !dbg !3475
  unreachable, !dbg !3475
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrndup(i8* nocapture readonly %0, i64 %1) local_unnamed_addr #8 !dbg !3476 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3478, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i64 %1, metadata !3479, metadata !DIExpression()), !dbg !3481
  %3 = tail call noalias i8* @strndup(i8* %0, i64 %1) #26, !dbg !3482
  call void @llvm.dbg.value(metadata i8* %3, metadata !3480, metadata !DIExpression()), !dbg !3481
  %4 = icmp eq i8* %3, null, !dbg !3483
  br i1 %4, label %5, label %6, !dbg !3485

5:                                                ; preds = %2
  tail call void @xalloc_die() #28, !dbg !3486
  unreachable, !dbg !3486

6:                                                ; preds = %2
  ret i8* %3, !dbg !3487
}

; Function Attrs: inaccessiblemem_or_argmemonly nofree nounwind willreturn
declare noalias i8* @strndup(i8* nocapture readonly, i64) local_unnamed_addr #24

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #25 !dbg !3488 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3490, metadata !DIExpression()), !dbg !3496
  call void @llvm.dbg.value(metadata i64 %1, metadata !3491, metadata !DIExpression()), !dbg !3496
  %3 = icmp eq i64 %0, 0, !dbg !3497
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !3498
  br i1 %5, label %11, label %6, !dbg !3498

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3493, metadata !DIExpression()), !dbg !3499
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3500
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3500
  br i1 %8, label %9, label %11, !dbg !3502

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #30, !dbg !3503
  store i32 12, i32* %10, align 4, !dbg !3505, !tbaa !888
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3490, metadata !DIExpression()), !dbg !3496
  call void @llvm.dbg.value(metadata i64 %12, metadata !3491, metadata !DIExpression()), !dbg !3496
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #26, !dbg !3506
  call void @llvm.dbg.value(metadata i8* %14, metadata !3492, metadata !DIExpression()), !dbg !3496
  br label %15, !dbg !3507

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3496
  ret i8* %16, !dbg !3508
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #23

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3509 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3547, metadata !DIExpression()), !dbg !3551
  call void @llvm.dbg.value(metadata i32 0, metadata !3548, metadata !DIExpression()), !dbg !3551
  call void @llvm.dbg.value(metadata i32 0, metadata !3550, metadata !DIExpression()), !dbg !3551
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #26, !dbg !3552
  call void @llvm.dbg.value(metadata i32 %2, metadata !3549, metadata !DIExpression()), !dbg !3551
  %3 = icmp slt i32 %2, 0, !dbg !3553
  br i1 %3, label %4, label %6, !dbg !3555

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3556
  br label %24, !dbg !3557

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #26, !dbg !3558
  %8 = icmp eq i32 %7, 0, !dbg !3558
  br i1 %8, label %13, label %9, !dbg !3560

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #26, !dbg !3561
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #26, !dbg !3562
  %12 = icmp eq i64 %11, -1, !dbg !3563
  br i1 %12, label %16, label %13, !dbg !3564

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #26, !dbg !3565
  %15 = icmp eq i32 %14, 0, !dbg !3565
  br i1 %15, label %16, label %18, !dbg !3566

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3548, metadata !DIExpression()), !dbg !3551
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3567
  call void @llvm.dbg.value(metadata i32 %21, metadata !3550, metadata !DIExpression()), !dbg !3551
  br label %24, !dbg !3568

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #30, !dbg !3569
  %20 = load i32, i32* %19, align 4, !dbg !3569, !tbaa !888
  call void @llvm.dbg.value(metadata i32 %20, metadata !3548, metadata !DIExpression()), !dbg !3551
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3567
  call void @llvm.dbg.value(metadata i32 %21, metadata !3550, metadata !DIExpression()), !dbg !3551
  %22 = icmp eq i32 %20, 0, !dbg !3570
  br i1 %22, label %24, label %23, !dbg !3568

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3572, !tbaa !888
  call void @llvm.dbg.value(metadata i32 -1, metadata !3550, metadata !DIExpression()), !dbg !3551
  br label %24, !dbg !3574

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3551
  ret i32 %25, !dbg !3575
}

; Function Attrs: nofree nounwind
declare !dbg !3576 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3579 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3583 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3621, metadata !DIExpression()), !dbg !3622
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3623
  br i1 %2, label %6, label %3, !dbg !3625

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #26, !dbg !3626
  %5 = icmp eq i32 %4, 0, !dbg !3626
  br i1 %5, label %6, label %8, !dbg !3627

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3628
  br label %17, !dbg !3629

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3630, metadata !DIExpression()) #26, !dbg !3635
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3637
  %10 = load i32, i32* %9, align 8, !dbg !3637, !tbaa !1384
  %11 = and i32 %10, 256, !dbg !3639
  %12 = icmp eq i32 %11, 0, !dbg !3639
  br i1 %12, label %15, label %13, !dbg !3640

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #26, !dbg !3641
  br label %15, !dbg !3641

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3642
  br label %17, !dbg !3643

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3622
  ret i32 %18, !dbg !3644
}

; Function Attrs: nofree nounwind
declare !dbg !3645 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3648 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3686, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i64 %1, metadata !3687, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i32 %2, metadata !3688, metadata !DIExpression()), !dbg !3692
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3693
  %5 = load i8*, i8** %4, align 8, !dbg !3693, !tbaa !935
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3694
  %7 = load i8*, i8** %6, align 8, !dbg !3694, !tbaa !932
  %8 = icmp eq i8* %5, %7, !dbg !3695
  br i1 %8, label %9, label %28, !dbg !3696

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3697
  %11 = load i8*, i8** %10, align 8, !dbg !3697, !tbaa !968
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3698
  %13 = load i8*, i8** %12, align 8, !dbg !3698, !tbaa !3699
  %14 = icmp eq i8* %11, %13, !dbg !3700
  br i1 %14, label %15, label %28, !dbg !3701

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3702
  %17 = load i8*, i8** %16, align 8, !dbg !3702, !tbaa !3703
  %18 = icmp eq i8* %17, null, !dbg !3704
  br i1 %18, label %19, label %28, !dbg !3705

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #26, !dbg !3706
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #26, !dbg !3707
  call void @llvm.dbg.value(metadata i64 %21, metadata !3689, metadata !DIExpression()), !dbg !3708
  %22 = icmp eq i64 %21, -1, !dbg !3709
  br i1 %22, label %30, label %23, !dbg !3711

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3712
  %25 = load i32, i32* %24, align 8, !dbg !3713, !tbaa !1384
  %26 = and i32 %25, -17, !dbg !3713
  store i32 %26, i32* %24, align 8, !dbg !3713, !tbaa !1384
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3714
  store i64 %21, i64* %27, align 8, !dbg !3715, !tbaa !3716
  br label %30, !dbg !3717

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3718
  br label %30, !dbg !3719

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3692
  ret i32 %31, !dbg !3720
}

; Function Attrs: nofree nounwind
declare !dbg !3721 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3724 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3740, metadata !DIExpression()), !dbg !3749
  call void @llvm.dbg.value(metadata i8* %1, metadata !3741, metadata !DIExpression()), !dbg !3749
  call void @llvm.dbg.value(metadata i64 %2, metadata !3742, metadata !DIExpression()), !dbg !3749
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3743, metadata !DIExpression()), !dbg !3749
  %6 = bitcast i32* %5 to i8*, !dbg !3750
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #26, !dbg !3750
  %7 = icmp eq i32* %0, null, !dbg !3751
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3753
  call void @llvm.dbg.value(metadata i32* %8, metadata !3740, metadata !DIExpression()), !dbg !3749
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #26, !dbg !3754
  call void @llvm.dbg.value(metadata i64 %9, metadata !3744, metadata !DIExpression()), !dbg !3749
  %10 = icmp ugt i64 %9, -3, !dbg !3755
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !3756
  br i1 %12, label %13, label %18, !dbg !3756

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #26, !dbg !3757
  br i1 %14, label %18, label %15, !dbg !3758

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3759, !tbaa !879
  call void @llvm.dbg.value(metadata i8 %16, metadata !3746, metadata !DIExpression()), !dbg !3760
  %17 = zext i8 %16 to i32, !dbg !3761
  store i32 %17, i32* %8, align 4, !dbg !3762, !tbaa !888
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3749
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #26, !dbg !3763
  ret i64 %19, !dbg !3763
}

; Function Attrs: nounwind
declare !dbg !3764 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3768 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3806, metadata !DIExpression()), !dbg !3811
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #26, !dbg !3812
  call void @llvm.dbg.value(metadata i1 undef, metadata !3807, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3811
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3813, metadata !DIExpression()), !dbg !3816
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3818
  %4 = load i32, i32* %3, align 8, !dbg !3818, !tbaa !1384
  %5 = and i32 %4, 32, !dbg !3819
  %6 = icmp eq i32 %5, 0, !dbg !3819
  call void @llvm.dbg.value(metadata i1 %6, metadata !3809, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3811
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #26, !dbg !3820
  %8 = icmp eq i32 %7, 0, !dbg !3821
  call void @llvm.dbg.value(metadata i1 %8, metadata !3810, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3811
  br i1 %6, label %9, label %19, !dbg !3822

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3824
  call void @llvm.dbg.value(metadata i1 %10, metadata !3807, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3811
  %11 = or i1 %10, %8, !dbg !3825
  %12 = xor i1 %8, true, !dbg !3825
  %13 = sext i1 %12 to i32, !dbg !3825
  br i1 %11, label %22, label %14, !dbg !3825

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #30, !dbg !3826
  %16 = load i32, i32* %15, align 4, !dbg !3826, !tbaa !888
  %17 = icmp ne i32 %16, 9, !dbg !3827
  %18 = sext i1 %17 to i32, !dbg !3828
  br label %22, !dbg !3828

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3829

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #30, !dbg !3831
  store i32 0, i32* %21, align 4, !dbg !3833, !tbaa !888
  br label %22, !dbg !3831

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3811
  ret i32 %23, !dbg !3834
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3835 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3839, metadata !DIExpression()), !dbg !3844
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3845
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #26, !dbg !3845
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3840, metadata !DIExpression()), !dbg !3846
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #26, !dbg !3847
  %5 = icmp eq i32 %4, 0, !dbg !3847
  br i1 %5, label %6, label %13, !dbg !3849

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3850
  %8 = load i16, i16* %7, align 16, !dbg !3850
  %9 = icmp eq i16 %8, 67, !dbg !3850
  br i1 %9, label %13, label %10, !dbg !3851

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.131, i64 0, i64 0), i64 6), !dbg !3852
  %12 = icmp ne i32 %11, 0, !dbg !3853
  br label %13, !dbg !3851

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3844
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #26, !dbg !3854
  ret i1 %14, !dbg !3854
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3855 {
  %1 = tail call i8* @nl_langinfo(i32 14) #26, !dbg !3860
  call void @llvm.dbg.value(metadata i8* %1, metadata !3859, metadata !DIExpression()), !dbg !3861
  %2 = icmp eq i8* %1, null, !dbg !3862
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.134, i64 0, i64 0), i8* %1, !dbg !3864
  call void @llvm.dbg.value(metadata i8* %3, metadata !3859, metadata !DIExpression()), !dbg !3861
  %4 = load i8, i8* %3, align 1, !dbg !3865, !tbaa !879
  %5 = icmp eq i8 %4, 0, !dbg !3869
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.135, i64 0, i64 0), i8* %3, !dbg !3870
  call void @llvm.dbg.value(metadata i8* %6, metadata !3859, metadata !DIExpression()), !dbg !3861
  ret i8* %6, !dbg !3871
}

; Function Attrs: nounwind
declare !dbg !3872 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3875 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3879, metadata !DIExpression()), !dbg !3882
  call void @llvm.dbg.value(metadata i8* %1, metadata !3880, metadata !DIExpression()), !dbg !3882
  call void @llvm.dbg.value(metadata i64 %2, metadata !3881, metadata !DIExpression()), !dbg !3882
  call void @llvm.dbg.value(metadata i32 %0, metadata !3883, metadata !DIExpression()) #26, !dbg !3892
  call void @llvm.dbg.value(metadata i8* %1, metadata !3886, metadata !DIExpression()) #26, !dbg !3892
  call void @llvm.dbg.value(metadata i64 %2, metadata !3887, metadata !DIExpression()) #26, !dbg !3892
  call void @llvm.dbg.value(metadata i32 %0, metadata !3894, metadata !DIExpression()) #26, !dbg !3900
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #26, !dbg !3902
  call void @llvm.dbg.value(metadata i8* %4, metadata !3899, metadata !DIExpression()) #26, !dbg !3900
  call void @llvm.dbg.value(metadata i8* %4, metadata !3888, metadata !DIExpression()) #26, !dbg !3892
  %5 = icmp eq i8* %4, null, !dbg !3903
  br i1 %5, label %6, label %9, !dbg !3904

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3905
  br i1 %7, label %19, label %8, !dbg !3908

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3909, !tbaa !879
  br label %19, !dbg !3910

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #27, !dbg !3911
  call void @llvm.dbg.value(metadata i64 %10, metadata !3889, metadata !DIExpression()) #26, !dbg !3912
  %11 = icmp ult i64 %10, %2, !dbg !3913
  br i1 %11, label %12, label %14, !dbg !3915

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3916
  call void @llvm.dbg.value(metadata i8* %1, metadata !3918, metadata !DIExpression()) #26, !dbg !3923
  call void @llvm.dbg.value(metadata i8* %4, metadata !3921, metadata !DIExpression()) #26, !dbg !3923
  call void @llvm.dbg.value(metadata i64 %13, metadata !3922, metadata !DIExpression()) #26, !dbg !3923
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #26, !dbg !3925
  br label %19, !dbg !3926

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3927
  br i1 %15, label %19, label %16, !dbg !3930

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3931
  call void @llvm.dbg.value(metadata i8* %1, metadata !3918, metadata !DIExpression()) #26, !dbg !3933
  call void @llvm.dbg.value(metadata i8* %4, metadata !3921, metadata !DIExpression()) #26, !dbg !3933
  call void @llvm.dbg.value(metadata i64 %17, metadata !3922, metadata !DIExpression()) #26, !dbg !3933
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #26, !dbg !3935
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3936
  store i8 0, i8* %18, align 1, !dbg !3937, !tbaa !879
  br label %19, !dbg !3938

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3939
  ret i32 %20, !dbg !3940
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3941 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3943, metadata !DIExpression()), !dbg !3944
  call void @llvm.dbg.value(metadata i32 %0, metadata !3894, metadata !DIExpression()) #26, !dbg !3945
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #26, !dbg !3947
  call void @llvm.dbg.value(metadata i8* %2, metadata !3899, metadata !DIExpression()) #26, !dbg !3945
  ret i8* %2, !dbg !3948
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
attributes #10 = { inaccessiblemem_or_argmemonly nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nofree norecurse nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nofree norecurse nounwind sspstrong uwtable willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { noreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nofree nounwind }
attributes #15 = { norecurse nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { nofree norecurse nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { argmemonly nofree nounwind readonly willreturn }
attributes #18 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #20 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #21 = { nofree nosync nounwind willreturn }
attributes #22 = { inlinehint nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #23 = { inaccessiblememonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #24 = { inaccessiblemem_or_argmemonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #25 = { nofree nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #26 = { nounwind }
attributes #27 = { nounwind readonly willreturn }
attributes #28 = { noreturn nounwind }
attributes #29 = { noreturn }
attributes #30 = { nounwind readnone willreturn }
attributes #31 = { cold }

!llvm.dbg.cu = !{!2, !51, !192, !198, !205, !275, !211, !217, !278, !269, !285, !296, !298, !300, !302, !304, !306, !308, !311, !313, !315, !704}
!llvm.ident = !{!706, !706, !706, !706, !706, !706, !706, !706, !706, !706, !706, !706, !706, !706, !706, !706, !706, !706, !706, !706, !706, !706}
!llvm.module.flags = !{!707, !708, !709, !710, !711}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "shortopts", scope: !2, file: !3, line: 51, type: !46, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !29, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/expand.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
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
!21 = !{!22, !24, !25, !26, !27, !28}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!29 = !{!0, !30}
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 53, type: !32, isLocal: true, isDefinition: true)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 1280, elements: !44)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !35, line: 50, size: 256, elements: !36)
!35 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!36 = !{!37, !40, !41, !43}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !34, file: !35, line: 52, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !34, file: !35, line: 55, baseType: !25, size: 32, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !34, file: !35, line: 56, baseType: !42, size: 64, offset: 128)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !34, file: !35, line: 57, baseType: !25, size: 32, offset: 192)
!44 = !{!45}
!45 = !DISubrange(count: 5)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 272, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 34)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "convert_entire_line", scope: !51, file: !52, line: 33, type: !180, isLocal: false, isDefinition: true)
!51 = distinct !DICompileUnit(language: DW_LANG_C99, file: !52, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !53, retainedTypes: !93, globals: !99, splitDebugInlining: false, nameTableKind: None)
!52 = !DIFile(filename: "src/expand-common.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!53 = !{!5, !54, !68, !77}
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !55, line: 32, baseType: !7, size: 32, elements: !56)
!55 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!56 = !{!57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67}
!57 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!58 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!59 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!60 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!61 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!62 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!63 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!64 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!65 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!66 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!67 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !69, line: 45, baseType: !7, size: 32, elements: !70)
!69 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!70 = !{!71, !72, !73, !74, !75, !76}
!71 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0, isUnsigned: true)
!72 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2, isUnsigned: true)
!73 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5, isUnsigned: true)
!74 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4, isUnsigned: true)
!75 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3, isUnsigned: true)
!76 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1, isUnsigned: true)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !79, file: !78, line: 186, baseType: !7, size: 32, elements: !91)
!78 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!79 = distinct !DISubprogram(name: "x2nrealloc", scope: !78, file: !78, line: 174, type: !80, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !86)
!80 = !DISubroutineType(types: !81)
!81 = !{!24, !24, !82, !83}
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !84, line: 46, baseType: !85)
!84 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!85 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!86 = !{!87, !88, !89, !90}
!87 = !DILocalVariable(name: "p", arg: 1, scope: !79, file: !78, line: 174, type: !24)
!88 = !DILocalVariable(name: "pn", arg: 2, scope: !79, file: !78, line: 174, type: !82)
!89 = !DILocalVariable(name: "s", arg: 3, scope: !79, file: !78, line: 174, type: !83)
!90 = !DILocalVariable(name: "n", scope: !79, file: !78, line: 176, type: !83)
!91 = !{!92}
!92 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!93 = !{!25, !26, !7, !94, !24, !95, !83}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !96, line: 102, baseType: !97)
!96 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !98, line: 73, baseType: !85)
!98 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!99 = !{!49, !100, !102, !164, !166, !168, !170, !172, !174, !176, !178, !181, !186}
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "exit_status", scope: !51, file: !52, line: 72, type: !25, isLocal: false, isDefinition: true)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(name: "prev_file", scope: !104, file: !52, line: 336, type: !22, isLocal: true, isDefinition: true)
!104 = distinct !DISubprogram(name: "next_file", scope: !52, file: !52, line: 334, type: !105, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !161)
!105 = !DISubroutineType(types: !106)
!106 = !{!107, !107}
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !109, line: 7, baseType: !110)
!109 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !111, line: 49, size: 1728, elements: !112)
!111 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!112 = !{!113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !128, !130, !131, !132, !135, !136, !138, !142, !145, !147, !150, !153, !154, !155, !156, !157}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !110, file: !111, line: 51, baseType: !25, size: 32)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !110, file: !111, line: 54, baseType: !22, size: 64, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !110, file: !111, line: 55, baseType: !22, size: 64, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !110, file: !111, line: 56, baseType: !22, size: 64, offset: 192)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !110, file: !111, line: 57, baseType: !22, size: 64, offset: 256)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !110, file: !111, line: 58, baseType: !22, size: 64, offset: 320)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !110, file: !111, line: 59, baseType: !22, size: 64, offset: 384)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !110, file: !111, line: 60, baseType: !22, size: 64, offset: 448)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !110, file: !111, line: 61, baseType: !22, size: 64, offset: 512)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !110, file: !111, line: 64, baseType: !22, size: 64, offset: 576)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !110, file: !111, line: 65, baseType: !22, size: 64, offset: 640)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !110, file: !111, line: 66, baseType: !22, size: 64, offset: 704)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !110, file: !111, line: 68, baseType: !126, size: 64, offset: 768)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !111, line: 36, flags: DIFlagFwdDecl)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !110, file: !111, line: 70, baseType: !129, size: 64, offset: 832)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !110, file: !111, line: 72, baseType: !25, size: 32, offset: 896)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !110, file: !111, line: 73, baseType: !25, size: 32, offset: 928)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !110, file: !111, line: 74, baseType: !133, size: 64, offset: 960)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !98, line: 152, baseType: !134)
!134 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !110, file: !111, line: 77, baseType: !26, size: 16, offset: 1024)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !110, file: !111, line: 78, baseType: !137, size: 8, offset: 1040)
!137 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !110, file: !111, line: 79, baseType: !139, size: 8, offset: 1048)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 1)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !110, file: !111, line: 81, baseType: !143, size: 64, offset: 1088)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !111, line: 43, baseType: null)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !110, file: !111, line: 89, baseType: !146, size: 64, offset: 1152)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !98, line: 153, baseType: !134)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !110, file: !111, line: 91, baseType: !148, size: 64, offset: 1216)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !111, line: 37, flags: DIFlagFwdDecl)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !110, file: !111, line: 92, baseType: !151, size: 64, offset: 1280)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !111, line: 38, flags: DIFlagFwdDecl)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !110, file: !111, line: 93, baseType: !129, size: 64, offset: 1344)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !110, file: !111, line: 94, baseType: !24, size: 64, offset: 1408)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !110, file: !111, line: 95, baseType: !83, size: 64, offset: 1472)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !110, file: !111, line: 96, baseType: !25, size: 32, offset: 1536)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !110, file: !111, line: 98, baseType: !158, size: 160, offset: 1568)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 160, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 20)
!161 = !{!162, !163}
!162 = !DILocalVariable(name: "fp", arg: 1, scope: !104, file: !52, line: 334, type: !107)
!163 = !DILocalVariable(name: "file", scope: !104, file: !52, line: 337, type: !22)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(name: "max_column_width", scope: !51, file: !52, line: 45, type: !83, isLocal: false, isDefinition: true)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "first_free_tab", scope: !51, file: !52, line: 57, type: !83, isLocal: true, isDefinition: true)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(name: "tab_list", scope: !51, file: !52, line: 50, type: !94, isLocal: true, isDefinition: true)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "n_tabs_allocated", scope: !51, file: !52, line: 53, type: !83, isLocal: true, isDefinition: true)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(name: "extend_size", scope: !51, file: !52, line: 39, type: !95, isLocal: true, isDefinition: true)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(name: "increment_size", scope: !51, file: !52, line: 42, type: !95, isLocal: true, isDefinition: true)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(name: "tab_size", scope: !51, file: !52, line: 36, type: !95, isLocal: true, isDefinition: true)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !51, file: !52, line: 69, type: !180, isLocal: true, isDefinition: true)
!180 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(name: "stdin_argv", scope: !51, file: !52, line: 63, type: !183, isLocal: true, isDefinition: true)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 128, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 2)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(name: "file_list", scope: !51, file: !52, line: 60, type: !188, isLocal: true, isDefinition: true)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!189 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(name: "Version", scope: !192, file: !193, line: 2, type: !38, isLocal: false, isDefinition: true)
!192 = distinct !DICompileUnit(language: DW_LANG_C99, file: !193, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !194, globals: !195, splitDebugInlining: false, nameTableKind: None)
!193 = !DIFile(filename: "src/version.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!194 = !{}
!195 = !{!190}
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(name: "file_name", scope: !198, file: !199, line: 46, type: !38, isLocal: true, isDefinition: true)
!198 = distinct !DICompileUnit(language: DW_LANG_C99, file: !199, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !194, globals: !200, splitDebugInlining: false, nameTableKind: None)
!199 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!200 = !{!196, !201}
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !198, file: !199, line: 56, type: !180, isLocal: true, isDefinition: true)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(name: "exit_failure", scope: !205, file: !206, line: 24, type: !208, isLocal: false, isDefinition: true)
!205 = distinct !DICompileUnit(language: DW_LANG_C99, file: !206, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !194, globals: !207, splitDebugInlining: false, nameTableKind: None)
!206 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!207 = !{!203}
!208 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !25)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(name: "program_name", scope: !211, file: !212, line: 33, type: !38, isLocal: false, isDefinition: true)
!211 = distinct !DICompileUnit(language: DW_LANG_C99, file: !212, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !194, retainedTypes: !213, globals: !214, splitDebugInlining: false, nameTableKind: None)
!212 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!213 = !{!24, !22}
!214 = !{!209}
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !217, file: !218, line: 85, type: !263, isLocal: false, isDefinition: true)
!217 = distinct !DICompileUnit(language: DW_LANG_C99, file: !218, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !219, retainedTypes: !225, globals: !226, splitDebugInlining: false, nameTableKind: None)
!218 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!219 = !{!54, !220, !5}
!220 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !55, line: 242, baseType: !7, size: 32, elements: !221)
!221 = !{!222, !223, !224}
!222 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!223 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!224 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!225 = !{!25, !26, !83, !22}
!226 = !{!215, !227, !233, !245, !247, !252, !259, !261}
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !217, file: !218, line: 101, type: !229, isLocal: false, isDefinition: true)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 320, elements: !231)
!230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!231 = !{!232}
!232 = !DISubrange(count: 10)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !217, file: !218, line: 1052, type: !235, isLocal: false, isDefinition: true)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !218, line: 65, size: 448, elements: !236)
!236 = !{!237, !238, !239, !243, !244}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !235, file: !218, line: 68, baseType: !54, size: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !235, file: !218, line: 71, baseType: !25, size: 32, offset: 32)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !235, file: !218, line: 75, baseType: !240, size: 256, offset: 64)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !241)
!241 = !{!242}
!242 = !DISubrange(count: 8)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !235, file: !218, line: 78, baseType: !38, size: 64, offset: 320)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !235, file: !218, line: 81, baseType: !38, size: 64, offset: 384)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !217, file: !218, line: 116, type: !235, isLocal: true, isDefinition: true)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(name: "slot0", scope: !217, file: !218, line: 842, type: !249, isLocal: true, isDefinition: true)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2048, elements: !250)
!250 = !{!251}
!251 = !DISubrange(count: 256)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(name: "slotvec", scope: !217, file: !218, line: 845, type: !254, isLocal: true, isDefinition: true)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !218, line: 834, size: 128, elements: !256)
!256 = !{!257, !258}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !255, file: !218, line: 836, baseType: !83, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !255, file: !218, line: 837, baseType: !22, size: 64, offset: 64)
!259 = !DIGlobalVariableExpression(var: !260, expr: !DIExpression())
!260 = distinct !DIGlobalVariable(name: "nslots", scope: !217, file: !218, line: 843, type: !25, isLocal: true, isDefinition: true)
!261 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression())
!262 = distinct !DIGlobalVariable(name: "slotvec0", scope: !217, file: !218, line: 844, type: !255, isLocal: true, isDefinition: true)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 704, elements: !265)
!264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!265 = !{!266}
!266 = !DISubrange(count: 11)
!267 = !DIGlobalVariableExpression(var: !268, expr: !DIExpression())
!268 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !269, file: !270, line: 26, type: !272, isLocal: false, isDefinition: true)
!269 = distinct !DICompileUnit(language: DW_LANG_C99, file: !270, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !194, globals: !271, splitDebugInlining: false, nameTableKind: None)
!270 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!271 = !{!267}
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 376, elements: !273)
!273 = !{!274}
!274 = !DISubrange(count: 47)
!275 = distinct !DICompileUnit(language: DW_LANG_C99, file: !276, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !277, splitDebugInlining: false, nameTableKind: None)
!276 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!277 = !{!68}
!278 = distinct !DICompileUnit(language: DW_LANG_C99, file: !279, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !280, retainedTypes: !284, splitDebugInlining: false, nameTableKind: None)
!279 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!280 = !{!281}
!281 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !279, line: 40, baseType: !7, size: 32, elements: !282)
!282 = !{!283}
!283 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!284 = !{!24}
!285 = distinct !DICompileUnit(language: DW_LANG_C99, file: !286, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !287, retainedTypes: !295, splitDebugInlining: false, nameTableKind: None)
!286 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!287 = !{!288}
!288 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !289, file: !78, line: 186, baseType: !7, size: 32, elements: !91)
!289 = distinct !DISubprogram(name: "x2nrealloc", scope: !78, file: !78, line: 174, type: !80, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !290)
!290 = !{!291, !292, !293, !294}
!291 = !DILocalVariable(name: "p", arg: 1, scope: !289, file: !78, line: 174, type: !24)
!292 = !DILocalVariable(name: "pn", arg: 2, scope: !289, file: !78, line: 174, type: !82)
!293 = !DILocalVariable(name: "s", arg: 3, scope: !289, file: !78, line: 174, type: !83)
!294 = !DILocalVariable(name: "n", scope: !289, file: !78, line: 176, type: !83)
!295 = !{!83, !22, !24}
!296 = distinct !DICompileUnit(language: DW_LANG_C99, file: !297, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !194, splitDebugInlining: false, nameTableKind: None)
!297 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!298 = distinct !DICompileUnit(language: DW_LANG_C99, file: !299, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !194, splitDebugInlining: false, nameTableKind: None)
!299 = !DIFile(filename: "lib/xstrndup.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!300 = distinct !DICompileUnit(language: DW_LANG_C99, file: !301, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !194, retainedTypes: !284, splitDebugInlining: false, nameTableKind: None)
!301 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!302 = distinct !DICompileUnit(language: DW_LANG_C99, file: !303, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !194, splitDebugInlining: false, nameTableKind: None)
!303 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!304 = distinct !DICompileUnit(language: DW_LANG_C99, file: !305, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !194, retainedTypes: !284, splitDebugInlining: false, nameTableKind: None)
!305 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!306 = distinct !DICompileUnit(language: DW_LANG_C99, file: !307, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !194, retainedTypes: !284, splitDebugInlining: false, nameTableKind: None)
!307 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!308 = distinct !DICompileUnit(language: DW_LANG_C99, file: !309, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !194, retainedTypes: !310, splitDebugInlining: false, nameTableKind: None)
!309 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!310 = !{!83}
!311 = distinct !DICompileUnit(language: DW_LANG_C99, file: !312, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !194, splitDebugInlining: false, nameTableKind: None)
!312 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!313 = distinct !DICompileUnit(language: DW_LANG_C99, file: !314, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !194, splitDebugInlining: false, nameTableKind: None)
!314 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!315 = distinct !DICompileUnit(language: DW_LANG_C99, file: !316, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !317, retainedTypes: !284, splitDebugInlining: false, nameTableKind: None)
!316 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!317 = !{!318}
!318 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !319, line: 41, baseType: !7, size: 32, elements: !320)
!319 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!320 = !{!321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703}
!321 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!322 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!323 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!324 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!325 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!326 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!327 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!328 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!329 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!330 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!331 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!332 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!333 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!334 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!335 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!336 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!337 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!338 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!339 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!340 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!341 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!342 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!343 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!344 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!345 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!346 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!347 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!348 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!349 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!350 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!351 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!352 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!353 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!354 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!355 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!356 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!357 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!358 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!359 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!360 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!361 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!362 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!363 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!364 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!365 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!366 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!367 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!368 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!369 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!370 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!429 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!432 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!433 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!434 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!435 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!436 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!437 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!438 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!439 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!440 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!441 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!442 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!443 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!516 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!589 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!590 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!591 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!592 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!593 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!594 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!595 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!596 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!597 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!598 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!599 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!600 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!601 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!602 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!603 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!605 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!606 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!607 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!608 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!609 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!610 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!636 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!637 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!638 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!639 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!640 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!645 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!646 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!647 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!648 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!683 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!684 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!685 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!686 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!687 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!688 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!689 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!690 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!691 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!692 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!693 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!694 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!695 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!696 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!697 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!698 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!699 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!700 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!701 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!702 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!703 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!704 = distinct !DICompileUnit(language: DW_LANG_C99, file: !705, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !194, retainedTypes: !284, splitDebugInlining: false, nameTableKind: None)
!705 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!706 = !{!"clang version 12.0.1"}
!707 = !{i32 7, !"Dwarf Version", i32 4}
!708 = !{i32 2, !"Debug Info Version", i32 3}
!709 = !{i32 1, !"wchar_size", i32 4}
!710 = !{i32 7, !"PIC Level", i32 2}
!711 = !{i32 7, !"PIE Level", i32 2}
!712 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 63, type: !713, scopeLine: 64, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !715)
!713 = !DISubroutineType(types: !714)
!714 = !{null, !25}
!715 = !{!716}
!716 = !DILocalVariable(name: "status", arg: 1, scope: !712, file: !3, line: 63, type: !25)
!717 = !DILocation(line: 0, scope: !712)
!718 = !DILocation(line: 65, column: 14, scope: !719)
!719 = distinct !DILexicalBlock(scope: !712, file: !3, line: 65, column: 7)
!720 = !DILocation(line: 65, column: 7, scope: !712)
!721 = !DILocation(line: 66, column: 5, scope: !722)
!722 = distinct !DILexicalBlock(scope: !719, file: !3, line: 66, column: 5)
!723 = !{!724, !724, i64 0}
!724 = !{!"any pointer", !725, i64 0}
!725 = !{!"omnipotent char", !726, i64 0}
!726 = !{!"Simple C/C++ TBAA"}
!727 = !DILocation(line: 69, column: 7, scope: !728)
!728 = distinct !DILexicalBlock(scope: !719, file: !3, line: 68, column: 5)
!729 = !DILocation(line: 73, column: 7, scope: !728)
!730 = !DILocation(line: 583, column: 3, scope: !731, inlinedAt: !735)
!731 = distinct !DISubprogram(name: "emit_stdin_note", scope: !732, file: !732, line: 581, type: !733, scopeLine: 582, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !194)
!732 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!733 = !DISubroutineType(types: !734)
!734 = !{null}
!735 = distinct !DILocation(line: 77, column: 7, scope: !728)
!736 = !DILocation(line: 590, column: 3, scope: !737, inlinedAt: !738)
!737 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !732, file: !732, line: 588, type: !733, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !194)
!738 = distinct !DILocation(line: 78, column: 7, scope: !728)
!739 = !DILocation(line: 80, column: 7, scope: !728)
!740 = !DILocation(line: 84, column: 7, scope: !728)
!741 = !DILocation(line: 85, column: 7, scope: !728)
!742 = !DILocation(line: 86, column: 7, scope: !728)
!743 = !DILocalVariable(name: "program", arg: 1, scope: !744, file: !732, line: 634, type: !38)
!744 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !732, file: !732, line: 634, type: !745, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !747)
!745 = !DISubroutineType(types: !746)
!746 = !{null, !38}
!747 = !{!743, !748, !757, !758, !760}
!748 = !DILocalVariable(name: "infomap", scope: !744, file: !732, line: 636, type: !749)
!749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !750, size: 896, elements: !755)
!750 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !751)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !744, file: !732, line: 636, size: 128, elements: !752)
!752 = !{!753, !754}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !751, file: !732, line: 636, baseType: !38, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !751, file: !732, line: 636, baseType: !38, size: 64, offset: 64)
!755 = !{!756}
!756 = !DISubrange(count: 7)
!757 = !DILocalVariable(name: "node", scope: !744, file: !732, line: 646, type: !38)
!758 = !DILocalVariable(name: "map_prog", scope: !744, file: !732, line: 647, type: !759)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!760 = !DILocalVariable(name: "lc_messages", scope: !744, file: !732, line: 659, type: !38)
!761 = !DILocation(line: 0, scope: !744, inlinedAt: !762)
!762 = distinct !DILocation(line: 87, column: 7, scope: !728)
!763 = !DILocation(line: 636, column: 3, scope: !744, inlinedAt: !762)
!764 = !DILocation(line: 636, column: 67, scope: !744, inlinedAt: !762)
!765 = !DILocation(line: 647, column: 36, scope: !744, inlinedAt: !762)
!766 = !DILocation(line: 649, column: 3, scope: !744, inlinedAt: !762)
!767 = !DILocation(line: 649, column: 33, scope: !744, inlinedAt: !762)
!768 = !DILocation(line: 650, column: 13, scope: !744, inlinedAt: !762)
!769 = !DILocation(line: 649, column: 20, scope: !744, inlinedAt: !762)
!770 = !{!771, !724, i64 0}
!771 = !{!"infomap", !724, i64 0, !724, i64 8}
!772 = !DILocation(line: 649, column: 10, scope: !744, inlinedAt: !762)
!773 = !DILocation(line: 649, column: 28, scope: !744, inlinedAt: !762)
!774 = distinct !{!774, !766, !768, !775}
!775 = !{!"llvm.loop.mustprogress"}
!776 = !DILocation(line: 652, column: 17, scope: !777, inlinedAt: !762)
!777 = distinct !DILexicalBlock(scope: !744, file: !732, line: 652, column: 7)
!778 = !{!771, !724, i64 8}
!779 = !DILocation(line: 652, column: 7, scope: !777, inlinedAt: !762)
!780 = !DILocation(line: 652, column: 7, scope: !744, inlinedAt: !762)
!781 = !DILocation(line: 655, column: 3, scope: !744, inlinedAt: !762)
!782 = !DILocation(line: 659, column: 29, scope: !744, inlinedAt: !762)
!783 = !DILocation(line: 660, column: 7, scope: !784, inlinedAt: !762)
!784 = distinct !DILexicalBlock(scope: !744, file: !732, line: 660, column: 7)
!785 = !DILocation(line: 660, column: 19, scope: !784, inlinedAt: !762)
!786 = !DILocation(line: 660, column: 22, scope: !784, inlinedAt: !762)
!787 = !DILocation(line: 660, column: 7, scope: !744, inlinedAt: !762)
!788 = !DILocation(line: 666, column: 7, scope: !789, inlinedAt: !762)
!789 = distinct !DILexicalBlock(scope: !784, file: !732, line: 661, column: 5)
!790 = !DILocation(line: 668, column: 5, scope: !789, inlinedAt: !762)
!791 = !DILocation(line: 669, column: 3, scope: !744, inlinedAt: !762)
!792 = !DILocation(line: 671, column: 3, scope: !744, inlinedAt: !762)
!793 = !DILocation(line: 673, column: 1, scope: !744, inlinedAt: !762)
!794 = !DILocation(line: 89, column: 3, scope: !712)
!795 = !DISubprogram(name: "dcgettext", scope: !796, file: !796, line: 51, type: !797, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !194)
!796 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!797 = !DISubroutineType(types: !798)
!798 = !{!22, !38, !38, !25}
!799 = !DISubprogram(name: "fputs_unlocked", scope: !800, file: !800, line: 667, type: !801, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !194)
!800 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!801 = !DISubroutineType(types: !802)
!802 = !{!25, !38, !803}
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !111, line: 49, size: 1728, elements: !805)
!805 = !{!806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !804, file: !111, line: 51, baseType: !25, size: 32)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !804, file: !111, line: 54, baseType: !22, size: 64, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !804, file: !111, line: 55, baseType: !22, size: 64, offset: 128)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !804, file: !111, line: 56, baseType: !22, size: 64, offset: 192)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !804, file: !111, line: 57, baseType: !22, size: 64, offset: 256)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !804, file: !111, line: 58, baseType: !22, size: 64, offset: 320)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !804, file: !111, line: 59, baseType: !22, size: 64, offset: 384)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !804, file: !111, line: 60, baseType: !22, size: 64, offset: 448)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !804, file: !111, line: 61, baseType: !22, size: 64, offset: 512)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !804, file: !111, line: 64, baseType: !22, size: 64, offset: 576)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !804, file: !111, line: 65, baseType: !22, size: 64, offset: 640)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !804, file: !111, line: 66, baseType: !22, size: 64, offset: 704)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !804, file: !111, line: 68, baseType: !126, size: 64, offset: 768)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !804, file: !111, line: 70, baseType: !803, size: 64, offset: 832)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !804, file: !111, line: 72, baseType: !25, size: 32, offset: 896)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !804, file: !111, line: 73, baseType: !25, size: 32, offset: 928)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !804, file: !111, line: 74, baseType: !133, size: 64, offset: 960)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !804, file: !111, line: 77, baseType: !26, size: 16, offset: 1024)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !804, file: !111, line: 78, baseType: !137, size: 8, offset: 1040)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !804, file: !111, line: 79, baseType: !139, size: 8, offset: 1048)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !804, file: !111, line: 81, baseType: !143, size: 64, offset: 1088)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !804, file: !111, line: 89, baseType: !146, size: 64, offset: 1152)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !804, file: !111, line: 91, baseType: !148, size: 64, offset: 1216)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !804, file: !111, line: 92, baseType: !151, size: 64, offset: 1280)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !804, file: !111, line: 93, baseType: !803, size: 64, offset: 1344)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !804, file: !111, line: 94, baseType: !24, size: 64, offset: 1408)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !804, file: !111, line: 95, baseType: !83, size: 64, offset: 1472)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !804, file: !111, line: 96, baseType: !25, size: 32, offset: 1536)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !804, file: !111, line: 98, baseType: !158, size: 160, offset: 1568)
!835 = !DISubprogram(name: "setlocale", scope: !836, file: !836, line: 122, type: !837, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !194)
!836 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!837 = !DISubroutineType(types: !838)
!838 = !{!22, !25, !38}
!839 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 182, type: !840, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !842)
!840 = !DISubroutineType(types: !841)
!841 = !{!25, !25, !188}
!842 = !{!843, !844, !845, !846}
!843 = !DILocalVariable(name: "argc", arg: 1, scope: !839, file: !3, line: 182, type: !25)
!844 = !DILocalVariable(name: "argv", arg: 2, scope: !839, file: !3, line: 182, type: !188)
!845 = !DILocalVariable(name: "c", scope: !839, file: !3, line: 184, type: !25)
!846 = !DILocalVariable(name: "tab_stop", scope: !847, file: !3, line: 213, type: !851)
!847 = distinct !DILexicalBlock(scope: !848, file: !3, line: 212, column: 13)
!848 = distinct !DILexicalBlock(scope: !849, file: !3, line: 209, column: 15)
!849 = distinct !DILexicalBlock(scope: !850, file: !3, line: 198, column: 9)
!850 = distinct !DILexicalBlock(scope: !839, file: !3, line: 196, column: 5)
!851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 16, elements: !184)
!852 = !DILocation(line: 0, scope: !839)
!853 = !DILocation(line: 187, column: 21, scope: !839)
!854 = !DILocation(line: 187, column: 3, scope: !839)
!855 = !DILocation(line: 188, column: 3, scope: !839)
!856 = !DILocation(line: 189, column: 3, scope: !839)
!857 = !DILocation(line: 190, column: 3, scope: !839)
!858 = !DILocation(line: 192, column: 3, scope: !839)
!859 = !DILocation(line: 193, column: 23, scope: !839)
!860 = !{!861, !861, i64 0}
!861 = !{!"_Bool", !725, i64 0}
!862 = !DILocation(line: 195, column: 3, scope: !839)
!863 = !DILocation(line: 195, column: 15, scope: !839)
!864 = !DILocation(line: 200, column: 31, scope: !849)
!865 = !DILocation(line: 201, column: 11, scope: !849)
!866 = !DILocation(line: 204, column: 28, scope: !849)
!867 = !DILocation(line: 204, column: 11, scope: !849)
!868 = !DILocation(line: 205, column: 11, scope: !849)
!869 = !DILocation(line: 209, column: 15, scope: !848)
!870 = !DILocation(line: 209, column: 15, scope: !849)
!871 = !DILocation(line: 210, column: 37, scope: !848)
!872 = !DILocation(line: 210, column: 13, scope: !848)
!873 = distinct !{!873, !862, !874, !775}
!874 = !DILocation(line: 227, column: 5, scope: !839)
!875 = !DILocation(line: 213, column: 15, scope: !847)
!876 = !DILocation(line: 213, column: 20, scope: !847)
!877 = !DILocation(line: 214, column: 29, scope: !847)
!878 = !DILocation(line: 214, column: 27, scope: !847)
!879 = !{!725, !725, i64 0}
!880 = !DILocation(line: 215, column: 27, scope: !847)
!881 = !DILocation(line: 216, column: 15, scope: !847)
!882 = !DILocation(line: 217, column: 13, scope: !848)
!883 = !DILocation(line: 220, column: 9, scope: !849)
!884 = !DILocation(line: 222, column: 9, scope: !849)
!885 = !DILocation(line: 225, column: 11, scope: !849)
!886 = !DILocation(line: 229, column: 3, scope: !839)
!887 = !DILocation(line: 231, column: 20, scope: !839)
!888 = !{!889, !889, i64 0}
!889 = !{!"int", !725, i64 0}
!890 = !DILocation(line: 231, column: 27, scope: !839)
!891 = !DILocation(line: 231, column: 19, scope: !839)
!892 = !DILocation(line: 231, column: 3, scope: !839)
!893 = !DILocation(line: 100, column: 14, scope: !894, inlinedAt: !911)
!894 = distinct !DISubprogram(name: "expand", scope: !3, file: !3, line: 97, type: !733, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !895)
!895 = !{!896, !899, !901, !902, !903, !904, !910}
!896 = !DILocalVariable(name: "fp", scope: !894, file: !3, line: 100, type: !897)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !109, line: 7, baseType: !804)
!899 = !DILocalVariable(name: "c", scope: !900, file: !3, line: 108, type: !25)
!900 = distinct !DILexicalBlock(scope: !894, file: !3, line: 106, column: 5)
!901 = !DILocalVariable(name: "convert", scope: !900, file: !3, line: 111, type: !180)
!902 = !DILocalVariable(name: "column", scope: !900, file: !3, line: 118, type: !95)
!903 = !DILocalVariable(name: "tab_index", scope: !900, file: !3, line: 121, type: !83)
!904 = !DILocalVariable(name: "next_tab_column", scope: !905, file: !3, line: 136, type: !95)
!905 = distinct !DILexicalBlock(scope: !906, file: !3, line: 134, column: 17)
!906 = distinct !DILexicalBlock(scope: !907, file: !3, line: 133, column: 19)
!907 = distinct !DILexicalBlock(scope: !908, file: !3, line: 132, column: 13)
!908 = distinct !DILexicalBlock(scope: !909, file: !3, line: 131, column: 15)
!909 = distinct !DILexicalBlock(scope: !900, file: !3, line: 127, column: 9)
!910 = !DILocalVariable(name: "last_tab", scope: !905, file: !3, line: 137, type: !180)
!911 = distinct !DILocation(line: 233, column: 3, scope: !839)
!912 = !DILocation(line: 0, scope: !894, inlinedAt: !911)
!913 = !DILocation(line: 102, column: 8, scope: !914, inlinedAt: !911)
!914 = distinct !DILexicalBlock(scope: !894, file: !3, line: 102, column: 7)
!915 = !DILocation(line: 102, column: 7, scope: !894, inlinedAt: !911)
!916 = !DILocation(line: 126, column: 7, scope: !900, inlinedAt: !911)
!917 = !DILocation(line: 0, scope: !900, inlinedAt: !911)
!918 = !DILocation(line: 121, column: 7, scope: !900, inlinedAt: !911)
!919 = !DILocation(line: 121, column: 14, scope: !900, inlinedAt: !911)
!920 = !{!921, !921, i64 0}
!921 = !{!"long", !725, i64 0}
!922 = !DILocation(line: 128, column: 11, scope: !909, inlinedAt: !911)
!923 = !DILocalVariable(name: "__fp", arg: 1, scope: !924, file: !925, line: 66, type: !897)
!924 = distinct !DISubprogram(name: "getc_unlocked", scope: !925, file: !925, line: 66, type: !926, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !928)
!925 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!926 = !DISubroutineType(types: !927)
!927 = !{!25, !897}
!928 = !{!923}
!929 = !DILocation(line: 0, scope: !924, inlinedAt: !930)
!930 = distinct !DILocation(line: 128, column: 23, scope: !909, inlinedAt: !911)
!931 = !DILocation(line: 68, column: 10, scope: !924, inlinedAt: !930)
!932 = !{!933, !724, i64 8}
!933 = !{!"_IO_FILE", !889, i64 0, !724, i64 8, !724, i64 16, !724, i64 24, !724, i64 32, !724, i64 40, !724, i64 48, !724, i64 56, !724, i64 64, !724, i64 72, !724, i64 80, !724, i64 88, !724, i64 96, !724, i64 104, !889, i64 112, !889, i64 116, !921, i64 120, !934, i64 128, !725, i64 130, !725, i64 131, !724, i64 136, !921, i64 144, !724, i64 152, !724, i64 160, !724, i64 168, !724, i64 176, !921, i64 184, !889, i64 192, !725, i64 196}
!934 = !{!"short", !725, i64 0}
!935 = !{!933, !724, i64 16}
!936 = !{!"branch_weights", i32 2000, i32 1}
!937 = !DILocation(line: 128, column: 38, scope: !909, inlinedAt: !911)
!938 = !DILocation(line: 128, column: 34, scope: !909, inlinedAt: !911)
!939 = !DILocation(line: 128, column: 47, scope: !909, inlinedAt: !911)
!940 = distinct !{!940, !922, !941, !775}
!941 = !DILocation(line: 129, column: 13, scope: !909, inlinedAt: !911)
!942 = !DILocation(line: 131, column: 15, scope: !908, inlinedAt: !911)
!943 = !DILocation(line: 131, column: 15, scope: !909, inlinedAt: !911)
!944 = !DILocation(line: 133, column: 19, scope: !907, inlinedAt: !911)
!945 = !DILocation(line: 137, column: 19, scope: !905, inlinedAt: !911)
!946 = !DILocation(line: 0, scope: !905, inlinedAt: !911)
!947 = !DILocation(line: 139, column: 37, scope: !905, inlinedAt: !911)
!948 = !DILocation(line: 142, column: 23, scope: !949, inlinedAt: !911)
!949 = distinct !DILexicalBlock(scope: !905, file: !3, line: 142, column: 23)
!950 = !{i8 0, i8 2}
!951 = !DILocation(line: 142, column: 23, scope: !905, inlinedAt: !911)
!952 = !DILocation(line: 145, column: 39, scope: !953, inlinedAt: !911)
!953 = distinct !DILexicalBlock(scope: !905, file: !3, line: 145, column: 23)
!954 = !DILocation(line: 145, column: 23, scope: !905, inlinedAt: !911)
!955 = !DILocation(line: 148, column: 19, scope: !905, inlinedAt: !911)
!956 = !DILocation(line: 146, column: 21, scope: !953, inlinedAt: !911)
!957 = !DILocation(line: 148, column: 26, scope: !905, inlinedAt: !911)
!958 = !DILocation(line: 148, column: 35, scope: !905, inlinedAt: !911)
!959 = !DILocalVariable(name: "__c", arg: 1, scope: !960, file: !925, line: 108, type: !25)
!960 = distinct !DISubprogram(name: "putchar_unlocked", scope: !925, file: !925, line: 108, type: !961, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !963)
!961 = !DISubroutineType(types: !962)
!962 = !{!25, !25}
!963 = !{!959}
!964 = !DILocation(line: 0, scope: !960, inlinedAt: !965)
!965 = distinct !DILocation(line: 149, column: 25, scope: !966, inlinedAt: !911)
!966 = distinct !DILexicalBlock(scope: !905, file: !3, line: 149, column: 25)
!967 = !DILocation(line: 110, column: 10, scope: !960, inlinedAt: !965)
!968 = !{!933, !724, i64 40}
!969 = !{!933, !724, i64 48}
!970 = !DILocation(line: 149, column: 39, scope: !966, inlinedAt: !911)
!971 = !DILocation(line: 149, column: 25, scope: !905, inlinedAt: !911)
!972 = distinct !{!972, !955, !973, !775}
!973 = !DILocation(line: 150, column: 23, scope: !905, inlinedAt: !911)
!974 = !DILocation(line: 150, column: 23, scope: !966, inlinedAt: !911)
!975 = !DILocation(line: 153, column: 17, scope: !906, inlinedAt: !911)
!976 = !DILocation(line: 153, column: 17, scope: !905, inlinedAt: !911)
!977 = !DILocation(line: 158, column: 30, scope: !978, inlinedAt: !911)
!978 = distinct !DILexicalBlock(scope: !979, file: !3, line: 155, column: 17)
!979 = distinct !DILexicalBlock(scope: !906, file: !3, line: 154, column: 24)
!980 = !DILocation(line: 158, column: 29, scope: !978, inlinedAt: !911)
!981 = !DILocation(line: 158, column: 26, scope: !978, inlinedAt: !911)
!982 = !DILocation(line: 159, column: 34, scope: !978, inlinedAt: !911)
!983 = !DILocation(line: 159, column: 33, scope: !978, inlinedAt: !911)
!984 = !DILocation(line: 159, column: 32, scope: !978, inlinedAt: !911)
!985 = !DILocation(line: 159, column: 29, scope: !978, inlinedAt: !911)
!986 = !DILocation(line: 160, column: 17, scope: !978, inlinedAt: !911)
!987 = !DILocation(line: 163, column: 25, scope: !988, inlinedAt: !911)
!988 = distinct !DILexicalBlock(scope: !979, file: !3, line: 162, column: 17)
!989 = !DILocation(line: 164, column: 24, scope: !990, inlinedAt: !911)
!990 = distinct !DILexicalBlock(scope: !988, file: !3, line: 164, column: 23)
!991 = !DILocation(line: 164, column: 23, scope: !988, inlinedAt: !911)
!992 = !DILocation(line: 165, column: 21, scope: !990, inlinedAt: !911)
!993 = !DILocation(line: 0, scope: !909, inlinedAt: !911)
!994 = !DILocation(line: 0, scope: !906, inlinedAt: !911)
!995 = !DILocation(line: 168, column: 26, scope: !907, inlinedAt: !911)
!996 = !DILocation(line: 168, column: 46, scope: !907, inlinedAt: !911)
!997 = !DILocation(line: 168, column: 52, scope: !907, inlinedAt: !911)
!998 = !{!934, !934, i64 0}
!999 = !DILocation(line: 168, column: 50, scope: !907, inlinedAt: !911)
!1000 = !DILocation(line: 168, column: 23, scope: !907, inlinedAt: !911)
!1001 = !DILocation(line: 169, column: 13, scope: !907, inlinedAt: !911)
!1002 = !DILocation(line: 171, column: 17, scope: !1003, inlinedAt: !911)
!1003 = distinct !DILexicalBlock(scope: !909, file: !3, line: 171, column: 15)
!1004 = !DILocation(line: 171, column: 15, scope: !909, inlinedAt: !911)
!1005 = !DILocation(line: 0, scope: !960, inlinedAt: !1006)
!1006 = distinct !DILocation(line: 174, column: 15, scope: !1007, inlinedAt: !911)
!1007 = distinct !DILexicalBlock(scope: !909, file: !3, line: 174, column: 15)
!1008 = !DILocation(line: 110, column: 10, scope: !960, inlinedAt: !1006)
!1009 = !DILocation(line: 174, column: 15, scope: !909, inlinedAt: !911)
!1010 = !DILocation(line: 174, column: 27, scope: !1007, inlinedAt: !911)
!1011 = !DILocation(line: 175, column: 13, scope: !1007, inlinedAt: !911)
!1012 = !DILocation(line: 177, column: 16, scope: !900, inlinedAt: !911)
!1013 = !DILocation(line: 176, column: 9, scope: !909, inlinedAt: !911)
!1014 = distinct !{!1014, !916, !1015, !775}
!1015 = !DILocation(line: 177, column: 23, scope: !900, inlinedAt: !911)
!1016 = !DILocation(line: 178, column: 5, scope: !894, inlinedAt: !911)
!1017 = !DILocation(line: 235, column: 3, scope: !839)
!1018 = !DILocation(line: 237, column: 10, scope: !839)
!1019 = !DILocation(line: 237, column: 3, scope: !839)
!1020 = !DISubprogram(name: "bindtextdomain", scope: !796, file: !796, line: 86, type: !1021, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !194)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!22, !38, !38}
!1023 = !DISubprogram(name: "textdomain", scope: !796, file: !796, line: 82, type: !1024, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !194)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!22, !38}
!1026 = !DISubprogram(name: "atexit", scope: !1027, file: !1027, line: 595, type: !1028, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !194)
!1027 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!25, !1030}
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!1031 = !DISubprogram(name: "getopt_long", scope: !35, file: !35, line: 66, type: !1032, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !194)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!25, !25, !1034, !38, !1036, !42}
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!1037 = !DISubprogram(name: "error", scope: !1038, file: !1038, line: 52, type: !1039, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !194)
!1038 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1039 = !DISubroutineType(types: !1040)
!1040 = !{null, !25, !25, !38, null}
!1041 = distinct !DISubprogram(name: "add_tab_stop", scope: !52, file: !52, line: 78, type: !1042, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1044)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{null, !95}
!1044 = !{!1045, !1046, !1047}
!1045 = !DILocalVariable(name: "tabval", arg: 1, scope: !1041, file: !52, line: 78, type: !95)
!1046 = !DILocalVariable(name: "prev_column", scope: !1041, file: !52, line: 80, type: !95)
!1047 = !DILocalVariable(name: "column_width", scope: !1041, file: !52, line: 81, type: !95)
!1048 = !DILocation(line: 0, scope: !1041)
!1049 = !DILocation(line: 80, column: 27, scope: !1041)
!1050 = !DILocation(line: 80, column: 44, scope: !1041)
!1051 = !DILocation(line: 80, column: 68, scope: !1041)
!1052 = !DILocation(line: 81, column: 28, scope: !1041)
!1053 = !DILocation(line: 83, column: 25, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1041, file: !52, line: 83, column: 7)
!1055 = !DILocation(line: 83, column: 22, scope: !1054)
!1056 = !DILocation(line: 83, column: 7, scope: !1041)
!1057 = !DILocation(line: 85, column: 3, scope: !1041)
!1058 = !DILocation(line: 84, column: 16, scope: !1054)
!1059 = !DILocation(line: 0, scope: !79, inlinedAt: !1060)
!1060 = distinct !DILocation(line: 84, column: 16, scope: !1054)
!1061 = !DILocation(line: 178, column: 9, scope: !1062, inlinedAt: !1060)
!1062 = distinct !DILexicalBlock(scope: !79, file: !78, line: 178, column: 7)
!1063 = !DILocation(line: 178, column: 7, scope: !79, inlinedAt: !1060)
!1064 = !DILocation(line: 180, column: 11, scope: !1065, inlinedAt: !1060)
!1065 = distinct !DILexicalBlock(scope: !1062, file: !78, line: 179, column: 5)
!1066 = !DILocation(line: 191, column: 11, scope: !1067, inlinedAt: !1060)
!1067 = distinct !DILexicalBlock(scope: !1065, file: !78, line: 191, column: 11)
!1068 = !DILocation(line: 191, column: 11, scope: !1065, inlinedAt: !1060)
!1069 = !DILocation(line: 192, column: 9, scope: !1067, inlinedAt: !1060)
!1070 = !DILocation(line: 201, column: 11, scope: !1071, inlinedAt: !1060)
!1071 = distinct !DILexicalBlock(scope: !1072, file: !78, line: 200, column: 11)
!1072 = distinct !DILexicalBlock(scope: !1062, file: !78, line: 195, column: 5)
!1073 = !DILocation(line: 200, column: 11, scope: !1072, inlinedAt: !1060)
!1074 = !DILocation(line: 202, column: 9, scope: !1071, inlinedAt: !1060)
!1075 = !DILocation(line: 203, column: 14, scope: !1072, inlinedAt: !1060)
!1076 = !DILocation(line: 203, column: 18, scope: !1072, inlinedAt: !1060)
!1077 = !DILocation(line: 203, column: 9, scope: !1072, inlinedAt: !1060)
!1078 = !DILocation(line: 206, column: 7, scope: !79, inlinedAt: !1060)
!1079 = !DILocation(line: 207, column: 25, scope: !79, inlinedAt: !1060)
!1080 = !DILocation(line: 207, column: 10, scope: !79, inlinedAt: !1060)
!1081 = !DILocation(line: 84, column: 14, scope: !1054)
!1082 = !DILocation(line: 84, column: 5, scope: !1054)
!1083 = !DILocation(line: 85, column: 26, scope: !1041)
!1084 = !DILocation(line: 85, column: 30, scope: !1041)
!1085 = !DILocation(line: 87, column: 7, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1041, file: !52, line: 87, column: 7)
!1087 = !DILocation(line: 87, column: 24, scope: !1086)
!1088 = !DILocation(line: 87, column: 7, scope: !1041)
!1089 = !DILocation(line: 91, column: 24, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1086, file: !52, line: 88, column: 5)
!1091 = !DILocation(line: 92, column: 5, scope: !1090)
!1092 = !DILocation(line: 93, column: 1, scope: !1041)
!1093 = distinct !DISubprogram(name: "parse_tab_stops", scope: !52, file: !52, line: 132, type: !745, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1094)
!1094 = !{!1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1113}
!1095 = !DILocalVariable(name: "stops", arg: 1, scope: !1093, file: !52, line: 132, type: !38)
!1096 = !DILocalVariable(name: "have_tabval", scope: !1093, file: !52, line: 134, type: !180)
!1097 = !DILocalVariable(name: "tabval", scope: !1093, file: !52, line: 135, type: !95)
!1098 = !DILocalVariable(name: "extend_tabval", scope: !1093, file: !52, line: 136, type: !180)
!1099 = !DILocalVariable(name: "increment_tabval", scope: !1093, file: !52, line: 137, type: !180)
!1100 = !DILocalVariable(name: "num_start", scope: !1093, file: !52, line: 138, type: !38)
!1101 = !DILocalVariable(name: "ok", scope: !1093, file: !52, line: 139, type: !180)
!1102 = !DILocalVariable(name: "len", scope: !1103, file: !52, line: 202, type: !83)
!1103 = distinct !DILexicalBlock(scope: !1104, file: !52, line: 201, column: 13)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !52, line: 200, column: 15)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !52, line: 191, column: 9)
!1106 = distinct !DILexicalBlock(scope: !1107, file: !52, line: 190, column: 16)
!1107 = distinct !DILexicalBlock(scope: !1108, file: !52, line: 179, column: 16)
!1108 = distinct !DILexicalBlock(scope: !1109, file: !52, line: 168, column: 16)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !52, line: 143, column: 11)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !52, line: 142, column: 5)
!1111 = distinct !DILexicalBlock(scope: !1112, file: !52, line: 141, column: 3)
!1112 = distinct !DILexicalBlock(scope: !1093, file: !52, line: 141, column: 3)
!1113 = !DILocalVariable(name: "bad_num", scope: !1103, file: !52, line: 203, type: !22)
!1114 = !DILocation(line: 0, scope: !1093)
!1115 = !DILocation(line: 141, column: 3, scope: !1093)
!1116 = !DILocation(line: 135, column: 13, scope: !1093)
!1117 = !DILocation(line: 136, column: 8, scope: !1093)
!1118 = !DILocation(line: 137, column: 8, scope: !1093)
!1119 = !DILocation(line: 138, column: 15, scope: !1093)
!1120 = !DILocation(line: 139, column: 8, scope: !1093)
!1121 = !DILocation(line: 141, column: 10, scope: !1111)
!1122 = !DILocation(line: 141, column: 3, scope: !1112)
!1123 = !DILocation(line: 143, column: 28, scope: !1109)
!1124 = !DILocation(line: 143, column: 11, scope: !1110)
!1125 = !DILocation(line: 145, column: 15, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !52, line: 145, column: 15)
!1127 = distinct !DILexicalBlock(scope: !1109, file: !52, line: 144, column: 9)
!1128 = !DILocation(line: 145, column: 15, scope: !1127)
!1129 = !DILocation(line: 147, column: 19, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1131, file: !52, line: 147, column: 19)
!1131 = distinct !DILexicalBlock(scope: !1126, file: !52, line: 146, column: 13)
!1132 = !DILocation(line: 147, column: 19, scope: !1131)
!1133 = !DILocalVariable(name: "tabval", arg: 1, scope: !1134, file: !52, line: 96, type: !95)
!1134 = distinct !DISubprogram(name: "set_extend_size", scope: !52, file: !52, line: 96, type: !1135, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1137)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!180, !95}
!1137 = !{!1133, !1138}
!1138 = !DILocalVariable(name: "ok", scope: !1134, file: !52, line: 98, type: !180)
!1139 = !DILocation(line: 0, scope: !1134, inlinedAt: !1140)
!1140 = distinct !DILocation(line: 149, column: 25, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1142, file: !52, line: 149, column: 23)
!1142 = distinct !DILexicalBlock(scope: !1130, file: !52, line: 148, column: 17)
!1143 = !DILocation(line: 100, column: 7, scope: !1144, inlinedAt: !1140)
!1144 = distinct !DILexicalBlock(scope: !1134, file: !52, line: 100, column: 7)
!1145 = !DILocation(line: 100, column: 7, scope: !1134, inlinedAt: !1140)
!1146 = !DILocation(line: 107, column: 15, scope: !1134, inlinedAt: !1140)
!1147 = !DILocation(line: 149, column: 23, scope: !1142)
!1148 = !DILocation(line: 103, column: 14, scope: !1149, inlinedAt: !1140)
!1149 = distinct !DILexicalBlock(scope: !1144, file: !52, line: 101, column: 5)
!1150 = !DILocation(line: 102, column: 7, scope: !1149, inlinedAt: !1140)
!1151 = !DILocation(line: 155, column: 24, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1130, file: !52, line: 155, column: 24)
!1153 = !DILocation(line: 155, column: 24, scope: !1130)
!1154 = !DILocalVariable(name: "tabval", arg: 1, scope: !1155, file: !52, line: 113, type: !95)
!1155 = distinct !DISubprogram(name: "set_increment_size", scope: !52, file: !52, line: 113, type: !1135, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1156)
!1156 = !{!1154, !1157}
!1157 = !DILocalVariable(name: "ok", scope: !1155, file: !52, line: 115, type: !180)
!1158 = !DILocation(line: 0, scope: !1155, inlinedAt: !1159)
!1159 = distinct !DILocation(line: 157, column: 25, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !52, line: 157, column: 23)
!1161 = distinct !DILexicalBlock(scope: !1152, file: !52, line: 156, column: 17)
!1162 = !DILocation(line: 117, column: 7, scope: !1163, inlinedAt: !1159)
!1163 = distinct !DILexicalBlock(scope: !1155, file: !52, line: 117, column: 7)
!1164 = !DILocation(line: 117, column: 7, scope: !1155, inlinedAt: !1159)
!1165 = !DILocation(line: 124, column: 18, scope: !1155, inlinedAt: !1159)
!1166 = !DILocation(line: 157, column: 23, scope: !1161)
!1167 = !DILocation(line: 120, column: 14, scope: !1168, inlinedAt: !1159)
!1168 = distinct !DILexicalBlock(scope: !1163, file: !52, line: 118, column: 5)
!1169 = !DILocation(line: 119, column: 7, scope: !1168, inlinedAt: !1159)
!1170 = !DILocation(line: 164, column: 17, scope: !1152)
!1171 = !DILocation(line: 168, column: 16, scope: !1109)
!1172 = !DILocation(line: 170, column: 15, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1174, file: !52, line: 170, column: 15)
!1174 = distinct !DILexicalBlock(scope: !1108, file: !52, line: 169, column: 9)
!1175 = !DILocation(line: 170, column: 15, scope: !1174)
!1176 = !DILocation(line: 172, column: 28, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1173, file: !52, line: 171, column: 13)
!1178 = !DILocation(line: 173, column: 22, scope: !1177)
!1179 = !DILocation(line: 172, column: 15, scope: !1177)
!1180 = !DILocation(line: 175, column: 13, scope: !1177)
!1181 = !DILocation(line: 181, column: 15, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1183, file: !52, line: 181, column: 15)
!1183 = distinct !DILexicalBlock(scope: !1107, file: !52, line: 180, column: 9)
!1184 = !DILocation(line: 181, column: 15, scope: !1183)
!1185 = !DILocation(line: 183, column: 28, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1182, file: !52, line: 182, column: 13)
!1187 = !DILocation(line: 184, column: 22, scope: !1186)
!1188 = !DILocation(line: 183, column: 15, scope: !1186)
!1189 = !DILocation(line: 186, column: 13, scope: !1186)
!1190 = !DILocation(line: 168, column: 16, scope: !1108)
!1191 = !DILocation(line: 190, column: 16, scope: !1106)
!1192 = !DILocation(line: 190, column: 16, scope: !1107)
!1193 = !DILocation(line: 192, column: 16, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1105, file: !52, line: 192, column: 15)
!1195 = !DILocation(line: 192, column: 15, scope: !1105)
!1196 = !DILocation(line: 200, column: 16, scope: !1104)
!1197 = !DILocation(line: 200, column: 15, scope: !1105)
!1198 = !DILocation(line: 202, column: 28, scope: !1103)
!1199 = !DILocation(line: 0, scope: !1103)
!1200 = !DILocation(line: 203, column: 31, scope: !1103)
!1201 = !DILocation(line: 204, column: 28, scope: !1103)
!1202 = !DILocation(line: 204, column: 59, scope: !1103)
!1203 = !DILocation(line: 204, column: 15, scope: !1103)
!1204 = !DILocation(line: 205, column: 15, scope: !1103)
!1205 = !DILocation(line: 207, column: 33, scope: !1103)
!1206 = !DILocation(line: 207, column: 39, scope: !1103)
!1207 = !DILocation(line: 208, column: 13, scope: !1103)
!1208 = !DILocation(line: 212, column: 24, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1106, file: !52, line: 211, column: 9)
!1210 = !DILocation(line: 213, column: 18, scope: !1209)
!1211 = !DILocation(line: 212, column: 11, scope: !1209)
!1212 = !DILocation(line: 215, column: 11, scope: !1209)
!1213 = !DILocation(line: 141, column: 23, scope: !1111)
!1214 = !DILocation(line: 141, column: 3, scope: !1111)
!1215 = distinct !{!1215, !1122, !1216, !775}
!1216 = !DILocation(line: 217, column: 5, scope: !1112)
!1217 = !DILocation(line: 219, column: 10, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1093, file: !52, line: 219, column: 7)
!1219 = !DILocation(line: 221, column: 11, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !52, line: 221, column: 11)
!1221 = distinct !DILexicalBlock(scope: !1218, file: !52, line: 220, column: 5)
!1222 = !DILocation(line: 221, column: 11, scope: !1221)
!1223 = !DILocation(line: 0, scope: !1134, inlinedAt: !1224)
!1224 = distinct !DILocation(line: 222, column: 15, scope: !1220)
!1225 = !DILocation(line: 100, column: 7, scope: !1144, inlinedAt: !1224)
!1226 = !DILocation(line: 100, column: 7, scope: !1134, inlinedAt: !1224)
!1227 = !DILocation(line: 103, column: 14, scope: !1149, inlinedAt: !1224)
!1228 = !DILocation(line: 102, column: 7, scope: !1149, inlinedAt: !1224)
!1229 = !DILocation(line: 106, column: 5, scope: !1149, inlinedAt: !1224)
!1230 = !DILocation(line: 107, column: 15, scope: !1134, inlinedAt: !1224)
!1231 = !DILocation(line: 222, column: 12, scope: !1220)
!1232 = !DILocation(line: 222, column: 9, scope: !1220)
!1233 = !DILocation(line: 223, column: 16, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1220, file: !52, line: 223, column: 16)
!1235 = !DILocation(line: 223, column: 16, scope: !1220)
!1236 = !DILocation(line: 0, scope: !1155, inlinedAt: !1237)
!1237 = distinct !DILocation(line: 224, column: 15, scope: !1234)
!1238 = !DILocation(line: 117, column: 7, scope: !1163, inlinedAt: !1237)
!1239 = !DILocation(line: 117, column: 7, scope: !1155, inlinedAt: !1237)
!1240 = !DILocation(line: 120, column: 14, scope: !1168, inlinedAt: !1237)
!1241 = !DILocation(line: 119, column: 7, scope: !1168, inlinedAt: !1237)
!1242 = !DILocation(line: 123, column: 5, scope: !1168, inlinedAt: !1237)
!1243 = !DILocation(line: 124, column: 18, scope: !1155, inlinedAt: !1237)
!1244 = !DILocation(line: 224, column: 12, scope: !1234)
!1245 = !DILocation(line: 224, column: 9, scope: !1234)
!1246 = !DILocation(line: 226, column: 9, scope: !1234)
!1247 = !DILocation(line: 229, column: 9, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1093, file: !52, line: 229, column: 7)
!1249 = !DILocation(line: 229, column: 7, scope: !1093)
!1250 = !DILocation(line: 230, column: 5, scope: !1248)
!1251 = !DILocation(line: 231, column: 1, scope: !1093)
!1252 = distinct !DISubprogram(name: "finalize_tab_stops", scope: !52, file: !52, line: 263, type: !733, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !194)
!1253 = !DILocation(line: 265, column: 23, scope: !1252)
!1254 = !DILocation(line: 265, column: 33, scope: !1252)
!1255 = !DILocalVariable(name: "tabs", arg: 1, scope: !1256, file: !52, line: 237, type: !1259)
!1256 = distinct !DISubprogram(name: "validate_tab_stops", scope: !52, file: !52, line: 237, type: !1257, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1261)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{null, !1259, !83}
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!1261 = !{!1255, !1262, !1263, !1264}
!1262 = !DILocalVariable(name: "entries", arg: 2, scope: !1256, file: !52, line: 237, type: !83)
!1263 = !DILocalVariable(name: "prev_tab", scope: !1256, file: !52, line: 239, type: !95)
!1264 = !DILocalVariable(name: "i", scope: !1265, file: !52, line: 241, type: !83)
!1265 = distinct !DILexicalBlock(scope: !1256, file: !52, line: 241, column: 3)
!1266 = !DILocation(line: 0, scope: !1256, inlinedAt: !1267)
!1267 = distinct !DILocation(line: 265, column: 3, scope: !1252)
!1268 = !DILocation(line: 0, scope: !1265, inlinedAt: !1267)
!1269 = !DILocation(line: 241, column: 24, scope: !1270, inlinedAt: !1267)
!1270 = distinct !DILexicalBlock(scope: !1265, file: !52, line: 241, column: 3)
!1271 = !DILocation(line: 241, column: 3, scope: !1265, inlinedAt: !1267)
!1272 = distinct !{!1272, !1271, !1273, !775}
!1273 = !DILocation(line: 248, column: 5, scope: !1265, inlinedAt: !1267)
!1274 = !DILocation(line: 250, column: 7, scope: !1275, inlinedAt: !1267)
!1275 = distinct !DILexicalBlock(scope: !1256, file: !52, line: 250, column: 7)
!1276 = !DILocation(line: 250, column: 22, scope: !1275, inlinedAt: !1267)
!1277 = !DILocation(line: 243, column: 11, scope: !1278, inlinedAt: !1267)
!1278 = distinct !DILexicalBlock(scope: !1279, file: !52, line: 243, column: 11)
!1279 = distinct !DILexicalBlock(scope: !1270, file: !52, line: 242, column: 5)
!1280 = !DILocation(line: 243, column: 19, scope: !1278, inlinedAt: !1267)
!1281 = !DILocation(line: 243, column: 11, scope: !1279, inlinedAt: !1267)
!1282 = !DILocation(line: 244, column: 9, scope: !1278, inlinedAt: !1267)
!1283 = !DILocation(line: 245, column: 19, scope: !1284, inlinedAt: !1267)
!1284 = distinct !DILexicalBlock(scope: !1279, file: !52, line: 245, column: 11)
!1285 = !DILocation(line: 241, column: 36, scope: !1270, inlinedAt: !1267)
!1286 = !DILocation(line: 245, column: 11, scope: !1279, inlinedAt: !1267)
!1287 = !DILocation(line: 246, column: 9, scope: !1284, inlinedAt: !1267)
!1288 = !DILocation(line: 251, column: 5, scope: !1275, inlinedAt: !1267)
!1289 = !DILocation(line: 268, column: 35, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1252, file: !52, line: 267, column: 7)
!1291 = !DILocation(line: 268, column: 33, scope: !1290)
!1292 = !DILocation(line: 268, column: 5, scope: !1290)
!1293 = !DILocation(line: 271, column: 27, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1290, file: !52, line: 271, column: 12)
!1295 = !DILocation(line: 271, column: 32, scope: !1294)
!1296 = !DILocation(line: 272, column: 16, scope: !1294)
!1297 = !DILocation(line: 272, column: 5, scope: !1294)
!1298 = !DILocation(line: 0, scope: !1290)
!1299 = !DILocation(line: 275, column: 1, scope: !1252)
!1300 = distinct !DISubprogram(name: "get_next_tab_column", scope: !52, file: !52, line: 279, type: !1301, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1304)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{!95, !1260, !82, !1303}
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!1304 = !{!1305, !1306, !1307, !1308, !1312}
!1305 = !DILocalVariable(name: "column", arg: 1, scope: !1300, file: !52, line: 279, type: !1260)
!1306 = !DILocalVariable(name: "tab_index", arg: 2, scope: !1300, file: !52, line: 279, type: !82)
!1307 = !DILocalVariable(name: "last_tab", arg: 3, scope: !1300, file: !52, line: 280, type: !1303)
!1308 = !DILocalVariable(name: "tab", scope: !1309, file: !52, line: 292, type: !95)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !52, line: 291, column: 5)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !52, line: 290, column: 3)
!1311 = distinct !DILexicalBlock(scope: !1300, file: !52, line: 290, column: 3)
!1312 = !DILocalVariable(name: "end_tab", scope: !1313, file: !52, line: 304, type: !95)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !52, line: 303, column: 5)
!1314 = distinct !DILexicalBlock(scope: !1300, file: !52, line: 302, column: 7)
!1315 = !DILocation(line: 0, scope: !1300)
!1316 = !DILocation(line: 282, column: 13, scope: !1300)
!1317 = !DILocation(line: 285, column: 7, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1300, file: !52, line: 285, column: 7)
!1319 = !DILocation(line: 285, column: 7, scope: !1300)
!1320 = !DILocation(line: 290, column: 11, scope: !1310)
!1321 = !DILocation(line: 290, column: 24, scope: !1310)
!1322 = !DILocation(line: 290, column: 22, scope: !1310)
!1323 = !DILocation(line: 290, column: 3, scope: !1311)
!1324 = !DILocation(line: 286, column: 40, scope: !1318)
!1325 = !DILocation(line: 286, column: 31, scope: !1318)
!1326 = !DILocation(line: 286, column: 19, scope: !1318)
!1327 = !DILocation(line: 286, column: 5, scope: !1318)
!1328 = !DILocation(line: 292, column: 25, scope: !1309)
!1329 = !DILocation(line: 0, scope: !1309)
!1330 = !DILocation(line: 293, column: 20, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1309, file: !52, line: 293, column: 13)
!1332 = !DILocation(line: 290, column: 53, scope: !1310)
!1333 = distinct !{!1333, !1323, !1334, !775}
!1334 = !DILocation(line: 295, column: 5, scope: !1311)
!1335 = !DILocation(line: 298, column: 7, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1300, file: !52, line: 298, column: 7)
!1337 = !DILocation(line: 298, column: 7, scope: !1300)
!1338 = !DILocation(line: 299, column: 43, scope: !1336)
!1339 = !DILocation(line: 299, column: 34, scope: !1336)
!1340 = !DILocation(line: 299, column: 19, scope: !1336)
!1341 = !DILocation(line: 299, column: 5, scope: !1336)
!1342 = !DILocation(line: 302, column: 7, scope: !1314)
!1343 = !DILocation(line: 302, column: 7, scope: !1300)
!1344 = !DILocation(line: 304, column: 27, scope: !1313)
!1345 = !DILocation(line: 304, column: 51, scope: !1313)
!1346 = !DILocation(line: 0, scope: !1313)
!1347 = !DILocation(line: 306, column: 50, scope: !1313)
!1348 = !DILocation(line: 306, column: 61, scope: !1313)
!1349 = !DILocation(line: 306, column: 39, scope: !1313)
!1350 = !DILocation(line: 306, column: 21, scope: !1313)
!1351 = !DILocation(line: 309, column: 13, scope: !1300)
!1352 = !DILocation(line: 310, column: 3, scope: !1300)
!1353 = !DILocation(line: 311, column: 1, scope: !1300)
!1354 = distinct !DISubprogram(name: "set_file_list", scope: !52, file: !52, line: 318, type: !1355, scopeLine: 319, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1357)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{null, !188}
!1357 = !{!1358}
!1358 = !DILocalVariable(name: "list", arg: 1, scope: !1354, file: !52, line: 318, type: !188)
!1359 = !DILocation(line: 0, scope: !1354)
!1360 = !DILocation(line: 320, column: 19, scope: !1354)
!1361 = !DILocation(line: 322, column: 8, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1354, file: !52, line: 322, column: 7)
!1363 = !DILocation(line: 322, column: 7, scope: !1354)
!1364 = !DILocation(line: 0, scope: !1362)
!1365 = !DILocation(line: 326, column: 1, scope: !1354)
!1366 = !DILocation(line: 0, scope: !104)
!1367 = !DILocation(line: 339, column: 7, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !104, file: !52, line: 339, column: 7)
!1369 = !DILocation(line: 339, column: 7, scope: !104)
!1370 = !DILocation(line: 341, column: 7, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !52, line: 341, column: 7)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !52, line: 341, column: 7)
!1373 = distinct !DILexicalBlock(scope: !1368, file: !52, line: 340, column: 5)
!1374 = !DILocation(line: 341, column: 7, scope: !1372)
!1375 = !DILocalVariable(name: "__stream", arg: 1, scope: !1376, file: !925, line: 135, type: !107)
!1376 = distinct !DISubprogram(name: "ferror_unlocked", scope: !925, file: !925, line: 135, type: !1377, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1379)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!25, !107}
!1379 = !{!1375}
!1380 = !DILocation(line: 0, scope: !1376, inlinedAt: !1381)
!1381 = distinct !DILocation(line: 342, column: 11, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1373, file: !52, line: 342, column: 11)
!1383 = !DILocation(line: 137, column: 10, scope: !1376, inlinedAt: !1381)
!1384 = !{!933, !889, i64 0}
!1385 = !DILocation(line: 342, column: 11, scope: !1382)
!1386 = !DILocation(line: 342, column: 11, scope: !1373)
!1387 = !DILocation(line: 344, column: 21, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1382, file: !52, line: 343, column: 9)
!1389 = !DILocation(line: 344, column: 34, scope: !1388)
!1390 = !DILocation(line: 344, column: 11, scope: !1388)
!1391 = !DILocation(line: 345, column: 23, scope: !1388)
!1392 = !DILocation(line: 347, column: 11, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1373, file: !52, line: 347, column: 11)
!1394 = !DILocation(line: 346, column: 9, scope: !1388)
!1395 = !DILocation(line: 347, column: 11, scope: !1373)
!1396 = !DILocation(line: 348, column: 9, scope: !1393)
!1397 = !DILocation(line: 349, column: 16, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1393, file: !52, line: 349, column: 16)
!1399 = !DILocation(line: 349, column: 28, scope: !1398)
!1400 = !DILocation(line: 349, column: 16, scope: !1393)
!1401 = !DILocation(line: 351, column: 21, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1398, file: !52, line: 350, column: 9)
!1403 = !DILocation(line: 351, column: 34, scope: !1402)
!1404 = !DILocation(line: 351, column: 11, scope: !1402)
!1405 = !DILocation(line: 352, column: 23, scope: !1402)
!1406 = !DILocation(line: 353, column: 9, scope: !1402)
!1407 = !DILocation(line: 356, column: 28, scope: !104)
!1408 = !DILocation(line: 356, column: 18, scope: !104)
!1409 = !DILocation(line: 356, column: 32, scope: !104)
!1410 = !DILocation(line: 356, column: 3, scope: !104)
!1411 = !DILocation(line: 358, column: 11, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !52, line: 358, column: 11)
!1413 = distinct !DILexicalBlock(scope: !104, file: !52, line: 357, column: 5)
!1414 = !DILocation(line: 358, column: 11, scope: !1413)
!1415 = !DILocation(line: 360, column: 27, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1412, file: !52, line: 359, column: 9)
!1417 = !DILocation(line: 361, column: 16, scope: !1416)
!1418 = !DILocation(line: 362, column: 9, scope: !1416)
!1419 = !DILocation(line: 364, column: 14, scope: !1412)
!1420 = !DILocation(line: 0, scope: !1412)
!1421 = !DILocation(line: 365, column: 11, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1413, file: !52, line: 365, column: 11)
!1423 = !DILocation(line: 365, column: 11, scope: !1413)
!1424 = !DILocation(line: 367, column: 21, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1422, file: !52, line: 366, column: 9)
!1426 = !DILocation(line: 368, column: 11, scope: !1425)
!1427 = !DILocation(line: 369, column: 11, scope: !1425)
!1428 = !DILocation(line: 371, column: 17, scope: !1413)
!1429 = !DILocation(line: 371, column: 30, scope: !1413)
!1430 = !DILocation(line: 371, column: 7, scope: !1413)
!1431 = !DILocation(line: 372, column: 19, scope: !1413)
!1432 = distinct !{!1432, !1410, !1433, !775}
!1433 = !DILocation(line: 373, column: 5, scope: !104)
!1434 = !DILocation(line: 375, column: 1, scope: !104)
!1435 = !DISubprogram(name: "clearerr_unlocked", scope: !800, file: !800, line: 770, type: !1436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !194)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{null, !129}
!1438 = distinct !DISubprogram(name: "cleanup_file_list_stdin", scope: !52, file: !52, line: 379, type: !733, scopeLine: 380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !194)
!1439 = !DILocation(line: 381, column: 9, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1438, file: !52, line: 381, column: 9)
!1441 = !DILocation(line: 381, column: 25, scope: !1440)
!1442 = !DILocation(line: 381, column: 36, scope: !1440)
!1443 = !DILocation(line: 381, column: 28, scope: !1440)
!1444 = !DILocation(line: 381, column: 43, scope: !1440)
!1445 = !DILocation(line: 381, column: 9, scope: !1438)
!1446 = !DILocation(line: 382, column: 7, scope: !1440)
!1447 = !DILocation(line: 383, column: 1, scope: !1438)
!1448 = distinct !DISubprogram(name: "emit_tab_list_info", scope: !52, file: !52, line: 387, type: !733, scopeLine: 388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !194)
!1449 = !DILocation(line: 390, column: 3, scope: !1448)
!1450 = !DILocation(line: 393, column: 3, scope: !1448)
!1451 = !DILocation(line: 400, column: 1, scope: !1448)
!1452 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !199, file: !199, line: 51, type: !745, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !198, retainedNodes: !1453)
!1453 = !{!1454}
!1454 = !DILocalVariable(name: "file", arg: 1, scope: !1452, file: !199, line: 51, type: !38)
!1455 = !DILocation(line: 0, scope: !1452)
!1456 = !DILocation(line: 53, column: 13, scope: !1452)
!1457 = !DILocation(line: 54, column: 1, scope: !1452)
!1458 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !199, file: !199, line: 88, type: !1459, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !198, retainedNodes: !1461)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{null, !180}
!1461 = !{!1462}
!1462 = !DILocalVariable(name: "ignore", arg: 1, scope: !1458, file: !199, line: 88, type: !180)
!1463 = !DILocation(line: 0, scope: !1458)
!1464 = !DILocation(line: 90, column: 16, scope: !1458)
!1465 = !DILocation(line: 91, column: 1, scope: !1458)
!1466 = distinct !DISubprogram(name: "close_stdout", scope: !199, file: !199, line: 117, type: !733, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !198, retainedNodes: !1467)
!1467 = !{!1468}
!1468 = !DILocalVariable(name: "write_error", scope: !1469, file: !199, line: 122, type: !38)
!1469 = distinct !DILexicalBlock(scope: !1470, file: !199, line: 121, column: 5)
!1470 = distinct !DILexicalBlock(scope: !1466, file: !199, line: 119, column: 7)
!1471 = !DILocation(line: 119, column: 21, scope: !1470)
!1472 = !DILocation(line: 119, column: 7, scope: !1470)
!1473 = !DILocation(line: 119, column: 29, scope: !1470)
!1474 = !DILocation(line: 120, column: 7, scope: !1470)
!1475 = !DILocation(line: 120, column: 12, scope: !1470)
!1476 = !DILocation(line: 120, column: 25, scope: !1470)
!1477 = !DILocation(line: 120, column: 28, scope: !1470)
!1478 = !DILocation(line: 120, column: 34, scope: !1470)
!1479 = !DILocation(line: 119, column: 7, scope: !1466)
!1480 = !DILocation(line: 122, column: 33, scope: !1469)
!1481 = !DILocation(line: 0, scope: !1469)
!1482 = !DILocation(line: 123, column: 11, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1469, file: !199, line: 123, column: 11)
!1484 = !DILocation(line: 0, scope: !1483)
!1485 = !DILocation(line: 123, column: 11, scope: !1469)
!1486 = !DILocation(line: 124, column: 36, scope: !1483)
!1487 = !DILocation(line: 124, column: 9, scope: !1483)
!1488 = !DILocation(line: 127, column: 9, scope: !1483)
!1489 = !DILocation(line: 129, column: 14, scope: !1469)
!1490 = !DILocation(line: 129, column: 7, scope: !1469)
!1491 = !DILocation(line: 134, column: 42, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1466, file: !199, line: 134, column: 7)
!1493 = !DILocation(line: 134, column: 28, scope: !1492)
!1494 = !DILocation(line: 134, column: 50, scope: !1492)
!1495 = !DILocation(line: 134, column: 7, scope: !1466)
!1496 = !DILocation(line: 135, column: 12, scope: !1492)
!1497 = !DILocation(line: 135, column: 5, scope: !1492)
!1498 = !DILocation(line: 136, column: 1, scope: !1466)
!1499 = distinct !DISubprogram(name: "fdadvise", scope: !276, file: !276, line: 31, type: !1500, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !275, retainedNodes: !1504)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{null, !25, !1502, !1502, !1503}
!1502 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !800, line: 63, baseType: !133)
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !69, line: 52, baseType: !68)
!1504 = !{!1505, !1506, !1507, !1508, !1509}
!1505 = !DILocalVariable(name: "fd", arg: 1, scope: !1499, file: !276, line: 31, type: !25)
!1506 = !DILocalVariable(name: "offset", arg: 2, scope: !1499, file: !276, line: 31, type: !1502)
!1507 = !DILocalVariable(name: "len", arg: 3, scope: !1499, file: !276, line: 31, type: !1502)
!1508 = !DILocalVariable(name: "advice", arg: 4, scope: !1499, file: !276, line: 31, type: !1503)
!1509 = !DILocalVariable(name: "__x", scope: !1510, file: !276, line: 34, type: !25)
!1510 = distinct !DILexicalBlock(scope: !1499, file: !276, line: 34, column: 3)
!1511 = !DILocation(line: 0, scope: !1499)
!1512 = !DILocation(line: 34, column: 3, scope: !1510)
!1513 = !DILocation(line: 0, scope: !1510)
!1514 = !DILocation(line: 36, column: 1, scope: !1499)
!1515 = !DISubprogram(name: "posix_fadvise", scope: !1516, file: !1516, line: 288, type: !1517, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !194)
!1516 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!25, !25, !134, !134, !25}
!1519 = distinct !DISubprogram(name: "fadvise", scope: !276, file: !276, line: 39, type: !1520, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !275, retainedNodes: !1556)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{null, !1522, !1503}
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !109, line: 7, baseType: !1524)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !111, line: 49, size: 1728, elements: !1525)
!1525 = !{!1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1524, file: !111, line: 51, baseType: !25, size: 32)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1524, file: !111, line: 54, baseType: !22, size: 64, offset: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1524, file: !111, line: 55, baseType: !22, size: 64, offset: 128)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1524, file: !111, line: 56, baseType: !22, size: 64, offset: 192)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1524, file: !111, line: 57, baseType: !22, size: 64, offset: 256)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1524, file: !111, line: 58, baseType: !22, size: 64, offset: 320)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1524, file: !111, line: 59, baseType: !22, size: 64, offset: 384)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1524, file: !111, line: 60, baseType: !22, size: 64, offset: 448)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1524, file: !111, line: 61, baseType: !22, size: 64, offset: 512)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1524, file: !111, line: 64, baseType: !22, size: 64, offset: 576)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1524, file: !111, line: 65, baseType: !22, size: 64, offset: 640)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1524, file: !111, line: 66, baseType: !22, size: 64, offset: 704)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1524, file: !111, line: 68, baseType: !126, size: 64, offset: 768)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1524, file: !111, line: 70, baseType: !1540, size: 64, offset: 832)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1524, file: !111, line: 72, baseType: !25, size: 32, offset: 896)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1524, file: !111, line: 73, baseType: !25, size: 32, offset: 928)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1524, file: !111, line: 74, baseType: !133, size: 64, offset: 960)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1524, file: !111, line: 77, baseType: !26, size: 16, offset: 1024)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1524, file: !111, line: 78, baseType: !137, size: 8, offset: 1040)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1524, file: !111, line: 79, baseType: !139, size: 8, offset: 1048)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1524, file: !111, line: 81, baseType: !143, size: 64, offset: 1088)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1524, file: !111, line: 89, baseType: !146, size: 64, offset: 1152)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1524, file: !111, line: 91, baseType: !148, size: 64, offset: 1216)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1524, file: !111, line: 92, baseType: !151, size: 64, offset: 1280)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1524, file: !111, line: 93, baseType: !1540, size: 64, offset: 1344)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1524, file: !111, line: 94, baseType: !24, size: 64, offset: 1408)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1524, file: !111, line: 95, baseType: !83, size: 64, offset: 1472)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1524, file: !111, line: 96, baseType: !25, size: 32, offset: 1536)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1524, file: !111, line: 98, baseType: !158, size: 160, offset: 1568)
!1556 = !{!1557, !1558}
!1557 = !DILocalVariable(name: "fp", arg: 1, scope: !1519, file: !276, line: 39, type: !1522)
!1558 = !DILocalVariable(name: "advice", arg: 2, scope: !1519, file: !276, line: 39, type: !1503)
!1559 = !DILocation(line: 0, scope: !1519)
!1560 = !DILocation(line: 41, column: 7, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1519, file: !276, line: 41, column: 7)
!1562 = !DILocation(line: 41, column: 7, scope: !1519)
!1563 = !DILocation(line: 42, column: 15, scope: !1561)
!1564 = !DILocation(line: 0, scope: !1499, inlinedAt: !1565)
!1565 = distinct !DILocation(line: 42, column: 5, scope: !1561)
!1566 = !DILocation(line: 34, column: 3, scope: !1510, inlinedAt: !1565)
!1567 = !DILocation(line: 0, scope: !1510, inlinedAt: !1565)
!1568 = !DILocation(line: 42, column: 5, scope: !1561)
!1569 = !DILocation(line: 43, column: 1, scope: !1519)
!1570 = !DISubprogram(name: "fileno", scope: !800, file: !800, line: 785, type: !1571, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !194)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!25, !1540}
!1573 = distinct !DISubprogram(name: "set_program_name", scope: !212, file: !212, line: 39, type: !745, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1574)
!1574 = !{!1575, !1576, !1577}
!1575 = !DILocalVariable(name: "argv0", arg: 1, scope: !1573, file: !212, line: 39, type: !38)
!1576 = !DILocalVariable(name: "slash", scope: !1573, file: !212, line: 46, type: !38)
!1577 = !DILocalVariable(name: "base", scope: !1573, file: !212, line: 47, type: !38)
!1578 = !DILocation(line: 0, scope: !1573)
!1579 = !DILocation(line: 51, column: 13, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1573, file: !212, line: 51, column: 7)
!1581 = !DILocation(line: 51, column: 7, scope: !1573)
!1582 = !DILocation(line: 55, column: 14, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1580, file: !212, line: 52, column: 5)
!1584 = !DILocation(line: 54, column: 7, scope: !1583)
!1585 = !DILocation(line: 56, column: 7, scope: !1583)
!1586 = !DILocation(line: 59, column: 11, scope: !1573)
!1587 = !DILocation(line: 60, column: 17, scope: !1573)
!1588 = !DILocation(line: 60, column: 11, scope: !1573)
!1589 = !DILocation(line: 61, column: 12, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1573, file: !212, line: 61, column: 7)
!1591 = !DILocation(line: 61, column: 20, scope: !1590)
!1592 = !DILocation(line: 61, column: 25, scope: !1590)
!1593 = !DILocation(line: 61, column: 42, scope: !1590)
!1594 = !DILocation(line: 61, column: 28, scope: !1590)
!1595 = !DILocation(line: 61, column: 61, scope: !1590)
!1596 = !DILocation(line: 61, column: 7, scope: !1573)
!1597 = !DILocation(line: 64, column: 11, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !212, line: 64, column: 11)
!1599 = distinct !DILexicalBlock(scope: !1590, file: !212, line: 62, column: 5)
!1600 = !DILocation(line: 64, column: 36, scope: !1598)
!1601 = !DILocation(line: 64, column: 11, scope: !1599)
!1602 = !DILocation(line: 66, column: 24, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1598, file: !212, line: 65, column: 9)
!1604 = !DILocation(line: 70, column: 41, scope: !1603)
!1605 = !DILocation(line: 72, column: 9, scope: !1603)
!1606 = !DILocation(line: 84, column: 16, scope: !1573)
!1607 = !DILocation(line: 90, column: 27, scope: !1573)
!1608 = !DILocation(line: 92, column: 1, scope: !1573)
!1609 = distinct !DISubprogram(name: "clone_quoting_options", scope: !218, file: !218, line: 122, type: !1610, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !217, retainedNodes: !1613)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!1612, !1612}
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!1613 = !{!1614, !1615, !1616}
!1614 = !DILocalVariable(name: "o", arg: 1, scope: !1609, file: !218, line: 122, type: !1612)
!1615 = !DILocalVariable(name: "e", scope: !1609, file: !218, line: 124, type: !25)
!1616 = !DILocalVariable(name: "p", scope: !1609, file: !218, line: 125, type: !1612)
!1617 = !DILocation(line: 0, scope: !1609)
!1618 = !DILocation(line: 124, column: 11, scope: !1609)
!1619 = !DILocation(line: 125, column: 40, scope: !1609)
!1620 = !DILocation(line: 125, column: 31, scope: !1609)
!1621 = !DILocation(line: 127, column: 9, scope: !1609)
!1622 = !DILocation(line: 128, column: 3, scope: !1609)
!1623 = distinct !DISubprogram(name: "get_quoting_style", scope: !218, file: !218, line: 133, type: !1624, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !217, retainedNodes: !1628)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{!54, !1626}
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !235)
!1628 = !{!1629}
!1629 = !DILocalVariable(name: "o", arg: 1, scope: !1623, file: !218, line: 133, type: !1626)
!1630 = !DILocation(line: 0, scope: !1623)
!1631 = !DILocation(line: 135, column: 11, scope: !1623)
!1632 = !DILocation(line: 135, column: 46, scope: !1623)
!1633 = !{!1634, !725, i64 0}
!1634 = !{!"quoting_options", !725, i64 0, !889, i64 4, !725, i64 8, !724, i64 40, !724, i64 48}
!1635 = !DILocation(line: 135, column: 3, scope: !1623)
!1636 = distinct !DISubprogram(name: "set_quoting_style", scope: !218, file: !218, line: 141, type: !1637, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !217, retainedNodes: !1639)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{null, !1612, !54}
!1639 = !{!1640, !1641}
!1640 = !DILocalVariable(name: "o", arg: 1, scope: !1636, file: !218, line: 141, type: !1612)
!1641 = !DILocalVariable(name: "s", arg: 2, scope: !1636, file: !218, line: 141, type: !54)
!1642 = !DILocation(line: 0, scope: !1636)
!1643 = !DILocation(line: 143, column: 4, scope: !1636)
!1644 = !DILocation(line: 143, column: 39, scope: !1636)
!1645 = !DILocation(line: 143, column: 45, scope: !1636)
!1646 = !DILocation(line: 144, column: 1, scope: !1636)
!1647 = distinct !DISubprogram(name: "set_char_quoting", scope: !218, file: !218, line: 152, type: !1648, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !217, retainedNodes: !1650)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{!25, !1612, !23, !25}
!1650 = !{!1651, !1652, !1653, !1654, !1655, !1657, !1658}
!1651 = !DILocalVariable(name: "o", arg: 1, scope: !1647, file: !218, line: 152, type: !1612)
!1652 = !DILocalVariable(name: "c", arg: 2, scope: !1647, file: !218, line: 152, type: !23)
!1653 = !DILocalVariable(name: "i", arg: 3, scope: !1647, file: !218, line: 152, type: !25)
!1654 = !DILocalVariable(name: "uc", scope: !1647, file: !218, line: 154, type: !28)
!1655 = !DILocalVariable(name: "p", scope: !1647, file: !218, line: 155, type: !1656)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1657 = !DILocalVariable(name: "shift", scope: !1647, file: !218, line: 157, type: !25)
!1658 = !DILocalVariable(name: "r", scope: !1647, file: !218, line: 158, type: !25)
!1659 = !DILocation(line: 0, scope: !1647)
!1660 = !DILocation(line: 156, column: 6, scope: !1647)
!1661 = !DILocation(line: 156, column: 62, scope: !1647)
!1662 = !DILocation(line: 156, column: 57, scope: !1647)
!1663 = !DILocation(line: 157, column: 15, scope: !1647)
!1664 = !DILocation(line: 158, column: 12, scope: !1647)
!1665 = !DILocation(line: 158, column: 15, scope: !1647)
!1666 = !DILocation(line: 158, column: 25, scope: !1647)
!1667 = !DILocation(line: 159, column: 13, scope: !1647)
!1668 = !DILocation(line: 159, column: 18, scope: !1647)
!1669 = !DILocation(line: 159, column: 23, scope: !1647)
!1670 = !DILocation(line: 159, column: 6, scope: !1647)
!1671 = !DILocation(line: 160, column: 3, scope: !1647)
!1672 = distinct !DISubprogram(name: "set_quoting_flags", scope: !218, file: !218, line: 168, type: !1673, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !217, retainedNodes: !1675)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{!25, !1612, !25}
!1675 = !{!1676, !1677, !1678}
!1676 = !DILocalVariable(name: "o", arg: 1, scope: !1672, file: !218, line: 168, type: !1612)
!1677 = !DILocalVariable(name: "i", arg: 2, scope: !1672, file: !218, line: 168, type: !25)
!1678 = !DILocalVariable(name: "r", scope: !1672, file: !218, line: 170, type: !25)
!1679 = !DILocation(line: 0, scope: !1672)
!1680 = !DILocation(line: 171, column: 8, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1672, file: !218, line: 171, column: 7)
!1682 = !DILocation(line: 171, column: 7, scope: !1672)
!1683 = !DILocation(line: 173, column: 10, scope: !1672)
!1684 = !{!1634, !889, i64 4}
!1685 = !DILocation(line: 174, column: 12, scope: !1672)
!1686 = !DILocation(line: 175, column: 3, scope: !1672)
!1687 = distinct !DISubprogram(name: "set_custom_quoting", scope: !218, file: !218, line: 179, type: !1688, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !217, retainedNodes: !1690)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{null, !1612, !38, !38}
!1690 = !{!1691, !1692, !1693}
!1691 = !DILocalVariable(name: "o", arg: 1, scope: !1687, file: !218, line: 179, type: !1612)
!1692 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1687, file: !218, line: 180, type: !38)
!1693 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1687, file: !218, line: 180, type: !38)
!1694 = !DILocation(line: 0, scope: !1687)
!1695 = !DILocation(line: 182, column: 8, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1687, file: !218, line: 182, column: 7)
!1697 = !DILocation(line: 182, column: 7, scope: !1687)
!1698 = !DILocation(line: 184, column: 6, scope: !1687)
!1699 = !DILocation(line: 184, column: 12, scope: !1687)
!1700 = !DILocation(line: 185, column: 8, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1687, file: !218, line: 185, column: 7)
!1702 = !DILocation(line: 185, column: 19, scope: !1701)
!1703 = !DILocation(line: 186, column: 5, scope: !1701)
!1704 = !DILocation(line: 187, column: 6, scope: !1687)
!1705 = !DILocation(line: 187, column: 17, scope: !1687)
!1706 = !{!1634, !724, i64 40}
!1707 = !DILocation(line: 188, column: 6, scope: !1687)
!1708 = !DILocation(line: 188, column: 18, scope: !1687)
!1709 = !{!1634, !724, i64 48}
!1710 = !DILocation(line: 189, column: 1, scope: !1687)
!1711 = distinct !DISubprogram(name: "quotearg_buffer", scope: !218, file: !218, line: 784, type: !1712, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !217, retainedNodes: !1714)
!1712 = !DISubroutineType(types: !1713)
!1713 = !{!83, !22, !83, !38, !83, !1626}
!1714 = !{!1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722}
!1715 = !DILocalVariable(name: "buffer", arg: 1, scope: !1711, file: !218, line: 784, type: !22)
!1716 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1711, file: !218, line: 784, type: !83)
!1717 = !DILocalVariable(name: "arg", arg: 3, scope: !1711, file: !218, line: 785, type: !38)
!1718 = !DILocalVariable(name: "argsize", arg: 4, scope: !1711, file: !218, line: 785, type: !83)
!1719 = !DILocalVariable(name: "o", arg: 5, scope: !1711, file: !218, line: 786, type: !1626)
!1720 = !DILocalVariable(name: "p", scope: !1711, file: !218, line: 788, type: !1626)
!1721 = !DILocalVariable(name: "e", scope: !1711, file: !218, line: 789, type: !25)
!1722 = !DILocalVariable(name: "r", scope: !1711, file: !218, line: 790, type: !83)
!1723 = !DILocation(line: 0, scope: !1711)
!1724 = !DILocation(line: 788, column: 37, scope: !1711)
!1725 = !DILocation(line: 789, column: 11, scope: !1711)
!1726 = !DILocation(line: 791, column: 43, scope: !1711)
!1727 = !DILocation(line: 791, column: 53, scope: !1711)
!1728 = !DILocation(line: 791, column: 60, scope: !1711)
!1729 = !DILocation(line: 792, column: 43, scope: !1711)
!1730 = !DILocation(line: 792, column: 58, scope: !1711)
!1731 = !DILocation(line: 790, column: 14, scope: !1711)
!1732 = !DILocation(line: 793, column: 9, scope: !1711)
!1733 = !DILocation(line: 794, column: 3, scope: !1711)
!1734 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !218, file: !218, line: 256, type: !1735, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !217, retainedNodes: !1739)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{!83, !22, !83, !38, !83, !54, !25, !1737, !38, !38}
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1739 = !{!1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1764, !1765, !1766, !1767, !1768, !1771, !1772, !1790, !1793, !1794, !1801, !1804, !1805, !1806, !1807, !1808, !1809}
!1740 = !DILocalVariable(name: "buffer", arg: 1, scope: !1734, file: !218, line: 256, type: !22)
!1741 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1734, file: !218, line: 256, type: !83)
!1742 = !DILocalVariable(name: "arg", arg: 3, scope: !1734, file: !218, line: 257, type: !38)
!1743 = !DILocalVariable(name: "argsize", arg: 4, scope: !1734, file: !218, line: 257, type: !83)
!1744 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1734, file: !218, line: 258, type: !54)
!1745 = !DILocalVariable(name: "flags", arg: 6, scope: !1734, file: !218, line: 258, type: !25)
!1746 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1734, file: !218, line: 259, type: !1737)
!1747 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1734, file: !218, line: 260, type: !38)
!1748 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1734, file: !218, line: 261, type: !38)
!1749 = !DILocalVariable(name: "i", scope: !1734, file: !218, line: 263, type: !83)
!1750 = !DILocalVariable(name: "len", scope: !1734, file: !218, line: 264, type: !83)
!1751 = !DILocalVariable(name: "orig_buffersize", scope: !1734, file: !218, line: 265, type: !83)
!1752 = !DILocalVariable(name: "quote_string", scope: !1734, file: !218, line: 266, type: !38)
!1753 = !DILocalVariable(name: "quote_string_len", scope: !1734, file: !218, line: 267, type: !83)
!1754 = !DILocalVariable(name: "backslash_escapes", scope: !1734, file: !218, line: 268, type: !180)
!1755 = !DILocalVariable(name: "unibyte_locale", scope: !1734, file: !218, line: 269, type: !180)
!1756 = !DILocalVariable(name: "elide_outer_quotes", scope: !1734, file: !218, line: 270, type: !180)
!1757 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1734, file: !218, line: 271, type: !180)
!1758 = !DILocalVariable(name: "encountered_single_quote", scope: !1734, file: !218, line: 272, type: !180)
!1759 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1734, file: !218, line: 273, type: !180)
!1760 = !DILocalVariable(name: "c", scope: !1761, file: !218, line: 402, type: !28)
!1761 = distinct !DILexicalBlock(scope: !1762, file: !218, line: 401, column: 5)
!1762 = distinct !DILexicalBlock(scope: !1763, file: !218, line: 400, column: 3)
!1763 = distinct !DILexicalBlock(scope: !1734, file: !218, line: 400, column: 3)
!1764 = !DILocalVariable(name: "esc", scope: !1761, file: !218, line: 403, type: !28)
!1765 = !DILocalVariable(name: "is_right_quote", scope: !1761, file: !218, line: 404, type: !180)
!1766 = !DILocalVariable(name: "escaping", scope: !1761, file: !218, line: 405, type: !180)
!1767 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1761, file: !218, line: 406, type: !180)
!1768 = !DILocalVariable(name: "m", scope: !1769, file: !218, line: 610, type: !83)
!1769 = distinct !DILexicalBlock(scope: !1770, file: !218, line: 608, column: 11)
!1770 = distinct !DILexicalBlock(scope: !1761, file: !218, line: 426, column: 9)
!1771 = !DILocalVariable(name: "printable", scope: !1769, file: !218, line: 612, type: !180)
!1772 = !DILocalVariable(name: "mbstate", scope: !1773, file: !218, line: 621, type: !1775)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !218, line: 620, column: 15)
!1774 = distinct !DILexicalBlock(scope: !1769, file: !218, line: 614, column: 17)
!1775 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1776, line: 6, baseType: !1777)
!1776 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1777 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1778, line: 21, baseType: !1779)
!1778 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1778, line: 13, size: 64, elements: !1780)
!1780 = !{!1781, !1782}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1779, file: !1778, line: 15, baseType: !25, size: 32)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1779, file: !1778, line: 20, baseType: !1783, size: 32, offset: 32)
!1783 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1779, file: !1778, line: 16, size: 32, elements: !1784)
!1784 = !{!1785, !1786}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1783, file: !1778, line: 18, baseType: !7, size: 32)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1783, file: !1778, line: 19, baseType: !1787, size: 32)
!1787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 32, elements: !1788)
!1788 = !{!1789}
!1789 = !DISubrange(count: 4)
!1790 = !DILocalVariable(name: "w", scope: !1791, file: !218, line: 631, type: !1792)
!1791 = distinct !DILexicalBlock(scope: !1773, file: !218, line: 630, column: 19)
!1792 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !84, line: 74, baseType: !25)
!1793 = !DILocalVariable(name: "bytes", scope: !1791, file: !218, line: 632, type: !83)
!1794 = !DILocalVariable(name: "j", scope: !1795, file: !218, line: 657, type: !83)
!1795 = distinct !DILexicalBlock(scope: !1796, file: !218, line: 656, column: 27)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !218, line: 654, column: 29)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !218, line: 649, column: 23)
!1798 = distinct !DILexicalBlock(scope: !1799, file: !218, line: 641, column: 30)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !218, line: 636, column: 30)
!1800 = distinct !DILexicalBlock(scope: !1791, file: !218, line: 634, column: 25)
!1801 = !DILocalVariable(name: "ilim", scope: !1802, file: !218, line: 684, type: !83)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !218, line: 681, column: 15)
!1803 = distinct !DILexicalBlock(scope: !1769, file: !218, line: 680, column: 17)
!1804 = !DILabel(scope: !1734, name: "process_input", file: !218, line: 314)
!1805 = !DILabel(scope: !1770, name: "c_and_shell_escape", file: !218, line: 512)
!1806 = !DILabel(scope: !1770, name: "c_escape", file: !218, line: 517)
!1807 = !DILabel(scope: !1761, name: "store_escape", file: !218, line: 719)
!1808 = !DILabel(scope: !1761, name: "store_c", file: !218, line: 722)
!1809 = !DILabel(scope: !1734, name: "force_outer_quoting_style", file: !218, line: 763)
!1810 = !DILocation(line: 0, scope: !1734)
!1811 = !DILocation(line: 269, column: 25, scope: !1734)
!1812 = !DILocation(line: 269, column: 36, scope: !1734)
!1813 = !DILocation(line: 270, column: 8, scope: !1734)
!1814 = !DILocation(line: 273, column: 3, scope: !1734)
!1815 = !DILocation(line: 265, column: 10, scope: !1734)
!1816 = !DILocation(line: 266, column: 15, scope: !1734)
!1817 = !DILocation(line: 267, column: 10, scope: !1734)
!1818 = !DILocation(line: 268, column: 8, scope: !1734)
!1819 = !DILocation(line: 271, column: 8, scope: !1734)
!1820 = !DILocation(line: 272, column: 8, scope: !1734)
!1821 = !DILocation(line: 273, column: 8, scope: !1734)
!1822 = !DILocation(line: 314, column: 2, scope: !1734)
!1823 = !DILocation(line: 316, column: 3, scope: !1734)
!1824 = !DILocation(line: 323, column: 11, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1734, file: !218, line: 317, column: 5)
!1826 = !DILocation(line: 323, column: 12, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1825, file: !218, line: 323, column: 11)
!1828 = !DILocation(line: 324, column: 9, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !218, line: 324, column: 9)
!1830 = distinct !DILexicalBlock(scope: !1827, file: !218, line: 324, column: 9)
!1831 = !DILocation(line: 324, column: 9, scope: !1830)
!1832 = !DILocation(line: 362, column: 26, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !218, line: 340, column: 11)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !218, line: 339, column: 13)
!1835 = distinct !DILexicalBlock(scope: !1825, file: !218, line: 338, column: 7)
!1836 = !DILocation(line: 363, column: 27, scope: !1833)
!1837 = !DILocation(line: 364, column: 11, scope: !1833)
!1838 = !DILocation(line: 365, column: 14, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1835, file: !218, line: 365, column: 13)
!1840 = !DILocation(line: 365, column: 13, scope: !1835)
!1841 = !DILocation(line: 366, column: 43, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !218, line: 366, column: 11)
!1843 = distinct !DILexicalBlock(scope: !1839, file: !218, line: 366, column: 11)
!1844 = !DILocation(line: 366, column: 11, scope: !1843)
!1845 = !DILocation(line: 367, column: 13, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1847, file: !218, line: 367, column: 13)
!1847 = distinct !DILexicalBlock(scope: !1842, file: !218, line: 367, column: 13)
!1848 = !DILocation(line: 367, column: 13, scope: !1847)
!1849 = !DILocation(line: 366, column: 70, scope: !1842)
!1850 = distinct !{!1850, !1844, !1851, !775}
!1851 = !DILocation(line: 367, column: 13, scope: !1843)
!1852 = !DILocation(line: 264, column: 10, scope: !1734)
!1853 = !DILocation(line: 370, column: 28, scope: !1835)
!1854 = !DILocation(line: 372, column: 7, scope: !1825)
!1855 = !DILocation(line: 376, column: 7, scope: !1825)
!1856 = !DILocation(line: 379, column: 7, scope: !1825)
!1857 = !DILocation(line: 381, column: 12, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1825, file: !218, line: 381, column: 11)
!1859 = !DILocation(line: 381, column: 11, scope: !1825)
!1860 = !DILocation(line: 386, column: 12, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1825, file: !218, line: 386, column: 11)
!1862 = !DILocation(line: 386, column: 11, scope: !1825)
!1863 = !DILocation(line: 387, column: 9, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1865, file: !218, line: 387, column: 9)
!1865 = distinct !DILexicalBlock(scope: !1861, file: !218, line: 387, column: 9)
!1866 = !DILocation(line: 387, column: 9, scope: !1865)
!1867 = !DILocation(line: 394, column: 7, scope: !1825)
!1868 = !DILocation(line: 397, column: 7, scope: !1825)
!1869 = !DILocation(line: 400, column: 8, scope: !1763)
!1870 = !DILocation(line: 0, scope: !1763)
!1871 = !DILocation(line: 400, column: 27, scope: !1762)
!1872 = !DILocation(line: 400, column: 19, scope: !1762)
!1873 = !DILocation(line: 400, column: 41, scope: !1762)
!1874 = !DILocation(line: 400, column: 48, scope: !1762)
!1875 = !DILocation(line: 400, column: 3, scope: !1763)
!1876 = !DILocation(line: 400, column: 60, scope: !1762)
!1877 = !DILocation(line: 0, scope: !1761)
!1878 = !DILocation(line: 409, column: 11, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1761, file: !218, line: 408, column: 11)
!1880 = !DILocation(line: 411, column: 17, scope: !1879)
!1881 = !DILocation(line: 412, column: 39, scope: !1879)
!1882 = !DILocation(line: 416, column: 32, scope: !1879)
!1883 = !DILocation(line: 412, column: 19, scope: !1879)
!1884 = !DILocation(line: 412, column: 15, scope: !1879)
!1885 = !DILocation(line: 417, column: 11, scope: !1879)
!1886 = !DILocation(line: 417, column: 26, scope: !1879)
!1887 = !DILocation(line: 417, column: 14, scope: !1879)
!1888 = !DILocation(line: 417, column: 63, scope: !1879)
!1889 = !DILocation(line: 408, column: 11, scope: !1761)
!1890 = !DILocation(line: 424, column: 11, scope: !1761)
!1891 = !DILocation(line: 425, column: 7, scope: !1761)
!1892 = !DILocation(line: 428, column: 15, scope: !1770)
!1893 = !DILocation(line: 430, column: 15, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !218, line: 430, column: 15)
!1895 = distinct !DILexicalBlock(scope: !1896, file: !218, line: 429, column: 13)
!1896 = distinct !DILexicalBlock(scope: !1770, file: !218, line: 428, column: 15)
!1897 = !DILocation(line: 430, column: 15, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1894, file: !218, line: 430, column: 15)
!1899 = !DILocation(line: 430, column: 15, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !218, line: 430, column: 15)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !218, line: 430, column: 15)
!1902 = distinct !DILexicalBlock(scope: !1898, file: !218, line: 430, column: 15)
!1903 = !DILocation(line: 430, column: 15, scope: !1901)
!1904 = !DILocation(line: 430, column: 15, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1906, file: !218, line: 430, column: 15)
!1906 = distinct !DILexicalBlock(scope: !1902, file: !218, line: 430, column: 15)
!1907 = !DILocation(line: 430, column: 15, scope: !1906)
!1908 = !DILocation(line: 430, column: 15, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !218, line: 430, column: 15)
!1910 = distinct !DILexicalBlock(scope: !1902, file: !218, line: 430, column: 15)
!1911 = !DILocation(line: 430, column: 15, scope: !1910)
!1912 = !DILocation(line: 430, column: 15, scope: !1902)
!1913 = !DILocation(line: 430, column: 15, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1915, file: !218, line: 430, column: 15)
!1915 = distinct !DILexicalBlock(scope: !1894, file: !218, line: 430, column: 15)
!1916 = !DILocation(line: 430, column: 15, scope: !1915)
!1917 = !DILocation(line: 438, column: 19, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1895, file: !218, line: 437, column: 19)
!1919 = !DILocation(line: 438, column: 48, scope: !1918)
!1920 = !DILocation(line: 438, column: 59, scope: !1918)
!1921 = !DILocation(line: 440, column: 19, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1923, file: !218, line: 440, column: 19)
!1923 = distinct !DILexicalBlock(scope: !1924, file: !218, line: 440, column: 19)
!1924 = distinct !DILexicalBlock(scope: !1918, file: !218, line: 439, column: 17)
!1925 = !DILocation(line: 440, column: 19, scope: !1923)
!1926 = !DILocation(line: 441, column: 19, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1928, file: !218, line: 441, column: 19)
!1928 = distinct !DILexicalBlock(scope: !1924, file: !218, line: 441, column: 19)
!1929 = !DILocation(line: 441, column: 19, scope: !1928)
!1930 = !DILocation(line: 442, column: 17, scope: !1924)
!1931 = !DILocation(line: 449, column: 20, scope: !1896)
!1932 = !DILocation(line: 454, column: 11, scope: !1770)
!1933 = !DILocation(line: 457, column: 19, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1770, file: !218, line: 455, column: 13)
!1935 = !DILocation(line: 463, column: 19, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1934, file: !218, line: 462, column: 19)
!1937 = !DILocation(line: 463, column: 47, scope: !1936)
!1938 = !DILocation(line: 463, column: 41, scope: !1936)
!1939 = !DILocation(line: 463, column: 52, scope: !1936)
!1940 = !DILocation(line: 462, column: 19, scope: !1934)
!1941 = !DILocation(line: 464, column: 25, scope: !1936)
!1942 = !DILocation(line: 464, column: 17, scope: !1936)
!1943 = !DILocation(line: 471, column: 25, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1936, file: !218, line: 465, column: 19)
!1945 = !DILocation(line: 475, column: 21, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1947, file: !218, line: 475, column: 21)
!1947 = distinct !DILexicalBlock(scope: !1944, file: !218, line: 475, column: 21)
!1948 = !DILocation(line: 475, column: 21, scope: !1947)
!1949 = !DILocation(line: 476, column: 21, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !218, line: 476, column: 21)
!1951 = distinct !DILexicalBlock(scope: !1944, file: !218, line: 476, column: 21)
!1952 = !DILocation(line: 476, column: 21, scope: !1951)
!1953 = !DILocation(line: 477, column: 21, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !218, line: 477, column: 21)
!1955 = distinct !DILexicalBlock(scope: !1944, file: !218, line: 477, column: 21)
!1956 = !DILocation(line: 477, column: 21, scope: !1955)
!1957 = !DILocation(line: 478, column: 21, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !218, line: 478, column: 21)
!1959 = distinct !DILexicalBlock(scope: !1944, file: !218, line: 478, column: 21)
!1960 = !DILocation(line: 478, column: 21, scope: !1959)
!1961 = !DILocation(line: 479, column: 21, scope: !1944)
!1962 = !DILocation(line: 492, column: 31, scope: !1770)
!1963 = !DILocation(line: 493, column: 31, scope: !1770)
!1964 = !DILocation(line: 495, column: 31, scope: !1770)
!1965 = !DILocation(line: 496, column: 31, scope: !1770)
!1966 = !DILocation(line: 497, column: 31, scope: !1770)
!1967 = !DILocation(line: 500, column: 15, scope: !1770)
!1968 = !DILocation(line: 502, column: 19, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1970, file: !218, line: 501, column: 13)
!1970 = distinct !DILexicalBlock(scope: !1770, file: !218, line: 500, column: 15)
!1971 = !DILocation(line: 509, column: 33, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1770, file: !218, line: 509, column: 15)
!1973 = !DILocation(line: 0, scope: !1770)
!1974 = !DILocation(line: 512, column: 9, scope: !1770)
!1975 = !DILocation(line: 514, column: 15, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1770, file: !218, line: 513, column: 15)
!1977 = !DILocation(line: 517, column: 9, scope: !1770)
!1978 = !DILocation(line: 518, column: 15, scope: !1770)
!1979 = !DILocation(line: 526, column: 15, scope: !1770)
!1980 = !DILocation(line: 526, column: 40, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1770, file: !218, line: 526, column: 15)
!1982 = !DILocation(line: 526, column: 47, scope: !1981)
!1983 = !DILocation(line: 526, column: 18, scope: !1981)
!1984 = !DILocation(line: 530, column: 17, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1770, file: !218, line: 530, column: 15)
!1986 = !DILocation(line: 530, column: 15, scope: !1770)
!1987 = !DILocation(line: 535, column: 11, scope: !1770)
!1988 = !DILocation(line: 549, column: 15, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1770, file: !218, line: 548, column: 15)
!1990 = !DILocation(line: 556, column: 15, scope: !1770)
!1991 = !DILocation(line: 558, column: 19, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !218, line: 557, column: 13)
!1993 = distinct !DILexicalBlock(scope: !1770, file: !218, line: 556, column: 15)
!1994 = !DILocation(line: 561, column: 19, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1992, file: !218, line: 561, column: 19)
!1996 = !DILocation(line: 561, column: 30, scope: !1995)
!1997 = !DILocation(line: 570, column: 15, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !218, line: 570, column: 15)
!1999 = distinct !DILexicalBlock(scope: !1992, file: !218, line: 570, column: 15)
!2000 = !DILocation(line: 570, column: 15, scope: !1999)
!2001 = !DILocation(line: 571, column: 15, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !218, line: 571, column: 15)
!2003 = distinct !DILexicalBlock(scope: !1992, file: !218, line: 571, column: 15)
!2004 = !DILocation(line: 571, column: 15, scope: !2003)
!2005 = !DILocation(line: 572, column: 15, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !218, line: 572, column: 15)
!2007 = distinct !DILexicalBlock(scope: !1992, file: !218, line: 572, column: 15)
!2008 = !DILocation(line: 572, column: 15, scope: !2007)
!2009 = !DILocation(line: 574, column: 13, scope: !1992)
!2010 = !DILocation(line: 614, column: 17, scope: !1769)
!2011 = !DILocation(line: 0, scope: !1769)
!2012 = !DILocation(line: 617, column: 29, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !1774, file: !218, line: 615, column: 15)
!2014 = !DILocation(line: 617, column: 27, scope: !2013)
!2015 = !DILocation(line: 678, column: 40, scope: !1769)
!2016 = !DILocation(line: 680, column: 23, scope: !1803)
!2017 = !DILocation(line: 621, column: 17, scope: !1773)
!2018 = !DILocation(line: 621, column: 27, scope: !1773)
!2019 = !DILocalVariable(name: "__dest", arg: 1, scope: !2020, file: !2021, line: 57, type: !24)
!2020 = distinct !DISubprogram(name: "memset", scope: !2021, file: !2021, line: 57, type: !2022, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !217, retainedNodes: !2024)
!2021 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!24, !24, !25, !83}
!2024 = !{!2019, !2025, !2026}
!2025 = !DILocalVariable(name: "__ch", arg: 2, scope: !2020, file: !2021, line: 57, type: !25)
!2026 = !DILocalVariable(name: "__len", arg: 3, scope: !2020, file: !2021, line: 57, type: !83)
!2027 = !DILocation(line: 0, scope: !2020, inlinedAt: !2028)
!2028 = distinct !DILocation(line: 622, column: 17, scope: !1773)
!2029 = !DILocation(line: 59, column: 10, scope: !2020, inlinedAt: !2028)
!2030 = !DILocation(line: 626, column: 29, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !1773, file: !218, line: 626, column: 21)
!2032 = !DILocation(line: 626, column: 21, scope: !1773)
!2033 = !DILocation(line: 627, column: 29, scope: !2031)
!2034 = !DILocation(line: 627, column: 19, scope: !2031)
!2035 = !DILocation(line: 629, column: 17, scope: !1773)
!2036 = !DILocation(line: 624, column: 19, scope: !1773)
!2037 = !DILocation(line: 625, column: 27, scope: !1773)
!2038 = !DILocation(line: 631, column: 21, scope: !1791)
!2039 = !DILocation(line: 632, column: 56, scope: !1791)
!2040 = !DILocation(line: 632, column: 50, scope: !1791)
!2041 = !DILocation(line: 633, column: 53, scope: !1791)
!2042 = !DILocation(line: 0, scope: !1791)
!2043 = !DILocation(line: 632, column: 36, scope: !1791)
!2044 = !DILocation(line: 634, column: 25, scope: !1791)
!2045 = !DILocation(line: 644, column: 38, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !1798, file: !218, line: 642, column: 23)
!2047 = !DILocation(line: 644, column: 48, scope: !2046)
!2048 = !DILocation(line: 644, column: 25, scope: !2046)
!2049 = !DILocation(line: 644, column: 51, scope: !2046)
!2050 = !DILocation(line: 645, column: 28, scope: !2046)
!2051 = !DILocation(line: 644, column: 34, scope: !2046)
!2052 = distinct !{!2052, !2048, !2050, !775}
!2053 = !DILocation(line: 655, column: 29, scope: !1796)
!2054 = !DILocation(line: 0, scope: !1795)
!2055 = !DILocation(line: 659, column: 49, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !218, line: 658, column: 29)
!2057 = distinct !DILexicalBlock(scope: !1795, file: !218, line: 658, column: 29)
!2058 = !DILocation(line: 659, column: 39, scope: !2056)
!2059 = !DILocation(line: 659, column: 31, scope: !2056)
!2060 = !DILocation(line: 658, column: 53, scope: !2056)
!2061 = !DILocation(line: 658, column: 43, scope: !2056)
!2062 = !DILocation(line: 658, column: 29, scope: !2057)
!2063 = distinct !{!2063, !2062, !2064, !775}
!2064 = !DILocation(line: 667, column: 33, scope: !2057)
!2065 = !DILocation(line: 674, column: 19, scope: !1773)
!2066 = !DILocation(line: 670, column: 41, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !1797, file: !218, line: 670, column: 29)
!2068 = !DILocation(line: 670, column: 31, scope: !2067)
!2069 = !DILocation(line: 670, column: 29, scope: !1797)
!2070 = !DILocation(line: 672, column: 27, scope: !1797)
!2071 = !DILocation(line: 675, column: 26, scope: !1773)
!2072 = !DILocation(line: 675, column: 24, scope: !1773)
!2073 = !DILocation(line: 674, column: 19, scope: !1791)
!2074 = distinct !{!2074, !2035, !2075, !775}
!2075 = !DILocation(line: 675, column: 44, scope: !1773)
!2076 = !DILocation(line: 676, column: 15, scope: !1774)
!2077 = !DILocation(line: 680, column: 19, scope: !1803)
!2078 = !DILocation(line: 680, column: 45, scope: !1803)
!2079 = !DILocation(line: 684, column: 33, scope: !1802)
!2080 = !DILocation(line: 0, scope: !1802)
!2081 = !DILocation(line: 686, column: 17, scope: !1802)
!2082 = !DILocation(line: 405, column: 12, scope: !1761)
!2083 = !DILocation(line: 688, column: 43, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2085, file: !218, line: 688, column: 25)
!2085 = distinct !DILexicalBlock(scope: !2086, file: !218, line: 687, column: 19)
!2086 = distinct !DILexicalBlock(scope: !2087, file: !218, line: 686, column: 17)
!2087 = distinct !DILexicalBlock(scope: !1802, file: !218, line: 686, column: 17)
!2088 = !DILocation(line: 690, column: 25, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2090, file: !218, line: 690, column: 25)
!2090 = distinct !DILexicalBlock(scope: !2084, file: !218, line: 689, column: 23)
!2091 = !DILocation(line: 690, column: 25, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2089, file: !218, line: 690, column: 25)
!2093 = !DILocation(line: 690, column: 25, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2095, file: !218, line: 690, column: 25)
!2095 = distinct !DILexicalBlock(scope: !2096, file: !218, line: 690, column: 25)
!2096 = distinct !DILexicalBlock(scope: !2092, file: !218, line: 690, column: 25)
!2097 = !DILocation(line: 690, column: 25, scope: !2095)
!2098 = !DILocation(line: 690, column: 25, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !218, line: 690, column: 25)
!2100 = distinct !DILexicalBlock(scope: !2096, file: !218, line: 690, column: 25)
!2101 = !DILocation(line: 690, column: 25, scope: !2100)
!2102 = !DILocation(line: 690, column: 25, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !218, line: 690, column: 25)
!2104 = distinct !DILexicalBlock(scope: !2096, file: !218, line: 690, column: 25)
!2105 = !DILocation(line: 690, column: 25, scope: !2104)
!2106 = !DILocation(line: 690, column: 25, scope: !2096)
!2107 = !DILocation(line: 690, column: 25, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2109, file: !218, line: 690, column: 25)
!2109 = distinct !DILexicalBlock(scope: !2089, file: !218, line: 690, column: 25)
!2110 = !DILocation(line: 690, column: 25, scope: !2109)
!2111 = !DILocation(line: 691, column: 25, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2113, file: !218, line: 691, column: 25)
!2113 = distinct !DILexicalBlock(scope: !2090, file: !218, line: 691, column: 25)
!2114 = !DILocation(line: 691, column: 25, scope: !2113)
!2115 = !DILocation(line: 692, column: 25, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !218, line: 692, column: 25)
!2117 = distinct !DILexicalBlock(scope: !2090, file: !218, line: 692, column: 25)
!2118 = !DILocation(line: 692, column: 25, scope: !2117)
!2119 = !DILocation(line: 693, column: 38, scope: !2090)
!2120 = !DILocation(line: 693, column: 33, scope: !2090)
!2121 = !DILocation(line: 694, column: 23, scope: !2090)
!2122 = !DILocation(line: 695, column: 30, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2084, file: !218, line: 695, column: 30)
!2124 = !DILocation(line: 695, column: 30, scope: !2084)
!2125 = !DILocation(line: 697, column: 25, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !218, line: 697, column: 25)
!2127 = distinct !DILexicalBlock(scope: !2128, file: !218, line: 697, column: 25)
!2128 = distinct !DILexicalBlock(scope: !2123, file: !218, line: 696, column: 23)
!2129 = !DILocation(line: 697, column: 25, scope: !2127)
!2130 = !DILocation(line: 699, column: 23, scope: !2128)
!2131 = !DILocation(line: 700, column: 35, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2085, file: !218, line: 700, column: 25)
!2133 = !DILocation(line: 700, column: 30, scope: !2132)
!2134 = !DILocation(line: 700, column: 25, scope: !2085)
!2135 = !DILocation(line: 702, column: 21, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2137, file: !218, line: 702, column: 21)
!2137 = distinct !DILexicalBlock(scope: !2085, file: !218, line: 702, column: 21)
!2138 = !DILocation(line: 702, column: 21, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2140, file: !218, line: 702, column: 21)
!2140 = distinct !DILexicalBlock(scope: !2141, file: !218, line: 702, column: 21)
!2141 = distinct !DILexicalBlock(scope: !2136, file: !218, line: 702, column: 21)
!2142 = !DILocation(line: 702, column: 21, scope: !2140)
!2143 = !DILocation(line: 702, column: 21, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2145, file: !218, line: 702, column: 21)
!2145 = distinct !DILexicalBlock(scope: !2141, file: !218, line: 702, column: 21)
!2146 = !DILocation(line: 702, column: 21, scope: !2145)
!2147 = !DILocation(line: 702, column: 21, scope: !2141)
!2148 = !DILocation(line: 0, scope: !2085)
!2149 = !DILocation(line: 703, column: 21, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2151, file: !218, line: 703, column: 21)
!2151 = distinct !DILexicalBlock(scope: !2085, file: !218, line: 703, column: 21)
!2152 = !DILocation(line: 703, column: 21, scope: !2151)
!2153 = !DILocation(line: 704, column: 25, scope: !2085)
!2154 = !DILocation(line: 686, column: 17, scope: !2086)
!2155 = distinct !{!2155, !2156, !2157}
!2156 = !DILocation(line: 686, column: 17, scope: !2087)
!2157 = !DILocation(line: 705, column: 19, scope: !2087)
!2158 = !DILocation(line: 416, column: 30, scope: !1879)
!2159 = !DILocation(line: 712, column: 34, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !1761, file: !218, line: 712, column: 11)
!2161 = !DILocation(line: 715, column: 35, scope: !2160)
!2162 = !DILocation(line: 715, column: 17, scope: !2160)
!2163 = !DILocation(line: 715, column: 47, scope: !2160)
!2164 = !DILocation(line: 715, column: 65, scope: !2160)
!2165 = !DILocation(line: 716, column: 11, scope: !2160)
!2166 = !DILocation(line: 712, column: 11, scope: !1761)
!2167 = !DILocation(line: 400, column: 10, scope: !1763)
!2168 = !DILocation(line: 719, column: 5, scope: !1761)
!2169 = !DILocation(line: 720, column: 7, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !1761, file: !218, line: 720, column: 7)
!2171 = !DILocation(line: 720, column: 7, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2170, file: !218, line: 720, column: 7)
!2173 = !DILocation(line: 720, column: 7, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2175, file: !218, line: 720, column: 7)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !218, line: 720, column: 7)
!2176 = distinct !DILexicalBlock(scope: !2172, file: !218, line: 720, column: 7)
!2177 = !DILocation(line: 720, column: 7, scope: !2175)
!2178 = !DILocation(line: 720, column: 7, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !218, line: 720, column: 7)
!2180 = distinct !DILexicalBlock(scope: !2176, file: !218, line: 720, column: 7)
!2181 = !DILocation(line: 720, column: 7, scope: !2180)
!2182 = !DILocation(line: 720, column: 7, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2184, file: !218, line: 720, column: 7)
!2184 = distinct !DILexicalBlock(scope: !2176, file: !218, line: 720, column: 7)
!2185 = !DILocation(line: 720, column: 7, scope: !2184)
!2186 = !DILocation(line: 720, column: 7, scope: !2176)
!2187 = !DILocation(line: 720, column: 7, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2189, file: !218, line: 720, column: 7)
!2189 = distinct !DILexicalBlock(scope: !2170, file: !218, line: 720, column: 7)
!2190 = !DILocation(line: 720, column: 7, scope: !2189)
!2191 = !DILocation(line: 722, column: 5, scope: !1761)
!2192 = !DILocation(line: 723, column: 7, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2194, file: !218, line: 723, column: 7)
!2194 = distinct !DILexicalBlock(scope: !1761, file: !218, line: 723, column: 7)
!2195 = !DILocation(line: 424, column: 9, scope: !1761)
!2196 = !DILocation(line: 723, column: 7, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2198, file: !218, line: 723, column: 7)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !218, line: 723, column: 7)
!2199 = distinct !DILexicalBlock(scope: !2193, file: !218, line: 723, column: 7)
!2200 = !DILocation(line: 723, column: 7, scope: !2198)
!2201 = !DILocation(line: 723, column: 7, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !218, line: 723, column: 7)
!2203 = distinct !DILexicalBlock(scope: !2199, file: !218, line: 723, column: 7)
!2204 = !DILocation(line: 723, column: 7, scope: !2203)
!2205 = !DILocation(line: 723, column: 7, scope: !2199)
!2206 = !DILocation(line: 724, column: 7, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2208, file: !218, line: 724, column: 7)
!2208 = distinct !DILexicalBlock(scope: !1761, file: !218, line: 724, column: 7)
!2209 = !DILocation(line: 724, column: 7, scope: !2208)
!2210 = !DILocation(line: 726, column: 13, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !1761, file: !218, line: 726, column: 11)
!2212 = !DILocation(line: 726, column: 11, scope: !1761)
!2213 = !DILocation(line: 728, column: 5, scope: !1762)
!2214 = !DILocation(line: 400, column: 75, scope: !1762)
!2215 = !DILocation(line: 400, column: 3, scope: !1762)
!2216 = distinct !{!2216, !1875, !2217, !775}
!2217 = !DILocation(line: 728, column: 5, scope: !1763)
!2218 = !DILocation(line: 730, column: 11, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !1734, file: !218, line: 730, column: 7)
!2220 = !DILocation(line: 730, column: 16, scope: !2219)
!2221 = !DILocation(line: 738, column: 51, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !1734, file: !218, line: 738, column: 7)
!2223 = !DILocation(line: 741, column: 11, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2225, file: !218, line: 741, column: 11)
!2225 = distinct !DILexicalBlock(scope: !2222, file: !218, line: 740, column: 5)
!2226 = !DILocation(line: 741, column: 11, scope: !2225)
!2227 = !DILocation(line: 742, column: 16, scope: !2224)
!2228 = !DILocation(line: 742, column: 9, scope: !2224)
!2229 = !DILocation(line: 746, column: 18, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2224, file: !218, line: 746, column: 16)
!2231 = !DILocation(line: 746, column: 29, scope: !2230)
!2232 = !DILocation(line: 755, column: 7, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !1734, file: !218, line: 755, column: 7)
!2234 = !DILocation(line: 755, column: 20, scope: !2233)
!2235 = !DILocation(line: 756, column: 12, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2237, file: !218, line: 756, column: 5)
!2237 = distinct !DILexicalBlock(scope: !2233, file: !218, line: 756, column: 5)
!2238 = !DILocation(line: 756, column: 5, scope: !2237)
!2239 = !DILocation(line: 757, column: 7, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2241, file: !218, line: 757, column: 7)
!2241 = distinct !DILexicalBlock(scope: !2236, file: !218, line: 757, column: 7)
!2242 = !DILocation(line: 757, column: 7, scope: !2241)
!2243 = !DILocation(line: 756, column: 39, scope: !2236)
!2244 = distinct !{!2244, !2238, !2245, !775}
!2245 = !DILocation(line: 757, column: 7, scope: !2237)
!2246 = !DILocation(line: 759, column: 11, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !1734, file: !218, line: 759, column: 7)
!2248 = !DILocation(line: 759, column: 7, scope: !1734)
!2249 = !DILocation(line: 760, column: 5, scope: !2247)
!2250 = !DILocation(line: 760, column: 17, scope: !2247)
!2251 = !DILocation(line: 763, column: 2, scope: !1734)
!2252 = !DILocation(line: 766, column: 51, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !1734, file: !218, line: 766, column: 7)
!2254 = !DILocation(line: 766, column: 21, scope: !2253)
!2255 = !DILocation(line: 770, column: 42, scope: !1734)
!2256 = !DILocation(line: 768, column: 10, scope: !1734)
!2257 = !DILocation(line: 768, column: 3, scope: !1734)
!2258 = !DILocation(line: 772, column: 1, scope: !1734)
!2259 = distinct !DISubprogram(name: "gettext_quote", scope: !218, file: !218, line: 207, type: !2260, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !217, retainedNodes: !2262)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{!38, !38, !54}
!2262 = !{!2263, !2264, !2265, !2266}
!2263 = !DILocalVariable(name: "msgid", arg: 1, scope: !2259, file: !218, line: 207, type: !38)
!2264 = !DILocalVariable(name: "s", arg: 2, scope: !2259, file: !218, line: 207, type: !54)
!2265 = !DILocalVariable(name: "translation", scope: !2259, file: !218, line: 209, type: !38)
!2266 = !DILocalVariable(name: "locale_code", scope: !2259, file: !218, line: 210, type: !38)
!2267 = !DILocation(line: 0, scope: !2259)
!2268 = !DILocation(line: 209, column: 29, scope: !2259)
!2269 = !DILocation(line: 212, column: 19, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2259, file: !218, line: 212, column: 7)
!2271 = !DILocation(line: 212, column: 7, scope: !2259)
!2272 = !DILocation(line: 233, column: 17, scope: !2259)
!2273 = !DILocalVariable(name: "s1", arg: 1, scope: !2274, file: !2275, line: 160, type: !38)
!2274 = distinct !DISubprogram(name: "strcaseeq0", scope: !2275, file: !2275, line: 160, type: !2276, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !217, retainedNodes: !2278)
!2275 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2276 = !DISubroutineType(types: !2277)
!2277 = !{!25, !38, !38, !23, !23, !23, !23, !23, !23, !23, !23, !23}
!2278 = !{!2273, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288}
!2279 = !DILocalVariable(name: "s2", arg: 2, scope: !2274, file: !2275, line: 160, type: !38)
!2280 = !DILocalVariable(name: "s20", arg: 3, scope: !2274, file: !2275, line: 160, type: !23)
!2281 = !DILocalVariable(name: "s21", arg: 4, scope: !2274, file: !2275, line: 160, type: !23)
!2282 = !DILocalVariable(name: "s22", arg: 5, scope: !2274, file: !2275, line: 160, type: !23)
!2283 = !DILocalVariable(name: "s23", arg: 6, scope: !2274, file: !2275, line: 160, type: !23)
!2284 = !DILocalVariable(name: "s24", arg: 7, scope: !2274, file: !2275, line: 160, type: !23)
!2285 = !DILocalVariable(name: "s25", arg: 8, scope: !2274, file: !2275, line: 160, type: !23)
!2286 = !DILocalVariable(name: "s26", arg: 9, scope: !2274, file: !2275, line: 160, type: !23)
!2287 = !DILocalVariable(name: "s27", arg: 10, scope: !2274, file: !2275, line: 160, type: !23)
!2288 = !DILocalVariable(name: "s28", arg: 11, scope: !2274, file: !2275, line: 160, type: !23)
!2289 = !DILocation(line: 0, scope: !2274, inlinedAt: !2290)
!2290 = distinct !DILocation(line: 234, column: 7, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2259, file: !218, line: 234, column: 7)
!2292 = !DILocation(line: 162, column: 7, scope: !2293, inlinedAt: !2290)
!2293 = distinct !DILexicalBlock(scope: !2274, file: !2275, line: 162, column: 7)
!2294 = !DILocalVariable(name: "s1", arg: 1, scope: !2295, file: !2275, line: 146, type: !38)
!2295 = distinct !DISubprogram(name: "strcaseeq1", scope: !2275, file: !2275, line: 146, type: !2296, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !217, retainedNodes: !2298)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{!25, !38, !38, !23, !23, !23, !23, !23, !23, !23, !23}
!2298 = !{!2294, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307}
!2299 = !DILocalVariable(name: "s2", arg: 2, scope: !2295, file: !2275, line: 146, type: !38)
!2300 = !DILocalVariable(name: "s21", arg: 3, scope: !2295, file: !2275, line: 146, type: !23)
!2301 = !DILocalVariable(name: "s22", arg: 4, scope: !2295, file: !2275, line: 146, type: !23)
!2302 = !DILocalVariable(name: "s23", arg: 5, scope: !2295, file: !2275, line: 146, type: !23)
!2303 = !DILocalVariable(name: "s24", arg: 6, scope: !2295, file: !2275, line: 146, type: !23)
!2304 = !DILocalVariable(name: "s25", arg: 7, scope: !2295, file: !2275, line: 146, type: !23)
!2305 = !DILocalVariable(name: "s26", arg: 8, scope: !2295, file: !2275, line: 146, type: !23)
!2306 = !DILocalVariable(name: "s27", arg: 9, scope: !2295, file: !2275, line: 146, type: !23)
!2307 = !DILocalVariable(name: "s28", arg: 10, scope: !2295, file: !2275, line: 146, type: !23)
!2308 = !DILocation(line: 0, scope: !2295, inlinedAt: !2309)
!2309 = distinct !DILocation(line: 167, column: 16, scope: !2310, inlinedAt: !2290)
!2310 = distinct !DILexicalBlock(scope: !2311, file: !2275, line: 164, column: 11)
!2311 = distinct !DILexicalBlock(scope: !2293, file: !2275, line: 163, column: 5)
!2312 = !DILocation(line: 148, column: 7, scope: !2313, inlinedAt: !2309)
!2313 = distinct !DILexicalBlock(scope: !2295, file: !2275, line: 148, column: 7)
!2314 = !DILocalVariable(name: "s1", arg: 1, scope: !2315, file: !2275, line: 132, type: !38)
!2315 = distinct !DISubprogram(name: "strcaseeq2", scope: !2275, file: !2275, line: 132, type: !2316, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !217, retainedNodes: !2318)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!25, !38, !38, !23, !23, !23, !23, !23, !23, !23}
!2318 = !{!2314, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326}
!2319 = !DILocalVariable(name: "s2", arg: 2, scope: !2315, file: !2275, line: 132, type: !38)
!2320 = !DILocalVariable(name: "s22", arg: 3, scope: !2315, file: !2275, line: 132, type: !23)
!2321 = !DILocalVariable(name: "s23", arg: 4, scope: !2315, file: !2275, line: 132, type: !23)
!2322 = !DILocalVariable(name: "s24", arg: 5, scope: !2315, file: !2275, line: 132, type: !23)
!2323 = !DILocalVariable(name: "s25", arg: 6, scope: !2315, file: !2275, line: 132, type: !23)
!2324 = !DILocalVariable(name: "s26", arg: 7, scope: !2315, file: !2275, line: 132, type: !23)
!2325 = !DILocalVariable(name: "s27", arg: 8, scope: !2315, file: !2275, line: 132, type: !23)
!2326 = !DILocalVariable(name: "s28", arg: 9, scope: !2315, file: !2275, line: 132, type: !23)
!2327 = !DILocation(line: 0, scope: !2315, inlinedAt: !2328)
!2328 = distinct !DILocation(line: 153, column: 16, scope: !2329, inlinedAt: !2309)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !2275, line: 150, column: 11)
!2330 = distinct !DILexicalBlock(scope: !2313, file: !2275, line: 149, column: 5)
!2331 = !DILocation(line: 134, column: 7, scope: !2332, inlinedAt: !2328)
!2332 = distinct !DILexicalBlock(scope: !2315, file: !2275, line: 134, column: 7)
!2333 = !DILocalVariable(name: "s1", arg: 1, scope: !2334, file: !2275, line: 118, type: !38)
!2334 = distinct !DISubprogram(name: "strcaseeq3", scope: !2275, file: !2275, line: 118, type: !2335, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !217, retainedNodes: !2337)
!2335 = !DISubroutineType(types: !2336)
!2336 = !{!25, !38, !38, !23, !23, !23, !23, !23, !23}
!2337 = !{!2333, !2338, !2339, !2340, !2341, !2342, !2343, !2344}
!2338 = !DILocalVariable(name: "s2", arg: 2, scope: !2334, file: !2275, line: 118, type: !38)
!2339 = !DILocalVariable(name: "s23", arg: 3, scope: !2334, file: !2275, line: 118, type: !23)
!2340 = !DILocalVariable(name: "s24", arg: 4, scope: !2334, file: !2275, line: 118, type: !23)
!2341 = !DILocalVariable(name: "s25", arg: 5, scope: !2334, file: !2275, line: 118, type: !23)
!2342 = !DILocalVariable(name: "s26", arg: 6, scope: !2334, file: !2275, line: 118, type: !23)
!2343 = !DILocalVariable(name: "s27", arg: 7, scope: !2334, file: !2275, line: 118, type: !23)
!2344 = !DILocalVariable(name: "s28", arg: 8, scope: !2334, file: !2275, line: 118, type: !23)
!2345 = !DILocation(line: 0, scope: !2334, inlinedAt: !2346)
!2346 = distinct !DILocation(line: 139, column: 16, scope: !2347, inlinedAt: !2328)
!2347 = distinct !DILexicalBlock(scope: !2348, file: !2275, line: 136, column: 11)
!2348 = distinct !DILexicalBlock(scope: !2332, file: !2275, line: 135, column: 5)
!2349 = !DILocation(line: 120, column: 7, scope: !2350, inlinedAt: !2346)
!2350 = distinct !DILexicalBlock(scope: !2334, file: !2275, line: 120, column: 7)
!2351 = !DILocation(line: 120, column: 7, scope: !2334, inlinedAt: !2346)
!2352 = !DILocalVariable(name: "s1", arg: 1, scope: !2353, file: !2275, line: 104, type: !38)
!2353 = distinct !DISubprogram(name: "strcaseeq4", scope: !2275, file: !2275, line: 104, type: !2354, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !217, retainedNodes: !2356)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{!25, !38, !38, !23, !23, !23, !23, !23}
!2356 = !{!2352, !2357, !2358, !2359, !2360, !2361, !2362}
!2357 = !DILocalVariable(name: "s2", arg: 2, scope: !2353, file: !2275, line: 104, type: !38)
!2358 = !DILocalVariable(name: "s24", arg: 3, scope: !2353, file: !2275, line: 104, type: !23)
!2359 = !DILocalVariable(name: "s25", arg: 4, scope: !2353, file: !2275, line: 104, type: !23)
!2360 = !DILocalVariable(name: "s26", arg: 5, scope: !2353, file: !2275, line: 104, type: !23)
!2361 = !DILocalVariable(name: "s27", arg: 6, scope: !2353, file: !2275, line: 104, type: !23)
!2362 = !DILocalVariable(name: "s28", arg: 7, scope: !2353, file: !2275, line: 104, type: !23)
!2363 = !DILocation(line: 0, scope: !2353, inlinedAt: !2364)
!2364 = distinct !DILocation(line: 125, column: 16, scope: !2365, inlinedAt: !2346)
!2365 = distinct !DILexicalBlock(scope: !2366, file: !2275, line: 122, column: 11)
!2366 = distinct !DILexicalBlock(scope: !2350, file: !2275, line: 121, column: 5)
!2367 = !DILocation(line: 106, column: 7, scope: !2368, inlinedAt: !2364)
!2368 = distinct !DILexicalBlock(scope: !2353, file: !2275, line: 106, column: 7)
!2369 = !DILocation(line: 106, column: 7, scope: !2353, inlinedAt: !2364)
!2370 = !DILocalVariable(name: "s1", arg: 1, scope: !2371, file: !2275, line: 90, type: !38)
!2371 = distinct !DISubprogram(name: "strcaseeq5", scope: !2275, file: !2275, line: 90, type: !2372, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !217, retainedNodes: !2374)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!25, !38, !38, !23, !23, !23, !23}
!2374 = !{!2370, !2375, !2376, !2377, !2378, !2379}
!2375 = !DILocalVariable(name: "s2", arg: 2, scope: !2371, file: !2275, line: 90, type: !38)
!2376 = !DILocalVariable(name: "s25", arg: 3, scope: !2371, file: !2275, line: 90, type: !23)
!2377 = !DILocalVariable(name: "s26", arg: 4, scope: !2371, file: !2275, line: 90, type: !23)
!2378 = !DILocalVariable(name: "s27", arg: 5, scope: !2371, file: !2275, line: 90, type: !23)
!2379 = !DILocalVariable(name: "s28", arg: 6, scope: !2371, file: !2275, line: 90, type: !23)
!2380 = !DILocation(line: 0, scope: !2371, inlinedAt: !2381)
!2381 = distinct !DILocation(line: 111, column: 16, scope: !2382, inlinedAt: !2364)
!2382 = distinct !DILexicalBlock(scope: !2383, file: !2275, line: 108, column: 11)
!2383 = distinct !DILexicalBlock(scope: !2368, file: !2275, line: 107, column: 5)
!2384 = !DILocation(line: 92, column: 7, scope: !2385, inlinedAt: !2381)
!2385 = distinct !DILexicalBlock(scope: !2371, file: !2275, line: 92, column: 7)
!2386 = !DILocation(line: 92, column: 7, scope: !2371, inlinedAt: !2381)
!2387 = !DILocation(line: 235, column: 12, scope: !2291)
!2388 = !DILocation(line: 235, column: 21, scope: !2291)
!2389 = !DILocation(line: 235, column: 5, scope: !2291)
!2390 = !DILocation(line: 0, scope: !2295, inlinedAt: !2391)
!2391 = distinct !DILocation(line: 167, column: 16, scope: !2310, inlinedAt: !2392)
!2392 = distinct !DILocation(line: 236, column: 7, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2259, file: !218, line: 236, column: 7)
!2394 = !DILocation(line: 148, column: 7, scope: !2313, inlinedAt: !2391)
!2395 = !DILocation(line: 0, scope: !2315, inlinedAt: !2396)
!2396 = distinct !DILocation(line: 153, column: 16, scope: !2329, inlinedAt: !2391)
!2397 = !DILocation(line: 134, column: 7, scope: !2332, inlinedAt: !2396)
!2398 = !DILocation(line: 134, column: 7, scope: !2315, inlinedAt: !2396)
!2399 = !DILocation(line: 0, scope: !2334, inlinedAt: !2400)
!2400 = distinct !DILocation(line: 139, column: 16, scope: !2347, inlinedAt: !2396)
!2401 = !DILocation(line: 120, column: 7, scope: !2350, inlinedAt: !2400)
!2402 = !DILocation(line: 120, column: 7, scope: !2334, inlinedAt: !2400)
!2403 = !DILocation(line: 0, scope: !2353, inlinedAt: !2404)
!2404 = distinct !DILocation(line: 125, column: 16, scope: !2365, inlinedAt: !2400)
!2405 = !DILocation(line: 106, column: 7, scope: !2368, inlinedAt: !2404)
!2406 = !DILocation(line: 106, column: 7, scope: !2353, inlinedAt: !2404)
!2407 = !DILocation(line: 0, scope: !2371, inlinedAt: !2408)
!2408 = distinct !DILocation(line: 111, column: 16, scope: !2382, inlinedAt: !2404)
!2409 = !DILocation(line: 92, column: 7, scope: !2385, inlinedAt: !2408)
!2410 = !DILocation(line: 92, column: 7, scope: !2371, inlinedAt: !2408)
!2411 = !DILocalVariable(name: "s1", arg: 1, scope: !2412, file: !2275, line: 76, type: !38)
!2412 = distinct !DISubprogram(name: "strcaseeq6", scope: !2275, file: !2275, line: 76, type: !2413, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !217, retainedNodes: !2415)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{!25, !38, !38, !23, !23, !23}
!2415 = !{!2411, !2416, !2417, !2418, !2419}
!2416 = !DILocalVariable(name: "s2", arg: 2, scope: !2412, file: !2275, line: 76, type: !38)
!2417 = !DILocalVariable(name: "s26", arg: 3, scope: !2412, file: !2275, line: 76, type: !23)
!2418 = !DILocalVariable(name: "s27", arg: 4, scope: !2412, file: !2275, line: 76, type: !23)
!2419 = !DILocalVariable(name: "s28", arg: 5, scope: !2412, file: !2275, line: 76, type: !23)
!2420 = !DILocation(line: 0, scope: !2412, inlinedAt: !2421)
!2421 = distinct !DILocation(line: 97, column: 16, scope: !2422, inlinedAt: !2408)
!2422 = distinct !DILexicalBlock(scope: !2423, file: !2275, line: 94, column: 11)
!2423 = distinct !DILexicalBlock(scope: !2385, file: !2275, line: 93, column: 5)
!2424 = !DILocation(line: 78, column: 7, scope: !2425, inlinedAt: !2421)
!2425 = distinct !DILexicalBlock(scope: !2412, file: !2275, line: 78, column: 7)
!2426 = !DILocation(line: 78, column: 7, scope: !2412, inlinedAt: !2421)
!2427 = !DILocalVariable(name: "s1", arg: 1, scope: !2428, file: !2275, line: 62, type: !38)
!2428 = distinct !DISubprogram(name: "strcaseeq7", scope: !2275, file: !2275, line: 62, type: !2429, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !217, retainedNodes: !2431)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!25, !38, !38, !23, !23}
!2431 = !{!2427, !2432, !2433, !2434}
!2432 = !DILocalVariable(name: "s2", arg: 2, scope: !2428, file: !2275, line: 62, type: !38)
!2433 = !DILocalVariable(name: "s27", arg: 3, scope: !2428, file: !2275, line: 62, type: !23)
!2434 = !DILocalVariable(name: "s28", arg: 4, scope: !2428, file: !2275, line: 62, type: !23)
!2435 = !DILocation(line: 0, scope: !2428, inlinedAt: !2436)
!2436 = distinct !DILocation(line: 83, column: 16, scope: !2437, inlinedAt: !2421)
!2437 = distinct !DILexicalBlock(scope: !2438, file: !2275, line: 80, column: 11)
!2438 = distinct !DILexicalBlock(scope: !2425, file: !2275, line: 79, column: 5)
!2439 = !DILocation(line: 64, column: 7, scope: !2440, inlinedAt: !2436)
!2440 = distinct !DILexicalBlock(scope: !2428, file: !2275, line: 64, column: 7)
!2441 = !DILocation(line: 236, column: 7, scope: !2259)
!2442 = !DILocation(line: 237, column: 12, scope: !2393)
!2443 = !DILocation(line: 237, column: 21, scope: !2393)
!2444 = !DILocation(line: 237, column: 5, scope: !2393)
!2445 = !DILocation(line: 239, column: 13, scope: !2259)
!2446 = !DILocation(line: 239, column: 11, scope: !2259)
!2447 = !DILocation(line: 239, column: 3, scope: !2259)
!2448 = !DILocation(line: 240, column: 1, scope: !2259)
!2449 = !DISubprogram(name: "iswprint", scope: !2450, file: !2450, line: 120, type: !2451, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !194)
!2450 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!25, !7}
!2453 = !DISubprogram(name: "mbsinit", scope: !2454, file: !2454, line: 292, type: !2455, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !194)
!2454 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!2455 = !DISubroutineType(types: !2456)
!2456 = !{!25, !2457}
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1779)
!2459 = distinct !DISubprogram(name: "quotearg_alloc", scope: !218, file: !218, line: 799, type: !2460, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !217, retainedNodes: !2462)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{!22, !38, !83, !1626}
!2462 = !{!2463, !2464, !2465}
!2463 = !DILocalVariable(name: "arg", arg: 1, scope: !2459, file: !218, line: 799, type: !38)
!2464 = !DILocalVariable(name: "argsize", arg: 2, scope: !2459, file: !218, line: 799, type: !83)
!2465 = !DILocalVariable(name: "o", arg: 3, scope: !2459, file: !218, line: 800, type: !1626)
!2466 = !DILocation(line: 0, scope: !2459)
!2467 = !DILocalVariable(name: "arg", arg: 1, scope: !2468, file: !218, line: 812, type: !38)
!2468 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !218, file: !218, line: 812, type: !2469, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !217, retainedNodes: !2471)
!2469 = !DISubroutineType(types: !2470)
!2470 = !{!22, !38, !83, !82, !1626}
!2471 = !{!2467, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479}
!2472 = !DILocalVariable(name: "argsize", arg: 2, scope: !2468, file: !218, line: 812, type: !83)
!2473 = !DILocalVariable(name: "size", arg: 3, scope: !2468, file: !218, line: 812, type: !82)
!2474 = !DILocalVariable(name: "o", arg: 4, scope: !2468, file: !218, line: 813, type: !1626)
!2475 = !DILocalVariable(name: "p", scope: !2468, file: !218, line: 815, type: !1626)
!2476 = !DILocalVariable(name: "e", scope: !2468, file: !218, line: 816, type: !25)
!2477 = !DILocalVariable(name: "flags", scope: !2468, file: !218, line: 818, type: !25)
!2478 = !DILocalVariable(name: "bufsize", scope: !2468, file: !218, line: 819, type: !83)
!2479 = !DILocalVariable(name: "buf", scope: !2468, file: !218, line: 823, type: !22)
!2480 = !DILocation(line: 0, scope: !2468, inlinedAt: !2481)
!2481 = distinct !DILocation(line: 802, column: 10, scope: !2459)
!2482 = !DILocation(line: 815, column: 37, scope: !2468, inlinedAt: !2481)
!2483 = !DILocation(line: 816, column: 11, scope: !2468, inlinedAt: !2481)
!2484 = !DILocation(line: 818, column: 18, scope: !2468, inlinedAt: !2481)
!2485 = !DILocation(line: 818, column: 24, scope: !2468, inlinedAt: !2481)
!2486 = !DILocation(line: 819, column: 69, scope: !2468, inlinedAt: !2481)
!2487 = !DILocation(line: 820, column: 53, scope: !2468, inlinedAt: !2481)
!2488 = !DILocation(line: 821, column: 49, scope: !2468, inlinedAt: !2481)
!2489 = !DILocation(line: 822, column: 49, scope: !2468, inlinedAt: !2481)
!2490 = !DILocation(line: 819, column: 20, scope: !2468, inlinedAt: !2481)
!2491 = !DILocation(line: 822, column: 62, scope: !2468, inlinedAt: !2481)
!2492 = !DILocalVariable(name: "n", arg: 1, scope: !2493, file: !78, line: 216, type: !83)
!2493 = distinct !DISubprogram(name: "xcharalloc", scope: !78, file: !78, line: 216, type: !2494, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !217, retainedNodes: !2496)
!2494 = !DISubroutineType(types: !2495)
!2495 = !{!22, !83}
!2496 = !{!2492}
!2497 = !DILocation(line: 0, scope: !2493, inlinedAt: !2498)
!2498 = distinct !DILocation(line: 823, column: 15, scope: !2468, inlinedAt: !2481)
!2499 = !DILocation(line: 218, column: 10, scope: !2493, inlinedAt: !2498)
!2500 = !DILocation(line: 824, column: 60, scope: !2468, inlinedAt: !2481)
!2501 = !DILocation(line: 826, column: 32, scope: !2468, inlinedAt: !2481)
!2502 = !DILocation(line: 826, column: 47, scope: !2468, inlinedAt: !2481)
!2503 = !DILocation(line: 824, column: 3, scope: !2468, inlinedAt: !2481)
!2504 = !DILocation(line: 827, column: 9, scope: !2468, inlinedAt: !2481)
!2505 = !DILocation(line: 802, column: 3, scope: !2459)
!2506 = !DILocation(line: 0, scope: !2468)
!2507 = !DILocation(line: 815, column: 37, scope: !2468)
!2508 = !DILocation(line: 816, column: 11, scope: !2468)
!2509 = !DILocation(line: 818, column: 18, scope: !2468)
!2510 = !DILocation(line: 818, column: 27, scope: !2468)
!2511 = !DILocation(line: 818, column: 24, scope: !2468)
!2512 = !DILocation(line: 819, column: 69, scope: !2468)
!2513 = !DILocation(line: 820, column: 53, scope: !2468)
!2514 = !DILocation(line: 821, column: 49, scope: !2468)
!2515 = !DILocation(line: 822, column: 49, scope: !2468)
!2516 = !DILocation(line: 819, column: 20, scope: !2468)
!2517 = !DILocation(line: 822, column: 62, scope: !2468)
!2518 = !DILocation(line: 0, scope: !2493, inlinedAt: !2519)
!2519 = distinct !DILocation(line: 823, column: 15, scope: !2468)
!2520 = !DILocation(line: 218, column: 10, scope: !2493, inlinedAt: !2519)
!2521 = !DILocation(line: 824, column: 60, scope: !2468)
!2522 = !DILocation(line: 826, column: 32, scope: !2468)
!2523 = !DILocation(line: 826, column: 47, scope: !2468)
!2524 = !DILocation(line: 824, column: 3, scope: !2468)
!2525 = !DILocation(line: 827, column: 9, scope: !2468)
!2526 = !DILocation(line: 828, column: 7, scope: !2468)
!2527 = !DILocation(line: 829, column: 11, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2468, file: !218, line: 828, column: 7)
!2529 = !DILocation(line: 829, column: 5, scope: !2528)
!2530 = !DILocation(line: 830, column: 3, scope: !2468)
!2531 = distinct !DISubprogram(name: "quotearg_free", scope: !218, file: !218, line: 848, type: !733, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !217, retainedNodes: !2532)
!2532 = !{!2533, !2534}
!2533 = !DILocalVariable(name: "sv", scope: !2531, file: !218, line: 850, type: !254)
!2534 = !DILocalVariable(name: "i", scope: !2531, file: !218, line: 851, type: !25)
!2535 = !DILocation(line: 850, column: 24, scope: !2531)
!2536 = !DILocation(line: 0, scope: !2531)
!2537 = !DILocation(line: 852, column: 19, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2539, file: !218, line: 852, column: 3)
!2539 = distinct !DILexicalBlock(scope: !2531, file: !218, line: 852, column: 3)
!2540 = !DILocation(line: 852, column: 17, scope: !2538)
!2541 = !DILocation(line: 852, column: 3, scope: !2539)
!2542 = !DILocation(line: 853, column: 17, scope: !2538)
!2543 = !{!2544, !724, i64 8}
!2544 = !{!"slotvec", !921, i64 0, !724, i64 8}
!2545 = !DILocation(line: 853, column: 5, scope: !2538)
!2546 = !DILocation(line: 852, column: 28, scope: !2538)
!2547 = distinct !{!2547, !2541, !2548, !775}
!2548 = !DILocation(line: 853, column: 20, scope: !2539)
!2549 = !DILocation(line: 854, column: 13, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2531, file: !218, line: 854, column: 7)
!2551 = !DILocation(line: 854, column: 17, scope: !2550)
!2552 = !DILocation(line: 854, column: 7, scope: !2531)
!2553 = !DILocation(line: 856, column: 7, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2550, file: !218, line: 855, column: 5)
!2555 = !DILocation(line: 857, column: 21, scope: !2554)
!2556 = !{!2544, !921, i64 0}
!2557 = !DILocation(line: 858, column: 20, scope: !2554)
!2558 = !DILocation(line: 859, column: 5, scope: !2554)
!2559 = !DILocation(line: 860, column: 10, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2531, file: !218, line: 860, column: 7)
!2561 = !DILocation(line: 860, column: 7, scope: !2531)
!2562 = !DILocation(line: 862, column: 13, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2560, file: !218, line: 861, column: 5)
!2564 = !DILocation(line: 862, column: 7, scope: !2563)
!2565 = !DILocation(line: 863, column: 15, scope: !2563)
!2566 = !DILocation(line: 864, column: 5, scope: !2563)
!2567 = !DILocation(line: 865, column: 10, scope: !2531)
!2568 = !DILocation(line: 866, column: 1, scope: !2531)
!2569 = distinct !DISubprogram(name: "quotearg_n", scope: !218, file: !218, line: 931, type: !837, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !217, retainedNodes: !2570)
!2570 = !{!2571, !2572}
!2571 = !DILocalVariable(name: "n", arg: 1, scope: !2569, file: !218, line: 931, type: !25)
!2572 = !DILocalVariable(name: "arg", arg: 2, scope: !2569, file: !218, line: 931, type: !38)
!2573 = !DILocation(line: 0, scope: !2569)
!2574 = !DILocation(line: 933, column: 10, scope: !2569)
!2575 = !DILocation(line: 933, column: 3, scope: !2569)
!2576 = distinct !DISubprogram(name: "quotearg_n_options", scope: !218, file: !218, line: 877, type: !2577, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !217, retainedNodes: !2579)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!22, !25, !38, !83, !1626}
!2579 = !{!2580, !2581, !2582, !2583, !2584, !2585, !2586, !2589, !2590, !2592, !2593, !2594}
!2580 = !DILocalVariable(name: "n", arg: 1, scope: !2576, file: !218, line: 877, type: !25)
!2581 = !DILocalVariable(name: "arg", arg: 2, scope: !2576, file: !218, line: 877, type: !38)
!2582 = !DILocalVariable(name: "argsize", arg: 3, scope: !2576, file: !218, line: 877, type: !83)
!2583 = !DILocalVariable(name: "options", arg: 4, scope: !2576, file: !218, line: 878, type: !1626)
!2584 = !DILocalVariable(name: "e", scope: !2576, file: !218, line: 880, type: !25)
!2585 = !DILocalVariable(name: "sv", scope: !2576, file: !218, line: 882, type: !254)
!2586 = !DILocalVariable(name: "preallocated", scope: !2587, file: !218, line: 889, type: !180)
!2587 = distinct !DILexicalBlock(scope: !2588, file: !218, line: 888, column: 5)
!2588 = distinct !DILexicalBlock(scope: !2576, file: !218, line: 887, column: 7)
!2589 = !DILocalVariable(name: "nmax", scope: !2587, file: !218, line: 890, type: !25)
!2590 = !DILocalVariable(name: "size", scope: !2591, file: !218, line: 903, type: !83)
!2591 = distinct !DILexicalBlock(scope: !2576, file: !218, line: 902, column: 3)
!2592 = !DILocalVariable(name: "val", scope: !2591, file: !218, line: 904, type: !22)
!2593 = !DILocalVariable(name: "flags", scope: !2591, file: !218, line: 906, type: !25)
!2594 = !DILocalVariable(name: "qsize", scope: !2591, file: !218, line: 907, type: !83)
!2595 = !DILocation(line: 0, scope: !2576)
!2596 = !DILocation(line: 880, column: 11, scope: !2576)
!2597 = !DILocation(line: 882, column: 24, scope: !2576)
!2598 = !DILocation(line: 884, column: 9, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2576, file: !218, line: 884, column: 7)
!2600 = !DILocation(line: 884, column: 7, scope: !2576)
!2601 = !DILocation(line: 885, column: 5, scope: !2599)
!2602 = !DILocation(line: 887, column: 7, scope: !2588)
!2603 = !DILocation(line: 887, column: 14, scope: !2588)
!2604 = !DILocation(line: 887, column: 7, scope: !2576)
!2605 = !DILocation(line: 889, column: 31, scope: !2587)
!2606 = !DILocation(line: 0, scope: !2587)
!2607 = !DILocation(line: 892, column: 16, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2587, file: !218, line: 892, column: 11)
!2609 = !DILocation(line: 892, column: 11, scope: !2587)
!2610 = !DILocation(line: 893, column: 9, scope: !2608)
!2611 = !DILocation(line: 895, column: 32, scope: !2587)
!2612 = !DILocation(line: 895, column: 61, scope: !2587)
!2613 = !DILocation(line: 895, column: 66, scope: !2587)
!2614 = !DILocation(line: 895, column: 22, scope: !2587)
!2615 = !DILocation(line: 895, column: 15, scope: !2587)
!2616 = !DILocation(line: 896, column: 11, scope: !2587)
!2617 = !DILocation(line: 897, column: 15, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2587, file: !218, line: 896, column: 11)
!2619 = !{i64 0, i64 8, !920, i64 8, i64 8, !723}
!2620 = !DILocation(line: 897, column: 9, scope: !2618)
!2621 = !DILocation(line: 898, column: 20, scope: !2587)
!2622 = !DILocation(line: 898, column: 18, scope: !2587)
!2623 = !DILocation(line: 898, column: 15, scope: !2587)
!2624 = !DILocation(line: 898, column: 38, scope: !2587)
!2625 = !DILocation(line: 898, column: 31, scope: !2587)
!2626 = !DILocation(line: 898, column: 48, scope: !2587)
!2627 = !DILocation(line: 0, scope: !2020, inlinedAt: !2628)
!2628 = distinct !DILocation(line: 898, column: 7, scope: !2587)
!2629 = !DILocation(line: 59, column: 10, scope: !2020, inlinedAt: !2628)
!2630 = !DILocation(line: 899, column: 14, scope: !2587)
!2631 = !DILocation(line: 900, column: 5, scope: !2587)
!2632 = !DILocation(line: 903, column: 19, scope: !2591)
!2633 = !DILocation(line: 903, column: 25, scope: !2591)
!2634 = !DILocation(line: 0, scope: !2591)
!2635 = !DILocation(line: 904, column: 23, scope: !2591)
!2636 = !DILocation(line: 906, column: 26, scope: !2591)
!2637 = !DILocation(line: 906, column: 32, scope: !2591)
!2638 = !DILocation(line: 908, column: 55, scope: !2591)
!2639 = !DILocation(line: 909, column: 46, scope: !2591)
!2640 = !DILocation(line: 910, column: 55, scope: !2591)
!2641 = !DILocation(line: 911, column: 55, scope: !2591)
!2642 = !DILocation(line: 907, column: 20, scope: !2591)
!2643 = !DILocation(line: 913, column: 14, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2591, file: !218, line: 913, column: 9)
!2645 = !DILocation(line: 913, column: 9, scope: !2591)
!2646 = !DILocation(line: 915, column: 35, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2644, file: !218, line: 914, column: 7)
!2648 = !DILocation(line: 915, column: 20, scope: !2647)
!2649 = !DILocation(line: 916, column: 17, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2647, file: !218, line: 916, column: 13)
!2651 = !DILocation(line: 916, column: 13, scope: !2647)
!2652 = !DILocation(line: 917, column: 11, scope: !2650)
!2653 = !DILocation(line: 0, scope: !2493, inlinedAt: !2654)
!2654 = distinct !DILocation(line: 918, column: 27, scope: !2647)
!2655 = !DILocation(line: 218, column: 10, scope: !2493, inlinedAt: !2654)
!2656 = !DILocation(line: 918, column: 19, scope: !2647)
!2657 = !DILocation(line: 919, column: 69, scope: !2647)
!2658 = !DILocation(line: 921, column: 44, scope: !2647)
!2659 = !DILocation(line: 922, column: 44, scope: !2647)
!2660 = !DILocation(line: 919, column: 9, scope: !2647)
!2661 = !DILocation(line: 923, column: 7, scope: !2647)
!2662 = !DILocation(line: 925, column: 11, scope: !2591)
!2663 = !DILocation(line: 926, column: 5, scope: !2591)
!2664 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !218, file: !218, line: 937, type: !2665, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !217, retainedNodes: !2667)
!2665 = !DISubroutineType(types: !2666)
!2666 = !{!22, !25, !38, !83}
!2667 = !{!2668, !2669, !2670}
!2668 = !DILocalVariable(name: "n", arg: 1, scope: !2664, file: !218, line: 937, type: !25)
!2669 = !DILocalVariable(name: "arg", arg: 2, scope: !2664, file: !218, line: 937, type: !38)
!2670 = !DILocalVariable(name: "argsize", arg: 3, scope: !2664, file: !218, line: 937, type: !83)
!2671 = !DILocation(line: 0, scope: !2664)
!2672 = !DILocation(line: 939, column: 10, scope: !2664)
!2673 = !DILocation(line: 939, column: 3, scope: !2664)
!2674 = distinct !DISubprogram(name: "quotearg", scope: !218, file: !218, line: 943, type: !1024, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !217, retainedNodes: !2675)
!2675 = !{!2676}
!2676 = !DILocalVariable(name: "arg", arg: 1, scope: !2674, file: !218, line: 943, type: !38)
!2677 = !DILocation(line: 0, scope: !2674)
!2678 = !DILocation(line: 0, scope: !2569, inlinedAt: !2679)
!2679 = distinct !DILocation(line: 945, column: 10, scope: !2674)
!2680 = !DILocation(line: 933, column: 10, scope: !2569, inlinedAt: !2679)
!2681 = !DILocation(line: 945, column: 3, scope: !2674)
!2682 = distinct !DISubprogram(name: "quotearg_mem", scope: !218, file: !218, line: 949, type: !2683, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !217, retainedNodes: !2685)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{!22, !38, !83}
!2685 = !{!2686, !2687}
!2686 = !DILocalVariable(name: "arg", arg: 1, scope: !2682, file: !218, line: 949, type: !38)
!2687 = !DILocalVariable(name: "argsize", arg: 2, scope: !2682, file: !218, line: 949, type: !83)
!2688 = !DILocation(line: 0, scope: !2682)
!2689 = !DILocation(line: 0, scope: !2664, inlinedAt: !2690)
!2690 = distinct !DILocation(line: 951, column: 10, scope: !2682)
!2691 = !DILocation(line: 939, column: 10, scope: !2664, inlinedAt: !2690)
!2692 = !DILocation(line: 951, column: 3, scope: !2682)
!2693 = distinct !DISubprogram(name: "quotearg_n_style", scope: !218, file: !218, line: 955, type: !2694, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !217, retainedNodes: !2696)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{!22, !25, !54, !38}
!2696 = !{!2697, !2698, !2699, !2700}
!2697 = !DILocalVariable(name: "n", arg: 1, scope: !2693, file: !218, line: 955, type: !25)
!2698 = !DILocalVariable(name: "s", arg: 2, scope: !2693, file: !218, line: 955, type: !54)
!2699 = !DILocalVariable(name: "arg", arg: 3, scope: !2693, file: !218, line: 955, type: !38)
!2700 = !DILocalVariable(name: "o", scope: !2693, file: !218, line: 957, type: !1627)
!2701 = !DILocation(line: 0, scope: !2693)
!2702 = !DILocation(line: 957, column: 3, scope: !2693)
!2703 = !DILocation(line: 957, column: 32, scope: !2693)
!2704 = !{!2705}
!2705 = distinct !{!2705, !2706, !"quoting_options_from_style: argument 0"}
!2706 = distinct !{!2706, !"quoting_options_from_style"}
!2707 = !DILocation(line: 957, column: 36, scope: !2693)
!2708 = !DILocalVariable(name: "style", arg: 1, scope: !2709, file: !218, line: 193, type: !54)
!2709 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !218, file: !218, line: 193, type: !2710, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !217, retainedNodes: !2712)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{!235, !54}
!2712 = !{!2708, !2713}
!2713 = !DILocalVariable(name: "o", scope: !2709, file: !218, line: 195, type: !235)
!2714 = !DILocation(line: 0, scope: !2709, inlinedAt: !2715)
!2715 = distinct !DILocation(line: 957, column: 36, scope: !2693)
!2716 = !DILocation(line: 195, column: 26, scope: !2709, inlinedAt: !2715)
!2717 = !DILocation(line: 196, column: 13, scope: !2718, inlinedAt: !2715)
!2718 = distinct !DILexicalBlock(scope: !2709, file: !218, line: 196, column: 7)
!2719 = !DILocation(line: 196, column: 7, scope: !2709, inlinedAt: !2715)
!2720 = !DILocation(line: 197, column: 5, scope: !2718, inlinedAt: !2715)
!2721 = !DILocation(line: 198, column: 5, scope: !2709, inlinedAt: !2715)
!2722 = !DILocation(line: 198, column: 11, scope: !2709, inlinedAt: !2715)
!2723 = !DILocation(line: 958, column: 10, scope: !2693)
!2724 = !DILocation(line: 959, column: 1, scope: !2693)
!2725 = !DILocation(line: 958, column: 3, scope: !2693)
!2726 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !218, file: !218, line: 962, type: !2727, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !217, retainedNodes: !2729)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!22, !25, !54, !38, !83}
!2729 = !{!2730, !2731, !2732, !2733, !2734}
!2730 = !DILocalVariable(name: "n", arg: 1, scope: !2726, file: !218, line: 962, type: !25)
!2731 = !DILocalVariable(name: "s", arg: 2, scope: !2726, file: !218, line: 962, type: !54)
!2732 = !DILocalVariable(name: "arg", arg: 3, scope: !2726, file: !218, line: 963, type: !38)
!2733 = !DILocalVariable(name: "argsize", arg: 4, scope: !2726, file: !218, line: 963, type: !83)
!2734 = !DILocalVariable(name: "o", scope: !2726, file: !218, line: 965, type: !1627)
!2735 = !DILocation(line: 0, scope: !2726)
!2736 = !DILocation(line: 965, column: 3, scope: !2726)
!2737 = !DILocation(line: 965, column: 32, scope: !2726)
!2738 = !{!2739}
!2739 = distinct !{!2739, !2740, !"quoting_options_from_style: argument 0"}
!2740 = distinct !{!2740, !"quoting_options_from_style"}
!2741 = !DILocation(line: 965, column: 36, scope: !2726)
!2742 = !DILocation(line: 0, scope: !2709, inlinedAt: !2743)
!2743 = distinct !DILocation(line: 965, column: 36, scope: !2726)
!2744 = !DILocation(line: 195, column: 26, scope: !2709, inlinedAt: !2743)
!2745 = !DILocation(line: 196, column: 13, scope: !2718, inlinedAt: !2743)
!2746 = !DILocation(line: 196, column: 7, scope: !2709, inlinedAt: !2743)
!2747 = !DILocation(line: 197, column: 5, scope: !2718, inlinedAt: !2743)
!2748 = !DILocation(line: 198, column: 5, scope: !2709, inlinedAt: !2743)
!2749 = !DILocation(line: 198, column: 11, scope: !2709, inlinedAt: !2743)
!2750 = !DILocation(line: 966, column: 10, scope: !2726)
!2751 = !DILocation(line: 967, column: 1, scope: !2726)
!2752 = !DILocation(line: 966, column: 3, scope: !2726)
!2753 = distinct !DISubprogram(name: "quotearg_style", scope: !218, file: !218, line: 970, type: !2754, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !217, retainedNodes: !2756)
!2754 = !DISubroutineType(types: !2755)
!2755 = !{!22, !54, !38}
!2756 = !{!2757, !2758}
!2757 = !DILocalVariable(name: "s", arg: 1, scope: !2753, file: !218, line: 970, type: !54)
!2758 = !DILocalVariable(name: "arg", arg: 2, scope: !2753, file: !218, line: 970, type: !38)
!2759 = !DILocation(line: 0, scope: !2753)
!2760 = !DILocation(line: 0, scope: !2693, inlinedAt: !2761)
!2761 = distinct !DILocation(line: 972, column: 10, scope: !2753)
!2762 = !DILocation(line: 957, column: 3, scope: !2693, inlinedAt: !2761)
!2763 = !DILocation(line: 957, column: 32, scope: !2693, inlinedAt: !2761)
!2764 = !{!2765}
!2765 = distinct !{!2765, !2766, !"quoting_options_from_style: argument 0"}
!2766 = distinct !{!2766, !"quoting_options_from_style"}
!2767 = !DILocation(line: 957, column: 36, scope: !2693, inlinedAt: !2761)
!2768 = !DILocation(line: 0, scope: !2709, inlinedAt: !2769)
!2769 = distinct !DILocation(line: 957, column: 36, scope: !2693, inlinedAt: !2761)
!2770 = !DILocation(line: 195, column: 26, scope: !2709, inlinedAt: !2769)
!2771 = !DILocation(line: 196, column: 13, scope: !2718, inlinedAt: !2769)
!2772 = !DILocation(line: 196, column: 7, scope: !2709, inlinedAt: !2769)
!2773 = !DILocation(line: 197, column: 5, scope: !2718, inlinedAt: !2769)
!2774 = !DILocation(line: 198, column: 5, scope: !2709, inlinedAt: !2769)
!2775 = !DILocation(line: 198, column: 11, scope: !2709, inlinedAt: !2769)
!2776 = !DILocation(line: 958, column: 10, scope: !2693, inlinedAt: !2761)
!2777 = !DILocation(line: 959, column: 1, scope: !2693, inlinedAt: !2761)
!2778 = !DILocation(line: 972, column: 3, scope: !2753)
!2779 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !218, file: !218, line: 976, type: !2780, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !217, retainedNodes: !2782)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{!22, !54, !38, !83}
!2782 = !{!2783, !2784, !2785}
!2783 = !DILocalVariable(name: "s", arg: 1, scope: !2779, file: !218, line: 976, type: !54)
!2784 = !DILocalVariable(name: "arg", arg: 2, scope: !2779, file: !218, line: 976, type: !38)
!2785 = !DILocalVariable(name: "argsize", arg: 3, scope: !2779, file: !218, line: 976, type: !83)
!2786 = !DILocation(line: 0, scope: !2779)
!2787 = !DILocation(line: 0, scope: !2726, inlinedAt: !2788)
!2788 = distinct !DILocation(line: 978, column: 10, scope: !2779)
!2789 = !DILocation(line: 965, column: 3, scope: !2726, inlinedAt: !2788)
!2790 = !DILocation(line: 965, column: 32, scope: !2726, inlinedAt: !2788)
!2791 = !{!2792}
!2792 = distinct !{!2792, !2793, !"quoting_options_from_style: argument 0"}
!2793 = distinct !{!2793, !"quoting_options_from_style"}
!2794 = !DILocation(line: 965, column: 36, scope: !2726, inlinedAt: !2788)
!2795 = !DILocation(line: 0, scope: !2709, inlinedAt: !2796)
!2796 = distinct !DILocation(line: 965, column: 36, scope: !2726, inlinedAt: !2788)
!2797 = !DILocation(line: 195, column: 26, scope: !2709, inlinedAt: !2796)
!2798 = !DILocation(line: 196, column: 13, scope: !2718, inlinedAt: !2796)
!2799 = !DILocation(line: 196, column: 7, scope: !2709, inlinedAt: !2796)
!2800 = !DILocation(line: 197, column: 5, scope: !2718, inlinedAt: !2796)
!2801 = !DILocation(line: 198, column: 5, scope: !2709, inlinedAt: !2796)
!2802 = !DILocation(line: 198, column: 11, scope: !2709, inlinedAt: !2796)
!2803 = !DILocation(line: 966, column: 10, scope: !2726, inlinedAt: !2788)
!2804 = !DILocation(line: 967, column: 1, scope: !2726, inlinedAt: !2788)
!2805 = !DILocation(line: 978, column: 3, scope: !2779)
!2806 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !218, file: !218, line: 982, type: !2807, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !217, retainedNodes: !2809)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{!22, !38, !83, !23}
!2809 = !{!2810, !2811, !2812, !2813}
!2810 = !DILocalVariable(name: "arg", arg: 1, scope: !2806, file: !218, line: 982, type: !38)
!2811 = !DILocalVariable(name: "argsize", arg: 2, scope: !2806, file: !218, line: 982, type: !83)
!2812 = !DILocalVariable(name: "ch", arg: 3, scope: !2806, file: !218, line: 982, type: !23)
!2813 = !DILocalVariable(name: "options", scope: !2806, file: !218, line: 984, type: !235)
!2814 = !DILocation(line: 0, scope: !2806)
!2815 = !DILocation(line: 984, column: 3, scope: !2806)
!2816 = !DILocation(line: 984, column: 26, scope: !2806)
!2817 = !DILocation(line: 985, column: 13, scope: !2806)
!2818 = !{i64 0, i64 4, !879, i64 4, i64 4, !888, i64 8, i64 32, !879, i64 40, i64 8, !723, i64 48, i64 8, !723}
!2819 = !DILocation(line: 0, scope: !1647, inlinedAt: !2820)
!2820 = distinct !DILocation(line: 986, column: 3, scope: !2806)
!2821 = !DILocation(line: 156, column: 62, scope: !1647, inlinedAt: !2820)
!2822 = !DILocation(line: 156, column: 57, scope: !1647, inlinedAt: !2820)
!2823 = !DILocation(line: 157, column: 15, scope: !1647, inlinedAt: !2820)
!2824 = !DILocation(line: 158, column: 12, scope: !1647, inlinedAt: !2820)
!2825 = !DILocation(line: 158, column: 15, scope: !1647, inlinedAt: !2820)
!2826 = !DILocation(line: 158, column: 25, scope: !1647, inlinedAt: !2820)
!2827 = !DILocation(line: 159, column: 18, scope: !1647, inlinedAt: !2820)
!2828 = !DILocation(line: 159, column: 23, scope: !1647, inlinedAt: !2820)
!2829 = !DILocation(line: 159, column: 6, scope: !1647, inlinedAt: !2820)
!2830 = !DILocation(line: 987, column: 10, scope: !2806)
!2831 = !DILocation(line: 988, column: 1, scope: !2806)
!2832 = !DILocation(line: 987, column: 3, scope: !2806)
!2833 = distinct !DISubprogram(name: "quotearg_char", scope: !218, file: !218, line: 991, type: !2834, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !217, retainedNodes: !2836)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{!22, !38, !23}
!2836 = !{!2837, !2838}
!2837 = !DILocalVariable(name: "arg", arg: 1, scope: !2833, file: !218, line: 991, type: !38)
!2838 = !DILocalVariable(name: "ch", arg: 2, scope: !2833, file: !218, line: 991, type: !23)
!2839 = !DILocation(line: 0, scope: !2833)
!2840 = !DILocation(line: 0, scope: !2806, inlinedAt: !2841)
!2841 = distinct !DILocation(line: 993, column: 10, scope: !2833)
!2842 = !DILocation(line: 984, column: 3, scope: !2806, inlinedAt: !2841)
!2843 = !DILocation(line: 984, column: 26, scope: !2806, inlinedAt: !2841)
!2844 = !DILocation(line: 985, column: 13, scope: !2806, inlinedAt: !2841)
!2845 = !DILocation(line: 0, scope: !1647, inlinedAt: !2846)
!2846 = distinct !DILocation(line: 986, column: 3, scope: !2806, inlinedAt: !2841)
!2847 = !DILocation(line: 156, column: 62, scope: !1647, inlinedAt: !2846)
!2848 = !DILocation(line: 156, column: 57, scope: !1647, inlinedAt: !2846)
!2849 = !DILocation(line: 157, column: 15, scope: !1647, inlinedAt: !2846)
!2850 = !DILocation(line: 158, column: 12, scope: !1647, inlinedAt: !2846)
!2851 = !DILocation(line: 158, column: 15, scope: !1647, inlinedAt: !2846)
!2852 = !DILocation(line: 158, column: 25, scope: !1647, inlinedAt: !2846)
!2853 = !DILocation(line: 159, column: 18, scope: !1647, inlinedAt: !2846)
!2854 = !DILocation(line: 159, column: 23, scope: !1647, inlinedAt: !2846)
!2855 = !DILocation(line: 159, column: 6, scope: !1647, inlinedAt: !2846)
!2856 = !DILocation(line: 987, column: 10, scope: !2806, inlinedAt: !2841)
!2857 = !DILocation(line: 988, column: 1, scope: !2806, inlinedAt: !2841)
!2858 = !DILocation(line: 993, column: 3, scope: !2833)
!2859 = distinct !DISubprogram(name: "quotearg_colon", scope: !218, file: !218, line: 997, type: !1024, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !217, retainedNodes: !2860)
!2860 = !{!2861}
!2861 = !DILocalVariable(name: "arg", arg: 1, scope: !2859, file: !218, line: 997, type: !38)
!2862 = !DILocation(line: 0, scope: !2859)
!2863 = !DILocation(line: 0, scope: !2833, inlinedAt: !2864)
!2864 = distinct !DILocation(line: 999, column: 10, scope: !2859)
!2865 = !DILocation(line: 0, scope: !2806, inlinedAt: !2866)
!2866 = distinct !DILocation(line: 993, column: 10, scope: !2833, inlinedAt: !2864)
!2867 = !DILocation(line: 984, column: 3, scope: !2806, inlinedAt: !2866)
!2868 = !DILocation(line: 984, column: 26, scope: !2806, inlinedAt: !2866)
!2869 = !DILocation(line: 985, column: 13, scope: !2806, inlinedAt: !2866)
!2870 = !DILocation(line: 0, scope: !1647, inlinedAt: !2871)
!2871 = distinct !DILocation(line: 986, column: 3, scope: !2806, inlinedAt: !2866)
!2872 = !DILocation(line: 156, column: 57, scope: !1647, inlinedAt: !2871)
!2873 = !DILocation(line: 158, column: 12, scope: !1647, inlinedAt: !2871)
!2874 = !DILocation(line: 159, column: 6, scope: !1647, inlinedAt: !2871)
!2875 = !DILocation(line: 987, column: 10, scope: !2806, inlinedAt: !2866)
!2876 = !DILocation(line: 988, column: 1, scope: !2806, inlinedAt: !2866)
!2877 = !DILocation(line: 999, column: 3, scope: !2859)
!2878 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !218, file: !218, line: 1003, type: !2683, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !217, retainedNodes: !2879)
!2879 = !{!2880, !2881}
!2880 = !DILocalVariable(name: "arg", arg: 1, scope: !2878, file: !218, line: 1003, type: !38)
!2881 = !DILocalVariable(name: "argsize", arg: 2, scope: !2878, file: !218, line: 1003, type: !83)
!2882 = !DILocation(line: 0, scope: !2878)
!2883 = !DILocation(line: 0, scope: !2806, inlinedAt: !2884)
!2884 = distinct !DILocation(line: 1005, column: 10, scope: !2878)
!2885 = !DILocation(line: 984, column: 3, scope: !2806, inlinedAt: !2884)
!2886 = !DILocation(line: 984, column: 26, scope: !2806, inlinedAt: !2884)
!2887 = !DILocation(line: 985, column: 13, scope: !2806, inlinedAt: !2884)
!2888 = !DILocation(line: 0, scope: !1647, inlinedAt: !2889)
!2889 = distinct !DILocation(line: 986, column: 3, scope: !2806, inlinedAt: !2884)
!2890 = !DILocation(line: 156, column: 57, scope: !1647, inlinedAt: !2889)
!2891 = !DILocation(line: 158, column: 12, scope: !1647, inlinedAt: !2889)
!2892 = !DILocation(line: 159, column: 6, scope: !1647, inlinedAt: !2889)
!2893 = !DILocation(line: 987, column: 10, scope: !2806, inlinedAt: !2884)
!2894 = !DILocation(line: 988, column: 1, scope: !2806, inlinedAt: !2884)
!2895 = !DILocation(line: 1005, column: 3, scope: !2878)
!2896 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !218, file: !218, line: 1009, type: !2694, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !217, retainedNodes: !2897)
!2897 = !{!2898, !2899, !2900, !2901}
!2898 = !DILocalVariable(name: "n", arg: 1, scope: !2896, file: !218, line: 1009, type: !25)
!2899 = !DILocalVariable(name: "s", arg: 2, scope: !2896, file: !218, line: 1009, type: !54)
!2900 = !DILocalVariable(name: "arg", arg: 3, scope: !2896, file: !218, line: 1009, type: !38)
!2901 = !DILocalVariable(name: "options", scope: !2896, file: !218, line: 1011, type: !235)
!2902 = !DILocation(line: 195, column: 26, scope: !2709, inlinedAt: !2903)
!2903 = distinct !DILocation(line: 1012, column: 13, scope: !2896)
!2904 = !DILocation(line: 0, scope: !2896)
!2905 = !DILocation(line: 1011, column: 3, scope: !2896)
!2906 = !DILocation(line: 1011, column: 26, scope: !2896)
!2907 = !DILocation(line: 1012, column: 13, scope: !2896)
!2908 = !{!2909}
!2909 = distinct !{!2909, !2910, !"quoting_options_from_style: argument 0"}
!2910 = distinct !{!2910, !"quoting_options_from_style"}
!2911 = !DILocation(line: 0, scope: !2709, inlinedAt: !2903)
!2912 = !DILocation(line: 196, column: 13, scope: !2718, inlinedAt: !2903)
!2913 = !DILocation(line: 196, column: 7, scope: !2709, inlinedAt: !2903)
!2914 = !DILocation(line: 197, column: 5, scope: !2718, inlinedAt: !2903)
!2915 = !{i64 0, i64 4, !888, i64 4, i64 32, !879, i64 36, i64 8, !723, i64 44, i64 8, !723}
!2916 = !DILocation(line: 0, scope: !1647, inlinedAt: !2917)
!2917 = distinct !DILocation(line: 1013, column: 3, scope: !2896)
!2918 = !DILocation(line: 156, column: 57, scope: !1647, inlinedAt: !2917)
!2919 = !DILocation(line: 158, column: 12, scope: !1647, inlinedAt: !2917)
!2920 = !DILocation(line: 159, column: 6, scope: !1647, inlinedAt: !2917)
!2921 = !DILocation(line: 1014, column: 10, scope: !2896)
!2922 = !DILocation(line: 1015, column: 1, scope: !2896)
!2923 = !DILocation(line: 1014, column: 3, scope: !2896)
!2924 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !218, file: !218, line: 1018, type: !2925, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !217, retainedNodes: !2927)
!2925 = !DISubroutineType(types: !2926)
!2926 = !{!22, !25, !38, !38, !38}
!2927 = !{!2928, !2929, !2930, !2931}
!2928 = !DILocalVariable(name: "n", arg: 1, scope: !2924, file: !218, line: 1018, type: !25)
!2929 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2924, file: !218, line: 1018, type: !38)
!2930 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2924, file: !218, line: 1019, type: !38)
!2931 = !DILocalVariable(name: "arg", arg: 4, scope: !2924, file: !218, line: 1019, type: !38)
!2932 = !DILocation(line: 0, scope: !2924)
!2933 = !DILocalVariable(name: "n", arg: 1, scope: !2934, file: !218, line: 1026, type: !25)
!2934 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !218, file: !218, line: 1026, type: !2935, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !217, retainedNodes: !2937)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{!22, !25, !38, !38, !38, !83}
!2937 = !{!2933, !2938, !2939, !2940, !2941, !2942}
!2938 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2934, file: !218, line: 1026, type: !38)
!2939 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2934, file: !218, line: 1027, type: !38)
!2940 = !DILocalVariable(name: "arg", arg: 4, scope: !2934, file: !218, line: 1028, type: !38)
!2941 = !DILocalVariable(name: "argsize", arg: 5, scope: !2934, file: !218, line: 1028, type: !83)
!2942 = !DILocalVariable(name: "o", scope: !2934, file: !218, line: 1030, type: !235)
!2943 = !DILocation(line: 0, scope: !2934, inlinedAt: !2944)
!2944 = distinct !DILocation(line: 1021, column: 10, scope: !2924)
!2945 = !DILocation(line: 1030, column: 3, scope: !2934, inlinedAt: !2944)
!2946 = !DILocation(line: 1030, column: 26, scope: !2934, inlinedAt: !2944)
!2947 = !DILocation(line: 1030, column: 30, scope: !2934, inlinedAt: !2944)
!2948 = !DILocation(line: 0, scope: !1687, inlinedAt: !2949)
!2949 = distinct !DILocation(line: 1031, column: 3, scope: !2934, inlinedAt: !2944)
!2950 = !DILocation(line: 184, column: 6, scope: !1687, inlinedAt: !2949)
!2951 = !DILocation(line: 184, column: 12, scope: !1687, inlinedAt: !2949)
!2952 = !DILocation(line: 185, column: 8, scope: !1701, inlinedAt: !2949)
!2953 = !DILocation(line: 185, column: 19, scope: !1701, inlinedAt: !2949)
!2954 = !DILocation(line: 186, column: 5, scope: !1701, inlinedAt: !2949)
!2955 = !DILocation(line: 187, column: 6, scope: !1687, inlinedAt: !2949)
!2956 = !DILocation(line: 187, column: 17, scope: !1687, inlinedAt: !2949)
!2957 = !DILocation(line: 188, column: 6, scope: !1687, inlinedAt: !2949)
!2958 = !DILocation(line: 188, column: 18, scope: !1687, inlinedAt: !2949)
!2959 = !DILocation(line: 1032, column: 10, scope: !2934, inlinedAt: !2944)
!2960 = !DILocation(line: 1033, column: 1, scope: !2934, inlinedAt: !2944)
!2961 = !DILocation(line: 1021, column: 3, scope: !2924)
!2962 = !DILocation(line: 0, scope: !2934)
!2963 = !DILocation(line: 1030, column: 3, scope: !2934)
!2964 = !DILocation(line: 1030, column: 26, scope: !2934)
!2965 = !DILocation(line: 1030, column: 30, scope: !2934)
!2966 = !DILocation(line: 0, scope: !1687, inlinedAt: !2967)
!2967 = distinct !DILocation(line: 1031, column: 3, scope: !2934)
!2968 = !DILocation(line: 184, column: 6, scope: !1687, inlinedAt: !2967)
!2969 = !DILocation(line: 184, column: 12, scope: !1687, inlinedAt: !2967)
!2970 = !DILocation(line: 185, column: 8, scope: !1701, inlinedAt: !2967)
!2971 = !DILocation(line: 185, column: 19, scope: !1701, inlinedAt: !2967)
!2972 = !DILocation(line: 186, column: 5, scope: !1701, inlinedAt: !2967)
!2973 = !DILocation(line: 187, column: 6, scope: !1687, inlinedAt: !2967)
!2974 = !DILocation(line: 187, column: 17, scope: !1687, inlinedAt: !2967)
!2975 = !DILocation(line: 188, column: 6, scope: !1687, inlinedAt: !2967)
!2976 = !DILocation(line: 188, column: 18, scope: !1687, inlinedAt: !2967)
!2977 = !DILocation(line: 1032, column: 10, scope: !2934)
!2978 = !DILocation(line: 1033, column: 1, scope: !2934)
!2979 = !DILocation(line: 1032, column: 3, scope: !2934)
!2980 = distinct !DISubprogram(name: "quotearg_custom", scope: !218, file: !218, line: 1036, type: !2981, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !217, retainedNodes: !2983)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{!22, !38, !38, !38}
!2983 = !{!2984, !2985, !2986}
!2984 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2980, file: !218, line: 1036, type: !38)
!2985 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2980, file: !218, line: 1036, type: !38)
!2986 = !DILocalVariable(name: "arg", arg: 3, scope: !2980, file: !218, line: 1037, type: !38)
!2987 = !DILocation(line: 0, scope: !2980)
!2988 = !DILocation(line: 0, scope: !2924, inlinedAt: !2989)
!2989 = distinct !DILocation(line: 1039, column: 10, scope: !2980)
!2990 = !DILocation(line: 0, scope: !2934, inlinedAt: !2991)
!2991 = distinct !DILocation(line: 1021, column: 10, scope: !2924, inlinedAt: !2989)
!2992 = !DILocation(line: 1030, column: 3, scope: !2934, inlinedAt: !2991)
!2993 = !DILocation(line: 1030, column: 26, scope: !2934, inlinedAt: !2991)
!2994 = !DILocation(line: 1030, column: 30, scope: !2934, inlinedAt: !2991)
!2995 = !DILocation(line: 0, scope: !1687, inlinedAt: !2996)
!2996 = distinct !DILocation(line: 1031, column: 3, scope: !2934, inlinedAt: !2991)
!2997 = !DILocation(line: 184, column: 6, scope: !1687, inlinedAt: !2996)
!2998 = !DILocation(line: 184, column: 12, scope: !1687, inlinedAt: !2996)
!2999 = !DILocation(line: 185, column: 8, scope: !1701, inlinedAt: !2996)
!3000 = !DILocation(line: 185, column: 19, scope: !1701, inlinedAt: !2996)
!3001 = !DILocation(line: 186, column: 5, scope: !1701, inlinedAt: !2996)
!3002 = !DILocation(line: 187, column: 6, scope: !1687, inlinedAt: !2996)
!3003 = !DILocation(line: 187, column: 17, scope: !1687, inlinedAt: !2996)
!3004 = !DILocation(line: 188, column: 6, scope: !1687, inlinedAt: !2996)
!3005 = !DILocation(line: 188, column: 18, scope: !1687, inlinedAt: !2996)
!3006 = !DILocation(line: 1032, column: 10, scope: !2934, inlinedAt: !2991)
!3007 = !DILocation(line: 1033, column: 1, scope: !2934, inlinedAt: !2991)
!3008 = !DILocation(line: 1039, column: 3, scope: !2980)
!3009 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !218, file: !218, line: 1043, type: !3010, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !217, retainedNodes: !3012)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{!22, !38, !38, !38, !83}
!3012 = !{!3013, !3014, !3015, !3016}
!3013 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3009, file: !218, line: 1043, type: !38)
!3014 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3009, file: !218, line: 1043, type: !38)
!3015 = !DILocalVariable(name: "arg", arg: 3, scope: !3009, file: !218, line: 1044, type: !38)
!3016 = !DILocalVariable(name: "argsize", arg: 4, scope: !3009, file: !218, line: 1044, type: !83)
!3017 = !DILocation(line: 0, scope: !3009)
!3018 = !DILocation(line: 0, scope: !2934, inlinedAt: !3019)
!3019 = distinct !DILocation(line: 1046, column: 10, scope: !3009)
!3020 = !DILocation(line: 1030, column: 3, scope: !2934, inlinedAt: !3019)
!3021 = !DILocation(line: 1030, column: 26, scope: !2934, inlinedAt: !3019)
!3022 = !DILocation(line: 1030, column: 30, scope: !2934, inlinedAt: !3019)
!3023 = !DILocation(line: 0, scope: !1687, inlinedAt: !3024)
!3024 = distinct !DILocation(line: 1031, column: 3, scope: !2934, inlinedAt: !3019)
!3025 = !DILocation(line: 184, column: 6, scope: !1687, inlinedAt: !3024)
!3026 = !DILocation(line: 184, column: 12, scope: !1687, inlinedAt: !3024)
!3027 = !DILocation(line: 185, column: 8, scope: !1701, inlinedAt: !3024)
!3028 = !DILocation(line: 185, column: 19, scope: !1701, inlinedAt: !3024)
!3029 = !DILocation(line: 186, column: 5, scope: !1701, inlinedAt: !3024)
!3030 = !DILocation(line: 187, column: 6, scope: !1687, inlinedAt: !3024)
!3031 = !DILocation(line: 187, column: 17, scope: !1687, inlinedAt: !3024)
!3032 = !DILocation(line: 188, column: 6, scope: !1687, inlinedAt: !3024)
!3033 = !DILocation(line: 188, column: 18, scope: !1687, inlinedAt: !3024)
!3034 = !DILocation(line: 1032, column: 10, scope: !2934, inlinedAt: !3019)
!3035 = !DILocation(line: 1033, column: 1, scope: !2934, inlinedAt: !3019)
!3036 = !DILocation(line: 1046, column: 3, scope: !3009)
!3037 = distinct !DISubprogram(name: "quote_n_mem", scope: !218, file: !218, line: 1061, type: !3038, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !217, retainedNodes: !3040)
!3038 = !DISubroutineType(types: !3039)
!3039 = !{!38, !25, !38, !83}
!3040 = !{!3041, !3042, !3043}
!3041 = !DILocalVariable(name: "n", arg: 1, scope: !3037, file: !218, line: 1061, type: !25)
!3042 = !DILocalVariable(name: "arg", arg: 2, scope: !3037, file: !218, line: 1061, type: !38)
!3043 = !DILocalVariable(name: "argsize", arg: 3, scope: !3037, file: !218, line: 1061, type: !83)
!3044 = !DILocation(line: 0, scope: !3037)
!3045 = !DILocation(line: 1063, column: 10, scope: !3037)
!3046 = !DILocation(line: 1063, column: 3, scope: !3037)
!3047 = distinct !DISubprogram(name: "quote_mem", scope: !218, file: !218, line: 1067, type: !3048, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !217, retainedNodes: !3050)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{!38, !38, !83}
!3050 = !{!3051, !3052}
!3051 = !DILocalVariable(name: "arg", arg: 1, scope: !3047, file: !218, line: 1067, type: !38)
!3052 = !DILocalVariable(name: "argsize", arg: 2, scope: !3047, file: !218, line: 1067, type: !83)
!3053 = !DILocation(line: 0, scope: !3047)
!3054 = !DILocation(line: 0, scope: !3037, inlinedAt: !3055)
!3055 = distinct !DILocation(line: 1069, column: 10, scope: !3047)
!3056 = !DILocation(line: 1063, column: 10, scope: !3037, inlinedAt: !3055)
!3057 = !DILocation(line: 1069, column: 3, scope: !3047)
!3058 = distinct !DISubprogram(name: "quote_n", scope: !218, file: !218, line: 1073, type: !3059, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !217, retainedNodes: !3061)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!38, !25, !38}
!3061 = !{!3062, !3063}
!3062 = !DILocalVariable(name: "n", arg: 1, scope: !3058, file: !218, line: 1073, type: !25)
!3063 = !DILocalVariable(name: "arg", arg: 2, scope: !3058, file: !218, line: 1073, type: !38)
!3064 = !DILocation(line: 0, scope: !3058)
!3065 = !DILocation(line: 0, scope: !3037, inlinedAt: !3066)
!3066 = distinct !DILocation(line: 1075, column: 10, scope: !3058)
!3067 = !DILocation(line: 1063, column: 10, scope: !3037, inlinedAt: !3066)
!3068 = !DILocation(line: 1075, column: 3, scope: !3058)
!3069 = distinct !DISubprogram(name: "quote", scope: !218, file: !218, line: 1079, type: !3070, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !217, retainedNodes: !3072)
!3070 = !DISubroutineType(types: !3071)
!3071 = !{!38, !38}
!3072 = !{!3073}
!3073 = !DILocalVariable(name: "arg", arg: 1, scope: !3069, file: !218, line: 1079, type: !38)
!3074 = !DILocation(line: 0, scope: !3069)
!3075 = !DILocation(line: 0, scope: !3058, inlinedAt: !3076)
!3076 = distinct !DILocation(line: 1081, column: 10, scope: !3069)
!3077 = !DILocation(line: 0, scope: !3037, inlinedAt: !3078)
!3078 = distinct !DILocation(line: 1075, column: 10, scope: !3058, inlinedAt: !3076)
!3079 = !DILocation(line: 1063, column: 10, scope: !3037, inlinedAt: !3078)
!3080 = !DILocation(line: 1081, column: 3, scope: !3069)
!3081 = distinct !DISubprogram(name: "version_etc_arn", scope: !279, file: !279, line: 61, type: !3082, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !278, retainedNodes: !3119)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{null, !3084, !38, !38, !38, !3118, !83}
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !109, line: 7, baseType: !3086)
!3086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !111, line: 49, size: 1728, elements: !3087)
!3087 = !{!3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3086, file: !111, line: 51, baseType: !25, size: 32)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3086, file: !111, line: 54, baseType: !22, size: 64, offset: 64)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3086, file: !111, line: 55, baseType: !22, size: 64, offset: 128)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3086, file: !111, line: 56, baseType: !22, size: 64, offset: 192)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3086, file: !111, line: 57, baseType: !22, size: 64, offset: 256)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3086, file: !111, line: 58, baseType: !22, size: 64, offset: 320)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3086, file: !111, line: 59, baseType: !22, size: 64, offset: 384)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3086, file: !111, line: 60, baseType: !22, size: 64, offset: 448)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3086, file: !111, line: 61, baseType: !22, size: 64, offset: 512)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3086, file: !111, line: 64, baseType: !22, size: 64, offset: 576)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3086, file: !111, line: 65, baseType: !22, size: 64, offset: 640)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3086, file: !111, line: 66, baseType: !22, size: 64, offset: 704)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3086, file: !111, line: 68, baseType: !126, size: 64, offset: 768)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3086, file: !111, line: 70, baseType: !3102, size: 64, offset: 832)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3086, file: !111, line: 72, baseType: !25, size: 32, offset: 896)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3086, file: !111, line: 73, baseType: !25, size: 32, offset: 928)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3086, file: !111, line: 74, baseType: !133, size: 64, offset: 960)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3086, file: !111, line: 77, baseType: !26, size: 16, offset: 1024)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3086, file: !111, line: 78, baseType: !137, size: 8, offset: 1040)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3086, file: !111, line: 79, baseType: !139, size: 8, offset: 1048)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3086, file: !111, line: 81, baseType: !143, size: 64, offset: 1088)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3086, file: !111, line: 89, baseType: !146, size: 64, offset: 1152)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3086, file: !111, line: 91, baseType: !148, size: 64, offset: 1216)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3086, file: !111, line: 92, baseType: !151, size: 64, offset: 1280)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3086, file: !111, line: 93, baseType: !3102, size: 64, offset: 1344)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3086, file: !111, line: 94, baseType: !24, size: 64, offset: 1408)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3086, file: !111, line: 95, baseType: !83, size: 64, offset: 1472)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3086, file: !111, line: 96, baseType: !25, size: 32, offset: 1536)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3086, file: !111, line: 98, baseType: !158, size: 160, offset: 1568)
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!3119 = !{!3120, !3121, !3122, !3123, !3124, !3125}
!3120 = !DILocalVariable(name: "stream", arg: 1, scope: !3081, file: !279, line: 61, type: !3084)
!3121 = !DILocalVariable(name: "command_name", arg: 2, scope: !3081, file: !279, line: 62, type: !38)
!3122 = !DILocalVariable(name: "package", arg: 3, scope: !3081, file: !279, line: 62, type: !38)
!3123 = !DILocalVariable(name: "version", arg: 4, scope: !3081, file: !279, line: 63, type: !38)
!3124 = !DILocalVariable(name: "authors", arg: 5, scope: !3081, file: !279, line: 64, type: !3118)
!3125 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3081, file: !279, line: 64, type: !83)
!3126 = !DILocation(line: 0, scope: !3081)
!3127 = !DILocation(line: 66, column: 7, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3081, file: !279, line: 66, column: 7)
!3129 = !DILocation(line: 66, column: 7, scope: !3081)
!3130 = !DILocation(line: 67, column: 5, scope: !3128)
!3131 = !DILocation(line: 69, column: 5, scope: !3128)
!3132 = !DILocation(line: 83, column: 3, scope: !3081)
!3133 = !DILocation(line: 85, column: 3, scope: !3081)
!3134 = !DILocation(line: 88, column: 3, scope: !3081)
!3135 = !DILocation(line: 95, column: 3, scope: !3081)
!3136 = !DILocation(line: 97, column: 3, scope: !3081)
!3137 = !DILocation(line: 105, column: 7, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3081, file: !279, line: 98, column: 5)
!3139 = !DILocation(line: 106, column: 7, scope: !3138)
!3140 = !DILocation(line: 109, column: 7, scope: !3138)
!3141 = !DILocation(line: 110, column: 7, scope: !3138)
!3142 = !DILocation(line: 113, column: 7, scope: !3138)
!3143 = !DILocation(line: 115, column: 7, scope: !3138)
!3144 = !DILocation(line: 120, column: 7, scope: !3138)
!3145 = !DILocation(line: 122, column: 7, scope: !3138)
!3146 = !DILocation(line: 127, column: 7, scope: !3138)
!3147 = !DILocation(line: 129, column: 7, scope: !3138)
!3148 = !DILocation(line: 134, column: 7, scope: !3138)
!3149 = !DILocation(line: 137, column: 7, scope: !3138)
!3150 = !DILocation(line: 142, column: 7, scope: !3138)
!3151 = !DILocation(line: 145, column: 7, scope: !3138)
!3152 = !DILocation(line: 150, column: 7, scope: !3138)
!3153 = !DILocation(line: 154, column: 7, scope: !3138)
!3154 = !DILocation(line: 159, column: 7, scope: !3138)
!3155 = !DILocation(line: 163, column: 7, scope: !3138)
!3156 = !DILocation(line: 170, column: 7, scope: !3138)
!3157 = !DILocation(line: 174, column: 7, scope: !3138)
!3158 = !DILocation(line: 176, column: 1, scope: !3081)
!3159 = distinct !DISubprogram(name: "version_etc_ar", scope: !279, file: !279, line: 183, type: !3160, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !278, retainedNodes: !3162)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{null, !3084, !38, !38, !38, !3118}
!3162 = !{!3163, !3164, !3165, !3166, !3167, !3168}
!3163 = !DILocalVariable(name: "stream", arg: 1, scope: !3159, file: !279, line: 183, type: !3084)
!3164 = !DILocalVariable(name: "command_name", arg: 2, scope: !3159, file: !279, line: 184, type: !38)
!3165 = !DILocalVariable(name: "package", arg: 3, scope: !3159, file: !279, line: 184, type: !38)
!3166 = !DILocalVariable(name: "version", arg: 4, scope: !3159, file: !279, line: 185, type: !38)
!3167 = !DILocalVariable(name: "authors", arg: 5, scope: !3159, file: !279, line: 185, type: !3118)
!3168 = !DILocalVariable(name: "n_authors", scope: !3159, file: !279, line: 187, type: !83)
!3169 = !DILocation(line: 0, scope: !3159)
!3170 = !DILocation(line: 189, column: 8, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3159, file: !279, line: 189, column: 3)
!3172 = !DILocation(line: 0, scope: !3171)
!3173 = !DILocation(line: 189, column: 23, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3171, file: !279, line: 189, column: 3)
!3175 = !DILocation(line: 189, column: 3, scope: !3171)
!3176 = !DILocation(line: 189, column: 52, scope: !3174)
!3177 = distinct !{!3177, !3175, !3178, !775}
!3178 = !DILocation(line: 190, column: 5, scope: !3171)
!3179 = !DILocation(line: 191, column: 3, scope: !3159)
!3180 = !DILocation(line: 192, column: 1, scope: !3159)
!3181 = distinct !DISubprogram(name: "version_etc_va", scope: !279, file: !279, line: 199, type: !3182, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !278, retainedNodes: !3191)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{null, !3084, !38, !38, !38, !3184}
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3186)
!3186 = !{!3187, !3188, !3189, !3190}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3185, file: !279, line: 192, baseType: !7, size: 32)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3185, file: !279, line: 192, baseType: !7, size: 32, offset: 32)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3185, file: !279, line: 192, baseType: !24, size: 64, offset: 64)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3185, file: !279, line: 192, baseType: !24, size: 64, offset: 128)
!3191 = !{!3192, !3193, !3194, !3195, !3196, !3197, !3198}
!3192 = !DILocalVariable(name: "stream", arg: 1, scope: !3181, file: !279, line: 199, type: !3084)
!3193 = !DILocalVariable(name: "command_name", arg: 2, scope: !3181, file: !279, line: 200, type: !38)
!3194 = !DILocalVariable(name: "package", arg: 3, scope: !3181, file: !279, line: 200, type: !38)
!3195 = !DILocalVariable(name: "version", arg: 4, scope: !3181, file: !279, line: 201, type: !38)
!3196 = !DILocalVariable(name: "authors", arg: 5, scope: !3181, file: !279, line: 201, type: !3184)
!3197 = !DILocalVariable(name: "n_authors", scope: !3181, file: !279, line: 203, type: !83)
!3198 = !DILocalVariable(name: "authtab", scope: !3181, file: !279, line: 204, type: !3199)
!3199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 640, elements: !231)
!3200 = !DILocation(line: 0, scope: !3181)
!3201 = !DILocation(line: 204, column: 3, scope: !3181)
!3202 = !DILocation(line: 204, column: 15, scope: !3181)
!3203 = !DILocation(line: 208, column: 35, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3205, file: !279, line: 206, column: 3)
!3205 = distinct !DILexicalBlock(scope: !3181, file: !279, line: 206, column: 3)
!3206 = !DILocation(line: 208, column: 14, scope: !3204)
!3207 = !DILocation(line: 208, column: 33, scope: !3204)
!3208 = !DILocation(line: 208, column: 67, scope: !3204)
!3209 = !DILocation(line: 206, column: 3, scope: !3205)
!3210 = !DILocation(line: 0, scope: !3205)
!3211 = !DILocation(line: 211, column: 3, scope: !3181)
!3212 = !DILocation(line: 213, column: 1, scope: !3181)
!3213 = distinct !DISubprogram(name: "version_etc", scope: !279, file: !279, line: 230, type: !3214, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !278, retainedNodes: !3216)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{null, !3084, !38, !38, !38, null}
!3216 = !{!3217, !3218, !3219, !3220, !3221}
!3217 = !DILocalVariable(name: "stream", arg: 1, scope: !3213, file: !279, line: 230, type: !3084)
!3218 = !DILocalVariable(name: "command_name", arg: 2, scope: !3213, file: !279, line: 231, type: !38)
!3219 = !DILocalVariable(name: "package", arg: 3, scope: !3213, file: !279, line: 231, type: !38)
!3220 = !DILocalVariable(name: "version", arg: 4, scope: !3213, file: !279, line: 232, type: !38)
!3221 = !DILocalVariable(name: "authors", scope: !3213, file: !279, line: 234, type: !3222)
!3222 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !800, line: 52, baseType: !3223)
!3223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3224, line: 32, baseType: !3225)
!3224 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!3225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !279, baseType: !3226)
!3226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3185, size: 192, elements: !140)
!3227 = !DILocation(line: 0, scope: !3213)
!3228 = !DILocation(line: 234, column: 3, scope: !3213)
!3229 = !DILocation(line: 234, column: 11, scope: !3213)
!3230 = !DILocation(line: 236, column: 3, scope: !3213)
!3231 = !DILocation(line: 237, column: 3, scope: !3213)
!3232 = !DILocation(line: 238, column: 3, scope: !3213)
!3233 = !DILocation(line: 239, column: 1, scope: !3213)
!3234 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !279, file: !279, line: 242, type: !733, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !278, retainedNodes: !194)
!3235 = !DILocation(line: 244, column: 3, scope: !3234)
!3236 = !DILocation(line: 249, column: 3, scope: !3234)
!3237 = !DILocation(line: 255, column: 3, scope: !3234)
!3238 = !DILocation(line: 260, column: 3, scope: !3234)
!3239 = !DILocation(line: 262, column: 1, scope: !3234)
!3240 = distinct !DISubprogram(name: "xnmalloc", scope: !78, file: !78, line: 99, type: !3241, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !3243)
!3241 = !DISubroutineType(types: !3242)
!3242 = !{!24, !83, !83}
!3243 = !{!3244, !3245}
!3244 = !DILocalVariable(name: "n", arg: 1, scope: !3240, file: !78, line: 99, type: !83)
!3245 = !DILocalVariable(name: "s", arg: 2, scope: !3240, file: !78, line: 99, type: !83)
!3246 = !DILocation(line: 0, scope: !3240)
!3247 = !DILocation(line: 101, column: 7, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3240, file: !78, line: 101, column: 7)
!3249 = !DILocation(line: 101, column: 7, scope: !3240)
!3250 = !DILocation(line: 102, column: 5, scope: !3248)
!3251 = !DILocation(line: 103, column: 21, scope: !3240)
!3252 = !DILocalVariable(name: "n", arg: 1, scope: !3253, file: !286, line: 39, type: !83)
!3253 = distinct !DISubprogram(name: "xmalloc", scope: !286, file: !286, line: 39, type: !3254, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !3256)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{!24, !83}
!3256 = !{!3252, !3257}
!3257 = !DILocalVariable(name: "p", scope: !3253, file: !286, line: 41, type: !24)
!3258 = !DILocation(line: 0, scope: !3253, inlinedAt: !3259)
!3259 = distinct !DILocation(line: 103, column: 10, scope: !3240)
!3260 = !DILocation(line: 41, column: 13, scope: !3253, inlinedAt: !3259)
!3261 = !DILocation(line: 42, column: 8, scope: !3262, inlinedAt: !3259)
!3262 = distinct !DILexicalBlock(scope: !3253, file: !286, line: 42, column: 7)
!3263 = !DILocation(line: 42, column: 10, scope: !3262, inlinedAt: !3259)
!3264 = !DILocation(line: 43, column: 5, scope: !3262, inlinedAt: !3259)
!3265 = !DILocation(line: 103, column: 3, scope: !3240)
!3266 = !DILocation(line: 0, scope: !3253)
!3267 = !DILocation(line: 41, column: 13, scope: !3253)
!3268 = !DILocation(line: 42, column: 8, scope: !3262)
!3269 = !DILocation(line: 42, column: 10, scope: !3262)
!3270 = !DILocation(line: 43, column: 5, scope: !3262)
!3271 = !DILocation(line: 44, column: 3, scope: !3253)
!3272 = distinct !DISubprogram(name: "xnrealloc", scope: !78, file: !78, line: 112, type: !3273, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !3275)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{!24, !24, !83, !83}
!3275 = !{!3276, !3277, !3278}
!3276 = !DILocalVariable(name: "p", arg: 1, scope: !3272, file: !78, line: 112, type: !24)
!3277 = !DILocalVariable(name: "n", arg: 2, scope: !3272, file: !78, line: 112, type: !83)
!3278 = !DILocalVariable(name: "s", arg: 3, scope: !3272, file: !78, line: 112, type: !83)
!3279 = !DILocation(line: 0, scope: !3272)
!3280 = !DILocation(line: 114, column: 7, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3272, file: !78, line: 114, column: 7)
!3282 = !DILocation(line: 114, column: 7, scope: !3272)
!3283 = !DILocation(line: 115, column: 5, scope: !3281)
!3284 = !DILocation(line: 116, column: 25, scope: !3272)
!3285 = !DILocalVariable(name: "p", arg: 1, scope: !3286, file: !286, line: 51, type: !24)
!3286 = distinct !DISubprogram(name: "xrealloc", scope: !286, file: !286, line: 51, type: !3287, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !3289)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{!24, !24, !83}
!3289 = !{!3285, !3290}
!3290 = !DILocalVariable(name: "n", arg: 2, scope: !3286, file: !286, line: 51, type: !83)
!3291 = !DILocation(line: 0, scope: !3286, inlinedAt: !3292)
!3292 = distinct !DILocation(line: 116, column: 10, scope: !3272)
!3293 = !DILocation(line: 53, column: 8, scope: !3294, inlinedAt: !3292)
!3294 = distinct !DILexicalBlock(scope: !3286, file: !286, line: 53, column: 7)
!3295 = !DILocation(line: 53, column: 10, scope: !3294, inlinedAt: !3292)
!3296 = !DILocation(line: 57, column: 7, scope: !3297, inlinedAt: !3292)
!3297 = distinct !DILexicalBlock(scope: !3294, file: !286, line: 54, column: 5)
!3298 = !DILocation(line: 58, column: 7, scope: !3297, inlinedAt: !3292)
!3299 = !DILocation(line: 61, column: 7, scope: !3286, inlinedAt: !3292)
!3300 = !DILocation(line: 62, column: 8, scope: !3301, inlinedAt: !3292)
!3301 = distinct !DILexicalBlock(scope: !3286, file: !286, line: 62, column: 7)
!3302 = !DILocation(line: 62, column: 10, scope: !3301, inlinedAt: !3292)
!3303 = !DILocation(line: 63, column: 5, scope: !3301, inlinedAt: !3292)
!3304 = !DILocation(line: 116, column: 3, scope: !3272)
!3305 = !DILocation(line: 0, scope: !3286)
!3306 = !DILocation(line: 53, column: 8, scope: !3294)
!3307 = !DILocation(line: 53, column: 10, scope: !3294)
!3308 = !DILocation(line: 57, column: 7, scope: !3297)
!3309 = !DILocation(line: 58, column: 7, scope: !3297)
!3310 = !DILocation(line: 61, column: 7, scope: !3286)
!3311 = !DILocation(line: 62, column: 8, scope: !3301)
!3312 = !DILocation(line: 62, column: 10, scope: !3301)
!3313 = !DILocation(line: 63, column: 5, scope: !3301)
!3314 = !DILocation(line: 65, column: 1, scope: !3286)
!3315 = !DILocation(line: 0, scope: !289)
!3316 = !DILocation(line: 176, column: 14, scope: !289)
!3317 = !DILocation(line: 178, column: 9, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !289, file: !78, line: 178, column: 7)
!3319 = !DILocation(line: 178, column: 7, scope: !289)
!3320 = !DILocation(line: 180, column: 13, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3322, file: !78, line: 180, column: 11)
!3322 = distinct !DILexicalBlock(scope: !3318, file: !78, line: 179, column: 5)
!3323 = !DILocation(line: 180, column: 11, scope: !3322)
!3324 = !DILocation(line: 188, column: 30, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3321, file: !78, line: 181, column: 9)
!3326 = !DILocation(line: 189, column: 16, scope: !3325)
!3327 = !DILocation(line: 189, column: 13, scope: !3325)
!3328 = !DILocation(line: 190, column: 9, scope: !3325)
!3329 = !DILocation(line: 191, column: 11, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3322, file: !78, line: 191, column: 11)
!3331 = !DILocation(line: 191, column: 11, scope: !3322)
!3332 = !DILocation(line: 206, column: 7, scope: !289)
!3333 = !DILocation(line: 207, column: 25, scope: !289)
!3334 = !DILocation(line: 0, scope: !3286, inlinedAt: !3335)
!3335 = distinct !DILocation(line: 207, column: 10, scope: !289)
!3336 = !DILocation(line: 53, column: 10, scope: !3294, inlinedAt: !3335)
!3337 = !DILocation(line: 192, column: 9, scope: !3330)
!3338 = !DILocation(line: 200, column: 69, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3340, file: !78, line: 200, column: 11)
!3340 = distinct !DILexicalBlock(scope: !3318, file: !78, line: 195, column: 5)
!3341 = !DILocation(line: 201, column: 11, scope: !3339)
!3342 = !DILocation(line: 200, column: 11, scope: !3340)
!3343 = !DILocation(line: 202, column: 9, scope: !3339)
!3344 = !DILocation(line: 203, column: 14, scope: !3340)
!3345 = !DILocation(line: 203, column: 18, scope: !3340)
!3346 = !DILocation(line: 203, column: 9, scope: !3340)
!3347 = !DILocation(line: 53, column: 8, scope: !3294, inlinedAt: !3335)
!3348 = !DILocation(line: 57, column: 7, scope: !3297, inlinedAt: !3335)
!3349 = !DILocation(line: 58, column: 7, scope: !3297, inlinedAt: !3335)
!3350 = !DILocation(line: 61, column: 7, scope: !3286, inlinedAt: !3335)
!3351 = !DILocation(line: 62, column: 8, scope: !3301, inlinedAt: !3335)
!3352 = !DILocation(line: 62, column: 10, scope: !3301, inlinedAt: !3335)
!3353 = !DILocation(line: 63, column: 5, scope: !3301, inlinedAt: !3335)
!3354 = !DILocation(line: 207, column: 3, scope: !289)
!3355 = distinct !DISubprogram(name: "xcharalloc", scope: !78, file: !78, line: 216, type: !2494, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !3356)
!3356 = !{!3357}
!3357 = !DILocalVariable(name: "n", arg: 1, scope: !3355, file: !78, line: 216, type: !83)
!3358 = !DILocation(line: 0, scope: !3355)
!3359 = !DILocation(line: 0, scope: !3253, inlinedAt: !3360)
!3360 = distinct !DILocation(line: 218, column: 10, scope: !3355)
!3361 = !DILocation(line: 41, column: 13, scope: !3253, inlinedAt: !3360)
!3362 = !DILocation(line: 42, column: 8, scope: !3262, inlinedAt: !3360)
!3363 = !DILocation(line: 42, column: 10, scope: !3262, inlinedAt: !3360)
!3364 = !DILocation(line: 43, column: 5, scope: !3262, inlinedAt: !3360)
!3365 = !DILocation(line: 218, column: 3, scope: !3355)
!3366 = distinct !DISubprogram(name: "x2realloc", scope: !286, file: !286, line: 74, type: !3367, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !3369)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!24, !24, !82}
!3369 = !{!3370, !3371}
!3370 = !DILocalVariable(name: "p", arg: 1, scope: !3366, file: !286, line: 74, type: !24)
!3371 = !DILocalVariable(name: "pn", arg: 2, scope: !3366, file: !286, line: 74, type: !82)
!3372 = !DILocation(line: 0, scope: !3366)
!3373 = !DILocation(line: 0, scope: !289, inlinedAt: !3374)
!3374 = distinct !DILocation(line: 76, column: 10, scope: !3366)
!3375 = !DILocation(line: 176, column: 14, scope: !289, inlinedAt: !3374)
!3376 = !DILocation(line: 178, column: 9, scope: !3318, inlinedAt: !3374)
!3377 = !DILocation(line: 178, column: 7, scope: !289, inlinedAt: !3374)
!3378 = !DILocation(line: 180, column: 13, scope: !3321, inlinedAt: !3374)
!3379 = !DILocation(line: 180, column: 11, scope: !3322, inlinedAt: !3374)
!3380 = !DILocation(line: 191, column: 11, scope: !3330, inlinedAt: !3374)
!3381 = !DILocation(line: 191, column: 11, scope: !3322, inlinedAt: !3374)
!3382 = !DILocation(line: 192, column: 9, scope: !3330, inlinedAt: !3374)
!3383 = !DILocation(line: 201, column: 11, scope: !3339, inlinedAt: !3374)
!3384 = !DILocation(line: 200, column: 11, scope: !3340, inlinedAt: !3374)
!3385 = !DILocation(line: 202, column: 9, scope: !3339, inlinedAt: !3374)
!3386 = !DILocation(line: 203, column: 14, scope: !3340, inlinedAt: !3374)
!3387 = !DILocation(line: 203, column: 18, scope: !3340, inlinedAt: !3374)
!3388 = !DILocation(line: 203, column: 9, scope: !3340, inlinedAt: !3374)
!3389 = !DILocation(line: 0, scope: !3286, inlinedAt: !3390)
!3390 = distinct !DILocation(line: 207, column: 10, scope: !289, inlinedAt: !3374)
!3391 = !DILocation(line: 53, column: 10, scope: !3294, inlinedAt: !3390)
!3392 = !DILocation(line: 206, column: 7, scope: !289, inlinedAt: !3374)
!3393 = !DILocation(line: 61, column: 7, scope: !3286, inlinedAt: !3390)
!3394 = !DILocation(line: 62, column: 8, scope: !3301, inlinedAt: !3390)
!3395 = !DILocation(line: 62, column: 10, scope: !3301, inlinedAt: !3390)
!3396 = !DILocation(line: 63, column: 5, scope: !3301, inlinedAt: !3390)
!3397 = !DILocation(line: 76, column: 3, scope: !3366)
!3398 = distinct !DISubprogram(name: "xzalloc", scope: !286, file: !286, line: 84, type: !3254, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !3399)
!3399 = !{!3400}
!3400 = !DILocalVariable(name: "n", arg: 1, scope: !3398, file: !286, line: 84, type: !83)
!3401 = !DILocation(line: 0, scope: !3398)
!3402 = !DILocalVariable(name: "n", arg: 1, scope: !3403, file: !286, line: 93, type: !83)
!3403 = distinct !DISubprogram(name: "xcalloc", scope: !286, file: !286, line: 93, type: !3241, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !3404)
!3404 = !{!3402, !3405, !3406}
!3405 = !DILocalVariable(name: "s", arg: 2, scope: !3403, file: !286, line: 93, type: !83)
!3406 = !DILocalVariable(name: "p", scope: !3403, file: !286, line: 95, type: !24)
!3407 = !DILocation(line: 0, scope: !3403, inlinedAt: !3408)
!3408 = distinct !DILocation(line: 86, column: 10, scope: !3398)
!3409 = !DILocation(line: 100, column: 7, scope: !3410, inlinedAt: !3408)
!3410 = distinct !DILexicalBlock(scope: !3403, file: !286, line: 100, column: 7)
!3411 = !DILocation(line: 101, column: 7, scope: !3410, inlinedAt: !3408)
!3412 = !DILocation(line: 101, column: 18, scope: !3410, inlinedAt: !3408)
!3413 = !DILocation(line: 101, column: 16, scope: !3410, inlinedAt: !3408)
!3414 = !DILocation(line: 100, column: 7, scope: !3403, inlinedAt: !3408)
!3415 = !DILocation(line: 102, column: 5, scope: !3410, inlinedAt: !3408)
!3416 = !DILocation(line: 86, column: 3, scope: !3398)
!3417 = !DILocation(line: 0, scope: !3403)
!3418 = !DILocation(line: 100, column: 7, scope: !3410)
!3419 = !DILocation(line: 101, column: 7, scope: !3410)
!3420 = !DILocation(line: 101, column: 18, scope: !3410)
!3421 = !DILocation(line: 101, column: 16, scope: !3410)
!3422 = !DILocation(line: 100, column: 7, scope: !3403)
!3423 = !DILocation(line: 102, column: 5, scope: !3410)
!3424 = !DILocation(line: 103, column: 3, scope: !3403)
!3425 = distinct !DISubprogram(name: "xmemdup", scope: !286, file: !286, line: 111, type: !3426, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !3430)
!3426 = !DISubroutineType(types: !3427)
!3427 = !{!24, !3428, !83}
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3430 = !{!3431, !3432}
!3431 = !DILocalVariable(name: "p", arg: 1, scope: !3425, file: !286, line: 111, type: !3428)
!3432 = !DILocalVariable(name: "s", arg: 2, scope: !3425, file: !286, line: 111, type: !83)
!3433 = !DILocation(line: 0, scope: !3425)
!3434 = !DILocation(line: 0, scope: !3253, inlinedAt: !3435)
!3435 = distinct !DILocation(line: 113, column: 18, scope: !3425)
!3436 = !DILocation(line: 41, column: 13, scope: !3253, inlinedAt: !3435)
!3437 = !DILocation(line: 42, column: 8, scope: !3262, inlinedAt: !3435)
!3438 = !DILocation(line: 42, column: 10, scope: !3262, inlinedAt: !3435)
!3439 = !DILocation(line: 43, column: 5, scope: !3262, inlinedAt: !3435)
!3440 = !DILocalVariable(name: "__dest", arg: 1, scope: !3441, file: !2021, line: 26, type: !3444)
!3441 = distinct !DISubprogram(name: "memcpy", scope: !2021, file: !2021, line: 26, type: !3442, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !3446)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{!24, !3444, !3445, !83}
!3444 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !24)
!3445 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3428)
!3446 = !{!3440, !3447, !3448}
!3447 = !DILocalVariable(name: "__src", arg: 2, scope: !3441, file: !2021, line: 26, type: !3445)
!3448 = !DILocalVariable(name: "__len", arg: 3, scope: !3441, file: !2021, line: 26, type: !83)
!3449 = !DILocation(line: 0, scope: !3441, inlinedAt: !3450)
!3450 = distinct !DILocation(line: 113, column: 10, scope: !3425)
!3451 = !DILocation(line: 29, column: 10, scope: !3441, inlinedAt: !3450)
!3452 = !DILocation(line: 113, column: 3, scope: !3425)
!3453 = distinct !DISubprogram(name: "xstrdup", scope: !286, file: !286, line: 119, type: !1024, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !3454)
!3454 = !{!3455}
!3455 = !DILocalVariable(name: "string", arg: 1, scope: !3453, file: !286, line: 119, type: !38)
!3456 = !DILocation(line: 0, scope: !3453)
!3457 = !DILocation(line: 121, column: 27, scope: !3453)
!3458 = !DILocation(line: 121, column: 43, scope: !3453)
!3459 = !DILocation(line: 0, scope: !3425, inlinedAt: !3460)
!3460 = distinct !DILocation(line: 121, column: 10, scope: !3453)
!3461 = !DILocation(line: 0, scope: !3253, inlinedAt: !3462)
!3462 = distinct !DILocation(line: 113, column: 18, scope: !3425, inlinedAt: !3460)
!3463 = !DILocation(line: 41, column: 13, scope: !3253, inlinedAt: !3462)
!3464 = !DILocation(line: 42, column: 8, scope: !3262, inlinedAt: !3462)
!3465 = !DILocation(line: 42, column: 10, scope: !3262, inlinedAt: !3462)
!3466 = !DILocation(line: 43, column: 5, scope: !3262, inlinedAt: !3462)
!3467 = !DILocation(line: 0, scope: !3441, inlinedAt: !3468)
!3468 = distinct !DILocation(line: 113, column: 10, scope: !3425, inlinedAt: !3460)
!3469 = !DILocation(line: 29, column: 10, scope: !3441, inlinedAt: !3468)
!3470 = !DILocation(line: 121, column: 3, scope: !3453)
!3471 = distinct !DISubprogram(name: "xalloc_die", scope: !297, file: !297, line: 32, type: !733, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !194)
!3472 = !DILocation(line: 34, column: 10, scope: !3471)
!3473 = !DILocation(line: 34, column: 33, scope: !3471)
!3474 = !DILocation(line: 34, column: 3, scope: !3471)
!3475 = !DILocation(line: 40, column: 3, scope: !3471)
!3476 = distinct !DISubprogram(name: "xstrndup", scope: !299, file: !299, line: 30, type: !2683, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !298, retainedNodes: !3477)
!3477 = !{!3478, !3479, !3480}
!3478 = !DILocalVariable(name: "string", arg: 1, scope: !3476, file: !299, line: 30, type: !38)
!3479 = !DILocalVariable(name: "n", arg: 2, scope: !3476, file: !299, line: 30, type: !83)
!3480 = !DILocalVariable(name: "s", scope: !3476, file: !299, line: 32, type: !22)
!3481 = !DILocation(line: 0, scope: !3476)
!3482 = !DILocation(line: 32, column: 13, scope: !3476)
!3483 = !DILocation(line: 33, column: 9, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3476, file: !299, line: 33, column: 7)
!3485 = !DILocation(line: 33, column: 7, scope: !3476)
!3486 = !DILocation(line: 34, column: 5, scope: !3484)
!3487 = !DILocation(line: 35, column: 3, scope: !3476)
!3488 = distinct !DISubprogram(name: "rpl_calloc", scope: !301, file: !301, line: 42, type: !3241, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !300, retainedNodes: !3489)
!3489 = !{!3490, !3491, !3492, !3493}
!3490 = !DILocalVariable(name: "n", arg: 1, scope: !3488, file: !301, line: 42, type: !83)
!3491 = !DILocalVariable(name: "s", arg: 2, scope: !3488, file: !301, line: 42, type: !83)
!3492 = !DILocalVariable(name: "result", scope: !3488, file: !301, line: 44, type: !24)
!3493 = !DILocalVariable(name: "bytes", scope: !3494, file: !301, line: 56, type: !83)
!3494 = distinct !DILexicalBlock(scope: !3495, file: !301, line: 53, column: 5)
!3495 = distinct !DILexicalBlock(scope: !3488, file: !301, line: 47, column: 7)
!3496 = !DILocation(line: 0, scope: !3488)
!3497 = !DILocation(line: 47, column: 9, scope: !3495)
!3498 = !DILocation(line: 47, column: 14, scope: !3495)
!3499 = !DILocation(line: 0, scope: !3494)
!3500 = !DILocation(line: 57, column: 21, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !3494, file: !301, line: 57, column: 11)
!3502 = !DILocation(line: 57, column: 11, scope: !3494)
!3503 = !DILocation(line: 59, column: 11, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3501, file: !301, line: 58, column: 9)
!3505 = !DILocation(line: 59, column: 17, scope: !3504)
!3506 = !DILocation(line: 65, column: 12, scope: !3488)
!3507 = !DILocation(line: 72, column: 3, scope: !3488)
!3508 = !DILocation(line: 73, column: 1, scope: !3488)
!3509 = distinct !DISubprogram(name: "rpl_fclose", scope: !303, file: !303, line: 58, type: !3510, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !302, retainedNodes: !3546)
!3510 = !DISubroutineType(types: !3511)
!3511 = !{!25, !3512}
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !109, line: 7, baseType: !3514)
!3514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !111, line: 49, size: 1728, elements: !3515)
!3515 = !{!3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3514, file: !111, line: 51, baseType: !25, size: 32)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3514, file: !111, line: 54, baseType: !22, size: 64, offset: 64)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3514, file: !111, line: 55, baseType: !22, size: 64, offset: 128)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3514, file: !111, line: 56, baseType: !22, size: 64, offset: 192)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3514, file: !111, line: 57, baseType: !22, size: 64, offset: 256)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3514, file: !111, line: 58, baseType: !22, size: 64, offset: 320)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3514, file: !111, line: 59, baseType: !22, size: 64, offset: 384)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3514, file: !111, line: 60, baseType: !22, size: 64, offset: 448)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3514, file: !111, line: 61, baseType: !22, size: 64, offset: 512)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3514, file: !111, line: 64, baseType: !22, size: 64, offset: 576)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3514, file: !111, line: 65, baseType: !22, size: 64, offset: 640)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3514, file: !111, line: 66, baseType: !22, size: 64, offset: 704)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3514, file: !111, line: 68, baseType: !126, size: 64, offset: 768)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3514, file: !111, line: 70, baseType: !3530, size: 64, offset: 832)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3514, file: !111, line: 72, baseType: !25, size: 32, offset: 896)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3514, file: !111, line: 73, baseType: !25, size: 32, offset: 928)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3514, file: !111, line: 74, baseType: !133, size: 64, offset: 960)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3514, file: !111, line: 77, baseType: !26, size: 16, offset: 1024)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3514, file: !111, line: 78, baseType: !137, size: 8, offset: 1040)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3514, file: !111, line: 79, baseType: !139, size: 8, offset: 1048)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3514, file: !111, line: 81, baseType: !143, size: 64, offset: 1088)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3514, file: !111, line: 89, baseType: !146, size: 64, offset: 1152)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3514, file: !111, line: 91, baseType: !148, size: 64, offset: 1216)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3514, file: !111, line: 92, baseType: !151, size: 64, offset: 1280)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3514, file: !111, line: 93, baseType: !3530, size: 64, offset: 1344)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3514, file: !111, line: 94, baseType: !24, size: 64, offset: 1408)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3514, file: !111, line: 95, baseType: !83, size: 64, offset: 1472)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3514, file: !111, line: 96, baseType: !25, size: 32, offset: 1536)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3514, file: !111, line: 98, baseType: !158, size: 160, offset: 1568)
!3546 = !{!3547, !3548, !3549, !3550}
!3547 = !DILocalVariable(name: "fp", arg: 1, scope: !3509, file: !303, line: 58, type: !3512)
!3548 = !DILocalVariable(name: "saved_errno", scope: !3509, file: !303, line: 60, type: !25)
!3549 = !DILocalVariable(name: "fd", scope: !3509, file: !303, line: 61, type: !25)
!3550 = !DILocalVariable(name: "result", scope: !3509, file: !303, line: 62, type: !25)
!3551 = !DILocation(line: 0, scope: !3509)
!3552 = !DILocation(line: 65, column: 8, scope: !3509)
!3553 = !DILocation(line: 66, column: 10, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3509, file: !303, line: 66, column: 7)
!3555 = !DILocation(line: 66, column: 7, scope: !3509)
!3556 = !DILocation(line: 67, column: 12, scope: !3554)
!3557 = !DILocation(line: 67, column: 5, scope: !3554)
!3558 = !DILocation(line: 72, column: 9, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3509, file: !303, line: 72, column: 7)
!3560 = !DILocation(line: 72, column: 23, scope: !3559)
!3561 = !DILocation(line: 72, column: 33, scope: !3559)
!3562 = !DILocation(line: 72, column: 26, scope: !3559)
!3563 = !DILocation(line: 72, column: 59, scope: !3559)
!3564 = !DILocation(line: 73, column: 7, scope: !3559)
!3565 = !DILocation(line: 73, column: 10, scope: !3559)
!3566 = !DILocation(line: 72, column: 7, scope: !3509)
!3567 = !DILocation(line: 100, column: 12, scope: !3509)
!3568 = !DILocation(line: 105, column: 7, scope: !3509)
!3569 = !DILocation(line: 74, column: 19, scope: !3559)
!3570 = !DILocation(line: 105, column: 19, scope: !3571)
!3571 = distinct !DILexicalBlock(scope: !3509, file: !303, line: 105, column: 7)
!3572 = !DILocation(line: 107, column: 13, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3571, file: !303, line: 106, column: 5)
!3574 = !DILocation(line: 109, column: 5, scope: !3573)
!3575 = !DILocation(line: 112, column: 1, scope: !3509)
!3576 = !DISubprogram(name: "fclose", scope: !800, file: !800, line: 213, type: !3577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !194)
!3577 = !DISubroutineType(types: !3578)
!3578 = !{!25, !3530}
!3579 = !DISubprogram(name: "lseek", scope: !3580, file: !3580, line: 334, type: !3581, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !194)
!3580 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!3581 = !DISubroutineType(types: !3582)
!3582 = !{!134, !25, !134, !25}
!3583 = distinct !DISubprogram(name: "rpl_fflush", scope: !305, file: !305, line: 129, type: !3584, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !3620)
!3584 = !DISubroutineType(types: !3585)
!3585 = !{!25, !3586}
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3587 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !109, line: 7, baseType: !3588)
!3588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !111, line: 49, size: 1728, elements: !3589)
!3589 = !{!3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3588, file: !111, line: 51, baseType: !25, size: 32)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3588, file: !111, line: 54, baseType: !22, size: 64, offset: 64)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3588, file: !111, line: 55, baseType: !22, size: 64, offset: 128)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3588, file: !111, line: 56, baseType: !22, size: 64, offset: 192)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3588, file: !111, line: 57, baseType: !22, size: 64, offset: 256)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3588, file: !111, line: 58, baseType: !22, size: 64, offset: 320)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3588, file: !111, line: 59, baseType: !22, size: 64, offset: 384)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3588, file: !111, line: 60, baseType: !22, size: 64, offset: 448)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3588, file: !111, line: 61, baseType: !22, size: 64, offset: 512)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3588, file: !111, line: 64, baseType: !22, size: 64, offset: 576)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3588, file: !111, line: 65, baseType: !22, size: 64, offset: 640)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3588, file: !111, line: 66, baseType: !22, size: 64, offset: 704)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3588, file: !111, line: 68, baseType: !126, size: 64, offset: 768)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3588, file: !111, line: 70, baseType: !3604, size: 64, offset: 832)
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3588, file: !111, line: 72, baseType: !25, size: 32, offset: 896)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3588, file: !111, line: 73, baseType: !25, size: 32, offset: 928)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3588, file: !111, line: 74, baseType: !133, size: 64, offset: 960)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3588, file: !111, line: 77, baseType: !26, size: 16, offset: 1024)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3588, file: !111, line: 78, baseType: !137, size: 8, offset: 1040)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3588, file: !111, line: 79, baseType: !139, size: 8, offset: 1048)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3588, file: !111, line: 81, baseType: !143, size: 64, offset: 1088)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3588, file: !111, line: 89, baseType: !146, size: 64, offset: 1152)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3588, file: !111, line: 91, baseType: !148, size: 64, offset: 1216)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3588, file: !111, line: 92, baseType: !151, size: 64, offset: 1280)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3588, file: !111, line: 93, baseType: !3604, size: 64, offset: 1344)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3588, file: !111, line: 94, baseType: !24, size: 64, offset: 1408)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3588, file: !111, line: 95, baseType: !83, size: 64, offset: 1472)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3588, file: !111, line: 96, baseType: !25, size: 32, offset: 1536)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3588, file: !111, line: 98, baseType: !158, size: 160, offset: 1568)
!3620 = !{!3621}
!3621 = !DILocalVariable(name: "stream", arg: 1, scope: !3583, file: !305, line: 129, type: !3586)
!3622 = !DILocation(line: 0, scope: !3583)
!3623 = !DILocation(line: 150, column: 14, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3583, file: !305, line: 150, column: 7)
!3625 = !DILocation(line: 150, column: 22, scope: !3624)
!3626 = !DILocation(line: 150, column: 27, scope: !3624)
!3627 = !DILocation(line: 150, column: 7, scope: !3583)
!3628 = !DILocation(line: 151, column: 12, scope: !3624)
!3629 = !DILocation(line: 151, column: 5, scope: !3624)
!3630 = !DILocalVariable(name: "fp", arg: 1, scope: !3631, file: !305, line: 41, type: !3586)
!3631 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !305, file: !305, line: 41, type: !3632, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !3634)
!3632 = !DISubroutineType(types: !3633)
!3633 = !{null, !3586}
!3634 = !{!3630}
!3635 = !DILocation(line: 0, scope: !3631, inlinedAt: !3636)
!3636 = distinct !DILocation(line: 156, column: 3, scope: !3583)
!3637 = !DILocation(line: 43, column: 11, scope: !3638, inlinedAt: !3636)
!3638 = distinct !DILexicalBlock(scope: !3631, file: !305, line: 43, column: 7)
!3639 = !DILocation(line: 43, column: 18, scope: !3638, inlinedAt: !3636)
!3640 = !DILocation(line: 43, column: 7, scope: !3631, inlinedAt: !3636)
!3641 = !DILocation(line: 45, column: 5, scope: !3638, inlinedAt: !3636)
!3642 = !DILocation(line: 158, column: 10, scope: !3583)
!3643 = !DILocation(line: 158, column: 3, scope: !3583)
!3644 = !DILocation(line: 235, column: 1, scope: !3583)
!3645 = !DISubprogram(name: "fflush", scope: !800, file: !800, line: 218, type: !3646, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !194)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{!25, !3604}
!3648 = distinct !DISubprogram(name: "rpl_fseeko", scope: !307, file: !307, line: 28, type: !3649, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !306, retainedNodes: !3685)
!3649 = !DISubroutineType(types: !3650)
!3650 = !{!25, !3651, !1502, !25}
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !109, line: 7, baseType: !3653)
!3653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !111, line: 49, size: 1728, elements: !3654)
!3654 = !{!3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3653, file: !111, line: 51, baseType: !25, size: 32)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3653, file: !111, line: 54, baseType: !22, size: 64, offset: 64)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3653, file: !111, line: 55, baseType: !22, size: 64, offset: 128)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3653, file: !111, line: 56, baseType: !22, size: 64, offset: 192)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3653, file: !111, line: 57, baseType: !22, size: 64, offset: 256)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3653, file: !111, line: 58, baseType: !22, size: 64, offset: 320)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3653, file: !111, line: 59, baseType: !22, size: 64, offset: 384)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3653, file: !111, line: 60, baseType: !22, size: 64, offset: 448)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3653, file: !111, line: 61, baseType: !22, size: 64, offset: 512)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3653, file: !111, line: 64, baseType: !22, size: 64, offset: 576)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3653, file: !111, line: 65, baseType: !22, size: 64, offset: 640)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3653, file: !111, line: 66, baseType: !22, size: 64, offset: 704)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3653, file: !111, line: 68, baseType: !126, size: 64, offset: 768)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3653, file: !111, line: 70, baseType: !3669, size: 64, offset: 832)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3653, file: !111, line: 72, baseType: !25, size: 32, offset: 896)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3653, file: !111, line: 73, baseType: !25, size: 32, offset: 928)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3653, file: !111, line: 74, baseType: !133, size: 64, offset: 960)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3653, file: !111, line: 77, baseType: !26, size: 16, offset: 1024)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3653, file: !111, line: 78, baseType: !137, size: 8, offset: 1040)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3653, file: !111, line: 79, baseType: !139, size: 8, offset: 1048)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3653, file: !111, line: 81, baseType: !143, size: 64, offset: 1088)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3653, file: !111, line: 89, baseType: !146, size: 64, offset: 1152)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3653, file: !111, line: 91, baseType: !148, size: 64, offset: 1216)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3653, file: !111, line: 92, baseType: !151, size: 64, offset: 1280)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3653, file: !111, line: 93, baseType: !3669, size: 64, offset: 1344)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3653, file: !111, line: 94, baseType: !24, size: 64, offset: 1408)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3653, file: !111, line: 95, baseType: !83, size: 64, offset: 1472)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3653, file: !111, line: 96, baseType: !25, size: 32, offset: 1536)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3653, file: !111, line: 98, baseType: !158, size: 160, offset: 1568)
!3685 = !{!3686, !3687, !3688, !3689}
!3686 = !DILocalVariable(name: "fp", arg: 1, scope: !3648, file: !307, line: 28, type: !3651)
!3687 = !DILocalVariable(name: "offset", arg: 2, scope: !3648, file: !307, line: 28, type: !1502)
!3688 = !DILocalVariable(name: "whence", arg: 3, scope: !3648, file: !307, line: 28, type: !25)
!3689 = !DILocalVariable(name: "pos", scope: !3690, file: !307, line: 117, type: !1502)
!3690 = distinct !DILexicalBlock(scope: !3691, file: !307, line: 113, column: 5)
!3691 = distinct !DILexicalBlock(scope: !3648, file: !307, line: 52, column: 7)
!3692 = !DILocation(line: 0, scope: !3648)
!3693 = !DILocation(line: 52, column: 11, scope: !3691)
!3694 = !DILocation(line: 52, column: 31, scope: !3691)
!3695 = !DILocation(line: 52, column: 24, scope: !3691)
!3696 = !DILocation(line: 53, column: 7, scope: !3691)
!3697 = !DILocation(line: 53, column: 14, scope: !3691)
!3698 = !DILocation(line: 53, column: 35, scope: !3691)
!3699 = !{!933, !724, i64 32}
!3700 = !DILocation(line: 53, column: 28, scope: !3691)
!3701 = !DILocation(line: 54, column: 7, scope: !3691)
!3702 = !DILocation(line: 54, column: 14, scope: !3691)
!3703 = !{!933, !724, i64 72}
!3704 = !DILocation(line: 54, column: 28, scope: !3691)
!3705 = !DILocation(line: 52, column: 7, scope: !3648)
!3706 = !DILocation(line: 117, column: 26, scope: !3690)
!3707 = !DILocation(line: 117, column: 19, scope: !3690)
!3708 = !DILocation(line: 0, scope: !3690)
!3709 = !DILocation(line: 118, column: 15, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3690, file: !307, line: 118, column: 11)
!3711 = !DILocation(line: 118, column: 11, scope: !3690)
!3712 = !DILocation(line: 129, column: 11, scope: !3690)
!3713 = !DILocation(line: 129, column: 18, scope: !3690)
!3714 = !DILocation(line: 130, column: 11, scope: !3690)
!3715 = !DILocation(line: 130, column: 19, scope: !3690)
!3716 = !{!933, !921, i64 144}
!3717 = !DILocation(line: 161, column: 7, scope: !3690)
!3718 = !DILocation(line: 163, column: 10, scope: !3648)
!3719 = !DILocation(line: 163, column: 3, scope: !3648)
!3720 = !DILocation(line: 164, column: 1, scope: !3648)
!3721 = !DISubprogram(name: "fseeko", scope: !800, file: !800, line: 712, type: !3722, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !194)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{!25, !3669, !134, !25}
!3724 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !309, file: !309, line: 86, type: !3725, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !308, retainedNodes: !3739)
!3725 = !DISubroutineType(types: !3726)
!3726 = !{!83, !3727, !38, !83, !3728}
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1776, line: 6, baseType: !3730)
!3730 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1778, line: 21, baseType: !3731)
!3731 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1778, line: 13, size: 64, elements: !3732)
!3732 = !{!3733, !3734}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3731, file: !1778, line: 15, baseType: !25, size: 32)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3731, file: !1778, line: 20, baseType: !3735, size: 32, offset: 32)
!3735 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3731, file: !1778, line: 16, size: 32, elements: !3736)
!3736 = !{!3737, !3738}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3735, file: !1778, line: 18, baseType: !7, size: 32)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3735, file: !1778, line: 19, baseType: !1787, size: 32)
!3739 = !{!3740, !3741, !3742, !3743, !3744, !3745, !3746}
!3740 = !DILocalVariable(name: "pwc", arg: 1, scope: !3724, file: !309, line: 86, type: !3727)
!3741 = !DILocalVariable(name: "s", arg: 2, scope: !3724, file: !309, line: 86, type: !38)
!3742 = !DILocalVariable(name: "n", arg: 3, scope: !3724, file: !309, line: 86, type: !83)
!3743 = !DILocalVariable(name: "ps", arg: 4, scope: !3724, file: !309, line: 86, type: !3728)
!3744 = !DILocalVariable(name: "ret", scope: !3724, file: !309, line: 88, type: !83)
!3745 = !DILocalVariable(name: "wc", scope: !3724, file: !309, line: 89, type: !1792)
!3746 = !DILocalVariable(name: "uc", scope: !3747, file: !309, line: 156, type: !28)
!3747 = distinct !DILexicalBlock(scope: !3748, file: !309, line: 155, column: 5)
!3748 = distinct !DILexicalBlock(scope: !3724, file: !309, line: 154, column: 7)
!3749 = !DILocation(line: 0, scope: !3724)
!3750 = !DILocation(line: 89, column: 3, scope: !3724)
!3751 = !DILocation(line: 105, column: 9, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3724, file: !309, line: 105, column: 7)
!3753 = !DILocation(line: 105, column: 7, scope: !3724)
!3754 = !DILocation(line: 145, column: 9, scope: !3724)
!3755 = !DILocation(line: 154, column: 19, scope: !3748)
!3756 = !DILocation(line: 154, column: 26, scope: !3748)
!3757 = !DILocation(line: 154, column: 41, scope: !3748)
!3758 = !DILocation(line: 154, column: 7, scope: !3724)
!3759 = !DILocation(line: 156, column: 26, scope: !3747)
!3760 = !DILocation(line: 0, scope: !3747)
!3761 = !DILocation(line: 157, column: 14, scope: !3747)
!3762 = !DILocation(line: 157, column: 12, scope: !3747)
!3763 = !DILocation(line: 163, column: 1, scope: !3724)
!3764 = !DISubprogram(name: "mbrtowc", scope: !2454, file: !2454, line: 296, type: !3765, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !194)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{!85, !42, !38, !85, !3767}
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3768 = distinct !DISubprogram(name: "close_stream", scope: !312, file: !312, line: 56, type: !3769, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !3805)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{!25, !3771}
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !109, line: 7, baseType: !3773)
!3773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !111, line: 49, size: 1728, elements: !3774)
!3774 = !{!3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3773, file: !111, line: 51, baseType: !25, size: 32)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3773, file: !111, line: 54, baseType: !22, size: 64, offset: 64)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3773, file: !111, line: 55, baseType: !22, size: 64, offset: 128)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3773, file: !111, line: 56, baseType: !22, size: 64, offset: 192)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3773, file: !111, line: 57, baseType: !22, size: 64, offset: 256)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3773, file: !111, line: 58, baseType: !22, size: 64, offset: 320)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3773, file: !111, line: 59, baseType: !22, size: 64, offset: 384)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3773, file: !111, line: 60, baseType: !22, size: 64, offset: 448)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3773, file: !111, line: 61, baseType: !22, size: 64, offset: 512)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3773, file: !111, line: 64, baseType: !22, size: 64, offset: 576)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3773, file: !111, line: 65, baseType: !22, size: 64, offset: 640)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3773, file: !111, line: 66, baseType: !22, size: 64, offset: 704)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3773, file: !111, line: 68, baseType: !126, size: 64, offset: 768)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3773, file: !111, line: 70, baseType: !3789, size: 64, offset: 832)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3773, file: !111, line: 72, baseType: !25, size: 32, offset: 896)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3773, file: !111, line: 73, baseType: !25, size: 32, offset: 928)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3773, file: !111, line: 74, baseType: !133, size: 64, offset: 960)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3773, file: !111, line: 77, baseType: !26, size: 16, offset: 1024)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3773, file: !111, line: 78, baseType: !137, size: 8, offset: 1040)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3773, file: !111, line: 79, baseType: !139, size: 8, offset: 1048)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3773, file: !111, line: 81, baseType: !143, size: 64, offset: 1088)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3773, file: !111, line: 89, baseType: !146, size: 64, offset: 1152)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3773, file: !111, line: 91, baseType: !148, size: 64, offset: 1216)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3773, file: !111, line: 92, baseType: !151, size: 64, offset: 1280)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3773, file: !111, line: 93, baseType: !3789, size: 64, offset: 1344)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3773, file: !111, line: 94, baseType: !24, size: 64, offset: 1408)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3773, file: !111, line: 95, baseType: !83, size: 64, offset: 1472)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3773, file: !111, line: 96, baseType: !25, size: 32, offset: 1536)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3773, file: !111, line: 98, baseType: !158, size: 160, offset: 1568)
!3805 = !{!3806, !3807, !3809, !3810}
!3806 = !DILocalVariable(name: "stream", arg: 1, scope: !3768, file: !312, line: 56, type: !3771)
!3807 = !DILocalVariable(name: "some_pending", scope: !3768, file: !312, line: 58, type: !3808)
!3808 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !180)
!3809 = !DILocalVariable(name: "prev_fail", scope: !3768, file: !312, line: 59, type: !3808)
!3810 = !DILocalVariable(name: "fclose_fail", scope: !3768, file: !312, line: 60, type: !3808)
!3811 = !DILocation(line: 0, scope: !3768)
!3812 = !DILocation(line: 58, column: 30, scope: !3768)
!3813 = !DILocalVariable(name: "__stream", arg: 1, scope: !3814, file: !925, line: 135, type: !3771)
!3814 = distinct !DISubprogram(name: "ferror_unlocked", scope: !925, file: !925, line: 135, type: !3769, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !3815)
!3815 = !{!3813}
!3816 = !DILocation(line: 0, scope: !3814, inlinedAt: !3817)
!3817 = distinct !DILocation(line: 59, column: 27, scope: !3768)
!3818 = !DILocation(line: 137, column: 10, scope: !3814, inlinedAt: !3817)
!3819 = !DILocation(line: 59, column: 43, scope: !3768)
!3820 = !DILocation(line: 60, column: 29, scope: !3768)
!3821 = !DILocation(line: 60, column: 45, scope: !3768)
!3822 = !DILocation(line: 70, column: 17, scope: !3823)
!3823 = distinct !DILexicalBlock(scope: !3768, file: !312, line: 70, column: 7)
!3824 = !DILocation(line: 58, column: 50, scope: !3768)
!3825 = !DILocation(line: 70, column: 33, scope: !3823)
!3826 = !DILocation(line: 70, column: 53, scope: !3823)
!3827 = !DILocation(line: 70, column: 59, scope: !3823)
!3828 = !DILocation(line: 70, column: 7, scope: !3768)
!3829 = !DILocation(line: 72, column: 11, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3823, file: !312, line: 71, column: 5)
!3831 = !DILocation(line: 73, column: 9, scope: !3832)
!3832 = distinct !DILexicalBlock(scope: !3830, file: !312, line: 72, column: 11)
!3833 = !DILocation(line: 73, column: 15, scope: !3832)
!3834 = !DILocation(line: 78, column: 1, scope: !3768)
!3835 = distinct !DISubprogram(name: "hard_locale", scope: !314, file: !314, line: 27, type: !3836, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !3838)
!3836 = !DISubroutineType(types: !3837)
!3837 = !{!180, !25}
!3838 = !{!3839, !3840}
!3839 = !DILocalVariable(name: "category", arg: 1, scope: !3835, file: !314, line: 27, type: !25)
!3840 = !DILocalVariable(name: "locale", scope: !3835, file: !314, line: 29, type: !3841)
!3841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2056, elements: !3842)
!3842 = !{!3843}
!3843 = !DISubrange(count: 257)
!3844 = !DILocation(line: 0, scope: !3835)
!3845 = !DILocation(line: 29, column: 3, scope: !3835)
!3846 = !DILocation(line: 29, column: 8, scope: !3835)
!3847 = !DILocation(line: 31, column: 7, scope: !3848)
!3848 = distinct !DILexicalBlock(scope: !3835, file: !314, line: 31, column: 7)
!3849 = !DILocation(line: 31, column: 7, scope: !3835)
!3850 = !DILocation(line: 34, column: 12, scope: !3835)
!3851 = !DILocation(line: 34, column: 38, scope: !3835)
!3852 = !DILocation(line: 34, column: 41, scope: !3835)
!3853 = !DILocation(line: 34, column: 66, scope: !3835)
!3854 = !DILocation(line: 35, column: 1, scope: !3835)
!3855 = distinct !DISubprogram(name: "locale_charset", scope: !316, file: !316, line: 831, type: !3856, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !315, retainedNodes: !3858)
!3856 = !DISubroutineType(types: !3857)
!3857 = !{!38}
!3858 = !{!3859}
!3859 = !DILocalVariable(name: "codeset", scope: !3855, file: !316, line: 833, type: !38)
!3860 = !DILocation(line: 847, column: 13, scope: !3855)
!3861 = !DILocation(line: 0, scope: !3855)
!3862 = !DILocation(line: 911, column: 15, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !3855, file: !316, line: 911, column: 7)
!3864 = !DILocation(line: 911, column: 7, scope: !3855)
!3865 = !DILocation(line: 1070, column: 13, scope: !3866)
!3866 = distinct !DILexicalBlock(scope: !3867, file: !316, line: 1070, column: 13)
!3867 = distinct !DILexicalBlock(scope: !3868, file: !316, line: 1060, column: 7)
!3868 = distinct !DILexicalBlock(scope: !3855, file: !316, line: 1019, column: 3)
!3869 = !DILocation(line: 1070, column: 24, scope: !3866)
!3870 = !DILocation(line: 1070, column: 13, scope: !3867)
!3871 = !DILocation(line: 1158, column: 3, scope: !3855)
!3872 = !DISubprogram(name: "nl_langinfo", scope: !319, file: !319, line: 661, type: !3873, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !194)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{!22, !25}
!3875 = distinct !DISubprogram(name: "setlocale_null_r", scope: !705, file: !705, line: 269, type: !3876, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !704, retainedNodes: !3878)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{!25, !25, !22, !83}
!3878 = !{!3879, !3880, !3881}
!3879 = !DILocalVariable(name: "category", arg: 1, scope: !3875, file: !705, line: 269, type: !25)
!3880 = !DILocalVariable(name: "buf", arg: 2, scope: !3875, file: !705, line: 269, type: !22)
!3881 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3875, file: !705, line: 269, type: !83)
!3882 = !DILocation(line: 0, scope: !3875)
!3883 = !DILocalVariable(name: "category", arg: 1, scope: !3884, file: !705, line: 91, type: !25)
!3884 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !705, file: !705, line: 91, type: !3876, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !704, retainedNodes: !3885)
!3885 = !{!3883, !3886, !3887, !3888, !3889}
!3886 = !DILocalVariable(name: "buf", arg: 2, scope: !3884, file: !705, line: 91, type: !22)
!3887 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3884, file: !705, line: 91, type: !83)
!3888 = !DILocalVariable(name: "result", scope: !3884, file: !705, line: 140, type: !38)
!3889 = !DILocalVariable(name: "length", scope: !3890, file: !705, line: 154, type: !83)
!3890 = distinct !DILexicalBlock(scope: !3891, file: !705, line: 153, column: 5)
!3891 = distinct !DILexicalBlock(scope: !3884, file: !705, line: 142, column: 7)
!3892 = !DILocation(line: 0, scope: !3884, inlinedAt: !3893)
!3893 = distinct !DILocation(line: 274, column: 10, scope: !3875)
!3894 = !DILocalVariable(name: "category", arg: 1, scope: !3895, file: !705, line: 60, type: !25)
!3895 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !705, file: !705, line: 60, type: !3896, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !704, retainedNodes: !3898)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{!38, !25}
!3898 = !{!3894, !3899}
!3899 = !DILocalVariable(name: "result", scope: !3895, file: !705, line: 62, type: !38)
!3900 = !DILocation(line: 0, scope: !3895, inlinedAt: !3901)
!3901 = distinct !DILocation(line: 140, column: 24, scope: !3884, inlinedAt: !3893)
!3902 = !DILocation(line: 62, column: 24, scope: !3895, inlinedAt: !3901)
!3903 = !DILocation(line: 142, column: 14, scope: !3891, inlinedAt: !3893)
!3904 = !DILocation(line: 142, column: 7, scope: !3884, inlinedAt: !3893)
!3905 = !DILocation(line: 145, column: 19, scope: !3906, inlinedAt: !3893)
!3906 = distinct !DILexicalBlock(scope: !3907, file: !705, line: 145, column: 11)
!3907 = distinct !DILexicalBlock(scope: !3891, file: !705, line: 143, column: 5)
!3908 = !DILocation(line: 145, column: 11, scope: !3907, inlinedAt: !3893)
!3909 = !DILocation(line: 149, column: 16, scope: !3906, inlinedAt: !3893)
!3910 = !DILocation(line: 149, column: 9, scope: !3906, inlinedAt: !3893)
!3911 = !DILocation(line: 154, column: 23, scope: !3890, inlinedAt: !3893)
!3912 = !DILocation(line: 0, scope: !3890, inlinedAt: !3893)
!3913 = !DILocation(line: 155, column: 18, scope: !3914, inlinedAt: !3893)
!3914 = distinct !DILexicalBlock(scope: !3890, file: !705, line: 155, column: 11)
!3915 = !DILocation(line: 155, column: 11, scope: !3890, inlinedAt: !3893)
!3916 = !DILocation(line: 157, column: 39, scope: !3917, inlinedAt: !3893)
!3917 = distinct !DILexicalBlock(scope: !3914, file: !705, line: 156, column: 9)
!3918 = !DILocalVariable(name: "__dest", arg: 1, scope: !3919, file: !2021, line: 26, type: !3444)
!3919 = distinct !DISubprogram(name: "memcpy", scope: !2021, file: !2021, line: 26, type: !3442, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !704, retainedNodes: !3920)
!3920 = !{!3918, !3921, !3922}
!3921 = !DILocalVariable(name: "__src", arg: 2, scope: !3919, file: !2021, line: 26, type: !3445)
!3922 = !DILocalVariable(name: "__len", arg: 3, scope: !3919, file: !2021, line: 26, type: !83)
!3923 = !DILocation(line: 0, scope: !3919, inlinedAt: !3924)
!3924 = distinct !DILocation(line: 157, column: 11, scope: !3917, inlinedAt: !3893)
!3925 = !DILocation(line: 29, column: 10, scope: !3919, inlinedAt: !3924)
!3926 = !DILocation(line: 158, column: 11, scope: !3917, inlinedAt: !3893)
!3927 = !DILocation(line: 162, column: 23, scope: !3928, inlinedAt: !3893)
!3928 = distinct !DILexicalBlock(scope: !3929, file: !705, line: 162, column: 15)
!3929 = distinct !DILexicalBlock(scope: !3914, file: !705, line: 161, column: 9)
!3930 = !DILocation(line: 162, column: 15, scope: !3929, inlinedAt: !3893)
!3931 = !DILocation(line: 167, column: 44, scope: !3932, inlinedAt: !3893)
!3932 = distinct !DILexicalBlock(scope: !3928, file: !705, line: 163, column: 13)
!3933 = !DILocation(line: 0, scope: !3919, inlinedAt: !3934)
!3934 = distinct !DILocation(line: 167, column: 15, scope: !3932, inlinedAt: !3893)
!3935 = !DILocation(line: 29, column: 10, scope: !3919, inlinedAt: !3934)
!3936 = !DILocation(line: 168, column: 15, scope: !3932, inlinedAt: !3893)
!3937 = !DILocation(line: 168, column: 32, scope: !3932, inlinedAt: !3893)
!3938 = !DILocation(line: 169, column: 13, scope: !3932, inlinedAt: !3893)
!3939 = !DILocation(line: 0, scope: !3891, inlinedAt: !3893)
!3940 = !DILocation(line: 274, column: 3, scope: !3875)
!3941 = distinct !DISubprogram(name: "setlocale_null", scope: !705, file: !705, line: 301, type: !3896, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !704, retainedNodes: !3942)
!3942 = !{!3943}
!3943 = !DILocalVariable(name: "category", arg: 1, scope: !3941, file: !705, line: 301, type: !25)
!3944 = !DILocation(line: 0, scope: !3941)
!3945 = !DILocation(line: 0, scope: !3895, inlinedAt: !3946)
!3946 = distinct !DILocation(line: 304, column: 10, scope: !3941)
!3947 = !DILocation(line: 62, column: 24, scope: !3895, inlinedAt: !3946)
!3948 = !DILocation(line: 304, column: 3, scope: !3941)
