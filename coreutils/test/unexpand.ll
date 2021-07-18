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
@convert_entire_line = dso_local local_unnamed_addr global i8 0, align 1, !dbg !52
@exit_status = dso_local local_unnamed_addr global i32 0, align 4, !dbg !95
@max_column_width = dso_local local_unnamed_addr global i64 0, align 8, !dbg !159
@first_free_tab = internal unnamed_addr global i64 0, align 8, !dbg !161
@tab_list = internal unnamed_addr global i64* null, align 8, !dbg !163
@n_tabs_allocated = internal unnamed_addr global i64 0, align 8, !dbg !165
@extend_size = internal unnamed_addr global i64 0, align 8, !dbg !167
@.str.13.11 = private unnamed_addr constant [47 x i8] c"'/' specifier only allowed with the last value\00", align 1
@increment_size = internal unnamed_addr global i64 0, align 8, !dbg !169
@.str.14.12 = private unnamed_addr constant [47 x i8] c"'+' specifier only allowed with the last value\00", align 1
@.str.1.13 = private unnamed_addr constant [41 x i8] c"'/' specifier not at start of number: %s\00", align 1
@.str.2.14 = private unnamed_addr constant [41 x i8] c"'+' specifier not at start of number: %s\00", align 1
@.str.3.15 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.4.16 = private unnamed_addr constant [25 x i8] c"tab stop is too large %s\00", align 1
@.str.5.17 = private unnamed_addr constant [43 x i8] c"tab size contains invalid character(s): %s\00", align 1
@.str.15.20 = private unnamed_addr constant [21 x i8] c"tab size cannot be 0\00", align 1
@.str.16.21 = private unnamed_addr constant [28 x i8] c"tab sizes must be ascending\00", align 1
@.str.17.22 = private unnamed_addr constant [45 x i8] c"'/' specifier is mutually exclusive with '+'\00", align 1
@tab_size = internal unnamed_addr global i64 0, align 8, !dbg !171
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !184
@stdin_argv = internal global [2 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9.27, i32 0, i32 0), i8* null], align 16, !dbg !176
@file_list = internal unnamed_addr global i8** null, align 8, !dbg !181
@.str.9.27 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@next_file.prev_file = internal unnamed_addr global i8* null, align 8, !dbg !97
@.str.6.30 = private unnamed_addr constant [10 x i8] c"prev_file\00", align 1
@.str.7.31 = private unnamed_addr constant [20 x i8] c"src/expand-common.c\00", align 1
@__PRETTY_FUNCTION__.next_file = private unnamed_addr constant [24 x i8] c"FILE *next_file(FILE *)\00", align 1
@.str.8.32 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.10.33 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.11.38 = private unnamed_addr constant [62 x i8] c"  -t, --tabs=LIST  use comma separated list of tab positions\0A\00", align 1
@.str.12.39 = private unnamed_addr constant [365 x i8] c"                     The last specified position can be prefixed with '/'\0A                     to specify a tab size to use after the last\0A                     explicitly specified tab stop.  Also a prefix of '+'\0A                     can be used to align remaining tab stops relative to\0A                     the last specified tab stop instead of the first column\0A\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0), align 8, !dbg !185
@.str.42 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !191
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !196
@.str.45 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.46 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.47 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !198
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !204
@.str.56 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.57 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.58 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.60, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.61, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.62, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.63, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.64, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.65, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.66, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.67, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.68, i32 0, i32 0), i8* null], align 16, !dbg !210
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !222
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !228
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !240
@.str.11.69 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.70 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.71 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.72 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.73 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.74 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.75 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !247
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !254
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !242
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !256
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !262
@.str.1.117 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.118 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.135 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.138 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.139 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !707 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !711, metadata !DIExpression()), !dbg !712
  %3 = icmp eq i32 %0, 0, !dbg !713
  br i1 %3, label %9, label %4, !dbg !715

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !716, !tbaa !718
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #26, !dbg !716
  %7 = load i8*, i8** @program_name, align 8, !dbg !716, !tbaa !718
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #26, !dbg !716
  br label %67, !dbg !716

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #26, !dbg !722
  %11 = load i8*, i8** @program_name, align 8, !dbg !722, !tbaa !718
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #26, !dbg !722
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 5) #26, !dbg !724
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !724, !tbaa !718
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !724
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.14, i64 0, i64 0), i32 5) #26, !dbg !725
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !725, !tbaa !718
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #26, !dbg !725
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.15, i64 0, i64 0), i32 5) #26, !dbg !731
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !731, !tbaa !718
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20) #26, !dbg !731
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([221 x i8], [221 x i8]* @.str.3, i64 0, i64 0), i32 5) #26, !dbg !734
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !734, !tbaa !718
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !734
  tail call void @emit_tab_list_info() #26, !dbg !735
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #26, !dbg !736
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !736, !tbaa !718
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !736
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #26, !dbg !737
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !737, !tbaa !718
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !737
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), metadata !738, metadata !DIExpression()) #26, !dbg !756
  %31 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !758
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %31) #26, !dbg !758
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !743, metadata !DIExpression()) #26, !dbg !759
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %31, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #26, !dbg !759
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), metadata !752, metadata !DIExpression()) #26, !dbg !756
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !753, metadata !DIExpression()) #26, !dbg !756
  %32 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !760
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !753, metadata !DIExpression()) #26, !dbg !756
  br label %33, !dbg !761

33:                                               ; preds = %38, %9
  %34 = phi i8* [ %41, %38 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), %9 ]
  %35 = phi %struct.infomap* [ %39, %38 ], [ %32, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !753, metadata !DIExpression()) #26, !dbg !756
  %36 = tail call i32 @strcmp(i8* nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* nonnull %34) #27, !dbg !762
  %37 = icmp eq i32 %36, 0, !dbg !762
  br i1 %37, label %43, label %38, !dbg !761

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 1, !dbg !763
  call void @llvm.dbg.value(metadata %struct.infomap* %39, metadata !753, metadata !DIExpression()) #26, !dbg !756
  %40 = getelementptr inbounds %struct.infomap, %struct.infomap* %39, i64 0, i32 0, !dbg !764
  %41 = load i8*, i8** %40, align 8, !dbg !764, !tbaa !765
  %42 = icmp eq i8* %41, null, !dbg !767
  br i1 %42, label %43, label %33, !dbg !768, !llvm.loop !769

43:                                               ; preds = %38, %33
  %44 = phi %struct.infomap* [ %35, %33 ], [ %39, %38 ]
  %45 = getelementptr inbounds %struct.infomap, %struct.infomap* %44, i64 0, i32 1, !dbg !771
  %46 = load i8*, i8** %45, align 8, !dbg !771, !tbaa !773
  %47 = icmp eq i8* %46, null, !dbg !774
  %48 = select i1 %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %46, !dbg !775
  call void @llvm.dbg.value(metadata i8* %48, metadata !752, metadata !DIExpression()) #26, !dbg !756
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0), i32 5) #26, !dbg !776
  %50 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.25, i64 0, i64 0)) #26, !dbg !776
  %51 = tail call i8* @setlocale(i32 5, i8* null) #26, !dbg !777
  call void @llvm.dbg.value(metadata i8* %51, metadata !755, metadata !DIExpression()) #26, !dbg !756
  %52 = icmp eq i8* %51, null, !dbg !778
  br i1 %52, label %60, label %53, !dbg !780

53:                                               ; preds = %43
  %54 = tail call i32 @strncmp(i8* nonnull %51, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i64 3) #27, !dbg !781
  %55 = icmp eq i32 %54, 0, !dbg !781
  br i1 %55, label %60, label %56, !dbg !782

56:                                               ; preds = %53
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.27, i64 0, i64 0), i32 5) #26, !dbg !783
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !783, !tbaa !718
  %59 = tail call i32 @fputs_unlocked(i8* %57, %struct._IO_FILE* %58) #26, !dbg !783
  br label %60, !dbg !785

60:                                               ; preds = %43, %53, %56
  %61 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0), i32 5) #26, !dbg !786
  %62 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %61, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)) #26, !dbg !786
  %63 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.29, i64 0, i64 0), i32 5) #26, !dbg !787
  %64 = icmp eq i8* %48, getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), !dbg !787
  %65 = select i1 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), !dbg !787
  %66 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %63, i8* %48, i8* %65) #26, !dbg !787
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %31) #26, !dbg !788
  br label %67

67:                                               ; preds = %60, %4
  tail call void @exit(i32 %0) #28, !dbg !789
  unreachable, !dbg !789
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !790 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !794 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !830 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !834 {
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !838, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.value(metadata i8** %1, metadata !839, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.value(metadata i8 0, metadata !840, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.value(metadata i8 0, metadata !843, metadata !DIExpression()), !dbg !844
  %5 = load i8*, i8** %1, align 8, !dbg !845, !tbaa !718
  tail call void @set_program_name(i8* %5) #26, !dbg !846
  %6 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #26, !dbg !847
  %7 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #26, !dbg !848
  %8 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #26, !dbg !849
  %9 = tail call i32 @atexit(void ()* nonnull @close_stdout) #26, !dbg !850
  br label %10, !dbg !851

10:                                               ; preds = %40, %2
  %11 = phi i64 [ %45, %40 ], [ undef, %2 ]
  %12 = phi i8 [ %41, %40 ], [ 0, %2 ]
  %13 = phi i8 [ %18, %40 ], [ 0, %2 ]
  br label %14, !dbg !851

14:                                               ; preds = %30, %10
  %15 = phi i8 [ %12, %10 ], [ 0, %30 ]
  %16 = phi i8 [ %13, %10 ], [ %18, %30 ]
  br label %17, !dbg !851

17:                                               ; preds = %19, %14
  %18 = phi i8 [ %16, %14 ], [ 1, %19 ]
  br label %19, !dbg !851

19:                                               ; preds = %25, %17
  call void @llvm.dbg.value(metadata i64 %11, metadata !841, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.value(metadata i8 %18, metadata !843, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.value(metadata i8 %15, metadata !840, metadata !DIExpression()), !dbg !844
  %20 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #26, !dbg !852
  call void @llvm.dbg.value(metadata i32 %20, metadata !842, metadata !DIExpression()), !dbg !844
  switch i32 %20, label %35 [
    i32 -1, label %49
    i32 63, label %21
    i32 97, label %22
    i32 116, label %23
    i32 128, label %17
    i32 44, label %26
    i32 -130, label %31
    i32 -131, label %32
  ], !dbg !851, !llvm.loop !853

21:                                               ; preds = %19
  tail call void @usage(i32 1) #29, !dbg !855
  unreachable, !dbg !855

22:                                               ; preds = %19
  store i8 1, i8* @convert_entire_line, align 1, !dbg !858, !tbaa !859
  br label %25, !dbg !861

23:                                               ; preds = %19
  store i8 1, i8* @convert_entire_line, align 1, !dbg !862, !tbaa !859
  %24 = load i8*, i8** @optarg, align 8, !dbg !863, !tbaa !718
  tail call void @parse_tab_stops(i8* %24) #26, !dbg !864
  br label %25, !dbg !865

25:                                               ; preds = %23, %22
  br label %19, !dbg !844, !llvm.loop !853

26:                                               ; preds = %19
  %27 = and i8 %15, 1, !dbg !866
  %28 = icmp eq i8 %27, 0, !dbg !866
  br i1 %28, label %30, label %29, !dbg !868

29:                                               ; preds = %26
  tail call void @add_tab_stop(i64 %11) #26, !dbg !869
  br label %30, !dbg !869

30:                                               ; preds = %29, %26
  br label %14, !dbg !851, !llvm.loop !853

31:                                               ; preds = %19
  tail call void @usage(i32 0) #29, !dbg !870
  unreachable, !dbg !870

32:                                               ; preds = %19
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !871, !tbaa !718
  %34 = load i8*, i8** @Version, align 8, !dbg !871, !tbaa !718
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* null) #26, !dbg !871
  tail call void @exit(i32 0) #28, !dbg !871
  unreachable, !dbg !871

35:                                               ; preds = %19
  %36 = and i8 %15, 1, !dbg !872
  %37 = icmp eq i8 %36, 0, !dbg !872
  %38 = select i1 %37, i64 0, i64 %11, !dbg !874
  call void @llvm.dbg.value(metadata i64 %38, metadata !841, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.value(metadata i8 undef, metadata !840, metadata !DIExpression()), !dbg !844
  %39 = icmp ugt i64 %38, 1844674407370955161, !dbg !875
  br i1 %39, label %47, label %40, !dbg !875

40:                                               ; preds = %35
  %41 = select i1 %37, i8 1, i8 %15, !dbg !874
  call void @llvm.dbg.value(metadata i8 %41, metadata !840, metadata !DIExpression()), !dbg !844
  %42 = mul nuw i64 %38, 10, !dbg !875
  %43 = add nsw i32 %20, -48, !dbg !875
  %44 = sext i32 %43 to i64, !dbg !875
  %45 = add i64 %42, %44, !dbg !875
  %46 = icmp ult i64 %45, %38, !dbg !875
  call void @llvm.dbg.value(metadata i64 undef, metadata !841, metadata !DIExpression()), !dbg !844
  br i1 %46, label %47, label %10, !dbg !877, !llvm.loop !853

47:                                               ; preds = %35, %40
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i32 5) #26, !dbg !878
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %48) #26, !dbg !878
  unreachable, !dbg !878

49:                                               ; preds = %19
  %50 = icmp eq i8 %18, 0, !dbg !879
  br i1 %50, label %52, label %51, !dbg !881

51:                                               ; preds = %49
  store i8 0, i8* @convert_entire_line, align 1, !dbg !882, !tbaa !859
  br label %52, !dbg !883

52:                                               ; preds = %51, %49
  %53 = and i8 %15, 1, !dbg !884
  %54 = icmp eq i8 %53, 0, !dbg !884
  br i1 %54, label %56, label %55, !dbg !886

55:                                               ; preds = %52
  tail call void @add_tab_stop(i64 %11) #26, !dbg !887
  br label %56, !dbg !887

56:                                               ; preds = %55, %52
  tail call void @finalize_tab_stops() #26, !dbg !888
  %57 = load i32, i32* @optind, align 4, !dbg !889, !tbaa !890
  %58 = icmp slt i32 %57, %0, !dbg !892
  %59 = sext i32 %57 to i64, !dbg !893
  %60 = getelementptr inbounds i8*, i8** %1, i64 %59, !dbg !893
  %61 = select i1 %58, i8** %60, i8** null, !dbg !893
  tail call void @set_file_list(i8** %61) #26, !dbg !894
  %62 = tail call %struct._IO_FILE* @next_file(%struct._IO_FILE* null) #26, !dbg !895
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %62, metadata !898, metadata !DIExpression()) #26, !dbg !926
  %63 = icmp eq %struct._IO_FILE* %62, null, !dbg !927
  br i1 %63, label %220, label %64, !dbg !929

64:                                               ; preds = %56
  %65 = load i64, i64* @max_column_width, align 8, !dbg !930, !tbaa !931
  %66 = tail call noalias i8* @xmalloc(i64 %65) #26, !dbg !933
  call void @llvm.dbg.value(metadata i8* %66, metadata !901, metadata !DIExpression()) #26, !dbg !926
  %67 = bitcast i64* %3 to i8*
  br label %68, !dbg !934

68:                                               ; preds = %219, %64
  %69 = phi %struct._IO_FILE* [ %62, %64 ], [ %97, %219 ], !dbg !926
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %69, metadata !898, metadata !DIExpression()) #26, !dbg !926
  call void @llvm.dbg.value(metadata i8 1, metadata !904, metadata !DIExpression()) #26, !dbg !935
  call void @llvm.dbg.value(metadata i64 0, metadata !905, metadata !DIExpression()) #26, !dbg !935
  call void @llvm.dbg.value(metadata i64 0, metadata !906, metadata !DIExpression()) #26, !dbg !935
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %67) #26, !dbg !936
  call void @llvm.dbg.value(metadata i64 0, metadata !907, metadata !DIExpression()) #26, !dbg !935
  store i64 0, i64* %3, align 8, !dbg !937, !tbaa !931
  call void @llvm.dbg.value(metadata i8 0, metadata !908, metadata !DIExpression()) #26, !dbg !935
  call void @llvm.dbg.value(metadata i8 1, metadata !909, metadata !DIExpression()) #26, !dbg !935
  call void @llvm.dbg.value(metadata i64 0, metadata !910, metadata !DIExpression()) #26, !dbg !935
  br label %70, !dbg !938

70:                                               ; preds = %211, %68
  %71 = phi i8 [ 1, %68 ], [ %212, %211 ], !dbg !935
  %72 = phi i64 [ 0, %68 ], [ %213, %211 ], !dbg !935
  %73 = phi i8 [ 0, %68 ], [ %214, %211 ], !dbg !935
  %74 = phi i8 [ 1, %68 ], [ %215, %211 ], !dbg !935
  %75 = phi i64 [ 0, %68 ], [ %216, %211 ], !dbg !935
  %76 = phi %struct._IO_FILE* [ %69, %68 ], [ %97, %211 ], !dbg !926
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %76, metadata !898, metadata !DIExpression()) #26, !dbg !926
  call void @llvm.dbg.value(metadata i64 %75, metadata !910, metadata !DIExpression()) #26, !dbg !935
  call void @llvm.dbg.value(metadata i8 %74, metadata !909, metadata !DIExpression()) #26, !dbg !935
  call void @llvm.dbg.value(metadata i8 %73, metadata !908, metadata !DIExpression()) #26, !dbg !935
  call void @llvm.dbg.value(metadata i64 %72, metadata !905, metadata !DIExpression()) #26, !dbg !935
  call void @llvm.dbg.value(metadata i8 %71, metadata !904, metadata !DIExpression()) #26, !dbg !935
  br label %77, !dbg !939

77:                                               ; preds = %92, %70
  %78 = phi %struct._IO_FILE* [ %76, %70 ], [ %93, %92 ], !dbg !926
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %78, metadata !898, metadata !DIExpression()) #26, !dbg !926
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %78, metadata !940, metadata !DIExpression()) #26, !dbg !946
  %79 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %78, i64 0, i32 1, !dbg !948
  %80 = load i8*, i8** %79, align 8, !dbg !948, !tbaa !949
  %81 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %78, i64 0, i32 2, !dbg !948
  %82 = load i8*, i8** %81, align 8, !dbg !948, !tbaa !952
  %83 = icmp ult i8* %80, %82, !dbg !948
  br i1 %83, label %84, label %89, !dbg !948, !prof !953

84:                                               ; preds = %77
  %85 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %78, i64 0, i32 1, !dbg !948
  %86 = getelementptr inbounds i8, i8* %80, i64 1, !dbg !948
  store i8* %86, i8** %85, align 8, !dbg !948, !tbaa !949
  %87 = load i8, i8* %80, align 1, !dbg !948, !tbaa !954
  %88 = zext i8 %87 to i32, !dbg !948
  call void @llvm.dbg.value(metadata i32 undef, metadata !902, metadata !DIExpression()) #26, !dbg !935
  br label %95, !dbg !955

89:                                               ; preds = %77
  %90 = call i32 @__uflow(%struct._IO_FILE* nonnull %78) #26, !dbg !948
  call void @llvm.dbg.value(metadata i32 %90, metadata !902, metadata !DIExpression()) #26, !dbg !935
  %91 = icmp slt i32 %90, 0, !dbg !956
  br i1 %91, label %92, label %95, !dbg !955

92:                                               ; preds = %89
  %93 = call %struct._IO_FILE* @next_file(%struct._IO_FILE* nonnull %78) #26, !dbg !957
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %93, metadata !898, metadata !DIExpression()) #26, !dbg !926
  %94 = icmp eq %struct._IO_FILE* %93, null, !dbg !955
  br i1 %94, label %95, label %77, !dbg !939, !llvm.loop !958

95:                                               ; preds = %92, %89, %84
  %96 = phi i32 [ %88, %84 ], [ %90, %89 ], [ %90, %92 ]
  %97 = phi %struct._IO_FILE* [ %78, %84 ], [ null, %92 ], [ %78, %89 ], !dbg !926
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %97, metadata !898, metadata !DIExpression()) #26, !dbg !926
  %98 = and i8 %71, 1, !dbg !960
  %99 = icmp eq i8 %98, 0, !dbg !960
  br i1 %99, label %184, label %100, !dbg !961

100:                                              ; preds = %95
  %101 = tail call i16** @__ctype_b_loc() #30, !dbg !962
  %102 = load i16*, i16** %101, align 8, !dbg !962, !tbaa !718
  %103 = sext i32 %96 to i64, !dbg !962
  %104 = getelementptr inbounds i16, i16* %102, i64 %103, !dbg !962
  %105 = load i16, i16* %104, align 2, !dbg !962, !tbaa !963
  %106 = and i16 %105, 1, !dbg !962
  %107 = icmp ne i16 %106, 0, !dbg !964
  %108 = trunc i16 %106 to i8, !dbg !965
  call void @llvm.dbg.value(metadata i8 %108, metadata !911, metadata !DIExpression()) #26, !dbg !966
  br i1 %107, label %109, label %140, !dbg !967

109:                                              ; preds = %100
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %4) #26, !dbg !968
  call void @llvm.dbg.value(metadata i64* %3, metadata !907, metadata !DIExpression(DW_OP_deref)) #26, !dbg !935
  call void @llvm.dbg.value(metadata i8* %4, metadata !915, metadata !DIExpression(DW_OP_deref)) #26, !dbg !969
  %110 = call i64 @get_next_tab_column(i64 %72, i64* nonnull %3, i8* nonnull %4) #26, !dbg !970
  call void @llvm.dbg.value(metadata i64 %110, metadata !906, metadata !DIExpression()) #26, !dbg !935
  %111 = load i8, i8* %4, align 1, !dbg !971, !tbaa !859, !range !973
  call void @llvm.dbg.value(metadata i8 %111, metadata !915, metadata !DIExpression()) #26, !dbg !969
  %112 = icmp eq i8 %111, 0, !dbg !971
  %113 = select i1 %112, i8 %71, i8 0, !dbg !974
  call void @llvm.dbg.value(metadata i8 %113, metadata !904, metadata !DIExpression()) #26, !dbg !935
  %114 = and i8 %113, 1, !dbg !975
  %115 = icmp eq i8 %114, 0, !dbg !975
  br i1 %115, label %136, label %116, !dbg !977

116:                                              ; preds = %109
  %117 = icmp ult i64 %110, %72, !dbg !978
  br i1 %117, label %118, label %120, !dbg !981

118:                                              ; preds = %116
  %119 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i64 0, i64 0), i32 5) #26, !dbg !982
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %119) #26, !dbg !982
  unreachable, !dbg !982

120:                                              ; preds = %116
  %121 = icmp eq i32 %96, 9, !dbg !983
  br i1 %121, label %122, label %124, !dbg !985

122:                                              ; preds = %120
  call void @llvm.dbg.value(metadata i64 %110, metadata !905, metadata !DIExpression()) #26, !dbg !935
  %123 = icmp eq i64 %75, 0, !dbg !986
  br i1 %123, label %132, label %130, !dbg !989

124:                                              ; preds = %120
  %125 = add i64 %72, 1, !dbg !990
  call void @llvm.dbg.value(metadata i64 %125, metadata !905, metadata !DIExpression()) #26, !dbg !935
  %126 = and i8 %74, 1, !dbg !992
  %127 = icmp ne i8 %126, 0, !dbg !992
  %128 = icmp eq i64 %125, %110
  %129 = and i1 %127, %128, !dbg !994
  br i1 %129, label %130, label %179, !dbg !994

130:                                              ; preds = %124, %122
  %131 = phi i64 [ %110, %122 ], [ %125, %124 ]
  store i8 9, i8* %66, align 1, !dbg !995, !tbaa !954
  br label %132, !dbg !996

132:                                              ; preds = %130, %122
  %133 = phi i64 [ %110, %122 ], [ %131, %130 ], !dbg !995
  call void @llvm.dbg.value(metadata i32 9, metadata !902, metadata !DIExpression()) #26, !dbg !935
  call void @llvm.dbg.value(metadata i64 %133, metadata !905, metadata !DIExpression()) #26, !dbg !935
  %134 = and i8 %73, 1, !dbg !996
  %135 = zext i8 %134 to i64, !dbg !996
  call void @llvm.dbg.value(metadata i64 %135, metadata !910, metadata !DIExpression()) #26, !dbg !935
  br label %136, !dbg !997

136:                                              ; preds = %132, %109
  %137 = phi i64 [ %72, %109 ], [ %133, %132 ]
  %138 = phi i64 [ %75, %109 ], [ %135, %132 ]
  %139 = phi i32 [ %96, %109 ], [ 9, %132 ]
  call void @llvm.dbg.value(metadata i32 %96, metadata !902, metadata !DIExpression()) #26, !dbg !935
  call void @llvm.dbg.value(metadata i64 %182, metadata !910, metadata !DIExpression()) #26, !dbg !935
  call void @llvm.dbg.value(metadata i8 1, metadata !909, metadata !DIExpression()) #26, !dbg !935
  call void @llvm.dbg.value(metadata i8 %180, metadata !908, metadata !DIExpression()) #26, !dbg !935
  call void @llvm.dbg.value(metadata i64 %125, metadata !905, metadata !DIExpression()) #26, !dbg !935
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %4) #26, !dbg !998
  br label %155

140:                                              ; preds = %100
  %141 = icmp eq i32 %96, 8, !dbg !999
  br i1 %141, label %142, label %150, !dbg !1001

142:                                              ; preds = %140
  %143 = icmp ne i64 %72, 0, !dbg !1002
  %144 = sext i1 %143 to i64, !dbg !1004
  %145 = add i64 %72, %144, !dbg !1005
  call void @llvm.dbg.value(metadata i64 %145, metadata !905, metadata !DIExpression()) #26, !dbg !935
  call void @llvm.dbg.value(metadata i64 %145, metadata !906, metadata !DIExpression()) #26, !dbg !935
  %146 = load i64, i64* %3, align 8, !dbg !1006, !tbaa !931
  call void @llvm.dbg.value(metadata i64 %146, metadata !907, metadata !DIExpression()) #26, !dbg !935
  %147 = icmp ne i64 %146, 0, !dbg !1007
  %148 = sext i1 %147 to i64, !dbg !1008
  %149 = add i64 %146, %148, !dbg !1009
  call void @llvm.dbg.value(metadata i64 %149, metadata !907, metadata !DIExpression()) #26, !dbg !935
  store i64 %149, i64* %3, align 8, !dbg !1009, !tbaa !931
  br label %155, !dbg !1010

150:                                              ; preds = %140
  %151 = add i64 %72, 1, !dbg !1011
  call void @llvm.dbg.value(metadata i64 %151, metadata !905, metadata !DIExpression()) #26, !dbg !935
  %152 = icmp eq i64 %151, 0, !dbg !1013
  br i1 %152, label %153, label %155, !dbg !1015

153:                                              ; preds = %150
  %154 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i64 0, i64 0), i32 5) #26, !dbg !1016
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %154) #26, !dbg !1016
  unreachable, !dbg !1016

155:                                              ; preds = %150, %142, %136
  %156 = phi i8 [ %71, %142 ], [ %71, %150 ], [ %113, %136 ], !dbg !935
  %157 = phi i64 [ %145, %142 ], [ %151, %150 ], [ %137, %136 ], !dbg !1017
  %158 = phi i64 [ %75, %142 ], [ %75, %150 ], [ %138, %136 ], !dbg !935
  %159 = phi i32 [ 8, %142 ], [ %96, %150 ], [ %139, %136 ], !dbg !1018
  call void @llvm.dbg.value(metadata i32 %159, metadata !902, metadata !DIExpression()) #26, !dbg !935
  call void @llvm.dbg.value(metadata i64 %158, metadata !910, metadata !DIExpression()) #26, !dbg !935
  call void @llvm.dbg.value(metadata i8 %73, metadata !908, metadata !DIExpression()) #26, !dbg !935
  call void @llvm.dbg.value(metadata i64 %157, metadata !905, metadata !DIExpression()) #26, !dbg !935
  call void @llvm.dbg.value(metadata i8 %156, metadata !904, metadata !DIExpression()) #26, !dbg !935
  switch i64 %158, label %160 [
    i64 0, label %172
    i64 1, label %164
  ], !dbg !1019

160:                                              ; preds = %155
  %161 = and i8 %73, 1, !dbg !1020
  %162 = icmp eq i8 %161, 0, !dbg !1020
  br i1 %162, label %164, label %163, !dbg !1022

163:                                              ; preds = %160
  store i8 9, i8* %66, align 1, !dbg !1023, !tbaa !954
  br label %164, !dbg !1024

164:                                              ; preds = %155, %160, %163
  %165 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1025, !tbaa !718
  %166 = call i64 @fwrite_unlocked(i8* %66, i64 1, i64 %158, %struct._IO_FILE* %165) #26, !dbg !1025
  %167 = icmp eq i64 %166, %158, !dbg !1026
  br i1 %167, label %172, label %168, !dbg !1027

168:                                              ; preds = %164
  %169 = tail call i32* @__errno_location() #30, !dbg !1028
  %170 = load i32, i32* %169, align 4, !dbg !1028, !tbaa !890
  %171 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0), i32 5) #26, !dbg !1028
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %170, i8* %171) #26, !dbg !1028
  unreachable, !dbg !1028

172:                                              ; preds = %164, %155
  %173 = phi i8 [ %73, %155 ], [ 0, %164 ], !dbg !935
  call void @llvm.dbg.value(metadata i64 0, metadata !910, metadata !DIExpression()) #26, !dbg !935
  call void @llvm.dbg.value(metadata i8 %173, metadata !908, metadata !DIExpression()) #26, !dbg !935
  call void @llvm.dbg.value(metadata i8 %108, metadata !909, metadata !DIExpression()) #26, !dbg !935
  %174 = load i8, i8* @convert_entire_line, align 1, !dbg !1029, !tbaa !859, !range !973
  %175 = icmp ne i8 %174, 0, !dbg !1029
  %176 = or i1 %107, %175, !dbg !1030
  %177 = zext i1 %176 to i8, !dbg !1030
  %178 = and i8 %156, %177, !dbg !1031
  call void @llvm.dbg.value(metadata i32 %96, metadata !902, metadata !DIExpression()) #26, !dbg !935
  call void @llvm.dbg.value(metadata i8 1, metadata !909, metadata !DIExpression()) #26, !dbg !935
  br label %184

179:                                              ; preds = %124
  %180 = select i1 %128, i8 1, i8 %73, !dbg !1032
  call void @llvm.dbg.value(metadata i8 %180, metadata !908, metadata !DIExpression()) #26, !dbg !935
  %181 = trunc i32 %96 to i8, !dbg !1034
  %182 = add i64 %75, 1, !dbg !1035
  call void @llvm.dbg.value(metadata i64 %182, metadata !910, metadata !DIExpression()) #26, !dbg !935
  %183 = getelementptr inbounds i8, i8* %66, i64 %75, !dbg !1036
  store i8 %181, i8* %183, align 1, !dbg !1037, !tbaa !954
  call void @llvm.dbg.value(metadata i32 %96, metadata !902, metadata !DIExpression()) #26, !dbg !935
  call void @llvm.dbg.value(metadata i8 1, metadata !909, metadata !DIExpression()) #26, !dbg !935
  call void @llvm.dbg.value(metadata i64 %125, metadata !905, metadata !DIExpression()) #26, !dbg !935
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %4) #26, !dbg !998
  call void @llvm.dbg.value(metadata i8 %113, metadata !904, metadata !DIExpression()) #26, !dbg !935
  br label %211

184:                                              ; preds = %172, %95
  %185 = phi i8 [ %71, %95 ], [ %178, %172 ], !dbg !935
  %186 = phi i64 [ %72, %95 ], [ %157, %172 ], !dbg !935
  %187 = phi i8 [ %73, %95 ], [ %173, %172 ], !dbg !935
  %188 = phi i8 [ %74, %95 ], [ %108, %172 ], !dbg !935
  %189 = phi i64 [ %75, %95 ], [ 0, %172 ], !dbg !935
  %190 = phi i32 [ %96, %95 ], [ %159, %172 ], !dbg !1018
  call void @llvm.dbg.value(metadata i32 %190, metadata !902, metadata !DIExpression()) #26, !dbg !935
  call void @llvm.dbg.value(metadata i64 %189, metadata !910, metadata !DIExpression()) #26, !dbg !935
  call void @llvm.dbg.value(metadata i8 %188, metadata !909, metadata !DIExpression()) #26, !dbg !935
  call void @llvm.dbg.value(metadata i8 %187, metadata !908, metadata !DIExpression()) #26, !dbg !935
  call void @llvm.dbg.value(metadata i64 %186, metadata !905, metadata !DIExpression()) #26, !dbg !935
  call void @llvm.dbg.value(metadata i8 %185, metadata !904, metadata !DIExpression()) #26, !dbg !935
  %191 = icmp slt i32 %190, 0, !dbg !1038
  br i1 %191, label %192, label %193, !dbg !1040

192:                                              ; preds = %184
  call void @free(i8* %66) #26, !dbg !1041
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %67) #26, !dbg !1043
  br label %220

193:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i32 %190, metadata !1044, metadata !DIExpression()) #26, !dbg !1049
  %194 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1052, !tbaa !718
  %195 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %194, i64 0, i32 5, !dbg !1052
  %196 = load i8*, i8** %195, align 8, !dbg !1052, !tbaa !1053
  %197 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %194, i64 0, i32 6, !dbg !1052
  %198 = load i8*, i8** %197, align 8, !dbg !1052, !tbaa !1054
  %199 = icmp ult i8* %196, %198, !dbg !1052
  br i1 %199, label %200, label %203, !dbg !1052, !prof !953

200:                                              ; preds = %193
  %201 = trunc i32 %190 to i8, !dbg !1052
  %202 = getelementptr inbounds i8, i8* %196, i64 1, !dbg !1052
  store i8* %202, i8** %195, align 8, !dbg !1052, !tbaa !1053
  store i8 %201, i8* %196, align 1, !dbg !1052, !tbaa !954
  br label %211, !dbg !1055

203:                                              ; preds = %193
  %204 = and i32 %190, 255, !dbg !1052
  %205 = call i32 @__overflow(%struct._IO_FILE* nonnull %194, i32 %204) #26, !dbg !1052
  %206 = icmp slt i32 %205, 0, !dbg !1056
  br i1 %206, label %207, label %211, !dbg !1055

207:                                              ; preds = %203
  %208 = tail call i32* @__errno_location() #30, !dbg !1057
  %209 = load i32, i32* %208, align 4, !dbg !1057, !tbaa !890
  %210 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0), i32 5) #26, !dbg !1057
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %209, i8* %210) #26, !dbg !1057
  unreachable, !dbg !1057

211:                                              ; preds = %203, %200, %179
  %212 = phi i8 [ %185, %203 ], [ %113, %179 ], [ %185, %200 ], !dbg !1031
  %213 = phi i64 [ %186, %203 ], [ %125, %179 ], [ %186, %200 ], !dbg !1058
  %214 = phi i8 [ %187, %203 ], [ %180, %179 ], [ %187, %200 ], !dbg !1059
  %215 = phi i8 [ %188, %203 ], [ 1, %179 ], [ %188, %200 ], !dbg !1060
  %216 = phi i64 [ %189, %203 ], [ %182, %179 ], [ %189, %200 ], !dbg !1061
  %217 = phi i32 [ %190, %203 ], [ %96, %179 ], [ %190, %200 ], !dbg !1018
  call void @llvm.dbg.value(metadata i32 %217, metadata !902, metadata !DIExpression()) #26, !dbg !935
  call void @llvm.dbg.value(metadata i64 %216, metadata !910, metadata !DIExpression()) #26, !dbg !935
  call void @llvm.dbg.value(metadata i8 %215, metadata !909, metadata !DIExpression()) #26, !dbg !935
  call void @llvm.dbg.value(metadata i8 %214, metadata !908, metadata !DIExpression()) #26, !dbg !935
  call void @llvm.dbg.value(metadata i64 %213, metadata !905, metadata !DIExpression()) #26, !dbg !935
  call void @llvm.dbg.value(metadata i8 %212, metadata !904, metadata !DIExpression()) #26, !dbg !935
  %218 = icmp eq i32 %217, 10, !dbg !1062
  br i1 %218, label %219, label %70, !dbg !1063, !llvm.loop !1064

219:                                              ; preds = %211
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %67) #26, !dbg !1043
  br label %68

220:                                              ; preds = %56, %192
  call void @cleanup_file_list_stdin() #26, !dbg !1066
  %221 = load i32, i32* @exit_status, align 4, !dbg !1067, !tbaa !890
  ret i32 %221, !dbg !1068
}

; Function Attrs: nounwind
declare !dbg !1069 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1072 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1075 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1080 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !1086 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare !dbg !1090 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #10

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @add_tab_stop(i64 %0) local_unnamed_addr #8 !dbg !1095 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1099, metadata !DIExpression()), !dbg !1102
  %2 = load i64, i64* @first_free_tab, align 8, !dbg !1103, !tbaa !931
  %3 = icmp eq i64 %2, 0, !dbg !1103
  br i1 %3, label %9, label %4, !dbg !1103

4:                                                ; preds = %1
  %5 = load i64*, i64** @tab_list, align 8, !dbg !1104, !tbaa !718
  %6 = add i64 %2, -1, !dbg !1105
  %7 = getelementptr inbounds i64, i64* %5, i64 %6, !dbg !1104
  %8 = load i64, i64* %7, align 8, !dbg !1104, !tbaa !931
  br label %9, !dbg !1103

9:                                                ; preds = %1, %4
  %10 = phi i64 [ %8, %4 ], [ 0, %1 ], !dbg !1103
  call void @llvm.dbg.value(metadata i64 %10, metadata !1100, metadata !DIExpression()), !dbg !1102
  %11 = tail call i64 @llvm.usub.sat.i64(i64 %0, i64 %10), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %11, metadata !1101, metadata !DIExpression()), !dbg !1102
  %12 = load i64, i64* @n_tabs_allocated, align 8, !dbg !1107, !tbaa !931
  %13 = icmp eq i64 %2, %12, !dbg !1109
  br i1 %13, label %16, label %14, !dbg !1110

14:                                               ; preds = %9
  %15 = load i64*, i64** @tab_list, align 8, !dbg !1111, !tbaa !718
  br label %36, !dbg !1110

16:                                               ; preds = %9
  %17 = load i8*, i8** bitcast (i64** @tab_list to i8**), align 8, !dbg !1112, !tbaa !718
  call void @llvm.dbg.value(metadata i8* %17, metadata !87, metadata !DIExpression()) #26, !dbg !1113
  call void @llvm.dbg.value(metadata i64* @n_tabs_allocated, metadata !88, metadata !DIExpression()) #26, !dbg !1113
  call void @llvm.dbg.value(metadata i64 8, metadata !89, metadata !DIExpression()) #26, !dbg !1113
  call void @llvm.dbg.value(metadata i64 %12, metadata !90, metadata !DIExpression()) #26, !dbg !1113
  %18 = icmp eq i8* %17, null, !dbg !1115
  br i1 %18, label %19, label %23, !dbg !1117

19:                                               ; preds = %16
  br i1 %3, label %30, label %20, !dbg !1118

20:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 %12, metadata !90, metadata !DIExpression()) #26, !dbg !1113
  %21 = icmp ugt i64 %2, 1152921504606846975, !dbg !1120
  br i1 %21, label %22, label %30, !dbg !1122

22:                                               ; preds = %20
  tail call void @xalloc_die() #28, !dbg !1123
  unreachable, !dbg !1123

23:                                               ; preds = %16
  %24 = icmp ult i64 %2, 768614336404564650, !dbg !1124
  br i1 %24, label %26, label %25, !dbg !1127

25:                                               ; preds = %23
  tail call void @xalloc_die() #28, !dbg !1128
  unreachable, !dbg !1128

26:                                               ; preds = %23
  %27 = lshr i64 %2, 1, !dbg !1129
  %28 = add nuw nsw i64 %2, 1, !dbg !1130
  %29 = add nuw nsw i64 %28, %27, !dbg !1131
  call void @llvm.dbg.value(metadata i64 %29, metadata !90, metadata !DIExpression()) #26, !dbg !1113
  br label %30

30:                                               ; preds = %19, %20, %26
  %31 = phi i64 [ %29, %26 ], [ %2, %20 ], [ 16, %19 ], !dbg !1113
  call void @llvm.dbg.value(metadata i64 %31, metadata !90, metadata !DIExpression()) #26, !dbg !1113
  store i64 %31, i64* @n_tabs_allocated, align 8, !dbg !1132, !tbaa !931
  %32 = shl nuw nsw i64 %31, 3, !dbg !1133
  %33 = tail call i8* @xrealloc(i8* %17, i64 %32) #26, !dbg !1134
  store i8* %33, i8** bitcast (i64** @tab_list to i8**), align 8, !dbg !1135, !tbaa !718
  %34 = bitcast i8* %33 to i64*, !dbg !1136
  %35 = load i64, i64* @first_free_tab, align 8, !dbg !1137, !tbaa !931
  br label %36, !dbg !1136

36:                                               ; preds = %14, %30
  %37 = phi i64 [ %2, %14 ], [ %35, %30 ], !dbg !1137
  %38 = phi i64* [ %15, %14 ], [ %34, %30 ], !dbg !1111
  %39 = add i64 %37, 1, !dbg !1137
  store i64 %39, i64* @first_free_tab, align 8, !dbg !1137, !tbaa !931
  %40 = getelementptr inbounds i64, i64* %38, i64 %37, !dbg !1111
  store i64 %0, i64* %40, align 8, !dbg !1138, !tbaa !931
  %41 = load i64, i64* @max_column_width, align 8, !dbg !1139, !tbaa !931
  %42 = icmp ult i64 %41, %11, !dbg !1141
  br i1 %42, label %43, label %44, !dbg !1142

43:                                               ; preds = %36
  store i64 %11, i64* @max_column_width, align 8, !dbg !1143, !tbaa !931
  br label %44, !dbg !1145

44:                                               ; preds = %43, %36
  ret void, !dbg !1146
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_tab_stops(i8* %0) local_unnamed_addr #8 !dbg !1147 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1149, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata i8 0, metadata !1150, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata i64 0, metadata !1151, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata i8 0, metadata !1152, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata i8 0, metadata !1153, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata i8* null, metadata !1154, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata i8 1, metadata !1155, metadata !DIExpression()), !dbg !1168
  br label %2, !dbg !1169

2:                                                ; preds = %81, %1
  %3 = phi i64 [ 0, %1 ], [ %82, %81 ], !dbg !1170
  %4 = phi i8 [ 0, %1 ], [ %83, %81 ], !dbg !1171
  %5 = phi i8 [ 0, %1 ], [ %84, %81 ], !dbg !1172
  %6 = phi i8* [ null, %1 ], [ %85, %81 ], !dbg !1173
  %7 = phi i8 [ 1, %1 ], [ %86, %81 ], !dbg !1174
  %8 = phi i8 [ 0, %1 ], [ %87, %81 ], !dbg !1168
  %9 = phi i8* [ %0, %1 ], [ %89, %81 ]
  call void @llvm.dbg.value(metadata i64 %3, metadata !1151, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata i8* %9, metadata !1149, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata i8 %8, metadata !1150, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata i8 %7, metadata !1155, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata i8* %6, metadata !1154, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata i8 %5, metadata !1153, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata i8 %4, metadata !1152, metadata !DIExpression()), !dbg !1168
  %10 = load i8, i8* %9, align 1, !dbg !1175, !tbaa !954
  switch i8 %10, label %11 [
    i8 0, label %90
    i8 44, label %19
  ], !dbg !1176

11:                                               ; preds = %2
  %12 = tail call i16** @__ctype_b_loc() #30, !dbg !1177
  %13 = load i16*, i16** %12, align 8, !dbg !1177, !tbaa !718
  %14 = zext i8 %10 to i64
  %15 = getelementptr inbounds i16, i16* %13, i64 %14, !dbg !1177
  %16 = load i16, i16* %15, align 2, !dbg !1177, !tbaa !963
  %17 = and i16 %16, 1, !dbg !1177
  %18 = icmp eq i16 %17, 0, !dbg !1177
  br i1 %18, label %41, label %19, !dbg !1178

19:                                               ; preds = %2, %11
  %20 = and i8 %8, 1, !dbg !1179
  %21 = icmp eq i8 %20, 0, !dbg !1179
  br i1 %21, label %81, label %22, !dbg !1182

22:                                               ; preds = %19
  %23 = and i8 %4, 1, !dbg !1183
  %24 = icmp eq i8 %23, 0, !dbg !1183
  br i1 %24, label %31, label %25, !dbg !1186

25:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 %3, metadata !1187, metadata !DIExpression()) #26, !dbg !1193
  call void @llvm.dbg.value(metadata i8 1, metadata !1192, metadata !DIExpression()) #26, !dbg !1193
  %26 = load i64, i64* @extend_size, align 8, !dbg !1197, !tbaa !931
  %27 = icmp eq i64 %26, 0, !dbg !1197
  br i1 %27, label %28, label %29, !dbg !1199

28:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i8 undef, metadata !1192, metadata !DIExpression()) #26, !dbg !1193
  store i64 %3, i64* @extend_size, align 8, !dbg !1200, !tbaa !931
  br label %81, !dbg !1201

29:                                               ; preds = %25
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13.11, i64 0, i64 0), i32 5) #26, !dbg !1202
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %30) #26, !dbg !1204
  call void @llvm.dbg.value(metadata i8 undef, metadata !1192, metadata !DIExpression()) #26, !dbg !1193
  store i64 %3, i64* @extend_size, align 8, !dbg !1200, !tbaa !931
  br label %119, !dbg !1201

31:                                               ; preds = %22
  %32 = and i8 %5, 1, !dbg !1205
  %33 = icmp eq i8 %32, 0, !dbg !1205
  br i1 %33, label %40, label %34, !dbg !1207

34:                                               ; preds = %31
  call void @llvm.dbg.value(metadata i64 %3, metadata !1208, metadata !DIExpression()) #26, !dbg !1212
  call void @llvm.dbg.value(metadata i8 1, metadata !1211, metadata !DIExpression()) #26, !dbg !1212
  %35 = load i64, i64* @increment_size, align 8, !dbg !1216, !tbaa !931
  %36 = icmp eq i64 %35, 0, !dbg !1216
  br i1 %36, label %37, label %38, !dbg !1218

37:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i8 undef, metadata !1211, metadata !DIExpression()) #26, !dbg !1212
  store i64 %3, i64* @increment_size, align 8, !dbg !1219, !tbaa !931
  br label %81, !dbg !1220

38:                                               ; preds = %34
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.14.12, i64 0, i64 0), i32 5) #26, !dbg !1221
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %39) #26, !dbg !1223
  call void @llvm.dbg.value(metadata i8 undef, metadata !1211, metadata !DIExpression()) #26, !dbg !1212
  store i64 %3, i64* @increment_size, align 8, !dbg !1219, !tbaa !931
  br label %119, !dbg !1220

40:                                               ; preds = %31
  tail call void @add_tab_stop(i64 %3), !dbg !1224
  br label %81

41:                                               ; preds = %11
  switch i8 %10, label %54 [
    i8 47, label %42
    i8 43, label %48
  ], !dbg !1225

42:                                               ; preds = %41
  %43 = and i8 %8, 1, !dbg !1226
  %44 = icmp eq i8 %43, 0, !dbg !1226
  br i1 %44, label %81, label %45, !dbg !1229

45:                                               ; preds = %42
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1.13, i64 0, i64 0), i32 5) #26, !dbg !1230
  %47 = tail call i8* @quote(i8* nonnull %9) #26, !dbg !1232
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %46, i8* %47) #26, !dbg !1233
  call void @llvm.dbg.value(metadata i8 0, metadata !1155, metadata !DIExpression()), !dbg !1168
  br label %81, !dbg !1234

48:                                               ; preds = %41
  %49 = and i8 %8, 1, !dbg !1235
  %50 = icmp eq i8 %49, 0, !dbg !1235
  br i1 %50, label %81, label %51, !dbg !1238

51:                                               ; preds = %48
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2.14, i64 0, i64 0), i32 5) #26, !dbg !1239
  %53 = tail call i8* @quote(i8* nonnull %9) #26, !dbg !1241
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %52, i8* %53) #26, !dbg !1242
  call void @llvm.dbg.value(metadata i8 0, metadata !1155, metadata !DIExpression()), !dbg !1168
  br label %81, !dbg !1243

54:                                               ; preds = %41
  %55 = sext i8 %10 to i32, !dbg !1244
  %56 = add nsw i32 %55, -48, !dbg !1245
  %57 = icmp ult i32 %56, 10, !dbg !1245
  br i1 %57, label %58, label %78, !dbg !1246

58:                                               ; preds = %54
  %59 = and i8 %8, 1, !dbg !1247
  %60 = icmp eq i8 %59, 0, !dbg !1247
  %61 = select i1 %60, i64 0, i64 %3, !dbg !1249
  %62 = select i1 %60, i8* %9, i8* %6, !dbg !1249
  %63 = select i1 %60, i8 1, i8 %8, !dbg !1249
  call void @llvm.dbg.value(metadata i64 %61, metadata !1151, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata i8 %63, metadata !1150, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata i8* %62, metadata !1154, metadata !DIExpression()), !dbg !1168
  %64 = icmp ugt i64 %61, 1844674407370955161, !dbg !1250
  br i1 %64, label %71, label %65, !dbg !1250

65:                                               ; preds = %58
  %66 = mul nuw i64 %61, 10, !dbg !1250
  %67 = sext i8 %10 to i64, !dbg !1250
  %68 = add nsw i64 %67, -48, !dbg !1250
  %69 = add i64 %68, %66, !dbg !1250
  %70 = icmp ult i64 %69, %61, !dbg !1250
  call void @llvm.dbg.value(metadata i64 undef, metadata !1151, metadata !DIExpression()), !dbg !1168
  br i1 %70, label %71, label %81, !dbg !1251

71:                                               ; preds = %58, %65
  %72 = tail call i64 @strspn(i8* %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3.15, i64 0, i64 0)) #27, !dbg !1252
  call void @llvm.dbg.value(metadata i64 %72, metadata !1156, metadata !DIExpression()), !dbg !1253
  %73 = tail call noalias i8* @xstrndup(i8* %62, i64 %72) #26, !dbg !1254
  call void @llvm.dbg.value(metadata i8* %73, metadata !1167, metadata !DIExpression()), !dbg !1253
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4.16, i64 0, i64 0), i32 5) #26, !dbg !1255
  %75 = tail call i8* @quote(i8* %73) #26, !dbg !1256
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %74, i8* %75) #26, !dbg !1257
  tail call void @free(i8* %73) #26, !dbg !1258
  call void @llvm.dbg.value(metadata i8 0, metadata !1155, metadata !DIExpression()), !dbg !1168
  %76 = getelementptr inbounds i8, i8* %62, i64 -1, !dbg !1259
  %77 = getelementptr inbounds i8, i8* %76, i64 %72, !dbg !1260
  call void @llvm.dbg.value(metadata i8* %77, metadata !1149, metadata !DIExpression()), !dbg !1168
  br label %81, !dbg !1261

78:                                               ; preds = %54
  %79 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5.17, i64 0, i64 0), i32 5) #26, !dbg !1262
  %80 = tail call i8* @quote(i8* nonnull %9) #26, !dbg !1264
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %79, i8* %80) #26, !dbg !1265
  call void @llvm.dbg.value(metadata i8 0, metadata !1155, metadata !DIExpression()), !dbg !1168
  br label %119, !dbg !1266

81:                                               ; preds = %37, %28, %48, %51, %42, %45, %19, %40, %65, %71
  %82 = phi i64 [ %69, %65 ], [ %61, %71 ], [ %3, %40 ], [ %3, %19 ], [ %3, %45 ], [ %3, %42 ], [ %3, %51 ], [ %3, %48 ], [ %3, %28 ], [ %3, %37 ], !dbg !1170
  %83 = phi i8 [ %4, %65 ], [ %4, %71 ], [ %4, %40 ], [ %4, %19 ], [ 1, %45 ], [ 1, %42 ], [ 0, %51 ], [ 0, %48 ], [ %4, %28 ], [ %4, %37 ], !dbg !1168
  %84 = phi i8 [ %5, %65 ], [ %5, %71 ], [ %5, %40 ], [ %5, %19 ], [ 0, %45 ], [ 0, %42 ], [ 1, %51 ], [ 1, %48 ], [ %5, %28 ], [ %5, %37 ], !dbg !1168
  %85 = phi i8* [ %62, %65 ], [ %62, %71 ], [ %6, %40 ], [ %6, %19 ], [ %6, %45 ], [ %6, %42 ], [ %6, %51 ], [ %6, %48 ], [ %6, %28 ], [ %6, %37 ], !dbg !1173
  %86 = phi i8 [ %7, %65 ], [ 0, %71 ], [ %7, %40 ], [ %7, %19 ], [ 0, %45 ], [ %7, %42 ], [ 0, %51 ], [ %7, %48 ], [ %7, %28 ], [ %7, %37 ], !dbg !1168
  %87 = phi i8 [ %63, %65 ], [ %63, %71 ], [ 0, %40 ], [ 0, %19 ], [ %8, %45 ], [ %8, %42 ], [ %8, %51 ], [ %8, %48 ], [ 0, %28 ], [ 0, %37 ], !dbg !1168
  %88 = phi i8* [ %9, %65 ], [ %77, %71 ], [ %9, %40 ], [ %9, %19 ], [ %9, %45 ], [ %9, %42 ], [ %9, %51 ], [ %9, %48 ], [ %9, %28 ], [ %9, %37 ]
  call void @llvm.dbg.value(metadata i64 %82, metadata !1151, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata i8* %88, metadata !1149, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata i8 %87, metadata !1150, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata i8 %86, metadata !1155, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata i8* %85, metadata !1154, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata i8 %84, metadata !1153, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata i8 %83, metadata !1152, metadata !DIExpression()), !dbg !1168
  %89 = getelementptr inbounds i8, i8* %88, i64 1, !dbg !1267
  call void @llvm.dbg.value(metadata i8* %89, metadata !1149, metadata !DIExpression()), !dbg !1168
  br label %2, !dbg !1268, !llvm.loop !1269

90:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i8 %7, metadata !1155, metadata !DIExpression()), !dbg !1168
  %91 = and i8 %8, 1, !dbg !1271
  %92 = and i8 %91, %7, !dbg !1271
  %93 = icmp eq i8 %92, 0, !dbg !1271
  br i1 %93, label %115, label %94, !dbg !1271

94:                                               ; preds = %90
  %95 = and i8 %4, 1, !dbg !1273
  %96 = icmp eq i8 %95, 0, !dbg !1273
  br i1 %96, label %104, label %97, !dbg !1276

97:                                               ; preds = %94
  call void @llvm.dbg.value(metadata i64 %3, metadata !1187, metadata !DIExpression()) #26, !dbg !1277
  call void @llvm.dbg.value(metadata i8 1, metadata !1192, metadata !DIExpression()) #26, !dbg !1277
  %98 = load i64, i64* @extend_size, align 8, !dbg !1279, !tbaa !931
  %99 = icmp eq i64 %98, 0, !dbg !1279
  br i1 %99, label %102, label %100, !dbg !1280

100:                                              ; preds = %97
  %101 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13.11, i64 0, i64 0), i32 5) #26, !dbg !1281
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %101) #26, !dbg !1282
  call void @llvm.dbg.value(metadata i8 0, metadata !1192, metadata !DIExpression()) #26, !dbg !1277
  br label %102, !dbg !1283

102:                                              ; preds = %97, %100
  call void @llvm.dbg.value(metadata i8 undef, metadata !1192, metadata !DIExpression()) #26, !dbg !1277
  store i64 %3, i64* @extend_size, align 8, !dbg !1284, !tbaa !931
  %103 = zext i1 %99 to i8, !dbg !1285
  call void @llvm.dbg.value(metadata i8 %103, metadata !1155, metadata !DIExpression()), !dbg !1168
  br label %115, !dbg !1286

104:                                              ; preds = %94
  %105 = and i8 %5, 1, !dbg !1287
  %106 = icmp eq i8 %105, 0, !dbg !1287
  br i1 %106, label %114, label %107, !dbg !1289

107:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i64 %3, metadata !1208, metadata !DIExpression()) #26, !dbg !1290
  call void @llvm.dbg.value(metadata i8 1, metadata !1211, metadata !DIExpression()) #26, !dbg !1290
  %108 = load i64, i64* @increment_size, align 8, !dbg !1292, !tbaa !931
  %109 = icmp eq i64 %108, 0, !dbg !1292
  br i1 %109, label %112, label %110, !dbg !1293

110:                                              ; preds = %107
  %111 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.14.12, i64 0, i64 0), i32 5) #26, !dbg !1294
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %111) #26, !dbg !1295
  call void @llvm.dbg.value(metadata i8 0, metadata !1211, metadata !DIExpression()) #26, !dbg !1290
  br label %112, !dbg !1296

112:                                              ; preds = %107, %110
  call void @llvm.dbg.value(metadata i8 undef, metadata !1211, metadata !DIExpression()) #26, !dbg !1290
  store i64 %3, i64* @increment_size, align 8, !dbg !1297, !tbaa !931
  %113 = zext i1 %109 to i8, !dbg !1298
  call void @llvm.dbg.value(metadata i8 %113, metadata !1155, metadata !DIExpression()), !dbg !1168
  br label %115, !dbg !1299

114:                                              ; preds = %104
  tail call void @add_tab_stop(i64 %3), !dbg !1300
  br label %115

115:                                              ; preds = %102, %114, %112, %90
  %116 = phi i8 [ %103, %102 ], [ %113, %112 ], [ %7, %114 ], [ %7, %90 ], !dbg !1168
  call void @llvm.dbg.value(metadata i8 %116, metadata !1155, metadata !DIExpression()), !dbg !1168
  %117 = and i8 %116, 1, !dbg !1301
  %118 = icmp eq i8 %117, 0, !dbg !1301
  br i1 %118, label %119, label %120, !dbg !1303

119:                                              ; preds = %78, %29, %38, %115
  tail call void @exit(i32 1) #28, !dbg !1304
  unreachable, !dbg !1304

120:                                              ; preds = %115
  ret void, !dbg !1305
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @finalize_tab_stops() local_unnamed_addr #8 !dbg !1306 {
  %1 = load i64*, i64** @tab_list, align 8, !dbg !1307, !tbaa !718
  %2 = load i64, i64* @first_free_tab, align 8, !dbg !1308, !tbaa !931
  call void @llvm.dbg.value(metadata i64* %1, metadata !1309, metadata !DIExpression()) #26, !dbg !1320
  call void @llvm.dbg.value(metadata i64 %2, metadata !1316, metadata !DIExpression()) #26, !dbg !1320
  call void @llvm.dbg.value(metadata i64 0, metadata !1317, metadata !DIExpression()) #26, !dbg !1320
  call void @llvm.dbg.value(metadata i64 0, metadata !1318, metadata !DIExpression()) #26, !dbg !1322
  %3 = icmp eq i64 %2, 0, !dbg !1323
  br i1 %3, label %12, label %18, !dbg !1325

4:                                                ; preds = %26
  call void @llvm.dbg.value(metadata i64 %28, metadata !1318, metadata !DIExpression()) #26, !dbg !1322
  call void @llvm.dbg.value(metadata i64 %22, metadata !1317, metadata !DIExpression()) #26, !dbg !1320
  %5 = icmp eq i64 %28, %2, !dbg !1323
  br i1 %5, label %6, label %18, !dbg !1325, !llvm.loop !1326

6:                                                ; preds = %4
  %7 = load i64, i64* @increment_size, align 8, !dbg !1328, !tbaa !931
  %8 = icmp ne i64 %7, 0, !dbg !1328
  %9 = load i64, i64* @extend_size, align 8
  %10 = icmp ne i64 %9, 0
  %11 = and i1 %8, %10, !dbg !1330
  br i1 %11, label %31, label %38, !dbg !1330

12:                                               ; preds = %0
  %13 = load i64, i64* @increment_size, align 8, !dbg !1328, !tbaa !931
  %14 = icmp ne i64 %13, 0, !dbg !1328
  %15 = load i64, i64* @extend_size, align 8
  %16 = icmp ne i64 %15, 0
  %17 = and i1 %14, %16, !dbg !1330
  br i1 %17, label %31, label %33, !dbg !1330

18:                                               ; preds = %0, %4
  %19 = phi i64 [ %28, %4 ], [ 0, %0 ]
  %20 = phi i64 [ %22, %4 ], [ 0, %0 ]
  call void @llvm.dbg.value(metadata i64 %19, metadata !1318, metadata !DIExpression()) #26, !dbg !1322
  call void @llvm.dbg.value(metadata i64 %20, metadata !1317, metadata !DIExpression()) #26, !dbg !1320
  %21 = getelementptr inbounds i64, i64* %1, i64 %19, !dbg !1331
  %22 = load i64, i64* %21, align 8, !dbg !1331, !tbaa !931
  %23 = icmp eq i64 %22, 0, !dbg !1334
  br i1 %23, label %24, label %26, !dbg !1335

24:                                               ; preds = %18
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15.20, i64 0, i64 0), i32 5) #26, !dbg !1336
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %25) #26, !dbg !1336
  unreachable, !dbg !1336

26:                                               ; preds = %18
  %27 = icmp ugt i64 %22, %20, !dbg !1337
  call void @llvm.dbg.value(metadata i64 %22, metadata !1317, metadata !DIExpression()) #26, !dbg !1320
  %28 = add nuw i64 %19, 1, !dbg !1339
  call void @llvm.dbg.value(metadata i64 %28, metadata !1318, metadata !DIExpression()) #26, !dbg !1322
  br i1 %27, label %4, label %29, !dbg !1340

29:                                               ; preds = %26
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16.21, i64 0, i64 0), i32 5) #26, !dbg !1341
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %30) #26, !dbg !1341
  unreachable, !dbg !1341

31:                                               ; preds = %12, %6
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.17.22, i64 0, i64 0), i32 5) #26, !dbg !1342
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %32) #26, !dbg !1342
  unreachable, !dbg !1342

33:                                               ; preds = %12
  %34 = icmp eq i64 %15, 0, !dbg !1343
  %35 = icmp eq i64 %13, 0, !dbg !1343
  %36 = select i1 %35, i64 8, i64 %13, !dbg !1343
  %37 = select i1 %34, i64 %36, i64 %15, !dbg !1343
  store i64 %37, i64* @max_column_width, align 8, !dbg !1345, !tbaa !931
  br label %45, !dbg !1346

38:                                               ; preds = %6
  %39 = icmp ne i64 %2, 1, !dbg !1347
  %40 = or i64 %9, %7, !dbg !1349
  %41 = icmp ne i64 %40, 0, !dbg !1349
  %42 = or i1 %39, %41, !dbg !1349
  br i1 %42, label %45, label %43, !dbg !1349

43:                                               ; preds = %38
  %44 = load i64, i64* %1, align 8, !dbg !1350, !tbaa !931
  br label %45, !dbg !1351

45:                                               ; preds = %38, %43, %33
  %46 = phi i64 [ %44, %43 ], [ %37, %33 ], [ 0, %38 ]
  store i64 %46, i64* @tab_size, align 8, !dbg !1352, !tbaa !931
  ret void, !dbg !1353
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i64 @get_next_tab_column(i64 %0, i64* nocapture %1, i8* nocapture %2) local_unnamed_addr #11 !dbg !1354 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1359, metadata !DIExpression()), !dbg !1369
  call void @llvm.dbg.value(metadata i64* %1, metadata !1360, metadata !DIExpression()), !dbg !1369
  call void @llvm.dbg.value(metadata i8* %2, metadata !1361, metadata !DIExpression()), !dbg !1369
  store i8 0, i8* %2, align 1, !dbg !1370, !tbaa !859
  %4 = load i64, i64* @tab_size, align 8, !dbg !1371, !tbaa !931
  %5 = icmp eq i64 %4, 0, !dbg !1371
  br i1 %5, label %6, label %12, !dbg !1373

6:                                                ; preds = %3
  %7 = load i64, i64* %1, align 8, !dbg !1374, !tbaa !931
  %8 = load i64, i64* @first_free_tab, align 8, !dbg !1375, !tbaa !931
  %9 = icmp ult i64 %7, %8, !dbg !1376
  br i1 %9, label %10, label %24, !dbg !1377

10:                                               ; preds = %6
  %11 = load i64*, i64** @tab_list, align 8, !tbaa !718
  br label %16, !dbg !1377

12:                                               ; preds = %3
  %13 = urem i64 %0, %4, !dbg !1378
  %14 = add i64 %4, %0, !dbg !1379
  %15 = sub i64 %14, %13, !dbg !1380
  br label %44, !dbg !1381

16:                                               ; preds = %10, %21
  %17 = phi i64 [ %7, %10 ], [ %22, %21 ]
  %18 = getelementptr inbounds i64, i64* %11, i64 %17, !dbg !1382
  %19 = load i64, i64* %18, align 8, !dbg !1382, !tbaa !931
  call void @llvm.dbg.value(metadata i64 %19, metadata !1362, metadata !DIExpression()), !dbg !1383
  %20 = icmp ugt i64 %19, %0, !dbg !1384
  br i1 %20, label %44, label %21

21:                                               ; preds = %16
  %22 = add nuw i64 %17, 1, !dbg !1386
  store i64 %22, i64* %1, align 8, !dbg !1386, !tbaa !931
  %23 = icmp ult i64 %22, %8, !dbg !1376
  br i1 %23, label %16, label %24, !dbg !1377, !llvm.loop !1387

24:                                               ; preds = %21, %6
  %25 = load i64, i64* @extend_size, align 8, !dbg !1389, !tbaa !931
  %26 = icmp eq i64 %25, 0, !dbg !1389
  br i1 %26, label %31, label %27, !dbg !1391

27:                                               ; preds = %24
  %28 = urem i64 %0, %25, !dbg !1392
  %29 = add i64 %25, %0, !dbg !1393
  %30 = sub i64 %29, %28, !dbg !1394
  br label %44, !dbg !1395

31:                                               ; preds = %24
  %32 = load i64, i64* @increment_size, align 8, !dbg !1396, !tbaa !931
  %33 = icmp eq i64 %32, 0, !dbg !1396
  br i1 %33, label %43, label %34, !dbg !1397

34:                                               ; preds = %31
  %35 = load i64*, i64** @tab_list, align 8, !dbg !1398, !tbaa !718
  %36 = add i64 %8, -1, !dbg !1399
  %37 = getelementptr inbounds i64, i64* %35, i64 %36, !dbg !1398
  %38 = load i64, i64* %37, align 8, !dbg !1398, !tbaa !931
  call void @llvm.dbg.value(metadata i64 %38, metadata !1366, metadata !DIExpression()), !dbg !1400
  %39 = sub i64 %0, %38, !dbg !1401
  %40 = urem i64 %39, %32, !dbg !1402
  %41 = add i64 %32, %0, !dbg !1403
  %42 = sub i64 %41, %40, !dbg !1404
  br label %44

43:                                               ; preds = %31
  store i8 1, i8* %2, align 1, !dbg !1405, !tbaa !859
  br label %44, !dbg !1406

44:                                               ; preds = %16, %43, %34, %27, %12
  %45 = phi i64 [ %15, %12 ], [ %30, %27 ], [ %42, %34 ], [ 0, %43 ], [ %19, %16 ], !dbg !1369
  ret i64 %45, !dbg !1407
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_file_list(i8** %0) local_unnamed_addr #12 !dbg !1408 {
  call void @llvm.dbg.value(metadata i8** %0, metadata !1412, metadata !DIExpression()), !dbg !1413
  store i1 false, i1* @have_read_stdin, align 1, !dbg !1414
  %2 = icmp eq i8** %0, null, !dbg !1415
  %3 = select i1 %2, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @stdin_argv, i64 0, i64 0), i8** %0, !dbg !1417
  store i8** %3, i8*** @file_list, align 8, !dbg !1418, !tbaa !718
  ret void, !dbg !1419
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct._IO_FILE* @next_file(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !99 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !157, metadata !DIExpression()), !dbg !1420
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !1421
  br i1 %2, label %30, label %3, !dbg !1423

3:                                                ; preds = %1
  %4 = load i8*, i8** @next_file.prev_file, align 8, !dbg !1424, !tbaa !718
  %5 = icmp eq i8* %4, null, !dbg !1424
  br i1 %5, label %6, label %7, !dbg !1428

6:                                                ; preds = %3
  tail call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.30, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7.31, i64 0, i64 0), i32 341, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.next_file, i64 0, i64 0)) #28, !dbg !1424
  unreachable, !dbg !1424

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1429, metadata !DIExpression()), !dbg !1434
  %8 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !1437
  %9 = load i32, i32* %8, align 8, !dbg !1437, !tbaa !1438
  %10 = and i32 %9, 32, !dbg !1439
  %11 = icmp eq i32 %10, 0, !dbg !1439
  br i1 %11, label %17, label %12, !dbg !1440

12:                                               ; preds = %7
  %13 = tail call i32* @__errno_location() #30, !dbg !1441
  %14 = load i32, i32* %13, align 4, !dbg !1441, !tbaa !890
  %15 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %4) #26, !dbg !1443
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8.32, i64 0, i64 0), i8* %15) #26, !dbg !1444
  store i32 1, i32* @exit_status, align 4, !dbg !1445, !tbaa !890
  %16 = load i8*, i8** @next_file.prev_file, align 8, !dbg !1446, !tbaa !718
  br label %17, !dbg !1448

17:                                               ; preds = %12, %7
  %18 = phi i8* [ %16, %12 ], [ %4, %7 ], !dbg !1446
  %19 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %18, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9.27, i64 0, i64 0)) #27, !dbg !1446
  %20 = icmp eq i32 %19, 0, !dbg !1446
  br i1 %20, label %21, label %22, !dbg !1449

21:                                               ; preds = %17
  tail call void @clearerr_unlocked(%struct._IO_FILE* nonnull %0) #26, !dbg !1450
  br label %30, !dbg !1450

22:                                               ; preds = %17
  %23 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) #26, !dbg !1451
  %24 = icmp eq i32 %23, 0, !dbg !1453
  br i1 %24, label %30, label %25, !dbg !1454

25:                                               ; preds = %22
  %26 = tail call i32* @__errno_location() #30, !dbg !1455
  %27 = load i32, i32* %26, align 4, !dbg !1455, !tbaa !890
  %28 = load i8*, i8** @next_file.prev_file, align 8, !dbg !1457, !tbaa !718
  %29 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %28) #26, !dbg !1457
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8.32, i64 0, i64 0), i8* %29) #26, !dbg !1458
  store i32 1, i32* @exit_status, align 4, !dbg !1459, !tbaa !890
  br label %30, !dbg !1460

30:                                               ; preds = %21, %25, %22, %1
  %31 = load i8**, i8*** @file_list, align 8, !dbg !1461, !tbaa !718
  %32 = getelementptr inbounds i8*, i8** %31, i64 1, !dbg !1461
  store i8** %32, i8*** @file_list, align 8, !dbg !1461, !tbaa !718
  %33 = load i8*, i8** %31, align 8, !dbg !1462, !tbaa !718
  call void @llvm.dbg.value(metadata i8* %33, metadata !158, metadata !DIExpression()), !dbg !1420
  %34 = icmp eq i8* %33, null, !dbg !1463
  br i1 %34, label %55, label %35, !dbg !1464

35:                                               ; preds = %30, %47
  %36 = phi i8* [ %53, %47 ], [ %33, %30 ]
  %37 = tail call i32 @strcmp(i8* nonnull %36, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9.27, i64 0, i64 0)) #27, !dbg !1465
  %38 = icmp eq i32 %37, 0, !dbg !1465
  br i1 %38, label %39, label %41, !dbg !1468

39:                                               ; preds = %35
  store i1 true, i1* @have_read_stdin, align 1, !dbg !1469
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1471, !tbaa !718
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %40, metadata !157, metadata !DIExpression()), !dbg !1420
  br label %43, !dbg !1472

41:                                               ; preds = %35
  %42 = tail call %struct._IO_FILE* @fopen(i8* nonnull %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.33, i64 0, i64 0)), !dbg !1473
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %42, metadata !157, metadata !DIExpression()), !dbg !1420
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi %struct._IO_FILE* [ %40, %39 ], [ %42, %41 ], !dbg !1474
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %44, metadata !157, metadata !DIExpression()), !dbg !1420
  %45 = icmp eq %struct._IO_FILE* %44, null, !dbg !1475
  br i1 %45, label %47, label %46, !dbg !1477

46:                                               ; preds = %43
  store i8* %36, i8** @next_file.prev_file, align 8, !dbg !1478, !tbaa !718
  tail call void @fadvise(%struct._IO_FILE* nonnull %44, i32 2) #26, !dbg !1480
  br label %55, !dbg !1481

47:                                               ; preds = %43
  %48 = tail call i32* @__errno_location() #30, !dbg !1482
  %49 = load i32, i32* %48, align 4, !dbg !1482, !tbaa !890
  %50 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %36) #26, !dbg !1483
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8.32, i64 0, i64 0), i8* %50) #26, !dbg !1484
  store i32 1, i32* @exit_status, align 4, !dbg !1485, !tbaa !890
  %51 = load i8**, i8*** @file_list, align 8, !dbg !1461, !tbaa !718
  %52 = getelementptr inbounds i8*, i8** %51, i64 1, !dbg !1461
  store i8** %52, i8*** @file_list, align 8, !dbg !1461, !tbaa !718
  %53 = load i8*, i8** %51, align 8, !dbg !1462, !tbaa !718
  call void @llvm.dbg.value(metadata i8* %53, metadata !158, metadata !DIExpression()), !dbg !1420
  %54 = icmp eq i8* %53, null, !dbg !1463
  br i1 %54, label %55, label %35, !dbg !1464, !llvm.loop !1486

55:                                               ; preds = %47, %30, %46
  %56 = phi %struct._IO_FILE* [ %44, %46 ], [ null, %30 ], [ null, %47 ], !dbg !1420
  ret %struct._IO_FILE* %56, !dbg !1488
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !1489 void @clearerr_unlocked(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @cleanup_file_list_stdin() local_unnamed_addr #8 !dbg !1492 {
  %1 = load i1, i1* @have_read_stdin, align 1, !dbg !1493
  br i1 %1, label %2, label %9, !dbg !1495

2:                                                ; preds = %0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1496, !tbaa !718
  %4 = tail call i32 @rpl_fclose(%struct._IO_FILE* %3) #26, !dbg !1497
  %5 = icmp eq i32 %4, 0, !dbg !1498
  br i1 %5, label %9, label %6, !dbg !1499

6:                                                ; preds = %2
  %7 = tail call i32* @__errno_location() #30, !dbg !1500
  %8 = load i32, i32* %7, align 4, !dbg !1500, !tbaa !890
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9.27, i64 0, i64 0)) #26, !dbg !1500
  unreachable, !dbg !1500

9:                                                ; preds = %2, %0
  ret void, !dbg !1501
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_tab_list_info() local_unnamed_addr #8 !dbg !1502 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.11.38, i64 0, i64 0), i32 5) #26, !dbg !1503
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1503, !tbaa !718
  %3 = tail call i32 @fputs_unlocked(i8* %1, %struct._IO_FILE* %2), !dbg !1503
  %4 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([365 x i8], [365 x i8]* @.str.12.39, i64 0, i64 0), i32 5) #26, !dbg !1504
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1504, !tbaa !718
  %6 = tail call i32 @fputs_unlocked(i8* %4, %struct._IO_FILE* %5), !dbg !1504
  ret void, !dbg !1505
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #12 !dbg !1506 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1508, metadata !DIExpression()), !dbg !1509
  store i8* %0, i8** @file_name, align 8, !dbg !1510, !tbaa !718
  ret void, !dbg !1511
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #12 !dbg !1512 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1516, metadata !DIExpression()), !dbg !1517
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1518, !tbaa !859
  ret void, !dbg !1519
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1520 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1525, !tbaa !718
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #26, !dbg !1526
  %3 = icmp eq i32 %2, 0, !dbg !1527
  br i1 %3, label %22, label %4, !dbg !1528

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1529, !tbaa !859, !range !973
  %6 = icmp eq i8 %5, 0, !dbg !1529
  br i1 %6, label %11, label %7, !dbg !1530

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #30, !dbg !1531
  %9 = load i32, i32* %8, align 4, !dbg !1531, !tbaa !890
  %10 = icmp eq i32 %9, 32, !dbg !1532
  br i1 %10, label %22, label %11, !dbg !1533

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i64 0, i64 0), i32 5) #26, !dbg !1534
  call void @llvm.dbg.value(metadata i8* %12, metadata !1522, metadata !DIExpression()), !dbg !1535
  %13 = load i8*, i8** @file_name, align 8, !dbg !1536, !tbaa !718
  %14 = icmp eq i8* %13, null, !dbg !1536
  %15 = tail call i32* @__errno_location() #30, !dbg !1538
  %16 = load i32, i32* %15, align 4, !dbg !1538, !tbaa !890
  br i1 %14, label %19, label %17, !dbg !1539

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #26, !dbg !1540
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.46, i64 0, i64 0), i8* %18, i8* %12) #26, !dbg !1541
  br label %20, !dbg !1541

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.47, i64 0, i64 0), i8* %12) #26, !dbg !1542
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1543, !tbaa !890
  tail call void @_exit(i32 %21) #28, !dbg !1544
  unreachable, !dbg !1544

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1545, !tbaa !718
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #26, !dbg !1547
  %25 = icmp eq i32 %24, 0, !dbg !1548
  br i1 %25, label %28, label %26, !dbg !1549

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1550, !tbaa !890
  tail call void @_exit(i32 %27) #28, !dbg !1551
  unreachable, !dbg !1551

28:                                               ; preds = %22
  ret void, !dbg !1552
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #13

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32 %0, i64 %1, i64 %2, i32 %3) local_unnamed_addr #8 !dbg !1553 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1559, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i64 %1, metadata !1560, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i64 %2, metadata !1561, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i32 %3, metadata !1562, metadata !DIExpression()), !dbg !1565
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #26, !dbg !1566
  call void @llvm.dbg.value(metadata i32 %5, metadata !1563, metadata !DIExpression()), !dbg !1567
  ret void, !dbg !1568
}

; Function Attrs: nounwind
declare !dbg !1569 i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE* %0, i32 %1) local_unnamed_addr #8 !dbg !1573 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1611, metadata !DIExpression()), !dbg !1613
  call void @llvm.dbg.value(metadata i32 %1, metadata !1612, metadata !DIExpression()), !dbg !1613
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1614
  br i1 %3, label %7, label %4, !dbg !1616

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #26, !dbg !1617
  call void @llvm.dbg.value(metadata i32 %5, metadata !1559, metadata !DIExpression()) #26, !dbg !1618
  call void @llvm.dbg.value(metadata i64 0, metadata !1560, metadata !DIExpression()) #26, !dbg !1618
  call void @llvm.dbg.value(metadata i64 0, metadata !1561, metadata !DIExpression()) #26, !dbg !1618
  call void @llvm.dbg.value(metadata i32 %1, metadata !1562, metadata !DIExpression()) #26, !dbg !1618
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #26, !dbg !1620
  call void @llvm.dbg.value(metadata i32 %6, metadata !1563, metadata !DIExpression()) #26, !dbg !1621
  br label %7, !dbg !1622

7:                                                ; preds = %4, %2
  ret void, !dbg !1623
}

; Function Attrs: nofree nounwind
declare !dbg !1624 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1627 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1629, metadata !DIExpression()), !dbg !1632
  %2 = icmp eq i8* %0, null, !dbg !1633
  br i1 %2, label %3, label %6, !dbg !1635

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1636, !tbaa !718
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.56, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #31, !dbg !1638
  tail call void @abort() #28, !dbg !1639
  unreachable, !dbg !1639

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #27, !dbg !1640
  call void @llvm.dbg.value(metadata i8* %7, metadata !1630, metadata !DIExpression()), !dbg !1632
  %8 = icmp eq i8* %7, null, !dbg !1641
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1642
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1642
  call void @llvm.dbg.value(metadata i8* %10, metadata !1631, metadata !DIExpression()), !dbg !1632
  %11 = ptrtoint i8* %10 to i64, !dbg !1643
  %12 = ptrtoint i8* %0 to i64, !dbg !1643
  %13 = sub i64 %11, %12, !dbg !1643
  %14 = icmp sgt i64 %13, 6, !dbg !1645
  br i1 %14, label %15, label %24, !dbg !1646

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1647
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.57, i64 0, i64 0), i64 7) #27, !dbg !1648
  %18 = icmp eq i32 %17, 0, !dbg !1649
  br i1 %18, label %19, label %24, !dbg !1650

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1629, metadata !DIExpression()), !dbg !1632
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.58, i64 0, i64 0), i64 3) #27, !dbg !1651
  %21 = icmp eq i32 %20, 0, !dbg !1654
  br i1 %21, label %22, label %24, !dbg !1655

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1656
  call void @llvm.dbg.value(metadata i8* %23, metadata !1629, metadata !DIExpression()), !dbg !1632
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1658, !tbaa !718
  br label %24, !dbg !1659

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1629, metadata !DIExpression()), !dbg !1632
  store i8* %25, i8** @program_name, align 8, !dbg !1660, !tbaa !718
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1661, !tbaa !718
  ret void, !dbg !1662
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #14

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1663 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1668, metadata !DIExpression()), !dbg !1671
  %2 = tail call i32* @__errno_location() #30, !dbg !1672
  %3 = load i32, i32* %2, align 4, !dbg !1672, !tbaa !890
  call void @llvm.dbg.value(metadata i32 %3, metadata !1669, metadata !DIExpression()), !dbg !1671
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1673
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1673
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1673
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #26, !dbg !1674
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1674
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1670, metadata !DIExpression()), !dbg !1671
  store i32 %3, i32* %2, align 4, !dbg !1675, !tbaa !890
  ret %struct.quoting_options* %8, !dbg !1676
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #15 !dbg !1677 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1683, metadata !DIExpression()), !dbg !1684
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1685
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1685
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1686
  %5 = load i32, i32* %4, align 8, !dbg !1686, !tbaa !1687
  ret i32 %5, !dbg !1689
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #12 !dbg !1690 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1694, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.value(metadata i32 %1, metadata !1695, metadata !DIExpression()), !dbg !1696
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1697
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1697
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1698
  store i32 %1, i32* %5, align 8, !dbg !1699, !tbaa !1687
  ret void, !dbg !1700
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #16 !dbg !1701 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1705, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 %1, metadata !1706, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i32 %2, metadata !1707, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 %1, metadata !1708, metadata !DIExpression()), !dbg !1713
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1714
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1714
  %6 = lshr i8 %1, 5, !dbg !1715
  %7 = zext i8 %6 to i64, !dbg !1715
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1716
  call void @llvm.dbg.value(metadata i32* %8, metadata !1709, metadata !DIExpression()), !dbg !1713
  %9 = and i8 %1, 31, !dbg !1717
  %10 = zext i8 %9 to i32, !dbg !1717
  call void @llvm.dbg.value(metadata i32 %10, metadata !1711, metadata !DIExpression()), !dbg !1713
  %11 = load i32, i32* %8, align 4, !dbg !1718, !tbaa !890
  %12 = lshr i32 %11, %10, !dbg !1719
  %13 = and i32 %12, 1, !dbg !1720
  call void @llvm.dbg.value(metadata i32 %13, metadata !1712, metadata !DIExpression()), !dbg !1713
  %14 = and i32 %2, 1, !dbg !1721
  %15 = xor i32 %13, %14, !dbg !1722
  %16 = shl i32 %15, %10, !dbg !1723
  %17 = xor i32 %16, %11, !dbg !1724
  store i32 %17, i32* %8, align 4, !dbg !1724, !tbaa !890
  ret i32 %13, !dbg !1725
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #16 !dbg !1726 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1730, metadata !DIExpression()), !dbg !1733
  call void @llvm.dbg.value(metadata i32 %1, metadata !1731, metadata !DIExpression()), !dbg !1733
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1734
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1736
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1730, metadata !DIExpression()), !dbg !1733
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1737
  %6 = load i32, i32* %5, align 4, !dbg !1737, !tbaa !1738
  call void @llvm.dbg.value(metadata i32 %6, metadata !1732, metadata !DIExpression()), !dbg !1733
  store i32 %1, i32* %5, align 4, !dbg !1739, !tbaa !1738
  ret i32 %6, !dbg !1740
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1741 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1745, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i8* %1, metadata !1746, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i8* %2, metadata !1747, metadata !DIExpression()), !dbg !1748
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1749
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1751
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1745, metadata !DIExpression()), !dbg !1748
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1752
  store i32 10, i32* %6, align 8, !dbg !1753, !tbaa !1687
  %7 = icmp ne i8* %1, null, !dbg !1754
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1756
  br i1 %9, label %11, label %10, !dbg !1756

10:                                               ; preds = %3
  tail call void @abort() #28, !dbg !1757
  unreachable, !dbg !1757

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1758
  store i8* %1, i8** %12, align 8, !dbg !1759, !tbaa !1760
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1761
  store i8* %2, i8** %13, align 8, !dbg !1762, !tbaa !1763
  ret void, !dbg !1764
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1765 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1769, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i64 %1, metadata !1770, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8* %2, metadata !1771, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i64 %3, metadata !1772, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1773, metadata !DIExpression()), !dbg !1777
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1778
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1778
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1774, metadata !DIExpression()), !dbg !1777
  %8 = tail call i32* @__errno_location() #30, !dbg !1779
  %9 = load i32, i32* %8, align 4, !dbg !1779, !tbaa !890
  call void @llvm.dbg.value(metadata i32 %9, metadata !1775, metadata !DIExpression()), !dbg !1777
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1780
  %11 = load i32, i32* %10, align 8, !dbg !1780, !tbaa !1687
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1781
  %13 = load i32, i32* %12, align 4, !dbg !1781, !tbaa !1738
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1782
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1783
  %16 = load i8*, i8** %15, align 8, !dbg !1783, !tbaa !1760
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1784
  %18 = load i8*, i8** %17, align 8, !dbg !1784, !tbaa !1763
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1785
  call void @llvm.dbg.value(metadata i64 %19, metadata !1776, metadata !DIExpression()), !dbg !1777
  store i32 %9, i32* %8, align 4, !dbg !1786, !tbaa !890
  ret i64 %19, !dbg !1787
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1788 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1794, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %1, metadata !1795, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %2, metadata !1796, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %3, metadata !1797, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i32 %4, metadata !1798, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i32 %5, metadata !1799, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i32* %6, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %7, metadata !1801, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %8, metadata !1802, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 0, metadata !1804, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 0, metadata !1805, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* null, metadata !1806, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 0, metadata !1807, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 0, metadata !1808, metadata !DIExpression()), !dbg !1864
  %13 = tail call i64 @__ctype_get_mb_cur_max() #26, !dbg !1865
  %14 = icmp eq i64 %13, 1, !dbg !1866
  call void @llvm.dbg.value(metadata i1 %14, metadata !1809, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1864
  %15 = lshr i32 %5, 1, !dbg !1867
  %16 = trunc i32 %15 to i8, !dbg !1867
  %17 = and i8 %16, 1, !dbg !1867
  call void @llvm.dbg.value(metadata i8 %17, metadata !1810, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 0, metadata !1811, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 0, metadata !1812, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 1, metadata !1813, metadata !DIExpression()), !dbg !1864
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !1868

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !1869
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !1870
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !1871
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !1872
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !1864
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !1873
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !1874
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !1875
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1795, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 %38, metadata !1813, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 %37, metadata !1812, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 %36, metadata !1811, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 %35, metadata !1810, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %34, metadata !1797, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 %33, metadata !1808, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %32, metadata !1807, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %31, metadata !1806, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %30, metadata !1805, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 0, metadata !1804, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %29, metadata !1802, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %28, metadata !1801, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i32 %27, metadata !1798, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.label(metadata !1858), !dbg !1876
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
  ], !dbg !1877

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1810, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i32 5, metadata !1798, metadata !DIExpression()), !dbg !1864
  br label %92, !dbg !1878

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1810, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i32 5, metadata !1798, metadata !DIExpression()), !dbg !1864
  %42 = and i8 %35, 1, !dbg !1880
  %43 = icmp eq i8 %42, 0, !dbg !1880
  br i1 %43, label %44, label %92, !dbg !1878

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1882
  br i1 %45, label %92, label %46, !dbg !1885

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1882, !tbaa !954
  br label %92, !dbg !1882

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.69, i64 0, i64 0), i32 %27), !dbg !1886
  call void @llvm.dbg.value(metadata i8* %48, metadata !1801, metadata !DIExpression()), !dbg !1864
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), i32 %27), !dbg !1890
  call void @llvm.dbg.value(metadata i8* %49, metadata !1802, metadata !DIExpression()), !dbg !1864
  br label %50, !dbg !1891

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1802, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %51, metadata !1801, metadata !DIExpression()), !dbg !1864
  %53 = and i8 %35, 1, !dbg !1892
  %54 = icmp eq i8 %53, 0, !dbg !1892
  br i1 %54, label %55, label %70, !dbg !1894

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1806, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 0, metadata !1804, metadata !DIExpression()), !dbg !1864
  %56 = load i8, i8* %51, align 1, !dbg !1895, !tbaa !954
  %57 = icmp eq i8 %56, 0, !dbg !1898
  br i1 %57, label %70, label %58, !dbg !1898

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1806, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %61, metadata !1804, metadata !DIExpression()), !dbg !1864
  %62 = icmp ult i64 %61, %39, !dbg !1899
  br i1 %62, label %63, label %65, !dbg !1902

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1899
  store i8 %59, i8* %64, align 1, !dbg !1899, !tbaa !954
  br label %65, !dbg !1899

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1902
  call void @llvm.dbg.value(metadata i64 %66, metadata !1804, metadata !DIExpression()), !dbg !1864
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1903
  call void @llvm.dbg.value(metadata i8* %67, metadata !1806, metadata !DIExpression()), !dbg !1864
  %68 = load i8, i8* %67, align 1, !dbg !1895, !tbaa !954
  %69 = icmp eq i8 %68, 0, !dbg !1898
  br i1 %69, label %70, label %58, !dbg !1898, !llvm.loop !1904

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1906
  call void @llvm.dbg.value(metadata i64 %71, metadata !1804, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 1, metadata !1808, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %52, metadata !1806, metadata !DIExpression()), !dbg !1864
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #27, !dbg !1907
  call void @llvm.dbg.value(metadata i64 %72, metadata !1807, metadata !DIExpression()), !dbg !1864
  br label %92, !dbg !1908

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1808, metadata !DIExpression()), !dbg !1864
  br label %74, !dbg !1909

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1864
  call void @llvm.dbg.value(metadata i8 %75, metadata !1808, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 1, metadata !1810, metadata !DIExpression()), !dbg !1864
  br label %76, !dbg !1910

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1872
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1864
  call void @llvm.dbg.value(metadata i8 %78, metadata !1810, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 %77, metadata !1808, metadata !DIExpression()), !dbg !1864
  %79 = and i8 %78, 1, !dbg !1911
  %80 = icmp eq i8 %79, 0, !dbg !1911
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1913
  br label %82, !dbg !1913

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1864
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1867
  call void @llvm.dbg.value(metadata i8 %84, metadata !1810, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 %83, metadata !1808, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i32 2, metadata !1798, metadata !DIExpression()), !dbg !1864
  %85 = and i8 %84, 1, !dbg !1914
  %86 = icmp eq i8 %85, 0, !dbg !1914
  br i1 %86, label %87, label %92, !dbg !1916

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1917
  br i1 %88, label %92, label %89, !dbg !1920

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1917, !tbaa !954
  br label %92, !dbg !1917

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1810, metadata !DIExpression()), !dbg !1864
  br label %92, !dbg !1921

91:                                               ; preds = %26
  call void @abort() #28, !dbg !1922
  unreachable, !dbg !1922

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !1906
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.71, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.71, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.71, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.71, i64 0, i64 0), %40 ], !dbg !1864
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !1864
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !1864
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !1864
  call void @llvm.dbg.value(metadata i8 %100, metadata !1810, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 %99, metadata !1808, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %98, metadata !1807, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %97, metadata !1806, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %96, metadata !1804, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %95, metadata !1802, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %94, metadata !1801, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i32 %93, metadata !1798, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 0, metadata !1803, metadata !DIExpression()), !dbg !1864
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
  br label %121, !dbg !1923

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !1924
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !1906
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !1869
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !1873
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !1874
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !1875
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1795, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 %128, metadata !1813, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 %127, metadata !1812, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 %126, metadata !1811, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %125, metadata !1797, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %124, metadata !1805, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %123, metadata !1804, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %122, metadata !1803, metadata !DIExpression()), !dbg !1864
  %130 = icmp eq i64 %125, -1, !dbg !1925
  br i1 %130, label %131, label %135, !dbg !1926

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1927
  %133 = load i8, i8* %132, align 1, !dbg !1927, !tbaa !954
  %134 = icmp eq i8 %133, 0, !dbg !1928
  br i1 %134, label %587, label %137, !dbg !1929

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1930
  br i1 %136, label %587, label %137, !dbg !1929

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1819, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 0, metadata !1820, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 0, metadata !1821, metadata !DIExpression()), !dbg !1931
  br i1 %106, label %138, label %153, !dbg !1932

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !1934
  %140 = and i1 %107, %130, !dbg !1935
  br i1 %140, label %141, label %143, !dbg !1935

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #27, !dbg !1936
  call void @llvm.dbg.value(metadata i64 %142, metadata !1797, metadata !DIExpression()), !dbg !1864
  br label %143, !dbg !1937

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !1937
  call void @llvm.dbg.value(metadata i64 %144, metadata !1797, metadata !DIExpression()), !dbg !1864
  %145 = icmp ugt i64 %139, %144, !dbg !1938
  br i1 %145, label %153, label %146, !dbg !1939

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1940
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !1941
  %149 = icmp ne i32 %148, 0, !dbg !1942
  %150 = or i1 %149, %109, !dbg !1943
  %151 = xor i1 %149, true, !dbg !1943
  %152 = zext i1 %151 to i8, !dbg !1943
  br i1 %150, label %153, label %646, !dbg !1943

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !1931
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1931
  call void @llvm.dbg.value(metadata i8 %156, metadata !1819, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i64 %154, metadata !1797, metadata !DIExpression()), !dbg !1864
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1944
  %158 = load i8, i8* %157, align 1, !dbg !1944, !tbaa !954
  call void @llvm.dbg.value(metadata i8 %158, metadata !1814, metadata !DIExpression()), !dbg !1931
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
  ], !dbg !1945

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !1946

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !1947

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1820, metadata !DIExpression()), !dbg !1931
  %162 = and i8 %126, 1, !dbg !1951
  %163 = icmp eq i8 %162, 0, !dbg !1951
  %164 = and i1 %110, %163, !dbg !1951
  br i1 %164, label %165, label %181, !dbg !1951

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !1953
  br i1 %166, label %167, label %169, !dbg !1957

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1953
  store i8 39, i8* %168, align 1, !dbg !1953, !tbaa !954
  br label %169, !dbg !1953

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !1957
  call void @llvm.dbg.value(metadata i64 %170, metadata !1804, metadata !DIExpression()), !dbg !1864
  %171 = icmp ult i64 %170, %129, !dbg !1958
  br i1 %171, label %172, label %174, !dbg !1961

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1958
  store i8 36, i8* %173, align 1, !dbg !1958, !tbaa !954
  br label %174, !dbg !1958

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !1961
  call void @llvm.dbg.value(metadata i64 %175, metadata !1804, metadata !DIExpression()), !dbg !1864
  %176 = icmp ult i64 %175, %129, !dbg !1962
  br i1 %176, label %177, label %179, !dbg !1965

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1962
  store i8 39, i8* %178, align 1, !dbg !1962, !tbaa !954
  br label %179, !dbg !1962

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !1965
  call void @llvm.dbg.value(metadata i64 %180, metadata !1804, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 1, metadata !1811, metadata !DIExpression()), !dbg !1864
  br label %181, !dbg !1966

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !1864
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !1864
  call void @llvm.dbg.value(metadata i8 %183, metadata !1811, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %182, metadata !1804, metadata !DIExpression()), !dbg !1864
  %184 = icmp ult i64 %182, %129, !dbg !1967
  br i1 %184, label %185, label %187, !dbg !1970

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1967
  store i8 92, i8* %186, align 1, !dbg !1967, !tbaa !954
  br label %187, !dbg !1967

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1970
  call void @llvm.dbg.value(metadata i64 %188, metadata !1804, metadata !DIExpression()), !dbg !1864
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !1971
  br i1 %191, label %192, label %473, !dbg !1971

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1973
  %194 = load i8, i8* %193, align 1, !dbg !1973, !tbaa !954
  %195 = add i8 %194, -48, !dbg !1974
  %196 = icmp ult i8 %195, 10, !dbg !1974
  br i1 %196, label %197, label %473, !dbg !1974

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !1975
  br i1 %198, label %199, label %201, !dbg !1979

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1975
  store i8 48, i8* %200, align 1, !dbg !1975, !tbaa !954
  br label %201, !dbg !1975

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1979
  call void @llvm.dbg.value(metadata i64 %202, metadata !1804, metadata !DIExpression()), !dbg !1864
  %203 = icmp ult i64 %202, %129, !dbg !1980
  br i1 %203, label %204, label %206, !dbg !1983

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1980
  store i8 48, i8* %205, align 1, !dbg !1980, !tbaa !954
  br label %206, !dbg !1980

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1983
  call void @llvm.dbg.value(metadata i64 %207, metadata !1804, metadata !DIExpression()), !dbg !1864
  br label %473, !dbg !1984

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !1985

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1986

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !1987

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !1989
  br i1 %214, label %215, label %473, !dbg !1989

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !1991
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1992
  %218 = load i8, i8* %217, align 1, !dbg !1992, !tbaa !954
  %219 = icmp eq i8 %218, 63, !dbg !1993
  br i1 %219, label %220, label %473, !dbg !1994

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1995
  %222 = load i8, i8* %221, align 1, !dbg !1995, !tbaa !954
  %223 = sext i8 %222 to i32, !dbg !1995
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
  ], !dbg !1996

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !1997

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1814, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i64 undef, metadata !1803, metadata !DIExpression()), !dbg !1864
  %226 = icmp ult i64 %123, %129, !dbg !1999
  br i1 %226, label %227, label %229, !dbg !2002

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1999
  store i8 63, i8* %228, align 1, !dbg !1999, !tbaa !954
  br label %229, !dbg !1999

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !2002
  call void @llvm.dbg.value(metadata i64 %230, metadata !1804, metadata !DIExpression()), !dbg !1864
  %231 = icmp ult i64 %230, %129, !dbg !2003
  br i1 %231, label %232, label %234, !dbg !2006

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2003
  store i8 34, i8* %233, align 1, !dbg !2003, !tbaa !954
  br label %234, !dbg !2003

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !2006
  call void @llvm.dbg.value(metadata i64 %235, metadata !1804, metadata !DIExpression()), !dbg !1864
  %236 = icmp ult i64 %235, %129, !dbg !2007
  br i1 %236, label %237, label %239, !dbg !2010

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2007
  store i8 34, i8* %238, align 1, !dbg !2007, !tbaa !954
  br label %239, !dbg !2007

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !2010
  call void @llvm.dbg.value(metadata i64 %240, metadata !1804, metadata !DIExpression()), !dbg !1864
  %241 = icmp ult i64 %240, %129, !dbg !2011
  br i1 %241, label %242, label %244, !dbg !2014

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2011
  store i8 63, i8* %243, align 1, !dbg !2011, !tbaa !954
  br label %244, !dbg !2011

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !2014
  call void @llvm.dbg.value(metadata i64 %245, metadata !1804, metadata !DIExpression()), !dbg !1864
  br label %473, !dbg !2015

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1818, metadata !DIExpression()), !dbg !1931
  br label %256, !dbg !2016

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1818, metadata !DIExpression()), !dbg !1931
  br label %256, !dbg !2017

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1818, metadata !DIExpression()), !dbg !1931
  br label %254, !dbg !2018

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1818, metadata !DIExpression()), !dbg !1931
  br label %254, !dbg !2019

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1818, metadata !DIExpression()), !dbg !1931
  br label %256, !dbg !2020

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !1818, metadata !DIExpression()), !dbg !1931
  br i1 %110, label %252, label %253, !dbg !2021

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !2022

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !2025

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !2027
  call void @llvm.dbg.value(metadata i8 %255, metadata !1818, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.label(metadata !1859), !dbg !2028
  br i1 %111, label %256, label %631, !dbg !2029

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !2027
  call void @llvm.dbg.value(metadata i8 %257, metadata !1818, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.label(metadata !1860), !dbg !2031
  br i1 %102, label %495, label %473, !dbg !2032

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2033

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2034, !tbaa !954
  %261 = icmp eq i8 %260, 0, !dbg !2036
  br i1 %261, label %262, label %473, !dbg !2037

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !2038
  br i1 %263, label %264, label %473, !dbg !2040

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1821, metadata !DIExpression()), !dbg !1931
  br label %265, !dbg !2041

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !1931
  call void @llvm.dbg.value(metadata i8 %266, metadata !1821, metadata !DIExpression()), !dbg !1931
  br i1 %111, label %473, label %631, !dbg !2042

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1812, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 1, metadata !1821, metadata !DIExpression()), !dbg !1931
  br i1 %110, label %268, label %473, !dbg !2044

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !2045

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !2048
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !2050
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !2050
  %274 = select i1 %272, i64 %129, i64 0, !dbg !2050
  call void @llvm.dbg.value(metadata i64 %274, metadata !1795, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %273, metadata !1805, metadata !DIExpression()), !dbg !1864
  %275 = icmp ult i64 %123, %274, !dbg !2051
  br i1 %275, label %276, label %278, !dbg !2054

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2051
  store i8 39, i8* %277, align 1, !dbg !2051, !tbaa !954
  br label %278, !dbg !2051

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !2054
  call void @llvm.dbg.value(metadata i64 %279, metadata !1804, metadata !DIExpression()), !dbg !1864
  %280 = icmp ult i64 %279, %274, !dbg !2055
  br i1 %280, label %281, label %283, !dbg !2058

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2055
  store i8 92, i8* %282, align 1, !dbg !2055, !tbaa !954
  br label %283, !dbg !2055

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !2058
  call void @llvm.dbg.value(metadata i64 %284, metadata !1804, metadata !DIExpression()), !dbg !1864
  %285 = icmp ult i64 %284, %274, !dbg !2059
  br i1 %285, label %286, label %288, !dbg !2062

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2059
  store i8 39, i8* %287, align 1, !dbg !2059, !tbaa !954
  br label %288, !dbg !2059

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !2062
  call void @llvm.dbg.value(metadata i64 %289, metadata !1804, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 0, metadata !1811, metadata !DIExpression()), !dbg !1864
  br label %473, !dbg !2063

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !2064

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1822, metadata !DIExpression()), !dbg !2065
  %292 = tail call i16** @__ctype_b_loc() #30, !dbg !2066
  %293 = load i16*, i16** %292, align 8, !dbg !2066, !tbaa !718
  %294 = zext i8 %158 to i64, !dbg !2066
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2066
  %296 = load i16, i16* %295, align 2, !dbg !2066, !tbaa !963
  %297 = lshr i16 %296, 14, !dbg !2068
  %298 = trunc i16 %297 to i8, !dbg !2068
  %299 = and i8 %298, 1, !dbg !2068
  call void @llvm.dbg.value(metadata i8 %354, metadata !1825, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i64 %355, metadata !1822, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i64 %306, metadata !1797, metadata !DIExpression()), !dbg !1864
  %300 = icmp eq i8 %299, 0, !dbg !2069
  call void @llvm.dbg.value(metadata i1 %357, metadata !1821, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1931
  br label %359, !dbg !2070

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #26, !dbg !2071
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1826, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i8* %23, metadata !2073, metadata !DIExpression()) #26, !dbg !2081
  call void @llvm.dbg.value(metadata i32 0, metadata !2079, metadata !DIExpression()) #26, !dbg !2081
  call void @llvm.dbg.value(metadata i64 8, metadata !2080, metadata !DIExpression()) #26, !dbg !2081
  store i64 0, i64* %10, align 8, !dbg !2083
  call void @llvm.dbg.value(metadata i64 0, metadata !1822, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i8 1, metadata !1825, metadata !DIExpression()), !dbg !2065
  %302 = icmp eq i64 %154, -1, !dbg !2084
  br i1 %302, label %303, label %305, !dbg !2086

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #27, !dbg !2087
  call void @llvm.dbg.value(metadata i64 %304, metadata !1797, metadata !DIExpression()), !dbg !1864
  br label %305, !dbg !2088

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !1931
  call void @llvm.dbg.value(metadata i64 %306, metadata !1797, metadata !DIExpression()), !dbg !1864
  br label %307, !dbg !2089

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !2090
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !2091
  call void @llvm.dbg.value(metadata i8 %309, metadata !1825, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i64 %308, metadata !1822, metadata !DIExpression()), !dbg !2065
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #26, !dbg !2092
  %310 = add i64 %308, %122, !dbg !2093
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !2094
  %312 = sub i64 %306, %310, !dbg !2095
  call void @llvm.dbg.value(metadata i32* %12, metadata !1844, metadata !DIExpression(DW_OP_deref)), !dbg !2096
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #26, !dbg !2097
  call void @llvm.dbg.value(metadata i64 %313, metadata !1847, metadata !DIExpression()), !dbg !2096
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !2098

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !1822, metadata !DIExpression()), !dbg !2065
  %315 = icmp ugt i64 %306, %310, !dbg !2099
  br i1 %315, label %316, label %341, !dbg !2101

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !2102
  br label %318, !dbg !2102

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !1822, metadata !DIExpression()), !dbg !2065
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !2103
  %322 = load i8, i8* %321, align 1, !dbg !2103, !tbaa !954
  %323 = icmp eq i8 %322, 0, !dbg !2101
  br i1 %323, label %341, label %324, !dbg !2102

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !2104
  call void @llvm.dbg.value(metadata i64 %325, metadata !1822, metadata !DIExpression()), !dbg !2065
  %326 = add i64 %325, %122, !dbg !2105
  %327 = icmp ult i64 %326, %306, !dbg !2099
  br i1 %327, label %318, label %341, !dbg !2101, !llvm.loop !2106

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !2107
  call void @llvm.dbg.value(metadata i64 1, metadata !1848, metadata !DIExpression()), !dbg !2108
  br i1 %330, label %331, label %344, !dbg !2107

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !1848, metadata !DIExpression()), !dbg !2108
  %333 = add i64 %332, %310, !dbg !2109
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !2112
  %335 = load i8, i8* %334, align 1, !dbg !2112, !tbaa !954
  %336 = sext i8 %335 to i32, !dbg !2112
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !2113

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !2114
  call void @llvm.dbg.value(metadata i64 %338, metadata !1848, metadata !DIExpression()), !dbg !2108
  %339 = icmp eq i64 %338, %313, !dbg !2115
  br i1 %339, label %344, label %331, !dbg !2116, !llvm.loop !2117

340:                                              ; preds = %307
  br label %341, !dbg !2119

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1825, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i64 undef, metadata !1822, metadata !DIExpression()), !dbg !2065
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #26, !dbg !2119
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !2120, !tbaa !890
  call void @llvm.dbg.value(metadata i32 %345, metadata !1844, metadata !DIExpression()), !dbg !2096
  %346 = call i32 @iswprint(i32 %345) #26, !dbg !2122
  %347 = icmp eq i32 %346, 0, !dbg !2122
  %348 = select i1 %347, i8 0, i8 %309, !dbg !2123
  call void @llvm.dbg.value(metadata i8 %348, metadata !1825, metadata !DIExpression()), !dbg !2065
  %349 = add i64 %313, %308, !dbg !2124
  call void @llvm.dbg.value(metadata i64 %349, metadata !1822, metadata !DIExpression()), !dbg !2065
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #26, !dbg !2119
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #27, !dbg !2125
  %351 = icmp eq i32 %350, 0, !dbg !2126
  br i1 %351, label %307, label %353, !dbg !2127, !llvm.loop !2128

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !1825, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i64 undef, metadata !1822, metadata !DIExpression()), !dbg !2065
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #26, !dbg !2119
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #26, !dbg !2130
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #26, !dbg !2130
  call void @llvm.dbg.value(metadata i8 %354, metadata !1825, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i64 %355, metadata !1822, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i64 %306, metadata !1797, metadata !DIExpression()), !dbg !1864
  %356 = and i8 %354, 1, !dbg !2069
  %357 = icmp eq i8 %356, 0, !dbg !2069
  call void @llvm.dbg.value(metadata i1 %357, metadata !1821, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1931
  %358 = icmp ugt i64 %355, 1, !dbg !2131
  br i1 %358, label %367, label %359, !dbg !2070

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !2132
  br i1 %364, label %367, label %365, !dbg !2132

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !1931
  call void @llvm.dbg.value(metadata i8 %472, metadata !1821, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %441, metadata !1820, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %440, metadata !1819, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %439, metadata !1814, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %438, metadata !1811, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %371, metadata !1797, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %437, metadata !1804, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %375, metadata !1803, metadata !DIExpression()), !dbg !1864
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !2133
  call void @llvm.dbg.value(metadata i64 %372, metadata !1855, metadata !DIExpression()), !dbg !2134
  %373 = and i1 %102, %368
  br label %374, !dbg !2135

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !1924
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !1864
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !1873
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !1931
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !1931
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !2136
  call void @llvm.dbg.value(metadata i8 %380, metadata !1820, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %379, metadata !1819, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %378, metadata !1814, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %377, metadata !1811, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %376, metadata !1804, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %375, metadata !1803, metadata !DIExpression()), !dbg !1864
  br i1 %373, label %381, label %427, !dbg !2137

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !2142

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !1820, metadata !DIExpression()), !dbg !1931
  %383 = and i8 %377, 1, !dbg !2145
  %384 = icmp eq i8 %383, 0, !dbg !2145
  %385 = and i1 %110, %384, !dbg !2145
  br i1 %385, label %386, label %402, !dbg !2145

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !2147
  br i1 %387, label %388, label %390, !dbg !2151

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2147
  store i8 39, i8* %389, align 1, !dbg !2147, !tbaa !954
  br label %390, !dbg !2147

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !2151
  call void @llvm.dbg.value(metadata i64 %391, metadata !1804, metadata !DIExpression()), !dbg !1864
  %392 = icmp ult i64 %391, %129, !dbg !2152
  br i1 %392, label %393, label %395, !dbg !2155

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !2152
  store i8 36, i8* %394, align 1, !dbg !2152, !tbaa !954
  br label %395, !dbg !2152

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !2155
  call void @llvm.dbg.value(metadata i64 %396, metadata !1804, metadata !DIExpression()), !dbg !1864
  %397 = icmp ult i64 %396, %129, !dbg !2156
  br i1 %397, label %398, label %400, !dbg !2159

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2156
  store i8 39, i8* %399, align 1, !dbg !2156, !tbaa !954
  br label %400, !dbg !2156

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !2159
  call void @llvm.dbg.value(metadata i64 %401, metadata !1804, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 1, metadata !1811, metadata !DIExpression()), !dbg !1864
  br label %402, !dbg !2160

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !1864
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !1864
  call void @llvm.dbg.value(metadata i8 %404, metadata !1811, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %403, metadata !1804, metadata !DIExpression()), !dbg !1864
  %405 = icmp ult i64 %403, %129, !dbg !2161
  br i1 %405, label %406, label %408, !dbg !2164

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2161
  store i8 92, i8* %407, align 1, !dbg !2161, !tbaa !954
  br label %408, !dbg !2161

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !2164
  call void @llvm.dbg.value(metadata i64 %409, metadata !1804, metadata !DIExpression()), !dbg !1864
  %410 = icmp ult i64 %409, %129, !dbg !2165
  br i1 %410, label %411, label %415, !dbg !2168

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !2165
  %413 = or i8 %412, 48, !dbg !2165
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !2165
  store i8 %413, i8* %414, align 1, !dbg !2165, !tbaa !954
  br label %415, !dbg !2165

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !2168
  call void @llvm.dbg.value(metadata i64 %416, metadata !1804, metadata !DIExpression()), !dbg !1864
  %417 = icmp ult i64 %416, %129, !dbg !2169
  br i1 %417, label %418, label %423, !dbg !2172

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !2169
  %420 = and i8 %419, 7, !dbg !2169
  %421 = or i8 %420, 48, !dbg !2169
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !2169
  store i8 %421, i8* %422, align 1, !dbg !2169, !tbaa !954
  br label %423, !dbg !2169

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !2172
  call void @llvm.dbg.value(metadata i64 %424, metadata !1804, metadata !DIExpression()), !dbg !1864
  %425 = and i8 %378, 7, !dbg !2173
  %426 = or i8 %425, 48, !dbg !2174
  call void @llvm.dbg.value(metadata i8 %426, metadata !1814, metadata !DIExpression()), !dbg !1931
  br label %436, !dbg !2175

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !2176
  %429 = icmp eq i8 %428, 0, !dbg !2176
  br i1 %429, label %436, label %430, !dbg !2178

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !2179
  br i1 %431, label %432, label %434, !dbg !2183

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2179
  store i8 92, i8* %433, align 1, !dbg !2179, !tbaa !954
  br label %434, !dbg !2179

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !2183
  call void @llvm.dbg.value(metadata i64 %435, metadata !1804, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 0, metadata !1819, metadata !DIExpression()), !dbg !1931
  br label %436, !dbg !2184

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !1864
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !1873
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !1931
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !1931
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !1931
  call void @llvm.dbg.value(metadata i8 %441, metadata !1820, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %440, metadata !1819, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %439, metadata !1814, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %438, metadata !1811, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %437, metadata !1804, metadata !DIExpression()), !dbg !1864
  %442 = add i64 %375, 1, !dbg !2185
  %443 = icmp ugt i64 %372, %442, !dbg !2187
  br i1 %443, label %444, label %471, !dbg !2188

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !2189
  %446 = icmp ne i8 %445, 0, !dbg !2189
  %447 = and i8 %441, 1, !dbg !2189
  %448 = icmp eq i8 %447, 0, !dbg !2189
  %449 = and i1 %446, %448, !dbg !2189
  br i1 %449, label %450, label %461, !dbg !2189

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !2192
  br i1 %451, label %452, label %454, !dbg !2196

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !2192
  store i8 39, i8* %453, align 1, !dbg !2192, !tbaa !954
  br label %454, !dbg !2192

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !2196
  call void @llvm.dbg.value(metadata i64 %455, metadata !1804, metadata !DIExpression()), !dbg !1864
  %456 = icmp ult i64 %455, %129, !dbg !2197
  br i1 %456, label %457, label %459, !dbg !2200

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !2197
  store i8 39, i8* %458, align 1, !dbg !2197, !tbaa !954
  br label %459, !dbg !2197

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !2200
  call void @llvm.dbg.value(metadata i64 %460, metadata !1804, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 0, metadata !1811, metadata !DIExpression()), !dbg !1864
  br label %461, !dbg !2201

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !2202
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !1864
  call void @llvm.dbg.value(metadata i8 %463, metadata !1811, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %462, metadata !1804, metadata !DIExpression()), !dbg !1864
  %464 = icmp ult i64 %462, %129, !dbg !2203
  br i1 %464, label %465, label %467, !dbg !2206

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !2203
  store i8 %439, i8* %466, align 1, !dbg !2203, !tbaa !954
  br label %467, !dbg !2203

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !2206
  call void @llvm.dbg.value(metadata i64 %468, metadata !1804, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %442, metadata !1803, metadata !DIExpression()), !dbg !1864
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !2207
  %470 = load i8, i8* %469, align 1, !dbg !2207, !tbaa !954
  call void @llvm.dbg.value(metadata i8 %470, metadata !1814, metadata !DIExpression()), !dbg !1931
  br label %374, !dbg !2208, !llvm.loop !2209

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !1931
  call void @llvm.dbg.value(metadata i8 %472, metadata !1821, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %441, metadata !1820, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %440, metadata !1819, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %439, metadata !1814, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %438, metadata !1811, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %371, metadata !1797, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %437, metadata !1804, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %375, metadata !1803, metadata !DIExpression()), !dbg !1864
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !1924
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !1864
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !1869
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !2212
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !1864
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !1864
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !1931
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !1931
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !1931
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !1795, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 %482, metadata !1821, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %481, metadata !1820, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %156, metadata !1819, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %480, metadata !1814, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %479, metadata !1812, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 %478, metadata !1811, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %477, metadata !1797, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %476, metadata !1805, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %475, metadata !1804, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %474, metadata !1803, metadata !DIExpression()), !dbg !1864
  br i1 %116, label %494, label %484, !dbg !2213

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !2215
  %486 = zext i8 %485 to i64, !dbg !2215
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !2216
  %488 = load i32, i32* %487, align 4, !dbg !2216, !tbaa !890
  %489 = and i8 %480, 31, !dbg !2217
  %490 = zext i8 %489 to i32, !dbg !2217
  %491 = shl nuw i32 1, %490, !dbg !2218
  %492 = and i32 %488, %491, !dbg !2218
  %493 = icmp eq i32 %492, 0, !dbg !2218
  br i1 %493, label %494, label %495, !dbg !2219

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !2220

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !2221
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !1864
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !1869
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !2212
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !1873
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !1874
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !1931
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !1931
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !1795, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 %503, metadata !1821, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %502, metadata !1814, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %501, metadata !1812, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 %500, metadata !1811, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %499, metadata !1797, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %498, metadata !1805, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %497, metadata !1804, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %496, metadata !1803, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.label(metadata !1861), !dbg !2222
  br i1 %109, label %505, label %635, !dbg !2223

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !1820, metadata !DIExpression()), !dbg !1931
  %506 = and i8 %500, 1, !dbg !2225
  %507 = icmp eq i8 %506, 0, !dbg !2225
  %508 = and i1 %110, %507, !dbg !2225
  br i1 %508, label %509, label %525, !dbg !2225

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !2227
  br i1 %510, label %511, label %513, !dbg !2231

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !2227
  store i8 39, i8* %512, align 1, !dbg !2227, !tbaa !954
  br label %513, !dbg !2227

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !2231
  call void @llvm.dbg.value(metadata i64 %514, metadata !1804, metadata !DIExpression()), !dbg !1864
  %515 = icmp ult i64 %514, %504, !dbg !2232
  br i1 %515, label %516, label %518, !dbg !2235

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !2232
  store i8 36, i8* %517, align 1, !dbg !2232, !tbaa !954
  br label %518, !dbg !2232

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !2235
  call void @llvm.dbg.value(metadata i64 %519, metadata !1804, metadata !DIExpression()), !dbg !1864
  %520 = icmp ult i64 %519, %504, !dbg !2236
  br i1 %520, label %521, label %523, !dbg !2239

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2236
  store i8 39, i8* %522, align 1, !dbg !2236, !tbaa !954
  br label %523, !dbg !2236

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !2239
  call void @llvm.dbg.value(metadata i64 %524, metadata !1804, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 1, metadata !1811, metadata !DIExpression()), !dbg !1864
  br label %525, !dbg !2240

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !1931
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !1864
  call void @llvm.dbg.value(metadata i8 %527, metadata !1811, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %526, metadata !1804, metadata !DIExpression()), !dbg !1864
  %528 = icmp ult i64 %526, %504, !dbg !2241
  br i1 %528, label %529, label %531, !dbg !2244

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2241
  store i8 92, i8* %530, align 1, !dbg !2241, !tbaa !954
  br label %531, !dbg !2241

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !2244
  call void @llvm.dbg.value(metadata i64 %543, metadata !1795, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 %542, metadata !1821, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %541, metadata !1820, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %540, metadata !1814, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %539, metadata !1812, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 %538, metadata !1811, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %537, metadata !1797, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %536, metadata !1805, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %535, metadata !1804, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %534, metadata !1803, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.label(metadata !1862), !dbg !2245
  br label %560, !dbg !2246

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !2221
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !1864
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !1869
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !2212
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !1873
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !1874
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !2249
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1931
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1931
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !1795, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 %542, metadata !1821, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %541, metadata !1820, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %540, metadata !1814, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 %539, metadata !1812, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 %538, metadata !1811, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %537, metadata !1797, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %536, metadata !1805, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %535, metadata !1804, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %534, metadata !1803, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.label(metadata !1862), !dbg !2245
  %544 = and i8 %538, 1, !dbg !2246
  %545 = icmp ne i8 %544, 0, !dbg !2246
  %546 = and i8 %541, 1, !dbg !2246
  %547 = icmp eq i8 %546, 0, !dbg !2246
  %548 = and i1 %545, %547, !dbg !2246
  br i1 %548, label %549, label %560, !dbg !2246

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !2250
  br i1 %550, label %551, label %553, !dbg !2254

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !2250
  store i8 39, i8* %552, align 1, !dbg !2250, !tbaa !954
  br label %553, !dbg !2250

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !2254
  call void @llvm.dbg.value(metadata i64 %554, metadata !1804, metadata !DIExpression()), !dbg !1864
  %555 = icmp ult i64 %554, %543, !dbg !2255
  br i1 %555, label %556, label %558, !dbg !2258

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !2255
  store i8 39, i8* %557, align 1, !dbg !2255, !tbaa !954
  br label %558, !dbg !2255

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !2258
  call void @llvm.dbg.value(metadata i64 %559, metadata !1804, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 0, metadata !1811, metadata !DIExpression()), !dbg !1864
  br label %560, !dbg !2259

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !1931
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !1864
  call void @llvm.dbg.value(metadata i8 %569, metadata !1811, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %568, metadata !1804, metadata !DIExpression()), !dbg !1864
  %570 = icmp ult i64 %568, %561, !dbg !2260
  br i1 %570, label %571, label %573, !dbg !2263

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !2260
  store i8 %563, i8* %572, align 1, !dbg !2260, !tbaa !954
  br label %573, !dbg !2260

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !2263
  call void @llvm.dbg.value(metadata i64 %574, metadata !1804, metadata !DIExpression()), !dbg !1864
  %575 = icmp eq i8 %562, 0, !dbg !2264
  %576 = select i1 %575, i8 0, i8 %128, !dbg !2266
  call void @llvm.dbg.value(metadata i8 %576, metadata !1813, metadata !DIExpression()), !dbg !1864
  br label %577, !dbg !2267

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !2221
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !1864
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !1869
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !2212
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !1873
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !1864
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !1875
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !1795, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 %584, metadata !1813, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 %583, metadata !1812, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 %582, metadata !1811, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %581, metadata !1797, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %580, metadata !1805, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %579, metadata !1804, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %578, metadata !1803, metadata !DIExpression()), !dbg !1864
  %586 = add i64 %578, 1, !dbg !2268
  call void @llvm.dbg.value(metadata i64 %586, metadata !1803, metadata !DIExpression()), !dbg !1864
  br label %121, !dbg !2269, !llvm.loop !2270

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !2272
  %590 = and i1 %110, %589, !dbg !2274
  %591 = xor i1 %590, true, !dbg !2274
  %592 = or i1 %109, %591, !dbg !2274
  br i1 %592, label %593, label %635, !dbg !2274

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !2275
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !2275
  br i1 %597, label %598, label %607, !dbg !2275

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !2277
  %600 = icmp eq i8 %599, 0, !dbg !2277
  br i1 %600, label %603, label %601, !dbg !2280

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2281
  br label %652, !dbg !2282

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !2283
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !2285
  br i1 %606, label %26, label %607, !dbg !2285

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !2286
  %610 = and i1 %609, %608, !dbg !2288
  br i1 %610, label %611, label %626, !dbg !2288

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !1806, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %123, metadata !1804, metadata !DIExpression()), !dbg !1864
  %612 = load i8, i8* %97, align 1, !dbg !2289, !tbaa !954
  %613 = icmp eq i8 %612, 0, !dbg !2292
  br i1 %613, label %626, label %614, !dbg !2292

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !1806, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %617, metadata !1804, metadata !DIExpression()), !dbg !1864
  %618 = icmp ult i64 %617, %129, !dbg !2293
  br i1 %618, label %619, label %621, !dbg !2296

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !2293
  store i8 %615, i8* %620, align 1, !dbg !2293, !tbaa !954
  br label %621, !dbg !2293

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !2296
  call void @llvm.dbg.value(metadata i64 %622, metadata !1804, metadata !DIExpression()), !dbg !1864
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !2297
  call void @llvm.dbg.value(metadata i8* %623, metadata !1806, metadata !DIExpression()), !dbg !1864
  %624 = load i8, i8* %623, align 1, !dbg !2289, !tbaa !954
  %625 = icmp eq i8 %624, 0, !dbg !2292
  br i1 %625, label %626, label %614, !dbg !2292, !llvm.loop !2298

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !1906
  call void @llvm.dbg.value(metadata i64 %627, metadata !1804, metadata !DIExpression()), !dbg !1864
  %628 = icmp ult i64 %627, %129, !dbg !2300
  br i1 %628, label %629, label %652, !dbg !2302

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !2303
  store i8 0, i8* %630, align 1, !dbg !2304, !tbaa !954
  br label %652, !dbg !2303

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1795, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %637, metadata !1797, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.label(metadata !1863), !dbg !2305
  %633 = icmp eq i8 %101, 0, !dbg !2306
  %634 = select i1 %633, i32 2, i32 4, !dbg !2306
  br label %642, !dbg !2306

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1795, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %637, metadata !1797, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.label(metadata !1863), !dbg !2305
  %639 = icmp eq i32 %93, 2, !dbg !2308
  %640 = icmp eq i8 %636, 0, !dbg !2306
  %641 = select i1 %640, i32 2, i32 4, !dbg !2306
  br i1 %639, label %642, label %646, !dbg !2306

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !2306

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !1798, metadata !DIExpression()), !dbg !1864
  %650 = and i32 %5, -3, !dbg !2309
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !2310
  br label %652, !dbg !2311

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !2312
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2313 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2317, metadata !DIExpression()), !dbg !2321
  call void @llvm.dbg.value(metadata i32 %1, metadata !2318, metadata !DIExpression()), !dbg !2321
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #26, !dbg !2322
  call void @llvm.dbg.value(metadata i8* %3, metadata !2319, metadata !DIExpression()), !dbg !2321
  %4 = icmp eq i8* %3, %0, !dbg !2323
  br i1 %4, label %5, label %72, !dbg !2325

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #26, !dbg !2326
  call void @llvm.dbg.value(metadata i8* %6, metadata !2320, metadata !DIExpression()), !dbg !2321
  call void @llvm.dbg.value(metadata i8* %6, metadata !2327, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i8* undef, metadata !2333, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i8 85, metadata !2334, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i8 84, metadata !2335, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i8 70, metadata !2336, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i8 45, metadata !2337, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i8 56, metadata !2338, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i8 0, metadata !2339, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i8 0, metadata !2340, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i8 0, metadata !2341, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i8 0, metadata !2342, metadata !DIExpression()), !dbg !2343
  %7 = load i8, i8* %6, align 1, !dbg !2346, !tbaa !954
  %8 = and i8 %7, -33, !dbg !2346
  %9 = sext i8 %8 to i32, !dbg !2346
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !2346

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2348, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8* undef, metadata !2353, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 84, metadata !2354, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 70, metadata !2355, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 45, metadata !2356, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 56, metadata !2357, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 0, metadata !2358, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 0, metadata !2359, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 0, metadata !2360, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 0, metadata !2361, metadata !DIExpression()), !dbg !2362
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2366
  %12 = load i8, i8* %11, align 1, !dbg !2366, !tbaa !954
  %13 = and i8 %12, -33, !dbg !2366
  %14 = icmp eq i8 %13, 84, !dbg !2366
  br i1 %14, label %15, label %69, !dbg !2366

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !2368, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i8* undef, metadata !2373, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i8 70, metadata !2374, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i8 45, metadata !2375, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i8 56, metadata !2376, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i8 0, metadata !2377, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i8 0, metadata !2378, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i8 0, metadata !2379, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i8 0, metadata !2380, metadata !DIExpression()), !dbg !2381
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2385
  %17 = load i8, i8* %16, align 1, !dbg !2385, !tbaa !954
  %18 = and i8 %17, -33, !dbg !2385
  %19 = icmp eq i8 %18, 70, !dbg !2385
  br i1 %19, label %20, label %69, !dbg !2385

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !2387, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i8* undef, metadata !2392, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i8 45, metadata !2393, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i8 56, metadata !2394, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i8 0, metadata !2395, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i8 0, metadata !2396, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i8 0, metadata !2397, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i8 0, metadata !2398, metadata !DIExpression()), !dbg !2399
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2403
  %22 = load i8, i8* %21, align 1, !dbg !2403, !tbaa !954
  %23 = icmp eq i8 %22, 45, !dbg !2403
  br i1 %23, label %24, label %69, !dbg !2405

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !2406, metadata !DIExpression()), !dbg !2417
  call void @llvm.dbg.value(metadata i8* undef, metadata !2411, metadata !DIExpression()), !dbg !2417
  call void @llvm.dbg.value(metadata i8 56, metadata !2412, metadata !DIExpression()), !dbg !2417
  call void @llvm.dbg.value(metadata i8 0, metadata !2413, metadata !DIExpression()), !dbg !2417
  call void @llvm.dbg.value(metadata i8 0, metadata !2414, metadata !DIExpression()), !dbg !2417
  call void @llvm.dbg.value(metadata i8 0, metadata !2415, metadata !DIExpression()), !dbg !2417
  call void @llvm.dbg.value(metadata i8 0, metadata !2416, metadata !DIExpression()), !dbg !2417
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2421
  %26 = load i8, i8* %25, align 1, !dbg !2421, !tbaa !954
  %27 = icmp eq i8 %26, 56, !dbg !2421
  br i1 %27, label %28, label %69, !dbg !2423

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !2424, metadata !DIExpression()), !dbg !2434
  call void @llvm.dbg.value(metadata i8* undef, metadata !2429, metadata !DIExpression()), !dbg !2434
  call void @llvm.dbg.value(metadata i8 0, metadata !2430, metadata !DIExpression()), !dbg !2434
  call void @llvm.dbg.value(metadata i8 0, metadata !2431, metadata !DIExpression()), !dbg !2434
  call void @llvm.dbg.value(metadata i8 0, metadata !2432, metadata !DIExpression()), !dbg !2434
  call void @llvm.dbg.value(metadata i8 0, metadata !2433, metadata !DIExpression()), !dbg !2434
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2438
  %30 = load i8, i8* %29, align 1, !dbg !2438, !tbaa !954
  %31 = icmp eq i8 %30, 0, !dbg !2438
  br i1 %31, label %32, label %69, !dbg !2440

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !2441, !tbaa !954
  %34 = icmp eq i8 %33, 96, !dbg !2442
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.72, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.73, i64 0, i64 0), !dbg !2441
  br label %72, !dbg !2443

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2348, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i8* undef, metadata !2353, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i8 66, metadata !2354, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i8 49, metadata !2355, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i8 56, metadata !2356, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i8 48, metadata !2357, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i8 51, metadata !2358, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i8 48, metadata !2359, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i8 0, metadata !2360, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i8 0, metadata !2361, metadata !DIExpression()), !dbg !2444
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2448
  %38 = load i8, i8* %37, align 1, !dbg !2448, !tbaa !954
  %39 = and i8 %38, -33, !dbg !2448
  %40 = icmp eq i8 %39, 66, !dbg !2448
  br i1 %40, label %41, label %69, !dbg !2448

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !2368, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i8* undef, metadata !2373, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i8 49, metadata !2374, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i8 56, metadata !2375, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i8 48, metadata !2376, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i8 51, metadata !2377, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i8 48, metadata !2378, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i8 0, metadata !2379, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i8 0, metadata !2380, metadata !DIExpression()), !dbg !2449
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2451
  %43 = load i8, i8* %42, align 1, !dbg !2451, !tbaa !954
  %44 = icmp eq i8 %43, 49, !dbg !2451
  br i1 %44, label %45, label %69, !dbg !2452

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !2387, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata i8* undef, metadata !2392, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata i8 56, metadata !2393, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata i8 48, metadata !2394, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata i8 51, metadata !2395, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata i8 48, metadata !2396, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata i8 0, metadata !2397, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata i8 0, metadata !2398, metadata !DIExpression()), !dbg !2453
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2455
  %47 = load i8, i8* %46, align 1, !dbg !2455, !tbaa !954
  %48 = icmp eq i8 %47, 56, !dbg !2455
  br i1 %48, label %49, label %69, !dbg !2456

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !2406, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i8* undef, metadata !2411, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i8 48, metadata !2412, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i8 51, metadata !2413, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i8 48, metadata !2414, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i8 0, metadata !2415, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i8 0, metadata !2416, metadata !DIExpression()), !dbg !2457
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2459
  %51 = load i8, i8* %50, align 1, !dbg !2459, !tbaa !954
  %52 = icmp eq i8 %51, 48, !dbg !2459
  br i1 %52, label %53, label %69, !dbg !2460

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !2424, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i8* undef, metadata !2429, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i8 51, metadata !2430, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i8 48, metadata !2431, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i8 0, metadata !2432, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i8 0, metadata !2433, metadata !DIExpression()), !dbg !2461
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2463
  %55 = load i8, i8* %54, align 1, !dbg !2463, !tbaa !954
  %56 = icmp eq i8 %55, 51, !dbg !2463
  br i1 %56, label %57, label %69, !dbg !2464

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !2465, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* undef, metadata !2470, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 48, metadata !2471, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 0, metadata !2472, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 0, metadata !2473, metadata !DIExpression()), !dbg !2474
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2478
  %59 = load i8, i8* %58, align 1, !dbg !2478, !tbaa !954
  %60 = icmp eq i8 %59, 48, !dbg !2478
  br i1 %60, label %61, label %69, !dbg !2480

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !2481, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.value(metadata i8* undef, metadata !2486, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.value(metadata i8 0, metadata !2487, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.value(metadata i8 0, metadata !2488, metadata !DIExpression()), !dbg !2489
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2493
  %63 = load i8, i8* %62, align 1, !dbg !2493, !tbaa !954
  %64 = icmp eq i8 %63, 0, !dbg !2493
  br i1 %64, label %65, label %69, !dbg !2495

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !2496, !tbaa !954
  %67 = icmp eq i8 %66, 96, !dbg !2497
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.74, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.75, i64 0, i64 0), !dbg !2496
  br label %72, !dbg !2498

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !2499
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.71, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), !dbg !2500
  br label %72, !dbg !2501

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !2321
  ret i8* %73, !dbg !2502
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #17

; Function Attrs: nounwind
declare !dbg !2503 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !2507 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2513 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2517, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.value(metadata i64 %1, metadata !2518, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2519, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.value(metadata i8* %0, metadata !2521, metadata !DIExpression()) #26, !dbg !2534
  call void @llvm.dbg.value(metadata i64 %1, metadata !2526, metadata !DIExpression()) #26, !dbg !2534
  call void @llvm.dbg.value(metadata i64* null, metadata !2527, metadata !DIExpression()) #26, !dbg !2534
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2528, metadata !DIExpression()) #26, !dbg !2534
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2536
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2536
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2529, metadata !DIExpression()) #26, !dbg !2534
  %6 = tail call i32* @__errno_location() #30, !dbg !2537
  %7 = load i32, i32* %6, align 4, !dbg !2537, !tbaa !890
  call void @llvm.dbg.value(metadata i32 %7, metadata !2530, metadata !DIExpression()) #26, !dbg !2534
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2538
  %9 = load i32, i32* %8, align 4, !dbg !2538, !tbaa !1738
  %10 = or i32 %9, 1, !dbg !2539
  call void @llvm.dbg.value(metadata i32 %10, metadata !2531, metadata !DIExpression()) #26, !dbg !2534
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2540
  %12 = load i32, i32* %11, align 8, !dbg !2540, !tbaa !1687
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2541
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2542
  %15 = load i8*, i8** %14, align 8, !dbg !2542, !tbaa !1760
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2543
  %17 = load i8*, i8** %16, align 8, !dbg !2543, !tbaa !1763
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #26, !dbg !2544
  %19 = add i64 %18, 1, !dbg !2545
  call void @llvm.dbg.value(metadata i64 %19, metadata !2532, metadata !DIExpression()) #26, !dbg !2534
  call void @llvm.dbg.value(metadata i64 %19, metadata !2546, metadata !DIExpression()) #26, !dbg !2551
  %20 = tail call noalias i8* @xmalloc(i64 %19) #26, !dbg !2553
  call void @llvm.dbg.value(metadata i8* %20, metadata !2533, metadata !DIExpression()) #26, !dbg !2534
  %21 = load i32, i32* %11, align 8, !dbg !2554, !tbaa !1687
  %22 = load i8*, i8** %14, align 8, !dbg !2555, !tbaa !1760
  %23 = load i8*, i8** %16, align 8, !dbg !2556, !tbaa !1763
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #26, !dbg !2557
  store i32 %7, i32* %6, align 4, !dbg !2558, !tbaa !890
  ret i8* %20, !dbg !2559
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2522 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2521, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i64 %1, metadata !2526, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i64* %2, metadata !2527, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2528, metadata !DIExpression()), !dbg !2560
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2561
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2561
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2529, metadata !DIExpression()), !dbg !2560
  %7 = tail call i32* @__errno_location() #30, !dbg !2562
  %8 = load i32, i32* %7, align 4, !dbg !2562, !tbaa !890
  call void @llvm.dbg.value(metadata i32 %8, metadata !2530, metadata !DIExpression()), !dbg !2560
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2563
  %10 = load i32, i32* %9, align 4, !dbg !2563, !tbaa !1738
  %11 = icmp eq i64* %2, null, !dbg !2564
  %12 = zext i1 %11 to i32, !dbg !2564
  %13 = or i32 %10, %12, !dbg !2565
  call void @llvm.dbg.value(metadata i32 %13, metadata !2531, metadata !DIExpression()), !dbg !2560
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2566
  %15 = load i32, i32* %14, align 8, !dbg !2566, !tbaa !1687
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2567
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2568
  %18 = load i8*, i8** %17, align 8, !dbg !2568, !tbaa !1760
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2569
  %20 = load i8*, i8** %19, align 8, !dbg !2569, !tbaa !1763
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !2570
  %22 = add i64 %21, 1, !dbg !2571
  call void @llvm.dbg.value(metadata i64 %22, metadata !2532, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i64 %22, metadata !2546, metadata !DIExpression()) #26, !dbg !2572
  %23 = tail call noalias i8* @xmalloc(i64 %22) #26, !dbg !2574
  call void @llvm.dbg.value(metadata i8* %23, metadata !2533, metadata !DIExpression()), !dbg !2560
  %24 = load i32, i32* %14, align 8, !dbg !2575, !tbaa !1687
  %25 = load i8*, i8** %17, align 8, !dbg !2576, !tbaa !1760
  %26 = load i8*, i8** %19, align 8, !dbg !2577, !tbaa !1763
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !2578
  store i32 %8, i32* %7, align 4, !dbg !2579, !tbaa !890
  br i1 %11, label %29, label %28, !dbg !2580

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2581, !tbaa !931
  br label %29, !dbg !2583

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2584
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2585 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2589, !tbaa !718
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2587, metadata !DIExpression()), !dbg !2590
  call void @llvm.dbg.value(metadata i32 1, metadata !2588, metadata !DIExpression()), !dbg !2590
  %2 = load i32, i32* @nslots, align 4, !dbg !2591, !tbaa !890
  %3 = icmp sgt i32 %2, 1, !dbg !2594
  br i1 %3, label %4, label %12, !dbg !2595

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2594
  br label %6, !dbg !2595

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !2588, metadata !DIExpression()), !dbg !2590
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !2596
  %9 = load i8*, i8** %8, align 8, !dbg !2596, !tbaa !2597
  tail call void @free(i8* %9) #26, !dbg !2599
  %10 = add nuw nsw i64 %7, 1, !dbg !2600
  call void @llvm.dbg.value(metadata i64 %10, metadata !2588, metadata !DIExpression()), !dbg !2590
  %11 = icmp eq i64 %10, %5, !dbg !2594
  br i1 %11, label %12, label %6, !dbg !2595, !llvm.loop !2601

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2603
  %14 = load i8*, i8** %13, align 8, !dbg !2603, !tbaa !2597
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2605
  br i1 %15, label %17, label %16, !dbg !2606

16:                                               ; preds = %12
  tail call void @free(i8* %14) #26, !dbg !2607
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2609, !tbaa !2610
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2611, !tbaa !2597
  br label %17, !dbg !2612

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2613
  br i1 %18, label %21, label %19, !dbg !2615

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2616
  tail call void @free(i8* %20) #26, !dbg !2618
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2619, !tbaa !718
  br label %21, !dbg !2620

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2621, !tbaa !890
  ret void, !dbg !2622
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2623 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2625, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata i8* %1, metadata !2626, metadata !DIExpression()), !dbg !2627
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2628
  ret i8* %3, !dbg !2629
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2630 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2634, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i8* %1, metadata !2635, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i64 %2, metadata !2636, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2637, metadata !DIExpression()), !dbg !2649
  %5 = tail call i32* @__errno_location() #30, !dbg !2650
  %6 = load i32, i32* %5, align 4, !dbg !2650, !tbaa !890
  call void @llvm.dbg.value(metadata i32 %6, metadata !2638, metadata !DIExpression()), !dbg !2649
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2651, !tbaa !718
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2639, metadata !DIExpression()), !dbg !2649
  %8 = icmp slt i32 %0, 0, !dbg !2652
  br i1 %8, label %9, label %10, !dbg !2654

9:                                                ; preds = %4
  tail call void @abort() #28, !dbg !2655
  unreachable, !dbg !2655

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2656, !tbaa !890
  %12 = icmp sgt i32 %11, %0, !dbg !2657
  br i1 %12, label %34, label %13, !dbg !2658

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2659
  call void @llvm.dbg.value(metadata i1 %14, metadata !2640, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2660
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2643, metadata !DIExpression()), !dbg !2660
  %15 = icmp eq i32 %0, 2147483647, !dbg !2661
  br i1 %15, label %16, label %17, !dbg !2663

16:                                               ; preds = %13
  tail call void @xalloc_die() #28, !dbg !2664
  unreachable, !dbg !2664

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2665
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2665
  %20 = add nuw nsw i32 %0, 1, !dbg !2666
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !2667
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #26, !dbg !2668
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2668
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2639, metadata !DIExpression()), !dbg !2649
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2669, !tbaa !718
  br i1 %14, label %25, label %26, !dbg !2670

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2671, !tbaa.struct !2673
  br label %26, !dbg !2674

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2675, !tbaa !890
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2676
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2677
  %31 = sub nsw i32 %20, %27, !dbg !2678
  %32 = sext i32 %31 to i64, !dbg !2679
  %33 = shl nsw i64 %32, 4, !dbg !2680
  call void @llvm.dbg.value(metadata i8* %30, metadata !2073, metadata !DIExpression()) #26, !dbg !2681
  call void @llvm.dbg.value(metadata i32 0, metadata !2079, metadata !DIExpression()) #26, !dbg !2681
  call void @llvm.dbg.value(metadata i64 %33, metadata !2080, metadata !DIExpression()) #26, !dbg !2681
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #26, !dbg !2683
  store i32 %20, i32* @nslots, align 4, !dbg !2684, !tbaa !890
  br label %34, !dbg !2685

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2649
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2639, metadata !DIExpression()), !dbg !2649
  %36 = zext i32 %0 to i64, !dbg !2686
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2687
  %38 = load i64, i64* %37, align 8, !dbg !2687, !tbaa !2610
  call void @llvm.dbg.value(metadata i64 %38, metadata !2644, metadata !DIExpression()), !dbg !2688
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2689
  %40 = load i8*, i8** %39, align 8, !dbg !2689, !tbaa !2597
  call void @llvm.dbg.value(metadata i8* %40, metadata !2646, metadata !DIExpression()), !dbg !2688
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2690
  %42 = load i32, i32* %41, align 4, !dbg !2690, !tbaa !1738
  %43 = or i32 %42, 1, !dbg !2691
  call void @llvm.dbg.value(metadata i32 %43, metadata !2647, metadata !DIExpression()), !dbg !2688
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2692
  %45 = load i32, i32* %44, align 8, !dbg !2692, !tbaa !1687
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2693
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2694
  %48 = load i8*, i8** %47, align 8, !dbg !2694, !tbaa !1760
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2695
  %50 = load i8*, i8** %49, align 8, !dbg !2695, !tbaa !1763
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2696
  call void @llvm.dbg.value(metadata i64 %51, metadata !2648, metadata !DIExpression()), !dbg !2688
  %52 = icmp ugt i64 %38, %51, !dbg !2697
  br i1 %52, label %63, label %53, !dbg !2699

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2700
  call void @llvm.dbg.value(metadata i64 %54, metadata !2644, metadata !DIExpression()), !dbg !2688
  store i64 %54, i64* %37, align 8, !dbg !2702, !tbaa !2610
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2703
  br i1 %55, label %57, label %56, !dbg !2705

56:                                               ; preds = %53
  tail call void @free(i8* %40) #26, !dbg !2706
  br label %57, !dbg !2706

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !2546, metadata !DIExpression()) #26, !dbg !2707
  %58 = tail call noalias i8* @xmalloc(i64 %54) #26, !dbg !2709
  call void @llvm.dbg.value(metadata i8* %58, metadata !2646, metadata !DIExpression()), !dbg !2688
  store i8* %58, i8** %39, align 8, !dbg !2710, !tbaa !2597
  %59 = load i32, i32* %44, align 8, !dbg !2711, !tbaa !1687
  %60 = load i8*, i8** %47, align 8, !dbg !2712, !tbaa !1760
  %61 = load i8*, i8** %49, align 8, !dbg !2713, !tbaa !1763
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2714
  br label %63, !dbg !2715

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2688
  call void @llvm.dbg.value(metadata i8* %64, metadata !2646, metadata !DIExpression()), !dbg !2688
  store i32 %6, i32* %5, align 4, !dbg !2716, !tbaa !890
  ret i8* %64, !dbg !2717
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2718 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2722, metadata !DIExpression()), !dbg !2725
  call void @llvm.dbg.value(metadata i8* %1, metadata !2723, metadata !DIExpression()), !dbg !2725
  call void @llvm.dbg.value(metadata i64 %2, metadata !2724, metadata !DIExpression()), !dbg !2725
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2726
  ret i8* %4, !dbg !2727
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2728 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2730, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i32 0, metadata !2625, metadata !DIExpression()) #26, !dbg !2732
  call void @llvm.dbg.value(metadata i8* %0, metadata !2626, metadata !DIExpression()) #26, !dbg !2732
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #26, !dbg !2734
  ret i8* %2, !dbg !2735
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2736 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2740, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.value(metadata i64 %1, metadata !2741, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.value(metadata i32 0, metadata !2722, metadata !DIExpression()) #26, !dbg !2743
  call void @llvm.dbg.value(metadata i8* %0, metadata !2723, metadata !DIExpression()) #26, !dbg !2743
  call void @llvm.dbg.value(metadata i64 %1, metadata !2724, metadata !DIExpression()) #26, !dbg !2743
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #26, !dbg !2745
  ret i8* %3, !dbg !2746
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2747 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2751, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i32 %1, metadata !2752, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8* %2, metadata !2753, metadata !DIExpression()), !dbg !2755
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2756
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2756
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2754, metadata !DIExpression()), !dbg !2757
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2758), !dbg !2761
  call void @llvm.dbg.value(metadata i32 %1, metadata !2762, metadata !DIExpression()) #26, !dbg !2768
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2767, metadata !DIExpression()) #26, !dbg !2770
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #26, !dbg !2770, !alias.scope !2758
  %6 = icmp eq i32 %1, 10, !dbg !2771
  br i1 %6, label %7, label %8, !dbg !2773

7:                                                ; preds = %3
  tail call void @abort() #28, !dbg !2774, !noalias !2758
  unreachable, !dbg !2774

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2775
  store i32 %1, i32* %9, align 8, !dbg !2776, !tbaa !1687, !alias.scope !2758
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2777
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2778
  ret i8* %10, !dbg !2779
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2780 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2784, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.value(metadata i32 %1, metadata !2785, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.value(metadata i8* %2, metadata !2786, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.value(metadata i64 %3, metadata !2787, metadata !DIExpression()), !dbg !2789
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2790
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2790
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2788, metadata !DIExpression()), !dbg !2791
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2792), !dbg !2795
  call void @llvm.dbg.value(metadata i32 %1, metadata !2762, metadata !DIExpression()) #26, !dbg !2796
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2767, metadata !DIExpression()) #26, !dbg !2798
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #26, !dbg !2798, !alias.scope !2792
  %7 = icmp eq i32 %1, 10, !dbg !2799
  br i1 %7, label %8, label %9, !dbg !2800

8:                                                ; preds = %4
  tail call void @abort() #28, !dbg !2801, !noalias !2792
  unreachable, !dbg !2801

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2802
  store i32 %1, i32* %10, align 8, !dbg !2803, !tbaa !1687, !alias.scope !2792
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2804
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2805
  ret i8* %11, !dbg !2806
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2807 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2811, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata i8* %1, metadata !2812, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata i32 0, metadata !2751, metadata !DIExpression()) #26, !dbg !2814
  call void @llvm.dbg.value(metadata i32 %0, metadata !2752, metadata !DIExpression()) #26, !dbg !2814
  call void @llvm.dbg.value(metadata i8* %1, metadata !2753, metadata !DIExpression()) #26, !dbg !2814
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2816
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2816
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2754, metadata !DIExpression()) #26, !dbg !2817
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2818) #26, !dbg !2821
  call void @llvm.dbg.value(metadata i32 %0, metadata !2762, metadata !DIExpression()) #26, !dbg !2822
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2767, metadata !DIExpression()) #26, !dbg !2824
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #26, !dbg !2824, !alias.scope !2818
  %5 = icmp eq i32 %0, 10, !dbg !2825
  br i1 %5, label %6, label %7, !dbg !2826

6:                                                ; preds = %2
  tail call void @abort() #28, !dbg !2827, !noalias !2818
  unreachable, !dbg !2827

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2828
  store i32 %0, i32* %8, align 8, !dbg !2829, !tbaa !1687, !alias.scope !2818
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #26, !dbg !2830
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2831
  ret i8* %9, !dbg !2832
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2833 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2837, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8* %1, metadata !2838, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i64 %2, metadata !2839, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i32 0, metadata !2784, metadata !DIExpression()) #26, !dbg !2841
  call void @llvm.dbg.value(metadata i32 %0, metadata !2785, metadata !DIExpression()) #26, !dbg !2841
  call void @llvm.dbg.value(metadata i8* %1, metadata !2786, metadata !DIExpression()) #26, !dbg !2841
  call void @llvm.dbg.value(metadata i64 %2, metadata !2787, metadata !DIExpression()) #26, !dbg !2841
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2843
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2843
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2788, metadata !DIExpression()) #26, !dbg !2844
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2845) #26, !dbg !2848
  call void @llvm.dbg.value(metadata i32 %0, metadata !2762, metadata !DIExpression()) #26, !dbg !2849
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2767, metadata !DIExpression()) #26, !dbg !2851
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #26, !dbg !2851, !alias.scope !2845
  %6 = icmp eq i32 %0, 10, !dbg !2852
  br i1 %6, label %7, label %8, !dbg !2853

7:                                                ; preds = %3
  tail call void @abort() #28, !dbg !2854, !noalias !2845
  unreachable, !dbg !2854

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2855
  store i32 %0, i32* %9, align 8, !dbg !2856, !tbaa !1687, !alias.scope !2845
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #26, !dbg !2857
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2858
  ret i8* %10, !dbg !2859
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2860 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2864, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata i64 %1, metadata !2865, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata i8 %2, metadata !2866, metadata !DIExpression()), !dbg !2868
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2869
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2869
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2867, metadata !DIExpression()), !dbg !2870
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2871, !tbaa.struct !2872
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1705, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata i8 %2, metadata !1706, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata i32 1, metadata !1707, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata i8 %2, metadata !1708, metadata !DIExpression()), !dbg !2873
  %6 = lshr i8 %2, 5, !dbg !2875
  %7 = zext i8 %6 to i64, !dbg !2875
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2876
  call void @llvm.dbg.value(metadata i32* %8, metadata !1709, metadata !DIExpression()), !dbg !2873
  %9 = and i8 %2, 31, !dbg !2877
  %10 = zext i8 %9 to i32, !dbg !2877
  call void @llvm.dbg.value(metadata i32 %10, metadata !1711, metadata !DIExpression()), !dbg !2873
  %11 = load i32, i32* %8, align 4, !dbg !2878, !tbaa !890
  %12 = lshr i32 %11, %10, !dbg !2879
  %13 = and i32 %12, 1, !dbg !2880
  call void @llvm.dbg.value(metadata i32 %13, metadata !1712, metadata !DIExpression()), !dbg !2873
  %14 = xor i32 %13, 1, !dbg !2881
  %15 = shl i32 %14, %10, !dbg !2882
  %16 = xor i32 %15, %11, !dbg !2883
  store i32 %16, i32* %8, align 4, !dbg !2883, !tbaa !890
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2884
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2885
  ret i8* %17, !dbg !2886
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2887 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2891, metadata !DIExpression()), !dbg !2893
  call void @llvm.dbg.value(metadata i8 %1, metadata !2892, metadata !DIExpression()), !dbg !2893
  call void @llvm.dbg.value(metadata i8* %0, metadata !2864, metadata !DIExpression()) #26, !dbg !2894
  call void @llvm.dbg.value(metadata i64 -1, metadata !2865, metadata !DIExpression()) #26, !dbg !2894
  call void @llvm.dbg.value(metadata i8 %1, metadata !2866, metadata !DIExpression()) #26, !dbg !2894
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2896
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2896
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2867, metadata !DIExpression()) #26, !dbg !2897
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #26, !dbg !2898, !tbaa.struct !2872
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1705, metadata !DIExpression()) #26, !dbg !2899
  call void @llvm.dbg.value(metadata i8 %1, metadata !1706, metadata !DIExpression()) #26, !dbg !2899
  call void @llvm.dbg.value(metadata i32 1, metadata !1707, metadata !DIExpression()) #26, !dbg !2899
  call void @llvm.dbg.value(metadata i8 %1, metadata !1708, metadata !DIExpression()) #26, !dbg !2899
  %5 = lshr i8 %1, 5, !dbg !2901
  %6 = zext i8 %5 to i64, !dbg !2901
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2902
  call void @llvm.dbg.value(metadata i32* %7, metadata !1709, metadata !DIExpression()) #26, !dbg !2899
  %8 = and i8 %1, 31, !dbg !2903
  %9 = zext i8 %8 to i32, !dbg !2903
  call void @llvm.dbg.value(metadata i32 %9, metadata !1711, metadata !DIExpression()) #26, !dbg !2899
  %10 = load i32, i32* %7, align 4, !dbg !2904, !tbaa !890
  %11 = lshr i32 %10, %9, !dbg !2905
  %12 = and i32 %11, 1, !dbg !2906
  call void @llvm.dbg.value(metadata i32 %12, metadata !1712, metadata !DIExpression()) #26, !dbg !2899
  %13 = xor i32 %12, 1, !dbg !2907
  %14 = shl i32 %13, %9, !dbg !2908
  %15 = xor i32 %14, %10, !dbg !2909
  store i32 %15, i32* %7, align 4, !dbg !2909, !tbaa !890
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #26, !dbg !2910
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2911
  ret i8* %16, !dbg !2912
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2913 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2915, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata i8* %0, metadata !2891, metadata !DIExpression()) #26, !dbg !2917
  call void @llvm.dbg.value(metadata i8 58, metadata !2892, metadata !DIExpression()) #26, !dbg !2917
  call void @llvm.dbg.value(metadata i8* %0, metadata !2864, metadata !DIExpression()) #26, !dbg !2919
  call void @llvm.dbg.value(metadata i64 -1, metadata !2865, metadata !DIExpression()) #26, !dbg !2919
  call void @llvm.dbg.value(metadata i8 58, metadata !2866, metadata !DIExpression()) #26, !dbg !2919
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2921
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #26, !dbg !2921
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2867, metadata !DIExpression()) #26, !dbg !2922
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #26, !dbg !2923, !tbaa.struct !2872
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1705, metadata !DIExpression()) #26, !dbg !2924
  call void @llvm.dbg.value(metadata i8 58, metadata !1706, metadata !DIExpression()) #26, !dbg !2924
  call void @llvm.dbg.value(metadata i32 1, metadata !1707, metadata !DIExpression()) #26, !dbg !2924
  call void @llvm.dbg.value(metadata i8 58, metadata !1708, metadata !DIExpression()) #26, !dbg !2924
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2926
  call void @llvm.dbg.value(metadata i32* %4, metadata !1709, metadata !DIExpression()) #26, !dbg !2924
  call void @llvm.dbg.value(metadata i32 26, metadata !1711, metadata !DIExpression()) #26, !dbg !2924
  %5 = load i32, i32* %4, align 4, !dbg !2927, !tbaa !890
  call void @llvm.dbg.value(metadata i32 %5, metadata !1712, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #26, !dbg !2924
  %6 = or i32 %5, 67108864, !dbg !2928
  store i32 %6, i32* %4, align 4, !dbg !2928, !tbaa !890
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #26, !dbg !2929
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #26, !dbg !2930
  ret i8* %7, !dbg !2931
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2932 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2934, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 %1, metadata !2935, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i8* %0, metadata !2864, metadata !DIExpression()) #26, !dbg !2937
  call void @llvm.dbg.value(metadata i64 %1, metadata !2865, metadata !DIExpression()) #26, !dbg !2937
  call void @llvm.dbg.value(metadata i8 58, metadata !2866, metadata !DIExpression()) #26, !dbg !2937
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2939
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2939
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2867, metadata !DIExpression()) #26, !dbg !2940
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #26, !dbg !2941, !tbaa.struct !2872
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1705, metadata !DIExpression()) #26, !dbg !2942
  call void @llvm.dbg.value(metadata i8 58, metadata !1706, metadata !DIExpression()) #26, !dbg !2942
  call void @llvm.dbg.value(metadata i32 1, metadata !1707, metadata !DIExpression()) #26, !dbg !2942
  call void @llvm.dbg.value(metadata i8 58, metadata !1708, metadata !DIExpression()) #26, !dbg !2942
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2944
  call void @llvm.dbg.value(metadata i32* %5, metadata !1709, metadata !DIExpression()) #26, !dbg !2942
  call void @llvm.dbg.value(metadata i32 26, metadata !1711, metadata !DIExpression()) #26, !dbg !2942
  %6 = load i32, i32* %5, align 4, !dbg !2945, !tbaa !890
  call void @llvm.dbg.value(metadata i32 %6, metadata !1712, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #26, !dbg !2942
  %7 = or i32 %6, 67108864, !dbg !2946
  store i32 %7, i32* %5, align 4, !dbg !2946, !tbaa !890
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #26, !dbg !2947
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2948
  ret i8* %8, !dbg !2949
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2950 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2767, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2956
  call void @llvm.dbg.value(metadata i32 %0, metadata !2952, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata i32 %1, metadata !2953, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata i8* %2, metadata !2954, metadata !DIExpression()), !dbg !2958
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2959
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2959
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2955, metadata !DIExpression()), !dbg !2960
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2961
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2961
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2962), !dbg !2961
  call void @llvm.dbg.value(metadata i32 %1, metadata !2762, metadata !DIExpression()) #26, !dbg !2965
  call void @llvm.dbg.value(metadata i32 0, metadata !2767, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2965
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2956, !alias.scope !2962
  %8 = icmp eq i32 %1, 10, !dbg !2966
  br i1 %8, label %9, label %10, !dbg !2967

9:                                                ; preds = %3
  tail call void @abort() #28, !dbg !2968, !noalias !2962
  unreachable, !dbg !2968

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2767, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2965
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2961
  store i32 %1, i32* %11, align 8, !dbg !2961, !tbaa.struct !2872
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2961
  %13 = bitcast i32* %12 to i8*, !dbg !2961
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2961, !tbaa.struct !2969
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2961
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1705, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata i8 58, metadata !1706, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata i32 1, metadata !1707, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata i8 58, metadata !1708, metadata !DIExpression()), !dbg !2970
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2972
  call void @llvm.dbg.value(metadata i32* %14, metadata !1709, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata i32 26, metadata !1711, metadata !DIExpression()), !dbg !2970
  %15 = load i32, i32* %14, align 4, !dbg !2973, !tbaa !890
  call void @llvm.dbg.value(metadata i32 %15, metadata !1712, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2970
  %16 = or i32 %15, 67108864, !dbg !2974
  store i32 %16, i32* %14, align 4, !dbg !2974, !tbaa !890
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2975
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2976
  ret i8* %17, !dbg !2977
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2978 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2982, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i8* %1, metadata !2983, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i8* %2, metadata !2984, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i8* %3, metadata !2985, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i32 %0, metadata !2987, metadata !DIExpression()) #26, !dbg !2997
  call void @llvm.dbg.value(metadata i8* %1, metadata !2992, metadata !DIExpression()) #26, !dbg !2997
  call void @llvm.dbg.value(metadata i8* %2, metadata !2993, metadata !DIExpression()) #26, !dbg !2997
  call void @llvm.dbg.value(metadata i8* %3, metadata !2994, metadata !DIExpression()) #26, !dbg !2997
  call void @llvm.dbg.value(metadata i64 -1, metadata !2995, metadata !DIExpression()) #26, !dbg !2997
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2999
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2999
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2996, metadata !DIExpression()) #26, !dbg !3000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #26, !dbg !3001, !tbaa.struct !2872
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1745, metadata !DIExpression()) #26, !dbg !3002
  call void @llvm.dbg.value(metadata i8* %1, metadata !1746, metadata !DIExpression()) #26, !dbg !3002
  call void @llvm.dbg.value(metadata i8* %2, metadata !1747, metadata !DIExpression()) #26, !dbg !3002
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1745, metadata !DIExpression()) #26, !dbg !3002
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3004
  store i32 10, i32* %7, align 8, !dbg !3005, !tbaa !1687
  %8 = icmp ne i8* %1, null, !dbg !3006
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !3007
  br i1 %10, label %12, label %11, !dbg !3007

11:                                               ; preds = %4
  tail call void @abort() #28, !dbg !3008
  unreachable, !dbg !3008

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3009
  store i8* %1, i8** %13, align 8, !dbg !3010, !tbaa !1760
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3011
  store i8* %2, i8** %14, align 8, !dbg !3012, !tbaa !1763
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #26, !dbg !3013
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #26, !dbg !3014
  ret i8* %15, !dbg !3015
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2988 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2987, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata i8* %1, metadata !2992, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata i8* %2, metadata !2993, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata i8* %3, metadata !2994, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata i64 %4, metadata !2995, metadata !DIExpression()), !dbg !3016
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3017
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #26, !dbg !3017
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2996, metadata !DIExpression()), !dbg !3018
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !3019, !tbaa.struct !2872
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1745, metadata !DIExpression()) #26, !dbg !3020
  call void @llvm.dbg.value(metadata i8* %1, metadata !1746, metadata !DIExpression()) #26, !dbg !3020
  call void @llvm.dbg.value(metadata i8* %2, metadata !1747, metadata !DIExpression()) #26, !dbg !3020
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1745, metadata !DIExpression()) #26, !dbg !3020
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3022
  store i32 10, i32* %8, align 8, !dbg !3023, !tbaa !1687
  %9 = icmp ne i8* %1, null, !dbg !3024
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !3025
  br i1 %11, label %13, label %12, !dbg !3025

12:                                               ; preds = %5
  tail call void @abort() #28, !dbg !3026
  unreachable, !dbg !3026

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3027
  store i8* %1, i8** %14, align 8, !dbg !3028, !tbaa !1760
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3029
  store i8* %2, i8** %15, align 8, !dbg !3030, !tbaa !1763
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3031
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #26, !dbg !3032
  ret i8* %16, !dbg !3033
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3034 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3038, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i8* %1, metadata !3039, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i8* %2, metadata !3040, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i32 0, metadata !2982, metadata !DIExpression()) #26, !dbg !3042
  call void @llvm.dbg.value(metadata i8* %0, metadata !2983, metadata !DIExpression()) #26, !dbg !3042
  call void @llvm.dbg.value(metadata i8* %1, metadata !2984, metadata !DIExpression()) #26, !dbg !3042
  call void @llvm.dbg.value(metadata i8* %2, metadata !2985, metadata !DIExpression()) #26, !dbg !3042
  call void @llvm.dbg.value(metadata i32 0, metadata !2987, metadata !DIExpression()) #26, !dbg !3044
  call void @llvm.dbg.value(metadata i8* %0, metadata !2992, metadata !DIExpression()) #26, !dbg !3044
  call void @llvm.dbg.value(metadata i8* %1, metadata !2993, metadata !DIExpression()) #26, !dbg !3044
  call void @llvm.dbg.value(metadata i8* %2, metadata !2994, metadata !DIExpression()) #26, !dbg !3044
  call void @llvm.dbg.value(metadata i64 -1, metadata !2995, metadata !DIExpression()) #26, !dbg !3044
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3046
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #26, !dbg !3046
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2996, metadata !DIExpression()) #26, !dbg !3047
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #26, !dbg !3048, !tbaa.struct !2872
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1745, metadata !DIExpression()) #26, !dbg !3049
  call void @llvm.dbg.value(metadata i8* %0, metadata !1746, metadata !DIExpression()) #26, !dbg !3049
  call void @llvm.dbg.value(metadata i8* %1, metadata !1747, metadata !DIExpression()) #26, !dbg !3049
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1745, metadata !DIExpression()) #26, !dbg !3049
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3051
  store i32 10, i32* %6, align 8, !dbg !3052, !tbaa !1687
  %7 = icmp ne i8* %0, null, !dbg !3053
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !3054
  br i1 %9, label %11, label %10, !dbg !3054

10:                                               ; preds = %3
  tail call void @abort() #28, !dbg !3055
  unreachable, !dbg !3055

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3056
  store i8* %0, i8** %12, align 8, !dbg !3057, !tbaa !1760
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3058
  store i8* %1, i8** %13, align 8, !dbg !3059, !tbaa !1763
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #26, !dbg !3060
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #26, !dbg !3061
  ret i8* %14, !dbg !3062
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3063 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3067, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i8* %1, metadata !3068, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i8* %2, metadata !3069, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i64 %3, metadata !3070, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i32 0, metadata !2987, metadata !DIExpression()) #26, !dbg !3072
  call void @llvm.dbg.value(metadata i8* %0, metadata !2992, metadata !DIExpression()) #26, !dbg !3072
  call void @llvm.dbg.value(metadata i8* %1, metadata !2993, metadata !DIExpression()) #26, !dbg !3072
  call void @llvm.dbg.value(metadata i8* %2, metadata !2994, metadata !DIExpression()) #26, !dbg !3072
  call void @llvm.dbg.value(metadata i64 %3, metadata !2995, metadata !DIExpression()) #26, !dbg !3072
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3074
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #26, !dbg !3074
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2996, metadata !DIExpression()) #26, !dbg !3075
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #26, !dbg !3076, !tbaa.struct !2872
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1745, metadata !DIExpression()) #26, !dbg !3077
  call void @llvm.dbg.value(metadata i8* %0, metadata !1746, metadata !DIExpression()) #26, !dbg !3077
  call void @llvm.dbg.value(metadata i8* %1, metadata !1747, metadata !DIExpression()) #26, !dbg !3077
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1745, metadata !DIExpression()) #26, !dbg !3077
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3079
  store i32 10, i32* %7, align 8, !dbg !3080, !tbaa !1687
  %8 = icmp ne i8* %0, null, !dbg !3081
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !3082
  br i1 %10, label %12, label %11, !dbg !3082

11:                                               ; preds = %4
  tail call void @abort() #28, !dbg !3083
  unreachable, !dbg !3083

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3084
  store i8* %0, i8** %13, align 8, !dbg !3085, !tbaa !1760
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3086
  store i8* %1, i8** %14, align 8, !dbg !3087, !tbaa !1763
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #26, !dbg !3088
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #26, !dbg !3089
  ret i8* %15, !dbg !3090
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3091 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3095, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata i8* %1, metadata !3096, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata i64 %2, metadata !3097, metadata !DIExpression()), !dbg !3098
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3099
  ret i8* %4, !dbg !3100
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3101 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3105, metadata !DIExpression()), !dbg !3107
  call void @llvm.dbg.value(metadata i64 %1, metadata !3106, metadata !DIExpression()), !dbg !3107
  call void @llvm.dbg.value(metadata i32 0, metadata !3095, metadata !DIExpression()) #26, !dbg !3108
  call void @llvm.dbg.value(metadata i8* %0, metadata !3096, metadata !DIExpression()) #26, !dbg !3108
  call void @llvm.dbg.value(metadata i64 %1, metadata !3097, metadata !DIExpression()) #26, !dbg !3108
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #26, !dbg !3110
  ret i8* %3, !dbg !3111
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3112 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3116, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata i8* %1, metadata !3117, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata i32 %0, metadata !3095, metadata !DIExpression()) #26, !dbg !3119
  call void @llvm.dbg.value(metadata i8* %1, metadata !3096, metadata !DIExpression()) #26, !dbg !3119
  call void @llvm.dbg.value(metadata i64 -1, metadata !3097, metadata !DIExpression()) #26, !dbg !3119
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #26, !dbg !3121
  ret i8* %3, !dbg !3122
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3123 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3127, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i32 0, metadata !3116, metadata !DIExpression()) #26, !dbg !3129
  call void @llvm.dbg.value(metadata i8* %0, metadata !3117, metadata !DIExpression()) #26, !dbg !3129
  call void @llvm.dbg.value(metadata i32 0, metadata !3095, metadata !DIExpression()) #26, !dbg !3131
  call void @llvm.dbg.value(metadata i8* %0, metadata !3096, metadata !DIExpression()) #26, !dbg !3131
  call void @llvm.dbg.value(metadata i64 -1, metadata !3097, metadata !DIExpression()) #26, !dbg !3131
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #26, !dbg !3133
  ret i8* %2, !dbg !3134
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3135 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3174, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata i8* %1, metadata !3175, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata i8* %2, metadata !3176, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata i8* %3, metadata !3177, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata i8** %4, metadata !3178, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata i64 %5, metadata !3179, metadata !DIExpression()), !dbg !3180
  %7 = icmp eq i8* %1, null, !dbg !3181
  br i1 %7, label %10, label %8, !dbg !3183

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.82, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #26, !dbg !3184
  br label %12, !dbg !3184

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.83, i64 0, i64 0), i8* %2, i8* %3) #26, !dbg !3185
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.84, i64 0, i64 0), i32 5) #26, !dbg !3186
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #26, !dbg !3186
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.85, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3187
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.86, i64 0, i64 0), i32 5) #26, !dbg !3188
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.87, i64 0, i64 0)) #26, !dbg !3188
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.85, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3189
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
  ], !dbg !3190

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.88, i64 0, i64 0), i32 5) #26, !dbg !3191
  %21 = load i8*, i8** %4, align 8, !dbg !3191, !tbaa !718
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #26, !dbg !3191
  br label %147, !dbg !3193

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.89, i64 0, i64 0), i32 5) #26, !dbg !3194
  %25 = load i8*, i8** %4, align 8, !dbg !3194, !tbaa !718
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3194
  %27 = load i8*, i8** %26, align 8, !dbg !3194, !tbaa !718
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #26, !dbg !3194
  br label %147, !dbg !3195

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.90, i64 0, i64 0), i32 5) #26, !dbg !3196
  %31 = load i8*, i8** %4, align 8, !dbg !3196, !tbaa !718
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3196
  %33 = load i8*, i8** %32, align 8, !dbg !3196, !tbaa !718
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3196
  %35 = load i8*, i8** %34, align 8, !dbg !3196, !tbaa !718
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #26, !dbg !3196
  br label %147, !dbg !3197

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.91, i64 0, i64 0), i32 5) #26, !dbg !3198
  %39 = load i8*, i8** %4, align 8, !dbg !3198, !tbaa !718
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3198
  %41 = load i8*, i8** %40, align 8, !dbg !3198, !tbaa !718
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3198
  %43 = load i8*, i8** %42, align 8, !dbg !3198, !tbaa !718
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3198
  %45 = load i8*, i8** %44, align 8, !dbg !3198, !tbaa !718
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #26, !dbg !3198
  br label %147, !dbg !3199

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.92, i64 0, i64 0), i32 5) #26, !dbg !3200
  %49 = load i8*, i8** %4, align 8, !dbg !3200, !tbaa !718
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3200
  %51 = load i8*, i8** %50, align 8, !dbg !3200, !tbaa !718
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3200
  %53 = load i8*, i8** %52, align 8, !dbg !3200, !tbaa !718
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3200
  %55 = load i8*, i8** %54, align 8, !dbg !3200, !tbaa !718
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3200
  %57 = load i8*, i8** %56, align 8, !dbg !3200, !tbaa !718
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #26, !dbg !3200
  br label %147, !dbg !3201

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.93, i64 0, i64 0), i32 5) #26, !dbg !3202
  %61 = load i8*, i8** %4, align 8, !dbg !3202, !tbaa !718
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3202
  %63 = load i8*, i8** %62, align 8, !dbg !3202, !tbaa !718
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3202
  %65 = load i8*, i8** %64, align 8, !dbg !3202, !tbaa !718
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3202
  %67 = load i8*, i8** %66, align 8, !dbg !3202, !tbaa !718
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3202
  %69 = load i8*, i8** %68, align 8, !dbg !3202, !tbaa !718
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3202
  %71 = load i8*, i8** %70, align 8, !dbg !3202, !tbaa !718
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #26, !dbg !3202
  br label %147, !dbg !3203

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.94, i64 0, i64 0), i32 5) #26, !dbg !3204
  %75 = load i8*, i8** %4, align 8, !dbg !3204, !tbaa !718
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3204
  %77 = load i8*, i8** %76, align 8, !dbg !3204, !tbaa !718
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3204
  %79 = load i8*, i8** %78, align 8, !dbg !3204, !tbaa !718
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3204
  %81 = load i8*, i8** %80, align 8, !dbg !3204, !tbaa !718
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3204
  %83 = load i8*, i8** %82, align 8, !dbg !3204, !tbaa !718
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3204
  %85 = load i8*, i8** %84, align 8, !dbg !3204, !tbaa !718
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3204
  %87 = load i8*, i8** %86, align 8, !dbg !3204, !tbaa !718
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #26, !dbg !3204
  br label %147, !dbg !3205

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.95, i64 0, i64 0), i32 5) #26, !dbg !3206
  %91 = load i8*, i8** %4, align 8, !dbg !3206, !tbaa !718
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3206
  %93 = load i8*, i8** %92, align 8, !dbg !3206, !tbaa !718
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3206
  %95 = load i8*, i8** %94, align 8, !dbg !3206, !tbaa !718
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3206
  %97 = load i8*, i8** %96, align 8, !dbg !3206, !tbaa !718
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3206
  %99 = load i8*, i8** %98, align 8, !dbg !3206, !tbaa !718
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3206
  %101 = load i8*, i8** %100, align 8, !dbg !3206, !tbaa !718
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3206
  %103 = load i8*, i8** %102, align 8, !dbg !3206, !tbaa !718
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3206
  %105 = load i8*, i8** %104, align 8, !dbg !3206, !tbaa !718
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #26, !dbg !3206
  br label %147, !dbg !3207

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.96, i64 0, i64 0), i32 5) #26, !dbg !3208
  %109 = load i8*, i8** %4, align 8, !dbg !3208, !tbaa !718
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3208
  %111 = load i8*, i8** %110, align 8, !dbg !3208, !tbaa !718
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3208
  %113 = load i8*, i8** %112, align 8, !dbg !3208, !tbaa !718
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3208
  %115 = load i8*, i8** %114, align 8, !dbg !3208, !tbaa !718
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3208
  %117 = load i8*, i8** %116, align 8, !dbg !3208, !tbaa !718
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3208
  %119 = load i8*, i8** %118, align 8, !dbg !3208, !tbaa !718
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3208
  %121 = load i8*, i8** %120, align 8, !dbg !3208, !tbaa !718
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3208
  %123 = load i8*, i8** %122, align 8, !dbg !3208, !tbaa !718
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3208
  %125 = load i8*, i8** %124, align 8, !dbg !3208, !tbaa !718
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #26, !dbg !3208
  br label %147, !dbg !3209

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.97, i64 0, i64 0), i32 5) #26, !dbg !3210
  %129 = load i8*, i8** %4, align 8, !dbg !3210, !tbaa !718
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3210
  %131 = load i8*, i8** %130, align 8, !dbg !3210, !tbaa !718
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3210
  %133 = load i8*, i8** %132, align 8, !dbg !3210, !tbaa !718
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3210
  %135 = load i8*, i8** %134, align 8, !dbg !3210, !tbaa !718
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3210
  %137 = load i8*, i8** %136, align 8, !dbg !3210, !tbaa !718
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3210
  %139 = load i8*, i8** %138, align 8, !dbg !3210, !tbaa !718
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3210
  %141 = load i8*, i8** %140, align 8, !dbg !3210, !tbaa !718
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3210
  %143 = load i8*, i8** %142, align 8, !dbg !3210, !tbaa !718
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3210
  %145 = load i8*, i8** %144, align 8, !dbg !3210, !tbaa !718
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #26, !dbg !3210
  br label %147, !dbg !3211

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3212
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3213 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3217, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i8* %1, metadata !3218, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i8* %2, metadata !3219, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i8* %3, metadata !3220, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i8** %4, metadata !3221, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i64 0, metadata !3222, metadata !DIExpression()), !dbg !3223
  br label %6, !dbg !3224

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3226
  call void @llvm.dbg.value(metadata i64 %7, metadata !3222, metadata !DIExpression()), !dbg !3223
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3227
  %9 = load i8*, i8** %8, align 8, !dbg !3227, !tbaa !718
  %10 = icmp eq i8* %9, null, !dbg !3229
  %11 = add i64 %7, 1, !dbg !3230
  call void @llvm.dbg.value(metadata i64 %11, metadata !3222, metadata !DIExpression()), !dbg !3223
  br i1 %10, label %12, label %6, !dbg !3229, !llvm.loop !3231

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3233
  ret void, !dbg !3234
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3235 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3246, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i8* %1, metadata !3247, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i8* %2, metadata !3248, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i8* %3, metadata !3249, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3250, metadata !DIExpression()), !dbg !3254
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3255
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #26, !dbg !3255
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3252, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata i64 0, metadata !3251, metadata !DIExpression()), !dbg !3254
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !3251, metadata !DIExpression()), !dbg !3254
  %11 = load i32, i32* %8, align 8, !dbg !3257
  %12 = icmp ult i32 %11, 41, !dbg !3257
  br i1 %12, label %13, label %18, !dbg !3257

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3257
  %15 = zext i32 %11 to i64, !dbg !3257
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3257
  %17 = add nuw nsw i32 %11, 8, !dbg !3257
  store i32 %17, i32* %8, align 8, !dbg !3257
  br label %21, !dbg !3257

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3257
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3257
  store i8* %20, i8** %9, align 8, !dbg !3257
  br label %21, !dbg !3257

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3257
  %25 = load i8*, i8** %24, align 8, !dbg !3257
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3260
  store i8* %25, i8** %26, align 16, !dbg !3261, !tbaa !718
  %27 = icmp eq i8* %25, null, !dbg !3262
  br i1 %27, label %30, label %28, !dbg !3263

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3251, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i64 1, metadata !3251, metadata !DIExpression()), !dbg !3254
  %29 = icmp ult i32 %22, 41, !dbg !3257
  br i1 %29, label %35, label %32, !dbg !3257

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3264
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3265
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #26, !dbg !3266
  ret void, !dbg !3266

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3257
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3257
  store i8* %34, i8** %9, align 8, !dbg !3257
  br label %40, !dbg !3257

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3257
  %37 = zext i32 %22 to i64, !dbg !3257
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3257
  %39 = add nuw nsw i32 %22, 8, !dbg !3257
  store i32 %39, i32* %8, align 8, !dbg !3257
  br label %40, !dbg !3257

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3257
  %44 = load i8*, i8** %43, align 8, !dbg !3257
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3260
  store i8* %44, i8** %45, align 8, !dbg !3261, !tbaa !718
  %46 = icmp eq i8* %44, null, !dbg !3262
  br i1 %46, label %30, label %47, !dbg !3263

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3251, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i64 2, metadata !3251, metadata !DIExpression()), !dbg !3254
  %48 = icmp ult i32 %41, 41, !dbg !3257
  br i1 %48, label %52, label %49, !dbg !3257

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3257
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3257
  store i8* %51, i8** %9, align 8, !dbg !3257
  br label %57, !dbg !3257

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3257
  %54 = zext i32 %41 to i64, !dbg !3257
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3257
  %56 = add nuw nsw i32 %41, 8, !dbg !3257
  store i32 %56, i32* %8, align 8, !dbg !3257
  br label %57, !dbg !3257

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3257
  %61 = load i8*, i8** %60, align 8, !dbg !3257
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3260
  store i8* %61, i8** %62, align 16, !dbg !3261, !tbaa !718
  %63 = icmp eq i8* %61, null, !dbg !3262
  br i1 %63, label %30, label %64, !dbg !3263

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3251, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i64 3, metadata !3251, metadata !DIExpression()), !dbg !3254
  %65 = icmp ult i32 %58, 41, !dbg !3257
  br i1 %65, label %69, label %66, !dbg !3257

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3257
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3257
  store i8* %68, i8** %9, align 8, !dbg !3257
  br label %74, !dbg !3257

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3257
  %71 = zext i32 %58 to i64, !dbg !3257
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3257
  %73 = add nuw nsw i32 %58, 8, !dbg !3257
  store i32 %73, i32* %8, align 8, !dbg !3257
  br label %74, !dbg !3257

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3257
  %78 = load i8*, i8** %77, align 8, !dbg !3257
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3260
  store i8* %78, i8** %79, align 8, !dbg !3261, !tbaa !718
  %80 = icmp eq i8* %78, null, !dbg !3262
  br i1 %80, label %30, label %81, !dbg !3263

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3251, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i64 4, metadata !3251, metadata !DIExpression()), !dbg !3254
  %82 = icmp ult i32 %75, 41, !dbg !3257
  br i1 %82, label %86, label %83, !dbg !3257

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3257
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3257
  store i8* %85, i8** %9, align 8, !dbg !3257
  br label %91, !dbg !3257

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3257
  %88 = zext i32 %75 to i64, !dbg !3257
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3257
  %90 = add nuw nsw i32 %75, 8, !dbg !3257
  store i32 %90, i32* %8, align 8, !dbg !3257
  br label %91, !dbg !3257

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3257
  %95 = load i8*, i8** %94, align 8, !dbg !3257
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3260
  store i8* %95, i8** %96, align 16, !dbg !3261, !tbaa !718
  %97 = icmp eq i8* %95, null, !dbg !3262
  br i1 %97, label %30, label %98, !dbg !3263

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3251, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i64 5, metadata !3251, metadata !DIExpression()), !dbg !3254
  %99 = icmp ult i32 %92, 41, !dbg !3257
  br i1 %99, label %103, label %100, !dbg !3257

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3257
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3257
  store i8* %102, i8** %9, align 8, !dbg !3257
  br label %108, !dbg !3257

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3257
  %105 = zext i32 %92 to i64, !dbg !3257
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3257
  %107 = add nuw nsw i32 %92, 8, !dbg !3257
  store i32 %107, i32* %8, align 8, !dbg !3257
  br label %108, !dbg !3257

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3257
  %111 = load i8*, i8** %110, align 8, !dbg !3257
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3260
  store i8* %111, i8** %112, align 8, !dbg !3261, !tbaa !718
  %113 = icmp eq i8* %111, null, !dbg !3262
  br i1 %113, label %30, label %114, !dbg !3263

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3251, metadata !DIExpression()), !dbg !3254
  %115 = load i8*, i8** %9, align 8, !dbg !3257
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3257
  store i8* %116, i8** %9, align 8, !dbg !3257
  %117 = bitcast i8* %115 to i8**, !dbg !3257
  %118 = load i8*, i8** %117, align 8, !dbg !3257
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3260
  store i8* %118, i8** %119, align 16, !dbg !3261, !tbaa !718
  %120 = icmp eq i8* %118, null, !dbg !3262
  br i1 %120, label %30, label %121, !dbg !3263

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3251, metadata !DIExpression()), !dbg !3254
  %122 = load i8*, i8** %9, align 8, !dbg !3257
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3257
  store i8* %123, i8** %9, align 8, !dbg !3257
  %124 = bitcast i8* %122 to i8**, !dbg !3257
  %125 = load i8*, i8** %124, align 8, !dbg !3257
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3260
  store i8* %125, i8** %126, align 8, !dbg !3261, !tbaa !718
  %127 = icmp eq i8* %125, null, !dbg !3262
  br i1 %127, label %30, label %128, !dbg !3263

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3251, metadata !DIExpression()), !dbg !3254
  %129 = load i8*, i8** %9, align 8, !dbg !3257
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3257
  store i8* %130, i8** %9, align 8, !dbg !3257
  %131 = bitcast i8* %129 to i8**, !dbg !3257
  %132 = load i8*, i8** %131, align 8, !dbg !3257
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3260
  store i8* %132, i8** %133, align 16, !dbg !3261, !tbaa !718
  %134 = icmp eq i8* %132, null, !dbg !3262
  br i1 %134, label %30, label %135, !dbg !3263

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3251, metadata !DIExpression()), !dbg !3254
  %136 = load i8*, i8** %9, align 8, !dbg !3257
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3257
  store i8* %137, i8** %9, align 8, !dbg !3257
  %138 = bitcast i8* %136 to i8**, !dbg !3257
  %139 = load i8*, i8** %138, align 8, !dbg !3257
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3260
  store i8* %139, i8** %140, align 8, !dbg !3261, !tbaa !718
  %141 = icmp eq i8* %139, null, !dbg !3262
  %142 = select i1 %141, i64 9, i64 10, !dbg !3263
  br label %30, !dbg !3263
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3267 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3271, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i8* %1, metadata !3272, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i8* %2, metadata !3273, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i8* %3, metadata !3274, metadata !DIExpression()), !dbg !3281
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3282
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #26, !dbg !3282
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3275, metadata !DIExpression()), !dbg !3283
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3284
  call void @llvm.va_start(i8* nonnull %6), !dbg !3284
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3285
  call void @llvm.va_end(i8* nonnull %6), !dbg !3286
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #26, !dbg !3287
  ret void, !dbg !3287
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #21

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #21

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3288 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3289, !tbaa !718
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.85, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3289
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.100, i64 0, i64 0), i32 5) #26, !dbg !3290
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.101, i64 0, i64 0)) #26, !dbg !3290
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.102, i64 0, i64 0), i32 5) #26, !dbg !3291
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.103, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.104, i64 0, i64 0)) #26, !dbg !3291
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.105, i64 0, i64 0), i32 5) #26, !dbg !3292
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.106, i64 0, i64 0)) #26, !dbg !3292
  ret void, !dbg !3293
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #22 !dbg !3294 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3298, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.value(metadata i64 %1, metadata !3299, metadata !DIExpression()), !dbg !3300
  %3 = udiv i64 9223372036854775807, %1, !dbg !3301
  %4 = icmp ult i64 %3, %0, !dbg !3301
  br i1 %4, label %5, label %6, !dbg !3303

5:                                                ; preds = %2
  tail call void @xalloc_die() #28, !dbg !3304
  unreachable, !dbg !3304

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3305
  call void @llvm.dbg.value(metadata i64 %7, metadata !3306, metadata !DIExpression()) #26, !dbg !3312
  %8 = tail call noalias i8* @malloc(i64 %7) #26, !dbg !3314
  call void @llvm.dbg.value(metadata i8* %8, metadata !3311, metadata !DIExpression()) #26, !dbg !3312
  %9 = icmp eq i8* %8, null, !dbg !3315
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !3317
  br i1 %11, label %12, label %13, !dbg !3317

12:                                               ; preds = %6
  tail call void @xalloc_die() #28, !dbg !3318
  unreachable, !dbg !3318

13:                                               ; preds = %6
  ret i8* %8, !dbg !3319
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #23

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3307 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3306, metadata !DIExpression()), !dbg !3320
  %2 = tail call noalias i8* @malloc(i64 %0) #26, !dbg !3321
  call void @llvm.dbg.value(metadata i8* %2, metadata !3311, metadata !DIExpression()), !dbg !3320
  %3 = icmp eq i8* %2, null, !dbg !3322
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3323
  br i1 %5, label %6, label %7, !dbg !3323

6:                                                ; preds = %1
  tail call void @xalloc_die() #28, !dbg !3324
  unreachable, !dbg !3324

7:                                                ; preds = %1
  ret i8* %2, !dbg !3325
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #22 !dbg !3326 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3330, metadata !DIExpression()), !dbg !3333
  call void @llvm.dbg.value(metadata i64 %1, metadata !3331, metadata !DIExpression()), !dbg !3333
  call void @llvm.dbg.value(metadata i64 %2, metadata !3332, metadata !DIExpression()), !dbg !3333
  %4 = udiv i64 9223372036854775807, %2, !dbg !3334
  %5 = icmp ult i64 %4, %1, !dbg !3334
  br i1 %5, label %6, label %7, !dbg !3336

6:                                                ; preds = %3
  tail call void @xalloc_die() #28, !dbg !3337
  unreachable, !dbg !3337

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3338
  call void @llvm.dbg.value(metadata i8* %0, metadata !3339, metadata !DIExpression()) #26, !dbg !3345
  call void @llvm.dbg.value(metadata i64 %8, metadata !3344, metadata !DIExpression()) #26, !dbg !3345
  %9 = icmp eq i64 %8, 0, !dbg !3347
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !3349
  br i1 %11, label %12, label %13, !dbg !3349

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #26, !dbg !3350
  br label %19, !dbg !3352

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #26, !dbg !3353
  call void @llvm.dbg.value(metadata i8* %14, metadata !3339, metadata !DIExpression()) #26, !dbg !3345
  %15 = icmp eq i8* %14, null, !dbg !3354
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !3356
  br i1 %17, label %18, label %19, !dbg !3356

18:                                               ; preds = %13
  tail call void @xalloc_die() #28, !dbg !3357
  unreachable, !dbg !3357

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3345
  ret i8* %20, !dbg !3358
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3340 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3339, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.value(metadata i64 %1, metadata !3344, metadata !DIExpression()), !dbg !3359
  %3 = icmp eq i64 %1, 0, !dbg !3360
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !3361
  br i1 %5, label %6, label %7, !dbg !3361

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #26, !dbg !3362
  br label %13, !dbg !3363

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #26, !dbg !3364
  call void @llvm.dbg.value(metadata i8* %8, metadata !3339, metadata !DIExpression()), !dbg !3359
  %9 = icmp eq i8* %8, null, !dbg !3365
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !3366
  br i1 %11, label %12, label %13, !dbg !3366

12:                                               ; preds = %7
  tail call void @xalloc_die() #28, !dbg !3367
  unreachable, !dbg !3367

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3359
  ret i8* %14, !dbg !3368
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #22 !dbg !284 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !286, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i64* %1, metadata !287, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i64 %2, metadata !288, metadata !DIExpression()), !dbg !3369
  %4 = load i64, i64* %1, align 8, !dbg !3370, !tbaa !931
  call void @llvm.dbg.value(metadata i64 %4, metadata !289, metadata !DIExpression()), !dbg !3369
  %5 = icmp eq i8* %0, null, !dbg !3371
  br i1 %5, label %6, label %20, !dbg !3373

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3374
  br i1 %7, label %8, label %13, !dbg !3377

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3378
  call void @llvm.dbg.value(metadata i64 %9, metadata !289, metadata !DIExpression()), !dbg !3369
  %10 = icmp ugt i64 %2, 128, !dbg !3380
  %11 = zext i1 %10 to i64, !dbg !3380
  %12 = add nuw nsw i64 %9, %11, !dbg !3381
  call void @llvm.dbg.value(metadata i64 %12, metadata !289, metadata !DIExpression()), !dbg !3369
  br label %13, !dbg !3382

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3369
  call void @llvm.dbg.value(metadata i64 %14, metadata !289, metadata !DIExpression()), !dbg !3369
  %15 = udiv i64 9223372036854775807, %2, !dbg !3383
  %16 = icmp ult i64 %15, %14, !dbg !3383
  br i1 %16, label %19, label %17, !dbg !3385

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !289, metadata !DIExpression()), !dbg !3369
  store i64 %14, i64* %1, align 8, !dbg !3386, !tbaa !931
  %18 = mul i64 %14, %2, !dbg !3387
  call void @llvm.dbg.value(metadata i8* %0, metadata !3339, metadata !DIExpression()) #26, !dbg !3388
  call void @llvm.dbg.value(metadata i64 %28, metadata !3344, metadata !DIExpression()) #26, !dbg !3388
  br label %31, !dbg !3390

19:                                               ; preds = %13
  tail call void @xalloc_die() #28, !dbg !3391
  unreachable, !dbg !3391

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3392
  %22 = icmp ugt i64 %21, %4, !dbg !3395
  br i1 %22, label %24, label %23, !dbg !3396

23:                                               ; preds = %20
  tail call void @xalloc_die() #28, !dbg !3397
  unreachable, !dbg !3397

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3398
  %26 = add nuw i64 %4, 1, !dbg !3399
  %27 = add i64 %26, %25, !dbg !3400
  call void @llvm.dbg.value(metadata i64 %27, metadata !289, metadata !DIExpression()), !dbg !3369
  store i64 %27, i64* %1, align 8, !dbg !3386, !tbaa !931
  %28 = mul i64 %27, %2, !dbg !3387
  call void @llvm.dbg.value(metadata i8* %0, metadata !3339, metadata !DIExpression()) #26, !dbg !3388
  call void @llvm.dbg.value(metadata i64 %28, metadata !3344, metadata !DIExpression()) #26, !dbg !3388
  %29 = icmp eq i64 %28, 0, !dbg !3401
  br i1 %29, label %30, label %31, !dbg !3390

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #26, !dbg !3402
  br label %38, !dbg !3403

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #26, !dbg !3404
  call void @llvm.dbg.value(metadata i8* %33, metadata !3339, metadata !DIExpression()) #26, !dbg !3388
  %34 = icmp eq i8* %33, null, !dbg !3405
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !3406
  br i1 %36, label %37, label %38, !dbg !3406

37:                                               ; preds = %31
  tail call void @xalloc_die() #28, !dbg !3407
  unreachable, !dbg !3407

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3388
  ret i8* %39, !dbg !3408
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #22 !dbg !3409 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3411, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata i64 %0, metadata !3306, metadata !DIExpression()) #26, !dbg !3413
  %2 = tail call noalias i8* @malloc(i64 %0) #26, !dbg !3415
  call void @llvm.dbg.value(metadata i8* %2, metadata !3311, metadata !DIExpression()) #26, !dbg !3413
  %3 = icmp eq i8* %2, null, !dbg !3416
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3417
  br i1 %5, label %6, label %7, !dbg !3417

6:                                                ; preds = %1
  tail call void @xalloc_die() #28, !dbg !3418
  unreachable, !dbg !3418

7:                                                ; preds = %1
  ret i8* %2, !dbg !3419
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3420 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3424, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata i64* %1, metadata !3425, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata i8* %0, metadata !286, metadata !DIExpression()) #26, !dbg !3427
  call void @llvm.dbg.value(metadata i64* %1, metadata !287, metadata !DIExpression()) #26, !dbg !3427
  call void @llvm.dbg.value(metadata i64 1, metadata !288, metadata !DIExpression()) #26, !dbg !3427
  %3 = load i64, i64* %1, align 8, !dbg !3429, !tbaa !931
  call void @llvm.dbg.value(metadata i64 %3, metadata !289, metadata !DIExpression()) #26, !dbg !3427
  %4 = icmp eq i8* %0, null, !dbg !3430
  br i1 %4, label %5, label %10, !dbg !3431

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3432
  br i1 %6, label %17, label %7, !dbg !3433

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !289, metadata !DIExpression()) #26, !dbg !3427
  %8 = icmp slt i64 %3, 0, !dbg !3434
  br i1 %8, label %9, label %17, !dbg !3435

9:                                                ; preds = %7
  tail call void @xalloc_die() #28, !dbg !3436
  unreachable, !dbg !3436

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !3437
  br i1 %11, label %13, label %12, !dbg !3438

12:                                               ; preds = %10
  tail call void @xalloc_die() #28, !dbg !3439
  unreachable, !dbg !3439

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !3440
  %15 = add nuw nsw i64 %3, 1, !dbg !3441
  %16 = add nuw nsw i64 %15, %14, !dbg !3442
  call void @llvm.dbg.value(metadata i64 %16, metadata !289, metadata !DIExpression()) #26, !dbg !3427
  call void @llvm.dbg.value(metadata i8* %0, metadata !3339, metadata !DIExpression()) #26, !dbg !3443
  call void @llvm.dbg.value(metadata i64 %16, metadata !3344, metadata !DIExpression()) #26, !dbg !3443
  br label %17, !dbg !3445

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !3446
  store i64 %18, i64* %1, align 8, !dbg !3446, !tbaa !931
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #26, !dbg !3447
  call void @llvm.dbg.value(metadata i8* %19, metadata !3339, metadata !DIExpression()) #26, !dbg !3443
  %20 = icmp eq i8* %19, null, !dbg !3448
  br i1 %20, label %21, label %22, !dbg !3449

21:                                               ; preds = %17
  tail call void @xalloc_die() #28, !dbg !3450
  unreachable, !dbg !3450

22:                                               ; preds = %17
  ret i8* %19, !dbg !3451
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3452 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3454, metadata !DIExpression()), !dbg !3455
  call void @llvm.dbg.value(metadata i64 %0, metadata !3456, metadata !DIExpression()) #26, !dbg !3461
  call void @llvm.dbg.value(metadata i64 1, metadata !3459, metadata !DIExpression()) #26, !dbg !3461
  %2 = icmp slt i64 %0, 0, !dbg !3463
  br i1 %2, label %6, label %3, !dbg !3465

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #26, !dbg !3466
  call void @llvm.dbg.value(metadata i8* %4, metadata !3460, metadata !DIExpression()) #26, !dbg !3461
  %5 = icmp eq i8* %4, null, !dbg !3467
  br i1 %5, label %6, label %7, !dbg !3468

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #28, !dbg !3469
  unreachable, !dbg !3469

7:                                                ; preds = %3
  ret i8* %4, !dbg !3470
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3457 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3456, metadata !DIExpression()), !dbg !3471
  call void @llvm.dbg.value(metadata i64 %1, metadata !3459, metadata !DIExpression()), !dbg !3471
  %3 = udiv i64 9223372036854775807, %1, !dbg !3472
  %4 = icmp ult i64 %3, %0, !dbg !3472
  br i1 %4, label %8, label %5, !dbg !3473

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #26, !dbg !3474
  call void @llvm.dbg.value(metadata i8* %6, metadata !3460, metadata !DIExpression()), !dbg !3471
  %7 = icmp eq i8* %6, null, !dbg !3475
  br i1 %7, label %8, label %9, !dbg !3476

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #28, !dbg !3477
  unreachable, !dbg !3477

9:                                                ; preds = %5
  ret i8* %6, !dbg !3478
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3479 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3483, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i64 %1, metadata !3484, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i64 %1, metadata !3306, metadata !DIExpression()) #26, !dbg !3486
  %3 = tail call noalias i8* @malloc(i64 %1) #26, !dbg !3488
  call void @llvm.dbg.value(metadata i8* %3, metadata !3311, metadata !DIExpression()) #26, !dbg !3486
  %4 = icmp eq i8* %3, null, !dbg !3489
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !3490
  br i1 %6, label %7, label %8, !dbg !3490

7:                                                ; preds = %2
  tail call void @xalloc_die() #28, !dbg !3491
  unreachable, !dbg !3491

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3492, metadata !DIExpression()) #26, !dbg !3501
  call void @llvm.dbg.value(metadata i8* %0, metadata !3499, metadata !DIExpression()) #26, !dbg !3501
  call void @llvm.dbg.value(metadata i64 %1, metadata !3500, metadata !DIExpression()) #26, !dbg !3501
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #26, !dbg !3503
  ret i8* %3, !dbg !3504
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3505 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3507, metadata !DIExpression()), !dbg !3508
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #27, !dbg !3509
  %3 = add i64 %2, 1, !dbg !3510
  call void @llvm.dbg.value(metadata i8* %0, metadata !3483, metadata !DIExpression()) #26, !dbg !3511
  call void @llvm.dbg.value(metadata i64 %3, metadata !3484, metadata !DIExpression()) #26, !dbg !3511
  call void @llvm.dbg.value(metadata i64 %3, metadata !3306, metadata !DIExpression()) #26, !dbg !3513
  %4 = tail call noalias i8* @malloc(i64 %3) #26, !dbg !3515
  call void @llvm.dbg.value(metadata i8* %4, metadata !3311, metadata !DIExpression()) #26, !dbg !3513
  %5 = icmp eq i8* %4, null, !dbg !3516
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !3517
  br i1 %7, label %8, label %9, !dbg !3517

8:                                                ; preds = %1
  tail call void @xalloc_die() #28, !dbg !3518
  unreachable, !dbg !3518

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3492, metadata !DIExpression()) #26, !dbg !3519
  call void @llvm.dbg.value(metadata i8* %0, metadata !3499, metadata !DIExpression()) #26, !dbg !3519
  call void @llvm.dbg.value(metadata i64 %3, metadata !3500, metadata !DIExpression()) #26, !dbg !3519
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #26, !dbg !3521
  ret i8* %4, !dbg !3522
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3523 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3524, !tbaa !890
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.117, i64 0, i64 0), i32 5) #26, !dbg !3525
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.118, i64 0, i64 0), i8* %2) #26, !dbg !3526
  tail call void @abort() #28, !dbg !3527
  unreachable, !dbg !3527
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrndup(i8* nocapture readonly %0, i64 %1) local_unnamed_addr #8 !dbg !3528 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3530, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i64 %1, metadata !3531, metadata !DIExpression()), !dbg !3533
  %3 = tail call noalias i8* @strndup(i8* %0, i64 %1) #26, !dbg !3534
  call void @llvm.dbg.value(metadata i8* %3, metadata !3532, metadata !DIExpression()), !dbg !3533
  %4 = icmp eq i8* %3, null, !dbg !3535
  br i1 %4, label %5, label %6, !dbg !3537

5:                                                ; preds = %2
  tail call void @xalloc_die() #28, !dbg !3538
  unreachable, !dbg !3538

6:                                                ; preds = %2
  ret i8* %3, !dbg !3539
}

; Function Attrs: inaccessiblemem_or_argmemonly nofree nounwind willreturn
declare noalias i8* @strndup(i8* nocapture readonly, i64) local_unnamed_addr #24

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #25 !dbg !3540 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3542, metadata !DIExpression()), !dbg !3548
  call void @llvm.dbg.value(metadata i64 %1, metadata !3543, metadata !DIExpression()), !dbg !3548
  %3 = icmp eq i64 %0, 0, !dbg !3549
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !3550
  br i1 %5, label %11, label %6, !dbg !3550

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3545, metadata !DIExpression()), !dbg !3551
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3552
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3552
  br i1 %8, label %9, label %11, !dbg !3554

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #30, !dbg !3555
  store i32 12, i32* %10, align 4, !dbg !3557, !tbaa !890
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3542, metadata !DIExpression()), !dbg !3548
  call void @llvm.dbg.value(metadata i64 %12, metadata !3543, metadata !DIExpression()), !dbg !3548
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #26, !dbg !3558
  call void @llvm.dbg.value(metadata i8* %14, metadata !3544, metadata !DIExpression()), !dbg !3548
  br label %15, !dbg !3559

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3548
  ret i8* %16, !dbg !3560
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #23

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3561 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3599, metadata !DIExpression()), !dbg !3603
  call void @llvm.dbg.value(metadata i32 0, metadata !3600, metadata !DIExpression()), !dbg !3603
  call void @llvm.dbg.value(metadata i32 0, metadata !3602, metadata !DIExpression()), !dbg !3603
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #26, !dbg !3604
  call void @llvm.dbg.value(metadata i32 %2, metadata !3601, metadata !DIExpression()), !dbg !3603
  %3 = icmp slt i32 %2, 0, !dbg !3605
  br i1 %3, label %4, label %6, !dbg !3607

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3608
  br label %24, !dbg !3609

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #26, !dbg !3610
  %8 = icmp eq i32 %7, 0, !dbg !3610
  br i1 %8, label %13, label %9, !dbg !3612

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #26, !dbg !3613
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #26, !dbg !3614
  %12 = icmp eq i64 %11, -1, !dbg !3615
  br i1 %12, label %16, label %13, !dbg !3616

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #26, !dbg !3617
  %15 = icmp eq i32 %14, 0, !dbg !3617
  br i1 %15, label %16, label %18, !dbg !3618

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3600, metadata !DIExpression()), !dbg !3603
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3619
  call void @llvm.dbg.value(metadata i32 %21, metadata !3602, metadata !DIExpression()), !dbg !3603
  br label %24, !dbg !3620

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #30, !dbg !3621
  %20 = load i32, i32* %19, align 4, !dbg !3621, !tbaa !890
  call void @llvm.dbg.value(metadata i32 %20, metadata !3600, metadata !DIExpression()), !dbg !3603
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3619
  call void @llvm.dbg.value(metadata i32 %21, metadata !3602, metadata !DIExpression()), !dbg !3603
  %22 = icmp eq i32 %20, 0, !dbg !3622
  br i1 %22, label %24, label %23, !dbg !3620

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3624, !tbaa !890
  call void @llvm.dbg.value(metadata i32 -1, metadata !3602, metadata !DIExpression()), !dbg !3603
  br label %24, !dbg !3626

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3603
  ret i32 %25, !dbg !3627
}

; Function Attrs: nofree nounwind
declare !dbg !3628 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3631 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3635 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3673, metadata !DIExpression()), !dbg !3674
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3675
  br i1 %2, label %6, label %3, !dbg !3677

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #26, !dbg !3678
  %5 = icmp eq i32 %4, 0, !dbg !3678
  br i1 %5, label %6, label %8, !dbg !3679

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3680
  br label %17, !dbg !3681

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3682, metadata !DIExpression()) #26, !dbg !3687
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3689
  %10 = load i32, i32* %9, align 8, !dbg !3689, !tbaa !1438
  %11 = and i32 %10, 256, !dbg !3691
  %12 = icmp eq i32 %11, 0, !dbg !3691
  br i1 %12, label %15, label %13, !dbg !3692

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #26, !dbg !3693
  br label %15, !dbg !3693

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3694
  br label %17, !dbg !3695

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3674
  ret i32 %18, !dbg !3696
}

; Function Attrs: nofree nounwind
declare !dbg !3697 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3700 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3738, metadata !DIExpression()), !dbg !3744
  call void @llvm.dbg.value(metadata i64 %1, metadata !3739, metadata !DIExpression()), !dbg !3744
  call void @llvm.dbg.value(metadata i32 %2, metadata !3740, metadata !DIExpression()), !dbg !3744
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3745
  %5 = load i8*, i8** %4, align 8, !dbg !3745, !tbaa !952
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3746
  %7 = load i8*, i8** %6, align 8, !dbg !3746, !tbaa !949
  %8 = icmp eq i8* %5, %7, !dbg !3747
  br i1 %8, label %9, label %28, !dbg !3748

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3749
  %11 = load i8*, i8** %10, align 8, !dbg !3749, !tbaa !1053
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3750
  %13 = load i8*, i8** %12, align 8, !dbg !3750, !tbaa !3751
  %14 = icmp eq i8* %11, %13, !dbg !3752
  br i1 %14, label %15, label %28, !dbg !3753

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3754
  %17 = load i8*, i8** %16, align 8, !dbg !3754, !tbaa !3755
  %18 = icmp eq i8* %17, null, !dbg !3756
  br i1 %18, label %19, label %28, !dbg !3757

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #26, !dbg !3758
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #26, !dbg !3759
  call void @llvm.dbg.value(metadata i64 %21, metadata !3741, metadata !DIExpression()), !dbg !3760
  %22 = icmp eq i64 %21, -1, !dbg !3761
  br i1 %22, label %30, label %23, !dbg !3763

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3764
  %25 = load i32, i32* %24, align 8, !dbg !3765, !tbaa !1438
  %26 = and i32 %25, -17, !dbg !3765
  store i32 %26, i32* %24, align 8, !dbg !3765, !tbaa !1438
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3766
  store i64 %21, i64* %27, align 8, !dbg !3767, !tbaa !3768
  br label %30, !dbg !3769

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3770
  br label %30, !dbg !3771

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3744
  ret i32 %31, !dbg !3772
}

; Function Attrs: nofree nounwind
declare !dbg !3773 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3776 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3792, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.value(metadata i8* %1, metadata !3793, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.value(metadata i64 %2, metadata !3794, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3795, metadata !DIExpression()), !dbg !3801
  %6 = bitcast i32* %5 to i8*, !dbg !3802
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #26, !dbg !3802
  %7 = icmp eq i32* %0, null, !dbg !3803
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3805
  call void @llvm.dbg.value(metadata i32* %8, metadata !3792, metadata !DIExpression()), !dbg !3801
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #26, !dbg !3806
  call void @llvm.dbg.value(metadata i64 %9, metadata !3796, metadata !DIExpression()), !dbg !3801
  %10 = icmp ugt i64 %9, -3, !dbg !3807
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !3808
  br i1 %12, label %13, label %18, !dbg !3808

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #26, !dbg !3809
  br i1 %14, label %18, label %15, !dbg !3810

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3811, !tbaa !954
  call void @llvm.dbg.value(metadata i8 %16, metadata !3798, metadata !DIExpression()), !dbg !3812
  %17 = zext i8 %16 to i32, !dbg !3813
  store i32 %17, i32* %8, align 4, !dbg !3814, !tbaa !890
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3801
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #26, !dbg !3815
  ret i64 %19, !dbg !3815
}

; Function Attrs: nounwind
declare !dbg !3816 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3820 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3858, metadata !DIExpression()), !dbg !3863
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #26, !dbg !3864
  call void @llvm.dbg.value(metadata i1 undef, metadata !3859, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3863
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3865, metadata !DIExpression()), !dbg !3868
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3870
  %4 = load i32, i32* %3, align 8, !dbg !3870, !tbaa !1438
  %5 = and i32 %4, 32, !dbg !3871
  %6 = icmp eq i32 %5, 0, !dbg !3871
  call void @llvm.dbg.value(metadata i1 %6, metadata !3861, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3863
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #26, !dbg !3872
  %8 = icmp eq i32 %7, 0, !dbg !3873
  call void @llvm.dbg.value(metadata i1 %8, metadata !3862, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3863
  br i1 %6, label %9, label %19, !dbg !3874

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3876
  call void @llvm.dbg.value(metadata i1 %10, metadata !3859, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3863
  %11 = or i1 %10, %8, !dbg !3877
  %12 = xor i1 %8, true, !dbg !3877
  %13 = sext i1 %12 to i32, !dbg !3877
  br i1 %11, label %22, label %14, !dbg !3877

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #30, !dbg !3878
  %16 = load i32, i32* %15, align 4, !dbg !3878, !tbaa !890
  %17 = icmp ne i32 %16, 9, !dbg !3879
  %18 = sext i1 %17 to i32, !dbg !3880
  br label %22, !dbg !3880

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3881

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #30, !dbg !3883
  store i32 0, i32* %21, align 4, !dbg !3885, !tbaa !890
  br label %22, !dbg !3883

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3863
  ret i32 %23, !dbg !3886
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3887 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3891, metadata !DIExpression()), !dbg !3896
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3897
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #26, !dbg !3897
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3892, metadata !DIExpression()), !dbg !3898
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #26, !dbg !3899
  %5 = icmp eq i32 %4, 0, !dbg !3899
  br i1 %5, label %6, label %13, !dbg !3901

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3902
  %8 = load i16, i16* %7, align 16, !dbg !3902
  %9 = icmp eq i16 %8, 67, !dbg !3902
  br i1 %9, label %13, label %10, !dbg !3903

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.135, i64 0, i64 0), i64 6), !dbg !3904
  %12 = icmp ne i32 %11, 0, !dbg !3905
  br label %13, !dbg !3903

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3896
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #26, !dbg !3906
  ret i1 %14, !dbg !3906
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3907 {
  %1 = tail call i8* @nl_langinfo(i32 14) #26, !dbg !3912
  call void @llvm.dbg.value(metadata i8* %1, metadata !3911, metadata !DIExpression()), !dbg !3913
  %2 = icmp eq i8* %1, null, !dbg !3914
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.138, i64 0, i64 0), i8* %1, !dbg !3916
  call void @llvm.dbg.value(metadata i8* %3, metadata !3911, metadata !DIExpression()), !dbg !3913
  %4 = load i8, i8* %3, align 1, !dbg !3917, !tbaa !954
  %5 = icmp eq i8 %4, 0, !dbg !3921
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.139, i64 0, i64 0), i8* %3, !dbg !3922
  call void @llvm.dbg.value(metadata i8* %6, metadata !3911, metadata !DIExpression()), !dbg !3913
  ret i8* %6, !dbg !3923
}

; Function Attrs: nounwind
declare !dbg !3924 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3927 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3931, metadata !DIExpression()), !dbg !3934
  call void @llvm.dbg.value(metadata i8* %1, metadata !3932, metadata !DIExpression()), !dbg !3934
  call void @llvm.dbg.value(metadata i64 %2, metadata !3933, metadata !DIExpression()), !dbg !3934
  call void @llvm.dbg.value(metadata i32 %0, metadata !3935, metadata !DIExpression()) #26, !dbg !3944
  call void @llvm.dbg.value(metadata i8* %1, metadata !3938, metadata !DIExpression()) #26, !dbg !3944
  call void @llvm.dbg.value(metadata i64 %2, metadata !3939, metadata !DIExpression()) #26, !dbg !3944
  call void @llvm.dbg.value(metadata i32 %0, metadata !3946, metadata !DIExpression()) #26, !dbg !3952
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #26, !dbg !3954
  call void @llvm.dbg.value(metadata i8* %4, metadata !3951, metadata !DIExpression()) #26, !dbg !3952
  call void @llvm.dbg.value(metadata i8* %4, metadata !3940, metadata !DIExpression()) #26, !dbg !3944
  %5 = icmp eq i8* %4, null, !dbg !3955
  br i1 %5, label %6, label %9, !dbg !3956

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3957
  br i1 %7, label %19, label %8, !dbg !3960

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3961, !tbaa !954
  br label %19, !dbg !3962

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #27, !dbg !3963
  call void @llvm.dbg.value(metadata i64 %10, metadata !3941, metadata !DIExpression()) #26, !dbg !3964
  %11 = icmp ult i64 %10, %2, !dbg !3965
  br i1 %11, label %12, label %14, !dbg !3967

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3968
  call void @llvm.dbg.value(metadata i8* %1, metadata !3970, metadata !DIExpression()) #26, !dbg !3975
  call void @llvm.dbg.value(metadata i8* %4, metadata !3973, metadata !DIExpression()) #26, !dbg !3975
  call void @llvm.dbg.value(metadata i64 %13, metadata !3974, metadata !DIExpression()) #26, !dbg !3975
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #26, !dbg !3977
  br label %19, !dbg !3978

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3979
  br i1 %15, label %19, label %16, !dbg !3982

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3983
  call void @llvm.dbg.value(metadata i8* %1, metadata !3970, metadata !DIExpression()) #26, !dbg !3985
  call void @llvm.dbg.value(metadata i8* %4, metadata !3973, metadata !DIExpression()) #26, !dbg !3985
  call void @llvm.dbg.value(metadata i64 %17, metadata !3974, metadata !DIExpression()) #26, !dbg !3985
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #26, !dbg !3987
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3988
  store i8 0, i8* %18, align 1, !dbg !3989, !tbaa !954
  br label %19, !dbg !3990

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3991
  ret i32 %20, !dbg !3992
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3993 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3995, metadata !DIExpression()), !dbg !3996
  call void @llvm.dbg.value(metadata i32 %0, metadata !3946, metadata !DIExpression()) #26, !dbg !3997
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #26, !dbg !3999
  call void @llvm.dbg.value(metadata i8* %2, metadata !3951, metadata !DIExpression()) #26, !dbg !3997
  ret i8* %2, !dbg !4000
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

!llvm.dbg.cu = !{!2, !54, !187, !193, !200, !270, !206, !212, !273, !264, !280, !291, !293, !295, !297, !299, !301, !303, !306, !308, !310, !699}
!llvm.ident = !{!701, !701, !701, !701, !701, !701, !701, !701, !701, !701, !701, !701, !701, !701, !701, !701, !701, !701, !701, !701, !701, !701}
!llvm.module.flags = !{!702, !703, !704, !705, !706}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 61, type: !40, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !39, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/unexpand.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
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
!21 = !{!22, !24, !25, !26, !31, !32, !33, !35, !37, !38}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !27, line: 102, baseType: !28)
!27 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !29, line: 73, baseType: !30)
!29 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!30 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !34, line: 46, baseType: !30)
!34 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!39 = !{!0}
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 1536, elements: !50)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !43, line: 50, size: 256, elements: !44)
!43 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!44 = !{!45, !46, !47, !49}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !42, file: !43, line: 52, baseType: !35, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !42, file: !43, line: 55, baseType: !31, size: 32, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !42, file: !43, line: 56, baseType: !48, size: 64, offset: 128)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !42, file: !43, line: 57, baseType: !31, size: 32, offset: 192)
!50 = !{!51}
!51 = !DISubrange(count: 6)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "convert_entire_line", scope: !54, file: !55, line: 33, type: !175, isLocal: false, isDefinition: true)
!54 = distinct !DICompileUnit(language: DW_LANG_C99, file: !55, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56, retainedTypes: !93, globals: !94, splitDebugInlining: false, nameTableKind: None)
!55 = !DIFile(filename: "src/expand-common.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!56 = !{!5, !57, !71, !80}
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !58, line: 32, baseType: !7, size: 32, elements: !59)
!58 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!59 = !{!60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70}
!60 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!61 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!62 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!63 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!64 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!65 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!66 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!67 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!68 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!69 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!70 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !72, line: 45, baseType: !7, size: 32, elements: !73)
!72 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!73 = !{!74, !75, !76, !77, !78, !79}
!74 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0, isUnsigned: true)
!75 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2, isUnsigned: true)
!76 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5, isUnsigned: true)
!77 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4, isUnsigned: true)
!78 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3, isUnsigned: true)
!79 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1, isUnsigned: true)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !82, file: !81, line: 186, baseType: !7, size: 32, elements: !91)
!81 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!82 = distinct !DISubprogram(name: "x2nrealloc", scope: !81, file: !81, line: 174, type: !83, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !86)
!83 = !DISubroutineType(types: !84)
!84 = !{!24, !24, !85, !33}
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!86 = !{!87, !88, !89, !90}
!87 = !DILocalVariable(name: "p", arg: 1, scope: !82, file: !81, line: 174, type: !24)
!88 = !DILocalVariable(name: "pn", arg: 2, scope: !82, file: !81, line: 174, type: !85)
!89 = !DILocalVariable(name: "s", arg: 3, scope: !82, file: !81, line: 174, type: !33)
!90 = !DILocalVariable(name: "n", scope: !82, file: !81, line: 176, type: !33)
!91 = !{!92}
!92 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!93 = !{!31, !32, !7, !25, !24, !26, !33}
!94 = !{!52, !95, !97, !159, !161, !163, !165, !167, !169, !171, !173, !176, !181}
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(name: "exit_status", scope: !54, file: !55, line: 72, type: !31, isLocal: false, isDefinition: true)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "prev_file", scope: !99, file: !55, line: 336, type: !22, isLocal: true, isDefinition: true)
!99 = distinct !DISubprogram(name: "next_file", scope: !55, file: !55, line: 334, type: !100, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !156)
!100 = !DISubroutineType(types: !101)
!101 = !{!102, !102}
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !104, line: 7, baseType: !105)
!104 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !106, line: 49, size: 1728, elements: !107)
!106 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!107 = !{!108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !123, !125, !126, !127, !130, !131, !133, !137, !140, !142, !145, !148, !149, !150, !151, !152}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !105, file: !106, line: 51, baseType: !31, size: 32)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !105, file: !106, line: 54, baseType: !22, size: 64, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !105, file: !106, line: 55, baseType: !22, size: 64, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !105, file: !106, line: 56, baseType: !22, size: 64, offset: 192)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !105, file: !106, line: 57, baseType: !22, size: 64, offset: 256)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !105, file: !106, line: 58, baseType: !22, size: 64, offset: 320)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !105, file: !106, line: 59, baseType: !22, size: 64, offset: 384)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !105, file: !106, line: 60, baseType: !22, size: 64, offset: 448)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !105, file: !106, line: 61, baseType: !22, size: 64, offset: 512)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !105, file: !106, line: 64, baseType: !22, size: 64, offset: 576)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !105, file: !106, line: 65, baseType: !22, size: 64, offset: 640)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !105, file: !106, line: 66, baseType: !22, size: 64, offset: 704)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !105, file: !106, line: 68, baseType: !121, size: 64, offset: 768)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !106, line: 36, flags: DIFlagFwdDecl)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !105, file: !106, line: 70, baseType: !124, size: 64, offset: 832)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !105, file: !106, line: 72, baseType: !31, size: 32, offset: 896)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !105, file: !106, line: 73, baseType: !31, size: 32, offset: 928)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !105, file: !106, line: 74, baseType: !128, size: 64, offset: 960)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !29, line: 152, baseType: !129)
!129 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !105, file: !106, line: 77, baseType: !32, size: 16, offset: 1024)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !105, file: !106, line: 78, baseType: !132, size: 8, offset: 1040)
!132 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !105, file: !106, line: 79, baseType: !134, size: 8, offset: 1048)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 1)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !105, file: !106, line: 81, baseType: !138, size: 64, offset: 1088)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !106, line: 43, baseType: null)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !105, file: !106, line: 89, baseType: !141, size: 64, offset: 1152)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !29, line: 153, baseType: !129)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !105, file: !106, line: 91, baseType: !143, size: 64, offset: 1216)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !106, line: 37, flags: DIFlagFwdDecl)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !105, file: !106, line: 92, baseType: !146, size: 64, offset: 1280)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !106, line: 38, flags: DIFlagFwdDecl)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !105, file: !106, line: 93, baseType: !124, size: 64, offset: 1344)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !105, file: !106, line: 94, baseType: !24, size: 64, offset: 1408)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !105, file: !106, line: 95, baseType: !33, size: 64, offset: 1472)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !105, file: !106, line: 96, baseType: !31, size: 32, offset: 1536)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !105, file: !106, line: 98, baseType: !153, size: 160, offset: 1568)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 160, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 20)
!156 = !{!157, !158}
!157 = !DILocalVariable(name: "fp", arg: 1, scope: !99, file: !55, line: 334, type: !102)
!158 = !DILocalVariable(name: "file", scope: !99, file: !55, line: 337, type: !22)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(name: "max_column_width", scope: !54, file: !55, line: 45, type: !33, isLocal: false, isDefinition: true)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(name: "first_free_tab", scope: !54, file: !55, line: 57, type: !33, isLocal: true, isDefinition: true)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "tab_list", scope: !54, file: !55, line: 50, type: !25, isLocal: true, isDefinition: true)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "n_tabs_allocated", scope: !54, file: !55, line: 53, type: !33, isLocal: true, isDefinition: true)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(name: "extend_size", scope: !54, file: !55, line: 39, type: !26, isLocal: true, isDefinition: true)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(name: "increment_size", scope: !54, file: !55, line: 42, type: !26, isLocal: true, isDefinition: true)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(name: "tab_size", scope: !54, file: !55, line: 36, type: !26, isLocal: true, isDefinition: true)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !54, file: !55, line: 69, type: !175, isLocal: true, isDefinition: true)
!175 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(name: "stdin_argv", scope: !54, file: !55, line: 63, type: !178, isLocal: true, isDefinition: true)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 128, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 2)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(name: "file_list", scope: !54, file: !55, line: 60, type: !183, isLocal: true, isDefinition: true)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!184 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(name: "Version", scope: !187, file: !188, line: 2, type: !35, isLocal: false, isDefinition: true)
!187 = distinct !DICompileUnit(language: DW_LANG_C99, file: !188, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, globals: !190, splitDebugInlining: false, nameTableKind: None)
!188 = !DIFile(filename: "src/version.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!189 = !{}
!190 = !{!185}
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(name: "file_name", scope: !193, file: !194, line: 46, type: !35, isLocal: true, isDefinition: true)
!193 = distinct !DICompileUnit(language: DW_LANG_C99, file: !194, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, globals: !195, splitDebugInlining: false, nameTableKind: None)
!194 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!195 = !{!191, !196}
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !193, file: !194, line: 56, type: !175, isLocal: true, isDefinition: true)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(name: "exit_failure", scope: !200, file: !201, line: 24, type: !203, isLocal: false, isDefinition: true)
!200 = distinct !DICompileUnit(language: DW_LANG_C99, file: !201, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, globals: !202, splitDebugInlining: false, nameTableKind: None)
!201 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!202 = !{!198}
!203 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !31)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(name: "program_name", scope: !206, file: !207, line: 33, type: !35, isLocal: false, isDefinition: true)
!206 = distinct !DICompileUnit(language: DW_LANG_C99, file: !207, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, retainedTypes: !208, globals: !209, splitDebugInlining: false, nameTableKind: None)
!207 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!208 = !{!24, !22}
!209 = !{!204}
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !212, file: !213, line: 85, type: !258, isLocal: false, isDefinition: true)
!212 = distinct !DICompileUnit(language: DW_LANG_C99, file: !213, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !214, retainedTypes: !220, globals: !221, splitDebugInlining: false, nameTableKind: None)
!213 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!214 = !{!57, !215, !5}
!215 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !58, line: 242, baseType: !7, size: 32, elements: !216)
!216 = !{!217, !218, !219}
!217 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!218 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!219 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!220 = !{!31, !32, !33, !22}
!221 = !{!210, !222, !228, !240, !242, !247, !254, !256}
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !212, file: !213, line: 101, type: !224, isLocal: false, isDefinition: true)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 320, elements: !226)
!225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!226 = !{!227}
!227 = !DISubrange(count: 10)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !212, file: !213, line: 1052, type: !230, isLocal: false, isDefinition: true)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !213, line: 65, size: 448, elements: !231)
!231 = !{!232, !233, !234, !238, !239}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !230, file: !213, line: 68, baseType: !57, size: 32)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !230, file: !213, line: 71, baseType: !31, size: 32, offset: 32)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !230, file: !213, line: 75, baseType: !235, size: 256, offset: 64)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !236)
!236 = !{!237}
!237 = !DISubrange(count: 8)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !230, file: !213, line: 78, baseType: !35, size: 64, offset: 320)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !230, file: !213, line: 81, baseType: !35, size: 64, offset: 384)
!240 = !DIGlobalVariableExpression(var: !241, expr: !DIExpression())
!241 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !212, file: !213, line: 116, type: !230, isLocal: true, isDefinition: true)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(name: "slot0", scope: !212, file: !213, line: 842, type: !244, isLocal: true, isDefinition: true)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2048, elements: !245)
!245 = !{!246}
!246 = !DISubrange(count: 256)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(name: "slotvec", scope: !212, file: !213, line: 845, type: !249, isLocal: true, isDefinition: true)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !213, line: 834, size: 128, elements: !251)
!251 = !{!252, !253}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !250, file: !213, line: 836, baseType: !33, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !250, file: !213, line: 837, baseType: !22, size: 64, offset: 64)
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(name: "nslots", scope: !212, file: !213, line: 843, type: !31, isLocal: true, isDefinition: true)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(name: "slotvec0", scope: !212, file: !213, line: 844, type: !250, isLocal: true, isDefinition: true)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 704, elements: !260)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!260 = !{!261}
!261 = !DISubrange(count: 11)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !264, file: !265, line: 26, type: !267, isLocal: false, isDefinition: true)
!264 = distinct !DICompileUnit(language: DW_LANG_C99, file: !265, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, globals: !266, splitDebugInlining: false, nameTableKind: None)
!265 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!266 = !{!262}
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 376, elements: !268)
!268 = !{!269}
!269 = !DISubrange(count: 47)
!270 = distinct !DICompileUnit(language: DW_LANG_C99, file: !271, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !272, splitDebugInlining: false, nameTableKind: None)
!271 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!272 = !{!71}
!273 = distinct !DICompileUnit(language: DW_LANG_C99, file: !274, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !275, retainedTypes: !279, splitDebugInlining: false, nameTableKind: None)
!274 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!275 = !{!276}
!276 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !274, line: 40, baseType: !7, size: 32, elements: !277)
!277 = !{!278}
!278 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!279 = !{!24}
!280 = distinct !DICompileUnit(language: DW_LANG_C99, file: !281, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !282, retainedTypes: !290, splitDebugInlining: false, nameTableKind: None)
!281 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!282 = !{!283}
!283 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !284, file: !81, line: 186, baseType: !7, size: 32, elements: !91)
!284 = distinct !DISubprogram(name: "x2nrealloc", scope: !81, file: !81, line: 174, type: !83, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !280, retainedNodes: !285)
!285 = !{!286, !287, !288, !289}
!286 = !DILocalVariable(name: "p", arg: 1, scope: !284, file: !81, line: 174, type: !24)
!287 = !DILocalVariable(name: "pn", arg: 2, scope: !284, file: !81, line: 174, type: !85)
!288 = !DILocalVariable(name: "s", arg: 3, scope: !284, file: !81, line: 174, type: !33)
!289 = !DILocalVariable(name: "n", scope: !284, file: !81, line: 176, type: !33)
!290 = !{!33, !22, !24}
!291 = distinct !DICompileUnit(language: DW_LANG_C99, file: !292, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, splitDebugInlining: false, nameTableKind: None)
!292 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!293 = distinct !DICompileUnit(language: DW_LANG_C99, file: !294, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, splitDebugInlining: false, nameTableKind: None)
!294 = !DIFile(filename: "lib/xstrndup.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!295 = distinct !DICompileUnit(language: DW_LANG_C99, file: !296, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, retainedTypes: !279, splitDebugInlining: false, nameTableKind: None)
!296 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!297 = distinct !DICompileUnit(language: DW_LANG_C99, file: !298, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, splitDebugInlining: false, nameTableKind: None)
!298 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!299 = distinct !DICompileUnit(language: DW_LANG_C99, file: !300, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, retainedTypes: !279, splitDebugInlining: false, nameTableKind: None)
!300 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!301 = distinct !DICompileUnit(language: DW_LANG_C99, file: !302, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, retainedTypes: !279, splitDebugInlining: false, nameTableKind: None)
!302 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!303 = distinct !DICompileUnit(language: DW_LANG_C99, file: !304, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, retainedTypes: !305, splitDebugInlining: false, nameTableKind: None)
!304 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!305 = !{!33}
!306 = distinct !DICompileUnit(language: DW_LANG_C99, file: !307, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, splitDebugInlining: false, nameTableKind: None)
!307 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!308 = distinct !DICompileUnit(language: DW_LANG_C99, file: !309, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, splitDebugInlining: false, nameTableKind: None)
!309 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!310 = distinct !DICompileUnit(language: DW_LANG_C99, file: !311, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !312, retainedTypes: !279, splitDebugInlining: false, nameTableKind: None)
!311 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!312 = !{!313}
!313 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !314, line: 41, baseType: !7, size: 32, elements: !315)
!314 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!315 = !{!316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698}
!316 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!317 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!318 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!319 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!320 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!321 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!322 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!323 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!324 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!325 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!326 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!327 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!328 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!329 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!330 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!331 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!332 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!333 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!334 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!335 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!336 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!337 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!338 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!339 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!340 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!341 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!342 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!343 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!344 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!345 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!346 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!347 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!348 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!349 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!350 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!351 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!352 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!353 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!354 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!355 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!356 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!357 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!358 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!359 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!360 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!361 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!362 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!363 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!364 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!365 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!424 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!427 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!428 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!429 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!430 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!431 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!432 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!433 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!434 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!435 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!436 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!437 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!438 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!511 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!584 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!585 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!586 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!587 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!588 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!589 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!590 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!591 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!592 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!593 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!594 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!595 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!596 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!597 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!598 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!600 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!601 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!602 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!603 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!604 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!605 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!631 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!632 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!633 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!634 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!635 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!640 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!641 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!642 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!643 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!683 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!684 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!685 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!686 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!687 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!688 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!689 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!690 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!691 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!692 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!693 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!694 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!695 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!696 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!697 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!698 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!699 = distinct !DICompileUnit(language: DW_LANG_C99, file: !700, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, retainedTypes: !279, splitDebugInlining: false, nameTableKind: None)
!700 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!701 = !{!"clang version 12.0.1"}
!702 = !{i32 7, !"Dwarf Version", i32 4}
!703 = !{i32 2, !"Debug Info Version", i32 3}
!704 = !{i32 1, !"wchar_size", i32 4}
!705 = !{i32 7, !"PIC Level", i32 2}
!706 = !{i32 7, !"PIE Level", i32 2}
!707 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 72, type: !708, scopeLine: 73, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !710)
!708 = !DISubroutineType(types: !709)
!709 = !{null, !31}
!710 = !{!711}
!711 = !DILocalVariable(name: "status", arg: 1, scope: !707, file: !3, line: 72, type: !31)
!712 = !DILocation(line: 0, scope: !707)
!713 = !DILocation(line: 74, column: 14, scope: !714)
!714 = distinct !DILexicalBlock(scope: !707, file: !3, line: 74, column: 7)
!715 = !DILocation(line: 74, column: 7, scope: !707)
!716 = !DILocation(line: 75, column: 5, scope: !717)
!717 = distinct !DILexicalBlock(scope: !714, file: !3, line: 75, column: 5)
!718 = !{!719, !719, i64 0}
!719 = !{!"any pointer", !720, i64 0}
!720 = !{!"omnipotent char", !721, i64 0}
!721 = !{!"Simple C/C++ TBAA"}
!722 = !DILocation(line: 78, column: 7, scope: !723)
!723 = distinct !DILexicalBlock(scope: !714, file: !3, line: 77, column: 5)
!724 = !DILocation(line: 82, column: 7, scope: !723)
!725 = !DILocation(line: 583, column: 3, scope: !726, inlinedAt: !730)
!726 = distinct !DISubprogram(name: "emit_stdin_note", scope: !727, file: !727, line: 581, type: !728, scopeLine: 582, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !189)
!727 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!728 = !DISubroutineType(types: !729)
!729 = !{null}
!730 = distinct !DILocation(line: 86, column: 7, scope: !723)
!731 = !DILocation(line: 590, column: 3, scope: !732, inlinedAt: !733)
!732 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !727, file: !727, line: 588, type: !728, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !189)
!733 = distinct !DILocation(line: 87, column: 7, scope: !723)
!734 = !DILocation(line: 89, column: 7, scope: !723)
!735 = !DILocation(line: 94, column: 7, scope: !723)
!736 = !DILocation(line: 95, column: 7, scope: !723)
!737 = !DILocation(line: 96, column: 7, scope: !723)
!738 = !DILocalVariable(name: "program", arg: 1, scope: !739, file: !727, line: 634, type: !35)
!739 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !727, file: !727, line: 634, type: !740, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !742)
!740 = !DISubroutineType(types: !741)
!741 = !{null, !35}
!742 = !{!738, !743, !752, !753, !755}
!743 = !DILocalVariable(name: "infomap", scope: !739, file: !727, line: 636, type: !744)
!744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !745, size: 896, elements: !750)
!745 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !746)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !739, file: !727, line: 636, size: 128, elements: !747)
!747 = !{!748, !749}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !746, file: !727, line: 636, baseType: !35, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !746, file: !727, line: 636, baseType: !35, size: 64, offset: 64)
!750 = !{!751}
!751 = !DISubrange(count: 7)
!752 = !DILocalVariable(name: "node", scope: !739, file: !727, line: 646, type: !35)
!753 = !DILocalVariable(name: "map_prog", scope: !739, file: !727, line: 647, type: !754)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!755 = !DILocalVariable(name: "lc_messages", scope: !739, file: !727, line: 659, type: !35)
!756 = !DILocation(line: 0, scope: !739, inlinedAt: !757)
!757 = distinct !DILocation(line: 97, column: 7, scope: !723)
!758 = !DILocation(line: 636, column: 3, scope: !739, inlinedAt: !757)
!759 = !DILocation(line: 636, column: 67, scope: !739, inlinedAt: !757)
!760 = !DILocation(line: 647, column: 36, scope: !739, inlinedAt: !757)
!761 = !DILocation(line: 649, column: 3, scope: !739, inlinedAt: !757)
!762 = !DILocation(line: 649, column: 33, scope: !739, inlinedAt: !757)
!763 = !DILocation(line: 650, column: 13, scope: !739, inlinedAt: !757)
!764 = !DILocation(line: 649, column: 20, scope: !739, inlinedAt: !757)
!765 = !{!766, !719, i64 0}
!766 = !{!"infomap", !719, i64 0, !719, i64 8}
!767 = !DILocation(line: 649, column: 10, scope: !739, inlinedAt: !757)
!768 = !DILocation(line: 649, column: 28, scope: !739, inlinedAt: !757)
!769 = distinct !{!769, !761, !763, !770}
!770 = !{!"llvm.loop.mustprogress"}
!771 = !DILocation(line: 652, column: 17, scope: !772, inlinedAt: !757)
!772 = distinct !DILexicalBlock(scope: !739, file: !727, line: 652, column: 7)
!773 = !{!766, !719, i64 8}
!774 = !DILocation(line: 652, column: 7, scope: !772, inlinedAt: !757)
!775 = !DILocation(line: 652, column: 7, scope: !739, inlinedAt: !757)
!776 = !DILocation(line: 655, column: 3, scope: !739, inlinedAt: !757)
!777 = !DILocation(line: 659, column: 29, scope: !739, inlinedAt: !757)
!778 = !DILocation(line: 660, column: 7, scope: !779, inlinedAt: !757)
!779 = distinct !DILexicalBlock(scope: !739, file: !727, line: 660, column: 7)
!780 = !DILocation(line: 660, column: 19, scope: !779, inlinedAt: !757)
!781 = !DILocation(line: 660, column: 22, scope: !779, inlinedAt: !757)
!782 = !DILocation(line: 660, column: 7, scope: !739, inlinedAt: !757)
!783 = !DILocation(line: 666, column: 7, scope: !784, inlinedAt: !757)
!784 = distinct !DILexicalBlock(scope: !779, file: !727, line: 661, column: 5)
!785 = !DILocation(line: 668, column: 5, scope: !784, inlinedAt: !757)
!786 = !DILocation(line: 669, column: 3, scope: !739, inlinedAt: !757)
!787 = !DILocation(line: 671, column: 3, scope: !739, inlinedAt: !757)
!788 = !DILocation(line: 673, column: 1, scope: !739, inlinedAt: !757)
!789 = !DILocation(line: 99, column: 3, scope: !707)
!790 = !DISubprogram(name: "dcgettext", scope: !791, file: !791, line: 51, type: !792, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!791 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!792 = !DISubroutineType(types: !793)
!793 = !{!22, !35, !35, !31}
!794 = !DISubprogram(name: "fputs_unlocked", scope: !795, file: !795, line: 667, type: !796, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!795 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!796 = !DISubroutineType(types: !797)
!797 = !{!31, !35, !798}
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !106, line: 49, size: 1728, elements: !800)
!800 = !{!801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !799, file: !106, line: 51, baseType: !31, size: 32)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !799, file: !106, line: 54, baseType: !22, size: 64, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !799, file: !106, line: 55, baseType: !22, size: 64, offset: 128)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !799, file: !106, line: 56, baseType: !22, size: 64, offset: 192)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !799, file: !106, line: 57, baseType: !22, size: 64, offset: 256)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !799, file: !106, line: 58, baseType: !22, size: 64, offset: 320)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !799, file: !106, line: 59, baseType: !22, size: 64, offset: 384)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !799, file: !106, line: 60, baseType: !22, size: 64, offset: 448)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !799, file: !106, line: 61, baseType: !22, size: 64, offset: 512)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !799, file: !106, line: 64, baseType: !22, size: 64, offset: 576)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !799, file: !106, line: 65, baseType: !22, size: 64, offset: 640)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !799, file: !106, line: 66, baseType: !22, size: 64, offset: 704)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !799, file: !106, line: 68, baseType: !121, size: 64, offset: 768)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !799, file: !106, line: 70, baseType: !798, size: 64, offset: 832)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !799, file: !106, line: 72, baseType: !31, size: 32, offset: 896)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !799, file: !106, line: 73, baseType: !31, size: 32, offset: 928)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !799, file: !106, line: 74, baseType: !128, size: 64, offset: 960)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !799, file: !106, line: 77, baseType: !32, size: 16, offset: 1024)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !799, file: !106, line: 78, baseType: !132, size: 8, offset: 1040)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !799, file: !106, line: 79, baseType: !134, size: 8, offset: 1048)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !799, file: !106, line: 81, baseType: !138, size: 64, offset: 1088)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !799, file: !106, line: 89, baseType: !141, size: 64, offset: 1152)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !799, file: !106, line: 91, baseType: !143, size: 64, offset: 1216)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !799, file: !106, line: 92, baseType: !146, size: 64, offset: 1280)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !799, file: !106, line: 93, baseType: !798, size: 64, offset: 1344)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !799, file: !106, line: 94, baseType: !24, size: 64, offset: 1408)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !799, file: !106, line: 95, baseType: !33, size: 64, offset: 1472)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !799, file: !106, line: 96, baseType: !31, size: 32, offset: 1536)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !799, file: !106, line: 98, baseType: !153, size: 160, offset: 1568)
!830 = !DISubprogram(name: "setlocale", scope: !831, file: !831, line: 122, type: !832, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!831 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!832 = !DISubroutineType(types: !833)
!833 = !{!22, !31, !35}
!834 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 257, type: !835, scopeLine: 258, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !837)
!835 = !DISubroutineType(types: !836)
!836 = !{!31, !31, !183}
!837 = !{!838, !839, !840, !841, !842, !843}
!838 = !DILocalVariable(name: "argc", arg: 1, scope: !834, file: !3, line: 257, type: !31)
!839 = !DILocalVariable(name: "argv", arg: 2, scope: !834, file: !3, line: 257, type: !183)
!840 = !DILocalVariable(name: "have_tabval", scope: !834, file: !3, line: 259, type: !175)
!841 = !DILocalVariable(name: "tabval", scope: !834, file: !3, line: 260, type: !26)
!842 = !DILocalVariable(name: "c", scope: !834, file: !3, line: 261, type: !31)
!843 = !DILocalVariable(name: "convert_first_only", scope: !834, file: !3, line: 265, type: !175)
!844 = !DILocation(line: 0, scope: !834)
!845 = !DILocation(line: 268, column: 21, scope: !834)
!846 = !DILocation(line: 268, column: 3, scope: !834)
!847 = !DILocation(line: 269, column: 3, scope: !834)
!848 = !DILocation(line: 270, column: 3, scope: !834)
!849 = !DILocation(line: 271, column: 3, scope: !834)
!850 = !DILocation(line: 273, column: 3, scope: !834)
!851 = !DILocation(line: 275, column: 3, scope: !834)
!852 = !DILocation(line: 275, column: 15, scope: !834)
!853 = distinct !{!853, !851, !854, !770}
!854 = !DILocation(line: 309, column: 5, scope: !834)
!855 = !DILocation(line: 281, column: 11, scope: !856)
!856 = distinct !DILexicalBlock(scope: !857, file: !3, line: 279, column: 9)
!857 = distinct !DILexicalBlock(scope: !834, file: !3, line: 277, column: 5)
!858 = !DILocation(line: 283, column: 31, scope: !856)
!859 = !{!860, !860, i64 0}
!860 = !{!"_Bool", !720, i64 0}
!861 = !DILocation(line: 284, column: 11, scope: !856)
!862 = !DILocation(line: 286, column: 31, scope: !856)
!863 = !DILocation(line: 287, column: 28, scope: !856)
!864 = !DILocation(line: 287, column: 11, scope: !856)
!865 = !DILocation(line: 288, column: 11, scope: !856)
!866 = !DILocation(line: 293, column: 15, scope: !867)
!867 = distinct !DILexicalBlock(scope: !856, file: !3, line: 293, column: 15)
!868 = !DILocation(line: 293, column: 15, scope: !856)
!869 = !DILocation(line: 294, column: 13, scope: !867)
!870 = !DILocation(line: 297, column: 9, scope: !856)
!871 = !DILocation(line: 298, column: 9, scope: !856)
!872 = !DILocation(line: 300, column: 16, scope: !873)
!873 = distinct !DILexicalBlock(scope: !856, file: !3, line: 300, column: 15)
!874 = !DILocation(line: 300, column: 15, scope: !856)
!875 = !DILocation(line: 305, column: 16, scope: !876)
!876 = distinct !DILexicalBlock(scope: !856, file: !3, line: 305, column: 15)
!877 = !DILocation(line: 305, column: 15, scope: !856)
!878 = !DILocation(line: 306, column: 13, scope: !876)
!879 = !DILocation(line: 311, column: 7, scope: !880)
!880 = distinct !DILexicalBlock(scope: !834, file: !3, line: 311, column: 7)
!881 = !DILocation(line: 311, column: 7, scope: !834)
!882 = !DILocation(line: 312, column: 25, scope: !880)
!883 = !DILocation(line: 312, column: 5, scope: !880)
!884 = !DILocation(line: 314, column: 7, scope: !885)
!885 = distinct !DILexicalBlock(scope: !834, file: !3, line: 314, column: 7)
!886 = !DILocation(line: 314, column: 7, scope: !834)
!887 = !DILocation(line: 315, column: 5, scope: !885)
!888 = !DILocation(line: 317, column: 3, scope: !834)
!889 = !DILocation(line: 319, column: 20, scope: !834)
!890 = !{!891, !891, i64 0}
!891 = !{!"int", !720, i64 0}
!892 = !DILocation(line: 319, column: 27, scope: !834)
!893 = !DILocation(line: 319, column: 19, scope: !834)
!894 = !DILocation(line: 319, column: 3, scope: !834)
!895 = !DILocation(line: 109, column: 14, scope: !896, inlinedAt: !925)
!896 = distinct !DISubprogram(name: "unexpand", scope: !3, file: !3, line: 106, type: !728, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !897)
!897 = !{!898, !901, !902, !904, !905, !906, !907, !908, !909, !910, !911, !915, !918, !923, !924}
!898 = !DILocalVariable(name: "fp", scope: !896, file: !3, line: 109, type: !899)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !104, line: 7, baseType: !799)
!901 = !DILocalVariable(name: "pending_blank", scope: !896, file: !3, line: 114, type: !22)
!902 = !DILocalVariable(name: "c", scope: !903, file: !3, line: 127, type: !31)
!903 = distinct !DILexicalBlock(scope: !896, file: !3, line: 125, column: 5)
!904 = !DILocalVariable(name: "convert", scope: !903, file: !3, line: 130, type: !175)
!905 = !DILocalVariable(name: "column", scope: !903, file: !3, line: 137, type: !26)
!906 = !DILocalVariable(name: "next_tab_column", scope: !903, file: !3, line: 140, type: !26)
!907 = !DILocalVariable(name: "tab_index", scope: !903, file: !3, line: 143, type: !33)
!908 = !DILocalVariable(name: "one_blank_before_tab_stop", scope: !903, file: !3, line: 146, type: !175)
!909 = !DILocalVariable(name: "prev_blank", scope: !903, file: !3, line: 151, type: !175)
!910 = !DILocalVariable(name: "pending", scope: !903, file: !3, line: 154, type: !33)
!911 = !DILocalVariable(name: "blank", scope: !912, file: !3, line: 166, type: !175)
!912 = distinct !DILexicalBlock(scope: !913, file: !3, line: 165, column: 13)
!913 = distinct !DILexicalBlock(scope: !914, file: !3, line: 164, column: 15)
!914 = distinct !DILexicalBlock(scope: !903, file: !3, line: 160, column: 9)
!915 = !DILocalVariable(name: "last_tab", scope: !916, file: !3, line: 170, type: !175)
!916 = distinct !DILexicalBlock(scope: !917, file: !3, line: 169, column: 17)
!917 = distinct !DILexicalBlock(scope: !912, file: !3, line: 168, column: 19)
!918 = !DILocalVariable(name: "__ptr", scope: !919, file: !3, line: 233, type: !35)
!919 = distinct !DILexicalBlock(scope: !920, file: !3, line: 233, column: 23)
!920 = distinct !DILexicalBlock(scope: !921, file: !3, line: 233, column: 23)
!921 = distinct !DILexicalBlock(scope: !922, file: !3, line: 230, column: 17)
!922 = distinct !DILexicalBlock(scope: !912, file: !3, line: 229, column: 19)
!923 = !DILocalVariable(name: "__stream", scope: !919, file: !3, line: 233, type: !899)
!924 = !DILocalVariable(name: "__cnt", scope: !919, file: !3, line: 233, type: !33)
!925 = distinct !DILocation(line: 321, column: 3, scope: !834)
!926 = !DILocation(line: 0, scope: !896, inlinedAt: !925)
!927 = !DILocation(line: 116, column: 8, scope: !928, inlinedAt: !925)
!928 = distinct !DILexicalBlock(scope: !896, file: !3, line: 116, column: 7)
!929 = !DILocation(line: 116, column: 7, scope: !896, inlinedAt: !925)
!930 = !DILocation(line: 122, column: 28, scope: !896, inlinedAt: !925)
!931 = !{!932, !932, i64 0}
!932 = !{!"long", !720, i64 0}
!933 = !DILocation(line: 122, column: 19, scope: !896, inlinedAt: !925)
!934 = !DILocation(line: 124, column: 3, scope: !896, inlinedAt: !925)
!935 = !DILocation(line: 0, scope: !903, inlinedAt: !925)
!936 = !DILocation(line: 143, column: 7, scope: !903, inlinedAt: !925)
!937 = !DILocation(line: 143, column: 14, scope: !903, inlinedAt: !925)
!938 = !DILocation(line: 159, column: 7, scope: !903, inlinedAt: !925)
!939 = !DILocation(line: 161, column: 11, scope: !914, inlinedAt: !925)
!940 = !DILocalVariable(name: "__fp", arg: 1, scope: !941, file: !942, line: 66, type: !899)
!941 = distinct !DISubprogram(name: "getc_unlocked", scope: !942, file: !942, line: 66, type: !943, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !945)
!942 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!943 = !DISubroutineType(types: !944)
!944 = !{!31, !899}
!945 = !{!940}
!946 = !DILocation(line: 0, scope: !941, inlinedAt: !947)
!947 = distinct !DILocation(line: 161, column: 23, scope: !914, inlinedAt: !925)
!948 = !DILocation(line: 68, column: 10, scope: !941, inlinedAt: !947)
!949 = !{!950, !719, i64 8}
!950 = !{!"_IO_FILE", !891, i64 0, !719, i64 8, !719, i64 16, !719, i64 24, !719, i64 32, !719, i64 40, !719, i64 48, !719, i64 56, !719, i64 64, !719, i64 72, !719, i64 80, !719, i64 88, !719, i64 96, !719, i64 104, !891, i64 112, !891, i64 116, !932, i64 120, !951, i64 128, !720, i64 130, !720, i64 131, !719, i64 136, !932, i64 144, !719, i64 152, !719, i64 160, !719, i64 168, !719, i64 176, !932, i64 184, !891, i64 192, !720, i64 196}
!951 = !{!"short", !720, i64 0}
!952 = !{!950, !719, i64 16}
!953 = !{!"branch_weights", i32 2000, i32 1}
!954 = !{!720, !720, i64 0}
!955 = !DILocation(line: 161, column: 38, scope: !914, inlinedAt: !925)
!956 = !DILocation(line: 161, column: 34, scope: !914, inlinedAt: !925)
!957 = !DILocation(line: 161, column: 47, scope: !914, inlinedAt: !925)
!958 = distinct !{!958, !939, !959, !770}
!959 = !DILocation(line: 162, column: 13, scope: !914, inlinedAt: !925)
!960 = !DILocation(line: 164, column: 15, scope: !913, inlinedAt: !925)
!961 = !DILocation(line: 164, column: 15, scope: !914, inlinedAt: !925)
!962 = !DILocation(line: 166, column: 31, scope: !912, inlinedAt: !925)
!963 = !{!951, !951, i64 0}
!964 = !DILocation(line: 166, column: 29, scope: !912, inlinedAt: !925)
!965 = !DILocation(line: 166, column: 20, scope: !912, inlinedAt: !925)
!966 = !DILocation(line: 0, scope: !912, inlinedAt: !925)
!967 = !DILocation(line: 168, column: 19, scope: !912, inlinedAt: !925)
!968 = !DILocation(line: 170, column: 19, scope: !916, inlinedAt: !925)
!969 = !DILocation(line: 0, scope: !916, inlinedAt: !925)
!970 = !DILocation(line: 172, column: 37, scope: !916, inlinedAt: !925)
!971 = !DILocation(line: 175, column: 23, scope: !972, inlinedAt: !925)
!972 = distinct !DILexicalBlock(scope: !916, file: !3, line: 175, column: 23)
!973 = !{i8 0, i8 2}
!974 = !DILocation(line: 175, column: 23, scope: !916, inlinedAt: !925)
!975 = !DILocation(line: 178, column: 23, scope: !976, inlinedAt: !925)
!976 = distinct !DILexicalBlock(scope: !916, file: !3, line: 178, column: 23)
!977 = !DILocation(line: 178, column: 23, scope: !916, inlinedAt: !925)
!978 = !DILocation(line: 180, column: 43, scope: !979, inlinedAt: !925)
!979 = distinct !DILexicalBlock(scope: !980, file: !3, line: 180, column: 27)
!980 = distinct !DILexicalBlock(scope: !976, file: !3, line: 179, column: 21)
!981 = !DILocation(line: 180, column: 27, scope: !980, inlinedAt: !925)
!982 = !DILocation(line: 181, column: 25, scope: !979, inlinedAt: !925)
!983 = !DILocation(line: 183, column: 29, scope: !984, inlinedAt: !925)
!984 = distinct !DILexicalBlock(scope: !980, file: !3, line: 183, column: 27)
!985 = !DILocation(line: 183, column: 27, scope: !980, inlinedAt: !925)
!986 = !DILocation(line: 187, column: 31, scope: !987, inlinedAt: !925)
!987 = distinct !DILexicalBlock(scope: !988, file: !3, line: 187, column: 31)
!988 = distinct !DILexicalBlock(scope: !984, file: !3, line: 184, column: 25)
!989 = !DILocation(line: 187, column: 31, scope: !988, inlinedAt: !925)
!990 = !DILocation(line: 192, column: 33, scope: !991, inlinedAt: !925)
!991 = distinct !DILexicalBlock(scope: !984, file: !3, line: 191, column: 25)
!992 = !DILocation(line: 194, column: 34, scope: !993, inlinedAt: !925)
!993 = distinct !DILexicalBlock(scope: !991, file: !3, line: 194, column: 31)
!994 = !DILocation(line: 194, column: 45, scope: !993, inlinedAt: !925)
!995 = !DILocation(line: 0, scope: !984, inlinedAt: !925)
!996 = !DILocation(line: 211, column: 33, scope: !980, inlinedAt: !925)
!997 = !DILocation(line: 212, column: 21, scope: !980, inlinedAt: !925)
!998 = !DILocation(line: 213, column: 17, scope: !917, inlinedAt: !925)
!999 = !DILocation(line: 214, column: 26, scope: !1000, inlinedAt: !925)
!1000 = distinct !DILexicalBlock(scope: !917, file: !3, line: 214, column: 24)
!1001 = !DILocation(line: 214, column: 24, scope: !917, inlinedAt: !925)
!1002 = !DILocation(line: 218, column: 30, scope: !1003, inlinedAt: !925)
!1003 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 215, column: 17)
!1004 = !DILocation(line: 218, column: 29, scope: !1003, inlinedAt: !925)
!1005 = !DILocation(line: 218, column: 26, scope: !1003, inlinedAt: !925)
!1006 = !DILocation(line: 220, column: 34, scope: !1003, inlinedAt: !925)
!1007 = !DILocation(line: 220, column: 33, scope: !1003, inlinedAt: !925)
!1008 = !DILocation(line: 220, column: 32, scope: !1003, inlinedAt: !925)
!1009 = !DILocation(line: 220, column: 29, scope: !1003, inlinedAt: !925)
!1010 = !DILocation(line: 221, column: 17, scope: !1003, inlinedAt: !925)
!1011 = !DILocation(line: 224, column: 25, scope: !1012, inlinedAt: !925)
!1012 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 223, column: 17)
!1013 = !DILocation(line: 225, column: 24, scope: !1014, inlinedAt: !925)
!1014 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 225, column: 23)
!1015 = !DILocation(line: 225, column: 23, scope: !1012, inlinedAt: !925)
!1016 = !DILocation(line: 226, column: 21, scope: !1014, inlinedAt: !925)
!1017 = !DILocation(line: 0, scope: !917, inlinedAt: !925)
!1018 = !DILocation(line: 161, column: 21, scope: !914, inlinedAt: !925)
!1019 = !DILocation(line: 229, column: 19, scope: !912, inlinedAt: !925)
!1020 = !DILocation(line: 231, column: 38, scope: !1021, inlinedAt: !925)
!1021 = distinct !DILexicalBlock(scope: !921, file: !3, line: 231, column: 23)
!1022 = !DILocation(line: 231, column: 23, scope: !921, inlinedAt: !925)
!1023 = !DILocation(line: 232, column: 38, scope: !1021, inlinedAt: !925)
!1024 = !DILocation(line: 232, column: 21, scope: !1021, inlinedAt: !925)
!1025 = !DILocation(line: 233, column: 23, scope: !920, inlinedAt: !925)
!1026 = !DILocation(line: 233, column: 66, scope: !920, inlinedAt: !925)
!1027 = !DILocation(line: 233, column: 23, scope: !921, inlinedAt: !925)
!1028 = !DILocation(line: 234, column: 21, scope: !920, inlinedAt: !925)
!1029 = !DILocation(line: 240, column: 26, scope: !912, inlinedAt: !925)
!1030 = !DILocation(line: 240, column: 46, scope: !912, inlinedAt: !925)
!1031 = !DILocation(line: 240, column: 23, scope: !912, inlinedAt: !925)
!1032 = !DILocation(line: 198, column: 35, scope: !1033, inlinedAt: !925)
!1033 = distinct !DILexicalBlock(scope: !993, file: !3, line: 195, column: 29)
!1034 = !DILocation(line: 200, column: 58, scope: !1033, inlinedAt: !925)
!1035 = !DILocation(line: 200, column: 52, scope: !1033, inlinedAt: !925)
!1036 = !DILocation(line: 200, column: 31, scope: !1033, inlinedAt: !925)
!1037 = !DILocation(line: 200, column: 56, scope: !1033, inlinedAt: !925)
!1038 = !DILocation(line: 243, column: 17, scope: !1039, inlinedAt: !925)
!1039 = distinct !DILexicalBlock(scope: !914, file: !3, line: 243, column: 15)
!1040 = !DILocation(line: 243, column: 15, scope: !914, inlinedAt: !925)
!1041 = !DILocation(line: 245, column: 15, scope: !1042, inlinedAt: !925)
!1042 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 244, column: 13)
!1043 = !DILocation(line: 253, column: 5, scope: !896, inlinedAt: !925)
!1044 = !DILocalVariable(name: "__c", arg: 1, scope: !1045, file: !942, line: 108, type: !31)
!1045 = distinct !DISubprogram(name: "putchar_unlocked", scope: !942, file: !942, line: 108, type: !1046, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1048)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!31, !31}
!1048 = !{!1044}
!1049 = !DILocation(line: 0, scope: !1045, inlinedAt: !1050)
!1050 = distinct !DILocation(line: 249, column: 15, scope: !1051, inlinedAt: !925)
!1051 = distinct !DILexicalBlock(scope: !914, file: !3, line: 249, column: 15)
!1052 = !DILocation(line: 110, column: 10, scope: !1045, inlinedAt: !1050)
!1053 = !{!950, !719, i64 40}
!1054 = !{!950, !719, i64 48}
!1055 = !DILocation(line: 249, column: 15, scope: !914, inlinedAt: !925)
!1056 = !DILocation(line: 249, column: 27, scope: !1051, inlinedAt: !925)
!1057 = !DILocation(line: 250, column: 13, scope: !1051, inlinedAt: !925)
!1058 = !DILocation(line: 185, column: 34, scope: !988, inlinedAt: !925)
!1059 = !DILocation(line: 236, column: 45, scope: !921, inlinedAt: !925)
!1060 = !DILocation(line: 239, column: 26, scope: !912, inlinedAt: !925)
!1061 = !DILocation(line: 235, column: 27, scope: !921, inlinedAt: !925)
!1062 = !DILocation(line: 252, column: 16, scope: !903, inlinedAt: !925)
!1063 = !DILocation(line: 251, column: 9, scope: !914, inlinedAt: !925)
!1064 = distinct !{!1064, !938, !1065, !770}
!1065 = !DILocation(line: 252, column: 23, scope: !903, inlinedAt: !925)
!1066 = !DILocation(line: 323, column: 3, scope: !834)
!1067 = !DILocation(line: 325, column: 10, scope: !834)
!1068 = !DILocation(line: 326, column: 1, scope: !834)
!1069 = !DISubprogram(name: "bindtextdomain", scope: !791, file: !791, line: 86, type: !1070, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!22, !35, !35}
!1072 = !DISubprogram(name: "textdomain", scope: !791, file: !791, line: 82, type: !1073, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!22, !35}
!1075 = !DISubprogram(name: "atexit", scope: !1076, file: !1076, line: 595, type: !1077, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!1076 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!31, !1079}
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!1080 = !DISubprogram(name: "getopt_long", scope: !43, file: !43, line: 66, type: !1081, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!31, !31, !1083, !35, !1085, !48}
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!1086 = !DISubprogram(name: "error", scope: !1087, file: !1087, line: 52, type: !1088, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!1087 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1088 = !DISubroutineType(types: !1089)
!1089 = !{null, !31, !31, !35, null}
!1090 = !DISubprogram(name: "fwrite_unlocked", scope: !795, file: !795, line: 680, type: !1091, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!30, !1093, !30, !30, !798}
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1095 = distinct !DISubprogram(name: "add_tab_stop", scope: !55, file: !55, line: 78, type: !1096, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !1098)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{null, !26}
!1098 = !{!1099, !1100, !1101}
!1099 = !DILocalVariable(name: "tabval", arg: 1, scope: !1095, file: !55, line: 78, type: !26)
!1100 = !DILocalVariable(name: "prev_column", scope: !1095, file: !55, line: 80, type: !26)
!1101 = !DILocalVariable(name: "column_width", scope: !1095, file: !55, line: 81, type: !26)
!1102 = !DILocation(line: 0, scope: !1095)
!1103 = !DILocation(line: 80, column: 27, scope: !1095)
!1104 = !DILocation(line: 80, column: 44, scope: !1095)
!1105 = !DILocation(line: 80, column: 68, scope: !1095)
!1106 = !DILocation(line: 81, column: 28, scope: !1095)
!1107 = !DILocation(line: 83, column: 25, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1095, file: !55, line: 83, column: 7)
!1109 = !DILocation(line: 83, column: 22, scope: !1108)
!1110 = !DILocation(line: 83, column: 7, scope: !1095)
!1111 = !DILocation(line: 85, column: 3, scope: !1095)
!1112 = !DILocation(line: 84, column: 16, scope: !1108)
!1113 = !DILocation(line: 0, scope: !82, inlinedAt: !1114)
!1114 = distinct !DILocation(line: 84, column: 16, scope: !1108)
!1115 = !DILocation(line: 178, column: 9, scope: !1116, inlinedAt: !1114)
!1116 = distinct !DILexicalBlock(scope: !82, file: !81, line: 178, column: 7)
!1117 = !DILocation(line: 178, column: 7, scope: !82, inlinedAt: !1114)
!1118 = !DILocation(line: 180, column: 11, scope: !1119, inlinedAt: !1114)
!1119 = distinct !DILexicalBlock(scope: !1116, file: !81, line: 179, column: 5)
!1120 = !DILocation(line: 191, column: 11, scope: !1121, inlinedAt: !1114)
!1121 = distinct !DILexicalBlock(scope: !1119, file: !81, line: 191, column: 11)
!1122 = !DILocation(line: 191, column: 11, scope: !1119, inlinedAt: !1114)
!1123 = !DILocation(line: 192, column: 9, scope: !1121, inlinedAt: !1114)
!1124 = !DILocation(line: 201, column: 11, scope: !1125, inlinedAt: !1114)
!1125 = distinct !DILexicalBlock(scope: !1126, file: !81, line: 200, column: 11)
!1126 = distinct !DILexicalBlock(scope: !1116, file: !81, line: 195, column: 5)
!1127 = !DILocation(line: 200, column: 11, scope: !1126, inlinedAt: !1114)
!1128 = !DILocation(line: 202, column: 9, scope: !1125, inlinedAt: !1114)
!1129 = !DILocation(line: 203, column: 14, scope: !1126, inlinedAt: !1114)
!1130 = !DILocation(line: 203, column: 18, scope: !1126, inlinedAt: !1114)
!1131 = !DILocation(line: 203, column: 9, scope: !1126, inlinedAt: !1114)
!1132 = !DILocation(line: 206, column: 7, scope: !82, inlinedAt: !1114)
!1133 = !DILocation(line: 207, column: 25, scope: !82, inlinedAt: !1114)
!1134 = !DILocation(line: 207, column: 10, scope: !82, inlinedAt: !1114)
!1135 = !DILocation(line: 84, column: 14, scope: !1108)
!1136 = !DILocation(line: 84, column: 5, scope: !1108)
!1137 = !DILocation(line: 85, column: 26, scope: !1095)
!1138 = !DILocation(line: 85, column: 30, scope: !1095)
!1139 = !DILocation(line: 87, column: 7, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1095, file: !55, line: 87, column: 7)
!1141 = !DILocation(line: 87, column: 24, scope: !1140)
!1142 = !DILocation(line: 87, column: 7, scope: !1095)
!1143 = !DILocation(line: 91, column: 24, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1140, file: !55, line: 88, column: 5)
!1145 = !DILocation(line: 92, column: 5, scope: !1144)
!1146 = !DILocation(line: 93, column: 1, scope: !1095)
!1147 = distinct !DISubprogram(name: "parse_tab_stops", scope: !55, file: !55, line: 132, type: !740, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !1148)
!1148 = !{!1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1167}
!1149 = !DILocalVariable(name: "stops", arg: 1, scope: !1147, file: !55, line: 132, type: !35)
!1150 = !DILocalVariable(name: "have_tabval", scope: !1147, file: !55, line: 134, type: !175)
!1151 = !DILocalVariable(name: "tabval", scope: !1147, file: !55, line: 135, type: !26)
!1152 = !DILocalVariable(name: "extend_tabval", scope: !1147, file: !55, line: 136, type: !175)
!1153 = !DILocalVariable(name: "increment_tabval", scope: !1147, file: !55, line: 137, type: !175)
!1154 = !DILocalVariable(name: "num_start", scope: !1147, file: !55, line: 138, type: !35)
!1155 = !DILocalVariable(name: "ok", scope: !1147, file: !55, line: 139, type: !175)
!1156 = !DILocalVariable(name: "len", scope: !1157, file: !55, line: 202, type: !33)
!1157 = distinct !DILexicalBlock(scope: !1158, file: !55, line: 201, column: 13)
!1158 = distinct !DILexicalBlock(scope: !1159, file: !55, line: 200, column: 15)
!1159 = distinct !DILexicalBlock(scope: !1160, file: !55, line: 191, column: 9)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !55, line: 190, column: 16)
!1161 = distinct !DILexicalBlock(scope: !1162, file: !55, line: 179, column: 16)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !55, line: 168, column: 16)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !55, line: 143, column: 11)
!1164 = distinct !DILexicalBlock(scope: !1165, file: !55, line: 142, column: 5)
!1165 = distinct !DILexicalBlock(scope: !1166, file: !55, line: 141, column: 3)
!1166 = distinct !DILexicalBlock(scope: !1147, file: !55, line: 141, column: 3)
!1167 = !DILocalVariable(name: "bad_num", scope: !1157, file: !55, line: 203, type: !22)
!1168 = !DILocation(line: 0, scope: !1147)
!1169 = !DILocation(line: 141, column: 3, scope: !1147)
!1170 = !DILocation(line: 135, column: 13, scope: !1147)
!1171 = !DILocation(line: 136, column: 8, scope: !1147)
!1172 = !DILocation(line: 137, column: 8, scope: !1147)
!1173 = !DILocation(line: 138, column: 15, scope: !1147)
!1174 = !DILocation(line: 139, column: 8, scope: !1147)
!1175 = !DILocation(line: 141, column: 10, scope: !1165)
!1176 = !DILocation(line: 141, column: 3, scope: !1166)
!1177 = !DILocation(line: 143, column: 28, scope: !1163)
!1178 = !DILocation(line: 143, column: 11, scope: !1164)
!1179 = !DILocation(line: 145, column: 15, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !55, line: 145, column: 15)
!1181 = distinct !DILexicalBlock(scope: !1163, file: !55, line: 144, column: 9)
!1182 = !DILocation(line: 145, column: 15, scope: !1181)
!1183 = !DILocation(line: 147, column: 19, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !55, line: 147, column: 19)
!1185 = distinct !DILexicalBlock(scope: !1180, file: !55, line: 146, column: 13)
!1186 = !DILocation(line: 147, column: 19, scope: !1185)
!1187 = !DILocalVariable(name: "tabval", arg: 1, scope: !1188, file: !55, line: 96, type: !26)
!1188 = distinct !DISubprogram(name: "set_extend_size", scope: !55, file: !55, line: 96, type: !1189, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !1191)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{!175, !26}
!1191 = !{!1187, !1192}
!1192 = !DILocalVariable(name: "ok", scope: !1188, file: !55, line: 98, type: !175)
!1193 = !DILocation(line: 0, scope: !1188, inlinedAt: !1194)
!1194 = distinct !DILocation(line: 149, column: 25, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !55, line: 149, column: 23)
!1196 = distinct !DILexicalBlock(scope: !1184, file: !55, line: 148, column: 17)
!1197 = !DILocation(line: 100, column: 7, scope: !1198, inlinedAt: !1194)
!1198 = distinct !DILexicalBlock(scope: !1188, file: !55, line: 100, column: 7)
!1199 = !DILocation(line: 100, column: 7, scope: !1188, inlinedAt: !1194)
!1200 = !DILocation(line: 107, column: 15, scope: !1188, inlinedAt: !1194)
!1201 = !DILocation(line: 149, column: 23, scope: !1196)
!1202 = !DILocation(line: 103, column: 14, scope: !1203, inlinedAt: !1194)
!1203 = distinct !DILexicalBlock(scope: !1198, file: !55, line: 101, column: 5)
!1204 = !DILocation(line: 102, column: 7, scope: !1203, inlinedAt: !1194)
!1205 = !DILocation(line: 155, column: 24, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1184, file: !55, line: 155, column: 24)
!1207 = !DILocation(line: 155, column: 24, scope: !1184)
!1208 = !DILocalVariable(name: "tabval", arg: 1, scope: !1209, file: !55, line: 113, type: !26)
!1209 = distinct !DISubprogram(name: "set_increment_size", scope: !55, file: !55, line: 113, type: !1189, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !1210)
!1210 = !{!1208, !1211}
!1211 = !DILocalVariable(name: "ok", scope: !1209, file: !55, line: 115, type: !175)
!1212 = !DILocation(line: 0, scope: !1209, inlinedAt: !1213)
!1213 = distinct !DILocation(line: 157, column: 25, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !55, line: 157, column: 23)
!1215 = distinct !DILexicalBlock(scope: !1206, file: !55, line: 156, column: 17)
!1216 = !DILocation(line: 117, column: 7, scope: !1217, inlinedAt: !1213)
!1217 = distinct !DILexicalBlock(scope: !1209, file: !55, line: 117, column: 7)
!1218 = !DILocation(line: 117, column: 7, scope: !1209, inlinedAt: !1213)
!1219 = !DILocation(line: 124, column: 18, scope: !1209, inlinedAt: !1213)
!1220 = !DILocation(line: 157, column: 23, scope: !1215)
!1221 = !DILocation(line: 120, column: 14, scope: !1222, inlinedAt: !1213)
!1222 = distinct !DILexicalBlock(scope: !1217, file: !55, line: 118, column: 5)
!1223 = !DILocation(line: 119, column: 7, scope: !1222, inlinedAt: !1213)
!1224 = !DILocation(line: 164, column: 17, scope: !1206)
!1225 = !DILocation(line: 168, column: 16, scope: !1163)
!1226 = !DILocation(line: 170, column: 15, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1228, file: !55, line: 170, column: 15)
!1228 = distinct !DILexicalBlock(scope: !1162, file: !55, line: 169, column: 9)
!1229 = !DILocation(line: 170, column: 15, scope: !1228)
!1230 = !DILocation(line: 172, column: 28, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1227, file: !55, line: 171, column: 13)
!1232 = !DILocation(line: 173, column: 22, scope: !1231)
!1233 = !DILocation(line: 172, column: 15, scope: !1231)
!1234 = !DILocation(line: 175, column: 13, scope: !1231)
!1235 = !DILocation(line: 181, column: 15, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1237, file: !55, line: 181, column: 15)
!1237 = distinct !DILexicalBlock(scope: !1161, file: !55, line: 180, column: 9)
!1238 = !DILocation(line: 181, column: 15, scope: !1237)
!1239 = !DILocation(line: 183, column: 28, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1236, file: !55, line: 182, column: 13)
!1241 = !DILocation(line: 184, column: 22, scope: !1240)
!1242 = !DILocation(line: 183, column: 15, scope: !1240)
!1243 = !DILocation(line: 186, column: 13, scope: !1240)
!1244 = !DILocation(line: 168, column: 16, scope: !1162)
!1245 = !DILocation(line: 190, column: 16, scope: !1160)
!1246 = !DILocation(line: 190, column: 16, scope: !1161)
!1247 = !DILocation(line: 192, column: 16, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1159, file: !55, line: 192, column: 15)
!1249 = !DILocation(line: 192, column: 15, scope: !1159)
!1250 = !DILocation(line: 200, column: 16, scope: !1158)
!1251 = !DILocation(line: 200, column: 15, scope: !1159)
!1252 = !DILocation(line: 202, column: 28, scope: !1157)
!1253 = !DILocation(line: 0, scope: !1157)
!1254 = !DILocation(line: 203, column: 31, scope: !1157)
!1255 = !DILocation(line: 204, column: 28, scope: !1157)
!1256 = !DILocation(line: 204, column: 59, scope: !1157)
!1257 = !DILocation(line: 204, column: 15, scope: !1157)
!1258 = !DILocation(line: 205, column: 15, scope: !1157)
!1259 = !DILocation(line: 207, column: 33, scope: !1157)
!1260 = !DILocation(line: 207, column: 39, scope: !1157)
!1261 = !DILocation(line: 208, column: 13, scope: !1157)
!1262 = !DILocation(line: 212, column: 24, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1160, file: !55, line: 211, column: 9)
!1264 = !DILocation(line: 213, column: 18, scope: !1263)
!1265 = !DILocation(line: 212, column: 11, scope: !1263)
!1266 = !DILocation(line: 215, column: 11, scope: !1263)
!1267 = !DILocation(line: 141, column: 23, scope: !1165)
!1268 = !DILocation(line: 141, column: 3, scope: !1165)
!1269 = distinct !{!1269, !1176, !1270, !770}
!1270 = !DILocation(line: 217, column: 5, scope: !1166)
!1271 = !DILocation(line: 219, column: 10, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1147, file: !55, line: 219, column: 7)
!1273 = !DILocation(line: 221, column: 11, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1275, file: !55, line: 221, column: 11)
!1275 = distinct !DILexicalBlock(scope: !1272, file: !55, line: 220, column: 5)
!1276 = !DILocation(line: 221, column: 11, scope: !1275)
!1277 = !DILocation(line: 0, scope: !1188, inlinedAt: !1278)
!1278 = distinct !DILocation(line: 222, column: 15, scope: !1274)
!1279 = !DILocation(line: 100, column: 7, scope: !1198, inlinedAt: !1278)
!1280 = !DILocation(line: 100, column: 7, scope: !1188, inlinedAt: !1278)
!1281 = !DILocation(line: 103, column: 14, scope: !1203, inlinedAt: !1278)
!1282 = !DILocation(line: 102, column: 7, scope: !1203, inlinedAt: !1278)
!1283 = !DILocation(line: 106, column: 5, scope: !1203, inlinedAt: !1278)
!1284 = !DILocation(line: 107, column: 15, scope: !1188, inlinedAt: !1278)
!1285 = !DILocation(line: 222, column: 12, scope: !1274)
!1286 = !DILocation(line: 222, column: 9, scope: !1274)
!1287 = !DILocation(line: 223, column: 16, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1274, file: !55, line: 223, column: 16)
!1289 = !DILocation(line: 223, column: 16, scope: !1274)
!1290 = !DILocation(line: 0, scope: !1209, inlinedAt: !1291)
!1291 = distinct !DILocation(line: 224, column: 15, scope: !1288)
!1292 = !DILocation(line: 117, column: 7, scope: !1217, inlinedAt: !1291)
!1293 = !DILocation(line: 117, column: 7, scope: !1209, inlinedAt: !1291)
!1294 = !DILocation(line: 120, column: 14, scope: !1222, inlinedAt: !1291)
!1295 = !DILocation(line: 119, column: 7, scope: !1222, inlinedAt: !1291)
!1296 = !DILocation(line: 123, column: 5, scope: !1222, inlinedAt: !1291)
!1297 = !DILocation(line: 124, column: 18, scope: !1209, inlinedAt: !1291)
!1298 = !DILocation(line: 224, column: 12, scope: !1288)
!1299 = !DILocation(line: 224, column: 9, scope: !1288)
!1300 = !DILocation(line: 226, column: 9, scope: !1288)
!1301 = !DILocation(line: 229, column: 9, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1147, file: !55, line: 229, column: 7)
!1303 = !DILocation(line: 229, column: 7, scope: !1147)
!1304 = !DILocation(line: 230, column: 5, scope: !1302)
!1305 = !DILocation(line: 231, column: 1, scope: !1147)
!1306 = distinct !DISubprogram(name: "finalize_tab_stops", scope: !55, file: !55, line: 263, type: !728, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !189)
!1307 = !DILocation(line: 265, column: 23, scope: !1306)
!1308 = !DILocation(line: 265, column: 33, scope: !1306)
!1309 = !DILocalVariable(name: "tabs", arg: 1, scope: !1310, file: !55, line: 237, type: !1313)
!1310 = distinct !DISubprogram(name: "validate_tab_stops", scope: !55, file: !55, line: 237, type: !1311, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !1315)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{null, !1313, !33}
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!1315 = !{!1309, !1316, !1317, !1318}
!1316 = !DILocalVariable(name: "entries", arg: 2, scope: !1310, file: !55, line: 237, type: !33)
!1317 = !DILocalVariable(name: "prev_tab", scope: !1310, file: !55, line: 239, type: !26)
!1318 = !DILocalVariable(name: "i", scope: !1319, file: !55, line: 241, type: !33)
!1319 = distinct !DILexicalBlock(scope: !1310, file: !55, line: 241, column: 3)
!1320 = !DILocation(line: 0, scope: !1310, inlinedAt: !1321)
!1321 = distinct !DILocation(line: 265, column: 3, scope: !1306)
!1322 = !DILocation(line: 0, scope: !1319, inlinedAt: !1321)
!1323 = !DILocation(line: 241, column: 24, scope: !1324, inlinedAt: !1321)
!1324 = distinct !DILexicalBlock(scope: !1319, file: !55, line: 241, column: 3)
!1325 = !DILocation(line: 241, column: 3, scope: !1319, inlinedAt: !1321)
!1326 = distinct !{!1326, !1325, !1327, !770}
!1327 = !DILocation(line: 248, column: 5, scope: !1319, inlinedAt: !1321)
!1328 = !DILocation(line: 250, column: 7, scope: !1329, inlinedAt: !1321)
!1329 = distinct !DILexicalBlock(scope: !1310, file: !55, line: 250, column: 7)
!1330 = !DILocation(line: 250, column: 22, scope: !1329, inlinedAt: !1321)
!1331 = !DILocation(line: 243, column: 11, scope: !1332, inlinedAt: !1321)
!1332 = distinct !DILexicalBlock(scope: !1333, file: !55, line: 243, column: 11)
!1333 = distinct !DILexicalBlock(scope: !1324, file: !55, line: 242, column: 5)
!1334 = !DILocation(line: 243, column: 19, scope: !1332, inlinedAt: !1321)
!1335 = !DILocation(line: 243, column: 11, scope: !1333, inlinedAt: !1321)
!1336 = !DILocation(line: 244, column: 9, scope: !1332, inlinedAt: !1321)
!1337 = !DILocation(line: 245, column: 19, scope: !1338, inlinedAt: !1321)
!1338 = distinct !DILexicalBlock(scope: !1333, file: !55, line: 245, column: 11)
!1339 = !DILocation(line: 241, column: 36, scope: !1324, inlinedAt: !1321)
!1340 = !DILocation(line: 245, column: 11, scope: !1333, inlinedAt: !1321)
!1341 = !DILocation(line: 246, column: 9, scope: !1338, inlinedAt: !1321)
!1342 = !DILocation(line: 251, column: 5, scope: !1329, inlinedAt: !1321)
!1343 = !DILocation(line: 268, column: 35, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1306, file: !55, line: 267, column: 7)
!1345 = !DILocation(line: 268, column: 33, scope: !1344)
!1346 = !DILocation(line: 268, column: 5, scope: !1344)
!1347 = !DILocation(line: 271, column: 27, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1344, file: !55, line: 271, column: 12)
!1349 = !DILocation(line: 271, column: 32, scope: !1348)
!1350 = !DILocation(line: 272, column: 16, scope: !1348)
!1351 = !DILocation(line: 272, column: 5, scope: !1348)
!1352 = !DILocation(line: 0, scope: !1344)
!1353 = !DILocation(line: 275, column: 1, scope: !1306)
!1354 = distinct !DISubprogram(name: "get_next_tab_column", scope: !55, file: !55, line: 279, type: !1355, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !1358)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!26, !1314, !85, !1357}
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!1358 = !{!1359, !1360, !1361, !1362, !1366}
!1359 = !DILocalVariable(name: "column", arg: 1, scope: !1354, file: !55, line: 279, type: !1314)
!1360 = !DILocalVariable(name: "tab_index", arg: 2, scope: !1354, file: !55, line: 279, type: !85)
!1361 = !DILocalVariable(name: "last_tab", arg: 3, scope: !1354, file: !55, line: 280, type: !1357)
!1362 = !DILocalVariable(name: "tab", scope: !1363, file: !55, line: 292, type: !26)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !55, line: 291, column: 5)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !55, line: 290, column: 3)
!1365 = distinct !DILexicalBlock(scope: !1354, file: !55, line: 290, column: 3)
!1366 = !DILocalVariable(name: "end_tab", scope: !1367, file: !55, line: 304, type: !26)
!1367 = distinct !DILexicalBlock(scope: !1368, file: !55, line: 303, column: 5)
!1368 = distinct !DILexicalBlock(scope: !1354, file: !55, line: 302, column: 7)
!1369 = !DILocation(line: 0, scope: !1354)
!1370 = !DILocation(line: 282, column: 13, scope: !1354)
!1371 = !DILocation(line: 285, column: 7, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1354, file: !55, line: 285, column: 7)
!1373 = !DILocation(line: 285, column: 7, scope: !1354)
!1374 = !DILocation(line: 290, column: 11, scope: !1364)
!1375 = !DILocation(line: 290, column: 24, scope: !1364)
!1376 = !DILocation(line: 290, column: 22, scope: !1364)
!1377 = !DILocation(line: 290, column: 3, scope: !1365)
!1378 = !DILocation(line: 286, column: 40, scope: !1372)
!1379 = !DILocation(line: 286, column: 31, scope: !1372)
!1380 = !DILocation(line: 286, column: 19, scope: !1372)
!1381 = !DILocation(line: 286, column: 5, scope: !1372)
!1382 = !DILocation(line: 292, column: 25, scope: !1363)
!1383 = !DILocation(line: 0, scope: !1363)
!1384 = !DILocation(line: 293, column: 20, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1363, file: !55, line: 293, column: 13)
!1386 = !DILocation(line: 290, column: 53, scope: !1364)
!1387 = distinct !{!1387, !1377, !1388, !770}
!1388 = !DILocation(line: 295, column: 5, scope: !1365)
!1389 = !DILocation(line: 298, column: 7, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1354, file: !55, line: 298, column: 7)
!1391 = !DILocation(line: 298, column: 7, scope: !1354)
!1392 = !DILocation(line: 299, column: 43, scope: !1390)
!1393 = !DILocation(line: 299, column: 34, scope: !1390)
!1394 = !DILocation(line: 299, column: 19, scope: !1390)
!1395 = !DILocation(line: 299, column: 5, scope: !1390)
!1396 = !DILocation(line: 302, column: 7, scope: !1368)
!1397 = !DILocation(line: 302, column: 7, scope: !1354)
!1398 = !DILocation(line: 304, column: 27, scope: !1367)
!1399 = !DILocation(line: 304, column: 51, scope: !1367)
!1400 = !DILocation(line: 0, scope: !1367)
!1401 = !DILocation(line: 306, column: 50, scope: !1367)
!1402 = !DILocation(line: 306, column: 61, scope: !1367)
!1403 = !DILocation(line: 306, column: 39, scope: !1367)
!1404 = !DILocation(line: 306, column: 21, scope: !1367)
!1405 = !DILocation(line: 309, column: 13, scope: !1354)
!1406 = !DILocation(line: 310, column: 3, scope: !1354)
!1407 = !DILocation(line: 311, column: 1, scope: !1354)
!1408 = distinct !DISubprogram(name: "set_file_list", scope: !55, file: !55, line: 318, type: !1409, scopeLine: 319, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !1411)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{null, !183}
!1411 = !{!1412}
!1412 = !DILocalVariable(name: "list", arg: 1, scope: !1408, file: !55, line: 318, type: !183)
!1413 = !DILocation(line: 0, scope: !1408)
!1414 = !DILocation(line: 320, column: 19, scope: !1408)
!1415 = !DILocation(line: 322, column: 8, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1408, file: !55, line: 322, column: 7)
!1417 = !DILocation(line: 322, column: 7, scope: !1408)
!1418 = !DILocation(line: 0, scope: !1416)
!1419 = !DILocation(line: 326, column: 1, scope: !1408)
!1420 = !DILocation(line: 0, scope: !99)
!1421 = !DILocation(line: 339, column: 7, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !99, file: !55, line: 339, column: 7)
!1423 = !DILocation(line: 339, column: 7, scope: !99)
!1424 = !DILocation(line: 341, column: 7, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !55, line: 341, column: 7)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !55, line: 341, column: 7)
!1427 = distinct !DILexicalBlock(scope: !1422, file: !55, line: 340, column: 5)
!1428 = !DILocation(line: 341, column: 7, scope: !1426)
!1429 = !DILocalVariable(name: "__stream", arg: 1, scope: !1430, file: !942, line: 135, type: !102)
!1430 = distinct !DISubprogram(name: "ferror_unlocked", scope: !942, file: !942, line: 135, type: !1431, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !1433)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{!31, !102}
!1433 = !{!1429}
!1434 = !DILocation(line: 0, scope: !1430, inlinedAt: !1435)
!1435 = distinct !DILocation(line: 342, column: 11, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1427, file: !55, line: 342, column: 11)
!1437 = !DILocation(line: 137, column: 10, scope: !1430, inlinedAt: !1435)
!1438 = !{!950, !891, i64 0}
!1439 = !DILocation(line: 342, column: 11, scope: !1436)
!1440 = !DILocation(line: 342, column: 11, scope: !1427)
!1441 = !DILocation(line: 344, column: 21, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1436, file: !55, line: 343, column: 9)
!1443 = !DILocation(line: 344, column: 34, scope: !1442)
!1444 = !DILocation(line: 344, column: 11, scope: !1442)
!1445 = !DILocation(line: 345, column: 23, scope: !1442)
!1446 = !DILocation(line: 347, column: 11, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1427, file: !55, line: 347, column: 11)
!1448 = !DILocation(line: 346, column: 9, scope: !1442)
!1449 = !DILocation(line: 347, column: 11, scope: !1427)
!1450 = !DILocation(line: 348, column: 9, scope: !1447)
!1451 = !DILocation(line: 349, column: 16, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1447, file: !55, line: 349, column: 16)
!1453 = !DILocation(line: 349, column: 28, scope: !1452)
!1454 = !DILocation(line: 349, column: 16, scope: !1447)
!1455 = !DILocation(line: 351, column: 21, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1452, file: !55, line: 350, column: 9)
!1457 = !DILocation(line: 351, column: 34, scope: !1456)
!1458 = !DILocation(line: 351, column: 11, scope: !1456)
!1459 = !DILocation(line: 352, column: 23, scope: !1456)
!1460 = !DILocation(line: 353, column: 9, scope: !1456)
!1461 = !DILocation(line: 356, column: 28, scope: !99)
!1462 = !DILocation(line: 356, column: 18, scope: !99)
!1463 = !DILocation(line: 356, column: 32, scope: !99)
!1464 = !DILocation(line: 356, column: 3, scope: !99)
!1465 = !DILocation(line: 358, column: 11, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1467, file: !55, line: 358, column: 11)
!1467 = distinct !DILexicalBlock(scope: !99, file: !55, line: 357, column: 5)
!1468 = !DILocation(line: 358, column: 11, scope: !1467)
!1469 = !DILocation(line: 360, column: 27, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1466, file: !55, line: 359, column: 9)
!1471 = !DILocation(line: 361, column: 16, scope: !1470)
!1472 = !DILocation(line: 362, column: 9, scope: !1470)
!1473 = !DILocation(line: 364, column: 14, scope: !1466)
!1474 = !DILocation(line: 0, scope: !1466)
!1475 = !DILocation(line: 365, column: 11, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1467, file: !55, line: 365, column: 11)
!1477 = !DILocation(line: 365, column: 11, scope: !1467)
!1478 = !DILocation(line: 367, column: 21, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1476, file: !55, line: 366, column: 9)
!1480 = !DILocation(line: 368, column: 11, scope: !1479)
!1481 = !DILocation(line: 369, column: 11, scope: !1479)
!1482 = !DILocation(line: 371, column: 17, scope: !1467)
!1483 = !DILocation(line: 371, column: 30, scope: !1467)
!1484 = !DILocation(line: 371, column: 7, scope: !1467)
!1485 = !DILocation(line: 372, column: 19, scope: !1467)
!1486 = distinct !{!1486, !1464, !1487, !770}
!1487 = !DILocation(line: 373, column: 5, scope: !99)
!1488 = !DILocation(line: 375, column: 1, scope: !99)
!1489 = !DISubprogram(name: "clearerr_unlocked", scope: !795, file: !795, line: 770, type: !1490, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{null, !124}
!1492 = distinct !DISubprogram(name: "cleanup_file_list_stdin", scope: !55, file: !55, line: 379, type: !728, scopeLine: 380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !189)
!1493 = !DILocation(line: 381, column: 9, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1492, file: !55, line: 381, column: 9)
!1495 = !DILocation(line: 381, column: 25, scope: !1494)
!1496 = !DILocation(line: 381, column: 36, scope: !1494)
!1497 = !DILocation(line: 381, column: 28, scope: !1494)
!1498 = !DILocation(line: 381, column: 43, scope: !1494)
!1499 = !DILocation(line: 381, column: 9, scope: !1492)
!1500 = !DILocation(line: 382, column: 7, scope: !1494)
!1501 = !DILocation(line: 383, column: 1, scope: !1492)
!1502 = distinct !DISubprogram(name: "emit_tab_list_info", scope: !55, file: !55, line: 387, type: !728, scopeLine: 388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !189)
!1503 = !DILocation(line: 390, column: 3, scope: !1502)
!1504 = !DILocation(line: 393, column: 3, scope: !1502)
!1505 = !DILocation(line: 400, column: 1, scope: !1502)
!1506 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !194, file: !194, line: 51, type: !740, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !193, retainedNodes: !1507)
!1507 = !{!1508}
!1508 = !DILocalVariable(name: "file", arg: 1, scope: !1506, file: !194, line: 51, type: !35)
!1509 = !DILocation(line: 0, scope: !1506)
!1510 = !DILocation(line: 53, column: 13, scope: !1506)
!1511 = !DILocation(line: 54, column: 1, scope: !1506)
!1512 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !194, file: !194, line: 88, type: !1513, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !193, retainedNodes: !1515)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{null, !175}
!1515 = !{!1516}
!1516 = !DILocalVariable(name: "ignore", arg: 1, scope: !1512, file: !194, line: 88, type: !175)
!1517 = !DILocation(line: 0, scope: !1512)
!1518 = !DILocation(line: 90, column: 16, scope: !1512)
!1519 = !DILocation(line: 91, column: 1, scope: !1512)
!1520 = distinct !DISubprogram(name: "close_stdout", scope: !194, file: !194, line: 117, type: !728, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !193, retainedNodes: !1521)
!1521 = !{!1522}
!1522 = !DILocalVariable(name: "write_error", scope: !1523, file: !194, line: 122, type: !35)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !194, line: 121, column: 5)
!1524 = distinct !DILexicalBlock(scope: !1520, file: !194, line: 119, column: 7)
!1525 = !DILocation(line: 119, column: 21, scope: !1524)
!1526 = !DILocation(line: 119, column: 7, scope: !1524)
!1527 = !DILocation(line: 119, column: 29, scope: !1524)
!1528 = !DILocation(line: 120, column: 7, scope: !1524)
!1529 = !DILocation(line: 120, column: 12, scope: !1524)
!1530 = !DILocation(line: 120, column: 25, scope: !1524)
!1531 = !DILocation(line: 120, column: 28, scope: !1524)
!1532 = !DILocation(line: 120, column: 34, scope: !1524)
!1533 = !DILocation(line: 119, column: 7, scope: !1520)
!1534 = !DILocation(line: 122, column: 33, scope: !1523)
!1535 = !DILocation(line: 0, scope: !1523)
!1536 = !DILocation(line: 123, column: 11, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1523, file: !194, line: 123, column: 11)
!1538 = !DILocation(line: 0, scope: !1537)
!1539 = !DILocation(line: 123, column: 11, scope: !1523)
!1540 = !DILocation(line: 124, column: 36, scope: !1537)
!1541 = !DILocation(line: 124, column: 9, scope: !1537)
!1542 = !DILocation(line: 127, column: 9, scope: !1537)
!1543 = !DILocation(line: 129, column: 14, scope: !1523)
!1544 = !DILocation(line: 129, column: 7, scope: !1523)
!1545 = !DILocation(line: 134, column: 42, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1520, file: !194, line: 134, column: 7)
!1547 = !DILocation(line: 134, column: 28, scope: !1546)
!1548 = !DILocation(line: 134, column: 50, scope: !1546)
!1549 = !DILocation(line: 134, column: 7, scope: !1520)
!1550 = !DILocation(line: 135, column: 12, scope: !1546)
!1551 = !DILocation(line: 135, column: 5, scope: !1546)
!1552 = !DILocation(line: 136, column: 1, scope: !1520)
!1553 = distinct !DISubprogram(name: "fdadvise", scope: !271, file: !271, line: 31, type: !1554, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !270, retainedNodes: !1558)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{null, !31, !1556, !1556, !1557}
!1556 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !795, line: 63, baseType: !128)
!1557 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !72, line: 52, baseType: !71)
!1558 = !{!1559, !1560, !1561, !1562, !1563}
!1559 = !DILocalVariable(name: "fd", arg: 1, scope: !1553, file: !271, line: 31, type: !31)
!1560 = !DILocalVariable(name: "offset", arg: 2, scope: !1553, file: !271, line: 31, type: !1556)
!1561 = !DILocalVariable(name: "len", arg: 3, scope: !1553, file: !271, line: 31, type: !1556)
!1562 = !DILocalVariable(name: "advice", arg: 4, scope: !1553, file: !271, line: 31, type: !1557)
!1563 = !DILocalVariable(name: "__x", scope: !1564, file: !271, line: 34, type: !31)
!1564 = distinct !DILexicalBlock(scope: !1553, file: !271, line: 34, column: 3)
!1565 = !DILocation(line: 0, scope: !1553)
!1566 = !DILocation(line: 34, column: 3, scope: !1564)
!1567 = !DILocation(line: 0, scope: !1564)
!1568 = !DILocation(line: 36, column: 1, scope: !1553)
!1569 = !DISubprogram(name: "posix_fadvise", scope: !1570, file: !1570, line: 288, type: !1571, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!1570 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!31, !31, !129, !129, !31}
!1573 = distinct !DISubprogram(name: "fadvise", scope: !271, file: !271, line: 39, type: !1574, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !270, retainedNodes: !1610)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{null, !1576, !1557}
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !104, line: 7, baseType: !1578)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !106, line: 49, size: 1728, elements: !1579)
!1579 = !{!1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1578, file: !106, line: 51, baseType: !31, size: 32)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1578, file: !106, line: 54, baseType: !22, size: 64, offset: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1578, file: !106, line: 55, baseType: !22, size: 64, offset: 128)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1578, file: !106, line: 56, baseType: !22, size: 64, offset: 192)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1578, file: !106, line: 57, baseType: !22, size: 64, offset: 256)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1578, file: !106, line: 58, baseType: !22, size: 64, offset: 320)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1578, file: !106, line: 59, baseType: !22, size: 64, offset: 384)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1578, file: !106, line: 60, baseType: !22, size: 64, offset: 448)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1578, file: !106, line: 61, baseType: !22, size: 64, offset: 512)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1578, file: !106, line: 64, baseType: !22, size: 64, offset: 576)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1578, file: !106, line: 65, baseType: !22, size: 64, offset: 640)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1578, file: !106, line: 66, baseType: !22, size: 64, offset: 704)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1578, file: !106, line: 68, baseType: !121, size: 64, offset: 768)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1578, file: !106, line: 70, baseType: !1594, size: 64, offset: 832)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1578, file: !106, line: 72, baseType: !31, size: 32, offset: 896)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1578, file: !106, line: 73, baseType: !31, size: 32, offset: 928)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1578, file: !106, line: 74, baseType: !128, size: 64, offset: 960)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1578, file: !106, line: 77, baseType: !32, size: 16, offset: 1024)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1578, file: !106, line: 78, baseType: !132, size: 8, offset: 1040)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1578, file: !106, line: 79, baseType: !134, size: 8, offset: 1048)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1578, file: !106, line: 81, baseType: !138, size: 64, offset: 1088)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1578, file: !106, line: 89, baseType: !141, size: 64, offset: 1152)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1578, file: !106, line: 91, baseType: !143, size: 64, offset: 1216)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1578, file: !106, line: 92, baseType: !146, size: 64, offset: 1280)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1578, file: !106, line: 93, baseType: !1594, size: 64, offset: 1344)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1578, file: !106, line: 94, baseType: !24, size: 64, offset: 1408)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1578, file: !106, line: 95, baseType: !33, size: 64, offset: 1472)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1578, file: !106, line: 96, baseType: !31, size: 32, offset: 1536)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1578, file: !106, line: 98, baseType: !153, size: 160, offset: 1568)
!1610 = !{!1611, !1612}
!1611 = !DILocalVariable(name: "fp", arg: 1, scope: !1573, file: !271, line: 39, type: !1576)
!1612 = !DILocalVariable(name: "advice", arg: 2, scope: !1573, file: !271, line: 39, type: !1557)
!1613 = !DILocation(line: 0, scope: !1573)
!1614 = !DILocation(line: 41, column: 7, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1573, file: !271, line: 41, column: 7)
!1616 = !DILocation(line: 41, column: 7, scope: !1573)
!1617 = !DILocation(line: 42, column: 15, scope: !1615)
!1618 = !DILocation(line: 0, scope: !1553, inlinedAt: !1619)
!1619 = distinct !DILocation(line: 42, column: 5, scope: !1615)
!1620 = !DILocation(line: 34, column: 3, scope: !1564, inlinedAt: !1619)
!1621 = !DILocation(line: 0, scope: !1564, inlinedAt: !1619)
!1622 = !DILocation(line: 42, column: 5, scope: !1615)
!1623 = !DILocation(line: 43, column: 1, scope: !1573)
!1624 = !DISubprogram(name: "fileno", scope: !795, file: !795, line: 785, type: !1625, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{!31, !1594}
!1627 = distinct !DISubprogram(name: "set_program_name", scope: !207, file: !207, line: 39, type: !740, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !1628)
!1628 = !{!1629, !1630, !1631}
!1629 = !DILocalVariable(name: "argv0", arg: 1, scope: !1627, file: !207, line: 39, type: !35)
!1630 = !DILocalVariable(name: "slash", scope: !1627, file: !207, line: 46, type: !35)
!1631 = !DILocalVariable(name: "base", scope: !1627, file: !207, line: 47, type: !35)
!1632 = !DILocation(line: 0, scope: !1627)
!1633 = !DILocation(line: 51, column: 13, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1627, file: !207, line: 51, column: 7)
!1635 = !DILocation(line: 51, column: 7, scope: !1627)
!1636 = !DILocation(line: 55, column: 14, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1634, file: !207, line: 52, column: 5)
!1638 = !DILocation(line: 54, column: 7, scope: !1637)
!1639 = !DILocation(line: 56, column: 7, scope: !1637)
!1640 = !DILocation(line: 59, column: 11, scope: !1627)
!1641 = !DILocation(line: 60, column: 17, scope: !1627)
!1642 = !DILocation(line: 60, column: 11, scope: !1627)
!1643 = !DILocation(line: 61, column: 12, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1627, file: !207, line: 61, column: 7)
!1645 = !DILocation(line: 61, column: 20, scope: !1644)
!1646 = !DILocation(line: 61, column: 25, scope: !1644)
!1647 = !DILocation(line: 61, column: 42, scope: !1644)
!1648 = !DILocation(line: 61, column: 28, scope: !1644)
!1649 = !DILocation(line: 61, column: 61, scope: !1644)
!1650 = !DILocation(line: 61, column: 7, scope: !1627)
!1651 = !DILocation(line: 64, column: 11, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !207, line: 64, column: 11)
!1653 = distinct !DILexicalBlock(scope: !1644, file: !207, line: 62, column: 5)
!1654 = !DILocation(line: 64, column: 36, scope: !1652)
!1655 = !DILocation(line: 64, column: 11, scope: !1653)
!1656 = !DILocation(line: 66, column: 24, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1652, file: !207, line: 65, column: 9)
!1658 = !DILocation(line: 70, column: 41, scope: !1657)
!1659 = !DILocation(line: 72, column: 9, scope: !1657)
!1660 = !DILocation(line: 84, column: 16, scope: !1627)
!1661 = !DILocation(line: 90, column: 27, scope: !1627)
!1662 = !DILocation(line: 92, column: 1, scope: !1627)
!1663 = distinct !DISubprogram(name: "clone_quoting_options", scope: !213, file: !213, line: 122, type: !1664, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !1667)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!1666, !1666}
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!1667 = !{!1668, !1669, !1670}
!1668 = !DILocalVariable(name: "o", arg: 1, scope: !1663, file: !213, line: 122, type: !1666)
!1669 = !DILocalVariable(name: "e", scope: !1663, file: !213, line: 124, type: !31)
!1670 = !DILocalVariable(name: "p", scope: !1663, file: !213, line: 125, type: !1666)
!1671 = !DILocation(line: 0, scope: !1663)
!1672 = !DILocation(line: 124, column: 11, scope: !1663)
!1673 = !DILocation(line: 125, column: 40, scope: !1663)
!1674 = !DILocation(line: 125, column: 31, scope: !1663)
!1675 = !DILocation(line: 127, column: 9, scope: !1663)
!1676 = !DILocation(line: 128, column: 3, scope: !1663)
!1677 = distinct !DISubprogram(name: "get_quoting_style", scope: !213, file: !213, line: 133, type: !1678, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !1682)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!57, !1680}
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !230)
!1682 = !{!1683}
!1683 = !DILocalVariable(name: "o", arg: 1, scope: !1677, file: !213, line: 133, type: !1680)
!1684 = !DILocation(line: 0, scope: !1677)
!1685 = !DILocation(line: 135, column: 11, scope: !1677)
!1686 = !DILocation(line: 135, column: 46, scope: !1677)
!1687 = !{!1688, !720, i64 0}
!1688 = !{!"quoting_options", !720, i64 0, !891, i64 4, !720, i64 8, !719, i64 40, !719, i64 48}
!1689 = !DILocation(line: 135, column: 3, scope: !1677)
!1690 = distinct !DISubprogram(name: "set_quoting_style", scope: !213, file: !213, line: 141, type: !1691, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !1693)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{null, !1666, !57}
!1693 = !{!1694, !1695}
!1694 = !DILocalVariable(name: "o", arg: 1, scope: !1690, file: !213, line: 141, type: !1666)
!1695 = !DILocalVariable(name: "s", arg: 2, scope: !1690, file: !213, line: 141, type: !57)
!1696 = !DILocation(line: 0, scope: !1690)
!1697 = !DILocation(line: 143, column: 4, scope: !1690)
!1698 = !DILocation(line: 143, column: 39, scope: !1690)
!1699 = !DILocation(line: 143, column: 45, scope: !1690)
!1700 = !DILocation(line: 144, column: 1, scope: !1690)
!1701 = distinct !DISubprogram(name: "set_char_quoting", scope: !213, file: !213, line: 152, type: !1702, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !1704)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!31, !1666, !23, !31}
!1704 = !{!1705, !1706, !1707, !1708, !1709, !1711, !1712}
!1705 = !DILocalVariable(name: "o", arg: 1, scope: !1701, file: !213, line: 152, type: !1666)
!1706 = !DILocalVariable(name: "c", arg: 2, scope: !1701, file: !213, line: 152, type: !23)
!1707 = !DILocalVariable(name: "i", arg: 3, scope: !1701, file: !213, line: 152, type: !31)
!1708 = !DILocalVariable(name: "uc", scope: !1701, file: !213, line: 154, type: !38)
!1709 = !DILocalVariable(name: "p", scope: !1701, file: !213, line: 155, type: !1710)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1711 = !DILocalVariable(name: "shift", scope: !1701, file: !213, line: 157, type: !31)
!1712 = !DILocalVariable(name: "r", scope: !1701, file: !213, line: 158, type: !31)
!1713 = !DILocation(line: 0, scope: !1701)
!1714 = !DILocation(line: 156, column: 6, scope: !1701)
!1715 = !DILocation(line: 156, column: 62, scope: !1701)
!1716 = !DILocation(line: 156, column: 57, scope: !1701)
!1717 = !DILocation(line: 157, column: 15, scope: !1701)
!1718 = !DILocation(line: 158, column: 12, scope: !1701)
!1719 = !DILocation(line: 158, column: 15, scope: !1701)
!1720 = !DILocation(line: 158, column: 25, scope: !1701)
!1721 = !DILocation(line: 159, column: 13, scope: !1701)
!1722 = !DILocation(line: 159, column: 18, scope: !1701)
!1723 = !DILocation(line: 159, column: 23, scope: !1701)
!1724 = !DILocation(line: 159, column: 6, scope: !1701)
!1725 = !DILocation(line: 160, column: 3, scope: !1701)
!1726 = distinct !DISubprogram(name: "set_quoting_flags", scope: !213, file: !213, line: 168, type: !1727, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !1729)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{!31, !1666, !31}
!1729 = !{!1730, !1731, !1732}
!1730 = !DILocalVariable(name: "o", arg: 1, scope: !1726, file: !213, line: 168, type: !1666)
!1731 = !DILocalVariable(name: "i", arg: 2, scope: !1726, file: !213, line: 168, type: !31)
!1732 = !DILocalVariable(name: "r", scope: !1726, file: !213, line: 170, type: !31)
!1733 = !DILocation(line: 0, scope: !1726)
!1734 = !DILocation(line: 171, column: 8, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1726, file: !213, line: 171, column: 7)
!1736 = !DILocation(line: 171, column: 7, scope: !1726)
!1737 = !DILocation(line: 173, column: 10, scope: !1726)
!1738 = !{!1688, !891, i64 4}
!1739 = !DILocation(line: 174, column: 12, scope: !1726)
!1740 = !DILocation(line: 175, column: 3, scope: !1726)
!1741 = distinct !DISubprogram(name: "set_custom_quoting", scope: !213, file: !213, line: 179, type: !1742, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !1744)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{null, !1666, !35, !35}
!1744 = !{!1745, !1746, !1747}
!1745 = !DILocalVariable(name: "o", arg: 1, scope: !1741, file: !213, line: 179, type: !1666)
!1746 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1741, file: !213, line: 180, type: !35)
!1747 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1741, file: !213, line: 180, type: !35)
!1748 = !DILocation(line: 0, scope: !1741)
!1749 = !DILocation(line: 182, column: 8, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1741, file: !213, line: 182, column: 7)
!1751 = !DILocation(line: 182, column: 7, scope: !1741)
!1752 = !DILocation(line: 184, column: 6, scope: !1741)
!1753 = !DILocation(line: 184, column: 12, scope: !1741)
!1754 = !DILocation(line: 185, column: 8, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1741, file: !213, line: 185, column: 7)
!1756 = !DILocation(line: 185, column: 19, scope: !1755)
!1757 = !DILocation(line: 186, column: 5, scope: !1755)
!1758 = !DILocation(line: 187, column: 6, scope: !1741)
!1759 = !DILocation(line: 187, column: 17, scope: !1741)
!1760 = !{!1688, !719, i64 40}
!1761 = !DILocation(line: 188, column: 6, scope: !1741)
!1762 = !DILocation(line: 188, column: 18, scope: !1741)
!1763 = !{!1688, !719, i64 48}
!1764 = !DILocation(line: 189, column: 1, scope: !1741)
!1765 = distinct !DISubprogram(name: "quotearg_buffer", scope: !213, file: !213, line: 784, type: !1766, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !1768)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{!33, !22, !33, !35, !33, !1680}
!1768 = !{!1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776}
!1769 = !DILocalVariable(name: "buffer", arg: 1, scope: !1765, file: !213, line: 784, type: !22)
!1770 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1765, file: !213, line: 784, type: !33)
!1771 = !DILocalVariable(name: "arg", arg: 3, scope: !1765, file: !213, line: 785, type: !35)
!1772 = !DILocalVariable(name: "argsize", arg: 4, scope: !1765, file: !213, line: 785, type: !33)
!1773 = !DILocalVariable(name: "o", arg: 5, scope: !1765, file: !213, line: 786, type: !1680)
!1774 = !DILocalVariable(name: "p", scope: !1765, file: !213, line: 788, type: !1680)
!1775 = !DILocalVariable(name: "e", scope: !1765, file: !213, line: 789, type: !31)
!1776 = !DILocalVariable(name: "r", scope: !1765, file: !213, line: 790, type: !33)
!1777 = !DILocation(line: 0, scope: !1765)
!1778 = !DILocation(line: 788, column: 37, scope: !1765)
!1779 = !DILocation(line: 789, column: 11, scope: !1765)
!1780 = !DILocation(line: 791, column: 43, scope: !1765)
!1781 = !DILocation(line: 791, column: 53, scope: !1765)
!1782 = !DILocation(line: 791, column: 60, scope: !1765)
!1783 = !DILocation(line: 792, column: 43, scope: !1765)
!1784 = !DILocation(line: 792, column: 58, scope: !1765)
!1785 = !DILocation(line: 790, column: 14, scope: !1765)
!1786 = !DILocation(line: 793, column: 9, scope: !1765)
!1787 = !DILocation(line: 794, column: 3, scope: !1765)
!1788 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !213, file: !213, line: 256, type: !1789, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !1793)
!1789 = !DISubroutineType(types: !1790)
!1790 = !{!33, !22, !33, !35, !33, !57, !31, !1791, !35, !35}
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1793 = !{!1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1818, !1819, !1820, !1821, !1822, !1825, !1826, !1844, !1847, !1848, !1855, !1858, !1859, !1860, !1861, !1862, !1863}
!1794 = !DILocalVariable(name: "buffer", arg: 1, scope: !1788, file: !213, line: 256, type: !22)
!1795 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1788, file: !213, line: 256, type: !33)
!1796 = !DILocalVariable(name: "arg", arg: 3, scope: !1788, file: !213, line: 257, type: !35)
!1797 = !DILocalVariable(name: "argsize", arg: 4, scope: !1788, file: !213, line: 257, type: !33)
!1798 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1788, file: !213, line: 258, type: !57)
!1799 = !DILocalVariable(name: "flags", arg: 6, scope: !1788, file: !213, line: 258, type: !31)
!1800 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1788, file: !213, line: 259, type: !1791)
!1801 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1788, file: !213, line: 260, type: !35)
!1802 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1788, file: !213, line: 261, type: !35)
!1803 = !DILocalVariable(name: "i", scope: !1788, file: !213, line: 263, type: !33)
!1804 = !DILocalVariable(name: "len", scope: !1788, file: !213, line: 264, type: !33)
!1805 = !DILocalVariable(name: "orig_buffersize", scope: !1788, file: !213, line: 265, type: !33)
!1806 = !DILocalVariable(name: "quote_string", scope: !1788, file: !213, line: 266, type: !35)
!1807 = !DILocalVariable(name: "quote_string_len", scope: !1788, file: !213, line: 267, type: !33)
!1808 = !DILocalVariable(name: "backslash_escapes", scope: !1788, file: !213, line: 268, type: !175)
!1809 = !DILocalVariable(name: "unibyte_locale", scope: !1788, file: !213, line: 269, type: !175)
!1810 = !DILocalVariable(name: "elide_outer_quotes", scope: !1788, file: !213, line: 270, type: !175)
!1811 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1788, file: !213, line: 271, type: !175)
!1812 = !DILocalVariable(name: "encountered_single_quote", scope: !1788, file: !213, line: 272, type: !175)
!1813 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1788, file: !213, line: 273, type: !175)
!1814 = !DILocalVariable(name: "c", scope: !1815, file: !213, line: 402, type: !38)
!1815 = distinct !DILexicalBlock(scope: !1816, file: !213, line: 401, column: 5)
!1816 = distinct !DILexicalBlock(scope: !1817, file: !213, line: 400, column: 3)
!1817 = distinct !DILexicalBlock(scope: !1788, file: !213, line: 400, column: 3)
!1818 = !DILocalVariable(name: "esc", scope: !1815, file: !213, line: 403, type: !38)
!1819 = !DILocalVariable(name: "is_right_quote", scope: !1815, file: !213, line: 404, type: !175)
!1820 = !DILocalVariable(name: "escaping", scope: !1815, file: !213, line: 405, type: !175)
!1821 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1815, file: !213, line: 406, type: !175)
!1822 = !DILocalVariable(name: "m", scope: !1823, file: !213, line: 610, type: !33)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !213, line: 608, column: 11)
!1824 = distinct !DILexicalBlock(scope: !1815, file: !213, line: 426, column: 9)
!1825 = !DILocalVariable(name: "printable", scope: !1823, file: !213, line: 612, type: !175)
!1826 = !DILocalVariable(name: "mbstate", scope: !1827, file: !213, line: 621, type: !1829)
!1827 = distinct !DILexicalBlock(scope: !1828, file: !213, line: 620, column: 15)
!1828 = distinct !DILexicalBlock(scope: !1823, file: !213, line: 614, column: 17)
!1829 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1830, line: 6, baseType: !1831)
!1830 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1831 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1832, line: 21, baseType: !1833)
!1832 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1832, line: 13, size: 64, elements: !1834)
!1834 = !{!1835, !1836}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1833, file: !1832, line: 15, baseType: !31, size: 32)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1833, file: !1832, line: 20, baseType: !1837, size: 32, offset: 32)
!1837 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1833, file: !1832, line: 16, size: 32, elements: !1838)
!1838 = !{!1839, !1840}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1837, file: !1832, line: 18, baseType: !7, size: 32)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1837, file: !1832, line: 19, baseType: !1841, size: 32)
!1841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 32, elements: !1842)
!1842 = !{!1843}
!1843 = !DISubrange(count: 4)
!1844 = !DILocalVariable(name: "w", scope: !1845, file: !213, line: 631, type: !1846)
!1845 = distinct !DILexicalBlock(scope: !1827, file: !213, line: 630, column: 19)
!1846 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !34, line: 74, baseType: !31)
!1847 = !DILocalVariable(name: "bytes", scope: !1845, file: !213, line: 632, type: !33)
!1848 = !DILocalVariable(name: "j", scope: !1849, file: !213, line: 657, type: !33)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !213, line: 656, column: 27)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !213, line: 654, column: 29)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !213, line: 649, column: 23)
!1852 = distinct !DILexicalBlock(scope: !1853, file: !213, line: 641, column: 30)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !213, line: 636, column: 30)
!1854 = distinct !DILexicalBlock(scope: !1845, file: !213, line: 634, column: 25)
!1855 = !DILocalVariable(name: "ilim", scope: !1856, file: !213, line: 684, type: !33)
!1856 = distinct !DILexicalBlock(scope: !1857, file: !213, line: 681, column: 15)
!1857 = distinct !DILexicalBlock(scope: !1823, file: !213, line: 680, column: 17)
!1858 = !DILabel(scope: !1788, name: "process_input", file: !213, line: 314)
!1859 = !DILabel(scope: !1824, name: "c_and_shell_escape", file: !213, line: 512)
!1860 = !DILabel(scope: !1824, name: "c_escape", file: !213, line: 517)
!1861 = !DILabel(scope: !1815, name: "store_escape", file: !213, line: 719)
!1862 = !DILabel(scope: !1815, name: "store_c", file: !213, line: 722)
!1863 = !DILabel(scope: !1788, name: "force_outer_quoting_style", file: !213, line: 763)
!1864 = !DILocation(line: 0, scope: !1788)
!1865 = !DILocation(line: 269, column: 25, scope: !1788)
!1866 = !DILocation(line: 269, column: 36, scope: !1788)
!1867 = !DILocation(line: 270, column: 8, scope: !1788)
!1868 = !DILocation(line: 273, column: 3, scope: !1788)
!1869 = !DILocation(line: 265, column: 10, scope: !1788)
!1870 = !DILocation(line: 266, column: 15, scope: !1788)
!1871 = !DILocation(line: 267, column: 10, scope: !1788)
!1872 = !DILocation(line: 268, column: 8, scope: !1788)
!1873 = !DILocation(line: 271, column: 8, scope: !1788)
!1874 = !DILocation(line: 272, column: 8, scope: !1788)
!1875 = !DILocation(line: 273, column: 8, scope: !1788)
!1876 = !DILocation(line: 314, column: 2, scope: !1788)
!1877 = !DILocation(line: 316, column: 3, scope: !1788)
!1878 = !DILocation(line: 323, column: 11, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1788, file: !213, line: 317, column: 5)
!1880 = !DILocation(line: 323, column: 12, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1879, file: !213, line: 323, column: 11)
!1882 = !DILocation(line: 324, column: 9, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !213, line: 324, column: 9)
!1884 = distinct !DILexicalBlock(scope: !1881, file: !213, line: 324, column: 9)
!1885 = !DILocation(line: 324, column: 9, scope: !1884)
!1886 = !DILocation(line: 362, column: 26, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !213, line: 340, column: 11)
!1888 = distinct !DILexicalBlock(scope: !1889, file: !213, line: 339, column: 13)
!1889 = distinct !DILexicalBlock(scope: !1879, file: !213, line: 338, column: 7)
!1890 = !DILocation(line: 363, column: 27, scope: !1887)
!1891 = !DILocation(line: 364, column: 11, scope: !1887)
!1892 = !DILocation(line: 365, column: 14, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1889, file: !213, line: 365, column: 13)
!1894 = !DILocation(line: 365, column: 13, scope: !1889)
!1895 = !DILocation(line: 366, column: 43, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !213, line: 366, column: 11)
!1897 = distinct !DILexicalBlock(scope: !1893, file: !213, line: 366, column: 11)
!1898 = !DILocation(line: 366, column: 11, scope: !1897)
!1899 = !DILocation(line: 367, column: 13, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !213, line: 367, column: 13)
!1901 = distinct !DILexicalBlock(scope: !1896, file: !213, line: 367, column: 13)
!1902 = !DILocation(line: 367, column: 13, scope: !1901)
!1903 = !DILocation(line: 366, column: 70, scope: !1896)
!1904 = distinct !{!1904, !1898, !1905, !770}
!1905 = !DILocation(line: 367, column: 13, scope: !1897)
!1906 = !DILocation(line: 264, column: 10, scope: !1788)
!1907 = !DILocation(line: 370, column: 28, scope: !1889)
!1908 = !DILocation(line: 372, column: 7, scope: !1879)
!1909 = !DILocation(line: 376, column: 7, scope: !1879)
!1910 = !DILocation(line: 379, column: 7, scope: !1879)
!1911 = !DILocation(line: 381, column: 12, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1879, file: !213, line: 381, column: 11)
!1913 = !DILocation(line: 381, column: 11, scope: !1879)
!1914 = !DILocation(line: 386, column: 12, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1879, file: !213, line: 386, column: 11)
!1916 = !DILocation(line: 386, column: 11, scope: !1879)
!1917 = !DILocation(line: 387, column: 9, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1919, file: !213, line: 387, column: 9)
!1919 = distinct !DILexicalBlock(scope: !1915, file: !213, line: 387, column: 9)
!1920 = !DILocation(line: 387, column: 9, scope: !1919)
!1921 = !DILocation(line: 394, column: 7, scope: !1879)
!1922 = !DILocation(line: 397, column: 7, scope: !1879)
!1923 = !DILocation(line: 400, column: 8, scope: !1817)
!1924 = !DILocation(line: 0, scope: !1817)
!1925 = !DILocation(line: 400, column: 27, scope: !1816)
!1926 = !DILocation(line: 400, column: 19, scope: !1816)
!1927 = !DILocation(line: 400, column: 41, scope: !1816)
!1928 = !DILocation(line: 400, column: 48, scope: !1816)
!1929 = !DILocation(line: 400, column: 3, scope: !1817)
!1930 = !DILocation(line: 400, column: 60, scope: !1816)
!1931 = !DILocation(line: 0, scope: !1815)
!1932 = !DILocation(line: 409, column: 11, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1815, file: !213, line: 408, column: 11)
!1934 = !DILocation(line: 411, column: 17, scope: !1933)
!1935 = !DILocation(line: 412, column: 39, scope: !1933)
!1936 = !DILocation(line: 416, column: 32, scope: !1933)
!1937 = !DILocation(line: 412, column: 19, scope: !1933)
!1938 = !DILocation(line: 412, column: 15, scope: !1933)
!1939 = !DILocation(line: 417, column: 11, scope: !1933)
!1940 = !DILocation(line: 417, column: 26, scope: !1933)
!1941 = !DILocation(line: 417, column: 14, scope: !1933)
!1942 = !DILocation(line: 417, column: 63, scope: !1933)
!1943 = !DILocation(line: 408, column: 11, scope: !1815)
!1944 = !DILocation(line: 424, column: 11, scope: !1815)
!1945 = !DILocation(line: 425, column: 7, scope: !1815)
!1946 = !DILocation(line: 428, column: 15, scope: !1824)
!1947 = !DILocation(line: 430, column: 15, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1949, file: !213, line: 430, column: 15)
!1949 = distinct !DILexicalBlock(scope: !1950, file: !213, line: 429, column: 13)
!1950 = distinct !DILexicalBlock(scope: !1824, file: !213, line: 428, column: 15)
!1951 = !DILocation(line: 430, column: 15, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1948, file: !213, line: 430, column: 15)
!1953 = !DILocation(line: 430, column: 15, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !213, line: 430, column: 15)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !213, line: 430, column: 15)
!1956 = distinct !DILexicalBlock(scope: !1952, file: !213, line: 430, column: 15)
!1957 = !DILocation(line: 430, column: 15, scope: !1955)
!1958 = !DILocation(line: 430, column: 15, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !213, line: 430, column: 15)
!1960 = distinct !DILexicalBlock(scope: !1956, file: !213, line: 430, column: 15)
!1961 = !DILocation(line: 430, column: 15, scope: !1960)
!1962 = !DILocation(line: 430, column: 15, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !213, line: 430, column: 15)
!1964 = distinct !DILexicalBlock(scope: !1956, file: !213, line: 430, column: 15)
!1965 = !DILocation(line: 430, column: 15, scope: !1964)
!1966 = !DILocation(line: 430, column: 15, scope: !1956)
!1967 = !DILocation(line: 430, column: 15, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !213, line: 430, column: 15)
!1969 = distinct !DILexicalBlock(scope: !1948, file: !213, line: 430, column: 15)
!1970 = !DILocation(line: 430, column: 15, scope: !1969)
!1971 = !DILocation(line: 438, column: 19, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1949, file: !213, line: 437, column: 19)
!1973 = !DILocation(line: 438, column: 48, scope: !1972)
!1974 = !DILocation(line: 438, column: 59, scope: !1972)
!1975 = !DILocation(line: 440, column: 19, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1977, file: !213, line: 440, column: 19)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !213, line: 440, column: 19)
!1978 = distinct !DILexicalBlock(scope: !1972, file: !213, line: 439, column: 17)
!1979 = !DILocation(line: 440, column: 19, scope: !1977)
!1980 = !DILocation(line: 441, column: 19, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1982, file: !213, line: 441, column: 19)
!1982 = distinct !DILexicalBlock(scope: !1978, file: !213, line: 441, column: 19)
!1983 = !DILocation(line: 441, column: 19, scope: !1982)
!1984 = !DILocation(line: 442, column: 17, scope: !1978)
!1985 = !DILocation(line: 449, column: 20, scope: !1950)
!1986 = !DILocation(line: 454, column: 11, scope: !1824)
!1987 = !DILocation(line: 457, column: 19, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1824, file: !213, line: 455, column: 13)
!1989 = !DILocation(line: 463, column: 19, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1988, file: !213, line: 462, column: 19)
!1991 = !DILocation(line: 463, column: 47, scope: !1990)
!1992 = !DILocation(line: 463, column: 41, scope: !1990)
!1993 = !DILocation(line: 463, column: 52, scope: !1990)
!1994 = !DILocation(line: 462, column: 19, scope: !1988)
!1995 = !DILocation(line: 464, column: 25, scope: !1990)
!1996 = !DILocation(line: 464, column: 17, scope: !1990)
!1997 = !DILocation(line: 471, column: 25, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1990, file: !213, line: 465, column: 19)
!1999 = !DILocation(line: 475, column: 21, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !2001, file: !213, line: 475, column: 21)
!2001 = distinct !DILexicalBlock(scope: !1998, file: !213, line: 475, column: 21)
!2002 = !DILocation(line: 475, column: 21, scope: !2001)
!2003 = !DILocation(line: 476, column: 21, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !213, line: 476, column: 21)
!2005 = distinct !DILexicalBlock(scope: !1998, file: !213, line: 476, column: 21)
!2006 = !DILocation(line: 476, column: 21, scope: !2005)
!2007 = !DILocation(line: 477, column: 21, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !213, line: 477, column: 21)
!2009 = distinct !DILexicalBlock(scope: !1998, file: !213, line: 477, column: 21)
!2010 = !DILocation(line: 477, column: 21, scope: !2009)
!2011 = !DILocation(line: 478, column: 21, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !213, line: 478, column: 21)
!2013 = distinct !DILexicalBlock(scope: !1998, file: !213, line: 478, column: 21)
!2014 = !DILocation(line: 478, column: 21, scope: !2013)
!2015 = !DILocation(line: 479, column: 21, scope: !1998)
!2016 = !DILocation(line: 492, column: 31, scope: !1824)
!2017 = !DILocation(line: 493, column: 31, scope: !1824)
!2018 = !DILocation(line: 495, column: 31, scope: !1824)
!2019 = !DILocation(line: 496, column: 31, scope: !1824)
!2020 = !DILocation(line: 497, column: 31, scope: !1824)
!2021 = !DILocation(line: 500, column: 15, scope: !1824)
!2022 = !DILocation(line: 502, column: 19, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2024, file: !213, line: 501, column: 13)
!2024 = distinct !DILexicalBlock(scope: !1824, file: !213, line: 500, column: 15)
!2025 = !DILocation(line: 509, column: 33, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !1824, file: !213, line: 509, column: 15)
!2027 = !DILocation(line: 0, scope: !1824)
!2028 = !DILocation(line: 512, column: 9, scope: !1824)
!2029 = !DILocation(line: 514, column: 15, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !1824, file: !213, line: 513, column: 15)
!2031 = !DILocation(line: 517, column: 9, scope: !1824)
!2032 = !DILocation(line: 518, column: 15, scope: !1824)
!2033 = !DILocation(line: 526, column: 15, scope: !1824)
!2034 = !DILocation(line: 526, column: 40, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !1824, file: !213, line: 526, column: 15)
!2036 = !DILocation(line: 526, column: 47, scope: !2035)
!2037 = !DILocation(line: 526, column: 18, scope: !2035)
!2038 = !DILocation(line: 530, column: 17, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !1824, file: !213, line: 530, column: 15)
!2040 = !DILocation(line: 530, column: 15, scope: !1824)
!2041 = !DILocation(line: 535, column: 11, scope: !1824)
!2042 = !DILocation(line: 549, column: 15, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !1824, file: !213, line: 548, column: 15)
!2044 = !DILocation(line: 556, column: 15, scope: !1824)
!2045 = !DILocation(line: 558, column: 19, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !213, line: 557, column: 13)
!2047 = distinct !DILexicalBlock(scope: !1824, file: !213, line: 556, column: 15)
!2048 = !DILocation(line: 561, column: 19, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2046, file: !213, line: 561, column: 19)
!2050 = !DILocation(line: 561, column: 30, scope: !2049)
!2051 = !DILocation(line: 570, column: 15, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !213, line: 570, column: 15)
!2053 = distinct !DILexicalBlock(scope: !2046, file: !213, line: 570, column: 15)
!2054 = !DILocation(line: 570, column: 15, scope: !2053)
!2055 = !DILocation(line: 571, column: 15, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !213, line: 571, column: 15)
!2057 = distinct !DILexicalBlock(scope: !2046, file: !213, line: 571, column: 15)
!2058 = !DILocation(line: 571, column: 15, scope: !2057)
!2059 = !DILocation(line: 572, column: 15, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2061, file: !213, line: 572, column: 15)
!2061 = distinct !DILexicalBlock(scope: !2046, file: !213, line: 572, column: 15)
!2062 = !DILocation(line: 572, column: 15, scope: !2061)
!2063 = !DILocation(line: 574, column: 13, scope: !2046)
!2064 = !DILocation(line: 614, column: 17, scope: !1823)
!2065 = !DILocation(line: 0, scope: !1823)
!2066 = !DILocation(line: 617, column: 29, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !1828, file: !213, line: 615, column: 15)
!2068 = !DILocation(line: 617, column: 27, scope: !2067)
!2069 = !DILocation(line: 678, column: 40, scope: !1823)
!2070 = !DILocation(line: 680, column: 23, scope: !1857)
!2071 = !DILocation(line: 621, column: 17, scope: !1827)
!2072 = !DILocation(line: 621, column: 27, scope: !1827)
!2073 = !DILocalVariable(name: "__dest", arg: 1, scope: !2074, file: !2075, line: 57, type: !24)
!2074 = distinct !DISubprogram(name: "memset", scope: !2075, file: !2075, line: 57, type: !2076, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2078)
!2075 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!2076 = !DISubroutineType(types: !2077)
!2077 = !{!24, !24, !31, !33}
!2078 = !{!2073, !2079, !2080}
!2079 = !DILocalVariable(name: "__ch", arg: 2, scope: !2074, file: !2075, line: 57, type: !31)
!2080 = !DILocalVariable(name: "__len", arg: 3, scope: !2074, file: !2075, line: 57, type: !33)
!2081 = !DILocation(line: 0, scope: !2074, inlinedAt: !2082)
!2082 = distinct !DILocation(line: 622, column: 17, scope: !1827)
!2083 = !DILocation(line: 59, column: 10, scope: !2074, inlinedAt: !2082)
!2084 = !DILocation(line: 626, column: 29, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !1827, file: !213, line: 626, column: 21)
!2086 = !DILocation(line: 626, column: 21, scope: !1827)
!2087 = !DILocation(line: 627, column: 29, scope: !2085)
!2088 = !DILocation(line: 627, column: 19, scope: !2085)
!2089 = !DILocation(line: 629, column: 17, scope: !1827)
!2090 = !DILocation(line: 624, column: 19, scope: !1827)
!2091 = !DILocation(line: 625, column: 27, scope: !1827)
!2092 = !DILocation(line: 631, column: 21, scope: !1845)
!2093 = !DILocation(line: 632, column: 56, scope: !1845)
!2094 = !DILocation(line: 632, column: 50, scope: !1845)
!2095 = !DILocation(line: 633, column: 53, scope: !1845)
!2096 = !DILocation(line: 0, scope: !1845)
!2097 = !DILocation(line: 632, column: 36, scope: !1845)
!2098 = !DILocation(line: 634, column: 25, scope: !1845)
!2099 = !DILocation(line: 644, column: 38, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !1852, file: !213, line: 642, column: 23)
!2101 = !DILocation(line: 644, column: 48, scope: !2100)
!2102 = !DILocation(line: 644, column: 25, scope: !2100)
!2103 = !DILocation(line: 644, column: 51, scope: !2100)
!2104 = !DILocation(line: 645, column: 28, scope: !2100)
!2105 = !DILocation(line: 644, column: 34, scope: !2100)
!2106 = distinct !{!2106, !2102, !2104, !770}
!2107 = !DILocation(line: 655, column: 29, scope: !1850)
!2108 = !DILocation(line: 0, scope: !1849)
!2109 = !DILocation(line: 659, column: 49, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2111, file: !213, line: 658, column: 29)
!2111 = distinct !DILexicalBlock(scope: !1849, file: !213, line: 658, column: 29)
!2112 = !DILocation(line: 659, column: 39, scope: !2110)
!2113 = !DILocation(line: 659, column: 31, scope: !2110)
!2114 = !DILocation(line: 658, column: 53, scope: !2110)
!2115 = !DILocation(line: 658, column: 43, scope: !2110)
!2116 = !DILocation(line: 658, column: 29, scope: !2111)
!2117 = distinct !{!2117, !2116, !2118, !770}
!2118 = !DILocation(line: 667, column: 33, scope: !2111)
!2119 = !DILocation(line: 674, column: 19, scope: !1827)
!2120 = !DILocation(line: 670, column: 41, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !1851, file: !213, line: 670, column: 29)
!2122 = !DILocation(line: 670, column: 31, scope: !2121)
!2123 = !DILocation(line: 670, column: 29, scope: !1851)
!2124 = !DILocation(line: 672, column: 27, scope: !1851)
!2125 = !DILocation(line: 675, column: 26, scope: !1827)
!2126 = !DILocation(line: 675, column: 24, scope: !1827)
!2127 = !DILocation(line: 674, column: 19, scope: !1845)
!2128 = distinct !{!2128, !2089, !2129, !770}
!2129 = !DILocation(line: 675, column: 44, scope: !1827)
!2130 = !DILocation(line: 676, column: 15, scope: !1828)
!2131 = !DILocation(line: 680, column: 19, scope: !1857)
!2132 = !DILocation(line: 680, column: 45, scope: !1857)
!2133 = !DILocation(line: 684, column: 33, scope: !1856)
!2134 = !DILocation(line: 0, scope: !1856)
!2135 = !DILocation(line: 686, column: 17, scope: !1856)
!2136 = !DILocation(line: 405, column: 12, scope: !1815)
!2137 = !DILocation(line: 688, column: 43, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2139, file: !213, line: 688, column: 25)
!2139 = distinct !DILexicalBlock(scope: !2140, file: !213, line: 687, column: 19)
!2140 = distinct !DILexicalBlock(scope: !2141, file: !213, line: 686, column: 17)
!2141 = distinct !DILexicalBlock(scope: !1856, file: !213, line: 686, column: 17)
!2142 = !DILocation(line: 690, column: 25, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !213, line: 690, column: 25)
!2144 = distinct !DILexicalBlock(scope: !2138, file: !213, line: 689, column: 23)
!2145 = !DILocation(line: 690, column: 25, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2143, file: !213, line: 690, column: 25)
!2147 = !DILocation(line: 690, column: 25, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2149, file: !213, line: 690, column: 25)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !213, line: 690, column: 25)
!2150 = distinct !DILexicalBlock(scope: !2146, file: !213, line: 690, column: 25)
!2151 = !DILocation(line: 690, column: 25, scope: !2149)
!2152 = !DILocation(line: 690, column: 25, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2154, file: !213, line: 690, column: 25)
!2154 = distinct !DILexicalBlock(scope: !2150, file: !213, line: 690, column: 25)
!2155 = !DILocation(line: 690, column: 25, scope: !2154)
!2156 = !DILocation(line: 690, column: 25, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2158, file: !213, line: 690, column: 25)
!2158 = distinct !DILexicalBlock(scope: !2150, file: !213, line: 690, column: 25)
!2159 = !DILocation(line: 690, column: 25, scope: !2158)
!2160 = !DILocation(line: 690, column: 25, scope: !2150)
!2161 = !DILocation(line: 690, column: 25, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2163, file: !213, line: 690, column: 25)
!2163 = distinct !DILexicalBlock(scope: !2143, file: !213, line: 690, column: 25)
!2164 = !DILocation(line: 690, column: 25, scope: !2163)
!2165 = !DILocation(line: 691, column: 25, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2167, file: !213, line: 691, column: 25)
!2167 = distinct !DILexicalBlock(scope: !2144, file: !213, line: 691, column: 25)
!2168 = !DILocation(line: 691, column: 25, scope: !2167)
!2169 = !DILocation(line: 692, column: 25, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2171, file: !213, line: 692, column: 25)
!2171 = distinct !DILexicalBlock(scope: !2144, file: !213, line: 692, column: 25)
!2172 = !DILocation(line: 692, column: 25, scope: !2171)
!2173 = !DILocation(line: 693, column: 38, scope: !2144)
!2174 = !DILocation(line: 693, column: 33, scope: !2144)
!2175 = !DILocation(line: 694, column: 23, scope: !2144)
!2176 = !DILocation(line: 695, column: 30, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2138, file: !213, line: 695, column: 30)
!2178 = !DILocation(line: 695, column: 30, scope: !2138)
!2179 = !DILocation(line: 697, column: 25, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !213, line: 697, column: 25)
!2181 = distinct !DILexicalBlock(scope: !2182, file: !213, line: 697, column: 25)
!2182 = distinct !DILexicalBlock(scope: !2177, file: !213, line: 696, column: 23)
!2183 = !DILocation(line: 697, column: 25, scope: !2181)
!2184 = !DILocation(line: 699, column: 23, scope: !2182)
!2185 = !DILocation(line: 700, column: 35, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2139, file: !213, line: 700, column: 25)
!2187 = !DILocation(line: 700, column: 30, scope: !2186)
!2188 = !DILocation(line: 700, column: 25, scope: !2139)
!2189 = !DILocation(line: 702, column: 21, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2191, file: !213, line: 702, column: 21)
!2191 = distinct !DILexicalBlock(scope: !2139, file: !213, line: 702, column: 21)
!2192 = !DILocation(line: 702, column: 21, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2194, file: !213, line: 702, column: 21)
!2194 = distinct !DILexicalBlock(scope: !2195, file: !213, line: 702, column: 21)
!2195 = distinct !DILexicalBlock(scope: !2190, file: !213, line: 702, column: 21)
!2196 = !DILocation(line: 702, column: 21, scope: !2194)
!2197 = !DILocation(line: 702, column: 21, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !213, line: 702, column: 21)
!2199 = distinct !DILexicalBlock(scope: !2195, file: !213, line: 702, column: 21)
!2200 = !DILocation(line: 702, column: 21, scope: !2199)
!2201 = !DILocation(line: 702, column: 21, scope: !2195)
!2202 = !DILocation(line: 0, scope: !2139)
!2203 = !DILocation(line: 703, column: 21, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2205, file: !213, line: 703, column: 21)
!2205 = distinct !DILexicalBlock(scope: !2139, file: !213, line: 703, column: 21)
!2206 = !DILocation(line: 703, column: 21, scope: !2205)
!2207 = !DILocation(line: 704, column: 25, scope: !2139)
!2208 = !DILocation(line: 686, column: 17, scope: !2140)
!2209 = distinct !{!2209, !2210, !2211}
!2210 = !DILocation(line: 686, column: 17, scope: !2141)
!2211 = !DILocation(line: 705, column: 19, scope: !2141)
!2212 = !DILocation(line: 416, column: 30, scope: !1933)
!2213 = !DILocation(line: 712, column: 34, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !1815, file: !213, line: 712, column: 11)
!2215 = !DILocation(line: 715, column: 35, scope: !2214)
!2216 = !DILocation(line: 715, column: 17, scope: !2214)
!2217 = !DILocation(line: 715, column: 47, scope: !2214)
!2218 = !DILocation(line: 715, column: 65, scope: !2214)
!2219 = !DILocation(line: 716, column: 11, scope: !2214)
!2220 = !DILocation(line: 712, column: 11, scope: !1815)
!2221 = !DILocation(line: 400, column: 10, scope: !1817)
!2222 = !DILocation(line: 719, column: 5, scope: !1815)
!2223 = !DILocation(line: 720, column: 7, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !1815, file: !213, line: 720, column: 7)
!2225 = !DILocation(line: 720, column: 7, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2224, file: !213, line: 720, column: 7)
!2227 = !DILocation(line: 720, column: 7, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !213, line: 720, column: 7)
!2229 = distinct !DILexicalBlock(scope: !2230, file: !213, line: 720, column: 7)
!2230 = distinct !DILexicalBlock(scope: !2226, file: !213, line: 720, column: 7)
!2231 = !DILocation(line: 720, column: 7, scope: !2229)
!2232 = !DILocation(line: 720, column: 7, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2234, file: !213, line: 720, column: 7)
!2234 = distinct !DILexicalBlock(scope: !2230, file: !213, line: 720, column: 7)
!2235 = !DILocation(line: 720, column: 7, scope: !2234)
!2236 = !DILocation(line: 720, column: 7, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !213, line: 720, column: 7)
!2238 = distinct !DILexicalBlock(scope: !2230, file: !213, line: 720, column: 7)
!2239 = !DILocation(line: 720, column: 7, scope: !2238)
!2240 = !DILocation(line: 720, column: 7, scope: !2230)
!2241 = !DILocation(line: 720, column: 7, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2243, file: !213, line: 720, column: 7)
!2243 = distinct !DILexicalBlock(scope: !2224, file: !213, line: 720, column: 7)
!2244 = !DILocation(line: 720, column: 7, scope: !2243)
!2245 = !DILocation(line: 722, column: 5, scope: !1815)
!2246 = !DILocation(line: 723, column: 7, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2248, file: !213, line: 723, column: 7)
!2248 = distinct !DILexicalBlock(scope: !1815, file: !213, line: 723, column: 7)
!2249 = !DILocation(line: 424, column: 9, scope: !1815)
!2250 = !DILocation(line: 723, column: 7, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2252, file: !213, line: 723, column: 7)
!2252 = distinct !DILexicalBlock(scope: !2253, file: !213, line: 723, column: 7)
!2253 = distinct !DILexicalBlock(scope: !2247, file: !213, line: 723, column: 7)
!2254 = !DILocation(line: 723, column: 7, scope: !2252)
!2255 = !DILocation(line: 723, column: 7, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2257, file: !213, line: 723, column: 7)
!2257 = distinct !DILexicalBlock(scope: !2253, file: !213, line: 723, column: 7)
!2258 = !DILocation(line: 723, column: 7, scope: !2257)
!2259 = !DILocation(line: 723, column: 7, scope: !2253)
!2260 = !DILocation(line: 724, column: 7, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !213, line: 724, column: 7)
!2262 = distinct !DILexicalBlock(scope: !1815, file: !213, line: 724, column: 7)
!2263 = !DILocation(line: 724, column: 7, scope: !2262)
!2264 = !DILocation(line: 726, column: 13, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !1815, file: !213, line: 726, column: 11)
!2266 = !DILocation(line: 726, column: 11, scope: !1815)
!2267 = !DILocation(line: 728, column: 5, scope: !1816)
!2268 = !DILocation(line: 400, column: 75, scope: !1816)
!2269 = !DILocation(line: 400, column: 3, scope: !1816)
!2270 = distinct !{!2270, !1929, !2271, !770}
!2271 = !DILocation(line: 728, column: 5, scope: !1817)
!2272 = !DILocation(line: 730, column: 11, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !1788, file: !213, line: 730, column: 7)
!2274 = !DILocation(line: 730, column: 16, scope: !2273)
!2275 = !DILocation(line: 738, column: 51, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !1788, file: !213, line: 738, column: 7)
!2277 = !DILocation(line: 741, column: 11, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2279, file: !213, line: 741, column: 11)
!2279 = distinct !DILexicalBlock(scope: !2276, file: !213, line: 740, column: 5)
!2280 = !DILocation(line: 741, column: 11, scope: !2279)
!2281 = !DILocation(line: 742, column: 16, scope: !2278)
!2282 = !DILocation(line: 742, column: 9, scope: !2278)
!2283 = !DILocation(line: 746, column: 18, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2278, file: !213, line: 746, column: 16)
!2285 = !DILocation(line: 746, column: 29, scope: !2284)
!2286 = !DILocation(line: 755, column: 7, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !1788, file: !213, line: 755, column: 7)
!2288 = !DILocation(line: 755, column: 20, scope: !2287)
!2289 = !DILocation(line: 756, column: 12, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2291, file: !213, line: 756, column: 5)
!2291 = distinct !DILexicalBlock(scope: !2287, file: !213, line: 756, column: 5)
!2292 = !DILocation(line: 756, column: 5, scope: !2291)
!2293 = !DILocation(line: 757, column: 7, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2295, file: !213, line: 757, column: 7)
!2295 = distinct !DILexicalBlock(scope: !2290, file: !213, line: 757, column: 7)
!2296 = !DILocation(line: 757, column: 7, scope: !2295)
!2297 = !DILocation(line: 756, column: 39, scope: !2290)
!2298 = distinct !{!2298, !2292, !2299, !770}
!2299 = !DILocation(line: 757, column: 7, scope: !2291)
!2300 = !DILocation(line: 759, column: 11, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !1788, file: !213, line: 759, column: 7)
!2302 = !DILocation(line: 759, column: 7, scope: !1788)
!2303 = !DILocation(line: 760, column: 5, scope: !2301)
!2304 = !DILocation(line: 760, column: 17, scope: !2301)
!2305 = !DILocation(line: 763, column: 2, scope: !1788)
!2306 = !DILocation(line: 766, column: 51, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !1788, file: !213, line: 766, column: 7)
!2308 = !DILocation(line: 766, column: 21, scope: !2307)
!2309 = !DILocation(line: 770, column: 42, scope: !1788)
!2310 = !DILocation(line: 768, column: 10, scope: !1788)
!2311 = !DILocation(line: 768, column: 3, scope: !1788)
!2312 = !DILocation(line: 772, column: 1, scope: !1788)
!2313 = distinct !DISubprogram(name: "gettext_quote", scope: !213, file: !213, line: 207, type: !2314, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2316)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{!35, !35, !57}
!2316 = !{!2317, !2318, !2319, !2320}
!2317 = !DILocalVariable(name: "msgid", arg: 1, scope: !2313, file: !213, line: 207, type: !35)
!2318 = !DILocalVariable(name: "s", arg: 2, scope: !2313, file: !213, line: 207, type: !57)
!2319 = !DILocalVariable(name: "translation", scope: !2313, file: !213, line: 209, type: !35)
!2320 = !DILocalVariable(name: "locale_code", scope: !2313, file: !213, line: 210, type: !35)
!2321 = !DILocation(line: 0, scope: !2313)
!2322 = !DILocation(line: 209, column: 29, scope: !2313)
!2323 = !DILocation(line: 212, column: 19, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2313, file: !213, line: 212, column: 7)
!2325 = !DILocation(line: 212, column: 7, scope: !2313)
!2326 = !DILocation(line: 233, column: 17, scope: !2313)
!2327 = !DILocalVariable(name: "s1", arg: 1, scope: !2328, file: !2329, line: 160, type: !35)
!2328 = distinct !DISubprogram(name: "strcaseeq0", scope: !2329, file: !2329, line: 160, type: !2330, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2332)
!2329 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2330 = !DISubroutineType(types: !2331)
!2331 = !{!31, !35, !35, !23, !23, !23, !23, !23, !23, !23, !23, !23}
!2332 = !{!2327, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342}
!2333 = !DILocalVariable(name: "s2", arg: 2, scope: !2328, file: !2329, line: 160, type: !35)
!2334 = !DILocalVariable(name: "s20", arg: 3, scope: !2328, file: !2329, line: 160, type: !23)
!2335 = !DILocalVariable(name: "s21", arg: 4, scope: !2328, file: !2329, line: 160, type: !23)
!2336 = !DILocalVariable(name: "s22", arg: 5, scope: !2328, file: !2329, line: 160, type: !23)
!2337 = !DILocalVariable(name: "s23", arg: 6, scope: !2328, file: !2329, line: 160, type: !23)
!2338 = !DILocalVariable(name: "s24", arg: 7, scope: !2328, file: !2329, line: 160, type: !23)
!2339 = !DILocalVariable(name: "s25", arg: 8, scope: !2328, file: !2329, line: 160, type: !23)
!2340 = !DILocalVariable(name: "s26", arg: 9, scope: !2328, file: !2329, line: 160, type: !23)
!2341 = !DILocalVariable(name: "s27", arg: 10, scope: !2328, file: !2329, line: 160, type: !23)
!2342 = !DILocalVariable(name: "s28", arg: 11, scope: !2328, file: !2329, line: 160, type: !23)
!2343 = !DILocation(line: 0, scope: !2328, inlinedAt: !2344)
!2344 = distinct !DILocation(line: 234, column: 7, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2313, file: !213, line: 234, column: 7)
!2346 = !DILocation(line: 162, column: 7, scope: !2347, inlinedAt: !2344)
!2347 = distinct !DILexicalBlock(scope: !2328, file: !2329, line: 162, column: 7)
!2348 = !DILocalVariable(name: "s1", arg: 1, scope: !2349, file: !2329, line: 146, type: !35)
!2349 = distinct !DISubprogram(name: "strcaseeq1", scope: !2329, file: !2329, line: 146, type: !2350, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2352)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!31, !35, !35, !23, !23, !23, !23, !23, !23, !23, !23}
!2352 = !{!2348, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361}
!2353 = !DILocalVariable(name: "s2", arg: 2, scope: !2349, file: !2329, line: 146, type: !35)
!2354 = !DILocalVariable(name: "s21", arg: 3, scope: !2349, file: !2329, line: 146, type: !23)
!2355 = !DILocalVariable(name: "s22", arg: 4, scope: !2349, file: !2329, line: 146, type: !23)
!2356 = !DILocalVariable(name: "s23", arg: 5, scope: !2349, file: !2329, line: 146, type: !23)
!2357 = !DILocalVariable(name: "s24", arg: 6, scope: !2349, file: !2329, line: 146, type: !23)
!2358 = !DILocalVariable(name: "s25", arg: 7, scope: !2349, file: !2329, line: 146, type: !23)
!2359 = !DILocalVariable(name: "s26", arg: 8, scope: !2349, file: !2329, line: 146, type: !23)
!2360 = !DILocalVariable(name: "s27", arg: 9, scope: !2349, file: !2329, line: 146, type: !23)
!2361 = !DILocalVariable(name: "s28", arg: 10, scope: !2349, file: !2329, line: 146, type: !23)
!2362 = !DILocation(line: 0, scope: !2349, inlinedAt: !2363)
!2363 = distinct !DILocation(line: 167, column: 16, scope: !2364, inlinedAt: !2344)
!2364 = distinct !DILexicalBlock(scope: !2365, file: !2329, line: 164, column: 11)
!2365 = distinct !DILexicalBlock(scope: !2347, file: !2329, line: 163, column: 5)
!2366 = !DILocation(line: 148, column: 7, scope: !2367, inlinedAt: !2363)
!2367 = distinct !DILexicalBlock(scope: !2349, file: !2329, line: 148, column: 7)
!2368 = !DILocalVariable(name: "s1", arg: 1, scope: !2369, file: !2329, line: 132, type: !35)
!2369 = distinct !DISubprogram(name: "strcaseeq2", scope: !2329, file: !2329, line: 132, type: !2370, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2372)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{!31, !35, !35, !23, !23, !23, !23, !23, !23, !23}
!2372 = !{!2368, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380}
!2373 = !DILocalVariable(name: "s2", arg: 2, scope: !2369, file: !2329, line: 132, type: !35)
!2374 = !DILocalVariable(name: "s22", arg: 3, scope: !2369, file: !2329, line: 132, type: !23)
!2375 = !DILocalVariable(name: "s23", arg: 4, scope: !2369, file: !2329, line: 132, type: !23)
!2376 = !DILocalVariable(name: "s24", arg: 5, scope: !2369, file: !2329, line: 132, type: !23)
!2377 = !DILocalVariable(name: "s25", arg: 6, scope: !2369, file: !2329, line: 132, type: !23)
!2378 = !DILocalVariable(name: "s26", arg: 7, scope: !2369, file: !2329, line: 132, type: !23)
!2379 = !DILocalVariable(name: "s27", arg: 8, scope: !2369, file: !2329, line: 132, type: !23)
!2380 = !DILocalVariable(name: "s28", arg: 9, scope: !2369, file: !2329, line: 132, type: !23)
!2381 = !DILocation(line: 0, scope: !2369, inlinedAt: !2382)
!2382 = distinct !DILocation(line: 153, column: 16, scope: !2383, inlinedAt: !2363)
!2383 = distinct !DILexicalBlock(scope: !2384, file: !2329, line: 150, column: 11)
!2384 = distinct !DILexicalBlock(scope: !2367, file: !2329, line: 149, column: 5)
!2385 = !DILocation(line: 134, column: 7, scope: !2386, inlinedAt: !2382)
!2386 = distinct !DILexicalBlock(scope: !2369, file: !2329, line: 134, column: 7)
!2387 = !DILocalVariable(name: "s1", arg: 1, scope: !2388, file: !2329, line: 118, type: !35)
!2388 = distinct !DISubprogram(name: "strcaseeq3", scope: !2329, file: !2329, line: 118, type: !2389, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2391)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!31, !35, !35, !23, !23, !23, !23, !23, !23}
!2391 = !{!2387, !2392, !2393, !2394, !2395, !2396, !2397, !2398}
!2392 = !DILocalVariable(name: "s2", arg: 2, scope: !2388, file: !2329, line: 118, type: !35)
!2393 = !DILocalVariable(name: "s23", arg: 3, scope: !2388, file: !2329, line: 118, type: !23)
!2394 = !DILocalVariable(name: "s24", arg: 4, scope: !2388, file: !2329, line: 118, type: !23)
!2395 = !DILocalVariable(name: "s25", arg: 5, scope: !2388, file: !2329, line: 118, type: !23)
!2396 = !DILocalVariable(name: "s26", arg: 6, scope: !2388, file: !2329, line: 118, type: !23)
!2397 = !DILocalVariable(name: "s27", arg: 7, scope: !2388, file: !2329, line: 118, type: !23)
!2398 = !DILocalVariable(name: "s28", arg: 8, scope: !2388, file: !2329, line: 118, type: !23)
!2399 = !DILocation(line: 0, scope: !2388, inlinedAt: !2400)
!2400 = distinct !DILocation(line: 139, column: 16, scope: !2401, inlinedAt: !2382)
!2401 = distinct !DILexicalBlock(scope: !2402, file: !2329, line: 136, column: 11)
!2402 = distinct !DILexicalBlock(scope: !2386, file: !2329, line: 135, column: 5)
!2403 = !DILocation(line: 120, column: 7, scope: !2404, inlinedAt: !2400)
!2404 = distinct !DILexicalBlock(scope: !2388, file: !2329, line: 120, column: 7)
!2405 = !DILocation(line: 120, column: 7, scope: !2388, inlinedAt: !2400)
!2406 = !DILocalVariable(name: "s1", arg: 1, scope: !2407, file: !2329, line: 104, type: !35)
!2407 = distinct !DISubprogram(name: "strcaseeq4", scope: !2329, file: !2329, line: 104, type: !2408, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2410)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!31, !35, !35, !23, !23, !23, !23, !23}
!2410 = !{!2406, !2411, !2412, !2413, !2414, !2415, !2416}
!2411 = !DILocalVariable(name: "s2", arg: 2, scope: !2407, file: !2329, line: 104, type: !35)
!2412 = !DILocalVariable(name: "s24", arg: 3, scope: !2407, file: !2329, line: 104, type: !23)
!2413 = !DILocalVariable(name: "s25", arg: 4, scope: !2407, file: !2329, line: 104, type: !23)
!2414 = !DILocalVariable(name: "s26", arg: 5, scope: !2407, file: !2329, line: 104, type: !23)
!2415 = !DILocalVariable(name: "s27", arg: 6, scope: !2407, file: !2329, line: 104, type: !23)
!2416 = !DILocalVariable(name: "s28", arg: 7, scope: !2407, file: !2329, line: 104, type: !23)
!2417 = !DILocation(line: 0, scope: !2407, inlinedAt: !2418)
!2418 = distinct !DILocation(line: 125, column: 16, scope: !2419, inlinedAt: !2400)
!2419 = distinct !DILexicalBlock(scope: !2420, file: !2329, line: 122, column: 11)
!2420 = distinct !DILexicalBlock(scope: !2404, file: !2329, line: 121, column: 5)
!2421 = !DILocation(line: 106, column: 7, scope: !2422, inlinedAt: !2418)
!2422 = distinct !DILexicalBlock(scope: !2407, file: !2329, line: 106, column: 7)
!2423 = !DILocation(line: 106, column: 7, scope: !2407, inlinedAt: !2418)
!2424 = !DILocalVariable(name: "s1", arg: 1, scope: !2425, file: !2329, line: 90, type: !35)
!2425 = distinct !DISubprogram(name: "strcaseeq5", scope: !2329, file: !2329, line: 90, type: !2426, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2428)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!31, !35, !35, !23, !23, !23, !23}
!2428 = !{!2424, !2429, !2430, !2431, !2432, !2433}
!2429 = !DILocalVariable(name: "s2", arg: 2, scope: !2425, file: !2329, line: 90, type: !35)
!2430 = !DILocalVariable(name: "s25", arg: 3, scope: !2425, file: !2329, line: 90, type: !23)
!2431 = !DILocalVariable(name: "s26", arg: 4, scope: !2425, file: !2329, line: 90, type: !23)
!2432 = !DILocalVariable(name: "s27", arg: 5, scope: !2425, file: !2329, line: 90, type: !23)
!2433 = !DILocalVariable(name: "s28", arg: 6, scope: !2425, file: !2329, line: 90, type: !23)
!2434 = !DILocation(line: 0, scope: !2425, inlinedAt: !2435)
!2435 = distinct !DILocation(line: 111, column: 16, scope: !2436, inlinedAt: !2418)
!2436 = distinct !DILexicalBlock(scope: !2437, file: !2329, line: 108, column: 11)
!2437 = distinct !DILexicalBlock(scope: !2422, file: !2329, line: 107, column: 5)
!2438 = !DILocation(line: 92, column: 7, scope: !2439, inlinedAt: !2435)
!2439 = distinct !DILexicalBlock(scope: !2425, file: !2329, line: 92, column: 7)
!2440 = !DILocation(line: 92, column: 7, scope: !2425, inlinedAt: !2435)
!2441 = !DILocation(line: 235, column: 12, scope: !2345)
!2442 = !DILocation(line: 235, column: 21, scope: !2345)
!2443 = !DILocation(line: 235, column: 5, scope: !2345)
!2444 = !DILocation(line: 0, scope: !2349, inlinedAt: !2445)
!2445 = distinct !DILocation(line: 167, column: 16, scope: !2364, inlinedAt: !2446)
!2446 = distinct !DILocation(line: 236, column: 7, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2313, file: !213, line: 236, column: 7)
!2448 = !DILocation(line: 148, column: 7, scope: !2367, inlinedAt: !2445)
!2449 = !DILocation(line: 0, scope: !2369, inlinedAt: !2450)
!2450 = distinct !DILocation(line: 153, column: 16, scope: !2383, inlinedAt: !2445)
!2451 = !DILocation(line: 134, column: 7, scope: !2386, inlinedAt: !2450)
!2452 = !DILocation(line: 134, column: 7, scope: !2369, inlinedAt: !2450)
!2453 = !DILocation(line: 0, scope: !2388, inlinedAt: !2454)
!2454 = distinct !DILocation(line: 139, column: 16, scope: !2401, inlinedAt: !2450)
!2455 = !DILocation(line: 120, column: 7, scope: !2404, inlinedAt: !2454)
!2456 = !DILocation(line: 120, column: 7, scope: !2388, inlinedAt: !2454)
!2457 = !DILocation(line: 0, scope: !2407, inlinedAt: !2458)
!2458 = distinct !DILocation(line: 125, column: 16, scope: !2419, inlinedAt: !2454)
!2459 = !DILocation(line: 106, column: 7, scope: !2422, inlinedAt: !2458)
!2460 = !DILocation(line: 106, column: 7, scope: !2407, inlinedAt: !2458)
!2461 = !DILocation(line: 0, scope: !2425, inlinedAt: !2462)
!2462 = distinct !DILocation(line: 111, column: 16, scope: !2436, inlinedAt: !2458)
!2463 = !DILocation(line: 92, column: 7, scope: !2439, inlinedAt: !2462)
!2464 = !DILocation(line: 92, column: 7, scope: !2425, inlinedAt: !2462)
!2465 = !DILocalVariable(name: "s1", arg: 1, scope: !2466, file: !2329, line: 76, type: !35)
!2466 = distinct !DISubprogram(name: "strcaseeq6", scope: !2329, file: !2329, line: 76, type: !2467, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2469)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{!31, !35, !35, !23, !23, !23}
!2469 = !{!2465, !2470, !2471, !2472, !2473}
!2470 = !DILocalVariable(name: "s2", arg: 2, scope: !2466, file: !2329, line: 76, type: !35)
!2471 = !DILocalVariable(name: "s26", arg: 3, scope: !2466, file: !2329, line: 76, type: !23)
!2472 = !DILocalVariable(name: "s27", arg: 4, scope: !2466, file: !2329, line: 76, type: !23)
!2473 = !DILocalVariable(name: "s28", arg: 5, scope: !2466, file: !2329, line: 76, type: !23)
!2474 = !DILocation(line: 0, scope: !2466, inlinedAt: !2475)
!2475 = distinct !DILocation(line: 97, column: 16, scope: !2476, inlinedAt: !2462)
!2476 = distinct !DILexicalBlock(scope: !2477, file: !2329, line: 94, column: 11)
!2477 = distinct !DILexicalBlock(scope: !2439, file: !2329, line: 93, column: 5)
!2478 = !DILocation(line: 78, column: 7, scope: !2479, inlinedAt: !2475)
!2479 = distinct !DILexicalBlock(scope: !2466, file: !2329, line: 78, column: 7)
!2480 = !DILocation(line: 78, column: 7, scope: !2466, inlinedAt: !2475)
!2481 = !DILocalVariable(name: "s1", arg: 1, scope: !2482, file: !2329, line: 62, type: !35)
!2482 = distinct !DISubprogram(name: "strcaseeq7", scope: !2329, file: !2329, line: 62, type: !2483, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2485)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{!31, !35, !35, !23, !23}
!2485 = !{!2481, !2486, !2487, !2488}
!2486 = !DILocalVariable(name: "s2", arg: 2, scope: !2482, file: !2329, line: 62, type: !35)
!2487 = !DILocalVariable(name: "s27", arg: 3, scope: !2482, file: !2329, line: 62, type: !23)
!2488 = !DILocalVariable(name: "s28", arg: 4, scope: !2482, file: !2329, line: 62, type: !23)
!2489 = !DILocation(line: 0, scope: !2482, inlinedAt: !2490)
!2490 = distinct !DILocation(line: 83, column: 16, scope: !2491, inlinedAt: !2475)
!2491 = distinct !DILexicalBlock(scope: !2492, file: !2329, line: 80, column: 11)
!2492 = distinct !DILexicalBlock(scope: !2479, file: !2329, line: 79, column: 5)
!2493 = !DILocation(line: 64, column: 7, scope: !2494, inlinedAt: !2490)
!2494 = distinct !DILexicalBlock(scope: !2482, file: !2329, line: 64, column: 7)
!2495 = !DILocation(line: 236, column: 7, scope: !2313)
!2496 = !DILocation(line: 237, column: 12, scope: !2447)
!2497 = !DILocation(line: 237, column: 21, scope: !2447)
!2498 = !DILocation(line: 237, column: 5, scope: !2447)
!2499 = !DILocation(line: 239, column: 13, scope: !2313)
!2500 = !DILocation(line: 239, column: 11, scope: !2313)
!2501 = !DILocation(line: 239, column: 3, scope: !2313)
!2502 = !DILocation(line: 240, column: 1, scope: !2313)
!2503 = !DISubprogram(name: "iswprint", scope: !2504, file: !2504, line: 120, type: !2505, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!2504 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!2505 = !DISubroutineType(types: !2506)
!2506 = !{!31, !7}
!2507 = !DISubprogram(name: "mbsinit", scope: !2508, file: !2508, line: 292, type: !2509, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!2508 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!2509 = !DISubroutineType(types: !2510)
!2510 = !{!31, !2511}
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1833)
!2513 = distinct !DISubprogram(name: "quotearg_alloc", scope: !213, file: !213, line: 799, type: !2514, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2516)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{!22, !35, !33, !1680}
!2516 = !{!2517, !2518, !2519}
!2517 = !DILocalVariable(name: "arg", arg: 1, scope: !2513, file: !213, line: 799, type: !35)
!2518 = !DILocalVariable(name: "argsize", arg: 2, scope: !2513, file: !213, line: 799, type: !33)
!2519 = !DILocalVariable(name: "o", arg: 3, scope: !2513, file: !213, line: 800, type: !1680)
!2520 = !DILocation(line: 0, scope: !2513)
!2521 = !DILocalVariable(name: "arg", arg: 1, scope: !2522, file: !213, line: 812, type: !35)
!2522 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !213, file: !213, line: 812, type: !2523, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2525)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{!22, !35, !33, !85, !1680}
!2525 = !{!2521, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533}
!2526 = !DILocalVariable(name: "argsize", arg: 2, scope: !2522, file: !213, line: 812, type: !33)
!2527 = !DILocalVariable(name: "size", arg: 3, scope: !2522, file: !213, line: 812, type: !85)
!2528 = !DILocalVariable(name: "o", arg: 4, scope: !2522, file: !213, line: 813, type: !1680)
!2529 = !DILocalVariable(name: "p", scope: !2522, file: !213, line: 815, type: !1680)
!2530 = !DILocalVariable(name: "e", scope: !2522, file: !213, line: 816, type: !31)
!2531 = !DILocalVariable(name: "flags", scope: !2522, file: !213, line: 818, type: !31)
!2532 = !DILocalVariable(name: "bufsize", scope: !2522, file: !213, line: 819, type: !33)
!2533 = !DILocalVariable(name: "buf", scope: !2522, file: !213, line: 823, type: !22)
!2534 = !DILocation(line: 0, scope: !2522, inlinedAt: !2535)
!2535 = distinct !DILocation(line: 802, column: 10, scope: !2513)
!2536 = !DILocation(line: 815, column: 37, scope: !2522, inlinedAt: !2535)
!2537 = !DILocation(line: 816, column: 11, scope: !2522, inlinedAt: !2535)
!2538 = !DILocation(line: 818, column: 18, scope: !2522, inlinedAt: !2535)
!2539 = !DILocation(line: 818, column: 24, scope: !2522, inlinedAt: !2535)
!2540 = !DILocation(line: 819, column: 69, scope: !2522, inlinedAt: !2535)
!2541 = !DILocation(line: 820, column: 53, scope: !2522, inlinedAt: !2535)
!2542 = !DILocation(line: 821, column: 49, scope: !2522, inlinedAt: !2535)
!2543 = !DILocation(line: 822, column: 49, scope: !2522, inlinedAt: !2535)
!2544 = !DILocation(line: 819, column: 20, scope: !2522, inlinedAt: !2535)
!2545 = !DILocation(line: 822, column: 62, scope: !2522, inlinedAt: !2535)
!2546 = !DILocalVariable(name: "n", arg: 1, scope: !2547, file: !81, line: 216, type: !33)
!2547 = distinct !DISubprogram(name: "xcharalloc", scope: !81, file: !81, line: 216, type: !2548, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2550)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!22, !33}
!2550 = !{!2546}
!2551 = !DILocation(line: 0, scope: !2547, inlinedAt: !2552)
!2552 = distinct !DILocation(line: 823, column: 15, scope: !2522, inlinedAt: !2535)
!2553 = !DILocation(line: 218, column: 10, scope: !2547, inlinedAt: !2552)
!2554 = !DILocation(line: 824, column: 60, scope: !2522, inlinedAt: !2535)
!2555 = !DILocation(line: 826, column: 32, scope: !2522, inlinedAt: !2535)
!2556 = !DILocation(line: 826, column: 47, scope: !2522, inlinedAt: !2535)
!2557 = !DILocation(line: 824, column: 3, scope: !2522, inlinedAt: !2535)
!2558 = !DILocation(line: 827, column: 9, scope: !2522, inlinedAt: !2535)
!2559 = !DILocation(line: 802, column: 3, scope: !2513)
!2560 = !DILocation(line: 0, scope: !2522)
!2561 = !DILocation(line: 815, column: 37, scope: !2522)
!2562 = !DILocation(line: 816, column: 11, scope: !2522)
!2563 = !DILocation(line: 818, column: 18, scope: !2522)
!2564 = !DILocation(line: 818, column: 27, scope: !2522)
!2565 = !DILocation(line: 818, column: 24, scope: !2522)
!2566 = !DILocation(line: 819, column: 69, scope: !2522)
!2567 = !DILocation(line: 820, column: 53, scope: !2522)
!2568 = !DILocation(line: 821, column: 49, scope: !2522)
!2569 = !DILocation(line: 822, column: 49, scope: !2522)
!2570 = !DILocation(line: 819, column: 20, scope: !2522)
!2571 = !DILocation(line: 822, column: 62, scope: !2522)
!2572 = !DILocation(line: 0, scope: !2547, inlinedAt: !2573)
!2573 = distinct !DILocation(line: 823, column: 15, scope: !2522)
!2574 = !DILocation(line: 218, column: 10, scope: !2547, inlinedAt: !2573)
!2575 = !DILocation(line: 824, column: 60, scope: !2522)
!2576 = !DILocation(line: 826, column: 32, scope: !2522)
!2577 = !DILocation(line: 826, column: 47, scope: !2522)
!2578 = !DILocation(line: 824, column: 3, scope: !2522)
!2579 = !DILocation(line: 827, column: 9, scope: !2522)
!2580 = !DILocation(line: 828, column: 7, scope: !2522)
!2581 = !DILocation(line: 829, column: 11, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2522, file: !213, line: 828, column: 7)
!2583 = !DILocation(line: 829, column: 5, scope: !2582)
!2584 = !DILocation(line: 830, column: 3, scope: !2522)
!2585 = distinct !DISubprogram(name: "quotearg_free", scope: !213, file: !213, line: 848, type: !728, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2586)
!2586 = !{!2587, !2588}
!2587 = !DILocalVariable(name: "sv", scope: !2585, file: !213, line: 850, type: !249)
!2588 = !DILocalVariable(name: "i", scope: !2585, file: !213, line: 851, type: !31)
!2589 = !DILocation(line: 850, column: 24, scope: !2585)
!2590 = !DILocation(line: 0, scope: !2585)
!2591 = !DILocation(line: 852, column: 19, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2593, file: !213, line: 852, column: 3)
!2593 = distinct !DILexicalBlock(scope: !2585, file: !213, line: 852, column: 3)
!2594 = !DILocation(line: 852, column: 17, scope: !2592)
!2595 = !DILocation(line: 852, column: 3, scope: !2593)
!2596 = !DILocation(line: 853, column: 17, scope: !2592)
!2597 = !{!2598, !719, i64 8}
!2598 = !{!"slotvec", !932, i64 0, !719, i64 8}
!2599 = !DILocation(line: 853, column: 5, scope: !2592)
!2600 = !DILocation(line: 852, column: 28, scope: !2592)
!2601 = distinct !{!2601, !2595, !2602, !770}
!2602 = !DILocation(line: 853, column: 20, scope: !2593)
!2603 = !DILocation(line: 854, column: 13, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2585, file: !213, line: 854, column: 7)
!2605 = !DILocation(line: 854, column: 17, scope: !2604)
!2606 = !DILocation(line: 854, column: 7, scope: !2585)
!2607 = !DILocation(line: 856, column: 7, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2604, file: !213, line: 855, column: 5)
!2609 = !DILocation(line: 857, column: 21, scope: !2608)
!2610 = !{!2598, !932, i64 0}
!2611 = !DILocation(line: 858, column: 20, scope: !2608)
!2612 = !DILocation(line: 859, column: 5, scope: !2608)
!2613 = !DILocation(line: 860, column: 10, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2585, file: !213, line: 860, column: 7)
!2615 = !DILocation(line: 860, column: 7, scope: !2585)
!2616 = !DILocation(line: 862, column: 13, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2614, file: !213, line: 861, column: 5)
!2618 = !DILocation(line: 862, column: 7, scope: !2617)
!2619 = !DILocation(line: 863, column: 15, scope: !2617)
!2620 = !DILocation(line: 864, column: 5, scope: !2617)
!2621 = !DILocation(line: 865, column: 10, scope: !2585)
!2622 = !DILocation(line: 866, column: 1, scope: !2585)
!2623 = distinct !DISubprogram(name: "quotearg_n", scope: !213, file: !213, line: 931, type: !832, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2624)
!2624 = !{!2625, !2626}
!2625 = !DILocalVariable(name: "n", arg: 1, scope: !2623, file: !213, line: 931, type: !31)
!2626 = !DILocalVariable(name: "arg", arg: 2, scope: !2623, file: !213, line: 931, type: !35)
!2627 = !DILocation(line: 0, scope: !2623)
!2628 = !DILocation(line: 933, column: 10, scope: !2623)
!2629 = !DILocation(line: 933, column: 3, scope: !2623)
!2630 = distinct !DISubprogram(name: "quotearg_n_options", scope: !213, file: !213, line: 877, type: !2631, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2633)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!22, !31, !35, !33, !1680}
!2633 = !{!2634, !2635, !2636, !2637, !2638, !2639, !2640, !2643, !2644, !2646, !2647, !2648}
!2634 = !DILocalVariable(name: "n", arg: 1, scope: !2630, file: !213, line: 877, type: !31)
!2635 = !DILocalVariable(name: "arg", arg: 2, scope: !2630, file: !213, line: 877, type: !35)
!2636 = !DILocalVariable(name: "argsize", arg: 3, scope: !2630, file: !213, line: 877, type: !33)
!2637 = !DILocalVariable(name: "options", arg: 4, scope: !2630, file: !213, line: 878, type: !1680)
!2638 = !DILocalVariable(name: "e", scope: !2630, file: !213, line: 880, type: !31)
!2639 = !DILocalVariable(name: "sv", scope: !2630, file: !213, line: 882, type: !249)
!2640 = !DILocalVariable(name: "preallocated", scope: !2641, file: !213, line: 889, type: !175)
!2641 = distinct !DILexicalBlock(scope: !2642, file: !213, line: 888, column: 5)
!2642 = distinct !DILexicalBlock(scope: !2630, file: !213, line: 887, column: 7)
!2643 = !DILocalVariable(name: "nmax", scope: !2641, file: !213, line: 890, type: !31)
!2644 = !DILocalVariable(name: "size", scope: !2645, file: !213, line: 903, type: !33)
!2645 = distinct !DILexicalBlock(scope: !2630, file: !213, line: 902, column: 3)
!2646 = !DILocalVariable(name: "val", scope: !2645, file: !213, line: 904, type: !22)
!2647 = !DILocalVariable(name: "flags", scope: !2645, file: !213, line: 906, type: !31)
!2648 = !DILocalVariable(name: "qsize", scope: !2645, file: !213, line: 907, type: !33)
!2649 = !DILocation(line: 0, scope: !2630)
!2650 = !DILocation(line: 880, column: 11, scope: !2630)
!2651 = !DILocation(line: 882, column: 24, scope: !2630)
!2652 = !DILocation(line: 884, column: 9, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2630, file: !213, line: 884, column: 7)
!2654 = !DILocation(line: 884, column: 7, scope: !2630)
!2655 = !DILocation(line: 885, column: 5, scope: !2653)
!2656 = !DILocation(line: 887, column: 7, scope: !2642)
!2657 = !DILocation(line: 887, column: 14, scope: !2642)
!2658 = !DILocation(line: 887, column: 7, scope: !2630)
!2659 = !DILocation(line: 889, column: 31, scope: !2641)
!2660 = !DILocation(line: 0, scope: !2641)
!2661 = !DILocation(line: 892, column: 16, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2641, file: !213, line: 892, column: 11)
!2663 = !DILocation(line: 892, column: 11, scope: !2641)
!2664 = !DILocation(line: 893, column: 9, scope: !2662)
!2665 = !DILocation(line: 895, column: 32, scope: !2641)
!2666 = !DILocation(line: 895, column: 61, scope: !2641)
!2667 = !DILocation(line: 895, column: 66, scope: !2641)
!2668 = !DILocation(line: 895, column: 22, scope: !2641)
!2669 = !DILocation(line: 895, column: 15, scope: !2641)
!2670 = !DILocation(line: 896, column: 11, scope: !2641)
!2671 = !DILocation(line: 897, column: 15, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2641, file: !213, line: 896, column: 11)
!2673 = !{i64 0, i64 8, !931, i64 8, i64 8, !718}
!2674 = !DILocation(line: 897, column: 9, scope: !2672)
!2675 = !DILocation(line: 898, column: 20, scope: !2641)
!2676 = !DILocation(line: 898, column: 18, scope: !2641)
!2677 = !DILocation(line: 898, column: 15, scope: !2641)
!2678 = !DILocation(line: 898, column: 38, scope: !2641)
!2679 = !DILocation(line: 898, column: 31, scope: !2641)
!2680 = !DILocation(line: 898, column: 48, scope: !2641)
!2681 = !DILocation(line: 0, scope: !2074, inlinedAt: !2682)
!2682 = distinct !DILocation(line: 898, column: 7, scope: !2641)
!2683 = !DILocation(line: 59, column: 10, scope: !2074, inlinedAt: !2682)
!2684 = !DILocation(line: 899, column: 14, scope: !2641)
!2685 = !DILocation(line: 900, column: 5, scope: !2641)
!2686 = !DILocation(line: 903, column: 19, scope: !2645)
!2687 = !DILocation(line: 903, column: 25, scope: !2645)
!2688 = !DILocation(line: 0, scope: !2645)
!2689 = !DILocation(line: 904, column: 23, scope: !2645)
!2690 = !DILocation(line: 906, column: 26, scope: !2645)
!2691 = !DILocation(line: 906, column: 32, scope: !2645)
!2692 = !DILocation(line: 908, column: 55, scope: !2645)
!2693 = !DILocation(line: 909, column: 46, scope: !2645)
!2694 = !DILocation(line: 910, column: 55, scope: !2645)
!2695 = !DILocation(line: 911, column: 55, scope: !2645)
!2696 = !DILocation(line: 907, column: 20, scope: !2645)
!2697 = !DILocation(line: 913, column: 14, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2645, file: !213, line: 913, column: 9)
!2699 = !DILocation(line: 913, column: 9, scope: !2645)
!2700 = !DILocation(line: 915, column: 35, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2698, file: !213, line: 914, column: 7)
!2702 = !DILocation(line: 915, column: 20, scope: !2701)
!2703 = !DILocation(line: 916, column: 17, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2701, file: !213, line: 916, column: 13)
!2705 = !DILocation(line: 916, column: 13, scope: !2701)
!2706 = !DILocation(line: 917, column: 11, scope: !2704)
!2707 = !DILocation(line: 0, scope: !2547, inlinedAt: !2708)
!2708 = distinct !DILocation(line: 918, column: 27, scope: !2701)
!2709 = !DILocation(line: 218, column: 10, scope: !2547, inlinedAt: !2708)
!2710 = !DILocation(line: 918, column: 19, scope: !2701)
!2711 = !DILocation(line: 919, column: 69, scope: !2701)
!2712 = !DILocation(line: 921, column: 44, scope: !2701)
!2713 = !DILocation(line: 922, column: 44, scope: !2701)
!2714 = !DILocation(line: 919, column: 9, scope: !2701)
!2715 = !DILocation(line: 923, column: 7, scope: !2701)
!2716 = !DILocation(line: 925, column: 11, scope: !2645)
!2717 = !DILocation(line: 926, column: 5, scope: !2645)
!2718 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !213, file: !213, line: 937, type: !2719, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2721)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{!22, !31, !35, !33}
!2721 = !{!2722, !2723, !2724}
!2722 = !DILocalVariable(name: "n", arg: 1, scope: !2718, file: !213, line: 937, type: !31)
!2723 = !DILocalVariable(name: "arg", arg: 2, scope: !2718, file: !213, line: 937, type: !35)
!2724 = !DILocalVariable(name: "argsize", arg: 3, scope: !2718, file: !213, line: 937, type: !33)
!2725 = !DILocation(line: 0, scope: !2718)
!2726 = !DILocation(line: 939, column: 10, scope: !2718)
!2727 = !DILocation(line: 939, column: 3, scope: !2718)
!2728 = distinct !DISubprogram(name: "quotearg", scope: !213, file: !213, line: 943, type: !1073, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2729)
!2729 = !{!2730}
!2730 = !DILocalVariable(name: "arg", arg: 1, scope: !2728, file: !213, line: 943, type: !35)
!2731 = !DILocation(line: 0, scope: !2728)
!2732 = !DILocation(line: 0, scope: !2623, inlinedAt: !2733)
!2733 = distinct !DILocation(line: 945, column: 10, scope: !2728)
!2734 = !DILocation(line: 933, column: 10, scope: !2623, inlinedAt: !2733)
!2735 = !DILocation(line: 945, column: 3, scope: !2728)
!2736 = distinct !DISubprogram(name: "quotearg_mem", scope: !213, file: !213, line: 949, type: !2737, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2739)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{!22, !35, !33}
!2739 = !{!2740, !2741}
!2740 = !DILocalVariable(name: "arg", arg: 1, scope: !2736, file: !213, line: 949, type: !35)
!2741 = !DILocalVariable(name: "argsize", arg: 2, scope: !2736, file: !213, line: 949, type: !33)
!2742 = !DILocation(line: 0, scope: !2736)
!2743 = !DILocation(line: 0, scope: !2718, inlinedAt: !2744)
!2744 = distinct !DILocation(line: 951, column: 10, scope: !2736)
!2745 = !DILocation(line: 939, column: 10, scope: !2718, inlinedAt: !2744)
!2746 = !DILocation(line: 951, column: 3, scope: !2736)
!2747 = distinct !DISubprogram(name: "quotearg_n_style", scope: !213, file: !213, line: 955, type: !2748, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2750)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{!22, !31, !57, !35}
!2750 = !{!2751, !2752, !2753, !2754}
!2751 = !DILocalVariable(name: "n", arg: 1, scope: !2747, file: !213, line: 955, type: !31)
!2752 = !DILocalVariable(name: "s", arg: 2, scope: !2747, file: !213, line: 955, type: !57)
!2753 = !DILocalVariable(name: "arg", arg: 3, scope: !2747, file: !213, line: 955, type: !35)
!2754 = !DILocalVariable(name: "o", scope: !2747, file: !213, line: 957, type: !1681)
!2755 = !DILocation(line: 0, scope: !2747)
!2756 = !DILocation(line: 957, column: 3, scope: !2747)
!2757 = !DILocation(line: 957, column: 32, scope: !2747)
!2758 = !{!2759}
!2759 = distinct !{!2759, !2760, !"quoting_options_from_style: argument 0"}
!2760 = distinct !{!2760, !"quoting_options_from_style"}
!2761 = !DILocation(line: 957, column: 36, scope: !2747)
!2762 = !DILocalVariable(name: "style", arg: 1, scope: !2763, file: !213, line: 193, type: !57)
!2763 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !213, file: !213, line: 193, type: !2764, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2766)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!230, !57}
!2766 = !{!2762, !2767}
!2767 = !DILocalVariable(name: "o", scope: !2763, file: !213, line: 195, type: !230)
!2768 = !DILocation(line: 0, scope: !2763, inlinedAt: !2769)
!2769 = distinct !DILocation(line: 957, column: 36, scope: !2747)
!2770 = !DILocation(line: 195, column: 26, scope: !2763, inlinedAt: !2769)
!2771 = !DILocation(line: 196, column: 13, scope: !2772, inlinedAt: !2769)
!2772 = distinct !DILexicalBlock(scope: !2763, file: !213, line: 196, column: 7)
!2773 = !DILocation(line: 196, column: 7, scope: !2763, inlinedAt: !2769)
!2774 = !DILocation(line: 197, column: 5, scope: !2772, inlinedAt: !2769)
!2775 = !DILocation(line: 198, column: 5, scope: !2763, inlinedAt: !2769)
!2776 = !DILocation(line: 198, column: 11, scope: !2763, inlinedAt: !2769)
!2777 = !DILocation(line: 958, column: 10, scope: !2747)
!2778 = !DILocation(line: 959, column: 1, scope: !2747)
!2779 = !DILocation(line: 958, column: 3, scope: !2747)
!2780 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !213, file: !213, line: 962, type: !2781, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2783)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{!22, !31, !57, !35, !33}
!2783 = !{!2784, !2785, !2786, !2787, !2788}
!2784 = !DILocalVariable(name: "n", arg: 1, scope: !2780, file: !213, line: 962, type: !31)
!2785 = !DILocalVariable(name: "s", arg: 2, scope: !2780, file: !213, line: 962, type: !57)
!2786 = !DILocalVariable(name: "arg", arg: 3, scope: !2780, file: !213, line: 963, type: !35)
!2787 = !DILocalVariable(name: "argsize", arg: 4, scope: !2780, file: !213, line: 963, type: !33)
!2788 = !DILocalVariable(name: "o", scope: !2780, file: !213, line: 965, type: !1681)
!2789 = !DILocation(line: 0, scope: !2780)
!2790 = !DILocation(line: 965, column: 3, scope: !2780)
!2791 = !DILocation(line: 965, column: 32, scope: !2780)
!2792 = !{!2793}
!2793 = distinct !{!2793, !2794, !"quoting_options_from_style: argument 0"}
!2794 = distinct !{!2794, !"quoting_options_from_style"}
!2795 = !DILocation(line: 965, column: 36, scope: !2780)
!2796 = !DILocation(line: 0, scope: !2763, inlinedAt: !2797)
!2797 = distinct !DILocation(line: 965, column: 36, scope: !2780)
!2798 = !DILocation(line: 195, column: 26, scope: !2763, inlinedAt: !2797)
!2799 = !DILocation(line: 196, column: 13, scope: !2772, inlinedAt: !2797)
!2800 = !DILocation(line: 196, column: 7, scope: !2763, inlinedAt: !2797)
!2801 = !DILocation(line: 197, column: 5, scope: !2772, inlinedAt: !2797)
!2802 = !DILocation(line: 198, column: 5, scope: !2763, inlinedAt: !2797)
!2803 = !DILocation(line: 198, column: 11, scope: !2763, inlinedAt: !2797)
!2804 = !DILocation(line: 966, column: 10, scope: !2780)
!2805 = !DILocation(line: 967, column: 1, scope: !2780)
!2806 = !DILocation(line: 966, column: 3, scope: !2780)
!2807 = distinct !DISubprogram(name: "quotearg_style", scope: !213, file: !213, line: 970, type: !2808, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2810)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{!22, !57, !35}
!2810 = !{!2811, !2812}
!2811 = !DILocalVariable(name: "s", arg: 1, scope: !2807, file: !213, line: 970, type: !57)
!2812 = !DILocalVariable(name: "arg", arg: 2, scope: !2807, file: !213, line: 970, type: !35)
!2813 = !DILocation(line: 0, scope: !2807)
!2814 = !DILocation(line: 0, scope: !2747, inlinedAt: !2815)
!2815 = distinct !DILocation(line: 972, column: 10, scope: !2807)
!2816 = !DILocation(line: 957, column: 3, scope: !2747, inlinedAt: !2815)
!2817 = !DILocation(line: 957, column: 32, scope: !2747, inlinedAt: !2815)
!2818 = !{!2819}
!2819 = distinct !{!2819, !2820, !"quoting_options_from_style: argument 0"}
!2820 = distinct !{!2820, !"quoting_options_from_style"}
!2821 = !DILocation(line: 957, column: 36, scope: !2747, inlinedAt: !2815)
!2822 = !DILocation(line: 0, scope: !2763, inlinedAt: !2823)
!2823 = distinct !DILocation(line: 957, column: 36, scope: !2747, inlinedAt: !2815)
!2824 = !DILocation(line: 195, column: 26, scope: !2763, inlinedAt: !2823)
!2825 = !DILocation(line: 196, column: 13, scope: !2772, inlinedAt: !2823)
!2826 = !DILocation(line: 196, column: 7, scope: !2763, inlinedAt: !2823)
!2827 = !DILocation(line: 197, column: 5, scope: !2772, inlinedAt: !2823)
!2828 = !DILocation(line: 198, column: 5, scope: !2763, inlinedAt: !2823)
!2829 = !DILocation(line: 198, column: 11, scope: !2763, inlinedAt: !2823)
!2830 = !DILocation(line: 958, column: 10, scope: !2747, inlinedAt: !2815)
!2831 = !DILocation(line: 959, column: 1, scope: !2747, inlinedAt: !2815)
!2832 = !DILocation(line: 972, column: 3, scope: !2807)
!2833 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !213, file: !213, line: 976, type: !2834, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2836)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{!22, !57, !35, !33}
!2836 = !{!2837, !2838, !2839}
!2837 = !DILocalVariable(name: "s", arg: 1, scope: !2833, file: !213, line: 976, type: !57)
!2838 = !DILocalVariable(name: "arg", arg: 2, scope: !2833, file: !213, line: 976, type: !35)
!2839 = !DILocalVariable(name: "argsize", arg: 3, scope: !2833, file: !213, line: 976, type: !33)
!2840 = !DILocation(line: 0, scope: !2833)
!2841 = !DILocation(line: 0, scope: !2780, inlinedAt: !2842)
!2842 = distinct !DILocation(line: 978, column: 10, scope: !2833)
!2843 = !DILocation(line: 965, column: 3, scope: !2780, inlinedAt: !2842)
!2844 = !DILocation(line: 965, column: 32, scope: !2780, inlinedAt: !2842)
!2845 = !{!2846}
!2846 = distinct !{!2846, !2847, !"quoting_options_from_style: argument 0"}
!2847 = distinct !{!2847, !"quoting_options_from_style"}
!2848 = !DILocation(line: 965, column: 36, scope: !2780, inlinedAt: !2842)
!2849 = !DILocation(line: 0, scope: !2763, inlinedAt: !2850)
!2850 = distinct !DILocation(line: 965, column: 36, scope: !2780, inlinedAt: !2842)
!2851 = !DILocation(line: 195, column: 26, scope: !2763, inlinedAt: !2850)
!2852 = !DILocation(line: 196, column: 13, scope: !2772, inlinedAt: !2850)
!2853 = !DILocation(line: 196, column: 7, scope: !2763, inlinedAt: !2850)
!2854 = !DILocation(line: 197, column: 5, scope: !2772, inlinedAt: !2850)
!2855 = !DILocation(line: 198, column: 5, scope: !2763, inlinedAt: !2850)
!2856 = !DILocation(line: 198, column: 11, scope: !2763, inlinedAt: !2850)
!2857 = !DILocation(line: 966, column: 10, scope: !2780, inlinedAt: !2842)
!2858 = !DILocation(line: 967, column: 1, scope: !2780, inlinedAt: !2842)
!2859 = !DILocation(line: 978, column: 3, scope: !2833)
!2860 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !213, file: !213, line: 982, type: !2861, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2863)
!2861 = !DISubroutineType(types: !2862)
!2862 = !{!22, !35, !33, !23}
!2863 = !{!2864, !2865, !2866, !2867}
!2864 = !DILocalVariable(name: "arg", arg: 1, scope: !2860, file: !213, line: 982, type: !35)
!2865 = !DILocalVariable(name: "argsize", arg: 2, scope: !2860, file: !213, line: 982, type: !33)
!2866 = !DILocalVariable(name: "ch", arg: 3, scope: !2860, file: !213, line: 982, type: !23)
!2867 = !DILocalVariable(name: "options", scope: !2860, file: !213, line: 984, type: !230)
!2868 = !DILocation(line: 0, scope: !2860)
!2869 = !DILocation(line: 984, column: 3, scope: !2860)
!2870 = !DILocation(line: 984, column: 26, scope: !2860)
!2871 = !DILocation(line: 985, column: 13, scope: !2860)
!2872 = !{i64 0, i64 4, !954, i64 4, i64 4, !890, i64 8, i64 32, !954, i64 40, i64 8, !718, i64 48, i64 8, !718}
!2873 = !DILocation(line: 0, scope: !1701, inlinedAt: !2874)
!2874 = distinct !DILocation(line: 986, column: 3, scope: !2860)
!2875 = !DILocation(line: 156, column: 62, scope: !1701, inlinedAt: !2874)
!2876 = !DILocation(line: 156, column: 57, scope: !1701, inlinedAt: !2874)
!2877 = !DILocation(line: 157, column: 15, scope: !1701, inlinedAt: !2874)
!2878 = !DILocation(line: 158, column: 12, scope: !1701, inlinedAt: !2874)
!2879 = !DILocation(line: 158, column: 15, scope: !1701, inlinedAt: !2874)
!2880 = !DILocation(line: 158, column: 25, scope: !1701, inlinedAt: !2874)
!2881 = !DILocation(line: 159, column: 18, scope: !1701, inlinedAt: !2874)
!2882 = !DILocation(line: 159, column: 23, scope: !1701, inlinedAt: !2874)
!2883 = !DILocation(line: 159, column: 6, scope: !1701, inlinedAt: !2874)
!2884 = !DILocation(line: 987, column: 10, scope: !2860)
!2885 = !DILocation(line: 988, column: 1, scope: !2860)
!2886 = !DILocation(line: 987, column: 3, scope: !2860)
!2887 = distinct !DISubprogram(name: "quotearg_char", scope: !213, file: !213, line: 991, type: !2888, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2890)
!2888 = !DISubroutineType(types: !2889)
!2889 = !{!22, !35, !23}
!2890 = !{!2891, !2892}
!2891 = !DILocalVariable(name: "arg", arg: 1, scope: !2887, file: !213, line: 991, type: !35)
!2892 = !DILocalVariable(name: "ch", arg: 2, scope: !2887, file: !213, line: 991, type: !23)
!2893 = !DILocation(line: 0, scope: !2887)
!2894 = !DILocation(line: 0, scope: !2860, inlinedAt: !2895)
!2895 = distinct !DILocation(line: 993, column: 10, scope: !2887)
!2896 = !DILocation(line: 984, column: 3, scope: !2860, inlinedAt: !2895)
!2897 = !DILocation(line: 984, column: 26, scope: !2860, inlinedAt: !2895)
!2898 = !DILocation(line: 985, column: 13, scope: !2860, inlinedAt: !2895)
!2899 = !DILocation(line: 0, scope: !1701, inlinedAt: !2900)
!2900 = distinct !DILocation(line: 986, column: 3, scope: !2860, inlinedAt: !2895)
!2901 = !DILocation(line: 156, column: 62, scope: !1701, inlinedAt: !2900)
!2902 = !DILocation(line: 156, column: 57, scope: !1701, inlinedAt: !2900)
!2903 = !DILocation(line: 157, column: 15, scope: !1701, inlinedAt: !2900)
!2904 = !DILocation(line: 158, column: 12, scope: !1701, inlinedAt: !2900)
!2905 = !DILocation(line: 158, column: 15, scope: !1701, inlinedAt: !2900)
!2906 = !DILocation(line: 158, column: 25, scope: !1701, inlinedAt: !2900)
!2907 = !DILocation(line: 159, column: 18, scope: !1701, inlinedAt: !2900)
!2908 = !DILocation(line: 159, column: 23, scope: !1701, inlinedAt: !2900)
!2909 = !DILocation(line: 159, column: 6, scope: !1701, inlinedAt: !2900)
!2910 = !DILocation(line: 987, column: 10, scope: !2860, inlinedAt: !2895)
!2911 = !DILocation(line: 988, column: 1, scope: !2860, inlinedAt: !2895)
!2912 = !DILocation(line: 993, column: 3, scope: !2887)
!2913 = distinct !DISubprogram(name: "quotearg_colon", scope: !213, file: !213, line: 997, type: !1073, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2914)
!2914 = !{!2915}
!2915 = !DILocalVariable(name: "arg", arg: 1, scope: !2913, file: !213, line: 997, type: !35)
!2916 = !DILocation(line: 0, scope: !2913)
!2917 = !DILocation(line: 0, scope: !2887, inlinedAt: !2918)
!2918 = distinct !DILocation(line: 999, column: 10, scope: !2913)
!2919 = !DILocation(line: 0, scope: !2860, inlinedAt: !2920)
!2920 = distinct !DILocation(line: 993, column: 10, scope: !2887, inlinedAt: !2918)
!2921 = !DILocation(line: 984, column: 3, scope: !2860, inlinedAt: !2920)
!2922 = !DILocation(line: 984, column: 26, scope: !2860, inlinedAt: !2920)
!2923 = !DILocation(line: 985, column: 13, scope: !2860, inlinedAt: !2920)
!2924 = !DILocation(line: 0, scope: !1701, inlinedAt: !2925)
!2925 = distinct !DILocation(line: 986, column: 3, scope: !2860, inlinedAt: !2920)
!2926 = !DILocation(line: 156, column: 57, scope: !1701, inlinedAt: !2925)
!2927 = !DILocation(line: 158, column: 12, scope: !1701, inlinedAt: !2925)
!2928 = !DILocation(line: 159, column: 6, scope: !1701, inlinedAt: !2925)
!2929 = !DILocation(line: 987, column: 10, scope: !2860, inlinedAt: !2920)
!2930 = !DILocation(line: 988, column: 1, scope: !2860, inlinedAt: !2920)
!2931 = !DILocation(line: 999, column: 3, scope: !2913)
!2932 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !213, file: !213, line: 1003, type: !2737, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2933)
!2933 = !{!2934, !2935}
!2934 = !DILocalVariable(name: "arg", arg: 1, scope: !2932, file: !213, line: 1003, type: !35)
!2935 = !DILocalVariable(name: "argsize", arg: 2, scope: !2932, file: !213, line: 1003, type: !33)
!2936 = !DILocation(line: 0, scope: !2932)
!2937 = !DILocation(line: 0, scope: !2860, inlinedAt: !2938)
!2938 = distinct !DILocation(line: 1005, column: 10, scope: !2932)
!2939 = !DILocation(line: 984, column: 3, scope: !2860, inlinedAt: !2938)
!2940 = !DILocation(line: 984, column: 26, scope: !2860, inlinedAt: !2938)
!2941 = !DILocation(line: 985, column: 13, scope: !2860, inlinedAt: !2938)
!2942 = !DILocation(line: 0, scope: !1701, inlinedAt: !2943)
!2943 = distinct !DILocation(line: 986, column: 3, scope: !2860, inlinedAt: !2938)
!2944 = !DILocation(line: 156, column: 57, scope: !1701, inlinedAt: !2943)
!2945 = !DILocation(line: 158, column: 12, scope: !1701, inlinedAt: !2943)
!2946 = !DILocation(line: 159, column: 6, scope: !1701, inlinedAt: !2943)
!2947 = !DILocation(line: 987, column: 10, scope: !2860, inlinedAt: !2938)
!2948 = !DILocation(line: 988, column: 1, scope: !2860, inlinedAt: !2938)
!2949 = !DILocation(line: 1005, column: 3, scope: !2932)
!2950 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !213, file: !213, line: 1009, type: !2748, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2951)
!2951 = !{!2952, !2953, !2954, !2955}
!2952 = !DILocalVariable(name: "n", arg: 1, scope: !2950, file: !213, line: 1009, type: !31)
!2953 = !DILocalVariable(name: "s", arg: 2, scope: !2950, file: !213, line: 1009, type: !57)
!2954 = !DILocalVariable(name: "arg", arg: 3, scope: !2950, file: !213, line: 1009, type: !35)
!2955 = !DILocalVariable(name: "options", scope: !2950, file: !213, line: 1011, type: !230)
!2956 = !DILocation(line: 195, column: 26, scope: !2763, inlinedAt: !2957)
!2957 = distinct !DILocation(line: 1012, column: 13, scope: !2950)
!2958 = !DILocation(line: 0, scope: !2950)
!2959 = !DILocation(line: 1011, column: 3, scope: !2950)
!2960 = !DILocation(line: 1011, column: 26, scope: !2950)
!2961 = !DILocation(line: 1012, column: 13, scope: !2950)
!2962 = !{!2963}
!2963 = distinct !{!2963, !2964, !"quoting_options_from_style: argument 0"}
!2964 = distinct !{!2964, !"quoting_options_from_style"}
!2965 = !DILocation(line: 0, scope: !2763, inlinedAt: !2957)
!2966 = !DILocation(line: 196, column: 13, scope: !2772, inlinedAt: !2957)
!2967 = !DILocation(line: 196, column: 7, scope: !2763, inlinedAt: !2957)
!2968 = !DILocation(line: 197, column: 5, scope: !2772, inlinedAt: !2957)
!2969 = !{i64 0, i64 4, !890, i64 4, i64 32, !954, i64 36, i64 8, !718, i64 44, i64 8, !718}
!2970 = !DILocation(line: 0, scope: !1701, inlinedAt: !2971)
!2971 = distinct !DILocation(line: 1013, column: 3, scope: !2950)
!2972 = !DILocation(line: 156, column: 57, scope: !1701, inlinedAt: !2971)
!2973 = !DILocation(line: 158, column: 12, scope: !1701, inlinedAt: !2971)
!2974 = !DILocation(line: 159, column: 6, scope: !1701, inlinedAt: !2971)
!2975 = !DILocation(line: 1014, column: 10, scope: !2950)
!2976 = !DILocation(line: 1015, column: 1, scope: !2950)
!2977 = !DILocation(line: 1014, column: 3, scope: !2950)
!2978 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !213, file: !213, line: 1018, type: !2979, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2981)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{!22, !31, !35, !35, !35}
!2981 = !{!2982, !2983, !2984, !2985}
!2982 = !DILocalVariable(name: "n", arg: 1, scope: !2978, file: !213, line: 1018, type: !31)
!2983 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2978, file: !213, line: 1018, type: !35)
!2984 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2978, file: !213, line: 1019, type: !35)
!2985 = !DILocalVariable(name: "arg", arg: 4, scope: !2978, file: !213, line: 1019, type: !35)
!2986 = !DILocation(line: 0, scope: !2978)
!2987 = !DILocalVariable(name: "n", arg: 1, scope: !2988, file: !213, line: 1026, type: !31)
!2988 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !213, file: !213, line: 1026, type: !2989, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2991)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!22, !31, !35, !35, !35, !33}
!2991 = !{!2987, !2992, !2993, !2994, !2995, !2996}
!2992 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2988, file: !213, line: 1026, type: !35)
!2993 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2988, file: !213, line: 1027, type: !35)
!2994 = !DILocalVariable(name: "arg", arg: 4, scope: !2988, file: !213, line: 1028, type: !35)
!2995 = !DILocalVariable(name: "argsize", arg: 5, scope: !2988, file: !213, line: 1028, type: !33)
!2996 = !DILocalVariable(name: "o", scope: !2988, file: !213, line: 1030, type: !230)
!2997 = !DILocation(line: 0, scope: !2988, inlinedAt: !2998)
!2998 = distinct !DILocation(line: 1021, column: 10, scope: !2978)
!2999 = !DILocation(line: 1030, column: 3, scope: !2988, inlinedAt: !2998)
!3000 = !DILocation(line: 1030, column: 26, scope: !2988, inlinedAt: !2998)
!3001 = !DILocation(line: 1030, column: 30, scope: !2988, inlinedAt: !2998)
!3002 = !DILocation(line: 0, scope: !1741, inlinedAt: !3003)
!3003 = distinct !DILocation(line: 1031, column: 3, scope: !2988, inlinedAt: !2998)
!3004 = !DILocation(line: 184, column: 6, scope: !1741, inlinedAt: !3003)
!3005 = !DILocation(line: 184, column: 12, scope: !1741, inlinedAt: !3003)
!3006 = !DILocation(line: 185, column: 8, scope: !1755, inlinedAt: !3003)
!3007 = !DILocation(line: 185, column: 19, scope: !1755, inlinedAt: !3003)
!3008 = !DILocation(line: 186, column: 5, scope: !1755, inlinedAt: !3003)
!3009 = !DILocation(line: 187, column: 6, scope: !1741, inlinedAt: !3003)
!3010 = !DILocation(line: 187, column: 17, scope: !1741, inlinedAt: !3003)
!3011 = !DILocation(line: 188, column: 6, scope: !1741, inlinedAt: !3003)
!3012 = !DILocation(line: 188, column: 18, scope: !1741, inlinedAt: !3003)
!3013 = !DILocation(line: 1032, column: 10, scope: !2988, inlinedAt: !2998)
!3014 = !DILocation(line: 1033, column: 1, scope: !2988, inlinedAt: !2998)
!3015 = !DILocation(line: 1021, column: 3, scope: !2978)
!3016 = !DILocation(line: 0, scope: !2988)
!3017 = !DILocation(line: 1030, column: 3, scope: !2988)
!3018 = !DILocation(line: 1030, column: 26, scope: !2988)
!3019 = !DILocation(line: 1030, column: 30, scope: !2988)
!3020 = !DILocation(line: 0, scope: !1741, inlinedAt: !3021)
!3021 = distinct !DILocation(line: 1031, column: 3, scope: !2988)
!3022 = !DILocation(line: 184, column: 6, scope: !1741, inlinedAt: !3021)
!3023 = !DILocation(line: 184, column: 12, scope: !1741, inlinedAt: !3021)
!3024 = !DILocation(line: 185, column: 8, scope: !1755, inlinedAt: !3021)
!3025 = !DILocation(line: 185, column: 19, scope: !1755, inlinedAt: !3021)
!3026 = !DILocation(line: 186, column: 5, scope: !1755, inlinedAt: !3021)
!3027 = !DILocation(line: 187, column: 6, scope: !1741, inlinedAt: !3021)
!3028 = !DILocation(line: 187, column: 17, scope: !1741, inlinedAt: !3021)
!3029 = !DILocation(line: 188, column: 6, scope: !1741, inlinedAt: !3021)
!3030 = !DILocation(line: 188, column: 18, scope: !1741, inlinedAt: !3021)
!3031 = !DILocation(line: 1032, column: 10, scope: !2988)
!3032 = !DILocation(line: 1033, column: 1, scope: !2988)
!3033 = !DILocation(line: 1032, column: 3, scope: !2988)
!3034 = distinct !DISubprogram(name: "quotearg_custom", scope: !213, file: !213, line: 1036, type: !3035, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !3037)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!22, !35, !35, !35}
!3037 = !{!3038, !3039, !3040}
!3038 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3034, file: !213, line: 1036, type: !35)
!3039 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3034, file: !213, line: 1036, type: !35)
!3040 = !DILocalVariable(name: "arg", arg: 3, scope: !3034, file: !213, line: 1037, type: !35)
!3041 = !DILocation(line: 0, scope: !3034)
!3042 = !DILocation(line: 0, scope: !2978, inlinedAt: !3043)
!3043 = distinct !DILocation(line: 1039, column: 10, scope: !3034)
!3044 = !DILocation(line: 0, scope: !2988, inlinedAt: !3045)
!3045 = distinct !DILocation(line: 1021, column: 10, scope: !2978, inlinedAt: !3043)
!3046 = !DILocation(line: 1030, column: 3, scope: !2988, inlinedAt: !3045)
!3047 = !DILocation(line: 1030, column: 26, scope: !2988, inlinedAt: !3045)
!3048 = !DILocation(line: 1030, column: 30, scope: !2988, inlinedAt: !3045)
!3049 = !DILocation(line: 0, scope: !1741, inlinedAt: !3050)
!3050 = distinct !DILocation(line: 1031, column: 3, scope: !2988, inlinedAt: !3045)
!3051 = !DILocation(line: 184, column: 6, scope: !1741, inlinedAt: !3050)
!3052 = !DILocation(line: 184, column: 12, scope: !1741, inlinedAt: !3050)
!3053 = !DILocation(line: 185, column: 8, scope: !1755, inlinedAt: !3050)
!3054 = !DILocation(line: 185, column: 19, scope: !1755, inlinedAt: !3050)
!3055 = !DILocation(line: 186, column: 5, scope: !1755, inlinedAt: !3050)
!3056 = !DILocation(line: 187, column: 6, scope: !1741, inlinedAt: !3050)
!3057 = !DILocation(line: 187, column: 17, scope: !1741, inlinedAt: !3050)
!3058 = !DILocation(line: 188, column: 6, scope: !1741, inlinedAt: !3050)
!3059 = !DILocation(line: 188, column: 18, scope: !1741, inlinedAt: !3050)
!3060 = !DILocation(line: 1032, column: 10, scope: !2988, inlinedAt: !3045)
!3061 = !DILocation(line: 1033, column: 1, scope: !2988, inlinedAt: !3045)
!3062 = !DILocation(line: 1039, column: 3, scope: !3034)
!3063 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !213, file: !213, line: 1043, type: !3064, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !3066)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{!22, !35, !35, !35, !33}
!3066 = !{!3067, !3068, !3069, !3070}
!3067 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3063, file: !213, line: 1043, type: !35)
!3068 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3063, file: !213, line: 1043, type: !35)
!3069 = !DILocalVariable(name: "arg", arg: 3, scope: !3063, file: !213, line: 1044, type: !35)
!3070 = !DILocalVariable(name: "argsize", arg: 4, scope: !3063, file: !213, line: 1044, type: !33)
!3071 = !DILocation(line: 0, scope: !3063)
!3072 = !DILocation(line: 0, scope: !2988, inlinedAt: !3073)
!3073 = distinct !DILocation(line: 1046, column: 10, scope: !3063)
!3074 = !DILocation(line: 1030, column: 3, scope: !2988, inlinedAt: !3073)
!3075 = !DILocation(line: 1030, column: 26, scope: !2988, inlinedAt: !3073)
!3076 = !DILocation(line: 1030, column: 30, scope: !2988, inlinedAt: !3073)
!3077 = !DILocation(line: 0, scope: !1741, inlinedAt: !3078)
!3078 = distinct !DILocation(line: 1031, column: 3, scope: !2988, inlinedAt: !3073)
!3079 = !DILocation(line: 184, column: 6, scope: !1741, inlinedAt: !3078)
!3080 = !DILocation(line: 184, column: 12, scope: !1741, inlinedAt: !3078)
!3081 = !DILocation(line: 185, column: 8, scope: !1755, inlinedAt: !3078)
!3082 = !DILocation(line: 185, column: 19, scope: !1755, inlinedAt: !3078)
!3083 = !DILocation(line: 186, column: 5, scope: !1755, inlinedAt: !3078)
!3084 = !DILocation(line: 187, column: 6, scope: !1741, inlinedAt: !3078)
!3085 = !DILocation(line: 187, column: 17, scope: !1741, inlinedAt: !3078)
!3086 = !DILocation(line: 188, column: 6, scope: !1741, inlinedAt: !3078)
!3087 = !DILocation(line: 188, column: 18, scope: !1741, inlinedAt: !3078)
!3088 = !DILocation(line: 1032, column: 10, scope: !2988, inlinedAt: !3073)
!3089 = !DILocation(line: 1033, column: 1, scope: !2988, inlinedAt: !3073)
!3090 = !DILocation(line: 1046, column: 3, scope: !3063)
!3091 = distinct !DISubprogram(name: "quote_n_mem", scope: !213, file: !213, line: 1061, type: !3092, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !3094)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{!35, !31, !35, !33}
!3094 = !{!3095, !3096, !3097}
!3095 = !DILocalVariable(name: "n", arg: 1, scope: !3091, file: !213, line: 1061, type: !31)
!3096 = !DILocalVariable(name: "arg", arg: 2, scope: !3091, file: !213, line: 1061, type: !35)
!3097 = !DILocalVariable(name: "argsize", arg: 3, scope: !3091, file: !213, line: 1061, type: !33)
!3098 = !DILocation(line: 0, scope: !3091)
!3099 = !DILocation(line: 1063, column: 10, scope: !3091)
!3100 = !DILocation(line: 1063, column: 3, scope: !3091)
!3101 = distinct !DISubprogram(name: "quote_mem", scope: !213, file: !213, line: 1067, type: !3102, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !3104)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!35, !35, !33}
!3104 = !{!3105, !3106}
!3105 = !DILocalVariable(name: "arg", arg: 1, scope: !3101, file: !213, line: 1067, type: !35)
!3106 = !DILocalVariable(name: "argsize", arg: 2, scope: !3101, file: !213, line: 1067, type: !33)
!3107 = !DILocation(line: 0, scope: !3101)
!3108 = !DILocation(line: 0, scope: !3091, inlinedAt: !3109)
!3109 = distinct !DILocation(line: 1069, column: 10, scope: !3101)
!3110 = !DILocation(line: 1063, column: 10, scope: !3091, inlinedAt: !3109)
!3111 = !DILocation(line: 1069, column: 3, scope: !3101)
!3112 = distinct !DISubprogram(name: "quote_n", scope: !213, file: !213, line: 1073, type: !3113, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !3115)
!3113 = !DISubroutineType(types: !3114)
!3114 = !{!35, !31, !35}
!3115 = !{!3116, !3117}
!3116 = !DILocalVariable(name: "n", arg: 1, scope: !3112, file: !213, line: 1073, type: !31)
!3117 = !DILocalVariable(name: "arg", arg: 2, scope: !3112, file: !213, line: 1073, type: !35)
!3118 = !DILocation(line: 0, scope: !3112)
!3119 = !DILocation(line: 0, scope: !3091, inlinedAt: !3120)
!3120 = distinct !DILocation(line: 1075, column: 10, scope: !3112)
!3121 = !DILocation(line: 1063, column: 10, scope: !3091, inlinedAt: !3120)
!3122 = !DILocation(line: 1075, column: 3, scope: !3112)
!3123 = distinct !DISubprogram(name: "quote", scope: !213, file: !213, line: 1079, type: !3124, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !3126)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{!35, !35}
!3126 = !{!3127}
!3127 = !DILocalVariable(name: "arg", arg: 1, scope: !3123, file: !213, line: 1079, type: !35)
!3128 = !DILocation(line: 0, scope: !3123)
!3129 = !DILocation(line: 0, scope: !3112, inlinedAt: !3130)
!3130 = distinct !DILocation(line: 1081, column: 10, scope: !3123)
!3131 = !DILocation(line: 0, scope: !3091, inlinedAt: !3132)
!3132 = distinct !DILocation(line: 1075, column: 10, scope: !3112, inlinedAt: !3130)
!3133 = !DILocation(line: 1063, column: 10, scope: !3091, inlinedAt: !3132)
!3134 = !DILocation(line: 1081, column: 3, scope: !3123)
!3135 = distinct !DISubprogram(name: "version_etc_arn", scope: !274, file: !274, line: 61, type: !3136, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !3173)
!3136 = !DISubroutineType(types: !3137)
!3137 = !{null, !3138, !35, !35, !35, !3172, !33}
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !104, line: 7, baseType: !3140)
!3140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !106, line: 49, size: 1728, elements: !3141)
!3141 = !{!3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3140, file: !106, line: 51, baseType: !31, size: 32)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3140, file: !106, line: 54, baseType: !22, size: 64, offset: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3140, file: !106, line: 55, baseType: !22, size: 64, offset: 128)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3140, file: !106, line: 56, baseType: !22, size: 64, offset: 192)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3140, file: !106, line: 57, baseType: !22, size: 64, offset: 256)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3140, file: !106, line: 58, baseType: !22, size: 64, offset: 320)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3140, file: !106, line: 59, baseType: !22, size: 64, offset: 384)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3140, file: !106, line: 60, baseType: !22, size: 64, offset: 448)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3140, file: !106, line: 61, baseType: !22, size: 64, offset: 512)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3140, file: !106, line: 64, baseType: !22, size: 64, offset: 576)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3140, file: !106, line: 65, baseType: !22, size: 64, offset: 640)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3140, file: !106, line: 66, baseType: !22, size: 64, offset: 704)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3140, file: !106, line: 68, baseType: !121, size: 64, offset: 768)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3140, file: !106, line: 70, baseType: !3156, size: 64, offset: 832)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3140, file: !106, line: 72, baseType: !31, size: 32, offset: 896)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3140, file: !106, line: 73, baseType: !31, size: 32, offset: 928)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3140, file: !106, line: 74, baseType: !128, size: 64, offset: 960)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3140, file: !106, line: 77, baseType: !32, size: 16, offset: 1024)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3140, file: !106, line: 78, baseType: !132, size: 8, offset: 1040)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3140, file: !106, line: 79, baseType: !134, size: 8, offset: 1048)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3140, file: !106, line: 81, baseType: !138, size: 64, offset: 1088)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3140, file: !106, line: 89, baseType: !141, size: 64, offset: 1152)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3140, file: !106, line: 91, baseType: !143, size: 64, offset: 1216)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3140, file: !106, line: 92, baseType: !146, size: 64, offset: 1280)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3140, file: !106, line: 93, baseType: !3156, size: 64, offset: 1344)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3140, file: !106, line: 94, baseType: !24, size: 64, offset: 1408)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3140, file: !106, line: 95, baseType: !33, size: 64, offset: 1472)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3140, file: !106, line: 96, baseType: !31, size: 32, offset: 1536)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3140, file: !106, line: 98, baseType: !153, size: 160, offset: 1568)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!3173 = !{!3174, !3175, !3176, !3177, !3178, !3179}
!3174 = !DILocalVariable(name: "stream", arg: 1, scope: !3135, file: !274, line: 61, type: !3138)
!3175 = !DILocalVariable(name: "command_name", arg: 2, scope: !3135, file: !274, line: 62, type: !35)
!3176 = !DILocalVariable(name: "package", arg: 3, scope: !3135, file: !274, line: 62, type: !35)
!3177 = !DILocalVariable(name: "version", arg: 4, scope: !3135, file: !274, line: 63, type: !35)
!3178 = !DILocalVariable(name: "authors", arg: 5, scope: !3135, file: !274, line: 64, type: !3172)
!3179 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3135, file: !274, line: 64, type: !33)
!3180 = !DILocation(line: 0, scope: !3135)
!3181 = !DILocation(line: 66, column: 7, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3135, file: !274, line: 66, column: 7)
!3183 = !DILocation(line: 66, column: 7, scope: !3135)
!3184 = !DILocation(line: 67, column: 5, scope: !3182)
!3185 = !DILocation(line: 69, column: 5, scope: !3182)
!3186 = !DILocation(line: 83, column: 3, scope: !3135)
!3187 = !DILocation(line: 85, column: 3, scope: !3135)
!3188 = !DILocation(line: 88, column: 3, scope: !3135)
!3189 = !DILocation(line: 95, column: 3, scope: !3135)
!3190 = !DILocation(line: 97, column: 3, scope: !3135)
!3191 = !DILocation(line: 105, column: 7, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !3135, file: !274, line: 98, column: 5)
!3193 = !DILocation(line: 106, column: 7, scope: !3192)
!3194 = !DILocation(line: 109, column: 7, scope: !3192)
!3195 = !DILocation(line: 110, column: 7, scope: !3192)
!3196 = !DILocation(line: 113, column: 7, scope: !3192)
!3197 = !DILocation(line: 115, column: 7, scope: !3192)
!3198 = !DILocation(line: 120, column: 7, scope: !3192)
!3199 = !DILocation(line: 122, column: 7, scope: !3192)
!3200 = !DILocation(line: 127, column: 7, scope: !3192)
!3201 = !DILocation(line: 129, column: 7, scope: !3192)
!3202 = !DILocation(line: 134, column: 7, scope: !3192)
!3203 = !DILocation(line: 137, column: 7, scope: !3192)
!3204 = !DILocation(line: 142, column: 7, scope: !3192)
!3205 = !DILocation(line: 145, column: 7, scope: !3192)
!3206 = !DILocation(line: 150, column: 7, scope: !3192)
!3207 = !DILocation(line: 154, column: 7, scope: !3192)
!3208 = !DILocation(line: 159, column: 7, scope: !3192)
!3209 = !DILocation(line: 163, column: 7, scope: !3192)
!3210 = !DILocation(line: 170, column: 7, scope: !3192)
!3211 = !DILocation(line: 174, column: 7, scope: !3192)
!3212 = !DILocation(line: 176, column: 1, scope: !3135)
!3213 = distinct !DISubprogram(name: "version_etc_ar", scope: !274, file: !274, line: 183, type: !3214, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !3216)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{null, !3138, !35, !35, !35, !3172}
!3216 = !{!3217, !3218, !3219, !3220, !3221, !3222}
!3217 = !DILocalVariable(name: "stream", arg: 1, scope: !3213, file: !274, line: 183, type: !3138)
!3218 = !DILocalVariable(name: "command_name", arg: 2, scope: !3213, file: !274, line: 184, type: !35)
!3219 = !DILocalVariable(name: "package", arg: 3, scope: !3213, file: !274, line: 184, type: !35)
!3220 = !DILocalVariable(name: "version", arg: 4, scope: !3213, file: !274, line: 185, type: !35)
!3221 = !DILocalVariable(name: "authors", arg: 5, scope: !3213, file: !274, line: 185, type: !3172)
!3222 = !DILocalVariable(name: "n_authors", scope: !3213, file: !274, line: 187, type: !33)
!3223 = !DILocation(line: 0, scope: !3213)
!3224 = !DILocation(line: 189, column: 8, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3213, file: !274, line: 189, column: 3)
!3226 = !DILocation(line: 0, scope: !3225)
!3227 = !DILocation(line: 189, column: 23, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3225, file: !274, line: 189, column: 3)
!3229 = !DILocation(line: 189, column: 3, scope: !3225)
!3230 = !DILocation(line: 189, column: 52, scope: !3228)
!3231 = distinct !{!3231, !3229, !3232, !770}
!3232 = !DILocation(line: 190, column: 5, scope: !3225)
!3233 = !DILocation(line: 191, column: 3, scope: !3213)
!3234 = !DILocation(line: 192, column: 1, scope: !3213)
!3235 = distinct !DISubprogram(name: "version_etc_va", scope: !274, file: !274, line: 199, type: !3236, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !3245)
!3236 = !DISubroutineType(types: !3237)
!3237 = !{null, !3138, !35, !35, !35, !3238}
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3240)
!3240 = !{!3241, !3242, !3243, !3244}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3239, file: !274, line: 192, baseType: !7, size: 32)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3239, file: !274, line: 192, baseType: !7, size: 32, offset: 32)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3239, file: !274, line: 192, baseType: !24, size: 64, offset: 64)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3239, file: !274, line: 192, baseType: !24, size: 64, offset: 128)
!3245 = !{!3246, !3247, !3248, !3249, !3250, !3251, !3252}
!3246 = !DILocalVariable(name: "stream", arg: 1, scope: !3235, file: !274, line: 199, type: !3138)
!3247 = !DILocalVariable(name: "command_name", arg: 2, scope: !3235, file: !274, line: 200, type: !35)
!3248 = !DILocalVariable(name: "package", arg: 3, scope: !3235, file: !274, line: 200, type: !35)
!3249 = !DILocalVariable(name: "version", arg: 4, scope: !3235, file: !274, line: 201, type: !35)
!3250 = !DILocalVariable(name: "authors", arg: 5, scope: !3235, file: !274, line: 201, type: !3238)
!3251 = !DILocalVariable(name: "n_authors", scope: !3235, file: !274, line: 203, type: !33)
!3252 = !DILocalVariable(name: "authtab", scope: !3235, file: !274, line: 204, type: !3253)
!3253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 640, elements: !226)
!3254 = !DILocation(line: 0, scope: !3235)
!3255 = !DILocation(line: 204, column: 3, scope: !3235)
!3256 = !DILocation(line: 204, column: 15, scope: !3235)
!3257 = !DILocation(line: 208, column: 35, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3259, file: !274, line: 206, column: 3)
!3259 = distinct !DILexicalBlock(scope: !3235, file: !274, line: 206, column: 3)
!3260 = !DILocation(line: 208, column: 14, scope: !3258)
!3261 = !DILocation(line: 208, column: 33, scope: !3258)
!3262 = !DILocation(line: 208, column: 67, scope: !3258)
!3263 = !DILocation(line: 206, column: 3, scope: !3259)
!3264 = !DILocation(line: 0, scope: !3259)
!3265 = !DILocation(line: 211, column: 3, scope: !3235)
!3266 = !DILocation(line: 213, column: 1, scope: !3235)
!3267 = distinct !DISubprogram(name: "version_etc", scope: !274, file: !274, line: 230, type: !3268, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !3270)
!3268 = !DISubroutineType(types: !3269)
!3269 = !{null, !3138, !35, !35, !35, null}
!3270 = !{!3271, !3272, !3273, !3274, !3275}
!3271 = !DILocalVariable(name: "stream", arg: 1, scope: !3267, file: !274, line: 230, type: !3138)
!3272 = !DILocalVariable(name: "command_name", arg: 2, scope: !3267, file: !274, line: 231, type: !35)
!3273 = !DILocalVariable(name: "package", arg: 3, scope: !3267, file: !274, line: 231, type: !35)
!3274 = !DILocalVariable(name: "version", arg: 4, scope: !3267, file: !274, line: 232, type: !35)
!3275 = !DILocalVariable(name: "authors", scope: !3267, file: !274, line: 234, type: !3276)
!3276 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !795, line: 52, baseType: !3277)
!3277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3278, line: 32, baseType: !3279)
!3278 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!3279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !274, baseType: !3280)
!3280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3239, size: 192, elements: !135)
!3281 = !DILocation(line: 0, scope: !3267)
!3282 = !DILocation(line: 234, column: 3, scope: !3267)
!3283 = !DILocation(line: 234, column: 11, scope: !3267)
!3284 = !DILocation(line: 236, column: 3, scope: !3267)
!3285 = !DILocation(line: 237, column: 3, scope: !3267)
!3286 = !DILocation(line: 238, column: 3, scope: !3267)
!3287 = !DILocation(line: 239, column: 1, scope: !3267)
!3288 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !274, file: !274, line: 242, type: !728, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !189)
!3289 = !DILocation(line: 244, column: 3, scope: !3288)
!3290 = !DILocation(line: 249, column: 3, scope: !3288)
!3291 = !DILocation(line: 255, column: 3, scope: !3288)
!3292 = !DILocation(line: 260, column: 3, scope: !3288)
!3293 = !DILocation(line: 262, column: 1, scope: !3288)
!3294 = distinct !DISubprogram(name: "xnmalloc", scope: !81, file: !81, line: 99, type: !3295, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !280, retainedNodes: !3297)
!3295 = !DISubroutineType(types: !3296)
!3296 = !{!24, !33, !33}
!3297 = !{!3298, !3299}
!3298 = !DILocalVariable(name: "n", arg: 1, scope: !3294, file: !81, line: 99, type: !33)
!3299 = !DILocalVariable(name: "s", arg: 2, scope: !3294, file: !81, line: 99, type: !33)
!3300 = !DILocation(line: 0, scope: !3294)
!3301 = !DILocation(line: 101, column: 7, scope: !3302)
!3302 = distinct !DILexicalBlock(scope: !3294, file: !81, line: 101, column: 7)
!3303 = !DILocation(line: 101, column: 7, scope: !3294)
!3304 = !DILocation(line: 102, column: 5, scope: !3302)
!3305 = !DILocation(line: 103, column: 21, scope: !3294)
!3306 = !DILocalVariable(name: "n", arg: 1, scope: !3307, file: !281, line: 39, type: !33)
!3307 = distinct !DISubprogram(name: "xmalloc", scope: !281, file: !281, line: 39, type: !3308, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !280, retainedNodes: !3310)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{!24, !33}
!3310 = !{!3306, !3311}
!3311 = !DILocalVariable(name: "p", scope: !3307, file: !281, line: 41, type: !24)
!3312 = !DILocation(line: 0, scope: !3307, inlinedAt: !3313)
!3313 = distinct !DILocation(line: 103, column: 10, scope: !3294)
!3314 = !DILocation(line: 41, column: 13, scope: !3307, inlinedAt: !3313)
!3315 = !DILocation(line: 42, column: 8, scope: !3316, inlinedAt: !3313)
!3316 = distinct !DILexicalBlock(scope: !3307, file: !281, line: 42, column: 7)
!3317 = !DILocation(line: 42, column: 10, scope: !3316, inlinedAt: !3313)
!3318 = !DILocation(line: 43, column: 5, scope: !3316, inlinedAt: !3313)
!3319 = !DILocation(line: 103, column: 3, scope: !3294)
!3320 = !DILocation(line: 0, scope: !3307)
!3321 = !DILocation(line: 41, column: 13, scope: !3307)
!3322 = !DILocation(line: 42, column: 8, scope: !3316)
!3323 = !DILocation(line: 42, column: 10, scope: !3316)
!3324 = !DILocation(line: 43, column: 5, scope: !3316)
!3325 = !DILocation(line: 44, column: 3, scope: !3307)
!3326 = distinct !DISubprogram(name: "xnrealloc", scope: !81, file: !81, line: 112, type: !3327, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !280, retainedNodes: !3329)
!3327 = !DISubroutineType(types: !3328)
!3328 = !{!24, !24, !33, !33}
!3329 = !{!3330, !3331, !3332}
!3330 = !DILocalVariable(name: "p", arg: 1, scope: !3326, file: !81, line: 112, type: !24)
!3331 = !DILocalVariable(name: "n", arg: 2, scope: !3326, file: !81, line: 112, type: !33)
!3332 = !DILocalVariable(name: "s", arg: 3, scope: !3326, file: !81, line: 112, type: !33)
!3333 = !DILocation(line: 0, scope: !3326)
!3334 = !DILocation(line: 114, column: 7, scope: !3335)
!3335 = distinct !DILexicalBlock(scope: !3326, file: !81, line: 114, column: 7)
!3336 = !DILocation(line: 114, column: 7, scope: !3326)
!3337 = !DILocation(line: 115, column: 5, scope: !3335)
!3338 = !DILocation(line: 116, column: 25, scope: !3326)
!3339 = !DILocalVariable(name: "p", arg: 1, scope: !3340, file: !281, line: 51, type: !24)
!3340 = distinct !DISubprogram(name: "xrealloc", scope: !281, file: !281, line: 51, type: !3341, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !280, retainedNodes: !3343)
!3341 = !DISubroutineType(types: !3342)
!3342 = !{!24, !24, !33}
!3343 = !{!3339, !3344}
!3344 = !DILocalVariable(name: "n", arg: 2, scope: !3340, file: !281, line: 51, type: !33)
!3345 = !DILocation(line: 0, scope: !3340, inlinedAt: !3346)
!3346 = distinct !DILocation(line: 116, column: 10, scope: !3326)
!3347 = !DILocation(line: 53, column: 8, scope: !3348, inlinedAt: !3346)
!3348 = distinct !DILexicalBlock(scope: !3340, file: !281, line: 53, column: 7)
!3349 = !DILocation(line: 53, column: 10, scope: !3348, inlinedAt: !3346)
!3350 = !DILocation(line: 57, column: 7, scope: !3351, inlinedAt: !3346)
!3351 = distinct !DILexicalBlock(scope: !3348, file: !281, line: 54, column: 5)
!3352 = !DILocation(line: 58, column: 7, scope: !3351, inlinedAt: !3346)
!3353 = !DILocation(line: 61, column: 7, scope: !3340, inlinedAt: !3346)
!3354 = !DILocation(line: 62, column: 8, scope: !3355, inlinedAt: !3346)
!3355 = distinct !DILexicalBlock(scope: !3340, file: !281, line: 62, column: 7)
!3356 = !DILocation(line: 62, column: 10, scope: !3355, inlinedAt: !3346)
!3357 = !DILocation(line: 63, column: 5, scope: !3355, inlinedAt: !3346)
!3358 = !DILocation(line: 116, column: 3, scope: !3326)
!3359 = !DILocation(line: 0, scope: !3340)
!3360 = !DILocation(line: 53, column: 8, scope: !3348)
!3361 = !DILocation(line: 53, column: 10, scope: !3348)
!3362 = !DILocation(line: 57, column: 7, scope: !3351)
!3363 = !DILocation(line: 58, column: 7, scope: !3351)
!3364 = !DILocation(line: 61, column: 7, scope: !3340)
!3365 = !DILocation(line: 62, column: 8, scope: !3355)
!3366 = !DILocation(line: 62, column: 10, scope: !3355)
!3367 = !DILocation(line: 63, column: 5, scope: !3355)
!3368 = !DILocation(line: 65, column: 1, scope: !3340)
!3369 = !DILocation(line: 0, scope: !284)
!3370 = !DILocation(line: 176, column: 14, scope: !284)
!3371 = !DILocation(line: 178, column: 9, scope: !3372)
!3372 = distinct !DILexicalBlock(scope: !284, file: !81, line: 178, column: 7)
!3373 = !DILocation(line: 178, column: 7, scope: !284)
!3374 = !DILocation(line: 180, column: 13, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3376, file: !81, line: 180, column: 11)
!3376 = distinct !DILexicalBlock(scope: !3372, file: !81, line: 179, column: 5)
!3377 = !DILocation(line: 180, column: 11, scope: !3376)
!3378 = !DILocation(line: 188, column: 30, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3375, file: !81, line: 181, column: 9)
!3380 = !DILocation(line: 189, column: 16, scope: !3379)
!3381 = !DILocation(line: 189, column: 13, scope: !3379)
!3382 = !DILocation(line: 190, column: 9, scope: !3379)
!3383 = !DILocation(line: 191, column: 11, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3376, file: !81, line: 191, column: 11)
!3385 = !DILocation(line: 191, column: 11, scope: !3376)
!3386 = !DILocation(line: 206, column: 7, scope: !284)
!3387 = !DILocation(line: 207, column: 25, scope: !284)
!3388 = !DILocation(line: 0, scope: !3340, inlinedAt: !3389)
!3389 = distinct !DILocation(line: 207, column: 10, scope: !284)
!3390 = !DILocation(line: 53, column: 10, scope: !3348, inlinedAt: !3389)
!3391 = !DILocation(line: 192, column: 9, scope: !3384)
!3392 = !DILocation(line: 200, column: 69, scope: !3393)
!3393 = distinct !DILexicalBlock(scope: !3394, file: !81, line: 200, column: 11)
!3394 = distinct !DILexicalBlock(scope: !3372, file: !81, line: 195, column: 5)
!3395 = !DILocation(line: 201, column: 11, scope: !3393)
!3396 = !DILocation(line: 200, column: 11, scope: !3394)
!3397 = !DILocation(line: 202, column: 9, scope: !3393)
!3398 = !DILocation(line: 203, column: 14, scope: !3394)
!3399 = !DILocation(line: 203, column: 18, scope: !3394)
!3400 = !DILocation(line: 203, column: 9, scope: !3394)
!3401 = !DILocation(line: 53, column: 8, scope: !3348, inlinedAt: !3389)
!3402 = !DILocation(line: 57, column: 7, scope: !3351, inlinedAt: !3389)
!3403 = !DILocation(line: 58, column: 7, scope: !3351, inlinedAt: !3389)
!3404 = !DILocation(line: 61, column: 7, scope: !3340, inlinedAt: !3389)
!3405 = !DILocation(line: 62, column: 8, scope: !3355, inlinedAt: !3389)
!3406 = !DILocation(line: 62, column: 10, scope: !3355, inlinedAt: !3389)
!3407 = !DILocation(line: 63, column: 5, scope: !3355, inlinedAt: !3389)
!3408 = !DILocation(line: 207, column: 3, scope: !284)
!3409 = distinct !DISubprogram(name: "xcharalloc", scope: !81, file: !81, line: 216, type: !2548, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !280, retainedNodes: !3410)
!3410 = !{!3411}
!3411 = !DILocalVariable(name: "n", arg: 1, scope: !3409, file: !81, line: 216, type: !33)
!3412 = !DILocation(line: 0, scope: !3409)
!3413 = !DILocation(line: 0, scope: !3307, inlinedAt: !3414)
!3414 = distinct !DILocation(line: 218, column: 10, scope: !3409)
!3415 = !DILocation(line: 41, column: 13, scope: !3307, inlinedAt: !3414)
!3416 = !DILocation(line: 42, column: 8, scope: !3316, inlinedAt: !3414)
!3417 = !DILocation(line: 42, column: 10, scope: !3316, inlinedAt: !3414)
!3418 = !DILocation(line: 43, column: 5, scope: !3316, inlinedAt: !3414)
!3419 = !DILocation(line: 218, column: 3, scope: !3409)
!3420 = distinct !DISubprogram(name: "x2realloc", scope: !281, file: !281, line: 74, type: !3421, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !280, retainedNodes: !3423)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{!24, !24, !85}
!3423 = !{!3424, !3425}
!3424 = !DILocalVariable(name: "p", arg: 1, scope: !3420, file: !281, line: 74, type: !24)
!3425 = !DILocalVariable(name: "pn", arg: 2, scope: !3420, file: !281, line: 74, type: !85)
!3426 = !DILocation(line: 0, scope: !3420)
!3427 = !DILocation(line: 0, scope: !284, inlinedAt: !3428)
!3428 = distinct !DILocation(line: 76, column: 10, scope: !3420)
!3429 = !DILocation(line: 176, column: 14, scope: !284, inlinedAt: !3428)
!3430 = !DILocation(line: 178, column: 9, scope: !3372, inlinedAt: !3428)
!3431 = !DILocation(line: 178, column: 7, scope: !284, inlinedAt: !3428)
!3432 = !DILocation(line: 180, column: 13, scope: !3375, inlinedAt: !3428)
!3433 = !DILocation(line: 180, column: 11, scope: !3376, inlinedAt: !3428)
!3434 = !DILocation(line: 191, column: 11, scope: !3384, inlinedAt: !3428)
!3435 = !DILocation(line: 191, column: 11, scope: !3376, inlinedAt: !3428)
!3436 = !DILocation(line: 192, column: 9, scope: !3384, inlinedAt: !3428)
!3437 = !DILocation(line: 201, column: 11, scope: !3393, inlinedAt: !3428)
!3438 = !DILocation(line: 200, column: 11, scope: !3394, inlinedAt: !3428)
!3439 = !DILocation(line: 202, column: 9, scope: !3393, inlinedAt: !3428)
!3440 = !DILocation(line: 203, column: 14, scope: !3394, inlinedAt: !3428)
!3441 = !DILocation(line: 203, column: 18, scope: !3394, inlinedAt: !3428)
!3442 = !DILocation(line: 203, column: 9, scope: !3394, inlinedAt: !3428)
!3443 = !DILocation(line: 0, scope: !3340, inlinedAt: !3444)
!3444 = distinct !DILocation(line: 207, column: 10, scope: !284, inlinedAt: !3428)
!3445 = !DILocation(line: 53, column: 10, scope: !3348, inlinedAt: !3444)
!3446 = !DILocation(line: 206, column: 7, scope: !284, inlinedAt: !3428)
!3447 = !DILocation(line: 61, column: 7, scope: !3340, inlinedAt: !3444)
!3448 = !DILocation(line: 62, column: 8, scope: !3355, inlinedAt: !3444)
!3449 = !DILocation(line: 62, column: 10, scope: !3355, inlinedAt: !3444)
!3450 = !DILocation(line: 63, column: 5, scope: !3355, inlinedAt: !3444)
!3451 = !DILocation(line: 76, column: 3, scope: !3420)
!3452 = distinct !DISubprogram(name: "xzalloc", scope: !281, file: !281, line: 84, type: !3308, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !280, retainedNodes: !3453)
!3453 = !{!3454}
!3454 = !DILocalVariable(name: "n", arg: 1, scope: !3452, file: !281, line: 84, type: !33)
!3455 = !DILocation(line: 0, scope: !3452)
!3456 = !DILocalVariable(name: "n", arg: 1, scope: !3457, file: !281, line: 93, type: !33)
!3457 = distinct !DISubprogram(name: "xcalloc", scope: !281, file: !281, line: 93, type: !3295, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !280, retainedNodes: !3458)
!3458 = !{!3456, !3459, !3460}
!3459 = !DILocalVariable(name: "s", arg: 2, scope: !3457, file: !281, line: 93, type: !33)
!3460 = !DILocalVariable(name: "p", scope: !3457, file: !281, line: 95, type: !24)
!3461 = !DILocation(line: 0, scope: !3457, inlinedAt: !3462)
!3462 = distinct !DILocation(line: 86, column: 10, scope: !3452)
!3463 = !DILocation(line: 100, column: 7, scope: !3464, inlinedAt: !3462)
!3464 = distinct !DILexicalBlock(scope: !3457, file: !281, line: 100, column: 7)
!3465 = !DILocation(line: 101, column: 7, scope: !3464, inlinedAt: !3462)
!3466 = !DILocation(line: 101, column: 18, scope: !3464, inlinedAt: !3462)
!3467 = !DILocation(line: 101, column: 16, scope: !3464, inlinedAt: !3462)
!3468 = !DILocation(line: 100, column: 7, scope: !3457, inlinedAt: !3462)
!3469 = !DILocation(line: 102, column: 5, scope: !3464, inlinedAt: !3462)
!3470 = !DILocation(line: 86, column: 3, scope: !3452)
!3471 = !DILocation(line: 0, scope: !3457)
!3472 = !DILocation(line: 100, column: 7, scope: !3464)
!3473 = !DILocation(line: 101, column: 7, scope: !3464)
!3474 = !DILocation(line: 101, column: 18, scope: !3464)
!3475 = !DILocation(line: 101, column: 16, scope: !3464)
!3476 = !DILocation(line: 100, column: 7, scope: !3457)
!3477 = !DILocation(line: 102, column: 5, scope: !3464)
!3478 = !DILocation(line: 103, column: 3, scope: !3457)
!3479 = distinct !DISubprogram(name: "xmemdup", scope: !281, file: !281, line: 111, type: !3480, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !280, retainedNodes: !3482)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{!24, !1093, !33}
!3482 = !{!3483, !3484}
!3483 = !DILocalVariable(name: "p", arg: 1, scope: !3479, file: !281, line: 111, type: !1093)
!3484 = !DILocalVariable(name: "s", arg: 2, scope: !3479, file: !281, line: 111, type: !33)
!3485 = !DILocation(line: 0, scope: !3479)
!3486 = !DILocation(line: 0, scope: !3307, inlinedAt: !3487)
!3487 = distinct !DILocation(line: 113, column: 18, scope: !3479)
!3488 = !DILocation(line: 41, column: 13, scope: !3307, inlinedAt: !3487)
!3489 = !DILocation(line: 42, column: 8, scope: !3316, inlinedAt: !3487)
!3490 = !DILocation(line: 42, column: 10, scope: !3316, inlinedAt: !3487)
!3491 = !DILocation(line: 43, column: 5, scope: !3316, inlinedAt: !3487)
!3492 = !DILocalVariable(name: "__dest", arg: 1, scope: !3493, file: !2075, line: 26, type: !3496)
!3493 = distinct !DISubprogram(name: "memcpy", scope: !2075, file: !2075, line: 26, type: !3494, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !280, retainedNodes: !3498)
!3494 = !DISubroutineType(types: !3495)
!3495 = !{!24, !3496, !3497, !33}
!3496 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !24)
!3497 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1093)
!3498 = !{!3492, !3499, !3500}
!3499 = !DILocalVariable(name: "__src", arg: 2, scope: !3493, file: !2075, line: 26, type: !3497)
!3500 = !DILocalVariable(name: "__len", arg: 3, scope: !3493, file: !2075, line: 26, type: !33)
!3501 = !DILocation(line: 0, scope: !3493, inlinedAt: !3502)
!3502 = distinct !DILocation(line: 113, column: 10, scope: !3479)
!3503 = !DILocation(line: 29, column: 10, scope: !3493, inlinedAt: !3502)
!3504 = !DILocation(line: 113, column: 3, scope: !3479)
!3505 = distinct !DISubprogram(name: "xstrdup", scope: !281, file: !281, line: 119, type: !1073, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !280, retainedNodes: !3506)
!3506 = !{!3507}
!3507 = !DILocalVariable(name: "string", arg: 1, scope: !3505, file: !281, line: 119, type: !35)
!3508 = !DILocation(line: 0, scope: !3505)
!3509 = !DILocation(line: 121, column: 27, scope: !3505)
!3510 = !DILocation(line: 121, column: 43, scope: !3505)
!3511 = !DILocation(line: 0, scope: !3479, inlinedAt: !3512)
!3512 = distinct !DILocation(line: 121, column: 10, scope: !3505)
!3513 = !DILocation(line: 0, scope: !3307, inlinedAt: !3514)
!3514 = distinct !DILocation(line: 113, column: 18, scope: !3479, inlinedAt: !3512)
!3515 = !DILocation(line: 41, column: 13, scope: !3307, inlinedAt: !3514)
!3516 = !DILocation(line: 42, column: 8, scope: !3316, inlinedAt: !3514)
!3517 = !DILocation(line: 42, column: 10, scope: !3316, inlinedAt: !3514)
!3518 = !DILocation(line: 43, column: 5, scope: !3316, inlinedAt: !3514)
!3519 = !DILocation(line: 0, scope: !3493, inlinedAt: !3520)
!3520 = distinct !DILocation(line: 113, column: 10, scope: !3479, inlinedAt: !3512)
!3521 = !DILocation(line: 29, column: 10, scope: !3493, inlinedAt: !3520)
!3522 = !DILocation(line: 121, column: 3, scope: !3505)
!3523 = distinct !DISubprogram(name: "xalloc_die", scope: !292, file: !292, line: 32, type: !728, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !291, retainedNodes: !189)
!3524 = !DILocation(line: 34, column: 10, scope: !3523)
!3525 = !DILocation(line: 34, column: 33, scope: !3523)
!3526 = !DILocation(line: 34, column: 3, scope: !3523)
!3527 = !DILocation(line: 40, column: 3, scope: !3523)
!3528 = distinct !DISubprogram(name: "xstrndup", scope: !294, file: !294, line: 30, type: !2737, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !293, retainedNodes: !3529)
!3529 = !{!3530, !3531, !3532}
!3530 = !DILocalVariable(name: "string", arg: 1, scope: !3528, file: !294, line: 30, type: !35)
!3531 = !DILocalVariable(name: "n", arg: 2, scope: !3528, file: !294, line: 30, type: !33)
!3532 = !DILocalVariable(name: "s", scope: !3528, file: !294, line: 32, type: !22)
!3533 = !DILocation(line: 0, scope: !3528)
!3534 = !DILocation(line: 32, column: 13, scope: !3528)
!3535 = !DILocation(line: 33, column: 9, scope: !3536)
!3536 = distinct !DILexicalBlock(scope: !3528, file: !294, line: 33, column: 7)
!3537 = !DILocation(line: 33, column: 7, scope: !3528)
!3538 = !DILocation(line: 34, column: 5, scope: !3536)
!3539 = !DILocation(line: 35, column: 3, scope: !3528)
!3540 = distinct !DISubprogram(name: "rpl_calloc", scope: !296, file: !296, line: 42, type: !3295, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !295, retainedNodes: !3541)
!3541 = !{!3542, !3543, !3544, !3545}
!3542 = !DILocalVariable(name: "n", arg: 1, scope: !3540, file: !296, line: 42, type: !33)
!3543 = !DILocalVariable(name: "s", arg: 2, scope: !3540, file: !296, line: 42, type: !33)
!3544 = !DILocalVariable(name: "result", scope: !3540, file: !296, line: 44, type: !24)
!3545 = !DILocalVariable(name: "bytes", scope: !3546, file: !296, line: 56, type: !33)
!3546 = distinct !DILexicalBlock(scope: !3547, file: !296, line: 53, column: 5)
!3547 = distinct !DILexicalBlock(scope: !3540, file: !296, line: 47, column: 7)
!3548 = !DILocation(line: 0, scope: !3540)
!3549 = !DILocation(line: 47, column: 9, scope: !3547)
!3550 = !DILocation(line: 47, column: 14, scope: !3547)
!3551 = !DILocation(line: 0, scope: !3546)
!3552 = !DILocation(line: 57, column: 21, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !3546, file: !296, line: 57, column: 11)
!3554 = !DILocation(line: 57, column: 11, scope: !3546)
!3555 = !DILocation(line: 59, column: 11, scope: !3556)
!3556 = distinct !DILexicalBlock(scope: !3553, file: !296, line: 58, column: 9)
!3557 = !DILocation(line: 59, column: 17, scope: !3556)
!3558 = !DILocation(line: 65, column: 12, scope: !3540)
!3559 = !DILocation(line: 72, column: 3, scope: !3540)
!3560 = !DILocation(line: 73, column: 1, scope: !3540)
!3561 = distinct !DISubprogram(name: "rpl_fclose", scope: !298, file: !298, line: 58, type: !3562, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !3598)
!3562 = !DISubroutineType(types: !3563)
!3563 = !{!31, !3564}
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3565 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !104, line: 7, baseType: !3566)
!3566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !106, line: 49, size: 1728, elements: !3567)
!3567 = !{!3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3566, file: !106, line: 51, baseType: !31, size: 32)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3566, file: !106, line: 54, baseType: !22, size: 64, offset: 64)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3566, file: !106, line: 55, baseType: !22, size: 64, offset: 128)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3566, file: !106, line: 56, baseType: !22, size: 64, offset: 192)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3566, file: !106, line: 57, baseType: !22, size: 64, offset: 256)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3566, file: !106, line: 58, baseType: !22, size: 64, offset: 320)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3566, file: !106, line: 59, baseType: !22, size: 64, offset: 384)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3566, file: !106, line: 60, baseType: !22, size: 64, offset: 448)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3566, file: !106, line: 61, baseType: !22, size: 64, offset: 512)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3566, file: !106, line: 64, baseType: !22, size: 64, offset: 576)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3566, file: !106, line: 65, baseType: !22, size: 64, offset: 640)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3566, file: !106, line: 66, baseType: !22, size: 64, offset: 704)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3566, file: !106, line: 68, baseType: !121, size: 64, offset: 768)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3566, file: !106, line: 70, baseType: !3582, size: 64, offset: 832)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3566, file: !106, line: 72, baseType: !31, size: 32, offset: 896)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3566, file: !106, line: 73, baseType: !31, size: 32, offset: 928)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3566, file: !106, line: 74, baseType: !128, size: 64, offset: 960)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3566, file: !106, line: 77, baseType: !32, size: 16, offset: 1024)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3566, file: !106, line: 78, baseType: !132, size: 8, offset: 1040)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3566, file: !106, line: 79, baseType: !134, size: 8, offset: 1048)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3566, file: !106, line: 81, baseType: !138, size: 64, offset: 1088)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3566, file: !106, line: 89, baseType: !141, size: 64, offset: 1152)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3566, file: !106, line: 91, baseType: !143, size: 64, offset: 1216)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3566, file: !106, line: 92, baseType: !146, size: 64, offset: 1280)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3566, file: !106, line: 93, baseType: !3582, size: 64, offset: 1344)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3566, file: !106, line: 94, baseType: !24, size: 64, offset: 1408)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3566, file: !106, line: 95, baseType: !33, size: 64, offset: 1472)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3566, file: !106, line: 96, baseType: !31, size: 32, offset: 1536)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3566, file: !106, line: 98, baseType: !153, size: 160, offset: 1568)
!3598 = !{!3599, !3600, !3601, !3602}
!3599 = !DILocalVariable(name: "fp", arg: 1, scope: !3561, file: !298, line: 58, type: !3564)
!3600 = !DILocalVariable(name: "saved_errno", scope: !3561, file: !298, line: 60, type: !31)
!3601 = !DILocalVariable(name: "fd", scope: !3561, file: !298, line: 61, type: !31)
!3602 = !DILocalVariable(name: "result", scope: !3561, file: !298, line: 62, type: !31)
!3603 = !DILocation(line: 0, scope: !3561)
!3604 = !DILocation(line: 65, column: 8, scope: !3561)
!3605 = !DILocation(line: 66, column: 10, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3561, file: !298, line: 66, column: 7)
!3607 = !DILocation(line: 66, column: 7, scope: !3561)
!3608 = !DILocation(line: 67, column: 12, scope: !3606)
!3609 = !DILocation(line: 67, column: 5, scope: !3606)
!3610 = !DILocation(line: 72, column: 9, scope: !3611)
!3611 = distinct !DILexicalBlock(scope: !3561, file: !298, line: 72, column: 7)
!3612 = !DILocation(line: 72, column: 23, scope: !3611)
!3613 = !DILocation(line: 72, column: 33, scope: !3611)
!3614 = !DILocation(line: 72, column: 26, scope: !3611)
!3615 = !DILocation(line: 72, column: 59, scope: !3611)
!3616 = !DILocation(line: 73, column: 7, scope: !3611)
!3617 = !DILocation(line: 73, column: 10, scope: !3611)
!3618 = !DILocation(line: 72, column: 7, scope: !3561)
!3619 = !DILocation(line: 100, column: 12, scope: !3561)
!3620 = !DILocation(line: 105, column: 7, scope: !3561)
!3621 = !DILocation(line: 74, column: 19, scope: !3611)
!3622 = !DILocation(line: 105, column: 19, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3561, file: !298, line: 105, column: 7)
!3624 = !DILocation(line: 107, column: 13, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3623, file: !298, line: 106, column: 5)
!3626 = !DILocation(line: 109, column: 5, scope: !3625)
!3627 = !DILocation(line: 112, column: 1, scope: !3561)
!3628 = !DISubprogram(name: "fclose", scope: !795, file: !795, line: 213, type: !3629, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!3629 = !DISubroutineType(types: !3630)
!3630 = !{!31, !3582}
!3631 = !DISubprogram(name: "lseek", scope: !3632, file: !3632, line: 334, type: !3633, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!3632 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!3633 = !DISubroutineType(types: !3634)
!3634 = !{!129, !31, !129, !31}
!3635 = distinct !DISubprogram(name: "rpl_fflush", scope: !300, file: !300, line: 129, type: !3636, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !3672)
!3636 = !DISubroutineType(types: !3637)
!3637 = !{!31, !3638}
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !104, line: 7, baseType: !3640)
!3640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !106, line: 49, size: 1728, elements: !3641)
!3641 = !{!3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3640, file: !106, line: 51, baseType: !31, size: 32)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3640, file: !106, line: 54, baseType: !22, size: 64, offset: 64)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3640, file: !106, line: 55, baseType: !22, size: 64, offset: 128)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3640, file: !106, line: 56, baseType: !22, size: 64, offset: 192)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3640, file: !106, line: 57, baseType: !22, size: 64, offset: 256)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3640, file: !106, line: 58, baseType: !22, size: 64, offset: 320)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3640, file: !106, line: 59, baseType: !22, size: 64, offset: 384)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3640, file: !106, line: 60, baseType: !22, size: 64, offset: 448)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3640, file: !106, line: 61, baseType: !22, size: 64, offset: 512)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3640, file: !106, line: 64, baseType: !22, size: 64, offset: 576)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3640, file: !106, line: 65, baseType: !22, size: 64, offset: 640)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3640, file: !106, line: 66, baseType: !22, size: 64, offset: 704)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3640, file: !106, line: 68, baseType: !121, size: 64, offset: 768)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3640, file: !106, line: 70, baseType: !3656, size: 64, offset: 832)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3640, file: !106, line: 72, baseType: !31, size: 32, offset: 896)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3640, file: !106, line: 73, baseType: !31, size: 32, offset: 928)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3640, file: !106, line: 74, baseType: !128, size: 64, offset: 960)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3640, file: !106, line: 77, baseType: !32, size: 16, offset: 1024)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3640, file: !106, line: 78, baseType: !132, size: 8, offset: 1040)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3640, file: !106, line: 79, baseType: !134, size: 8, offset: 1048)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3640, file: !106, line: 81, baseType: !138, size: 64, offset: 1088)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3640, file: !106, line: 89, baseType: !141, size: 64, offset: 1152)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3640, file: !106, line: 91, baseType: !143, size: 64, offset: 1216)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3640, file: !106, line: 92, baseType: !146, size: 64, offset: 1280)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3640, file: !106, line: 93, baseType: !3656, size: 64, offset: 1344)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3640, file: !106, line: 94, baseType: !24, size: 64, offset: 1408)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3640, file: !106, line: 95, baseType: !33, size: 64, offset: 1472)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3640, file: !106, line: 96, baseType: !31, size: 32, offset: 1536)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3640, file: !106, line: 98, baseType: !153, size: 160, offset: 1568)
!3672 = !{!3673}
!3673 = !DILocalVariable(name: "stream", arg: 1, scope: !3635, file: !300, line: 129, type: !3638)
!3674 = !DILocation(line: 0, scope: !3635)
!3675 = !DILocation(line: 150, column: 14, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3635, file: !300, line: 150, column: 7)
!3677 = !DILocation(line: 150, column: 22, scope: !3676)
!3678 = !DILocation(line: 150, column: 27, scope: !3676)
!3679 = !DILocation(line: 150, column: 7, scope: !3635)
!3680 = !DILocation(line: 151, column: 12, scope: !3676)
!3681 = !DILocation(line: 151, column: 5, scope: !3676)
!3682 = !DILocalVariable(name: "fp", arg: 1, scope: !3683, file: !300, line: 41, type: !3638)
!3683 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !300, file: !300, line: 41, type: !3684, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !3686)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{null, !3638}
!3686 = !{!3682}
!3687 = !DILocation(line: 0, scope: !3683, inlinedAt: !3688)
!3688 = distinct !DILocation(line: 156, column: 3, scope: !3635)
!3689 = !DILocation(line: 43, column: 11, scope: !3690, inlinedAt: !3688)
!3690 = distinct !DILexicalBlock(scope: !3683, file: !300, line: 43, column: 7)
!3691 = !DILocation(line: 43, column: 18, scope: !3690, inlinedAt: !3688)
!3692 = !DILocation(line: 43, column: 7, scope: !3683, inlinedAt: !3688)
!3693 = !DILocation(line: 45, column: 5, scope: !3690, inlinedAt: !3688)
!3694 = !DILocation(line: 158, column: 10, scope: !3635)
!3695 = !DILocation(line: 158, column: 3, scope: !3635)
!3696 = !DILocation(line: 235, column: 1, scope: !3635)
!3697 = !DISubprogram(name: "fflush", scope: !795, file: !795, line: 218, type: !3698, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{!31, !3656}
!3700 = distinct !DISubprogram(name: "rpl_fseeko", scope: !302, file: !302, line: 28, type: !3701, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !301, retainedNodes: !3737)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{!31, !3703, !1556, !31}
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !104, line: 7, baseType: !3705)
!3705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !106, line: 49, size: 1728, elements: !3706)
!3706 = !{!3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3705, file: !106, line: 51, baseType: !31, size: 32)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3705, file: !106, line: 54, baseType: !22, size: 64, offset: 64)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3705, file: !106, line: 55, baseType: !22, size: 64, offset: 128)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3705, file: !106, line: 56, baseType: !22, size: 64, offset: 192)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3705, file: !106, line: 57, baseType: !22, size: 64, offset: 256)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3705, file: !106, line: 58, baseType: !22, size: 64, offset: 320)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3705, file: !106, line: 59, baseType: !22, size: 64, offset: 384)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3705, file: !106, line: 60, baseType: !22, size: 64, offset: 448)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3705, file: !106, line: 61, baseType: !22, size: 64, offset: 512)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3705, file: !106, line: 64, baseType: !22, size: 64, offset: 576)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3705, file: !106, line: 65, baseType: !22, size: 64, offset: 640)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3705, file: !106, line: 66, baseType: !22, size: 64, offset: 704)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3705, file: !106, line: 68, baseType: !121, size: 64, offset: 768)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3705, file: !106, line: 70, baseType: !3721, size: 64, offset: 832)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3705, file: !106, line: 72, baseType: !31, size: 32, offset: 896)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3705, file: !106, line: 73, baseType: !31, size: 32, offset: 928)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3705, file: !106, line: 74, baseType: !128, size: 64, offset: 960)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3705, file: !106, line: 77, baseType: !32, size: 16, offset: 1024)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3705, file: !106, line: 78, baseType: !132, size: 8, offset: 1040)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3705, file: !106, line: 79, baseType: !134, size: 8, offset: 1048)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3705, file: !106, line: 81, baseType: !138, size: 64, offset: 1088)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3705, file: !106, line: 89, baseType: !141, size: 64, offset: 1152)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3705, file: !106, line: 91, baseType: !143, size: 64, offset: 1216)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3705, file: !106, line: 92, baseType: !146, size: 64, offset: 1280)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3705, file: !106, line: 93, baseType: !3721, size: 64, offset: 1344)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3705, file: !106, line: 94, baseType: !24, size: 64, offset: 1408)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3705, file: !106, line: 95, baseType: !33, size: 64, offset: 1472)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3705, file: !106, line: 96, baseType: !31, size: 32, offset: 1536)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3705, file: !106, line: 98, baseType: !153, size: 160, offset: 1568)
!3737 = !{!3738, !3739, !3740, !3741}
!3738 = !DILocalVariable(name: "fp", arg: 1, scope: !3700, file: !302, line: 28, type: !3703)
!3739 = !DILocalVariable(name: "offset", arg: 2, scope: !3700, file: !302, line: 28, type: !1556)
!3740 = !DILocalVariable(name: "whence", arg: 3, scope: !3700, file: !302, line: 28, type: !31)
!3741 = !DILocalVariable(name: "pos", scope: !3742, file: !302, line: 117, type: !1556)
!3742 = distinct !DILexicalBlock(scope: !3743, file: !302, line: 113, column: 5)
!3743 = distinct !DILexicalBlock(scope: !3700, file: !302, line: 52, column: 7)
!3744 = !DILocation(line: 0, scope: !3700)
!3745 = !DILocation(line: 52, column: 11, scope: !3743)
!3746 = !DILocation(line: 52, column: 31, scope: !3743)
!3747 = !DILocation(line: 52, column: 24, scope: !3743)
!3748 = !DILocation(line: 53, column: 7, scope: !3743)
!3749 = !DILocation(line: 53, column: 14, scope: !3743)
!3750 = !DILocation(line: 53, column: 35, scope: !3743)
!3751 = !{!950, !719, i64 32}
!3752 = !DILocation(line: 53, column: 28, scope: !3743)
!3753 = !DILocation(line: 54, column: 7, scope: !3743)
!3754 = !DILocation(line: 54, column: 14, scope: !3743)
!3755 = !{!950, !719, i64 72}
!3756 = !DILocation(line: 54, column: 28, scope: !3743)
!3757 = !DILocation(line: 52, column: 7, scope: !3700)
!3758 = !DILocation(line: 117, column: 26, scope: !3742)
!3759 = !DILocation(line: 117, column: 19, scope: !3742)
!3760 = !DILocation(line: 0, scope: !3742)
!3761 = !DILocation(line: 118, column: 15, scope: !3762)
!3762 = distinct !DILexicalBlock(scope: !3742, file: !302, line: 118, column: 11)
!3763 = !DILocation(line: 118, column: 11, scope: !3742)
!3764 = !DILocation(line: 129, column: 11, scope: !3742)
!3765 = !DILocation(line: 129, column: 18, scope: !3742)
!3766 = !DILocation(line: 130, column: 11, scope: !3742)
!3767 = !DILocation(line: 130, column: 19, scope: !3742)
!3768 = !{!950, !932, i64 144}
!3769 = !DILocation(line: 161, column: 7, scope: !3742)
!3770 = !DILocation(line: 163, column: 10, scope: !3700)
!3771 = !DILocation(line: 163, column: 3, scope: !3700)
!3772 = !DILocation(line: 164, column: 1, scope: !3700)
!3773 = !DISubprogram(name: "fseeko", scope: !795, file: !795, line: 712, type: !3774, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!3774 = !DISubroutineType(types: !3775)
!3775 = !{!31, !3721, !129, !31}
!3776 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !304, file: !304, line: 86, type: !3777, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !303, retainedNodes: !3791)
!3777 = !DISubroutineType(types: !3778)
!3778 = !{!33, !3779, !35, !33, !3780}
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1830, line: 6, baseType: !3782)
!3782 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1832, line: 21, baseType: !3783)
!3783 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1832, line: 13, size: 64, elements: !3784)
!3784 = !{!3785, !3786}
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3783, file: !1832, line: 15, baseType: !31, size: 32)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3783, file: !1832, line: 20, baseType: !3787, size: 32, offset: 32)
!3787 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3783, file: !1832, line: 16, size: 32, elements: !3788)
!3788 = !{!3789, !3790}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3787, file: !1832, line: 18, baseType: !7, size: 32)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3787, file: !1832, line: 19, baseType: !1841, size: 32)
!3791 = !{!3792, !3793, !3794, !3795, !3796, !3797, !3798}
!3792 = !DILocalVariable(name: "pwc", arg: 1, scope: !3776, file: !304, line: 86, type: !3779)
!3793 = !DILocalVariable(name: "s", arg: 2, scope: !3776, file: !304, line: 86, type: !35)
!3794 = !DILocalVariable(name: "n", arg: 3, scope: !3776, file: !304, line: 86, type: !33)
!3795 = !DILocalVariable(name: "ps", arg: 4, scope: !3776, file: !304, line: 86, type: !3780)
!3796 = !DILocalVariable(name: "ret", scope: !3776, file: !304, line: 88, type: !33)
!3797 = !DILocalVariable(name: "wc", scope: !3776, file: !304, line: 89, type: !1846)
!3798 = !DILocalVariable(name: "uc", scope: !3799, file: !304, line: 156, type: !38)
!3799 = distinct !DILexicalBlock(scope: !3800, file: !304, line: 155, column: 5)
!3800 = distinct !DILexicalBlock(scope: !3776, file: !304, line: 154, column: 7)
!3801 = !DILocation(line: 0, scope: !3776)
!3802 = !DILocation(line: 89, column: 3, scope: !3776)
!3803 = !DILocation(line: 105, column: 9, scope: !3804)
!3804 = distinct !DILexicalBlock(scope: !3776, file: !304, line: 105, column: 7)
!3805 = !DILocation(line: 105, column: 7, scope: !3776)
!3806 = !DILocation(line: 145, column: 9, scope: !3776)
!3807 = !DILocation(line: 154, column: 19, scope: !3800)
!3808 = !DILocation(line: 154, column: 26, scope: !3800)
!3809 = !DILocation(line: 154, column: 41, scope: !3800)
!3810 = !DILocation(line: 154, column: 7, scope: !3776)
!3811 = !DILocation(line: 156, column: 26, scope: !3799)
!3812 = !DILocation(line: 0, scope: !3799)
!3813 = !DILocation(line: 157, column: 14, scope: !3799)
!3814 = !DILocation(line: 157, column: 12, scope: !3799)
!3815 = !DILocation(line: 163, column: 1, scope: !3776)
!3816 = !DISubprogram(name: "mbrtowc", scope: !2508, file: !2508, line: 296, type: !3817, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!3817 = !DISubroutineType(types: !3818)
!3818 = !{!30, !48, !35, !30, !3819}
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3820 = distinct !DISubprogram(name: "close_stream", scope: !307, file: !307, line: 56, type: !3821, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !306, retainedNodes: !3857)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{!31, !3823}
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !104, line: 7, baseType: !3825)
!3825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !106, line: 49, size: 1728, elements: !3826)
!3826 = !{!3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3825, file: !106, line: 51, baseType: !31, size: 32)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3825, file: !106, line: 54, baseType: !22, size: 64, offset: 64)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3825, file: !106, line: 55, baseType: !22, size: 64, offset: 128)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3825, file: !106, line: 56, baseType: !22, size: 64, offset: 192)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3825, file: !106, line: 57, baseType: !22, size: 64, offset: 256)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3825, file: !106, line: 58, baseType: !22, size: 64, offset: 320)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3825, file: !106, line: 59, baseType: !22, size: 64, offset: 384)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3825, file: !106, line: 60, baseType: !22, size: 64, offset: 448)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3825, file: !106, line: 61, baseType: !22, size: 64, offset: 512)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3825, file: !106, line: 64, baseType: !22, size: 64, offset: 576)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3825, file: !106, line: 65, baseType: !22, size: 64, offset: 640)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3825, file: !106, line: 66, baseType: !22, size: 64, offset: 704)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3825, file: !106, line: 68, baseType: !121, size: 64, offset: 768)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3825, file: !106, line: 70, baseType: !3841, size: 64, offset: 832)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3825, file: !106, line: 72, baseType: !31, size: 32, offset: 896)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3825, file: !106, line: 73, baseType: !31, size: 32, offset: 928)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3825, file: !106, line: 74, baseType: !128, size: 64, offset: 960)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3825, file: !106, line: 77, baseType: !32, size: 16, offset: 1024)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3825, file: !106, line: 78, baseType: !132, size: 8, offset: 1040)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3825, file: !106, line: 79, baseType: !134, size: 8, offset: 1048)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3825, file: !106, line: 81, baseType: !138, size: 64, offset: 1088)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3825, file: !106, line: 89, baseType: !141, size: 64, offset: 1152)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3825, file: !106, line: 91, baseType: !143, size: 64, offset: 1216)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3825, file: !106, line: 92, baseType: !146, size: 64, offset: 1280)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3825, file: !106, line: 93, baseType: !3841, size: 64, offset: 1344)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3825, file: !106, line: 94, baseType: !24, size: 64, offset: 1408)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3825, file: !106, line: 95, baseType: !33, size: 64, offset: 1472)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3825, file: !106, line: 96, baseType: !31, size: 32, offset: 1536)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3825, file: !106, line: 98, baseType: !153, size: 160, offset: 1568)
!3857 = !{!3858, !3859, !3861, !3862}
!3858 = !DILocalVariable(name: "stream", arg: 1, scope: !3820, file: !307, line: 56, type: !3823)
!3859 = !DILocalVariable(name: "some_pending", scope: !3820, file: !307, line: 58, type: !3860)
!3860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!3861 = !DILocalVariable(name: "prev_fail", scope: !3820, file: !307, line: 59, type: !3860)
!3862 = !DILocalVariable(name: "fclose_fail", scope: !3820, file: !307, line: 60, type: !3860)
!3863 = !DILocation(line: 0, scope: !3820)
!3864 = !DILocation(line: 58, column: 30, scope: !3820)
!3865 = !DILocalVariable(name: "__stream", arg: 1, scope: !3866, file: !942, line: 135, type: !3823)
!3866 = distinct !DISubprogram(name: "ferror_unlocked", scope: !942, file: !942, line: 135, type: !3821, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !306, retainedNodes: !3867)
!3867 = !{!3865}
!3868 = !DILocation(line: 0, scope: !3866, inlinedAt: !3869)
!3869 = distinct !DILocation(line: 59, column: 27, scope: !3820)
!3870 = !DILocation(line: 137, column: 10, scope: !3866, inlinedAt: !3869)
!3871 = !DILocation(line: 59, column: 43, scope: !3820)
!3872 = !DILocation(line: 60, column: 29, scope: !3820)
!3873 = !DILocation(line: 60, column: 45, scope: !3820)
!3874 = !DILocation(line: 70, column: 17, scope: !3875)
!3875 = distinct !DILexicalBlock(scope: !3820, file: !307, line: 70, column: 7)
!3876 = !DILocation(line: 58, column: 50, scope: !3820)
!3877 = !DILocation(line: 70, column: 33, scope: !3875)
!3878 = !DILocation(line: 70, column: 53, scope: !3875)
!3879 = !DILocation(line: 70, column: 59, scope: !3875)
!3880 = !DILocation(line: 70, column: 7, scope: !3820)
!3881 = !DILocation(line: 72, column: 11, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3875, file: !307, line: 71, column: 5)
!3883 = !DILocation(line: 73, column: 9, scope: !3884)
!3884 = distinct !DILexicalBlock(scope: !3882, file: !307, line: 72, column: 11)
!3885 = !DILocation(line: 73, column: 15, scope: !3884)
!3886 = !DILocation(line: 78, column: 1, scope: !3820)
!3887 = distinct !DISubprogram(name: "hard_locale", scope: !309, file: !309, line: 27, type: !3888, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !308, retainedNodes: !3890)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{!175, !31}
!3890 = !{!3891, !3892}
!3891 = !DILocalVariable(name: "category", arg: 1, scope: !3887, file: !309, line: 27, type: !31)
!3892 = !DILocalVariable(name: "locale", scope: !3887, file: !309, line: 29, type: !3893)
!3893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2056, elements: !3894)
!3894 = !{!3895}
!3895 = !DISubrange(count: 257)
!3896 = !DILocation(line: 0, scope: !3887)
!3897 = !DILocation(line: 29, column: 3, scope: !3887)
!3898 = !DILocation(line: 29, column: 8, scope: !3887)
!3899 = !DILocation(line: 31, column: 7, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3887, file: !309, line: 31, column: 7)
!3901 = !DILocation(line: 31, column: 7, scope: !3887)
!3902 = !DILocation(line: 34, column: 12, scope: !3887)
!3903 = !DILocation(line: 34, column: 38, scope: !3887)
!3904 = !DILocation(line: 34, column: 41, scope: !3887)
!3905 = !DILocation(line: 34, column: 66, scope: !3887)
!3906 = !DILocation(line: 35, column: 1, scope: !3887)
!3907 = distinct !DISubprogram(name: "locale_charset", scope: !311, file: !311, line: 831, type: !3908, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !310, retainedNodes: !3910)
!3908 = !DISubroutineType(types: !3909)
!3909 = !{!35}
!3910 = !{!3911}
!3911 = !DILocalVariable(name: "codeset", scope: !3907, file: !311, line: 833, type: !35)
!3912 = !DILocation(line: 847, column: 13, scope: !3907)
!3913 = !DILocation(line: 0, scope: !3907)
!3914 = !DILocation(line: 911, column: 15, scope: !3915)
!3915 = distinct !DILexicalBlock(scope: !3907, file: !311, line: 911, column: 7)
!3916 = !DILocation(line: 911, column: 7, scope: !3907)
!3917 = !DILocation(line: 1070, column: 13, scope: !3918)
!3918 = distinct !DILexicalBlock(scope: !3919, file: !311, line: 1070, column: 13)
!3919 = distinct !DILexicalBlock(scope: !3920, file: !311, line: 1060, column: 7)
!3920 = distinct !DILexicalBlock(scope: !3907, file: !311, line: 1019, column: 3)
!3921 = !DILocation(line: 1070, column: 24, scope: !3918)
!3922 = !DILocation(line: 1070, column: 13, scope: !3919)
!3923 = !DILocation(line: 1158, column: 3, scope: !3907)
!3924 = !DISubprogram(name: "nl_langinfo", scope: !314, file: !314, line: 661, type: !3925, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!3925 = !DISubroutineType(types: !3926)
!3926 = !{!22, !31}
!3927 = distinct !DISubprogram(name: "setlocale_null_r", scope: !700, file: !700, line: 269, type: !3928, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !3930)
!3928 = !DISubroutineType(types: !3929)
!3929 = !{!31, !31, !22, !33}
!3930 = !{!3931, !3932, !3933}
!3931 = !DILocalVariable(name: "category", arg: 1, scope: !3927, file: !700, line: 269, type: !31)
!3932 = !DILocalVariable(name: "buf", arg: 2, scope: !3927, file: !700, line: 269, type: !22)
!3933 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3927, file: !700, line: 269, type: !33)
!3934 = !DILocation(line: 0, scope: !3927)
!3935 = !DILocalVariable(name: "category", arg: 1, scope: !3936, file: !700, line: 91, type: !31)
!3936 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !700, file: !700, line: 91, type: !3928, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !3937)
!3937 = !{!3935, !3938, !3939, !3940, !3941}
!3938 = !DILocalVariable(name: "buf", arg: 2, scope: !3936, file: !700, line: 91, type: !22)
!3939 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3936, file: !700, line: 91, type: !33)
!3940 = !DILocalVariable(name: "result", scope: !3936, file: !700, line: 140, type: !35)
!3941 = !DILocalVariable(name: "length", scope: !3942, file: !700, line: 154, type: !33)
!3942 = distinct !DILexicalBlock(scope: !3943, file: !700, line: 153, column: 5)
!3943 = distinct !DILexicalBlock(scope: !3936, file: !700, line: 142, column: 7)
!3944 = !DILocation(line: 0, scope: !3936, inlinedAt: !3945)
!3945 = distinct !DILocation(line: 274, column: 10, scope: !3927)
!3946 = !DILocalVariable(name: "category", arg: 1, scope: !3947, file: !700, line: 60, type: !31)
!3947 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !700, file: !700, line: 60, type: !3948, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !3950)
!3948 = !DISubroutineType(types: !3949)
!3949 = !{!35, !31}
!3950 = !{!3946, !3951}
!3951 = !DILocalVariable(name: "result", scope: !3947, file: !700, line: 62, type: !35)
!3952 = !DILocation(line: 0, scope: !3947, inlinedAt: !3953)
!3953 = distinct !DILocation(line: 140, column: 24, scope: !3936, inlinedAt: !3945)
!3954 = !DILocation(line: 62, column: 24, scope: !3947, inlinedAt: !3953)
!3955 = !DILocation(line: 142, column: 14, scope: !3943, inlinedAt: !3945)
!3956 = !DILocation(line: 142, column: 7, scope: !3936, inlinedAt: !3945)
!3957 = !DILocation(line: 145, column: 19, scope: !3958, inlinedAt: !3945)
!3958 = distinct !DILexicalBlock(scope: !3959, file: !700, line: 145, column: 11)
!3959 = distinct !DILexicalBlock(scope: !3943, file: !700, line: 143, column: 5)
!3960 = !DILocation(line: 145, column: 11, scope: !3959, inlinedAt: !3945)
!3961 = !DILocation(line: 149, column: 16, scope: !3958, inlinedAt: !3945)
!3962 = !DILocation(line: 149, column: 9, scope: !3958, inlinedAt: !3945)
!3963 = !DILocation(line: 154, column: 23, scope: !3942, inlinedAt: !3945)
!3964 = !DILocation(line: 0, scope: !3942, inlinedAt: !3945)
!3965 = !DILocation(line: 155, column: 18, scope: !3966, inlinedAt: !3945)
!3966 = distinct !DILexicalBlock(scope: !3942, file: !700, line: 155, column: 11)
!3967 = !DILocation(line: 155, column: 11, scope: !3942, inlinedAt: !3945)
!3968 = !DILocation(line: 157, column: 39, scope: !3969, inlinedAt: !3945)
!3969 = distinct !DILexicalBlock(scope: !3966, file: !700, line: 156, column: 9)
!3970 = !DILocalVariable(name: "__dest", arg: 1, scope: !3971, file: !2075, line: 26, type: !3496)
!3971 = distinct !DISubprogram(name: "memcpy", scope: !2075, file: !2075, line: 26, type: !3494, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !3972)
!3972 = !{!3970, !3973, !3974}
!3973 = !DILocalVariable(name: "__src", arg: 2, scope: !3971, file: !2075, line: 26, type: !3497)
!3974 = !DILocalVariable(name: "__len", arg: 3, scope: !3971, file: !2075, line: 26, type: !33)
!3975 = !DILocation(line: 0, scope: !3971, inlinedAt: !3976)
!3976 = distinct !DILocation(line: 157, column: 11, scope: !3969, inlinedAt: !3945)
!3977 = !DILocation(line: 29, column: 10, scope: !3971, inlinedAt: !3976)
!3978 = !DILocation(line: 158, column: 11, scope: !3969, inlinedAt: !3945)
!3979 = !DILocation(line: 162, column: 23, scope: !3980, inlinedAt: !3945)
!3980 = distinct !DILexicalBlock(scope: !3981, file: !700, line: 162, column: 15)
!3981 = distinct !DILexicalBlock(scope: !3966, file: !700, line: 161, column: 9)
!3982 = !DILocation(line: 162, column: 15, scope: !3981, inlinedAt: !3945)
!3983 = !DILocation(line: 167, column: 44, scope: !3984, inlinedAt: !3945)
!3984 = distinct !DILexicalBlock(scope: !3980, file: !700, line: 163, column: 13)
!3985 = !DILocation(line: 0, scope: !3971, inlinedAt: !3986)
!3986 = distinct !DILocation(line: 167, column: 15, scope: !3984, inlinedAt: !3945)
!3987 = !DILocation(line: 29, column: 10, scope: !3971, inlinedAt: !3986)
!3988 = !DILocation(line: 168, column: 15, scope: !3984, inlinedAt: !3945)
!3989 = !DILocation(line: 168, column: 32, scope: !3984, inlinedAt: !3945)
!3990 = !DILocation(line: 169, column: 13, scope: !3984, inlinedAt: !3945)
!3991 = !DILocation(line: 0, scope: !3943, inlinedAt: !3945)
!3992 = !DILocation(line: 274, column: 3, scope: !3927)
!3993 = distinct !DISubprogram(name: "setlocale_null", scope: !700, file: !700, line: 301, type: !3948, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !3994)
!3994 = !{!3995}
!3995 = !DILocalVariable(name: "category", arg: 1, scope: !3993, file: !700, line: 301, type: !31)
!3996 = !DILocation(line: 0, scope: !3993)
!3997 = !DILocation(line: 0, scope: !3947, inlinedAt: !3998)
!3998 = distinct !DILocation(line: 304, column: 10, scope: !3993)
!3999 = !DILocation(line: 62, column: 24, scope: !3947, inlinedAt: !3998)
!4000 = !DILocation(line: 304, column: 3, scope: !3993)
