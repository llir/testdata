; ModuleID = 'coreutils-8.32/src/tee.bc'
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
@.str.2 = private unnamed_addr constant [190 x i8] c"Copy standard input to each FILE, and also to standard output.\0A\0A  -a, --append              append to the given FILEs, do not overwrite\0A  -i, --ignore-interrupts   ignore interrupt signals\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [141 x i8] c"  -p                        diagnose errors writing to non pipes\0A      --output-error[=MODE]   set behavior on write error.  See MODE below\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [512 x i8] c"\0AMODE determines behavior with write errors on the outputs:\0A  'warn'         diagnose errors writing to any output\0A  'warn-nopipe'  diagnose errors writing to any output not a pipe\0A  'exit'         exit on error writing to any output\0A  'exit-nopipe'  exit on error writing to any output not a pipe\0AThe default MODE for the -p option is 'warn-nopipe'.\0AThe default operation when --output-error is not specified, is to\0Aexit immediately on error writing to a pipe, and diagnose errors\0Awriting to non pipe outputs.\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"tee\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.19 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.28 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.30 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.32 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@append = internal unnamed_addr global i1 false, align 1, !dbg !0
@ignore_interrupts = internal unnamed_addr global i1 false, align 1, !dbg !87
@.str.11 = private unnamed_addr constant [4 x i8] c"aip\00", align 1
@long_options = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i32 0, i32* null, i32 97 }, %struct.option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0), i32 2, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !61
@optarg = external local_unnamed_addr global i8*, align 8
@.str.12 = private unnamed_addr constant [15 x i8] c"--output-error\00", align 1
@output_error_args = internal constant [5 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0), i8* null], align 16, !dbg !81
@output_error_types = internal constant [4 x i32] [i32 1, i32 2, i32 3, i32 4], align 16, !dbg !75
@output_error = internal unnamed_addr global i32 0, align 4, !dbg !59
@.str.14 = private unnamed_addr constant [12 x i8] c"Mike Parker\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"Richard M. Stallman\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.43 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.45 = private unnamed_addr constant [16 x i8] c"standard output\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"read error\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"warn\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"warn-nopipe\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"exit-nopipe\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"append\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"ignore-interrupts\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"output-error\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), align 8, !dbg !88
@.str.47 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@argmatch_die = dso_local local_unnamed_addr global void ()* @__argmatch_die, align 8, !dbg !94
@.str.50 = private unnamed_addr constant [27 x i8] c"invalid argument %s for %s\00", align 1
@.str.1.51 = private unnamed_addr constant [29 x i8] c"ambiguous argument %s for %s\00", align 1
@.str.2.52 = private unnamed_addr constant [21 x i8] c"Valid arguments are:\00", align 1
@.str.3.53 = private unnamed_addr constant [8 x i8] c"\0A  - %s\00", align 1
@.str.4.54 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !106
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !111
@.str.59 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.60 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.61 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !113
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !119
@.str.72 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.73 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.74 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.76, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.77, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.78, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.79, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.80, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.81, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.82, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.83, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.84, i32 0, i32 0), i8* null], align 16, !dbg !125
@.str.75 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.76 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.77 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.78 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.79 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.80 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.81 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.82 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.83 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.84 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !153
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !159
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !171
@.str.11.85 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.86 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.87 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.88 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.89 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.90 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.91 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !178
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !185
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !173
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !187
@.str.104 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.105 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.106 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.107 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.108 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.109 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.110 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.111 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.112 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.113 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.114 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.115 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.116 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.117 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.118 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.119 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.122 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.123 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.124 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.125 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.126 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.127 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.128 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !192
@.str.1.139 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.140 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !200
@.str.1.157 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.160 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.161 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !663 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !665, metadata !DIExpression()), !dbg !666
  %3 = icmp eq i32 %0, 0, !dbg !667
  br i1 %3, label %9, label %4, !dbg !669

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !670, !tbaa !672
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #26, !dbg !670
  %7 = load i8*, i8** @program_name, align 8, !dbg !670, !tbaa !672
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #26, !dbg !670
  br label %64, !dbg !670

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #26, !dbg !676
  %11 = load i8*, i8** @program_name, align 8, !dbg !676, !tbaa !672
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #26, !dbg !676
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([190 x i8], [190 x i8]* @.str.2, i64 0, i64 0), i32 5) #26, !dbg !678
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !678, !tbaa !672
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !678
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([141 x i8], [141 x i8]* @.str.3, i64 0, i64 0), i32 5) #26, !dbg !679
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !679, !tbaa !672
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !679
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #26, !dbg !680
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !680, !tbaa !672
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !680
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #26, !dbg !681
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !681, !tbaa !672
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !681
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([512 x i8], [512 x i8]* @.str.6, i64 0, i64 0), i32 5) #26, !dbg !682
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !682, !tbaa !672
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !682
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), metadata !683, metadata !DIExpression()) #26, !dbg !702
  %28 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !704
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %28) #26, !dbg !704
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !689, metadata !DIExpression()) #26, !dbg !705
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %28, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #26, !dbg !705
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), metadata !698, metadata !DIExpression()) #26, !dbg !702
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !699, metadata !DIExpression()) #26, !dbg !702
  %29 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !706
  call void @llvm.dbg.value(metadata %struct.infomap* %29, metadata !699, metadata !DIExpression()) #26, !dbg !702
  br label %30, !dbg !707

30:                                               ; preds = %35, %9
  %31 = phi i8* [ %38, %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), %9 ]
  %32 = phi %struct.infomap* [ %36, %35 ], [ %29, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !699, metadata !DIExpression()) #26, !dbg !702
  %33 = tail call i32 @strcmp(i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* nonnull %31) #27, !dbg !708
  %34 = icmp eq i32 %33, 0, !dbg !708
  br i1 %34, label %40, label %35, !dbg !707

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %32, i64 1, !dbg !709
  call void @llvm.dbg.value(metadata %struct.infomap* %36, metadata !699, metadata !DIExpression()) #26, !dbg !702
  %37 = getelementptr inbounds %struct.infomap, %struct.infomap* %36, i64 0, i32 0, !dbg !710
  %38 = load i8*, i8** %37, align 8, !dbg !710, !tbaa !711
  %39 = icmp eq i8* %38, null, !dbg !713
  br i1 %39, label %40, label %30, !dbg !714, !llvm.loop !715

40:                                               ; preds = %35, %30
  %41 = phi %struct.infomap* [ %32, %30 ], [ %36, %35 ]
  %42 = getelementptr inbounds %struct.infomap, %struct.infomap* %41, i64 0, i32 1, !dbg !717
  %43 = load i8*, i8** %42, align 8, !dbg !717, !tbaa !719
  %44 = icmp eq i8* %43, null, !dbg !720
  %45 = select i1 %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %43, !dbg !721
  call void @llvm.dbg.value(metadata i8* %45, metadata !698, metadata !DIExpression()) #26, !dbg !702
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i64 0, i64 0), i32 5) #26, !dbg !722
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.28, i64 0, i64 0)) #26, !dbg !722
  %48 = tail call i8* @setlocale(i32 5, i8* null) #26, !dbg !723
  call void @llvm.dbg.value(metadata i8* %48, metadata !701, metadata !DIExpression()) #26, !dbg !702
  %49 = icmp eq i8* %48, null, !dbg !724
  br i1 %49, label %57, label %50, !dbg !726

50:                                               ; preds = %40
  %51 = tail call i32 @strncmp(i8* nonnull %48, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i64 3) #27, !dbg !727
  %52 = icmp eq i32 %51, 0, !dbg !727
  br i1 %52, label %57, label %53, !dbg !728

53:                                               ; preds = %50
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.30, i64 0, i64 0), i32 5) #26, !dbg !729
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !729, !tbaa !672
  %56 = tail call i32 @fputs_unlocked(i8* %54, %struct._IO_FILE* %55) #26, !dbg !729
  br label %57, !dbg !731

57:                                               ; preds = %40, %50, %53
  %58 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i64 0, i64 0), i32 5) #26, !dbg !732
  %59 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %58, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)) #26, !dbg !732
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.32, i64 0, i64 0), i32 5) #26, !dbg !733
  %61 = icmp eq i8* %45, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), !dbg !733
  %62 = select i1 %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !733
  %63 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %60, i8* %45, i8* %62) #26, !dbg !733
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %28) #26, !dbg !734
  br label %64

64:                                               ; preds = %57, %4
  tail call void @exit(i32 %0) #28, !dbg !735
  unreachable, !dbg !735
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !736 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !740 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !796 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !800 {
  %3 = alloca [8192 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !805, metadata !DIExpression()), !dbg !809
  call void @llvm.dbg.value(metadata i8** %1, metadata !806, metadata !DIExpression()), !dbg !809
  %4 = load i8*, i8** %1, align 8, !dbg !810, !tbaa !672
  tail call void @set_program_name(i8* %4) #26, !dbg !811
  %5 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #26, !dbg !812
  %6 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #26, !dbg !813
  %7 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #26, !dbg !814
  %8 = tail call i32 @atexit(void ()* nonnull @close_stdout) #26, !dbg !815
  store i1 false, i1* @append, align 1, !dbg !816
  store i1 false, i1* @ignore_interrupts, align 1, !dbg !817
  br label %9, !dbg !818

9:                                                ; preds = %21, %2
  %10 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #26, !dbg !819
  call void @llvm.dbg.value(metadata i32 %10, metadata !808, metadata !DIExpression()), !dbg !809
  switch i32 %10, label %27 [
    i32 -1, label %28
    i32 97, label %11
    i32 105, label %12
    i32 112, label %13
    i32 -130, label %23
    i32 -131, label %24
  ], !dbg !818

11:                                               ; preds = %9
  store i1 true, i1* @append, align 1, !dbg !820
  br label %21, !dbg !823

12:                                               ; preds = %9
  store i1 true, i1* @ignore_interrupts, align 1, !dbg !824
  br label %21, !dbg !825

13:                                               ; preds = %9
  %14 = load i8*, i8** @optarg, align 8, !dbg !826, !tbaa !672
  %15 = icmp eq i8* %14, null, !dbg !826
  br i1 %15, label %22, label %16, !dbg !828

16:                                               ; preds = %13
  %17 = load void ()*, void ()** @argmatch_die, align 8, !dbg !829, !tbaa !672
  %18 = tail call i64 @__xargmatch_internal(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8* nonnull %14, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @output_error_args, i64 0, i64 0), i8* bitcast ([4 x i32]* @output_error_types to i8*), i64 4, void ()* %17) #26, !dbg !829
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* @output_error_types, i64 0, i64 %18, !dbg !829
  %20 = load i32, i32* %19, align 4, !dbg !829, !tbaa !830
  store i32 %20, i32* @output_error, align 4, !dbg !831, !tbaa !830
  br label %21, !dbg !832

21:                                               ; preds = %16, %22, %12, %11
  br label %9, !dbg !819, !llvm.loop !833

22:                                               ; preds = %13
  store i32 2, i32* @output_error, align 4, !dbg !835, !tbaa !830
  br label %21

23:                                               ; preds = %9
  tail call void @usage(i32 0) #29, !dbg !836
  unreachable, !dbg !836

24:                                               ; preds = %9
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !837, !tbaa !672
  %26 = load i8*, i8** @Version, align 8, !dbg !837, !tbaa !672
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i8* null) #26, !dbg !837
  tail call void @exit(i32 0) #28, !dbg !837
  unreachable, !dbg !837

27:                                               ; preds = %9
  tail call void @usage(i32 1) #29, !dbg !838
  unreachable, !dbg !838

28:                                               ; preds = %9
  %29 = load i1, i1* @ignore_interrupts, align 1, !dbg !839
  br i1 %29, label %30, label %32, !dbg !841

30:                                               ; preds = %28
  %31 = tail call void (i32)* @signal(i32 2, void (i32)* nonnull inttoptr (i64 1 to void (i32)*)) #26, !dbg !842
  br label %32, !dbg !842

32:                                               ; preds = %30, %28
  %33 = load i32, i32* @output_error, align 4, !dbg !843, !tbaa !830
  %34 = icmp eq i32 %33, 0, !dbg !845
  br i1 %34, label %37, label %35, !dbg !846

35:                                               ; preds = %32
  %36 = tail call void (i32)* @signal(i32 13, void (i32)* nonnull inttoptr (i64 1 to void (i32)*)) #26, !dbg !847
  br label %37, !dbg !847

37:                                               ; preds = %35, %32
  %38 = load i32, i32* @optind, align 4, !dbg !848, !tbaa !849
  %39 = sub nsw i32 %0, %38, !dbg !851
  call void @llvm.dbg.value(metadata i32 %39, metadata !852, metadata !DIExpression()) #26, !dbg !886
  call void @llvm.dbg.value(metadata i8** undef, metadata !857, metadata !DIExpression()) #26, !dbg !886
  call void @llvm.dbg.value(metadata i64 0, metadata !858, metadata !DIExpression()) #26, !dbg !886
  %40 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 0, !dbg !888
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* nonnull %40) #26, !dbg !888
  call void @llvm.dbg.declare(metadata [8192 x i8]* %3, metadata !864, metadata !DIExpression()) #26, !dbg !889
  call void @llvm.dbg.value(metadata i64 0, metadata !868, metadata !DIExpression()) #26, !dbg !886
  call void @llvm.dbg.value(metadata i8 1, metadata !873, metadata !DIExpression()) #26, !dbg !886
  %41 = load i1, i1* @append, align 1, !dbg !890
  %42 = select i1 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i64 0, i64 0), !dbg !890
  call void @llvm.dbg.value(metadata i8* %42, metadata !874, metadata !DIExpression()) #26, !dbg !886
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !891, !tbaa !672
  tail call void @fadvise(%struct._IO_FILE* %43, i32 2) #26, !dbg !892
  call void @llvm.dbg.value(metadata i32 %39, metadata !893, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)) #26, !dbg !899
  call void @llvm.dbg.value(metadata i64 8, metadata !898, metadata !DIExpression()) #26, !dbg !899
  %44 = icmp slt i32 %39, -1, !dbg !901
  br i1 %44, label %45, label %46, !dbg !903

45:                                               ; preds = %37
  tail call void @xalloc_die() #28, !dbg !904
  unreachable, !dbg !904

46:                                               ; preds = %37
  %47 = sext i32 %38 to i64, !dbg !905
  %48 = getelementptr inbounds i8*, i8** %1, i64 %47, !dbg !905
  call void @llvm.dbg.value(metadata i8** %48, metadata !857, metadata !DIExpression()) #26, !dbg !886
  %49 = add i32 %39, 1, !dbg !906
  call void @llvm.dbg.value(metadata i32 %49, metadata !893, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)) #26, !dbg !899
  %50 = sext i32 %49 to i64, !dbg !907
  call void @llvm.dbg.value(metadata i64 %50, metadata !893, metadata !DIExpression()) #26, !dbg !899
  %51 = shl nuw nsw i64 %50, 3, !dbg !908
  %52 = tail call noalias i8* @xmalloc(i64 %51) #26, !dbg !909
  %53 = bitcast i8* %52 to %struct._IO_FILE**, !dbg !910
  call void @llvm.dbg.value(metadata %struct._IO_FILE** %53, metadata !859, metadata !DIExpression()) #26, !dbg !886
  %54 = getelementptr inbounds i8*, i8** %48, i64 -1, !dbg !911
  call void @llvm.dbg.value(metadata i8** %54, metadata !857, metadata !DIExpression()) #26, !dbg !886
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !912, !tbaa !672
  store %struct._IO_FILE* %55, %struct._IO_FILE** %53, align 8, !dbg !913, !tbaa !672
  %56 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i64 0, i64 0), i32 5) #26, !dbg !914
  store i8* %56, i8** %54, align 8, !dbg !915, !tbaa !672
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !916, !tbaa !672
  %58 = tail call i32 @setvbuf(%struct._IO_FILE* %57, i8* null, i32 2, i64 0) #26, !dbg !917
  call void @llvm.dbg.value(metadata i64 1, metadata !858, metadata !DIExpression()) #26, !dbg !886
  call void @llvm.dbg.value(metadata i32 1, metadata !872, metadata !DIExpression()) #26, !dbg !886
  call void @llvm.dbg.value(metadata i8 1, metadata !873, metadata !DIExpression()) #26, !dbg !886
  %59 = icmp slt i32 %39, 1, !dbg !918
  %60 = zext i32 %49 to i64
  br i1 %59, label %63, label %67, !dbg !921

61:                                               ; preds = %88
  call void @llvm.dbg.value(metadata i64 %90, metadata !858, metadata !DIExpression()) #26, !dbg !886
  call void @llvm.dbg.value(metadata i64 0, metadata !868, metadata !DIExpression()) #26, !dbg !886
  call void @llvm.dbg.value(metadata i8 %89, metadata !873, metadata !DIExpression()) #26, !dbg !886
  %62 = icmp eq i64 %90, 0, !dbg !922
  br i1 %62, label %154, label %63, !dbg !922

63:                                               ; preds = %46, %61
  %64 = phi i64 [ %90, %61 ], [ 1, %46 ]
  %65 = phi i8 [ %89, %61 ], [ 1, %46 ]
  %66 = icmp slt i32 %39, 0
  br label %93, !dbg !922

67:                                               ; preds = %46, %88
  %68 = phi i64 [ %91, %88 ], [ 1, %46 ]
  %69 = phi i64 [ %90, %88 ], [ 1, %46 ]
  %70 = phi i8 [ %89, %88 ], [ 1, %46 ]
  call void @llvm.dbg.value(metadata i64 %69, metadata !858, metadata !DIExpression()) #26, !dbg !886
  call void @llvm.dbg.value(metadata i64 %68, metadata !872, metadata !DIExpression()) #26, !dbg !886
  call void @llvm.dbg.value(metadata i8 %70, metadata !873, metadata !DIExpression()) #26, !dbg !886
  %71 = getelementptr inbounds i8*, i8** %54, i64 %68, !dbg !923
  %72 = load i8*, i8** %71, align 8, !dbg !923, !tbaa !672
  %73 = tail call %struct._IO_FILE* @fopen_safer(i8* %72, i8* %42) #26, !dbg !925
  %74 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %53, i64 %68, !dbg !926
  store %struct._IO_FILE* %73, %struct._IO_FILE** %74, align 8, !dbg !927, !tbaa !672
  %75 = icmp eq %struct._IO_FILE* %73, null, !dbg !928
  br i1 %75, label %76, label %85, !dbg !930

76:                                               ; preds = %67
  %77 = load i32, i32* @output_error, align 4, !dbg !931, !tbaa !830
  %78 = add i32 %77, -3, !dbg !933
  %79 = icmp ult i32 %78, 2, !dbg !933
  %80 = zext i1 %79 to i32, !dbg !933
  %81 = tail call i32* @__errno_location() #30, !dbg !934
  %82 = load i32, i32* %81, align 4, !dbg !934, !tbaa !849
  %83 = load i8*, i8** %71, align 8, !dbg !935, !tbaa !672
  %84 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %83) #26, !dbg !935
  tail call void (i32, i32, i8*, ...) @error(i32 %80, i32 %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* %84) #26, !dbg !936
  call void @llvm.dbg.value(metadata i8 0, metadata !873, metadata !DIExpression()) #26, !dbg !886
  br label %88, !dbg !937

85:                                               ; preds = %67
  %86 = tail call i32 @setvbuf(%struct._IO_FILE* nonnull %73, i8* null, i32 2, i64 0) #26, !dbg !938
  %87 = add i64 %69, 1, !dbg !940
  call void @llvm.dbg.value(metadata i64 %87, metadata !858, metadata !DIExpression()) #26, !dbg !886
  br label %88

88:                                               ; preds = %85, %76
  %89 = phi i8 [ 0, %76 ], [ %70, %85 ], !dbg !886
  %90 = phi i64 [ %69, %76 ], [ %87, %85 ], !dbg !886
  call void @llvm.dbg.value(metadata i64 %90, metadata !858, metadata !DIExpression()) #26, !dbg !886
  call void @llvm.dbg.value(metadata i8 %89, metadata !873, metadata !DIExpression()) #26, !dbg !886
  %91 = add nuw nsw i64 %68, 1, !dbg !941
  call void @llvm.dbg.value(metadata i64 %91, metadata !872, metadata !DIExpression()) #26, !dbg !886
  %92 = icmp eq i64 %91, %60, !dbg !918
  br i1 %92, label %61, label %67, !dbg !921, !llvm.loop !942

93:                                               ; preds = %102, %63
  %94 = phi i64 [ %64, %63 ], [ %104, %102 ]
  %95 = phi i8 [ %65, %63 ], [ %103, %102 ]
  call void @llvm.dbg.value(metadata i64 %94, metadata !858, metadata !DIExpression()) #26, !dbg !886
  call void @llvm.dbg.value(metadata i8 %95, metadata !873, metadata !DIExpression()) #26, !dbg !886
  %96 = call i64 @read(i32 0, i8* nonnull %40, i64 8192) #26, !dbg !944
  call void @llvm.dbg.value(metadata i64 %96, metadata !868, metadata !DIExpression()) #26, !dbg !886
  %97 = icmp slt i64 %96, 0, !dbg !945
  br i1 %97, label %98, label %106, !dbg !947

98:                                               ; preds = %93
  %99 = tail call i32* @__errno_location() #30, !dbg !948
  %100 = load i32, i32* %99, align 4, !dbg !948, !tbaa !849
  %101 = icmp eq i32 %100, 4, !dbg !949
  br i1 %101, label %102, label %147, !dbg !950

102:                                              ; preds = %142, %108, %98
  %103 = phi i8 [ %95, %98 ], [ %95, %108 ], [ %143, %142 ]
  %104 = phi i64 [ %94, %98 ], [ %94, %108 ], [ %144, %142 ]
  call void @llvm.dbg.value(metadata i64 %104, metadata !858, metadata !DIExpression()) #26, !dbg !886
  call void @llvm.dbg.value(metadata i64 %96, metadata !868, metadata !DIExpression()) #26, !dbg !886
  call void @llvm.dbg.value(metadata i8 %103, metadata !873, metadata !DIExpression()) #26, !dbg !886
  %105 = icmp eq i64 %104, 0, !dbg !922
  br i1 %105, label %147, label %93, !dbg !922, !llvm.loop !951

106:                                              ; preds = %93
  %107 = icmp eq i64 %96, 0, !dbg !953
  br i1 %107, label %154, label %108, !dbg !955

108:                                              ; preds = %106
  call void @llvm.dbg.value(metadata i64 %94, metadata !858, metadata !DIExpression()) #26, !dbg !886
  call void @llvm.dbg.value(metadata i32 0, metadata !872, metadata !DIExpression()) #26, !dbg !886
  call void @llvm.dbg.value(metadata i8 %95, metadata !873, metadata !DIExpression()) #26, !dbg !886
  br i1 %66, label %102, label %109, !dbg !956, !llvm.loop !957

109:                                              ; preds = %108, %142
  %110 = phi i64 [ %145, %142 ], [ 0, %108 ]
  %111 = phi i64 [ %144, %142 ], [ %94, %108 ]
  %112 = phi i8 [ %143, %142 ], [ %95, %108 ]
  call void @llvm.dbg.value(metadata i64 %111, metadata !858, metadata !DIExpression()) #26, !dbg !886
  call void @llvm.dbg.value(metadata i64 %110, metadata !872, metadata !DIExpression()) #26, !dbg !886
  call void @llvm.dbg.value(metadata i8 %112, metadata !873, metadata !DIExpression()) #26, !dbg !886
  %113 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %53, i64 %110, !dbg !958
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** %113, align 8, !dbg !958, !tbaa !672
  %115 = icmp eq %struct._IO_FILE* %114, null, !dbg !958
  br i1 %115, label %142, label %116, !dbg !959

116:                                              ; preds = %109
  %117 = call i64 @fwrite_unlocked(i8* nonnull %40, i64 %96, i64 1, %struct._IO_FILE* nonnull %114) #26, !dbg !960
  %118 = icmp eq i64 %117, 1, !dbg !961
  br i1 %118, label %142, label %119, !dbg !962

119:                                              ; preds = %116
  %120 = tail call i32* @__errno_location() #30, !dbg !963
  %121 = load i32, i32* %120, align 4, !dbg !963, !tbaa !849
  call void @llvm.dbg.value(metadata i32 %121, metadata !883, metadata !DIExpression()) #26, !dbg !964
  %122 = icmp ne i32 %121, 32, !dbg !965
  %123 = load i32, i32* @output_error, align 4, !dbg !966
  %124 = and i32 %123, -3, !dbg !966
  %125 = icmp eq i32 %124, 1, !dbg !966
  %126 = or i1 %122, %125, !dbg !966
  call void @llvm.dbg.value(metadata i1 %126, metadata !885, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !964
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !967, !tbaa !672
  %128 = icmp eq %struct._IO_FILE* %114, %127, !dbg !969
  br i1 %128, label %129, label %130, !dbg !970

129:                                              ; preds = %119
  tail call void @clearerr_unlocked(%struct._IO_FILE* nonnull %114) #26, !dbg !971
  br label %130, !dbg !971

130:                                              ; preds = %129, %119
  br i1 %126, label %131, label %139, !dbg !972

131:                                              ; preds = %130
  %132 = load i32, i32* @output_error, align 4, !dbg !973, !tbaa !830
  %133 = add i32 %132, -3, !dbg !976
  %134 = icmp ult i32 %133, 2, !dbg !976
  %135 = zext i1 %134 to i32, !dbg !976
  %136 = getelementptr inbounds i8*, i8** %54, i64 %110, !dbg !977
  %137 = load i8*, i8** %136, align 8, !dbg !977, !tbaa !672
  %138 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %137) #26, !dbg !977
  tail call void (i32, i32, i8*, ...) @error(i32 %135, i32 %121, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* %138) #26, !dbg !978
  br label %139, !dbg !979

139:                                              ; preds = %131, %130
  %140 = phi i8 [ 0, %131 ], [ %112, %130 ], !dbg !980
  store %struct._IO_FILE* null, %struct._IO_FILE** %113, align 8, !dbg !980, !tbaa !672
  call void @llvm.dbg.value(metadata i8 %140, metadata !873, metadata !DIExpression()) #26, !dbg !886
  %141 = add i64 %111, -1, !dbg !981
  call void @llvm.dbg.value(metadata i64 %141, metadata !858, metadata !DIExpression()) #26, !dbg !886
  br label %142, !dbg !982

142:                                              ; preds = %139, %116, %109
  %143 = phi i8 [ %140, %139 ], [ %112, %116 ], [ %112, %109 ], !dbg !886
  %144 = phi i64 [ %141, %139 ], [ %111, %116 ], [ %111, %109 ], !dbg !886
  call void @llvm.dbg.value(metadata i64 %144, metadata !858, metadata !DIExpression()) #26, !dbg !886
  call void @llvm.dbg.value(metadata i8 %143, metadata !873, metadata !DIExpression()) #26, !dbg !886
  %145 = add nuw nsw i64 %110, 1, !dbg !983
  call void @llvm.dbg.value(metadata i64 %145, metadata !872, metadata !DIExpression()) #26, !dbg !886
  %146 = icmp eq i64 %145, %60, !dbg !984
  br i1 %146, label %102, label %109, !dbg !956, !llvm.loop !985

147:                                              ; preds = %102, %98
  %148 = phi i8 [ %103, %102 ], [ %95, %98 ]
  %149 = icmp eq i64 %96, -1, !dbg !987
  call void @llvm.dbg.value(metadata i64 undef, metadata !868, metadata !DIExpression()) #26, !dbg !886
  br i1 %149, label %150, label %154, !dbg !989

150:                                              ; preds = %147
  %151 = tail call i32* @__errno_location() #30, !dbg !990
  %152 = load i32, i32* %151, align 4, !dbg !990, !tbaa !849
  %153 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i64 0, i64 0), i32 5) #26, !dbg !992
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %152, i8* %153) #26, !dbg !993
  call void @llvm.dbg.value(metadata i8 0, metadata !873, metadata !DIExpression()) #26, !dbg !886
  br label %154, !dbg !994

154:                                              ; preds = %106, %150, %147, %61
  %155 = phi i8 [ 0, %150 ], [ %148, %147 ], [ %89, %61 ], [ %95, %106 ], !dbg !886
  call void @llvm.dbg.value(metadata i8 %155, metadata !873, metadata !DIExpression()) #26, !dbg !886
  call void @llvm.dbg.value(metadata i32 1, metadata !872, metadata !DIExpression()) #26, !dbg !886
  br i1 %59, label %177, label %156, !dbg !995

156:                                              ; preds = %154
  %157 = zext i32 %49 to i64, !dbg !997
  br label %158, !dbg !995

158:                                              ; preds = %173, %156
  %159 = phi i64 [ 1, %156 ], [ %175, %173 ]
  %160 = phi i8 [ %155, %156 ], [ %174, %173 ]
  call void @llvm.dbg.value(metadata i64 %159, metadata !872, metadata !DIExpression()) #26, !dbg !886
  call void @llvm.dbg.value(metadata i8 %160, metadata !873, metadata !DIExpression()) #26, !dbg !886
  %161 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %53, i64 %159, !dbg !999
  %162 = load %struct._IO_FILE*, %struct._IO_FILE** %161, align 8, !dbg !999, !tbaa !672
  %163 = icmp eq %struct._IO_FILE* %162, null, !dbg !999
  br i1 %163, label %173, label %164, !dbg !1001

164:                                              ; preds = %158
  %165 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %162) #26, !dbg !1002
  %166 = icmp eq i32 %165, 0, !dbg !1003
  br i1 %166, label %173, label %167, !dbg !1004

167:                                              ; preds = %164
  %168 = tail call i32* @__errno_location() #30, !dbg !1005
  %169 = load i32, i32* %168, align 4, !dbg !1005, !tbaa !849
  %170 = getelementptr inbounds i8*, i8** %54, i64 %159, !dbg !1007
  %171 = load i8*, i8** %170, align 8, !dbg !1007, !tbaa !672
  %172 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %171) #26, !dbg !1007
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %169, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* %172) #26, !dbg !1008
  call void @llvm.dbg.value(metadata i8 0, metadata !873, metadata !DIExpression()) #26, !dbg !886
  br label %173, !dbg !1009

173:                                              ; preds = %167, %164, %158
  %174 = phi i8 [ 0, %167 ], [ %160, %164 ], [ %160, %158 ], !dbg !886
  call void @llvm.dbg.value(metadata i8 %174, metadata !873, metadata !DIExpression()) #26, !dbg !886
  %175 = add nuw nsw i64 %159, 1, !dbg !1010
  call void @llvm.dbg.value(metadata i64 %175, metadata !872, metadata !DIExpression()) #26, !dbg !886
  %176 = icmp eq i64 %175, %157, !dbg !997
  br i1 %176, label %177, label %158, !dbg !995, !llvm.loop !1011

177:                                              ; preds = %173, %154
  %178 = phi i8 [ %155, %154 ], [ %174, %173 ], !dbg !886
  tail call void @free(i8* %52) #26, !dbg !1013
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %40) #26, !dbg !1014
  call void @llvm.dbg.value(metadata i1 undef, metadata !807, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !809
  %179 = tail call i32 @close(i32 0) #26, !dbg !1015
  %180 = icmp eq i32 %179, 0, !dbg !1017
  br i1 %180, label %185, label %181, !dbg !1018

181:                                              ; preds = %177
  %182 = tail call i32* @__errno_location() #30, !dbg !1019
  %183 = load i32, i32* %182, align 4, !dbg !1019, !tbaa !849
  %184 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i32 5) #26, !dbg !1019
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %183, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* %184) #26, !dbg !1019
  unreachable, !dbg !1019

185:                                              ; preds = %177
  %186 = and i8 %178, 1, !dbg !1020
  call void @llvm.dbg.value(metadata i1 undef, metadata !807, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !809
  %187 = xor i8 %186, 1, !dbg !1021
  %188 = zext i8 %187 to i32, !dbg !1021
  ret i32 %188, !dbg !1022
}

; Function Attrs: nounwind
declare !dbg !1023 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1026 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1029 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1033 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1039 void (i32)* @signal(i32, void (i32)*) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1042 noundef i32 @setvbuf(%struct._IO_FILE* nocapture noundef, i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #9

declare !dbg !1045 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare !dbg !1049 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !1052 void @clearerr_unlocked(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #11

declare !dbg !1055 i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal void @__argmatch_die() #8 !dbg !1059 {
  tail call void @usage(i32 1) #26, !dbg !1060
  ret void, !dbg !1061
}

; Function Attrs: nounwind readonly sspstrong uwtable willreturn
define dso_local i64 @argmatch(i8* nocapture readonly %0, i8** nocapture readonly %1, i8* readonly %2, i64 %3) local_unnamed_addr #12 !dbg !1062 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1068, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.value(metadata i8** %1, metadata !1069, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.value(metadata i8* %2, metadata !1070, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.value(metadata i64 %3, metadata !1071, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.value(metadata i64 -1, metadata !1074, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.value(metadata i8 0, metadata !1075, metadata !DIExpression()), !dbg !1076
  %5 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #27, !dbg !1077
  call void @llvm.dbg.value(metadata i64 %5, metadata !1073, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.value(metadata i64 0, metadata !1072, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.value(metadata i8 0, metadata !1075, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.value(metadata i64 -1, metadata !1074, metadata !DIExpression()), !dbg !1076
  %6 = load i8*, i8** %1, align 8, !dbg !1078, !tbaa !672
  %7 = icmp eq i8* %6, null, !dbg !1081
  br i1 %7, label %38, label %8, !dbg !1081

8:                                                ; preds = %4
  %9 = icmp eq i8* %2, null
  br label %10, !dbg !1081

10:                                               ; preds = %8, %31
  %11 = phi i8* [ %6, %8 ], [ %36, %31 ]
  %12 = phi i8 [ 0, %8 ], [ %33, %31 ]
  %13 = phi i64 [ -1, %8 ], [ %32, %31 ]
  %14 = phi i64 [ 0, %8 ], [ %34, %31 ]
  call void @llvm.dbg.value(metadata i8 %12, metadata !1075, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.value(metadata i64 %13, metadata !1074, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.value(metadata i64 %14, metadata !1072, metadata !DIExpression()), !dbg !1076
  %15 = tail call i32 @strncmp(i8* nonnull %11, i8* %0, i64 %5) #27, !dbg !1082
  %16 = icmp eq i32 %15, 0, !dbg !1082
  br i1 %16, label %17, label %31, !dbg !1085

17:                                               ; preds = %10
  %18 = tail call i64 @strlen(i8* nonnull %11) #27, !dbg !1086
  %19 = icmp eq i64 %18, %5, !dbg !1089
  br i1 %19, label %44, label %20, !dbg !1090

20:                                               ; preds = %17
  %21 = icmp eq i64 %13, -1, !dbg !1091
  br i1 %21, label %31, label %22, !dbg !1093

22:                                               ; preds = %20
  br i1 %9, label %30, label %23, !dbg !1094

23:                                               ; preds = %22
  %24 = mul i64 %13, %3, !dbg !1097
  %25 = getelementptr inbounds i8, i8* %2, i64 %24, !dbg !1098
  %26 = mul i64 %14, %3, !dbg !1099
  %27 = getelementptr inbounds i8, i8* %2, i64 %26, !dbg !1100
  %28 = tail call i32 @bcmp(i8* nonnull %25, i8* nonnull %27, i64 %3), !dbg !1101
  %29 = icmp eq i32 %28, 0, !dbg !1101
  br i1 %29, label %31, label %30, !dbg !1102

30:                                               ; preds = %23, %22
  call void @llvm.dbg.value(metadata i8 1, metadata !1075, metadata !DIExpression()), !dbg !1076
  br label %31, !dbg !1103

31:                                               ; preds = %20, %10, %30, %23
  %32 = phi i64 [ %13, %10 ], [ %13, %30 ], [ %13, %23 ], [ %14, %20 ], !dbg !1076
  %33 = phi i8 [ %12, %10 ], [ 1, %30 ], [ %12, %23 ], [ %12, %20 ], !dbg !1076
  call void @llvm.dbg.value(metadata i8 %33, metadata !1075, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.value(metadata i64 %32, metadata !1074, metadata !DIExpression()), !dbg !1076
  %34 = add i64 %14, 1, !dbg !1105
  call void @llvm.dbg.value(metadata i64 %34, metadata !1072, metadata !DIExpression()), !dbg !1076
  %35 = getelementptr inbounds i8*, i8** %1, i64 %34, !dbg !1078
  %36 = load i8*, i8** %35, align 8, !dbg !1078, !tbaa !672
  %37 = icmp eq i8* %36, null, !dbg !1081
  br i1 %37, label %38, label %10, !dbg !1081, !llvm.loop !1106

38:                                               ; preds = %31, %4
  %39 = phi i64 [ -1, %4 ], [ %32, %31 ], !dbg !1108
  %40 = phi i8 [ 0, %4 ], [ %33, %31 ], !dbg !1109
  %41 = and i8 %40, 1, !dbg !1110
  %42 = icmp eq i8 %41, 0, !dbg !1110
  %43 = select i1 %42, i64 %39, i64 -2, !dbg !1112
  ret i64 %43, !dbg !1112

44:                                               ; preds = %17
  ret i64 %14, !dbg !1113
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #13

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @argmatch_invalid(i8* %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !1114 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1118, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i8* %1, metadata !1119, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i64 %2, metadata !1120, metadata !DIExpression()), !dbg !1122
  %4 = icmp eq i64 %2, -1, !dbg !1123
  %5 = select i1 %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.51, i64 0, i64 0), !dbg !1124
  %6 = tail call i8* @dcgettext(i8* null, i8* %5, i32 5) #26, !dbg !1122
  call void @llvm.dbg.value(metadata i8* %6, metadata !1121, metadata !DIExpression()), !dbg !1122
  %7 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %1) #26, !dbg !1125
  %8 = tail call i8* @quote_n(i32 1, i8* %0) #26, !dbg !1126
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %6, i8* %7, i8* %8) #26, !dbg !1127
  ret void, !dbg !1128
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @argmatch_valid(i8** nocapture readonly %0, i8* nocapture readonly %1, i64 %2) local_unnamed_addr #8 !dbg !1129 {
  call void @llvm.dbg.value(metadata i8** %0, metadata !1133, metadata !DIExpression()), !dbg !1138
  call void @llvm.dbg.value(metadata i8* %1, metadata !1134, metadata !DIExpression()), !dbg !1138
  call void @llvm.dbg.value(metadata i64 %2, metadata !1135, metadata !DIExpression()), !dbg !1138
  call void @llvm.dbg.value(metadata i8* null, metadata !1137, metadata !DIExpression()), !dbg !1138
  %4 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2.52, i64 0, i64 0), i32 5) #26, !dbg !1139
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1139, !tbaa !672
  %6 = tail call i32 @fputs_unlocked(i8* %4, %struct._IO_FILE* %5), !dbg !1139
  call void @llvm.dbg.value(metadata i64 0, metadata !1136, metadata !DIExpression()), !dbg !1138
  call void @llvm.dbg.value(metadata i8* null, metadata !1137, metadata !DIExpression()), !dbg !1138
  %7 = load i8*, i8** %0, align 8, !dbg !1140, !tbaa !672
  %8 = icmp eq i8* %7, null, !dbg !1143
  br i1 %8, label %35, label %9, !dbg !1143

9:                                                ; preds = %3, %29
  %10 = phi i8* [ %33, %29 ], [ %7, %3 ]
  %11 = phi i8* [ %30, %29 ], [ null, %3 ]
  %12 = phi i64 [ %31, %29 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i8* %11, metadata !1137, metadata !DIExpression()), !dbg !1138
  call void @llvm.dbg.value(metadata i64 %12, metadata !1136, metadata !DIExpression()), !dbg !1138
  %13 = icmp eq i64 %12, 0, !dbg !1144
  br i1 %13, label %19, label %14, !dbg !1146

14:                                               ; preds = %9
  %15 = mul i64 %12, %2, !dbg !1147
  %16 = getelementptr inbounds i8, i8* %1, i64 %15, !dbg !1148
  %17 = tail call i32 @bcmp(i8* %11, i8* %16, i64 %2), !dbg !1149
  %18 = icmp eq i32 %17, 0, !dbg !1149
  br i1 %18, label %25, label %19, !dbg !1150

19:                                               ; preds = %9, %14
  %20 = phi i64 [ %15, %14 ], [ 0, %9 ], !dbg !1151
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1153, !tbaa !672
  %22 = tail call i8* @quote(i8* nonnull %10) #26, !dbg !1153
  %23 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %21, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.53, i64 0, i64 0), i8* %22) #26, !dbg !1153
  %24 = getelementptr inbounds i8, i8* %1, i64 %20, !dbg !1154
  call void @llvm.dbg.value(metadata i8* %24, metadata !1137, metadata !DIExpression()), !dbg !1138
  br label %29, !dbg !1155

25:                                               ; preds = %14
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1156, !tbaa !672
  %27 = tail call i8* @quote(i8* nonnull %10) #26, !dbg !1156
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %26, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.54, i64 0, i64 0), i8* %27) #26, !dbg !1156
  br label %29

29:                                               ; preds = %19, %25
  %30 = phi i8* [ %24, %19 ], [ %11, %25 ], !dbg !1138
  call void @llvm.dbg.value(metadata i8* %30, metadata !1137, metadata !DIExpression()), !dbg !1138
  %31 = add i64 %12, 1, !dbg !1158
  call void @llvm.dbg.value(metadata i64 %31, metadata !1136, metadata !DIExpression()), !dbg !1138
  %32 = getelementptr inbounds i8*, i8** %0, i64 %31, !dbg !1140
  %33 = load i8*, i8** %32, align 8, !dbg !1140, !tbaa !672
  %34 = icmp eq i8* %33, null, !dbg !1143
  br i1 %34, label %35, label %9, !dbg !1143, !llvm.loop !1159

35:                                               ; preds = %29, %3
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1161, !tbaa !672
  call void @llvm.dbg.value(metadata i32 10, metadata !1162, metadata !DIExpression()) #26, !dbg !1203
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %36, metadata !1202, metadata !DIExpression()) #26, !dbg !1203
  %37 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %36, i64 0, i32 5, !dbg !1205
  %38 = load i8*, i8** %37, align 8, !dbg !1205, !tbaa !1206
  %39 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %36, i64 0, i32 6, !dbg !1205
  %40 = load i8*, i8** %39, align 8, !dbg !1205, !tbaa !1210
  %41 = icmp ult i8* %38, %40, !dbg !1205
  br i1 %41, label %44, label %42, !dbg !1205, !prof !1211

42:                                               ; preds = %35
  %43 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %36, i32 10) #26, !dbg !1205
  br label %46, !dbg !1205

44:                                               ; preds = %35
  %45 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !1205
  store i8* %45, i8** %37, align 8, !dbg !1205, !tbaa !1206
  store i8 10, i8* %38, align 1, !dbg !1205, !tbaa !830
  br label %46, !dbg !1205

46:                                               ; preds = %42, %44
  ret void, !dbg !1212
}

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @__xargmatch_internal(i8* %0, i8* %1, i8** nocapture readonly %2, i8* readonly %3, i64 %4, void ()* nocapture %5) local_unnamed_addr #8 !dbg !1213 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1217, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i8* %1, metadata !1218, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i8** %2, metadata !1219, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i8* %3, metadata !1220, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i64 %4, metadata !1221, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata void ()* %5, metadata !1222, metadata !DIExpression()), !dbg !1224
  %7 = tail call i64 @argmatch(i8* %1, i8** %2, i8* %3, i64 %4) #27, !dbg !1225
  call void @llvm.dbg.value(metadata i64 %7, metadata !1223, metadata !DIExpression()), !dbg !1224
  %8 = icmp sgt i64 %7, -1, !dbg !1226
  br i1 %8, label %15, label %9, !dbg !1228

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %0, metadata !1118, metadata !DIExpression()) #26, !dbg !1229
  call void @llvm.dbg.value(metadata i8* %1, metadata !1119, metadata !DIExpression()) #26, !dbg !1229
  call void @llvm.dbg.value(metadata i64 %7, metadata !1120, metadata !DIExpression()) #26, !dbg !1229
  %10 = icmp eq i64 %7, -1, !dbg !1231
  %11 = select i1 %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.51, i64 0, i64 0), !dbg !1232
  %12 = tail call i8* @dcgettext(i8* null, i8* %11, i32 5) #26, !dbg !1229
  call void @llvm.dbg.value(metadata i8* %12, metadata !1121, metadata !DIExpression()) #26, !dbg !1229
  %13 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %1) #26, !dbg !1233
  %14 = tail call i8* @quote_n(i32 1, i8* %0) #26, !dbg !1234
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %12, i8* %13, i8* %14) #26, !dbg !1235
  tail call void @argmatch_valid(i8** %2, i8* %3, i64 %4), !dbg !1236
  tail call void %5() #26, !dbg !1237
  br label %15, !dbg !1238

15:                                               ; preds = %6, %9
  %16 = phi i64 [ -1, %9 ], [ %7, %6 ], !dbg !1224
  ret i64 %16, !dbg !1239
}

; Function Attrs: nounwind readonly sspstrong uwtable willreturn
define dso_local i8* @argmatch_to_argument(i8* nocapture readonly %0, i8** nocapture readonly %1, i8* nocapture readonly %2, i64 %3) local_unnamed_addr #12 !dbg !1240 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1244, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i8** %1, metadata !1245, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i8* %2, metadata !1246, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i64 %3, metadata !1247, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i64 0, metadata !1248, metadata !DIExpression()), !dbg !1249
  %5 = load i8*, i8** %1, align 8, !dbg !1250, !tbaa !672
  %6 = icmp eq i8* %5, null, !dbg !1253
  br i1 %6, label %21, label %7, !dbg !1253

7:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i64 0, metadata !1248, metadata !DIExpression()), !dbg !1249
  %8 = tail call i32 @bcmp(i8* %0, i8* %2, i64 %3), !dbg !1254
  %9 = icmp eq i32 %8, 0, !dbg !1254
  call void @llvm.dbg.value(metadata i64 1, metadata !1248, metadata !DIExpression()), !dbg !1249
  br i1 %9, label %21, label %10, !dbg !1256

10:                                               ; preds = %7, %15
  %11 = phi i64 [ %20, %15 ], [ 1, %7 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !1248, metadata !DIExpression()), !dbg !1249
  %12 = getelementptr inbounds i8*, i8** %1, i64 %11, !dbg !1250
  %13 = load i8*, i8** %12, align 8, !dbg !1250, !tbaa !672
  %14 = icmp eq i8* %13, null, !dbg !1253
  br i1 %14, label %21, label %15, !dbg !1253, !llvm.loop !1257

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i64 %11, metadata !1248, metadata !DIExpression()), !dbg !1249
  %16 = mul i64 %11, %3, !dbg !1259
  %17 = getelementptr inbounds i8, i8* %2, i64 %16, !dbg !1260
  %18 = tail call i32 @bcmp(i8* %0, i8* %17, i64 %3), !dbg !1254
  %19 = icmp eq i32 %18, 0, !dbg !1254
  %20 = add i64 %11, 1, !dbg !1261
  call void @llvm.dbg.value(metadata i64 %20, metadata !1248, metadata !DIExpression()), !dbg !1249
  br i1 %19, label %21, label %10, !dbg !1256, !llvm.loop !1257

21:                                               ; preds = %10, %15, %7, %4
  %22 = phi i8* [ null, %4 ], [ %5, %7 ], [ %13, %15 ], [ null, %10 ], !dbg !1250
  ret i8* %22, !dbg !1262
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #14 !dbg !1263 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1265, metadata !DIExpression()), !dbg !1266
  store i8* %0, i8** @file_name, align 8, !dbg !1267, !tbaa !672
  ret void, !dbg !1268
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #14 !dbg !1269 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1273, metadata !DIExpression()), !dbg !1274
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1275, !tbaa !1276
  ret void, !dbg !1278
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1279 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1284, !tbaa !672
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #26, !dbg !1285
  %3 = icmp eq i32 %2, 0, !dbg !1286
  br i1 %3, label %22, label %4, !dbg !1287

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1288, !tbaa !1276, !range !1289
  %6 = icmp eq i8 %5, 0, !dbg !1288
  br i1 %6, label %11, label %7, !dbg !1290

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #30, !dbg !1291
  %9 = load i32, i32* %8, align 4, !dbg !1291, !tbaa !849
  %10 = icmp eq i32 %9, 32, !dbg !1292
  br i1 %10, label %22, label %11, !dbg !1293

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.59, i64 0, i64 0), i32 5) #26, !dbg !1294
  call void @llvm.dbg.value(metadata i8* %12, metadata !1281, metadata !DIExpression()), !dbg !1295
  %13 = load i8*, i8** @file_name, align 8, !dbg !1296, !tbaa !672
  %14 = icmp eq i8* %13, null, !dbg !1296
  %15 = tail call i32* @__errno_location() #30, !dbg !1298
  %16 = load i32, i32* %15, align 4, !dbg !1298, !tbaa !849
  br i1 %14, label %19, label %17, !dbg !1299

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #26, !dbg !1300
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.60, i64 0, i64 0), i8* %18, i8* %12) #26, !dbg !1301
  br label %20, !dbg !1301

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.61, i64 0, i64 0), i8* %12) #26, !dbg !1302
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1303, !tbaa !849
  tail call void @_exit(i32 %21) #28, !dbg !1304
  unreachable, !dbg !1304

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1305, !tbaa !672
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #26, !dbg !1307
  %25 = icmp eq i32 %24, 0, !dbg !1308
  br i1 %25, label %28, label %26, !dbg !1309

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1310, !tbaa !849
  tail call void @_exit(i32 %27) #28, !dbg !1311
  unreachable, !dbg !1311

28:                                               ; preds = %22
  ret void, !dbg !1312
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #15

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32 %0, i64 %1, i64 %2, i32 %3) local_unnamed_addr #8 !dbg !1313 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1319, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %1, metadata !1320, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %2, metadata !1321, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i32 %3, metadata !1322, metadata !DIExpression()), !dbg !1325
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #26, !dbg !1326
  call void @llvm.dbg.value(metadata i32 %5, metadata !1323, metadata !DIExpression()), !dbg !1327
  ret void, !dbg !1328
}

; Function Attrs: nounwind
declare !dbg !1329 i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE* %0, i32 %1) local_unnamed_addr #8 !dbg !1333 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1371, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i32 %1, metadata !1372, metadata !DIExpression()), !dbg !1373
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1374
  br i1 %3, label %7, label %4, !dbg !1376

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #26, !dbg !1377
  call void @llvm.dbg.value(metadata i32 %5, metadata !1319, metadata !DIExpression()) #26, !dbg !1378
  call void @llvm.dbg.value(metadata i64 0, metadata !1320, metadata !DIExpression()) #26, !dbg !1378
  call void @llvm.dbg.value(metadata i64 0, metadata !1321, metadata !DIExpression()) #26, !dbg !1378
  call void @llvm.dbg.value(metadata i32 %1, metadata !1322, metadata !DIExpression()) #26, !dbg !1378
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #26, !dbg !1380
  call void @llvm.dbg.value(metadata i32 %6, metadata !1323, metadata !DIExpression()) #26, !dbg !1381
  br label %7, !dbg !1382

7:                                                ; preds = %4, %2
  ret void, !dbg !1383
}

; Function Attrs: nofree nounwind
declare !dbg !1384 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct._IO_FILE* @fopen_safer(i8* nocapture readonly %0, i8* nocapture readonly %1) local_unnamed_addr #8 !dbg !1387 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1425, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i8* %1, metadata !1426, metadata !DIExpression()), !dbg !1440
  %3 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* %1), !dbg !1441
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %3, metadata !1427, metadata !DIExpression()), !dbg !1440
  %4 = icmp eq %struct._IO_FILE* %3, null, !dbg !1442
  br i1 %4, label %25, label %5, !dbg !1443

5:                                                ; preds = %2
  %6 = tail call i32 @fileno(%struct._IO_FILE* nonnull %3) #26, !dbg !1444
  call void @llvm.dbg.value(metadata i32 %6, metadata !1428, metadata !DIExpression()), !dbg !1445
  %7 = icmp ult i32 %6, 3, !dbg !1446
  br i1 %7, label %8, label %25, !dbg !1446

8:                                                ; preds = %5
  %9 = tail call i32 @dup_safer(i32 %6) #26, !dbg !1447
  call void @llvm.dbg.value(metadata i32 %9, metadata !1431, metadata !DIExpression()), !dbg !1448
  %10 = icmp slt i32 %9, 0, !dbg !1449
  br i1 %10, label %11, label %15, !dbg !1450

11:                                               ; preds = %8
  %12 = tail call i32* @__errno_location() #30, !dbg !1451
  %13 = load i32, i32* %12, align 4, !dbg !1451, !tbaa !849
  call void @llvm.dbg.value(metadata i32 %13, metadata !1434, metadata !DIExpression()), !dbg !1452
  %14 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #26, !dbg !1453
  store i32 %13, i32* %12, align 4, !dbg !1454, !tbaa !849
  br label %25

15:                                               ; preds = %8
  %16 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #26, !dbg !1455
  %17 = icmp eq i32 %16, 0, !dbg !1456
  br i1 %17, label %18, label %21, !dbg !1457

18:                                               ; preds = %15
  %19 = tail call %struct._IO_FILE* @fdopen(i32 %9, i8* %1) #26, !dbg !1458
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %19, metadata !1427, metadata !DIExpression()), !dbg !1440
  %20 = icmp eq %struct._IO_FILE* %19, null, !dbg !1459
  br i1 %20, label %21, label %25, !dbg !1460

21:                                               ; preds = %18, %15
  call void @llvm.dbg.value(metadata %struct._IO_FILE* undef, metadata !1427, metadata !DIExpression()), !dbg !1440
  %22 = tail call i32* @__errno_location() #30, !dbg !1461
  %23 = load i32, i32* %22, align 4, !dbg !1461, !tbaa !849
  call void @llvm.dbg.value(metadata i32 %23, metadata !1437, metadata !DIExpression()), !dbg !1462
  %24 = tail call i32 @close(i32 %9) #26, !dbg !1463
  store i32 %23, i32* %22, align 4, !dbg !1464, !tbaa !849
  br label %25

25:                                               ; preds = %5, %18, %2, %21, %11
  %26 = phi %struct._IO_FILE* [ null, %11 ], [ null, %21 ], [ null, %2 ], [ %19, %18 ], [ %3, %5 ], !dbg !1440
  ret %struct._IO_FILE* %26, !dbg !1465
}

; Function Attrs: nofree nounwind
declare noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1466 noalias noundef %struct._IO_FILE* @fdopen(i32 noundef, i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1469 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1471, metadata !DIExpression()), !dbg !1474
  %2 = icmp eq i8* %0, null, !dbg !1475
  br i1 %2, label %3, label %6, !dbg !1477

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1478, !tbaa !672
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.72, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #31, !dbg !1480
  tail call void @abort() #28, !dbg !1481
  unreachable, !dbg !1481

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #27, !dbg !1482
  call void @llvm.dbg.value(metadata i8* %7, metadata !1472, metadata !DIExpression()), !dbg !1474
  %8 = icmp eq i8* %7, null, !dbg !1483
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1484
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1484
  call void @llvm.dbg.value(metadata i8* %10, metadata !1473, metadata !DIExpression()), !dbg !1474
  %11 = ptrtoint i8* %10 to i64, !dbg !1485
  %12 = ptrtoint i8* %0 to i64, !dbg !1485
  %13 = sub i64 %11, %12, !dbg !1485
  %14 = icmp sgt i64 %13, 6, !dbg !1487
  br i1 %14, label %15, label %24, !dbg !1488

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1489
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.73, i64 0, i64 0), i64 7) #27, !dbg !1490
  %18 = icmp eq i32 %17, 0, !dbg !1491
  br i1 %18, label %19, label %24, !dbg !1492

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1471, metadata !DIExpression()), !dbg !1474
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.74, i64 0, i64 0), i64 3) #27, !dbg !1493
  %21 = icmp eq i32 %20, 0, !dbg !1496
  br i1 %21, label %22, label %24, !dbg !1497

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1498
  call void @llvm.dbg.value(metadata i8* %23, metadata !1471, metadata !DIExpression()), !dbg !1474
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1500, !tbaa !672
  br label %24, !dbg !1501

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1471, metadata !DIExpression()), !dbg !1474
  store i8* %25, i8** @program_name, align 8, !dbg !1502, !tbaa !672
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1503, !tbaa !672
  ret void, !dbg !1504
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #16

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1505 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1510, metadata !DIExpression()), !dbg !1513
  %2 = tail call i32* @__errno_location() #30, !dbg !1514
  %3 = load i32, i32* %2, align 4, !dbg !1514, !tbaa !849
  call void @llvm.dbg.value(metadata i32 %3, metadata !1511, metadata !DIExpression()), !dbg !1513
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1515
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1515
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1515
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #26, !dbg !1516
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1516
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1512, metadata !DIExpression()), !dbg !1513
  store i32 %3, i32* %2, align 4, !dbg !1517, !tbaa !849
  ret %struct.quoting_options* %8, !dbg !1518
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #17 !dbg !1519 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1525, metadata !DIExpression()), !dbg !1526
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1527
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1527
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1528
  %5 = load i32, i32* %4, align 8, !dbg !1528, !tbaa !1529
  ret i32 %5, !dbg !1531
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #14 !dbg !1532 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1536, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i32 %1, metadata !1537, metadata !DIExpression()), !dbg !1538
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1539
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1539
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1540
  store i32 %1, i32* %5, align 8, !dbg !1541, !tbaa !1529
  ret void, !dbg !1542
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #18 !dbg !1543 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1547, metadata !DIExpression()), !dbg !1555
  call void @llvm.dbg.value(metadata i8 %1, metadata !1548, metadata !DIExpression()), !dbg !1555
  call void @llvm.dbg.value(metadata i32 %2, metadata !1549, metadata !DIExpression()), !dbg !1555
  call void @llvm.dbg.value(metadata i8 %1, metadata !1550, metadata !DIExpression()), !dbg !1555
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1556
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1556
  %6 = lshr i8 %1, 5, !dbg !1557
  %7 = zext i8 %6 to i64, !dbg !1557
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1558
  call void @llvm.dbg.value(metadata i32* %8, metadata !1551, metadata !DIExpression()), !dbg !1555
  %9 = and i8 %1, 31, !dbg !1559
  %10 = zext i8 %9 to i32, !dbg !1559
  call void @llvm.dbg.value(metadata i32 %10, metadata !1553, metadata !DIExpression()), !dbg !1555
  %11 = load i32, i32* %8, align 4, !dbg !1560, !tbaa !849
  %12 = lshr i32 %11, %10, !dbg !1561
  %13 = and i32 %12, 1, !dbg !1562
  call void @llvm.dbg.value(metadata i32 %13, metadata !1554, metadata !DIExpression()), !dbg !1555
  %14 = and i32 %2, 1, !dbg !1563
  %15 = xor i32 %13, %14, !dbg !1564
  %16 = shl i32 %15, %10, !dbg !1565
  %17 = xor i32 %16, %11, !dbg !1566
  store i32 %17, i32* %8, align 4, !dbg !1566, !tbaa !849
  ret i32 %13, !dbg !1567
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #18 !dbg !1568 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1572, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i32 %1, metadata !1573, metadata !DIExpression()), !dbg !1575
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1576
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1578
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1572, metadata !DIExpression()), !dbg !1575
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1579
  %6 = load i32, i32* %5, align 4, !dbg !1579, !tbaa !1580
  call void @llvm.dbg.value(metadata i32 %6, metadata !1574, metadata !DIExpression()), !dbg !1575
  store i32 %1, i32* %5, align 4, !dbg !1581, !tbaa !1580
  ret i32 %6, !dbg !1582
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1583 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1587, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8* %1, metadata !1588, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8* %2, metadata !1589, metadata !DIExpression()), !dbg !1590
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1591
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1593
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1587, metadata !DIExpression()), !dbg !1590
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1594
  store i32 10, i32* %6, align 8, !dbg !1595, !tbaa !1529
  %7 = icmp ne i8* %1, null, !dbg !1596
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1598
  br i1 %9, label %11, label %10, !dbg !1598

10:                                               ; preds = %3
  tail call void @abort() #28, !dbg !1599
  unreachable, !dbg !1599

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1600
  store i8* %1, i8** %12, align 8, !dbg !1601, !tbaa !1602
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1603
  store i8* %2, i8** %13, align 8, !dbg !1604, !tbaa !1605
  ret void, !dbg !1606
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1607 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1611, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i64 %1, metadata !1612, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i8* %2, metadata !1613, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i64 %3, metadata !1614, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1615, metadata !DIExpression()), !dbg !1619
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1620
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1620
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1616, metadata !DIExpression()), !dbg !1619
  %8 = tail call i32* @__errno_location() #30, !dbg !1621
  %9 = load i32, i32* %8, align 4, !dbg !1621, !tbaa !849
  call void @llvm.dbg.value(metadata i32 %9, metadata !1617, metadata !DIExpression()), !dbg !1619
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1622
  %11 = load i32, i32* %10, align 8, !dbg !1622, !tbaa !1529
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1623
  %13 = load i32, i32* %12, align 4, !dbg !1623, !tbaa !1580
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1624
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1625
  %16 = load i8*, i8** %15, align 8, !dbg !1625, !tbaa !1602
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1626
  %18 = load i8*, i8** %17, align 8, !dbg !1626, !tbaa !1605
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1627
  call void @llvm.dbg.value(metadata i64 %19, metadata !1618, metadata !DIExpression()), !dbg !1619
  store i32 %9, i32* %8, align 4, !dbg !1628, !tbaa !849
  ret i64 %19, !dbg !1629
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1630 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1636, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %1, metadata !1637, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8* %2, metadata !1638, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %3, metadata !1639, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i32 %4, metadata !1640, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i32 %5, metadata !1641, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i32* %6, metadata !1642, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8* %7, metadata !1643, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8* %8, metadata !1644, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 0, metadata !1646, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 0, metadata !1647, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8* null, metadata !1648, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 0, metadata !1649, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8 0, metadata !1650, metadata !DIExpression()), !dbg !1704
  %13 = tail call i64 @__ctype_get_mb_cur_max() #26, !dbg !1705
  %14 = icmp eq i64 %13, 1, !dbg !1706
  call void @llvm.dbg.value(metadata i1 %14, metadata !1651, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1704
  %15 = lshr i32 %5, 1, !dbg !1707
  %16 = trunc i32 %15 to i8, !dbg !1707
  %17 = and i8 %16, 1, !dbg !1707
  call void @llvm.dbg.value(metadata i8 %17, metadata !1652, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8 0, metadata !1653, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8 0, metadata !1654, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8 1, metadata !1655, metadata !DIExpression()), !dbg !1704
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !1708

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !1709
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !1710
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !1711
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !1712
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !1704
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !1713
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !1714
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !1715
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1637, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8 %38, metadata !1655, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8 %37, metadata !1654, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8 %36, metadata !1653, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8 %35, metadata !1652, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %34, metadata !1639, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8 %33, metadata !1650, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %32, metadata !1649, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8* %31, metadata !1648, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %30, metadata !1647, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 0, metadata !1646, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8* %29, metadata !1644, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8* %28, metadata !1643, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i32 %27, metadata !1640, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.label(metadata !1698), !dbg !1716
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
  ], !dbg !1717

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1652, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i32 5, metadata !1640, metadata !DIExpression()), !dbg !1704
  br label %92, !dbg !1718

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1652, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i32 5, metadata !1640, metadata !DIExpression()), !dbg !1704
  %42 = and i8 %35, 1, !dbg !1720
  %43 = icmp eq i8 %42, 0, !dbg !1720
  br i1 %43, label %44, label %92, !dbg !1718

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1722
  br i1 %45, label %92, label %46, !dbg !1725

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1722, !tbaa !830
  br label %92, !dbg !1722

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.85, i64 0, i64 0), i32 %27), !dbg !1726
  call void @llvm.dbg.value(metadata i8* %48, metadata !1643, metadata !DIExpression()), !dbg !1704
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.86, i64 0, i64 0), i32 %27), !dbg !1730
  call void @llvm.dbg.value(metadata i8* %49, metadata !1644, metadata !DIExpression()), !dbg !1704
  br label %50, !dbg !1731

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1644, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8* %51, metadata !1643, metadata !DIExpression()), !dbg !1704
  %53 = and i8 %35, 1, !dbg !1732
  %54 = icmp eq i8 %53, 0, !dbg !1732
  br i1 %54, label %55, label %70, !dbg !1734

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1648, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 0, metadata !1646, metadata !DIExpression()), !dbg !1704
  %56 = load i8, i8* %51, align 1, !dbg !1735, !tbaa !830
  %57 = icmp eq i8 %56, 0, !dbg !1738
  br i1 %57, label %70, label %58, !dbg !1738

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1648, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %61, metadata !1646, metadata !DIExpression()), !dbg !1704
  %62 = icmp ult i64 %61, %39, !dbg !1739
  br i1 %62, label %63, label %65, !dbg !1742

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1739
  store i8 %59, i8* %64, align 1, !dbg !1739, !tbaa !830
  br label %65, !dbg !1739

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1742
  call void @llvm.dbg.value(metadata i64 %66, metadata !1646, metadata !DIExpression()), !dbg !1704
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1743
  call void @llvm.dbg.value(metadata i8* %67, metadata !1648, metadata !DIExpression()), !dbg !1704
  %68 = load i8, i8* %67, align 1, !dbg !1735, !tbaa !830
  %69 = icmp eq i8 %68, 0, !dbg !1738
  br i1 %69, label %70, label %58, !dbg !1738, !llvm.loop !1744

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1746
  call void @llvm.dbg.value(metadata i64 %71, metadata !1646, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8 1, metadata !1650, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8* %52, metadata !1648, metadata !DIExpression()), !dbg !1704
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #27, !dbg !1747
  call void @llvm.dbg.value(metadata i64 %72, metadata !1649, metadata !DIExpression()), !dbg !1704
  br label %92, !dbg !1748

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1650, metadata !DIExpression()), !dbg !1704
  br label %74, !dbg !1749

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1704
  call void @llvm.dbg.value(metadata i8 %75, metadata !1650, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8 1, metadata !1652, metadata !DIExpression()), !dbg !1704
  br label %76, !dbg !1750

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1712
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1704
  call void @llvm.dbg.value(metadata i8 %78, metadata !1652, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8 %77, metadata !1650, metadata !DIExpression()), !dbg !1704
  %79 = and i8 %78, 1, !dbg !1751
  %80 = icmp eq i8 %79, 0, !dbg !1751
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1753
  br label %82, !dbg !1753

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1704
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1707
  call void @llvm.dbg.value(metadata i8 %84, metadata !1652, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8 %83, metadata !1650, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i32 2, metadata !1640, metadata !DIExpression()), !dbg !1704
  %85 = and i8 %84, 1, !dbg !1754
  %86 = icmp eq i8 %85, 0, !dbg !1754
  br i1 %86, label %87, label %92, !dbg !1756

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1757
  br i1 %88, label %92, label %89, !dbg !1760

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1757, !tbaa !830
  br label %92, !dbg !1757

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1652, metadata !DIExpression()), !dbg !1704
  br label %92, !dbg !1761

91:                                               ; preds = %26
  call void @abort() #28, !dbg !1762
  unreachable, !dbg !1762

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !1746
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.87, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.87, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.87, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.86, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.86, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.86, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.87, i64 0, i64 0), %40 ], !dbg !1704
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !1704
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !1704
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !1704
  call void @llvm.dbg.value(metadata i8 %100, metadata !1652, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8 %99, metadata !1650, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %98, metadata !1649, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8* %97, metadata !1648, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %96, metadata !1646, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8* %95, metadata !1644, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8* %94, metadata !1643, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i32 %93, metadata !1640, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 0, metadata !1645, metadata !DIExpression()), !dbg !1704
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
  br label %121, !dbg !1763

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !1764
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !1746
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !1709
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !1713
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !1714
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !1715
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1637, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8 %128, metadata !1655, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8 %127, metadata !1654, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8 %126, metadata !1653, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %125, metadata !1639, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %124, metadata !1647, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %123, metadata !1646, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %122, metadata !1645, metadata !DIExpression()), !dbg !1704
  %130 = icmp eq i64 %125, -1, !dbg !1765
  br i1 %130, label %131, label %135, !dbg !1766

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1767
  %133 = load i8, i8* %132, align 1, !dbg !1767, !tbaa !830
  %134 = icmp eq i8 %133, 0, !dbg !1768
  br i1 %134, label %587, label %137, !dbg !1769

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1770
  br i1 %136, label %587, label %137, !dbg !1769

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1661, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 0, metadata !1662, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 0, metadata !1663, metadata !DIExpression()), !dbg !1771
  br i1 %106, label %138, label %153, !dbg !1772

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !1774
  %140 = and i1 %107, %130, !dbg !1775
  br i1 %140, label %141, label %143, !dbg !1775

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #27, !dbg !1776
  call void @llvm.dbg.value(metadata i64 %142, metadata !1639, metadata !DIExpression()), !dbg !1704
  br label %143, !dbg !1777

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !1777
  call void @llvm.dbg.value(metadata i64 %144, metadata !1639, metadata !DIExpression()), !dbg !1704
  %145 = icmp ugt i64 %139, %144, !dbg !1778
  br i1 %145, label %153, label %146, !dbg !1779

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1780
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !1781
  %149 = icmp ne i32 %148, 0, !dbg !1782
  %150 = or i1 %149, %109, !dbg !1783
  %151 = xor i1 %149, true, !dbg !1783
  %152 = zext i1 %151 to i8, !dbg !1783
  br i1 %150, label %153, label %646, !dbg !1783

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !1771
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1771
  call void @llvm.dbg.value(metadata i8 %156, metadata !1661, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %154, metadata !1639, metadata !DIExpression()), !dbg !1704
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1784
  %158 = load i8, i8* %157, align 1, !dbg !1784, !tbaa !830
  call void @llvm.dbg.value(metadata i8 %158, metadata !1656, metadata !DIExpression()), !dbg !1771
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
  ], !dbg !1785

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !1786

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !1787

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1662, metadata !DIExpression()), !dbg !1771
  %162 = and i8 %126, 1, !dbg !1791
  %163 = icmp eq i8 %162, 0, !dbg !1791
  %164 = and i1 %110, %163, !dbg !1791
  br i1 %164, label %165, label %181, !dbg !1791

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !1793
  br i1 %166, label %167, label %169, !dbg !1797

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1793
  store i8 39, i8* %168, align 1, !dbg !1793, !tbaa !830
  br label %169, !dbg !1793

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !1797
  call void @llvm.dbg.value(metadata i64 %170, metadata !1646, metadata !DIExpression()), !dbg !1704
  %171 = icmp ult i64 %170, %129, !dbg !1798
  br i1 %171, label %172, label %174, !dbg !1801

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1798
  store i8 36, i8* %173, align 1, !dbg !1798, !tbaa !830
  br label %174, !dbg !1798

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !1801
  call void @llvm.dbg.value(metadata i64 %175, metadata !1646, metadata !DIExpression()), !dbg !1704
  %176 = icmp ult i64 %175, %129, !dbg !1802
  br i1 %176, label %177, label %179, !dbg !1805

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1802
  store i8 39, i8* %178, align 1, !dbg !1802, !tbaa !830
  br label %179, !dbg !1802

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !1805
  call void @llvm.dbg.value(metadata i64 %180, metadata !1646, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8 1, metadata !1653, metadata !DIExpression()), !dbg !1704
  br label %181, !dbg !1806

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !1704
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !1704
  call void @llvm.dbg.value(metadata i8 %183, metadata !1653, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %182, metadata !1646, metadata !DIExpression()), !dbg !1704
  %184 = icmp ult i64 %182, %129, !dbg !1807
  br i1 %184, label %185, label %187, !dbg !1810

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1807
  store i8 92, i8* %186, align 1, !dbg !1807, !tbaa !830
  br label %187, !dbg !1807

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1810
  call void @llvm.dbg.value(metadata i64 %188, metadata !1646, metadata !DIExpression()), !dbg !1704
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !1811
  br i1 %191, label %192, label %473, !dbg !1811

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1813
  %194 = load i8, i8* %193, align 1, !dbg !1813, !tbaa !830
  %195 = add i8 %194, -48, !dbg !1814
  %196 = icmp ult i8 %195, 10, !dbg !1814
  br i1 %196, label %197, label %473, !dbg !1814

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !1815
  br i1 %198, label %199, label %201, !dbg !1819

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1815
  store i8 48, i8* %200, align 1, !dbg !1815, !tbaa !830
  br label %201, !dbg !1815

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1819
  call void @llvm.dbg.value(metadata i64 %202, metadata !1646, metadata !DIExpression()), !dbg !1704
  %203 = icmp ult i64 %202, %129, !dbg !1820
  br i1 %203, label %204, label %206, !dbg !1823

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1820
  store i8 48, i8* %205, align 1, !dbg !1820, !tbaa !830
  br label %206, !dbg !1820

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1823
  call void @llvm.dbg.value(metadata i64 %207, metadata !1646, metadata !DIExpression()), !dbg !1704
  br label %473, !dbg !1824

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !1825

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1826

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !1827

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !1829
  br i1 %214, label %215, label %473, !dbg !1829

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !1831
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1832
  %218 = load i8, i8* %217, align 1, !dbg !1832, !tbaa !830
  %219 = icmp eq i8 %218, 63, !dbg !1833
  br i1 %219, label %220, label %473, !dbg !1834

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1835
  %222 = load i8, i8* %221, align 1, !dbg !1835, !tbaa !830
  %223 = sext i8 %222 to i32, !dbg !1835
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
  ], !dbg !1836

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !1837

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1656, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 undef, metadata !1645, metadata !DIExpression()), !dbg !1704
  %226 = icmp ult i64 %123, %129, !dbg !1839
  br i1 %226, label %227, label %229, !dbg !1842

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1839
  store i8 63, i8* %228, align 1, !dbg !1839, !tbaa !830
  br label %229, !dbg !1839

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !1842
  call void @llvm.dbg.value(metadata i64 %230, metadata !1646, metadata !DIExpression()), !dbg !1704
  %231 = icmp ult i64 %230, %129, !dbg !1843
  br i1 %231, label %232, label %234, !dbg !1846

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1843
  store i8 34, i8* %233, align 1, !dbg !1843, !tbaa !830
  br label %234, !dbg !1843

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !1846
  call void @llvm.dbg.value(metadata i64 %235, metadata !1646, metadata !DIExpression()), !dbg !1704
  %236 = icmp ult i64 %235, %129, !dbg !1847
  br i1 %236, label %237, label %239, !dbg !1850

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1847
  store i8 34, i8* %238, align 1, !dbg !1847, !tbaa !830
  br label %239, !dbg !1847

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !1850
  call void @llvm.dbg.value(metadata i64 %240, metadata !1646, metadata !DIExpression()), !dbg !1704
  %241 = icmp ult i64 %240, %129, !dbg !1851
  br i1 %241, label %242, label %244, !dbg !1854

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1851
  store i8 63, i8* %243, align 1, !dbg !1851, !tbaa !830
  br label %244, !dbg !1851

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !1854
  call void @llvm.dbg.value(metadata i64 %245, metadata !1646, metadata !DIExpression()), !dbg !1704
  br label %473, !dbg !1855

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1660, metadata !DIExpression()), !dbg !1771
  br label %256, !dbg !1856

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1660, metadata !DIExpression()), !dbg !1771
  br label %256, !dbg !1857

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1660, metadata !DIExpression()), !dbg !1771
  br label %254, !dbg !1858

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1660, metadata !DIExpression()), !dbg !1771
  br label %254, !dbg !1859

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1660, metadata !DIExpression()), !dbg !1771
  br label %256, !dbg !1860

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !1660, metadata !DIExpression()), !dbg !1771
  br i1 %110, label %252, label %253, !dbg !1861

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !1862

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !1865

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !1867
  call void @llvm.dbg.value(metadata i8 %255, metadata !1660, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.label(metadata !1699), !dbg !1868
  br i1 %111, label %256, label %631, !dbg !1869

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !1867
  call void @llvm.dbg.value(metadata i8 %257, metadata !1660, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.label(metadata !1700), !dbg !1871
  br i1 %102, label %495, label %473, !dbg !1872

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1873

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1874, !tbaa !830
  %261 = icmp eq i8 %260, 0, !dbg !1876
  br i1 %261, label %262, label %473, !dbg !1877

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !1878
  br i1 %263, label %264, label %473, !dbg !1880

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1663, metadata !DIExpression()), !dbg !1771
  br label %265, !dbg !1881

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !1771
  call void @llvm.dbg.value(metadata i8 %266, metadata !1663, metadata !DIExpression()), !dbg !1771
  br i1 %111, label %473, label %631, !dbg !1882

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1654, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8 1, metadata !1663, metadata !DIExpression()), !dbg !1771
  br i1 %110, label %268, label %473, !dbg !1884

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !1885

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !1888
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !1890
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !1890
  %274 = select i1 %272, i64 %129, i64 0, !dbg !1890
  call void @llvm.dbg.value(metadata i64 %274, metadata !1637, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %273, metadata !1647, metadata !DIExpression()), !dbg !1704
  %275 = icmp ult i64 %123, %274, !dbg !1891
  br i1 %275, label %276, label %278, !dbg !1894

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1891
  store i8 39, i8* %277, align 1, !dbg !1891, !tbaa !830
  br label %278, !dbg !1891

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !1894
  call void @llvm.dbg.value(metadata i64 %279, metadata !1646, metadata !DIExpression()), !dbg !1704
  %280 = icmp ult i64 %279, %274, !dbg !1895
  br i1 %280, label %281, label %283, !dbg !1898

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1895
  store i8 92, i8* %282, align 1, !dbg !1895, !tbaa !830
  br label %283, !dbg !1895

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !1898
  call void @llvm.dbg.value(metadata i64 %284, metadata !1646, metadata !DIExpression()), !dbg !1704
  %285 = icmp ult i64 %284, %274, !dbg !1899
  br i1 %285, label %286, label %288, !dbg !1902

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1899
  store i8 39, i8* %287, align 1, !dbg !1899, !tbaa !830
  br label %288, !dbg !1899

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !1902
  call void @llvm.dbg.value(metadata i64 %289, metadata !1646, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8 0, metadata !1653, metadata !DIExpression()), !dbg !1704
  br label %473, !dbg !1903

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !1904

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1664, metadata !DIExpression()), !dbg !1905
  %292 = tail call i16** @__ctype_b_loc() #30, !dbg !1906
  %293 = load i16*, i16** %292, align 8, !dbg !1906, !tbaa !672
  %294 = zext i8 %158 to i64, !dbg !1906
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1906
  %296 = load i16, i16* %295, align 2, !dbg !1906, !tbaa !1908
  %297 = lshr i16 %296, 14, !dbg !1909
  %298 = trunc i16 %297 to i8, !dbg !1909
  %299 = and i8 %298, 1, !dbg !1909
  call void @llvm.dbg.value(metadata i8 %354, metadata !1667, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i64 %355, metadata !1664, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i64 %306, metadata !1639, metadata !DIExpression()), !dbg !1704
  %300 = icmp eq i8 %299, 0, !dbg !1910
  call void @llvm.dbg.value(metadata i1 %357, metadata !1663, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1771
  br label %359, !dbg !1911

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #26, !dbg !1912
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1668, metadata !DIExpression()), !dbg !1913
  call void @llvm.dbg.value(metadata i8* %23, metadata !1914, metadata !DIExpression()) #26, !dbg !1922
  call void @llvm.dbg.value(metadata i32 0, metadata !1920, metadata !DIExpression()) #26, !dbg !1922
  call void @llvm.dbg.value(metadata i64 8, metadata !1921, metadata !DIExpression()) #26, !dbg !1922
  store i64 0, i64* %10, align 8, !dbg !1924
  call void @llvm.dbg.value(metadata i64 0, metadata !1664, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i8 1, metadata !1667, metadata !DIExpression()), !dbg !1905
  %302 = icmp eq i64 %154, -1, !dbg !1925
  br i1 %302, label %303, label %305, !dbg !1927

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #27, !dbg !1928
  call void @llvm.dbg.value(metadata i64 %304, metadata !1639, metadata !DIExpression()), !dbg !1704
  br label %305, !dbg !1929

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !1771
  call void @llvm.dbg.value(metadata i64 %306, metadata !1639, metadata !DIExpression()), !dbg !1704
  br label %307, !dbg !1930

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !1931
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !1932
  call void @llvm.dbg.value(metadata i8 %309, metadata !1667, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i64 %308, metadata !1664, metadata !DIExpression()), !dbg !1905
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #26, !dbg !1933
  %310 = add i64 %308, %122, !dbg !1934
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !1935
  %312 = sub i64 %306, %310, !dbg !1936
  call void @llvm.dbg.value(metadata i32* %12, metadata !1684, metadata !DIExpression(DW_OP_deref)), !dbg !1937
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #26, !dbg !1938
  call void @llvm.dbg.value(metadata i64 %313, metadata !1687, metadata !DIExpression()), !dbg !1937
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !1939

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !1664, metadata !DIExpression()), !dbg !1905
  %315 = icmp ugt i64 %306, %310, !dbg !1940
  br i1 %315, label %316, label %341, !dbg !1942

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !1943
  br label %318, !dbg !1943

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !1664, metadata !DIExpression()), !dbg !1905
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !1944
  %322 = load i8, i8* %321, align 1, !dbg !1944, !tbaa !830
  %323 = icmp eq i8 %322, 0, !dbg !1942
  br i1 %323, label %341, label %324, !dbg !1943

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !1945
  call void @llvm.dbg.value(metadata i64 %325, metadata !1664, metadata !DIExpression()), !dbg !1905
  %326 = add i64 %325, %122, !dbg !1946
  %327 = icmp ult i64 %326, %306, !dbg !1940
  br i1 %327, label %318, label %341, !dbg !1942, !llvm.loop !1947

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !1948
  call void @llvm.dbg.value(metadata i64 1, metadata !1688, metadata !DIExpression()), !dbg !1949
  br i1 %330, label %331, label %344, !dbg !1948

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !1688, metadata !DIExpression()), !dbg !1949
  %333 = add i64 %332, %310, !dbg !1950
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !1953
  %335 = load i8, i8* %334, align 1, !dbg !1953, !tbaa !830
  %336 = sext i8 %335 to i32, !dbg !1953
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !1954

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !1955
  call void @llvm.dbg.value(metadata i64 %338, metadata !1688, metadata !DIExpression()), !dbg !1949
  %339 = icmp eq i64 %338, %313, !dbg !1956
  br i1 %339, label %344, label %331, !dbg !1957, !llvm.loop !1958

340:                                              ; preds = %307
  br label %341, !dbg !1960

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1667, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i64 undef, metadata !1664, metadata !DIExpression()), !dbg !1905
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #26, !dbg !1960
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !1961, !tbaa !849
  call void @llvm.dbg.value(metadata i32 %345, metadata !1684, metadata !DIExpression()), !dbg !1937
  %346 = call i32 @iswprint(i32 %345) #26, !dbg !1963
  %347 = icmp eq i32 %346, 0, !dbg !1963
  %348 = select i1 %347, i8 0, i8 %309, !dbg !1964
  call void @llvm.dbg.value(metadata i8 %348, metadata !1667, metadata !DIExpression()), !dbg !1905
  %349 = add i64 %313, %308, !dbg !1965
  call void @llvm.dbg.value(metadata i64 %349, metadata !1664, metadata !DIExpression()), !dbg !1905
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #26, !dbg !1960
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #27, !dbg !1966
  %351 = icmp eq i32 %350, 0, !dbg !1967
  br i1 %351, label %307, label %353, !dbg !1968, !llvm.loop !1969

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !1667, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i64 undef, metadata !1664, metadata !DIExpression()), !dbg !1905
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #26, !dbg !1960
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #26, !dbg !1971
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #26, !dbg !1971
  call void @llvm.dbg.value(metadata i8 %354, metadata !1667, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i64 %355, metadata !1664, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i64 %306, metadata !1639, metadata !DIExpression()), !dbg !1704
  %356 = and i8 %354, 1, !dbg !1910
  %357 = icmp eq i8 %356, 0, !dbg !1910
  call void @llvm.dbg.value(metadata i1 %357, metadata !1663, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1771
  %358 = icmp ugt i64 %355, 1, !dbg !1972
  br i1 %358, label %367, label %359, !dbg !1911

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !1973
  br i1 %364, label %367, label %365, !dbg !1973

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !1771
  call void @llvm.dbg.value(metadata i8 %472, metadata !1663, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 %441, metadata !1662, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 %440, metadata !1661, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 %439, metadata !1656, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 %438, metadata !1653, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %371, metadata !1639, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %437, metadata !1646, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %375, metadata !1645, metadata !DIExpression()), !dbg !1704
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !1974
  call void @llvm.dbg.value(metadata i64 %372, metadata !1695, metadata !DIExpression()), !dbg !1975
  %373 = and i1 %102, %368
  br label %374, !dbg !1976

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !1764
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !1704
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !1713
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !1771
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !1771
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !1977
  call void @llvm.dbg.value(metadata i8 %380, metadata !1662, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 %379, metadata !1661, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 %378, metadata !1656, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 %377, metadata !1653, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %376, metadata !1646, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %375, metadata !1645, metadata !DIExpression()), !dbg !1704
  br i1 %373, label %381, label %427, !dbg !1978

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !1983

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !1662, metadata !DIExpression()), !dbg !1771
  %383 = and i8 %377, 1, !dbg !1986
  %384 = icmp eq i8 %383, 0, !dbg !1986
  %385 = and i1 %110, %384, !dbg !1986
  br i1 %385, label %386, label %402, !dbg !1986

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !1988
  br i1 %387, label %388, label %390, !dbg !1992

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1988
  store i8 39, i8* %389, align 1, !dbg !1988, !tbaa !830
  br label %390, !dbg !1988

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !1992
  call void @llvm.dbg.value(metadata i64 %391, metadata !1646, metadata !DIExpression()), !dbg !1704
  %392 = icmp ult i64 %391, %129, !dbg !1993
  br i1 %392, label %393, label %395, !dbg !1996

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !1993
  store i8 36, i8* %394, align 1, !dbg !1993, !tbaa !830
  br label %395, !dbg !1993

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !1996
  call void @llvm.dbg.value(metadata i64 %396, metadata !1646, metadata !DIExpression()), !dbg !1704
  %397 = icmp ult i64 %396, %129, !dbg !1997
  br i1 %397, label %398, label %400, !dbg !2000

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1997
  store i8 39, i8* %399, align 1, !dbg !1997, !tbaa !830
  br label %400, !dbg !1997

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !2000
  call void @llvm.dbg.value(metadata i64 %401, metadata !1646, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8 1, metadata !1653, metadata !DIExpression()), !dbg !1704
  br label %402, !dbg !2001

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !1704
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !1704
  call void @llvm.dbg.value(metadata i8 %404, metadata !1653, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %403, metadata !1646, metadata !DIExpression()), !dbg !1704
  %405 = icmp ult i64 %403, %129, !dbg !2002
  br i1 %405, label %406, label %408, !dbg !2005

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2002
  store i8 92, i8* %407, align 1, !dbg !2002, !tbaa !830
  br label %408, !dbg !2002

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !2005
  call void @llvm.dbg.value(metadata i64 %409, metadata !1646, metadata !DIExpression()), !dbg !1704
  %410 = icmp ult i64 %409, %129, !dbg !2006
  br i1 %410, label %411, label %415, !dbg !2009

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !2006
  %413 = or i8 %412, 48, !dbg !2006
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !2006
  store i8 %413, i8* %414, align 1, !dbg !2006, !tbaa !830
  br label %415, !dbg !2006

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !2009
  call void @llvm.dbg.value(metadata i64 %416, metadata !1646, metadata !DIExpression()), !dbg !1704
  %417 = icmp ult i64 %416, %129, !dbg !2010
  br i1 %417, label %418, label %423, !dbg !2013

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !2010
  %420 = and i8 %419, 7, !dbg !2010
  %421 = or i8 %420, 48, !dbg !2010
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !2010
  store i8 %421, i8* %422, align 1, !dbg !2010, !tbaa !830
  br label %423, !dbg !2010

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !2013
  call void @llvm.dbg.value(metadata i64 %424, metadata !1646, metadata !DIExpression()), !dbg !1704
  %425 = and i8 %378, 7, !dbg !2014
  %426 = or i8 %425, 48, !dbg !2015
  call void @llvm.dbg.value(metadata i8 %426, metadata !1656, metadata !DIExpression()), !dbg !1771
  br label %436, !dbg !2016

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !2017
  %429 = icmp eq i8 %428, 0, !dbg !2017
  br i1 %429, label %436, label %430, !dbg !2019

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !2020
  br i1 %431, label %432, label %434, !dbg !2024

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2020
  store i8 92, i8* %433, align 1, !dbg !2020, !tbaa !830
  br label %434, !dbg !2020

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !2024
  call void @llvm.dbg.value(metadata i64 %435, metadata !1646, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8 0, metadata !1661, metadata !DIExpression()), !dbg !1771
  br label %436, !dbg !2025

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !1704
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !1713
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !1771
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !1771
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !1771
  call void @llvm.dbg.value(metadata i8 %441, metadata !1662, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 %440, metadata !1661, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 %439, metadata !1656, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 %438, metadata !1653, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %437, metadata !1646, metadata !DIExpression()), !dbg !1704
  %442 = add i64 %375, 1, !dbg !2026
  %443 = icmp ugt i64 %372, %442, !dbg !2028
  br i1 %443, label %444, label %471, !dbg !2029

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !2030
  %446 = icmp ne i8 %445, 0, !dbg !2030
  %447 = and i8 %441, 1, !dbg !2030
  %448 = icmp eq i8 %447, 0, !dbg !2030
  %449 = and i1 %446, %448, !dbg !2030
  br i1 %449, label %450, label %461, !dbg !2030

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !2033
  br i1 %451, label %452, label %454, !dbg !2037

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !2033
  store i8 39, i8* %453, align 1, !dbg !2033, !tbaa !830
  br label %454, !dbg !2033

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !2037
  call void @llvm.dbg.value(metadata i64 %455, metadata !1646, metadata !DIExpression()), !dbg !1704
  %456 = icmp ult i64 %455, %129, !dbg !2038
  br i1 %456, label %457, label %459, !dbg !2041

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !2038
  store i8 39, i8* %458, align 1, !dbg !2038, !tbaa !830
  br label %459, !dbg !2038

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !2041
  call void @llvm.dbg.value(metadata i64 %460, metadata !1646, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8 0, metadata !1653, metadata !DIExpression()), !dbg !1704
  br label %461, !dbg !2042

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !2043
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !1704
  call void @llvm.dbg.value(metadata i8 %463, metadata !1653, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %462, metadata !1646, metadata !DIExpression()), !dbg !1704
  %464 = icmp ult i64 %462, %129, !dbg !2044
  br i1 %464, label %465, label %467, !dbg !2047

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !2044
  store i8 %439, i8* %466, align 1, !dbg !2044, !tbaa !830
  br label %467, !dbg !2044

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !2047
  call void @llvm.dbg.value(metadata i64 %468, metadata !1646, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %442, metadata !1645, metadata !DIExpression()), !dbg !1704
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !2048
  %470 = load i8, i8* %469, align 1, !dbg !2048, !tbaa !830
  call void @llvm.dbg.value(metadata i8 %470, metadata !1656, metadata !DIExpression()), !dbg !1771
  br label %374, !dbg !2049, !llvm.loop !2050

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !1771
  call void @llvm.dbg.value(metadata i8 %472, metadata !1663, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 %441, metadata !1662, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 %440, metadata !1661, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 %439, metadata !1656, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 %438, metadata !1653, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %371, metadata !1639, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %437, metadata !1646, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %375, metadata !1645, metadata !DIExpression()), !dbg !1704
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !1764
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !1704
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !1709
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !2053
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !1704
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !1704
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !1771
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !1771
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !1771
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !1637, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8 %482, metadata !1663, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 %481, metadata !1662, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 %156, metadata !1661, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 %480, metadata !1656, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 %479, metadata !1654, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8 %478, metadata !1653, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %477, metadata !1639, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %476, metadata !1647, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %475, metadata !1646, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %474, metadata !1645, metadata !DIExpression()), !dbg !1704
  br i1 %116, label %494, label %484, !dbg !2054

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !2056
  %486 = zext i8 %485 to i64, !dbg !2056
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !2057
  %488 = load i32, i32* %487, align 4, !dbg !2057, !tbaa !849
  %489 = and i8 %480, 31, !dbg !2058
  %490 = zext i8 %489 to i32, !dbg !2058
  %491 = shl nuw i32 1, %490, !dbg !2059
  %492 = and i32 %488, %491, !dbg !2059
  %493 = icmp eq i32 %492, 0, !dbg !2059
  br i1 %493, label %494, label %495, !dbg !2060

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !2061

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !2062
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !1704
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !1709
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !2053
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !1713
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !1714
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !1771
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !1771
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !1637, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8 %503, metadata !1663, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 %502, metadata !1656, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 %501, metadata !1654, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8 %500, metadata !1653, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %499, metadata !1639, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %498, metadata !1647, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %497, metadata !1646, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %496, metadata !1645, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.label(metadata !1701), !dbg !2063
  br i1 %109, label %505, label %635, !dbg !2064

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !1662, metadata !DIExpression()), !dbg !1771
  %506 = and i8 %500, 1, !dbg !2066
  %507 = icmp eq i8 %506, 0, !dbg !2066
  %508 = and i1 %110, %507, !dbg !2066
  br i1 %508, label %509, label %525, !dbg !2066

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !2068
  br i1 %510, label %511, label %513, !dbg !2072

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !2068
  store i8 39, i8* %512, align 1, !dbg !2068, !tbaa !830
  br label %513, !dbg !2068

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !2072
  call void @llvm.dbg.value(metadata i64 %514, metadata !1646, metadata !DIExpression()), !dbg !1704
  %515 = icmp ult i64 %514, %504, !dbg !2073
  br i1 %515, label %516, label %518, !dbg !2076

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !2073
  store i8 36, i8* %517, align 1, !dbg !2073, !tbaa !830
  br label %518, !dbg !2073

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !2076
  call void @llvm.dbg.value(metadata i64 %519, metadata !1646, metadata !DIExpression()), !dbg !1704
  %520 = icmp ult i64 %519, %504, !dbg !2077
  br i1 %520, label %521, label %523, !dbg !2080

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2077
  store i8 39, i8* %522, align 1, !dbg !2077, !tbaa !830
  br label %523, !dbg !2077

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !2080
  call void @llvm.dbg.value(metadata i64 %524, metadata !1646, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8 1, metadata !1653, metadata !DIExpression()), !dbg !1704
  br label %525, !dbg !2081

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !1771
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !1704
  call void @llvm.dbg.value(metadata i8 %527, metadata !1653, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %526, metadata !1646, metadata !DIExpression()), !dbg !1704
  %528 = icmp ult i64 %526, %504, !dbg !2082
  br i1 %528, label %529, label %531, !dbg !2085

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2082
  store i8 92, i8* %530, align 1, !dbg !2082, !tbaa !830
  br label %531, !dbg !2082

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !2085
  call void @llvm.dbg.value(metadata i64 %543, metadata !1637, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8 %542, metadata !1663, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 %541, metadata !1662, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 %540, metadata !1656, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 %539, metadata !1654, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8 %538, metadata !1653, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %537, metadata !1639, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %536, metadata !1647, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %535, metadata !1646, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %534, metadata !1645, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.label(metadata !1702), !dbg !2086
  br label %560, !dbg !2087

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !2062
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !1704
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !1709
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !2053
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !1713
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !1714
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !2090
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1771
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1771
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !1637, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8 %542, metadata !1663, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 %541, metadata !1662, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 %540, metadata !1656, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 %539, metadata !1654, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8 %538, metadata !1653, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %537, metadata !1639, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %536, metadata !1647, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %535, metadata !1646, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %534, metadata !1645, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.label(metadata !1702), !dbg !2086
  %544 = and i8 %538, 1, !dbg !2087
  %545 = icmp ne i8 %544, 0, !dbg !2087
  %546 = and i8 %541, 1, !dbg !2087
  %547 = icmp eq i8 %546, 0, !dbg !2087
  %548 = and i1 %545, %547, !dbg !2087
  br i1 %548, label %549, label %560, !dbg !2087

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !2091
  br i1 %550, label %551, label %553, !dbg !2095

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !2091
  store i8 39, i8* %552, align 1, !dbg !2091, !tbaa !830
  br label %553, !dbg !2091

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !2095
  call void @llvm.dbg.value(metadata i64 %554, metadata !1646, metadata !DIExpression()), !dbg !1704
  %555 = icmp ult i64 %554, %543, !dbg !2096
  br i1 %555, label %556, label %558, !dbg !2099

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !2096
  store i8 39, i8* %557, align 1, !dbg !2096, !tbaa !830
  br label %558, !dbg !2096

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !2099
  call void @llvm.dbg.value(metadata i64 %559, metadata !1646, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8 0, metadata !1653, metadata !DIExpression()), !dbg !1704
  br label %560, !dbg !2100

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !1771
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !1704
  call void @llvm.dbg.value(metadata i8 %569, metadata !1653, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %568, metadata !1646, metadata !DIExpression()), !dbg !1704
  %570 = icmp ult i64 %568, %561, !dbg !2101
  br i1 %570, label %571, label %573, !dbg !2104

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !2101
  store i8 %563, i8* %572, align 1, !dbg !2101, !tbaa !830
  br label %573, !dbg !2101

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !2104
  call void @llvm.dbg.value(metadata i64 %574, metadata !1646, metadata !DIExpression()), !dbg !1704
  %575 = icmp eq i8 %562, 0, !dbg !2105
  %576 = select i1 %575, i8 0, i8 %128, !dbg !2107
  call void @llvm.dbg.value(metadata i8 %576, metadata !1655, metadata !DIExpression()), !dbg !1704
  br label %577, !dbg !2108

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !2062
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !1704
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !1709
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !2053
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !1713
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !1704
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !1715
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !1637, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8 %584, metadata !1655, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8 %583, metadata !1654, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8 %582, metadata !1653, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %581, metadata !1639, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %580, metadata !1647, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %579, metadata !1646, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %578, metadata !1645, metadata !DIExpression()), !dbg !1704
  %586 = add i64 %578, 1, !dbg !2109
  call void @llvm.dbg.value(metadata i64 %586, metadata !1645, metadata !DIExpression()), !dbg !1704
  br label %121, !dbg !2110, !llvm.loop !2111

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !2113
  %590 = and i1 %110, %589, !dbg !2115
  %591 = xor i1 %590, true, !dbg !2115
  %592 = or i1 %109, %591, !dbg !2115
  br i1 %592, label %593, label %635, !dbg !2115

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !2116
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !2116
  br i1 %597, label %598, label %607, !dbg !2116

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !2118
  %600 = icmp eq i8 %599, 0, !dbg !2118
  br i1 %600, label %603, label %601, !dbg !2121

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2122
  br label %652, !dbg !2123

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !2124
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !2126
  br i1 %606, label %26, label %607, !dbg !2126

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !2127
  %610 = and i1 %609, %608, !dbg !2129
  br i1 %610, label %611, label %626, !dbg !2129

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !1648, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %123, metadata !1646, metadata !DIExpression()), !dbg !1704
  %612 = load i8, i8* %97, align 1, !dbg !2130, !tbaa !830
  %613 = icmp eq i8 %612, 0, !dbg !2133
  br i1 %613, label %626, label %614, !dbg !2133

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !1648, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %617, metadata !1646, metadata !DIExpression()), !dbg !1704
  %618 = icmp ult i64 %617, %129, !dbg !2134
  br i1 %618, label %619, label %621, !dbg !2137

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !2134
  store i8 %615, i8* %620, align 1, !dbg !2134, !tbaa !830
  br label %621, !dbg !2134

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !2137
  call void @llvm.dbg.value(metadata i64 %622, metadata !1646, metadata !DIExpression()), !dbg !1704
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !2138
  call void @llvm.dbg.value(metadata i8* %623, metadata !1648, metadata !DIExpression()), !dbg !1704
  %624 = load i8, i8* %623, align 1, !dbg !2130, !tbaa !830
  %625 = icmp eq i8 %624, 0, !dbg !2133
  br i1 %625, label %626, label %614, !dbg !2133, !llvm.loop !2139

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !1746
  call void @llvm.dbg.value(metadata i64 %627, metadata !1646, metadata !DIExpression()), !dbg !1704
  %628 = icmp ult i64 %627, %129, !dbg !2141
  br i1 %628, label %629, label %652, !dbg !2143

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !2144
  store i8 0, i8* %630, align 1, !dbg !2145, !tbaa !830
  br label %652, !dbg !2144

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1637, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %637, metadata !1639, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.label(metadata !1703), !dbg !2146
  %633 = icmp eq i8 %101, 0, !dbg !2147
  %634 = select i1 %633, i32 2, i32 4, !dbg !2147
  br label %642, !dbg !2147

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1637, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %637, metadata !1639, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.label(metadata !1703), !dbg !2146
  %639 = icmp eq i32 %93, 2, !dbg !2149
  %640 = icmp eq i8 %636, 0, !dbg !2147
  %641 = select i1 %640, i32 2, i32 4, !dbg !2147
  br i1 %639, label %642, label %646, !dbg !2147

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !2147

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !1640, metadata !DIExpression()), !dbg !1704
  %650 = and i32 %5, -3, !dbg !2150
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !2151
  br label %652, !dbg !2152

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !2153
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2154 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2158, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i32 %1, metadata !2159, metadata !DIExpression()), !dbg !2162
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #26, !dbg !2163
  call void @llvm.dbg.value(metadata i8* %3, metadata !2160, metadata !DIExpression()), !dbg !2162
  %4 = icmp eq i8* %3, %0, !dbg !2164
  br i1 %4, label %5, label %72, !dbg !2166

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #26, !dbg !2167
  call void @llvm.dbg.value(metadata i8* %6, metadata !2161, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i8* %6, metadata !2168, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata i8* undef, metadata !2174, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata i8 85, metadata !2175, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata i8 84, metadata !2176, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata i8 70, metadata !2177, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata i8 45, metadata !2178, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata i8 56, metadata !2179, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata i8 0, metadata !2180, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata i8 0, metadata !2181, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata i8 0, metadata !2182, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata i8 0, metadata !2183, metadata !DIExpression()), !dbg !2184
  %7 = load i8, i8* %6, align 1, !dbg !2187, !tbaa !830
  %8 = and i8 %7, -33, !dbg !2187
  %9 = sext i8 %8 to i32, !dbg !2187
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !2187

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2189, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i8* undef, metadata !2194, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i8 84, metadata !2195, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i8 70, metadata !2196, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i8 45, metadata !2197, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i8 56, metadata !2198, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i8 0, metadata !2199, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i8 0, metadata !2200, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i8 0, metadata !2201, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i8 0, metadata !2202, metadata !DIExpression()), !dbg !2203
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2207
  %12 = load i8, i8* %11, align 1, !dbg !2207, !tbaa !830
  %13 = and i8 %12, -33, !dbg !2207
  %14 = icmp eq i8 %13, 84, !dbg !2207
  br i1 %14, label %15, label %69, !dbg !2207

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !2209, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8* undef, metadata !2214, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8 70, metadata !2215, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8 45, metadata !2216, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8 56, metadata !2217, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8 0, metadata !2218, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8 0, metadata !2219, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8 0, metadata !2220, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8 0, metadata !2221, metadata !DIExpression()), !dbg !2222
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2226
  %17 = load i8, i8* %16, align 1, !dbg !2226, !tbaa !830
  %18 = and i8 %17, -33, !dbg !2226
  %19 = icmp eq i8 %18, 70, !dbg !2226
  br i1 %19, label %20, label %69, !dbg !2226

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !2228, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8* undef, metadata !2233, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8 45, metadata !2234, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8 56, metadata !2235, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8 0, metadata !2236, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8 0, metadata !2237, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8 0, metadata !2238, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8 0, metadata !2239, metadata !DIExpression()), !dbg !2240
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2244
  %22 = load i8, i8* %21, align 1, !dbg !2244, !tbaa !830
  %23 = icmp eq i8 %22, 45, !dbg !2244
  br i1 %23, label %24, label %69, !dbg !2246

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !2247, metadata !DIExpression()), !dbg !2258
  call void @llvm.dbg.value(metadata i8* undef, metadata !2252, metadata !DIExpression()), !dbg !2258
  call void @llvm.dbg.value(metadata i8 56, metadata !2253, metadata !DIExpression()), !dbg !2258
  call void @llvm.dbg.value(metadata i8 0, metadata !2254, metadata !DIExpression()), !dbg !2258
  call void @llvm.dbg.value(metadata i8 0, metadata !2255, metadata !DIExpression()), !dbg !2258
  call void @llvm.dbg.value(metadata i8 0, metadata !2256, metadata !DIExpression()), !dbg !2258
  call void @llvm.dbg.value(metadata i8 0, metadata !2257, metadata !DIExpression()), !dbg !2258
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2262
  %26 = load i8, i8* %25, align 1, !dbg !2262, !tbaa !830
  %27 = icmp eq i8 %26, 56, !dbg !2262
  br i1 %27, label %28, label %69, !dbg !2264

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !2265, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i8* undef, metadata !2270, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i8 0, metadata !2271, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i8 0, metadata !2272, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i8 0, metadata !2273, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i8 0, metadata !2274, metadata !DIExpression()), !dbg !2275
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2279
  %30 = load i8, i8* %29, align 1, !dbg !2279, !tbaa !830
  %31 = icmp eq i8 %30, 0, !dbg !2279
  br i1 %31, label %32, label %69, !dbg !2281

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !2282, !tbaa !830
  %34 = icmp eq i8 %33, 96, !dbg !2283
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.88, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.89, i64 0, i64 0), !dbg !2282
  br label %72, !dbg !2284

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2189, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8* undef, metadata !2194, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8 66, metadata !2195, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8 49, metadata !2196, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8 56, metadata !2197, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8 48, metadata !2198, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8 51, metadata !2199, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8 48, metadata !2200, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8 0, metadata !2201, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8 0, metadata !2202, metadata !DIExpression()), !dbg !2285
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2289
  %38 = load i8, i8* %37, align 1, !dbg !2289, !tbaa !830
  %39 = and i8 %38, -33, !dbg !2289
  %40 = icmp eq i8 %39, 66, !dbg !2289
  br i1 %40, label %41, label %69, !dbg !2289

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !2209, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8* undef, metadata !2214, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8 49, metadata !2215, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8 56, metadata !2216, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8 48, metadata !2217, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8 51, metadata !2218, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8 48, metadata !2219, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8 0, metadata !2220, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8 0, metadata !2221, metadata !DIExpression()), !dbg !2290
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2292
  %43 = load i8, i8* %42, align 1, !dbg !2292, !tbaa !830
  %44 = icmp eq i8 %43, 49, !dbg !2292
  br i1 %44, label %45, label %69, !dbg !2293

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !2228, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata i8* undef, metadata !2233, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata i8 56, metadata !2234, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata i8 48, metadata !2235, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata i8 51, metadata !2236, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata i8 48, metadata !2237, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata i8 0, metadata !2238, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata i8 0, metadata !2239, metadata !DIExpression()), !dbg !2294
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2296
  %47 = load i8, i8* %46, align 1, !dbg !2296, !tbaa !830
  %48 = icmp eq i8 %47, 56, !dbg !2296
  br i1 %48, label %49, label %69, !dbg !2297

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !2247, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i8* undef, metadata !2252, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i8 48, metadata !2253, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i8 51, metadata !2254, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i8 48, metadata !2255, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i8 0, metadata !2256, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i8 0, metadata !2257, metadata !DIExpression()), !dbg !2298
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2300
  %51 = load i8, i8* %50, align 1, !dbg !2300, !tbaa !830
  %52 = icmp eq i8 %51, 48, !dbg !2300
  br i1 %52, label %53, label %69, !dbg !2301

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !2265, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata i8* undef, metadata !2270, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata i8 51, metadata !2271, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata i8 48, metadata !2272, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata i8 0, metadata !2273, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata i8 0, metadata !2274, metadata !DIExpression()), !dbg !2302
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2304
  %55 = load i8, i8* %54, align 1, !dbg !2304, !tbaa !830
  %56 = icmp eq i8 %55, 51, !dbg !2304
  br i1 %56, label %57, label %69, !dbg !2305

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !2306, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata i8* undef, metadata !2311, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata i8 48, metadata !2312, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata i8 0, metadata !2313, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata i8 0, metadata !2314, metadata !DIExpression()), !dbg !2315
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2319
  %59 = load i8, i8* %58, align 1, !dbg !2319, !tbaa !830
  %60 = icmp eq i8 %59, 48, !dbg !2319
  br i1 %60, label %61, label %69, !dbg !2321

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !2322, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8* undef, metadata !2327, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8 0, metadata !2328, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8 0, metadata !2329, metadata !DIExpression()), !dbg !2330
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2334
  %63 = load i8, i8* %62, align 1, !dbg !2334, !tbaa !830
  %64 = icmp eq i8 %63, 0, !dbg !2334
  br i1 %64, label %65, label %69, !dbg !2336

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !2337, !tbaa !830
  %67 = icmp eq i8 %66, 96, !dbg !2338
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.90, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.91, i64 0, i64 0), !dbg !2337
  br label %72, !dbg !2339

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !2340
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.87, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.86, i64 0, i64 0), !dbg !2341
  br label %72, !dbg !2342

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !2162
  ret i8* %73, !dbg !2343
}

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !2344 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !2348 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2354 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2358, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i64 %1, metadata !2359, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2360, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i8* %0, metadata !2362, metadata !DIExpression()) #26, !dbg !2375
  call void @llvm.dbg.value(metadata i64 %1, metadata !2367, metadata !DIExpression()) #26, !dbg !2375
  call void @llvm.dbg.value(metadata i64* null, metadata !2368, metadata !DIExpression()) #26, !dbg !2375
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2369, metadata !DIExpression()) #26, !dbg !2375
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2377
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2377
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2370, metadata !DIExpression()) #26, !dbg !2375
  %6 = tail call i32* @__errno_location() #30, !dbg !2378
  %7 = load i32, i32* %6, align 4, !dbg !2378, !tbaa !849
  call void @llvm.dbg.value(metadata i32 %7, metadata !2371, metadata !DIExpression()) #26, !dbg !2375
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2379
  %9 = load i32, i32* %8, align 4, !dbg !2379, !tbaa !1580
  %10 = or i32 %9, 1, !dbg !2380
  call void @llvm.dbg.value(metadata i32 %10, metadata !2372, metadata !DIExpression()) #26, !dbg !2375
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2381
  %12 = load i32, i32* %11, align 8, !dbg !2381, !tbaa !1529
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2382
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2383
  %15 = load i8*, i8** %14, align 8, !dbg !2383, !tbaa !1602
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2384
  %17 = load i8*, i8** %16, align 8, !dbg !2384, !tbaa !1605
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #26, !dbg !2385
  %19 = add i64 %18, 1, !dbg !2386
  call void @llvm.dbg.value(metadata i64 %19, metadata !2373, metadata !DIExpression()) #26, !dbg !2375
  call void @llvm.dbg.value(metadata i64 %19, metadata !2387, metadata !DIExpression()) #26, !dbg !2392
  %20 = tail call noalias i8* @xmalloc(i64 %19) #26, !dbg !2394
  call void @llvm.dbg.value(metadata i8* %20, metadata !2374, metadata !DIExpression()) #26, !dbg !2375
  %21 = load i32, i32* %11, align 8, !dbg !2395, !tbaa !1529
  %22 = load i8*, i8** %14, align 8, !dbg !2396, !tbaa !1602
  %23 = load i8*, i8** %16, align 8, !dbg !2397, !tbaa !1605
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #26, !dbg !2398
  store i32 %7, i32* %6, align 4, !dbg !2399, !tbaa !849
  ret i8* %20, !dbg !2400
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2363 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2362, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i64 %1, metadata !2367, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i64* %2, metadata !2368, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2369, metadata !DIExpression()), !dbg !2401
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2402
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2402
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2370, metadata !DIExpression()), !dbg !2401
  %7 = tail call i32* @__errno_location() #30, !dbg !2403
  %8 = load i32, i32* %7, align 4, !dbg !2403, !tbaa !849
  call void @llvm.dbg.value(metadata i32 %8, metadata !2371, metadata !DIExpression()), !dbg !2401
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2404
  %10 = load i32, i32* %9, align 4, !dbg !2404, !tbaa !1580
  %11 = icmp eq i64* %2, null, !dbg !2405
  %12 = zext i1 %11 to i32, !dbg !2405
  %13 = or i32 %10, %12, !dbg !2406
  call void @llvm.dbg.value(metadata i32 %13, metadata !2372, metadata !DIExpression()), !dbg !2401
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2407
  %15 = load i32, i32* %14, align 8, !dbg !2407, !tbaa !1529
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2408
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2409
  %18 = load i8*, i8** %17, align 8, !dbg !2409, !tbaa !1602
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2410
  %20 = load i8*, i8** %19, align 8, !dbg !2410, !tbaa !1605
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !2411
  %22 = add i64 %21, 1, !dbg !2412
  call void @llvm.dbg.value(metadata i64 %22, metadata !2373, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i64 %22, metadata !2387, metadata !DIExpression()) #26, !dbg !2413
  %23 = tail call noalias i8* @xmalloc(i64 %22) #26, !dbg !2415
  call void @llvm.dbg.value(metadata i8* %23, metadata !2374, metadata !DIExpression()), !dbg !2401
  %24 = load i32, i32* %14, align 8, !dbg !2416, !tbaa !1529
  %25 = load i8*, i8** %17, align 8, !dbg !2417, !tbaa !1602
  %26 = load i8*, i8** %19, align 8, !dbg !2418, !tbaa !1605
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !2419
  store i32 %8, i32* %7, align 4, !dbg !2420, !tbaa !849
  br i1 %11, label %29, label %28, !dbg !2421

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2422, !tbaa !2424
  br label %29, !dbg !2425

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2426
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2427 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2431, !tbaa !672
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2429, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i32 1, metadata !2430, metadata !DIExpression()), !dbg !2432
  %2 = load i32, i32* @nslots, align 4, !dbg !2433, !tbaa !849
  %3 = icmp sgt i32 %2, 1, !dbg !2436
  br i1 %3, label %4, label %12, !dbg !2437

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2436
  br label %6, !dbg !2437

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !2430, metadata !DIExpression()), !dbg !2432
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !2438
  %9 = load i8*, i8** %8, align 8, !dbg !2438, !tbaa !2439
  tail call void @free(i8* %9) #26, !dbg !2441
  %10 = add nuw nsw i64 %7, 1, !dbg !2442
  call void @llvm.dbg.value(metadata i64 %10, metadata !2430, metadata !DIExpression()), !dbg !2432
  %11 = icmp eq i64 %10, %5, !dbg !2436
  br i1 %11, label %12, label %6, !dbg !2437, !llvm.loop !2443

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2445
  %14 = load i8*, i8** %13, align 8, !dbg !2445, !tbaa !2439
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2447
  br i1 %15, label %17, label %16, !dbg !2448

16:                                               ; preds = %12
  tail call void @free(i8* %14) #26, !dbg !2449
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2451, !tbaa !2452
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2453, !tbaa !2439
  br label %17, !dbg !2454

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2455
  br i1 %18, label %21, label %19, !dbg !2457

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2458
  tail call void @free(i8* %20) #26, !dbg !2460
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2461, !tbaa !672
  br label %21, !dbg !2462

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2463, !tbaa !849
  ret void, !dbg !2464
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2465 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2467, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i8* %1, metadata !2468, metadata !DIExpression()), !dbg !2469
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2470
  ret i8* %3, !dbg !2471
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2472 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2476, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.value(metadata i8* %1, metadata !2477, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.value(metadata i64 %2, metadata !2478, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2479, metadata !DIExpression()), !dbg !2491
  %5 = tail call i32* @__errno_location() #30, !dbg !2492
  %6 = load i32, i32* %5, align 4, !dbg !2492, !tbaa !849
  call void @llvm.dbg.value(metadata i32 %6, metadata !2480, metadata !DIExpression()), !dbg !2491
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2493, !tbaa !672
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2481, metadata !DIExpression()), !dbg !2491
  %8 = icmp slt i32 %0, 0, !dbg !2494
  br i1 %8, label %9, label %10, !dbg !2496

9:                                                ; preds = %4
  tail call void @abort() #28, !dbg !2497
  unreachable, !dbg !2497

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2498, !tbaa !849
  %12 = icmp sgt i32 %11, %0, !dbg !2499
  br i1 %12, label %34, label %13, !dbg !2500

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2501
  call void @llvm.dbg.value(metadata i1 %14, metadata !2482, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2502
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2485, metadata !DIExpression()), !dbg !2502
  %15 = icmp eq i32 %0, 2147483647, !dbg !2503
  br i1 %15, label %16, label %17, !dbg !2505

16:                                               ; preds = %13
  tail call void @xalloc_die() #28, !dbg !2506
  unreachable, !dbg !2506

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2507
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2507
  %20 = add nuw nsw i32 %0, 1, !dbg !2508
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !2509
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #26, !dbg !2510
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2510
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2481, metadata !DIExpression()), !dbg !2491
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2511, !tbaa !672
  br i1 %14, label %25, label %26, !dbg !2512

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2513, !tbaa.struct !2515
  br label %26, !dbg !2516

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2517, !tbaa !849
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2518
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2519
  %31 = sub nsw i32 %20, %27, !dbg !2520
  %32 = sext i32 %31 to i64, !dbg !2521
  %33 = shl nsw i64 %32, 4, !dbg !2522
  call void @llvm.dbg.value(metadata i8* %30, metadata !1914, metadata !DIExpression()) #26, !dbg !2523
  call void @llvm.dbg.value(metadata i32 0, metadata !1920, metadata !DIExpression()) #26, !dbg !2523
  call void @llvm.dbg.value(metadata i64 %33, metadata !1921, metadata !DIExpression()) #26, !dbg !2523
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #26, !dbg !2525
  store i32 %20, i32* @nslots, align 4, !dbg !2526, !tbaa !849
  br label %34, !dbg !2527

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2491
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2481, metadata !DIExpression()), !dbg !2491
  %36 = zext i32 %0 to i64, !dbg !2528
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2529
  %38 = load i64, i64* %37, align 8, !dbg !2529, !tbaa !2452
  call void @llvm.dbg.value(metadata i64 %38, metadata !2486, metadata !DIExpression()), !dbg !2530
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2531
  %40 = load i8*, i8** %39, align 8, !dbg !2531, !tbaa !2439
  call void @llvm.dbg.value(metadata i8* %40, metadata !2488, metadata !DIExpression()), !dbg !2530
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2532
  %42 = load i32, i32* %41, align 4, !dbg !2532, !tbaa !1580
  %43 = or i32 %42, 1, !dbg !2533
  call void @llvm.dbg.value(metadata i32 %43, metadata !2489, metadata !DIExpression()), !dbg !2530
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2534
  %45 = load i32, i32* %44, align 8, !dbg !2534, !tbaa !1529
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2535
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2536
  %48 = load i8*, i8** %47, align 8, !dbg !2536, !tbaa !1602
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2537
  %50 = load i8*, i8** %49, align 8, !dbg !2537, !tbaa !1605
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2538
  call void @llvm.dbg.value(metadata i64 %51, metadata !2490, metadata !DIExpression()), !dbg !2530
  %52 = icmp ugt i64 %38, %51, !dbg !2539
  br i1 %52, label %63, label %53, !dbg !2541

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2542
  call void @llvm.dbg.value(metadata i64 %54, metadata !2486, metadata !DIExpression()), !dbg !2530
  store i64 %54, i64* %37, align 8, !dbg !2544, !tbaa !2452
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2545
  br i1 %55, label %57, label %56, !dbg !2547

56:                                               ; preds = %53
  tail call void @free(i8* %40) #26, !dbg !2548
  br label %57, !dbg !2548

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !2387, metadata !DIExpression()) #26, !dbg !2549
  %58 = tail call noalias i8* @xmalloc(i64 %54) #26, !dbg !2551
  call void @llvm.dbg.value(metadata i8* %58, metadata !2488, metadata !DIExpression()), !dbg !2530
  store i8* %58, i8** %39, align 8, !dbg !2552, !tbaa !2439
  %59 = load i32, i32* %44, align 8, !dbg !2553, !tbaa !1529
  %60 = load i8*, i8** %47, align 8, !dbg !2554, !tbaa !1602
  %61 = load i8*, i8** %49, align 8, !dbg !2555, !tbaa !1605
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2556
  br label %63, !dbg !2557

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2530
  call void @llvm.dbg.value(metadata i8* %64, metadata !2488, metadata !DIExpression()), !dbg !2530
  store i32 %6, i32* %5, align 4, !dbg !2558, !tbaa !849
  ret i8* %64, !dbg !2559
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2560 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2564, metadata !DIExpression()), !dbg !2567
  call void @llvm.dbg.value(metadata i8* %1, metadata !2565, metadata !DIExpression()), !dbg !2567
  call void @llvm.dbg.value(metadata i64 %2, metadata !2566, metadata !DIExpression()), !dbg !2567
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2568
  ret i8* %4, !dbg !2569
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2570 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2572, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i32 0, metadata !2467, metadata !DIExpression()) #26, !dbg !2574
  call void @llvm.dbg.value(metadata i8* %0, metadata !2468, metadata !DIExpression()) #26, !dbg !2574
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #26, !dbg !2576
  ret i8* %2, !dbg !2577
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2578 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2582, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i64 %1, metadata !2583, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i32 0, metadata !2564, metadata !DIExpression()) #26, !dbg !2585
  call void @llvm.dbg.value(metadata i8* %0, metadata !2565, metadata !DIExpression()) #26, !dbg !2585
  call void @llvm.dbg.value(metadata i64 %1, metadata !2566, metadata !DIExpression()) #26, !dbg !2585
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #26, !dbg !2587
  ret i8* %3, !dbg !2588
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2589 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2593, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata i32 %1, metadata !2594, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata i8* %2, metadata !2595, metadata !DIExpression()), !dbg !2597
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2598
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2598
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2596, metadata !DIExpression()), !dbg !2599
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2600), !dbg !2603
  call void @llvm.dbg.value(metadata i32 %1, metadata !2604, metadata !DIExpression()) #26, !dbg !2610
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2609, metadata !DIExpression()) #26, !dbg !2612
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #26, !dbg !2612, !alias.scope !2600
  %6 = icmp eq i32 %1, 10, !dbg !2613
  br i1 %6, label %7, label %8, !dbg !2615

7:                                                ; preds = %3
  tail call void @abort() #28, !dbg !2616, !noalias !2600
  unreachable, !dbg !2616

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2617
  store i32 %1, i32* %9, align 8, !dbg !2618, !tbaa !1529, !alias.scope !2600
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2619
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2620
  ret i8* %10, !dbg !2621
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2622 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2626, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata i32 %1, metadata !2627, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata i8* %2, metadata !2628, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata i64 %3, metadata !2629, metadata !DIExpression()), !dbg !2631
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2632
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2632
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2630, metadata !DIExpression()), !dbg !2633
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2634), !dbg !2637
  call void @llvm.dbg.value(metadata i32 %1, metadata !2604, metadata !DIExpression()) #26, !dbg !2638
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2609, metadata !DIExpression()) #26, !dbg !2640
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #26, !dbg !2640, !alias.scope !2634
  %7 = icmp eq i32 %1, 10, !dbg !2641
  br i1 %7, label %8, label %9, !dbg !2642

8:                                                ; preds = %4
  tail call void @abort() #28, !dbg !2643, !noalias !2634
  unreachable, !dbg !2643

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2644
  store i32 %1, i32* %10, align 8, !dbg !2645, !tbaa !1529, !alias.scope !2634
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2646
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2647
  ret i8* %11, !dbg !2648
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2649 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2653, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i8* %1, metadata !2654, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i32 0, metadata !2593, metadata !DIExpression()) #26, !dbg !2656
  call void @llvm.dbg.value(metadata i32 %0, metadata !2594, metadata !DIExpression()) #26, !dbg !2656
  call void @llvm.dbg.value(metadata i8* %1, metadata !2595, metadata !DIExpression()) #26, !dbg !2656
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2658
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2658
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2596, metadata !DIExpression()) #26, !dbg !2659
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2660) #26, !dbg !2663
  call void @llvm.dbg.value(metadata i32 %0, metadata !2604, metadata !DIExpression()) #26, !dbg !2664
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2609, metadata !DIExpression()) #26, !dbg !2666
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #26, !dbg !2666, !alias.scope !2660
  %5 = icmp eq i32 %0, 10, !dbg !2667
  br i1 %5, label %6, label %7, !dbg !2668

6:                                                ; preds = %2
  tail call void @abort() #28, !dbg !2669, !noalias !2660
  unreachable, !dbg !2669

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2670
  store i32 %0, i32* %8, align 8, !dbg !2671, !tbaa !1529, !alias.scope !2660
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #26, !dbg !2672
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2673
  ret i8* %9, !dbg !2674
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2675 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2679, metadata !DIExpression()), !dbg !2682
  call void @llvm.dbg.value(metadata i8* %1, metadata !2680, metadata !DIExpression()), !dbg !2682
  call void @llvm.dbg.value(metadata i64 %2, metadata !2681, metadata !DIExpression()), !dbg !2682
  call void @llvm.dbg.value(metadata i32 0, metadata !2626, metadata !DIExpression()) #26, !dbg !2683
  call void @llvm.dbg.value(metadata i32 %0, metadata !2627, metadata !DIExpression()) #26, !dbg !2683
  call void @llvm.dbg.value(metadata i8* %1, metadata !2628, metadata !DIExpression()) #26, !dbg !2683
  call void @llvm.dbg.value(metadata i64 %2, metadata !2629, metadata !DIExpression()) #26, !dbg !2683
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2685
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2685
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2630, metadata !DIExpression()) #26, !dbg !2686
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2687) #26, !dbg !2690
  call void @llvm.dbg.value(metadata i32 %0, metadata !2604, metadata !DIExpression()) #26, !dbg !2691
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2609, metadata !DIExpression()) #26, !dbg !2693
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #26, !dbg !2693, !alias.scope !2687
  %6 = icmp eq i32 %0, 10, !dbg !2694
  br i1 %6, label %7, label %8, !dbg !2695

7:                                                ; preds = %3
  tail call void @abort() #28, !dbg !2696, !noalias !2687
  unreachable, !dbg !2696

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2697
  store i32 %0, i32* %9, align 8, !dbg !2698, !tbaa !1529, !alias.scope !2687
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #26, !dbg !2699
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2700
  ret i8* %10, !dbg !2701
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2702 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2706, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i64 %1, metadata !2707, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i8 %2, metadata !2708, metadata !DIExpression()), !dbg !2710
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2711
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2711
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2709, metadata !DIExpression()), !dbg !2712
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2713, !tbaa.struct !2714
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1547, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata i8 %2, metadata !1548, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata i32 1, metadata !1549, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata i8 %2, metadata !1550, metadata !DIExpression()), !dbg !2715
  %6 = lshr i8 %2, 5, !dbg !2717
  %7 = zext i8 %6 to i64, !dbg !2717
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2718
  call void @llvm.dbg.value(metadata i32* %8, metadata !1551, metadata !DIExpression()), !dbg !2715
  %9 = and i8 %2, 31, !dbg !2719
  %10 = zext i8 %9 to i32, !dbg !2719
  call void @llvm.dbg.value(metadata i32 %10, metadata !1553, metadata !DIExpression()), !dbg !2715
  %11 = load i32, i32* %8, align 4, !dbg !2720, !tbaa !849
  %12 = lshr i32 %11, %10, !dbg !2721
  %13 = and i32 %12, 1, !dbg !2722
  call void @llvm.dbg.value(metadata i32 %13, metadata !1554, metadata !DIExpression()), !dbg !2715
  %14 = xor i32 %13, 1, !dbg !2723
  %15 = shl i32 %14, %10, !dbg !2724
  %16 = xor i32 %15, %11, !dbg !2725
  store i32 %16, i32* %8, align 4, !dbg !2725, !tbaa !849
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2726
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2727
  ret i8* %17, !dbg !2728
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2729 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2733, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i8 %1, metadata !2734, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i8* %0, metadata !2706, metadata !DIExpression()) #26, !dbg !2736
  call void @llvm.dbg.value(metadata i64 -1, metadata !2707, metadata !DIExpression()) #26, !dbg !2736
  call void @llvm.dbg.value(metadata i8 %1, metadata !2708, metadata !DIExpression()) #26, !dbg !2736
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2738
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2738
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2709, metadata !DIExpression()) #26, !dbg !2739
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #26, !dbg !2740, !tbaa.struct !2714
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1547, metadata !DIExpression()) #26, !dbg !2741
  call void @llvm.dbg.value(metadata i8 %1, metadata !1548, metadata !DIExpression()) #26, !dbg !2741
  call void @llvm.dbg.value(metadata i32 1, metadata !1549, metadata !DIExpression()) #26, !dbg !2741
  call void @llvm.dbg.value(metadata i8 %1, metadata !1550, metadata !DIExpression()) #26, !dbg !2741
  %5 = lshr i8 %1, 5, !dbg !2743
  %6 = zext i8 %5 to i64, !dbg !2743
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2744
  call void @llvm.dbg.value(metadata i32* %7, metadata !1551, metadata !DIExpression()) #26, !dbg !2741
  %8 = and i8 %1, 31, !dbg !2745
  %9 = zext i8 %8 to i32, !dbg !2745
  call void @llvm.dbg.value(metadata i32 %9, metadata !1553, metadata !DIExpression()) #26, !dbg !2741
  %10 = load i32, i32* %7, align 4, !dbg !2746, !tbaa !849
  %11 = lshr i32 %10, %9, !dbg !2747
  %12 = and i32 %11, 1, !dbg !2748
  call void @llvm.dbg.value(metadata i32 %12, metadata !1554, metadata !DIExpression()) #26, !dbg !2741
  %13 = xor i32 %12, 1, !dbg !2749
  %14 = shl i32 %13, %9, !dbg !2750
  %15 = xor i32 %14, %10, !dbg !2751
  store i32 %15, i32* %7, align 4, !dbg !2751, !tbaa !849
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #26, !dbg !2752
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2753
  ret i8* %16, !dbg !2754
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2755 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2757, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i8* %0, metadata !2733, metadata !DIExpression()) #26, !dbg !2759
  call void @llvm.dbg.value(metadata i8 58, metadata !2734, metadata !DIExpression()) #26, !dbg !2759
  call void @llvm.dbg.value(metadata i8* %0, metadata !2706, metadata !DIExpression()) #26, !dbg !2761
  call void @llvm.dbg.value(metadata i64 -1, metadata !2707, metadata !DIExpression()) #26, !dbg !2761
  call void @llvm.dbg.value(metadata i8 58, metadata !2708, metadata !DIExpression()) #26, !dbg !2761
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2763
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #26, !dbg !2763
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2709, metadata !DIExpression()) #26, !dbg !2764
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #26, !dbg !2765, !tbaa.struct !2714
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1547, metadata !DIExpression()) #26, !dbg !2766
  call void @llvm.dbg.value(metadata i8 58, metadata !1548, metadata !DIExpression()) #26, !dbg !2766
  call void @llvm.dbg.value(metadata i32 1, metadata !1549, metadata !DIExpression()) #26, !dbg !2766
  call void @llvm.dbg.value(metadata i8 58, metadata !1550, metadata !DIExpression()) #26, !dbg !2766
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2768
  call void @llvm.dbg.value(metadata i32* %4, metadata !1551, metadata !DIExpression()) #26, !dbg !2766
  call void @llvm.dbg.value(metadata i32 26, metadata !1553, metadata !DIExpression()) #26, !dbg !2766
  %5 = load i32, i32* %4, align 4, !dbg !2769, !tbaa !849
  call void @llvm.dbg.value(metadata i32 %5, metadata !1554, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #26, !dbg !2766
  %6 = or i32 %5, 67108864, !dbg !2770
  store i32 %6, i32* %4, align 4, !dbg !2770, !tbaa !849
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #26, !dbg !2771
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #26, !dbg !2772
  ret i8* %7, !dbg !2773
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2774 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2776, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata i64 %1, metadata !2777, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata i8* %0, metadata !2706, metadata !DIExpression()) #26, !dbg !2779
  call void @llvm.dbg.value(metadata i64 %1, metadata !2707, metadata !DIExpression()) #26, !dbg !2779
  call void @llvm.dbg.value(metadata i8 58, metadata !2708, metadata !DIExpression()) #26, !dbg !2779
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2781
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2781
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2709, metadata !DIExpression()) #26, !dbg !2782
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #26, !dbg !2783, !tbaa.struct !2714
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1547, metadata !DIExpression()) #26, !dbg !2784
  call void @llvm.dbg.value(metadata i8 58, metadata !1548, metadata !DIExpression()) #26, !dbg !2784
  call void @llvm.dbg.value(metadata i32 1, metadata !1549, metadata !DIExpression()) #26, !dbg !2784
  call void @llvm.dbg.value(metadata i8 58, metadata !1550, metadata !DIExpression()) #26, !dbg !2784
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2786
  call void @llvm.dbg.value(metadata i32* %5, metadata !1551, metadata !DIExpression()) #26, !dbg !2784
  call void @llvm.dbg.value(metadata i32 26, metadata !1553, metadata !DIExpression()) #26, !dbg !2784
  %6 = load i32, i32* %5, align 4, !dbg !2787, !tbaa !849
  call void @llvm.dbg.value(metadata i32 %6, metadata !1554, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #26, !dbg !2784
  %7 = or i32 %6, 67108864, !dbg !2788
  store i32 %7, i32* %5, align 4, !dbg !2788, !tbaa !849
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #26, !dbg !2789
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2790
  ret i8* %8, !dbg !2791
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2792 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2609, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2798
  call void @llvm.dbg.value(metadata i32 %0, metadata !2794, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i32 %1, metadata !2795, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i8* %2, metadata !2796, metadata !DIExpression()), !dbg !2800
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2801
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2801
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2797, metadata !DIExpression()), !dbg !2802
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2803
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2803
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2804), !dbg !2803
  call void @llvm.dbg.value(metadata i32 %1, metadata !2604, metadata !DIExpression()) #26, !dbg !2807
  call void @llvm.dbg.value(metadata i32 0, metadata !2609, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2807
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2798, !alias.scope !2804
  %8 = icmp eq i32 %1, 10, !dbg !2808
  br i1 %8, label %9, label %10, !dbg !2809

9:                                                ; preds = %3
  tail call void @abort() #28, !dbg !2810, !noalias !2804
  unreachable, !dbg !2810

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2609, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2807
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2803
  store i32 %1, i32* %11, align 8, !dbg !2803, !tbaa.struct !2714
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2803
  %13 = bitcast i32* %12 to i8*, !dbg !2803
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2803, !tbaa.struct !2811
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2803
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1547, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata i8 58, metadata !1548, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata i32 1, metadata !1549, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata i8 58, metadata !1550, metadata !DIExpression()), !dbg !2812
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2814
  call void @llvm.dbg.value(metadata i32* %14, metadata !1551, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata i32 26, metadata !1553, metadata !DIExpression()), !dbg !2812
  %15 = load i32, i32* %14, align 4, !dbg !2815, !tbaa !849
  call void @llvm.dbg.value(metadata i32 %15, metadata !1554, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2812
  %16 = or i32 %15, 67108864, !dbg !2816
  store i32 %16, i32* %14, align 4, !dbg !2816, !tbaa !849
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2817
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2818
  ret i8* %17, !dbg !2819
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2820 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2824, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata i8* %1, metadata !2825, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata i8* %2, metadata !2826, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata i8* %3, metadata !2827, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata i32 %0, metadata !2829, metadata !DIExpression()) #26, !dbg !2839
  call void @llvm.dbg.value(metadata i8* %1, metadata !2834, metadata !DIExpression()) #26, !dbg !2839
  call void @llvm.dbg.value(metadata i8* %2, metadata !2835, metadata !DIExpression()) #26, !dbg !2839
  call void @llvm.dbg.value(metadata i8* %3, metadata !2836, metadata !DIExpression()) #26, !dbg !2839
  call void @llvm.dbg.value(metadata i64 -1, metadata !2837, metadata !DIExpression()) #26, !dbg !2839
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2841
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2841
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2838, metadata !DIExpression()) #26, !dbg !2842
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #26, !dbg !2843, !tbaa.struct !2714
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1587, metadata !DIExpression()) #26, !dbg !2844
  call void @llvm.dbg.value(metadata i8* %1, metadata !1588, metadata !DIExpression()) #26, !dbg !2844
  call void @llvm.dbg.value(metadata i8* %2, metadata !1589, metadata !DIExpression()) #26, !dbg !2844
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1587, metadata !DIExpression()) #26, !dbg !2844
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2846
  store i32 10, i32* %7, align 8, !dbg !2847, !tbaa !1529
  %8 = icmp ne i8* %1, null, !dbg !2848
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2849
  br i1 %10, label %12, label %11, !dbg !2849

11:                                               ; preds = %4
  tail call void @abort() #28, !dbg !2850
  unreachable, !dbg !2850

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2851
  store i8* %1, i8** %13, align 8, !dbg !2852, !tbaa !1602
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2853
  store i8* %2, i8** %14, align 8, !dbg !2854, !tbaa !1605
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #26, !dbg !2855
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2856
  ret i8* %15, !dbg !2857
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2830 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2829, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata i8* %1, metadata !2834, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata i8* %2, metadata !2835, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata i8* %3, metadata !2836, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata i64 %4, metadata !2837, metadata !DIExpression()), !dbg !2858
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2859
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #26, !dbg !2859
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2838, metadata !DIExpression()), !dbg !2860
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2861, !tbaa.struct !2714
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1587, metadata !DIExpression()) #26, !dbg !2862
  call void @llvm.dbg.value(metadata i8* %1, metadata !1588, metadata !DIExpression()) #26, !dbg !2862
  call void @llvm.dbg.value(metadata i8* %2, metadata !1589, metadata !DIExpression()) #26, !dbg !2862
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1587, metadata !DIExpression()) #26, !dbg !2862
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2864
  store i32 10, i32* %8, align 8, !dbg !2865, !tbaa !1529
  %9 = icmp ne i8* %1, null, !dbg !2866
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2867
  br i1 %11, label %13, label %12, !dbg !2867

12:                                               ; preds = %5
  tail call void @abort() #28, !dbg !2868
  unreachable, !dbg !2868

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2869
  store i8* %1, i8** %14, align 8, !dbg !2870, !tbaa !1602
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2871
  store i8* %2, i8** %15, align 8, !dbg !2872, !tbaa !1605
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2873
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #26, !dbg !2874
  ret i8* %16, !dbg !2875
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2876 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2880, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata i8* %1, metadata !2881, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata i8* %2, metadata !2882, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata i32 0, metadata !2824, metadata !DIExpression()) #26, !dbg !2884
  call void @llvm.dbg.value(metadata i8* %0, metadata !2825, metadata !DIExpression()) #26, !dbg !2884
  call void @llvm.dbg.value(metadata i8* %1, metadata !2826, metadata !DIExpression()) #26, !dbg !2884
  call void @llvm.dbg.value(metadata i8* %2, metadata !2827, metadata !DIExpression()) #26, !dbg !2884
  call void @llvm.dbg.value(metadata i32 0, metadata !2829, metadata !DIExpression()) #26, !dbg !2886
  call void @llvm.dbg.value(metadata i8* %0, metadata !2834, metadata !DIExpression()) #26, !dbg !2886
  call void @llvm.dbg.value(metadata i8* %1, metadata !2835, metadata !DIExpression()) #26, !dbg !2886
  call void @llvm.dbg.value(metadata i8* %2, metadata !2836, metadata !DIExpression()) #26, !dbg !2886
  call void @llvm.dbg.value(metadata i64 -1, metadata !2837, metadata !DIExpression()) #26, !dbg !2886
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2888
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2888
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2838, metadata !DIExpression()) #26, !dbg !2889
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #26, !dbg !2890, !tbaa.struct !2714
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1587, metadata !DIExpression()) #26, !dbg !2891
  call void @llvm.dbg.value(metadata i8* %0, metadata !1588, metadata !DIExpression()) #26, !dbg !2891
  call void @llvm.dbg.value(metadata i8* %1, metadata !1589, metadata !DIExpression()) #26, !dbg !2891
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1587, metadata !DIExpression()) #26, !dbg !2891
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2893
  store i32 10, i32* %6, align 8, !dbg !2894, !tbaa !1529
  %7 = icmp ne i8* %0, null, !dbg !2895
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2896
  br i1 %9, label %11, label %10, !dbg !2896

10:                                               ; preds = %3
  tail call void @abort() #28, !dbg !2897
  unreachable, !dbg !2897

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2898
  store i8* %0, i8** %12, align 8, !dbg !2899, !tbaa !1602
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2900
  store i8* %1, i8** %13, align 8, !dbg !2901, !tbaa !1605
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #26, !dbg !2902
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2903
  ret i8* %14, !dbg !2904
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2905 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2909, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata i8* %1, metadata !2910, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata i8* %2, metadata !2911, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata i64 %3, metadata !2912, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata i32 0, metadata !2829, metadata !DIExpression()) #26, !dbg !2914
  call void @llvm.dbg.value(metadata i8* %0, metadata !2834, metadata !DIExpression()) #26, !dbg !2914
  call void @llvm.dbg.value(metadata i8* %1, metadata !2835, metadata !DIExpression()) #26, !dbg !2914
  call void @llvm.dbg.value(metadata i8* %2, metadata !2836, metadata !DIExpression()) #26, !dbg !2914
  call void @llvm.dbg.value(metadata i64 %3, metadata !2837, metadata !DIExpression()) #26, !dbg !2914
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2916
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2916
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2838, metadata !DIExpression()) #26, !dbg !2917
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #26, !dbg !2918, !tbaa.struct !2714
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1587, metadata !DIExpression()) #26, !dbg !2919
  call void @llvm.dbg.value(metadata i8* %0, metadata !1588, metadata !DIExpression()) #26, !dbg !2919
  call void @llvm.dbg.value(metadata i8* %1, metadata !1589, metadata !DIExpression()) #26, !dbg !2919
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1587, metadata !DIExpression()) #26, !dbg !2919
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2921
  store i32 10, i32* %7, align 8, !dbg !2922, !tbaa !1529
  %8 = icmp ne i8* %0, null, !dbg !2923
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2924
  br i1 %10, label %12, label %11, !dbg !2924

11:                                               ; preds = %4
  tail call void @abort() #28, !dbg !2925
  unreachable, !dbg !2925

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2926
  store i8* %0, i8** %13, align 8, !dbg !2927, !tbaa !1602
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2928
  store i8* %1, i8** %14, align 8, !dbg !2929, !tbaa !1605
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #26, !dbg !2930
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2931
  ret i8* %15, !dbg !2932
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2933 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2937, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata i8* %1, metadata !2938, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata i64 %2, metadata !2939, metadata !DIExpression()), !dbg !2940
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2941
  ret i8* %4, !dbg !2942
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2943 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2947, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata i64 %1, metadata !2948, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata i32 0, metadata !2937, metadata !DIExpression()) #26, !dbg !2950
  call void @llvm.dbg.value(metadata i8* %0, metadata !2938, metadata !DIExpression()) #26, !dbg !2950
  call void @llvm.dbg.value(metadata i64 %1, metadata !2939, metadata !DIExpression()) #26, !dbg !2950
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #26, !dbg !2952
  ret i8* %3, !dbg !2953
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2954 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2958, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i8* %1, metadata !2959, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i32 %0, metadata !2937, metadata !DIExpression()) #26, !dbg !2961
  call void @llvm.dbg.value(metadata i8* %1, metadata !2938, metadata !DIExpression()) #26, !dbg !2961
  call void @llvm.dbg.value(metadata i64 -1, metadata !2939, metadata !DIExpression()) #26, !dbg !2961
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #26, !dbg !2963
  ret i8* %3, !dbg !2964
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !2965 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2969, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata i32 0, metadata !2958, metadata !DIExpression()) #26, !dbg !2971
  call void @llvm.dbg.value(metadata i8* %0, metadata !2959, metadata !DIExpression()) #26, !dbg !2971
  call void @llvm.dbg.value(metadata i32 0, metadata !2937, metadata !DIExpression()) #26, !dbg !2973
  call void @llvm.dbg.value(metadata i8* %0, metadata !2938, metadata !DIExpression()) #26, !dbg !2973
  call void @llvm.dbg.value(metadata i64 -1, metadata !2939, metadata !DIExpression()) #26, !dbg !2973
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #26, !dbg !2975
  ret i8* %2, !dbg !2976
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @dup_safer(i32 %0) local_unnamed_addr #8 !dbg !2977 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2979, metadata !DIExpression()), !dbg !2980
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 3) #26, !dbg !2981
  ret i32 %2, !dbg !2982
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !2983 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3021, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i8* %1, metadata !3022, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i8* %2, metadata !3023, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i8* %3, metadata !3024, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i8** %4, metadata !3025, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i64 %5, metadata !3026, metadata !DIExpression()), !dbg !3027
  %7 = icmp eq i8* %1, null, !dbg !3028
  br i1 %7, label %10, label %8, !dbg !3030

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.104, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #26, !dbg !3031
  br label %12, !dbg !3031

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.105, i64 0, i64 0), i8* %2, i8* %3) #26, !dbg !3032
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.106, i64 0, i64 0), i32 5) #26, !dbg !3033
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #26, !dbg !3033
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.107, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3034
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.108, i64 0, i64 0), i32 5) #26, !dbg !3035
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.109, i64 0, i64 0)) #26, !dbg !3035
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.107, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3036
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
  ], !dbg !3037

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.110, i64 0, i64 0), i32 5) #26, !dbg !3038
  %21 = load i8*, i8** %4, align 8, !dbg !3038, !tbaa !672
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #26, !dbg !3038
  br label %147, !dbg !3040

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.111, i64 0, i64 0), i32 5) #26, !dbg !3041
  %25 = load i8*, i8** %4, align 8, !dbg !3041, !tbaa !672
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3041
  %27 = load i8*, i8** %26, align 8, !dbg !3041, !tbaa !672
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #26, !dbg !3041
  br label %147, !dbg !3042

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.112, i64 0, i64 0), i32 5) #26, !dbg !3043
  %31 = load i8*, i8** %4, align 8, !dbg !3043, !tbaa !672
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3043
  %33 = load i8*, i8** %32, align 8, !dbg !3043, !tbaa !672
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3043
  %35 = load i8*, i8** %34, align 8, !dbg !3043, !tbaa !672
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #26, !dbg !3043
  br label %147, !dbg !3044

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.113, i64 0, i64 0), i32 5) #26, !dbg !3045
  %39 = load i8*, i8** %4, align 8, !dbg !3045, !tbaa !672
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3045
  %41 = load i8*, i8** %40, align 8, !dbg !3045, !tbaa !672
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3045
  %43 = load i8*, i8** %42, align 8, !dbg !3045, !tbaa !672
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3045
  %45 = load i8*, i8** %44, align 8, !dbg !3045, !tbaa !672
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #26, !dbg !3045
  br label %147, !dbg !3046

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.114, i64 0, i64 0), i32 5) #26, !dbg !3047
  %49 = load i8*, i8** %4, align 8, !dbg !3047, !tbaa !672
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3047
  %51 = load i8*, i8** %50, align 8, !dbg !3047, !tbaa !672
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3047
  %53 = load i8*, i8** %52, align 8, !dbg !3047, !tbaa !672
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3047
  %55 = load i8*, i8** %54, align 8, !dbg !3047, !tbaa !672
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3047
  %57 = load i8*, i8** %56, align 8, !dbg !3047, !tbaa !672
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #26, !dbg !3047
  br label %147, !dbg !3048

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.115, i64 0, i64 0), i32 5) #26, !dbg !3049
  %61 = load i8*, i8** %4, align 8, !dbg !3049, !tbaa !672
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3049
  %63 = load i8*, i8** %62, align 8, !dbg !3049, !tbaa !672
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3049
  %65 = load i8*, i8** %64, align 8, !dbg !3049, !tbaa !672
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3049
  %67 = load i8*, i8** %66, align 8, !dbg !3049, !tbaa !672
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3049
  %69 = load i8*, i8** %68, align 8, !dbg !3049, !tbaa !672
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3049
  %71 = load i8*, i8** %70, align 8, !dbg !3049, !tbaa !672
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #26, !dbg !3049
  br label %147, !dbg !3050

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.116, i64 0, i64 0), i32 5) #26, !dbg !3051
  %75 = load i8*, i8** %4, align 8, !dbg !3051, !tbaa !672
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3051
  %77 = load i8*, i8** %76, align 8, !dbg !3051, !tbaa !672
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3051
  %79 = load i8*, i8** %78, align 8, !dbg !3051, !tbaa !672
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3051
  %81 = load i8*, i8** %80, align 8, !dbg !3051, !tbaa !672
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3051
  %83 = load i8*, i8** %82, align 8, !dbg !3051, !tbaa !672
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3051
  %85 = load i8*, i8** %84, align 8, !dbg !3051, !tbaa !672
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3051
  %87 = load i8*, i8** %86, align 8, !dbg !3051, !tbaa !672
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #26, !dbg !3051
  br label %147, !dbg !3052

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.117, i64 0, i64 0), i32 5) #26, !dbg !3053
  %91 = load i8*, i8** %4, align 8, !dbg !3053, !tbaa !672
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3053
  %93 = load i8*, i8** %92, align 8, !dbg !3053, !tbaa !672
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3053
  %95 = load i8*, i8** %94, align 8, !dbg !3053, !tbaa !672
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3053
  %97 = load i8*, i8** %96, align 8, !dbg !3053, !tbaa !672
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3053
  %99 = load i8*, i8** %98, align 8, !dbg !3053, !tbaa !672
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3053
  %101 = load i8*, i8** %100, align 8, !dbg !3053, !tbaa !672
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3053
  %103 = load i8*, i8** %102, align 8, !dbg !3053, !tbaa !672
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3053
  %105 = load i8*, i8** %104, align 8, !dbg !3053, !tbaa !672
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #26, !dbg !3053
  br label %147, !dbg !3054

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.118, i64 0, i64 0), i32 5) #26, !dbg !3055
  %109 = load i8*, i8** %4, align 8, !dbg !3055, !tbaa !672
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3055
  %111 = load i8*, i8** %110, align 8, !dbg !3055, !tbaa !672
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3055
  %113 = load i8*, i8** %112, align 8, !dbg !3055, !tbaa !672
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3055
  %115 = load i8*, i8** %114, align 8, !dbg !3055, !tbaa !672
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3055
  %117 = load i8*, i8** %116, align 8, !dbg !3055, !tbaa !672
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3055
  %119 = load i8*, i8** %118, align 8, !dbg !3055, !tbaa !672
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3055
  %121 = load i8*, i8** %120, align 8, !dbg !3055, !tbaa !672
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3055
  %123 = load i8*, i8** %122, align 8, !dbg !3055, !tbaa !672
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3055
  %125 = load i8*, i8** %124, align 8, !dbg !3055, !tbaa !672
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #26, !dbg !3055
  br label %147, !dbg !3056

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.119, i64 0, i64 0), i32 5) #26, !dbg !3057
  %129 = load i8*, i8** %4, align 8, !dbg !3057, !tbaa !672
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3057
  %131 = load i8*, i8** %130, align 8, !dbg !3057, !tbaa !672
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3057
  %133 = load i8*, i8** %132, align 8, !dbg !3057, !tbaa !672
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3057
  %135 = load i8*, i8** %134, align 8, !dbg !3057, !tbaa !672
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3057
  %137 = load i8*, i8** %136, align 8, !dbg !3057, !tbaa !672
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3057
  %139 = load i8*, i8** %138, align 8, !dbg !3057, !tbaa !672
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3057
  %141 = load i8*, i8** %140, align 8, !dbg !3057, !tbaa !672
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3057
  %143 = load i8*, i8** %142, align 8, !dbg !3057, !tbaa !672
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3057
  %145 = load i8*, i8** %144, align 8, !dbg !3057, !tbaa !672
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #26, !dbg !3057
  br label %147, !dbg !3058

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3059
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3060 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3064, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata i8* %1, metadata !3065, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata i8* %2, metadata !3066, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata i8* %3, metadata !3067, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata i8** %4, metadata !3068, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata i64 0, metadata !3069, metadata !DIExpression()), !dbg !3070
  br label %6, !dbg !3071

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3073
  call void @llvm.dbg.value(metadata i64 %7, metadata !3069, metadata !DIExpression()), !dbg !3070
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3074
  %9 = load i8*, i8** %8, align 8, !dbg !3074, !tbaa !672
  %10 = icmp eq i8* %9, null, !dbg !3076
  %11 = add i64 %7, 1, !dbg !3077
  call void @llvm.dbg.value(metadata i64 %11, metadata !3069, metadata !DIExpression()), !dbg !3070
  br i1 %10, label %12, label %6, !dbg !3076, !llvm.loop !3078

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3080
  ret void, !dbg !3081
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3082 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3093, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i8* %1, metadata !3094, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i8* %2, metadata !3095, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i8* %3, metadata !3096, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3097, metadata !DIExpression()), !dbg !3101
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3102
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #26, !dbg !3102
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3099, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 0, metadata !3098, metadata !DIExpression()), !dbg !3101
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !3098, metadata !DIExpression()), !dbg !3101
  %11 = load i32, i32* %8, align 8, !dbg !3104
  %12 = icmp ult i32 %11, 41, !dbg !3104
  br i1 %12, label %13, label %18, !dbg !3104

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3104
  %15 = zext i32 %11 to i64, !dbg !3104
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3104
  %17 = add nuw nsw i32 %11, 8, !dbg !3104
  store i32 %17, i32* %8, align 8, !dbg !3104
  br label %21, !dbg !3104

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3104
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3104
  store i8* %20, i8** %9, align 8, !dbg !3104
  br label %21, !dbg !3104

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3104
  %25 = load i8*, i8** %24, align 8, !dbg !3104
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3107
  store i8* %25, i8** %26, align 16, !dbg !3108, !tbaa !672
  %27 = icmp eq i8* %25, null, !dbg !3109
  br i1 %27, label %30, label %28, !dbg !3110

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3098, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i64 1, metadata !3098, metadata !DIExpression()), !dbg !3101
  %29 = icmp ult i32 %22, 41, !dbg !3104
  br i1 %29, label %35, label %32, !dbg !3104

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3111
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3112
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #26, !dbg !3113
  ret void, !dbg !3113

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3104
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3104
  store i8* %34, i8** %9, align 8, !dbg !3104
  br label %40, !dbg !3104

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3104
  %37 = zext i32 %22 to i64, !dbg !3104
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3104
  %39 = add nuw nsw i32 %22, 8, !dbg !3104
  store i32 %39, i32* %8, align 8, !dbg !3104
  br label %40, !dbg !3104

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3104
  %44 = load i8*, i8** %43, align 8, !dbg !3104
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3107
  store i8* %44, i8** %45, align 8, !dbg !3108, !tbaa !672
  %46 = icmp eq i8* %44, null, !dbg !3109
  br i1 %46, label %30, label %47, !dbg !3110

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3098, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i64 2, metadata !3098, metadata !DIExpression()), !dbg !3101
  %48 = icmp ult i32 %41, 41, !dbg !3104
  br i1 %48, label %52, label %49, !dbg !3104

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3104
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3104
  store i8* %51, i8** %9, align 8, !dbg !3104
  br label %57, !dbg !3104

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3104
  %54 = zext i32 %41 to i64, !dbg !3104
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3104
  %56 = add nuw nsw i32 %41, 8, !dbg !3104
  store i32 %56, i32* %8, align 8, !dbg !3104
  br label %57, !dbg !3104

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3104
  %61 = load i8*, i8** %60, align 8, !dbg !3104
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3107
  store i8* %61, i8** %62, align 16, !dbg !3108, !tbaa !672
  %63 = icmp eq i8* %61, null, !dbg !3109
  br i1 %63, label %30, label %64, !dbg !3110

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3098, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i64 3, metadata !3098, metadata !DIExpression()), !dbg !3101
  %65 = icmp ult i32 %58, 41, !dbg !3104
  br i1 %65, label %69, label %66, !dbg !3104

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3104
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3104
  store i8* %68, i8** %9, align 8, !dbg !3104
  br label %74, !dbg !3104

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3104
  %71 = zext i32 %58 to i64, !dbg !3104
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3104
  %73 = add nuw nsw i32 %58, 8, !dbg !3104
  store i32 %73, i32* %8, align 8, !dbg !3104
  br label %74, !dbg !3104

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3104
  %78 = load i8*, i8** %77, align 8, !dbg !3104
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3107
  store i8* %78, i8** %79, align 8, !dbg !3108, !tbaa !672
  %80 = icmp eq i8* %78, null, !dbg !3109
  br i1 %80, label %30, label %81, !dbg !3110

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3098, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i64 4, metadata !3098, metadata !DIExpression()), !dbg !3101
  %82 = icmp ult i32 %75, 41, !dbg !3104
  br i1 %82, label %86, label %83, !dbg !3104

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3104
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3104
  store i8* %85, i8** %9, align 8, !dbg !3104
  br label %91, !dbg !3104

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3104
  %88 = zext i32 %75 to i64, !dbg !3104
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3104
  %90 = add nuw nsw i32 %75, 8, !dbg !3104
  store i32 %90, i32* %8, align 8, !dbg !3104
  br label %91, !dbg !3104

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3104
  %95 = load i8*, i8** %94, align 8, !dbg !3104
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3107
  store i8* %95, i8** %96, align 16, !dbg !3108, !tbaa !672
  %97 = icmp eq i8* %95, null, !dbg !3109
  br i1 %97, label %30, label %98, !dbg !3110

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3098, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i64 5, metadata !3098, metadata !DIExpression()), !dbg !3101
  %99 = icmp ult i32 %92, 41, !dbg !3104
  br i1 %99, label %103, label %100, !dbg !3104

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3104
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3104
  store i8* %102, i8** %9, align 8, !dbg !3104
  br label %108, !dbg !3104

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3104
  %105 = zext i32 %92 to i64, !dbg !3104
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3104
  %107 = add nuw nsw i32 %92, 8, !dbg !3104
  store i32 %107, i32* %8, align 8, !dbg !3104
  br label %108, !dbg !3104

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3104
  %111 = load i8*, i8** %110, align 8, !dbg !3104
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3107
  store i8* %111, i8** %112, align 8, !dbg !3108, !tbaa !672
  %113 = icmp eq i8* %111, null, !dbg !3109
  br i1 %113, label %30, label %114, !dbg !3110

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3098, metadata !DIExpression()), !dbg !3101
  %115 = load i8*, i8** %9, align 8, !dbg !3104
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3104
  store i8* %116, i8** %9, align 8, !dbg !3104
  %117 = bitcast i8* %115 to i8**, !dbg !3104
  %118 = load i8*, i8** %117, align 8, !dbg !3104
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3107
  store i8* %118, i8** %119, align 16, !dbg !3108, !tbaa !672
  %120 = icmp eq i8* %118, null, !dbg !3109
  br i1 %120, label %30, label %121, !dbg !3110

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3098, metadata !DIExpression()), !dbg !3101
  %122 = load i8*, i8** %9, align 8, !dbg !3104
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3104
  store i8* %123, i8** %9, align 8, !dbg !3104
  %124 = bitcast i8* %122 to i8**, !dbg !3104
  %125 = load i8*, i8** %124, align 8, !dbg !3104
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3107
  store i8* %125, i8** %126, align 8, !dbg !3108, !tbaa !672
  %127 = icmp eq i8* %125, null, !dbg !3109
  br i1 %127, label %30, label %128, !dbg !3110

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3098, metadata !DIExpression()), !dbg !3101
  %129 = load i8*, i8** %9, align 8, !dbg !3104
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3104
  store i8* %130, i8** %9, align 8, !dbg !3104
  %131 = bitcast i8* %129 to i8**, !dbg !3104
  %132 = load i8*, i8** %131, align 8, !dbg !3104
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3107
  store i8* %132, i8** %133, align 16, !dbg !3108, !tbaa !672
  %134 = icmp eq i8* %132, null, !dbg !3109
  br i1 %134, label %30, label %135, !dbg !3110

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3098, metadata !DIExpression()), !dbg !3101
  %136 = load i8*, i8** %9, align 8, !dbg !3104
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3104
  store i8* %137, i8** %9, align 8, !dbg !3104
  %138 = bitcast i8* %136 to i8**, !dbg !3104
  %139 = load i8*, i8** %138, align 8, !dbg !3104
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3107
  store i8* %139, i8** %140, align 8, !dbg !3108, !tbaa !672
  %141 = icmp eq i8* %139, null, !dbg !3109
  %142 = select i1 %141, i64 9, i64 10, !dbg !3110
  br label %30, !dbg !3110
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3114 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3118, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i8* %1, metadata !3119, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i8* %2, metadata !3120, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i8* %3, metadata !3121, metadata !DIExpression()), !dbg !3128
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3129
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #26, !dbg !3129
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3122, metadata !DIExpression()), !dbg !3130
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3131
  call void @llvm.va_start(i8* nonnull %6), !dbg !3131
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3132
  call void @llvm.va_end(i8* nonnull %6), !dbg !3133
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #26, !dbg !3134
  ret void, !dbg !3134
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #22

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3135 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3136, !tbaa !672
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.107, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3136
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.122, i64 0, i64 0), i32 5) #26, !dbg !3137
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.123, i64 0, i64 0)) #26, !dbg !3137
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.124, i64 0, i64 0), i32 5) #26, !dbg !3138
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.125, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.126, i64 0, i64 0)) #26, !dbg !3138
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.127, i64 0, i64 0), i32 5) #26, !dbg !3139
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.128, i64 0, i64 0)) #26, !dbg !3139
  ret void, !dbg !3140
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #23 !dbg !3141 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3143, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata i64 %1, metadata !3144, metadata !DIExpression()), !dbg !3145
  %3 = udiv i64 9223372036854775807, %1, !dbg !3146
  %4 = icmp ult i64 %3, %0, !dbg !3146
  br i1 %4, label %5, label %6, !dbg !3148

5:                                                ; preds = %2
  tail call void @xalloc_die() #28, !dbg !3149
  unreachable, !dbg !3149

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3150
  call void @llvm.dbg.value(metadata i64 %7, metadata !3151, metadata !DIExpression()) #26, !dbg !3157
  %8 = tail call noalias i8* @malloc(i64 %7) #26, !dbg !3159
  call void @llvm.dbg.value(metadata i8* %8, metadata !3156, metadata !DIExpression()) #26, !dbg !3157
  %9 = icmp eq i8* %8, null, !dbg !3160
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !3162
  br i1 %11, label %12, label %13, !dbg !3162

12:                                               ; preds = %6
  tail call void @xalloc_die() #28, !dbg !3163
  unreachable, !dbg !3163

13:                                               ; preds = %6
  ret i8* %8, !dbg !3164
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #24

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3152 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3151, metadata !DIExpression()), !dbg !3165
  %2 = tail call noalias i8* @malloc(i64 %0) #26, !dbg !3166
  call void @llvm.dbg.value(metadata i8* %2, metadata !3156, metadata !DIExpression()), !dbg !3165
  %3 = icmp eq i8* %2, null, !dbg !3167
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3168
  br i1 %5, label %6, label %7, !dbg !3168

6:                                                ; preds = %1
  tail call void @xalloc_die() #28, !dbg !3169
  unreachable, !dbg !3169

7:                                                ; preds = %1
  ret i8* %2, !dbg !3170
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #23 !dbg !3171 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3175, metadata !DIExpression()), !dbg !3178
  call void @llvm.dbg.value(metadata i64 %1, metadata !3176, metadata !DIExpression()), !dbg !3178
  call void @llvm.dbg.value(metadata i64 %2, metadata !3177, metadata !DIExpression()), !dbg !3178
  %4 = udiv i64 9223372036854775807, %2, !dbg !3179
  %5 = icmp ult i64 %4, %1, !dbg !3179
  br i1 %5, label %6, label %7, !dbg !3181

6:                                                ; preds = %3
  tail call void @xalloc_die() #28, !dbg !3182
  unreachable, !dbg !3182

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3183
  call void @llvm.dbg.value(metadata i8* %0, metadata !3184, metadata !DIExpression()) #26, !dbg !3190
  call void @llvm.dbg.value(metadata i64 %8, metadata !3189, metadata !DIExpression()) #26, !dbg !3190
  %9 = icmp eq i64 %8, 0, !dbg !3192
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !3194
  br i1 %11, label %12, label %13, !dbg !3194

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #26, !dbg !3195
  br label %19, !dbg !3197

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #26, !dbg !3198
  call void @llvm.dbg.value(metadata i8* %14, metadata !3184, metadata !DIExpression()) #26, !dbg !3190
  %15 = icmp eq i8* %14, null, !dbg !3199
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !3201
  br i1 %17, label %18, label %19, !dbg !3201

18:                                               ; preds = %13
  tail call void @xalloc_die() #28, !dbg !3202
  unreachable, !dbg !3202

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3190
  ret i8* %20, !dbg !3203
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3185 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3184, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata i64 %1, metadata !3189, metadata !DIExpression()), !dbg !3204
  %3 = icmp eq i64 %1, 0, !dbg !3205
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !3206
  br i1 %5, label %6, label %7, !dbg !3206

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #26, !dbg !3207
  br label %13, !dbg !3208

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #26, !dbg !3209
  call void @llvm.dbg.value(metadata i8* %8, metadata !3184, metadata !DIExpression()), !dbg !3204
  %9 = icmp eq i8* %8, null, !dbg !3210
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !3211
  br i1 %11, label %12, label %13, !dbg !3211

12:                                               ; preds = %7
  tail call void @xalloc_die() #28, !dbg !3212
  unreachable, !dbg !3212

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3204
  ret i8* %14, !dbg !3213
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #23 !dbg !237 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !242, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata i64* %1, metadata !243, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata i64 %2, metadata !244, metadata !DIExpression()), !dbg !3214
  %4 = load i64, i64* %1, align 8, !dbg !3215, !tbaa !2424
  call void @llvm.dbg.value(metadata i64 %4, metadata !245, metadata !DIExpression()), !dbg !3214
  %5 = icmp eq i8* %0, null, !dbg !3216
  br i1 %5, label %6, label %20, !dbg !3218

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3219
  br i1 %7, label %8, label %13, !dbg !3222

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3223
  call void @llvm.dbg.value(metadata i64 %9, metadata !245, metadata !DIExpression()), !dbg !3214
  %10 = icmp ugt i64 %2, 128, !dbg !3225
  %11 = zext i1 %10 to i64, !dbg !3225
  %12 = add nuw nsw i64 %9, %11, !dbg !3226
  call void @llvm.dbg.value(metadata i64 %12, metadata !245, metadata !DIExpression()), !dbg !3214
  br label %13, !dbg !3227

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3214
  call void @llvm.dbg.value(metadata i64 %14, metadata !245, metadata !DIExpression()), !dbg !3214
  %15 = udiv i64 9223372036854775807, %2, !dbg !3228
  %16 = icmp ult i64 %15, %14, !dbg !3228
  br i1 %16, label %19, label %17, !dbg !3230

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !245, metadata !DIExpression()), !dbg !3214
  store i64 %14, i64* %1, align 8, !dbg !3231, !tbaa !2424
  %18 = mul i64 %14, %2, !dbg !3232
  call void @llvm.dbg.value(metadata i8* %0, metadata !3184, metadata !DIExpression()) #26, !dbg !3233
  call void @llvm.dbg.value(metadata i64 %28, metadata !3189, metadata !DIExpression()) #26, !dbg !3233
  br label %31, !dbg !3235

19:                                               ; preds = %13
  tail call void @xalloc_die() #28, !dbg !3236
  unreachable, !dbg !3236

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3237
  %22 = icmp ugt i64 %21, %4, !dbg !3240
  br i1 %22, label %24, label %23, !dbg !3241

23:                                               ; preds = %20
  tail call void @xalloc_die() #28, !dbg !3242
  unreachable, !dbg !3242

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3243
  %26 = add nuw i64 %4, 1, !dbg !3244
  %27 = add i64 %26, %25, !dbg !3245
  call void @llvm.dbg.value(metadata i64 %27, metadata !245, metadata !DIExpression()), !dbg !3214
  store i64 %27, i64* %1, align 8, !dbg !3231, !tbaa !2424
  %28 = mul i64 %27, %2, !dbg !3232
  call void @llvm.dbg.value(metadata i8* %0, metadata !3184, metadata !DIExpression()) #26, !dbg !3233
  call void @llvm.dbg.value(metadata i64 %28, metadata !3189, metadata !DIExpression()) #26, !dbg !3233
  %29 = icmp eq i64 %28, 0, !dbg !3246
  br i1 %29, label %30, label %31, !dbg !3235

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #26, !dbg !3247
  br label %38, !dbg !3248

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #26, !dbg !3249
  call void @llvm.dbg.value(metadata i8* %33, metadata !3184, metadata !DIExpression()) #26, !dbg !3233
  %34 = icmp eq i8* %33, null, !dbg !3250
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !3251
  br i1 %36, label %37, label %38, !dbg !3251

37:                                               ; preds = %31
  tail call void @xalloc_die() #28, !dbg !3252
  unreachable, !dbg !3252

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3233
  ret i8* %39, !dbg !3253
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #23 !dbg !3254 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3256, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i64 %0, metadata !3151, metadata !DIExpression()) #26, !dbg !3258
  %2 = tail call noalias i8* @malloc(i64 %0) #26, !dbg !3260
  call void @llvm.dbg.value(metadata i8* %2, metadata !3156, metadata !DIExpression()) #26, !dbg !3258
  %3 = icmp eq i8* %2, null, !dbg !3261
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3262
  br i1 %5, label %6, label %7, !dbg !3262

6:                                                ; preds = %1
  tail call void @xalloc_die() #28, !dbg !3263
  unreachable, !dbg !3263

7:                                                ; preds = %1
  ret i8* %2, !dbg !3264
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3265 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3269, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i64* %1, metadata !3270, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i8* %0, metadata !242, metadata !DIExpression()) #26, !dbg !3272
  call void @llvm.dbg.value(metadata i64* %1, metadata !243, metadata !DIExpression()) #26, !dbg !3272
  call void @llvm.dbg.value(metadata i64 1, metadata !244, metadata !DIExpression()) #26, !dbg !3272
  %3 = load i64, i64* %1, align 8, !dbg !3274, !tbaa !2424
  call void @llvm.dbg.value(metadata i64 %3, metadata !245, metadata !DIExpression()) #26, !dbg !3272
  %4 = icmp eq i8* %0, null, !dbg !3275
  br i1 %4, label %5, label %10, !dbg !3276

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3277
  br i1 %6, label %17, label %7, !dbg !3278

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !245, metadata !DIExpression()) #26, !dbg !3272
  %8 = icmp slt i64 %3, 0, !dbg !3279
  br i1 %8, label %9, label %17, !dbg !3280

9:                                                ; preds = %7
  tail call void @xalloc_die() #28, !dbg !3281
  unreachable, !dbg !3281

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !3282
  br i1 %11, label %13, label %12, !dbg !3283

12:                                               ; preds = %10
  tail call void @xalloc_die() #28, !dbg !3284
  unreachable, !dbg !3284

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !3285
  %15 = add nuw nsw i64 %3, 1, !dbg !3286
  %16 = add nuw nsw i64 %15, %14, !dbg !3287
  call void @llvm.dbg.value(metadata i64 %16, metadata !245, metadata !DIExpression()) #26, !dbg !3272
  call void @llvm.dbg.value(metadata i8* %0, metadata !3184, metadata !DIExpression()) #26, !dbg !3288
  call void @llvm.dbg.value(metadata i64 %16, metadata !3189, metadata !DIExpression()) #26, !dbg !3288
  br label %17, !dbg !3290

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !3291
  store i64 %18, i64* %1, align 8, !dbg !3291, !tbaa !2424
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #26, !dbg !3292
  call void @llvm.dbg.value(metadata i8* %19, metadata !3184, metadata !DIExpression()) #26, !dbg !3288
  %20 = icmp eq i8* %19, null, !dbg !3293
  br i1 %20, label %21, label %22, !dbg !3294

21:                                               ; preds = %17
  tail call void @xalloc_die() #28, !dbg !3295
  unreachable, !dbg !3295

22:                                               ; preds = %17
  ret i8* %19, !dbg !3296
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3297 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3299, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.value(metadata i64 %0, metadata !3301, metadata !DIExpression()) #26, !dbg !3306
  call void @llvm.dbg.value(metadata i64 1, metadata !3304, metadata !DIExpression()) #26, !dbg !3306
  %2 = icmp slt i64 %0, 0, !dbg !3308
  br i1 %2, label %6, label %3, !dbg !3310

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #26, !dbg !3311
  call void @llvm.dbg.value(metadata i8* %4, metadata !3305, metadata !DIExpression()) #26, !dbg !3306
  %5 = icmp eq i8* %4, null, !dbg !3312
  br i1 %5, label %6, label %7, !dbg !3313

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #28, !dbg !3314
  unreachable, !dbg !3314

7:                                                ; preds = %3
  ret i8* %4, !dbg !3315
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3302 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3301, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.value(metadata i64 %1, metadata !3304, metadata !DIExpression()), !dbg !3316
  %3 = udiv i64 9223372036854775807, %1, !dbg !3317
  %4 = icmp ult i64 %3, %0, !dbg !3317
  br i1 %4, label %8, label %5, !dbg !3318

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #26, !dbg !3319
  call void @llvm.dbg.value(metadata i8* %6, metadata !3305, metadata !DIExpression()), !dbg !3316
  %7 = icmp eq i8* %6, null, !dbg !3320
  br i1 %7, label %8, label %9, !dbg !3321

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #28, !dbg !3322
  unreachable, !dbg !3322

9:                                                ; preds = %5
  ret i8* %6, !dbg !3323
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3324 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3328, metadata !DIExpression()), !dbg !3330
  call void @llvm.dbg.value(metadata i64 %1, metadata !3329, metadata !DIExpression()), !dbg !3330
  call void @llvm.dbg.value(metadata i64 %1, metadata !3151, metadata !DIExpression()) #26, !dbg !3331
  %3 = tail call noalias i8* @malloc(i64 %1) #26, !dbg !3333
  call void @llvm.dbg.value(metadata i8* %3, metadata !3156, metadata !DIExpression()) #26, !dbg !3331
  %4 = icmp eq i8* %3, null, !dbg !3334
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !3335
  br i1 %6, label %7, label %8, !dbg !3335

7:                                                ; preds = %2
  tail call void @xalloc_die() #28, !dbg !3336
  unreachable, !dbg !3336

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3337, metadata !DIExpression()) #26, !dbg !3346
  call void @llvm.dbg.value(metadata i8* %0, metadata !3344, metadata !DIExpression()) #26, !dbg !3346
  call void @llvm.dbg.value(metadata i64 %1, metadata !3345, metadata !DIExpression()) #26, !dbg !3346
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #26, !dbg !3348
  ret i8* %3, !dbg !3349
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3350 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3352, metadata !DIExpression()), !dbg !3353
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #27, !dbg !3354
  %3 = add i64 %2, 1, !dbg !3355
  call void @llvm.dbg.value(metadata i8* %0, metadata !3328, metadata !DIExpression()) #26, !dbg !3356
  call void @llvm.dbg.value(metadata i64 %3, metadata !3329, metadata !DIExpression()) #26, !dbg !3356
  call void @llvm.dbg.value(metadata i64 %3, metadata !3151, metadata !DIExpression()) #26, !dbg !3358
  %4 = tail call noalias i8* @malloc(i64 %3) #26, !dbg !3360
  call void @llvm.dbg.value(metadata i8* %4, metadata !3156, metadata !DIExpression()) #26, !dbg !3358
  %5 = icmp eq i8* %4, null, !dbg !3361
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !3362
  br i1 %7, label %8, label %9, !dbg !3362

8:                                                ; preds = %1
  tail call void @xalloc_die() #28, !dbg !3363
  unreachable, !dbg !3363

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3337, metadata !DIExpression()) #26, !dbg !3364
  call void @llvm.dbg.value(metadata i8* %0, metadata !3344, metadata !DIExpression()) #26, !dbg !3364
  call void @llvm.dbg.value(metadata i64 %3, metadata !3345, metadata !DIExpression()) #26, !dbg !3364
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #26, !dbg !3366
  ret i8* %4, !dbg !3367
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3368 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3369, !tbaa !849
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.139, i64 0, i64 0), i32 5) #26, !dbg !3370
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.140, i64 0, i64 0), i8* %2) #26, !dbg !3371
  tail call void @abort() #28, !dbg !3372
  unreachable, !dbg !3372
}

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #25 !dbg !3373 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3375, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %1, metadata !3376, metadata !DIExpression()), !dbg !3381
  %3 = icmp eq i64 %0, 0, !dbg !3382
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !3383
  br i1 %5, label %11, label %6, !dbg !3383

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3378, metadata !DIExpression()), !dbg !3384
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3385
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3385
  br i1 %8, label %9, label %11, !dbg !3387

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #30, !dbg !3388
  store i32 12, i32* %10, align 4, !dbg !3390, !tbaa !849
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3375, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %12, metadata !3376, metadata !DIExpression()), !dbg !3381
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #26, !dbg !3391
  call void @llvm.dbg.value(metadata i8* %14, metadata !3377, metadata !DIExpression()), !dbg !3381
  br label %15, !dbg !3392

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3381
  ret i8* %16, !dbg !3393
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #24

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3394 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3432, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata i32 0, metadata !3433, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata i32 0, metadata !3435, metadata !DIExpression()), !dbg !3436
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #26, !dbg !3437
  call void @llvm.dbg.value(metadata i32 %2, metadata !3434, metadata !DIExpression()), !dbg !3436
  %3 = icmp slt i32 %2, 0, !dbg !3438
  br i1 %3, label %4, label %6, !dbg !3440

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3441
  br label %24, !dbg !3442

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #26, !dbg !3443
  %8 = icmp eq i32 %7, 0, !dbg !3443
  br i1 %8, label %13, label %9, !dbg !3445

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #26, !dbg !3446
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #26, !dbg !3447
  %12 = icmp eq i64 %11, -1, !dbg !3448
  br i1 %12, label %16, label %13, !dbg !3449

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #26, !dbg !3450
  %15 = icmp eq i32 %14, 0, !dbg !3450
  br i1 %15, label %16, label %18, !dbg !3451

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3433, metadata !DIExpression()), !dbg !3436
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3452
  call void @llvm.dbg.value(metadata i32 %21, metadata !3435, metadata !DIExpression()), !dbg !3436
  br label %24, !dbg !3453

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #30, !dbg !3454
  %20 = load i32, i32* %19, align 4, !dbg !3454, !tbaa !849
  call void @llvm.dbg.value(metadata i32 %20, metadata !3433, metadata !DIExpression()), !dbg !3436
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3452
  call void @llvm.dbg.value(metadata i32 %21, metadata !3435, metadata !DIExpression()), !dbg !3436
  %22 = icmp eq i32 %20, 0, !dbg !3455
  br i1 %22, label %24, label %23, !dbg !3453

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3457, !tbaa !849
  call void @llvm.dbg.value(metadata i32 -1, metadata !3435, metadata !DIExpression()), !dbg !3436
  br label %24, !dbg !3459

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3436
  ret i32 %25, !dbg !3460
}

; Function Attrs: nofree nounwind
declare !dbg !3461 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3464 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fcntl(i32 %0, i32 %1, ...) local_unnamed_addr #8 !dbg !3467 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3471, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i32 %1, metadata !3472, metadata !DIExpression()), !dbg !3495
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !3496
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #26, !dbg !3496
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !3473, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.value(metadata i32 -1, metadata !3483, metadata !DIExpression()), !dbg !3495
  call void @llvm.va_start(i8* nonnull %4), !dbg !3498
  switch i32 %1, label %97 [
    i32 0, label %5
    i32 1030, label %24
    i32 1, label %76
    i32 3, label %76
    i32 1025, label %76
    i32 9, label %76
    i32 1032, label %76
    i32 1034, label %76
    i32 11, label %76
    i32 1033, label %78
    i32 1031, label %78
    i32 10, label %78
    i32 1026, label %78
    i32 2, label %78
    i32 4, label %78
    i32 1024, label %78
    i32 8, label %78
  ], !dbg !3499

5:                                                ; preds = %2
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !3500
  %7 = load i32, i32* %6, align 16, !dbg !3500
  %8 = icmp ult i32 %7, 41, !dbg !3500
  br i1 %8, label %9, label %15, !dbg !3500

9:                                                ; preds = %5
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !3500
  %11 = load i8*, i8** %10, align 16, !dbg !3500
  %12 = zext i32 %7 to i64, !dbg !3500
  %13 = getelementptr i8, i8* %11, i64 %12, !dbg !3500
  %14 = add nuw nsw i32 %7, 8, !dbg !3500
  store i32 %14, i32* %6, align 16, !dbg !3500
  br label %19, !dbg !3500

15:                                               ; preds = %5
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !3500
  %17 = load i8*, i8** %16, align 8, !dbg !3500
  %18 = getelementptr i8, i8* %17, i64 8, !dbg !3500
  store i8* %18, i8** %16, align 8, !dbg !3500
  br label %19, !dbg !3500

19:                                               ; preds = %15, %9
  %20 = phi i8* [ %13, %9 ], [ %17, %15 ]
  %21 = bitcast i8* %20 to i32*, !dbg !3500
  %22 = load i32, i32* %21, align 4, !dbg !3500
  call void @llvm.dbg.value(metadata i32 %22, metadata !3484, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i32 %0, metadata !3502, metadata !DIExpression()) #26, !dbg !3507
  call void @llvm.dbg.value(metadata i32 %22, metadata !3505, metadata !DIExpression()) #26, !dbg !3507
  %23 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 0, i32 %22) #26, !dbg !3509
  call void @llvm.dbg.value(metadata i32 %23, metadata !3506, metadata !DIExpression()) #26, !dbg !3507
  call void @llvm.dbg.value(metadata i32 %23, metadata !3483, metadata !DIExpression()), !dbg !3495
  br label %116

24:                                               ; preds = %2
  %25 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !3510
  %26 = load i32, i32* %25, align 16, !dbg !3510
  %27 = icmp ult i32 %26, 41, !dbg !3510
  br i1 %27, label %28, label %34, !dbg !3510

28:                                               ; preds = %24
  %29 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !3510
  %30 = load i8*, i8** %29, align 16, !dbg !3510
  %31 = zext i32 %26 to i64, !dbg !3510
  %32 = getelementptr i8, i8* %30, i64 %31, !dbg !3510
  %33 = add nuw nsw i32 %26, 8, !dbg !3510
  store i32 %33, i32* %25, align 16, !dbg !3510
  br label %38, !dbg !3510

34:                                               ; preds = %24
  %35 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !3510
  %36 = load i8*, i8** %35, align 8, !dbg !3510
  %37 = getelementptr i8, i8* %36, i64 8, !dbg !3510
  store i8* %37, i8** %35, align 8, !dbg !3510
  br label %38, !dbg !3510

38:                                               ; preds = %34, %28
  %39 = phi i8* [ %32, %28 ], [ %36, %34 ]
  %40 = bitcast i8* %39 to i32*, !dbg !3510
  %41 = load i32, i32* %40, align 4, !dbg !3510
  call void @llvm.dbg.value(metadata i32 %41, metadata !3487, metadata !DIExpression()), !dbg !3511
  call void @llvm.dbg.value(metadata i32 %0, metadata !209, metadata !DIExpression()) #26, !dbg !3512
  call void @llvm.dbg.value(metadata i32 %41, metadata !210, metadata !DIExpression()) #26, !dbg !3512
  %42 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !3514, !tbaa !849
  %43 = icmp sgt i32 %42, -1, !dbg !3516
  br i1 %43, label %44, label %56, !dbg !3517

44:                                               ; preds = %38
  %45 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %41) #26, !dbg !3518
  call void @llvm.dbg.value(metadata i32 %45, metadata !211, metadata !DIExpression()) #26, !dbg !3512
  %46 = icmp sgt i32 %45, -1, !dbg !3520
  br i1 %46, label %51, label %47, !dbg !3522

47:                                               ; preds = %44
  %48 = tail call i32* @__errno_location() #30, !dbg !3523
  %49 = load i32, i32* %48, align 4, !dbg !3523, !tbaa !849
  %50 = icmp eq i32 %49, 22, !dbg !3524
  br i1 %50, label %52, label %51, !dbg !3525

51:                                               ; preds = %47, %44
  store i32 1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !3526, !tbaa !849
  call void @llvm.dbg.value(metadata i32 %62, metadata !211, metadata !DIExpression()) #26, !dbg !3512
  br label %116, !dbg !3528

52:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 %0, metadata !3502, metadata !DIExpression()) #26, !dbg !3529
  call void @llvm.dbg.value(metadata i32 %41, metadata !3505, metadata !DIExpression()) #26, !dbg !3529
  %53 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 0, i32 %41) #26, !dbg !3532
  call void @llvm.dbg.value(metadata i32 %53, metadata !3506, metadata !DIExpression()) #26, !dbg !3529
  call void @llvm.dbg.value(metadata i32 %53, metadata !211, metadata !DIExpression()) #26, !dbg !3512
  %54 = icmp sgt i32 %53, -1, !dbg !3533
  br i1 %54, label %55, label %116, !dbg !3535

55:                                               ; preds = %52
  store i32 -1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !3536, !tbaa !849
  br label %60, !dbg !3537

56:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i32 %0, metadata !3502, metadata !DIExpression()) #26, !dbg !3538
  call void @llvm.dbg.value(metadata i32 %41, metadata !3505, metadata !DIExpression()) #26, !dbg !3538
  %57 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 0, i32 %41) #26, !dbg !3540
  call void @llvm.dbg.value(metadata i32 %57, metadata !3506, metadata !DIExpression()) #26, !dbg !3538
  call void @llvm.dbg.value(metadata i32 %57, metadata !211, metadata !DIExpression()) #26, !dbg !3512
  %58 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %59 = icmp eq i32 %58, -1
  br label %60

60:                                               ; preds = %56, %55
  %61 = phi i1 [ true, %55 ], [ %59, %56 ]
  %62 = phi i32 [ %53, %55 ], [ %57, %56 ], !dbg !3541
  call void @llvm.dbg.value(metadata i32 %62, metadata !211, metadata !DIExpression()) #26, !dbg !3512
  %63 = icmp sgt i32 %62, -1, !dbg !3542
  %64 = and i1 %61, %63, !dbg !3528
  br i1 %64, label %65, label %116, !dbg !3528

65:                                               ; preds = %60
  %66 = call i32 (i32, i32, ...) @fcntl(i32 %62, i32 1) #26, !dbg !3543
  call void @llvm.dbg.value(metadata i32 %66, metadata !212, metadata !DIExpression()) #26, !dbg !3544
  %67 = icmp slt i32 %66, 0, !dbg !3545
  br i1 %67, label %72, label %68, !dbg !3546

68:                                               ; preds = %65
  %69 = or i32 %66, 1, !dbg !3547
  %70 = call i32 (i32, i32, ...) @fcntl(i32 %62, i32 2, i32 %69) #26, !dbg !3548
  %71 = icmp eq i32 %70, -1, !dbg !3549
  br i1 %71, label %72, label %116, !dbg !3550

72:                                               ; preds = %68, %65
  %73 = tail call i32* @__errno_location() #30, !dbg !3551
  %74 = load i32, i32* %73, align 4, !dbg !3551, !tbaa !849
  call void @llvm.dbg.value(metadata i32 %74, metadata !215, metadata !DIExpression()) #26, !dbg !3552
  %75 = call i32 @close(i32 %62) #26, !dbg !3553
  store i32 %74, i32* %73, align 4, !dbg !3554, !tbaa !849
  call void @llvm.dbg.value(metadata i32 -1, metadata !211, metadata !DIExpression()) #26, !dbg !3512
  br label %116, !dbg !3555

76:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %77 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1) #26, !dbg !3556
  call void @llvm.dbg.value(metadata i32 %77, metadata !3483, metadata !DIExpression()), !dbg !3495
  br label %116, !dbg !3557

78:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %79 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !3558
  %80 = load i32, i32* %79, align 16, !dbg !3558
  %81 = icmp ult i32 %80, 41, !dbg !3558
  br i1 %81, label %82, label %88, !dbg !3558

82:                                               ; preds = %78
  %83 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !3558
  %84 = load i8*, i8** %83, align 16, !dbg !3558
  %85 = zext i32 %80 to i64, !dbg !3558
  %86 = getelementptr i8, i8* %84, i64 %85, !dbg !3558
  %87 = add nuw nsw i32 %80, 8, !dbg !3558
  store i32 %87, i32* %79, align 16, !dbg !3558
  br label %92, !dbg !3558

88:                                               ; preds = %78
  %89 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !3558
  %90 = load i8*, i8** %89, align 8, !dbg !3558
  %91 = getelementptr i8, i8* %90, i64 8, !dbg !3558
  store i8* %91, i8** %89, align 8, !dbg !3558
  br label %92, !dbg !3558

92:                                               ; preds = %88, %82
  %93 = phi i8* [ %86, %82 ], [ %90, %88 ]
  %94 = bitcast i8* %93 to i32*, !dbg !3558
  %95 = load i32, i32* %94, align 4, !dbg !3558
  call void @llvm.dbg.value(metadata i32 %95, metadata !3489, metadata !DIExpression()), !dbg !3559
  %96 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i32 %95) #26, !dbg !3560
  call void @llvm.dbg.value(metadata i32 %96, metadata !3483, metadata !DIExpression()), !dbg !3495
  br label %116, !dbg !3561

97:                                               ; preds = %2
  %98 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !3562
  %99 = load i32, i32* %98, align 16, !dbg !3562
  %100 = icmp ult i32 %99, 41, !dbg !3562
  br i1 %100, label %101, label %107, !dbg !3562

101:                                              ; preds = %97
  %102 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !3562
  %103 = load i8*, i8** %102, align 16, !dbg !3562
  %104 = zext i32 %99 to i64, !dbg !3562
  %105 = getelementptr i8, i8* %103, i64 %104, !dbg !3562
  %106 = add nuw nsw i32 %99, 8, !dbg !3562
  store i32 %106, i32* %98, align 16, !dbg !3562
  br label %111, !dbg !3562

107:                                              ; preds = %97
  %108 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !3562
  %109 = load i8*, i8** %108, align 8, !dbg !3562
  %110 = getelementptr i8, i8* %109, i64 8, !dbg !3562
  store i8* %110, i8** %108, align 8, !dbg !3562
  br label %111, !dbg !3562

111:                                              ; preds = %107, %101
  %112 = phi i8* [ %105, %101 ], [ %109, %107 ]
  %113 = bitcast i8* %112 to i8**, !dbg !3562
  %114 = load i8*, i8** %113, align 8, !dbg !3562
  call void @llvm.dbg.value(metadata i8* %114, metadata !3493, metadata !DIExpression()), !dbg !3563
  %115 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %114) #26, !dbg !3564
  call void @llvm.dbg.value(metadata i32 %115, metadata !3483, metadata !DIExpression()), !dbg !3495
  br label %116, !dbg !3565

116:                                              ; preds = %72, %68, %60, %52, %51, %76, %92, %111, %19
  %117 = phi i32 [ %115, %111 ], [ %96, %92 ], [ %77, %76 ], [ %23, %19 ], [ %62, %60 ], [ -1, %72 ], [ %62, %68 ], [ %53, %52 ], [ %45, %51 ], !dbg !3566
  call void @llvm.dbg.value(metadata i32 %117, metadata !3483, metadata !DIExpression()), !dbg !3495
  call void @llvm.va_end(i8* nonnull %4), !dbg !3567
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #26, !dbg !3568
  ret i32 %117, !dbg !3569
}

declare !dbg !3570 i32 @fcntl(i32, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3571 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3609, metadata !DIExpression()), !dbg !3610
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3611
  br i1 %2, label %6, label %3, !dbg !3613

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #26, !dbg !3614
  %5 = icmp eq i32 %4, 0, !dbg !3614
  br i1 %5, label %6, label %8, !dbg !3615

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3616
  br label %17, !dbg !3617

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3618, metadata !DIExpression()) #26, !dbg !3623
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3625
  %10 = load i32, i32* %9, align 8, !dbg !3625, !tbaa !3627
  %11 = and i32 %10, 256, !dbg !3628
  %12 = icmp eq i32 %11, 0, !dbg !3628
  br i1 %12, label %15, label %13, !dbg !3629

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #26, !dbg !3630
  br label %15, !dbg !3630

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3631
  br label %17, !dbg !3632

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3610
  ret i32 %18, !dbg !3633
}

; Function Attrs: nofree nounwind
declare !dbg !3634 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3637 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3675, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata i64 %1, metadata !3676, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata i32 %2, metadata !3677, metadata !DIExpression()), !dbg !3681
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3682
  %5 = load i8*, i8** %4, align 8, !dbg !3682, !tbaa !3683
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3684
  %7 = load i8*, i8** %6, align 8, !dbg !3684, !tbaa !3685
  %8 = icmp eq i8* %5, %7, !dbg !3686
  br i1 %8, label %9, label %28, !dbg !3687

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3688
  %11 = load i8*, i8** %10, align 8, !dbg !3688, !tbaa !1206
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3689
  %13 = load i8*, i8** %12, align 8, !dbg !3689, !tbaa !3690
  %14 = icmp eq i8* %11, %13, !dbg !3691
  br i1 %14, label %15, label %28, !dbg !3692

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3693
  %17 = load i8*, i8** %16, align 8, !dbg !3693, !tbaa !3694
  %18 = icmp eq i8* %17, null, !dbg !3695
  br i1 %18, label %19, label %28, !dbg !3696

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #26, !dbg !3697
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #26, !dbg !3698
  call void @llvm.dbg.value(metadata i64 %21, metadata !3678, metadata !DIExpression()), !dbg !3699
  %22 = icmp eq i64 %21, -1, !dbg !3700
  br i1 %22, label %30, label %23, !dbg !3702

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3703
  %25 = load i32, i32* %24, align 8, !dbg !3704, !tbaa !3627
  %26 = and i32 %25, -17, !dbg !3704
  store i32 %26, i32* %24, align 8, !dbg !3704, !tbaa !3627
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3705
  store i64 %21, i64* %27, align 8, !dbg !3706, !tbaa !3707
  br label %30, !dbg !3708

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3709
  br label %30, !dbg !3710

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3681
  ret i32 %31, !dbg !3711
}

; Function Attrs: nofree nounwind
declare !dbg !3712 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3715 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3731, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata i8* %1, metadata !3732, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata i64 %2, metadata !3733, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3734, metadata !DIExpression()), !dbg !3740
  %6 = bitcast i32* %5 to i8*, !dbg !3741
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #26, !dbg !3741
  %7 = icmp eq i32* %0, null, !dbg !3742
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3744
  call void @llvm.dbg.value(metadata i32* %8, metadata !3731, metadata !DIExpression()), !dbg !3740
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #26, !dbg !3745
  call void @llvm.dbg.value(metadata i64 %9, metadata !3735, metadata !DIExpression()), !dbg !3740
  %10 = icmp ugt i64 %9, -3, !dbg !3746
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !3747
  br i1 %12, label %13, label %18, !dbg !3747

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #26, !dbg !3748
  br i1 %14, label %18, label %15, !dbg !3749

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3750, !tbaa !830
  call void @llvm.dbg.value(metadata i8 %16, metadata !3737, metadata !DIExpression()), !dbg !3751
  %17 = zext i8 %16 to i32, !dbg !3752
  store i32 %17, i32* %8, align 4, !dbg !3753, !tbaa !849
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3740
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #26, !dbg !3754
  ret i64 %19, !dbg !3754
}

; Function Attrs: nounwind
declare !dbg !3755 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3759 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3797, metadata !DIExpression()), !dbg !3802
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #26, !dbg !3803
  call void @llvm.dbg.value(metadata i1 undef, metadata !3798, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3802
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3804, metadata !DIExpression()), !dbg !3807
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3809
  %4 = load i32, i32* %3, align 8, !dbg !3809, !tbaa !3627
  %5 = and i32 %4, 32, !dbg !3810
  %6 = icmp eq i32 %5, 0, !dbg !3810
  call void @llvm.dbg.value(metadata i1 %6, metadata !3800, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3802
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #26, !dbg !3811
  %8 = icmp eq i32 %7, 0, !dbg !3812
  call void @llvm.dbg.value(metadata i1 %8, metadata !3801, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3802
  br i1 %6, label %9, label %19, !dbg !3813

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3815
  call void @llvm.dbg.value(metadata i1 %10, metadata !3798, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3802
  %11 = or i1 %10, %8, !dbg !3816
  %12 = xor i1 %8, true, !dbg !3816
  %13 = sext i1 %12 to i32, !dbg !3816
  br i1 %11, label %22, label %14, !dbg !3816

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #30, !dbg !3817
  %16 = load i32, i32* %15, align 4, !dbg !3817, !tbaa !849
  %17 = icmp ne i32 %16, 9, !dbg !3818
  %18 = sext i1 %17 to i32, !dbg !3819
  br label %22, !dbg !3819

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3820

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #30, !dbg !3822
  store i32 0, i32* %21, align 4, !dbg !3824, !tbaa !849
  br label %22, !dbg !3822

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3802
  ret i32 %23, !dbg !3825
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3826 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3830, metadata !DIExpression()), !dbg !3835
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3836
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #26, !dbg !3836
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3831, metadata !DIExpression()), !dbg !3837
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #26, !dbg !3838
  %5 = icmp eq i32 %4, 0, !dbg !3838
  br i1 %5, label %6, label %13, !dbg !3840

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3841
  %8 = load i16, i16* %7, align 16, !dbg !3841
  %9 = icmp eq i16 %8, 67, !dbg !3841
  br i1 %9, label %13, label %10, !dbg !3842

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.157, i64 0, i64 0), i64 6), !dbg !3843
  %12 = icmp ne i32 %11, 0, !dbg !3844
  br label %13, !dbg !3842

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3835
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #26, !dbg !3845
  ret i1 %14, !dbg !3845
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3846 {
  %1 = tail call i8* @nl_langinfo(i32 14) #26, !dbg !3851
  call void @llvm.dbg.value(metadata i8* %1, metadata !3850, metadata !DIExpression()), !dbg !3852
  %2 = icmp eq i8* %1, null, !dbg !3853
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.160, i64 0, i64 0), i8* %1, !dbg !3855
  call void @llvm.dbg.value(metadata i8* %3, metadata !3850, metadata !DIExpression()), !dbg !3852
  %4 = load i8, i8* %3, align 1, !dbg !3856, !tbaa !830
  %5 = icmp eq i8 %4, 0, !dbg !3860
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.161, i64 0, i64 0), i8* %3, !dbg !3861
  call void @llvm.dbg.value(metadata i8* %6, metadata !3850, metadata !DIExpression()), !dbg !3852
  ret i8* %6, !dbg !3862
}

; Function Attrs: nounwind
declare !dbg !3863 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3866 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3870, metadata !DIExpression()), !dbg !3873
  call void @llvm.dbg.value(metadata i8* %1, metadata !3871, metadata !DIExpression()), !dbg !3873
  call void @llvm.dbg.value(metadata i64 %2, metadata !3872, metadata !DIExpression()), !dbg !3873
  call void @llvm.dbg.value(metadata i32 %0, metadata !3874, metadata !DIExpression()) #26, !dbg !3883
  call void @llvm.dbg.value(metadata i8* %1, metadata !3877, metadata !DIExpression()) #26, !dbg !3883
  call void @llvm.dbg.value(metadata i64 %2, metadata !3878, metadata !DIExpression()) #26, !dbg !3883
  call void @llvm.dbg.value(metadata i32 %0, metadata !3885, metadata !DIExpression()) #26, !dbg !3891
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #26, !dbg !3893
  call void @llvm.dbg.value(metadata i8* %4, metadata !3890, metadata !DIExpression()) #26, !dbg !3891
  call void @llvm.dbg.value(metadata i8* %4, metadata !3879, metadata !DIExpression()) #26, !dbg !3883
  %5 = icmp eq i8* %4, null, !dbg !3894
  br i1 %5, label %6, label %9, !dbg !3895

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3896
  br i1 %7, label %19, label %8, !dbg !3899

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3900, !tbaa !830
  br label %19, !dbg !3901

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #27, !dbg !3902
  call void @llvm.dbg.value(metadata i64 %10, metadata !3880, metadata !DIExpression()) #26, !dbg !3903
  %11 = icmp ult i64 %10, %2, !dbg !3904
  br i1 %11, label %12, label %14, !dbg !3906

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3907
  call void @llvm.dbg.value(metadata i8* %1, metadata !3909, metadata !DIExpression()) #26, !dbg !3914
  call void @llvm.dbg.value(metadata i8* %4, metadata !3912, metadata !DIExpression()) #26, !dbg !3914
  call void @llvm.dbg.value(metadata i64 %13, metadata !3913, metadata !DIExpression()) #26, !dbg !3914
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #26, !dbg !3916
  br label %19, !dbg !3917

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3918
  br i1 %15, label %19, label %16, !dbg !3921

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3922
  call void @llvm.dbg.value(metadata i8* %1, metadata !3909, metadata !DIExpression()) #26, !dbg !3924
  call void @llvm.dbg.value(metadata i8* %4, metadata !3912, metadata !DIExpression()) #26, !dbg !3924
  call void @llvm.dbg.value(metadata i64 %17, metadata !3913, metadata !DIExpression()) #26, !dbg !3924
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #26, !dbg !3926
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3927
  store i8 0, i8* %18, align 1, !dbg !3928, !tbaa !830
  br label %19, !dbg !3929

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3930
  ret i32 %20, !dbg !3931
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3932 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3934, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i32 %0, metadata !3885, metadata !DIExpression()) #26, !dbg !3936
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #26, !dbg !3938
  call void @llvm.dbg.value(metadata i8* %2, metadata !3890, metadata !DIExpression()) #26, !dbg !3936
  ret i8* %2, !dbg !3939
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
attributes #11 = { inaccessiblemem_or_argmemonly nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nofree norecurse nounwind sspstrong uwtable willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { noreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { nofree nounwind }
attributes #17 = { norecurse nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { nofree norecurse nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #21 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #22 = { nofree nosync nounwind willreturn }
attributes #23 = { inlinehint nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #24 = { inaccessiblememonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #25 = { nofree nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #26 = { nounwind }
attributes #27 = { nounwind readonly willreturn }
attributes #28 = { noreturn nounwind }
attributes #29 = { noreturn }
attributes #30 = { nounwind readnone willreturn }
attributes #31 = { cold }

!llvm.dbg.cu = !{!2, !90, !96, !108, !115, !218, !221, !121, !127, !223, !225, !194, !232, !249, !251, !253, !206, !255, !257, !259, !262, !264, !266, !655}
!llvm.ident = !{!657, !657, !657, !657, !657, !657, !657, !657, !657, !657, !657, !657, !657, !657, !657, !657, !657, !657, !657, !657, !657, !657, !657, !657}
!llvm.module.flags = !{!658, !659, !660, !661, !662}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1 = distinct !DIGlobalVariable(name: "append", scope: !2, file: !3, line: 43, type: !58, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !36, globals: !54, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/tee.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5, !13, !22}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "output_error", file: !3, line: 48, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10, !11, !12}
!8 = !DIEnumerator(name: "output_error_sigpipe", value: 0, isUnsigned: true)
!9 = !DIEnumerator(name: "output_error_warn", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "output_error_warn_nopipe", value: 2, isUnsigned: true)
!11 = !DIEnumerator(name: "output_error_exit", value: 3, isUnsigned: true)
!12 = !DIEnumerator(name: "output_error_exit_nopipe", value: 4, isUnsigned: true)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 45, baseType: !6, size: 32, elements: !15)
!14 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!15 = !{!16, !17, !18, !19, !20, !21}
!16 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2, isUnsigned: true)
!18 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5, isUnsigned: true)
!19 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4, isUnsigned: true)
!20 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3, isUnsigned: true)
!21 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1, isUnsigned: true)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !23, line: 32, baseType: !6, size: 32, elements: !24)
!23 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!24 = !{!25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35}
!25 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!26 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!27 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!28 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!29 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!30 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!31 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!32 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!33 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!34 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!35 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!36 = !{!37, !39, !41, !42, !48, !51, !53}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !43, line: 72, baseType: !44)
!43 = !DIFile(filename: "/usr/include/signal.h", directory: "")
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !47}
!47 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !49, line: 46, baseType: !50)
!49 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!50 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!53 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!54 = !{!55, !56, !59, !61, !75, !81}
!55 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "ignore_interrupts", scope: !2, file: !3, line: 46, type: !58, isLocal: true, isDefinition: true)
!58 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "output_error", scope: !2, file: !3, line: 57, type: !5, isLocal: true, isDefinition: true)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 59, type: !63, isLocal: true, isDefinition: true)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 1536, elements: !73)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !66, line: 50, size: 256, elements: !67)
!66 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!67 = !{!68, !69, !70, !72}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !65, file: !66, line: 52, baseType: !51, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !65, file: !66, line: 55, baseType: !47, size: 32, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !65, file: !66, line: 56, baseType: !71, size: 64, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !65, file: !66, line: 57, baseType: !47, size: 32, offset: 192)
!73 = !{!74}
!74 = !DISubrange(count: 6)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(name: "output_error_types", scope: !2, file: !3, line: 73, type: !77, isLocal: true, isDefinition: true)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 128, elements: !79)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!79 = !{!80}
!80 = !DISubrange(count: 4)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(name: "output_error_args", scope: !2, file: !3, line: 69, type: !83, isLocal: true, isDefinition: true)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 320, elements: !85)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!85 = !{!86}
!86 = !DISubrange(count: 5)
!87 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(name: "Version", scope: !90, file: !91, line: 2, type: !51, isLocal: false, isDefinition: true)
!90 = distinct !DICompileUnit(language: DW_LANG_C99, file: !91, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !92, globals: !93, splitDebugInlining: false, nameTableKind: None)
!91 = !DIFile(filename: "src/version.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!92 = !{}
!93 = !{!88}
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(name: "argmatch_die", scope: !96, file: !97, line: 67, type: !101, isLocal: false, isDefinition: true)
!96 = distinct !DICompileUnit(language: DW_LANG_C99, file: !97, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !98, retainedTypes: !99, globals: !100, splitDebugInlining: false, nameTableKind: None)
!97 = !DIFile(filename: "lib/argmatch.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!98 = !{!22}
!99 = !{!41, !51, !53}
!100 = !{!94}
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "argmatch_exit_fn", file: !102, line: 61, baseType: !103)
!102 = !DIFile(filename: "./lib/argmatch.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DISubroutineType(types: !105)
!105 = !{null}
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(name: "file_name", scope: !108, file: !109, line: 46, type: !51, isLocal: true, isDefinition: true)
!108 = distinct !DICompileUnit(language: DW_LANG_C99, file: !109, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !92, globals: !110, splitDebugInlining: false, nameTableKind: None)
!109 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!110 = !{!106, !111}
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !108, file: !109, line: 56, type: !58, isLocal: true, isDefinition: true)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(name: "exit_failure", scope: !115, file: !116, line: 24, type: !118, isLocal: false, isDefinition: true)
!115 = distinct !DICompileUnit(language: DW_LANG_C99, file: !116, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !92, globals: !117, splitDebugInlining: false, nameTableKind: None)
!116 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!117 = !{!113}
!118 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !47)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(name: "program_name", scope: !121, file: !122, line: 33, type: !51, isLocal: false, isDefinition: true)
!121 = distinct !DICompileUnit(language: DW_LANG_C99, file: !122, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !92, retainedTypes: !123, globals: !124, splitDebugInlining: false, nameTableKind: None)
!122 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!123 = !{!41, !39}
!124 = !{!119}
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !127, file: !128, line: 85, type: !189, isLocal: false, isDefinition: true)
!127 = distinct !DICompileUnit(language: DW_LANG_C99, file: !128, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !129, retainedTypes: !150, globals: !152, splitDebugInlining: false, nameTableKind: None)
!128 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!129 = !{!22, !130, !135}
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !23, line: 242, baseType: !6, size: 32, elements: !131)
!131 = !{!132, !133, !134}
!132 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!133 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!134 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !136, line: 46, baseType: !6, size: 32, elements: !137)
!136 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!137 = !{!138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149}
!138 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!139 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!140 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!141 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!142 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!143 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!144 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!145 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!146 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!147 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!148 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!149 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!150 = !{!47, !151, !48, !39}
!151 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!152 = !{!125, !153, !159, !171, !173, !178, !185, !187}
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !127, file: !128, line: 101, type: !155, isLocal: false, isDefinition: true)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 320, elements: !157)
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!157 = !{!158}
!158 = !DISubrange(count: 10)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !127, file: !128, line: 1052, type: !161, isLocal: false, isDefinition: true)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !128, line: 65, size: 448, elements: !162)
!162 = !{!163, !164, !165, !169, !170}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !161, file: !128, line: 68, baseType: !22, size: 32)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !161, file: !128, line: 71, baseType: !47, size: 32, offset: 32)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !161, file: !128, line: 75, baseType: !166, size: 256, offset: 64)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 8)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !161, file: !128, line: 78, baseType: !51, size: 64, offset: 320)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !161, file: !128, line: 81, baseType: !51, size: 64, offset: 384)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !127, file: !128, line: 116, type: !161, isLocal: true, isDefinition: true)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(name: "slot0", scope: !127, file: !128, line: 842, type: !175, isLocal: true, isDefinition: true)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 2048, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 256)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(name: "slotvec", scope: !127, file: !128, line: 845, type: !180, isLocal: true, isDefinition: true)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !128, line: 834, size: 128, elements: !182)
!182 = !{!183, !184}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !181, file: !128, line: 836, baseType: !48, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !181, file: !128, line: 837, baseType: !39, size: 64, offset: 64)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(name: "nslots", scope: !127, file: !128, line: 843, type: !47, isLocal: true, isDefinition: true)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(name: "slotvec0", scope: !127, file: !128, line: 844, type: !181, isLocal: true, isDefinition: true)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 704, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 11)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !194, file: !195, line: 26, type: !197, isLocal: false, isDefinition: true)
!194 = distinct !DICompileUnit(language: DW_LANG_C99, file: !195, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !92, globals: !196, splitDebugInlining: false, nameTableKind: None)
!195 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!196 = !{!192}
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 376, elements: !198)
!198 = !{!199}
!199 = !DISubrange(count: 47)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !202, file: !203, line: 507, type: !47, isLocal: true, isDefinition: true)
!202 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !203, file: !203, line: 488, type: !204, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !208)
!203 = !DIFile(filename: "lib/fcntl.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!204 = !DISubroutineType(types: !205)
!205 = !{!47, !47, !47}
!206 = distinct !DICompileUnit(language: DW_LANG_C99, file: !203, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !92, globals: !207, splitDebugInlining: false, nameTableKind: None)
!207 = !{!200}
!208 = !{!209, !210, !211, !212, !215}
!209 = !DILocalVariable(name: "fd", arg: 1, scope: !202, file: !203, line: 488, type: !47)
!210 = !DILocalVariable(name: "target", arg: 2, scope: !202, file: !203, line: 488, type: !47)
!211 = !DILocalVariable(name: "result", scope: !202, file: !203, line: 490, type: !47)
!212 = !DILocalVariable(name: "flags", scope: !213, file: !203, line: 531, type: !47)
!213 = distinct !DILexicalBlock(scope: !214, file: !203, line: 530, column: 5)
!214 = distinct !DILexicalBlock(scope: !202, file: !203, line: 529, column: 7)
!215 = !DILocalVariable(name: "saved_errno", scope: !216, file: !203, line: 534, type: !47)
!216 = distinct !DILexicalBlock(scope: !217, file: !203, line: 533, column: 9)
!217 = distinct !DILexicalBlock(scope: !213, file: !203, line: 532, column: 11)
!218 = distinct !DICompileUnit(language: DW_LANG_C99, file: !219, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !220, splitDebugInlining: false, nameTableKind: None)
!219 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!220 = !{!13}
!221 = distinct !DICompileUnit(language: DW_LANG_C99, file: !222, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !92, splitDebugInlining: false, nameTableKind: None)
!222 = !DIFile(filename: "lib/fopen-safer.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!223 = distinct !DICompileUnit(language: DW_LANG_C99, file: !224, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !92, splitDebugInlining: false, nameTableKind: None)
!224 = !DIFile(filename: "lib/dup-safer.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!225 = distinct !DICompileUnit(language: DW_LANG_C99, file: !226, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !227, retainedTypes: !231, splitDebugInlining: false, nameTableKind: None)
!226 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!227 = !{!228}
!228 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !226, line: 40, baseType: !6, size: 32, elements: !229)
!229 = !{!230}
!230 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!231 = !{!41}
!232 = distinct !DICompileUnit(language: DW_LANG_C99, file: !233, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !234, retainedTypes: !248, splitDebugInlining: false, nameTableKind: None)
!233 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!234 = !{!235}
!235 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !237, file: !236, line: 186, baseType: !6, size: 32, elements: !246)
!236 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!237 = distinct !DISubprogram(name: "x2nrealloc", scope: !236, file: !236, line: 174, type: !238, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !232, retainedNodes: !241)
!238 = !DISubroutineType(types: !239)
!239 = !{!41, !41, !240, !48}
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!241 = !{!242, !243, !244, !245}
!242 = !DILocalVariable(name: "p", arg: 1, scope: !237, file: !236, line: 174, type: !41)
!243 = !DILocalVariable(name: "pn", arg: 2, scope: !237, file: !236, line: 174, type: !240)
!244 = !DILocalVariable(name: "s", arg: 3, scope: !237, file: !236, line: 174, type: !48)
!245 = !DILocalVariable(name: "n", scope: !237, file: !236, line: 176, type: !48)
!246 = !{!247}
!247 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!248 = !{!48, !39, !41}
!249 = distinct !DICompileUnit(language: DW_LANG_C99, file: !250, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !92, splitDebugInlining: false, nameTableKind: None)
!250 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!251 = distinct !DICompileUnit(language: DW_LANG_C99, file: !252, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !92, retainedTypes: !231, splitDebugInlining: false, nameTableKind: None)
!252 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!253 = distinct !DICompileUnit(language: DW_LANG_C99, file: !254, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !92, splitDebugInlining: false, nameTableKind: None)
!254 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!255 = distinct !DICompileUnit(language: DW_LANG_C99, file: !256, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !92, retainedTypes: !231, splitDebugInlining: false, nameTableKind: None)
!256 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!257 = distinct !DICompileUnit(language: DW_LANG_C99, file: !258, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !92, retainedTypes: !231, splitDebugInlining: false, nameTableKind: None)
!258 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!259 = distinct !DICompileUnit(language: DW_LANG_C99, file: !260, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !92, retainedTypes: !261, splitDebugInlining: false, nameTableKind: None)
!260 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!261 = !{!48}
!262 = distinct !DICompileUnit(language: DW_LANG_C99, file: !263, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !92, splitDebugInlining: false, nameTableKind: None)
!263 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!264 = distinct !DICompileUnit(language: DW_LANG_C99, file: !265, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !92, splitDebugInlining: false, nameTableKind: None)
!265 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!266 = distinct !DICompileUnit(language: DW_LANG_C99, file: !267, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !268, retainedTypes: !231, splitDebugInlining: false, nameTableKind: None)
!267 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!268 = !{!269}
!269 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !270, line: 41, baseType: !6, size: 32, elements: !271)
!270 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!271 = !{!272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654}
!272 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!273 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!274 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!275 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!276 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!277 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!278 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!279 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!280 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!281 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!282 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!283 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!284 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!285 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!286 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!287 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!288 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!289 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!290 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!291 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!292 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!293 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!294 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!295 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!296 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!297 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!298 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!299 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!300 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!301 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!302 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!303 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!304 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!305 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!306 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!307 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!308 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!309 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!310 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!311 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!312 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!313 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!314 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!315 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!316 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!317 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!318 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!319 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!320 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!321 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!380 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!383 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!384 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!385 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!386 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!387 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!388 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!389 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!390 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!391 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!392 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!393 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!394 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!467 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!540 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!541 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!542 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!543 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!544 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!545 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!546 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!547 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!548 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!549 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!550 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!551 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!552 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!553 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!554 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!556 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!557 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!558 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!559 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!560 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!561 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!587 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!588 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!589 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!590 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!591 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!596 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!597 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!598 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!599 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!655 = distinct !DICompileUnit(language: DW_LANG_C99, file: !656, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !92, retainedTypes: !231, splitDebugInlining: false, nameTableKind: None)
!656 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!657 = !{!"clang version 12.0.1"}
!658 = !{i32 7, !"Dwarf Version", i32 4}
!659 = !{i32 2, !"Debug Info Version", i32 3}
!660 = !{i32 1, !"wchar_size", i32 4}
!661 = !{i32 7, !"PIC Level", i32 2}
!662 = !{i32 7, !"PIE Level", i32 2}
!663 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 81, type: !45, scopeLine: 82, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !664)
!664 = !{!665}
!665 = !DILocalVariable(name: "status", arg: 1, scope: !663, file: !3, line: 81, type: !47)
!666 = !DILocation(line: 0, scope: !663)
!667 = !DILocation(line: 83, column: 14, scope: !668)
!668 = distinct !DILexicalBlock(scope: !663, file: !3, line: 83, column: 7)
!669 = !DILocation(line: 83, column: 7, scope: !663)
!670 = !DILocation(line: 84, column: 5, scope: !671)
!671 = distinct !DILexicalBlock(scope: !668, file: !3, line: 84, column: 5)
!672 = !{!673, !673, i64 0}
!673 = !{!"any pointer", !674, i64 0}
!674 = !{!"omnipotent char", !675, i64 0}
!675 = !{!"Simple C/C++ TBAA"}
!676 = !DILocation(line: 87, column: 7, scope: !677)
!677 = distinct !DILexicalBlock(scope: !668, file: !3, line: 86, column: 5)
!678 = !DILocation(line: 88, column: 7, scope: !677)
!679 = !DILocation(line: 94, column: 7, scope: !677)
!680 = !DILocation(line: 98, column: 7, scope: !677)
!681 = !DILocation(line: 99, column: 7, scope: !677)
!682 = !DILocation(line: 100, column: 7, scope: !677)
!683 = !DILocalVariable(name: "program", arg: 1, scope: !684, file: !685, line: 634, type: !51)
!684 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !685, file: !685, line: 634, type: !686, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !688)
!685 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!686 = !DISubroutineType(types: !687)
!687 = !{null, !51}
!688 = !{!683, !689, !698, !699, !701}
!689 = !DILocalVariable(name: "infomap", scope: !684, file: !685, line: 636, type: !690)
!690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !691, size: 896, elements: !696)
!691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !692)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !684, file: !685, line: 636, size: 128, elements: !693)
!693 = !{!694, !695}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !692, file: !685, line: 636, baseType: !51, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !692, file: !685, line: 636, baseType: !51, size: 64, offset: 64)
!696 = !{!697}
!697 = !DISubrange(count: 7)
!698 = !DILocalVariable(name: "node", scope: !684, file: !685, line: 646, type: !51)
!699 = !DILocalVariable(name: "map_prog", scope: !684, file: !685, line: 647, type: !700)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!701 = !DILocalVariable(name: "lc_messages", scope: !684, file: !685, line: 659, type: !51)
!702 = !DILocation(line: 0, scope: !684, inlinedAt: !703)
!703 = distinct !DILocation(line: 112, column: 7, scope: !677)
!704 = !DILocation(line: 636, column: 3, scope: !684, inlinedAt: !703)
!705 = !DILocation(line: 636, column: 67, scope: !684, inlinedAt: !703)
!706 = !DILocation(line: 647, column: 36, scope: !684, inlinedAt: !703)
!707 = !DILocation(line: 649, column: 3, scope: !684, inlinedAt: !703)
!708 = !DILocation(line: 649, column: 33, scope: !684, inlinedAt: !703)
!709 = !DILocation(line: 650, column: 13, scope: !684, inlinedAt: !703)
!710 = !DILocation(line: 649, column: 20, scope: !684, inlinedAt: !703)
!711 = !{!712, !673, i64 0}
!712 = !{!"infomap", !673, i64 0, !673, i64 8}
!713 = !DILocation(line: 649, column: 10, scope: !684, inlinedAt: !703)
!714 = !DILocation(line: 649, column: 28, scope: !684, inlinedAt: !703)
!715 = distinct !{!715, !707, !709, !716}
!716 = !{!"llvm.loop.mustprogress"}
!717 = !DILocation(line: 652, column: 17, scope: !718, inlinedAt: !703)
!718 = distinct !DILexicalBlock(scope: !684, file: !685, line: 652, column: 7)
!719 = !{!712, !673, i64 8}
!720 = !DILocation(line: 652, column: 7, scope: !718, inlinedAt: !703)
!721 = !DILocation(line: 652, column: 7, scope: !684, inlinedAt: !703)
!722 = !DILocation(line: 655, column: 3, scope: !684, inlinedAt: !703)
!723 = !DILocation(line: 659, column: 29, scope: !684, inlinedAt: !703)
!724 = !DILocation(line: 660, column: 7, scope: !725, inlinedAt: !703)
!725 = distinct !DILexicalBlock(scope: !684, file: !685, line: 660, column: 7)
!726 = !DILocation(line: 660, column: 19, scope: !725, inlinedAt: !703)
!727 = !DILocation(line: 660, column: 22, scope: !725, inlinedAt: !703)
!728 = !DILocation(line: 660, column: 7, scope: !684, inlinedAt: !703)
!729 = !DILocation(line: 666, column: 7, scope: !730, inlinedAt: !703)
!730 = distinct !DILexicalBlock(scope: !725, file: !685, line: 661, column: 5)
!731 = !DILocation(line: 668, column: 5, scope: !730, inlinedAt: !703)
!732 = !DILocation(line: 669, column: 3, scope: !684, inlinedAt: !703)
!733 = !DILocation(line: 671, column: 3, scope: !684, inlinedAt: !703)
!734 = !DILocation(line: 673, column: 1, scope: !684, inlinedAt: !703)
!735 = !DILocation(line: 114, column: 3, scope: !663)
!736 = !DISubprogram(name: "dcgettext", scope: !737, file: !737, line: 51, type: !738, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !92)
!737 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!738 = !DISubroutineType(types: !739)
!739 = !{!39, !51, !51, !47}
!740 = !DISubprogram(name: "fputs_unlocked", scope: !741, file: !741, line: 667, type: !742, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !92)
!741 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!742 = !DISubroutineType(types: !743)
!743 = !{!47, !51, !744}
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !746, line: 49, size: 1728, elements: !747)
!746 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!747 = !{!748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !763, !764, !765, !766, !770, !771, !773, !777, !780, !782, !785, !788, !789, !790, !791, !792}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !745, file: !746, line: 51, baseType: !47, size: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !745, file: !746, line: 54, baseType: !39, size: 64, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !745, file: !746, line: 55, baseType: !39, size: 64, offset: 128)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !745, file: !746, line: 56, baseType: !39, size: 64, offset: 192)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !745, file: !746, line: 57, baseType: !39, size: 64, offset: 256)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !745, file: !746, line: 58, baseType: !39, size: 64, offset: 320)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !745, file: !746, line: 59, baseType: !39, size: 64, offset: 384)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !745, file: !746, line: 60, baseType: !39, size: 64, offset: 448)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !745, file: !746, line: 61, baseType: !39, size: 64, offset: 512)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !745, file: !746, line: 64, baseType: !39, size: 64, offset: 576)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !745, file: !746, line: 65, baseType: !39, size: 64, offset: 640)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !745, file: !746, line: 66, baseType: !39, size: 64, offset: 704)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !745, file: !746, line: 68, baseType: !761, size: 64, offset: 768)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !746, line: 36, flags: DIFlagFwdDecl)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !745, file: !746, line: 70, baseType: !744, size: 64, offset: 832)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !745, file: !746, line: 72, baseType: !47, size: 32, offset: 896)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !745, file: !746, line: 73, baseType: !47, size: 32, offset: 928)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !745, file: !746, line: 74, baseType: !767, size: 64, offset: 960)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !768, line: 152, baseType: !769)
!768 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!769 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !745, file: !746, line: 77, baseType: !151, size: 16, offset: 1024)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !745, file: !746, line: 78, baseType: !772, size: 8, offset: 1040)
!772 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !745, file: !746, line: 79, baseType: !774, size: 8, offset: 1048)
!774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 8, elements: !775)
!775 = !{!776}
!776 = !DISubrange(count: 1)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !745, file: !746, line: 81, baseType: !778, size: 64, offset: 1088)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !746, line: 43, baseType: null)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !745, file: !746, line: 89, baseType: !781, size: 64, offset: 1152)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !768, line: 153, baseType: !769)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !745, file: !746, line: 91, baseType: !783, size: 64, offset: 1216)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !746, line: 37, flags: DIFlagFwdDecl)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !745, file: !746, line: 92, baseType: !786, size: 64, offset: 1280)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !746, line: 38, flags: DIFlagFwdDecl)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !745, file: !746, line: 93, baseType: !744, size: 64, offset: 1344)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !745, file: !746, line: 94, baseType: !41, size: 64, offset: 1408)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !745, file: !746, line: 95, baseType: !48, size: 64, offset: 1472)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !745, file: !746, line: 96, baseType: !47, size: 32, offset: 1536)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !745, file: !746, line: 98, baseType: !793, size: 160, offset: 1568)
!793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 160, elements: !794)
!794 = !{!795}
!795 = !DISubrange(count: 20)
!796 = !DISubprogram(name: "setlocale", scope: !797, file: !797, line: 122, type: !798, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !92)
!797 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!798 = !DISubroutineType(types: !799)
!799 = !{!39, !47, !51}
!800 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 118, type: !801, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !804)
!801 = !DISubroutineType(types: !802)
!802 = !{!47, !47, !803}
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!804 = !{!805, !806, !807, !808}
!805 = !DILocalVariable(name: "argc", arg: 1, scope: !800, file: !3, line: 118, type: !47)
!806 = !DILocalVariable(name: "argv", arg: 2, scope: !800, file: !3, line: 118, type: !803)
!807 = !DILocalVariable(name: "ok", scope: !800, file: !3, line: 120, type: !58)
!808 = !DILocalVariable(name: "optc", scope: !800, file: !3, line: 121, type: !47)
!809 = !DILocation(line: 0, scope: !800)
!810 = !DILocation(line: 124, column: 21, scope: !800)
!811 = !DILocation(line: 124, column: 3, scope: !800)
!812 = !DILocation(line: 125, column: 3, scope: !800)
!813 = !DILocation(line: 126, column: 3, scope: !800)
!814 = !DILocation(line: 127, column: 3, scope: !800)
!815 = !DILocation(line: 129, column: 3, scope: !800)
!816 = !DILocation(line: 131, column: 10, scope: !800)
!817 = !DILocation(line: 132, column: 21, scope: !800)
!818 = !DILocation(line: 134, column: 3, scope: !800)
!819 = !DILocation(line: 134, column: 18, scope: !800)
!820 = !DILocation(line: 139, column: 18, scope: !821)
!821 = distinct !DILexicalBlock(scope: !822, file: !3, line: 137, column: 9)
!822 = distinct !DILexicalBlock(scope: !800, file: !3, line: 135, column: 5)
!823 = !DILocation(line: 140, column: 11, scope: !821)
!824 = !DILocation(line: 143, column: 29, scope: !821)
!825 = !DILocation(line: 144, column: 11, scope: !821)
!826 = !DILocation(line: 147, column: 15, scope: !827)
!827 = distinct !DILexicalBlock(scope: !821, file: !3, line: 147, column: 15)
!828 = !DILocation(line: 147, column: 15, scope: !821)
!829 = !DILocation(line: 148, column: 28, scope: !827)
!830 = !{!674, !674, i64 0}
!831 = !DILocation(line: 148, column: 26, scope: !827)
!832 = !DILocation(line: 148, column: 13, scope: !827)
!833 = distinct !{!833, !818, !834, !716}
!834 = !DILocation(line: 161, column: 5, scope: !800)
!835 = !DILocation(line: 151, column: 26, scope: !827)
!836 = !DILocation(line: 154, column: 9, scope: !821)
!837 = !DILocation(line: 156, column: 9, scope: !821)
!838 = !DILocation(line: 159, column: 11, scope: !821)
!839 = !DILocation(line: 163, column: 7, scope: !840)
!840 = distinct !DILexicalBlock(scope: !800, file: !3, line: 163, column: 7)
!841 = !DILocation(line: 163, column: 7, scope: !800)
!842 = !DILocation(line: 164, column: 5, scope: !840)
!843 = !DILocation(line: 166, column: 7, scope: !844)
!844 = distinct !DILexicalBlock(scope: !800, file: !3, line: 166, column: 7)
!845 = !DILocation(line: 166, column: 20, scope: !844)
!846 = !DILocation(line: 166, column: 7, scope: !800)
!847 = !DILocation(line: 167, column: 5, scope: !844)
!848 = !DILocation(line: 172, column: 26, scope: !800)
!849 = !{!850, !850, i64 0}
!850 = !{!"int", !674, i64 0}
!851 = !DILocation(line: 172, column: 24, scope: !800)
!852 = !DILocalVariable(name: "nfiles", arg: 1, scope: !853, file: !3, line: 184, type: !47)
!853 = distinct !DISubprogram(name: "tee_files", scope: !3, file: !3, line: 184, type: !854, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !856)
!854 = !DISubroutineType(types: !855)
!855 = !{!58, !47, !803}
!856 = !{!852, !857, !858, !859, !864, !868, !872, !873, !874, !875, !881, !882, !883, !885}
!857 = !DILocalVariable(name: "files", arg: 2, scope: !853, file: !3, line: 184, type: !803)
!858 = !DILocalVariable(name: "n_outputs", scope: !853, file: !3, line: 186, type: !48)
!859 = !DILocalVariable(name: "descriptors", scope: !853, file: !3, line: 187, type: !860)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !863, line: 7, baseType: !745)
!863 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!864 = !DILocalVariable(name: "buffer", scope: !853, file: !3, line: 188, type: !865)
!865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 65536, elements: !866)
!866 = !{!867}
!867 = !DISubrange(count: 8192)
!868 = !DILocalVariable(name: "bytes_read", scope: !853, file: !3, line: 189, type: !869)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !870, line: 108, baseType: !871)
!870 = !DIFile(filename: "/usr/include/sys/types.h", directory: "")
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !768, line: 194, baseType: !769)
!872 = !DILocalVariable(name: "i", scope: !853, file: !3, line: 190, type: !47)
!873 = !DILocalVariable(name: "ok", scope: !853, file: !3, line: 191, type: !58)
!874 = !DILocalVariable(name: "mode_string", scope: !853, file: !3, line: 192, type: !51)
!875 = !DILocalVariable(name: "__ptr", scope: !876, file: !3, line: 241, type: !51)
!876 = distinct !DILexicalBlock(scope: !877, file: !3, line: 241, column: 16)
!877 = distinct !DILexicalBlock(scope: !878, file: !3, line: 240, column: 13)
!878 = distinct !DILexicalBlock(scope: !879, file: !3, line: 239, column: 7)
!879 = distinct !DILexicalBlock(scope: !880, file: !3, line: 239, column: 7)
!880 = distinct !DILexicalBlock(scope: !853, file: !3, line: 230, column: 5)
!881 = !DILocalVariable(name: "__stream", scope: !876, file: !3, line: 241, type: !861)
!882 = !DILocalVariable(name: "__cnt", scope: !876, file: !3, line: 241, type: !48)
!883 = !DILocalVariable(name: "w_errno", scope: !884, file: !3, line: 243, type: !47)
!884 = distinct !DILexicalBlock(scope: !877, file: !3, line: 242, column: 11)
!885 = !DILocalVariable(name: "fail", scope: !884, file: !3, line: 244, type: !58)
!886 = !DILocation(line: 0, scope: !853, inlinedAt: !887)
!887 = distinct !DILocation(line: 172, column: 8, scope: !800)
!888 = !DILocation(line: 188, column: 3, scope: !853, inlinedAt: !887)
!889 = !DILocation(line: 188, column: 8, scope: !853, inlinedAt: !887)
!890 = !DILocation(line: 195, column: 9, scope: !853, inlinedAt: !887)
!891 = !DILocation(line: 199, column: 12, scope: !853, inlinedAt: !887)
!892 = !DILocation(line: 199, column: 3, scope: !853, inlinedAt: !887)
!893 = !DILocalVariable(name: "n", arg: 1, scope: !894, file: !236, line: 99, type: !48)
!894 = distinct !DISubprogram(name: "xnmalloc", scope: !236, file: !236, line: 99, type: !895, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !897)
!895 = !DISubroutineType(types: !896)
!896 = !{!41, !48, !48}
!897 = !{!893, !898}
!898 = !DILocalVariable(name: "s", arg: 2, scope: !894, file: !236, line: 99, type: !48)
!899 = !DILocation(line: 0, scope: !894, inlinedAt: !900)
!900 = distinct !DILocation(line: 204, column: 17, scope: !853, inlinedAt: !887)
!901 = !DILocation(line: 101, column: 7, scope: !902, inlinedAt: !900)
!902 = distinct !DILexicalBlock(scope: !894, file: !236, line: 101, column: 7)
!903 = !DILocation(line: 101, column: 7, scope: !894, inlinedAt: !900)
!904 = !DILocation(line: 102, column: 5, scope: !902, inlinedAt: !900)
!905 = !DILocation(line: 172, column: 35, scope: !800)
!906 = !DILocation(line: 204, column: 34, scope: !853, inlinedAt: !887)
!907 = !DILocation(line: 204, column: 27, scope: !853, inlinedAt: !887)
!908 = !DILocation(line: 103, column: 21, scope: !894, inlinedAt: !900)
!909 = !DILocation(line: 103, column: 10, scope: !894, inlinedAt: !900)
!910 = !DILocation(line: 204, column: 17, scope: !853, inlinedAt: !887)
!911 = !DILocation(line: 205, column: 8, scope: !853, inlinedAt: !887)
!912 = !DILocation(line: 206, column: 20, scope: !853, inlinedAt: !887)
!913 = !DILocation(line: 206, column: 18, scope: !853, inlinedAt: !887)
!914 = !DILocation(line: 207, column: 24, scope: !853, inlinedAt: !887)
!915 = !DILocation(line: 207, column: 12, scope: !853, inlinedAt: !887)
!916 = !DILocation(line: 208, column: 12, scope: !853, inlinedAt: !887)
!917 = !DILocation(line: 208, column: 3, scope: !853, inlinedAt: !887)
!918 = !DILocation(line: 211, column: 17, scope: !919, inlinedAt: !887)
!919 = distinct !DILexicalBlock(scope: !920, file: !3, line: 211, column: 3)
!920 = distinct !DILexicalBlock(scope: !853, file: !3, line: 211, column: 3)
!921 = !DILocation(line: 211, column: 3, scope: !920, inlinedAt: !887)
!922 = !DILocation(line: 229, column: 3, scope: !853, inlinedAt: !887)
!923 = !DILocation(line: 214, column: 31, scope: !924, inlinedAt: !887)
!924 = distinct !DILexicalBlock(scope: !919, file: !3, line: 212, column: 5)
!925 = !DILocation(line: 214, column: 24, scope: !924, inlinedAt: !887)
!926 = !DILocation(line: 214, column: 7, scope: !924, inlinedAt: !887)
!927 = !DILocation(line: 214, column: 22, scope: !924, inlinedAt: !887)
!928 = !DILocation(line: 215, column: 26, scope: !929, inlinedAt: !887)
!929 = distinct !DILexicalBlock(scope: !924, file: !3, line: 215, column: 11)
!930 = !DILocation(line: 215, column: 11, scope: !924, inlinedAt: !887)
!931 = !DILocation(line: 217, column: 18, scope: !932, inlinedAt: !887)
!932 = distinct !DILexicalBlock(scope: !929, file: !3, line: 216, column: 9)
!933 = !DILocation(line: 218, column: 18, scope: !932, inlinedAt: !887)
!934 = !DILocation(line: 219, column: 18, scope: !932, inlinedAt: !887)
!935 = !DILocation(line: 219, column: 31, scope: !932, inlinedAt: !887)
!936 = !DILocation(line: 217, column: 11, scope: !932, inlinedAt: !887)
!937 = !DILocation(line: 221, column: 9, scope: !932, inlinedAt: !887)
!938 = !DILocation(line: 224, column: 11, scope: !939, inlinedAt: !887)
!939 = distinct !DILexicalBlock(scope: !929, file: !3, line: 223, column: 9)
!940 = !DILocation(line: 225, column: 20, scope: !939, inlinedAt: !887)
!941 = !DILocation(line: 211, column: 29, scope: !919, inlinedAt: !887)
!942 = distinct !{!942, !921, !943, !716}
!943 = !DILocation(line: 227, column: 5, scope: !920, inlinedAt: !887)
!944 = !DILocation(line: 231, column: 20, scope: !880, inlinedAt: !887)
!945 = !DILocation(line: 232, column: 22, scope: !946, inlinedAt: !887)
!946 = distinct !DILexicalBlock(scope: !880, file: !3, line: 232, column: 11)
!947 = !DILocation(line: 232, column: 26, scope: !946, inlinedAt: !887)
!948 = !DILocation(line: 232, column: 29, scope: !946, inlinedAt: !887)
!949 = !DILocation(line: 232, column: 35, scope: !946, inlinedAt: !887)
!950 = !DILocation(line: 232, column: 11, scope: !880, inlinedAt: !887)
!951 = distinct !{!951, !922, !952, !716}
!952 = !DILocation(line: 259, column: 5, scope: !853, inlinedAt: !887)
!953 = !DILocation(line: 234, column: 22, scope: !954, inlinedAt: !887)
!954 = distinct !DILexicalBlock(scope: !880, file: !3, line: 234, column: 11)
!955 = !DILocation(line: 234, column: 11, scope: !880, inlinedAt: !887)
!956 = !DILocation(line: 239, column: 7, scope: !879, inlinedAt: !887)
!957 = distinct !{!957, !922, !952, !716}
!958 = !DILocation(line: 240, column: 13, scope: !877, inlinedAt: !887)
!959 = !DILocation(line: 241, column: 13, scope: !877, inlinedAt: !887)
!960 = !DILocation(line: 241, column: 16, scope: !877, inlinedAt: !887)
!961 = !DILocation(line: 241, column: 63, scope: !877, inlinedAt: !887)
!962 = !DILocation(line: 240, column: 13, scope: !878, inlinedAt: !887)
!963 = !DILocation(line: 243, column: 27, scope: !884, inlinedAt: !887)
!964 = !DILocation(line: 0, scope: !884, inlinedAt: !887)
!965 = !DILocation(line: 244, column: 31, scope: !884, inlinedAt: !887)
!966 = !DILocation(line: 244, column: 40, scope: !884, inlinedAt: !887)
!967 = !DILocation(line: 246, column: 35, scope: !968, inlinedAt: !887)
!968 = distinct !DILexicalBlock(scope: !884, file: !3, line: 246, column: 17)
!969 = !DILocation(line: 246, column: 32, scope: !968, inlinedAt: !887)
!970 = !DILocation(line: 246, column: 17, scope: !884, inlinedAt: !887)
!971 = !DILocation(line: 247, column: 15, scope: !968, inlinedAt: !887)
!972 = !DILocation(line: 248, column: 17, scope: !884, inlinedAt: !887)
!973 = !DILocation(line: 250, column: 24, scope: !974, inlinedAt: !887)
!974 = distinct !DILexicalBlock(scope: !975, file: !3, line: 249, column: 15)
!975 = distinct !DILexicalBlock(scope: !884, file: !3, line: 248, column: 17)
!976 = !DILocation(line: 251, column: 24, scope: !974, inlinedAt: !887)
!977 = !DILocation(line: 252, column: 39, scope: !974, inlinedAt: !887)
!978 = !DILocation(line: 250, column: 17, scope: !974, inlinedAt: !887)
!979 = !DILocation(line: 253, column: 15, scope: !974, inlinedAt: !887)
!980 = !DILocation(line: 254, column: 28, scope: !884, inlinedAt: !887)
!981 = !DILocation(line: 257, column: 22, scope: !884, inlinedAt: !887)
!982 = !DILocation(line: 258, column: 11, scope: !884, inlinedAt: !887)
!983 = !DILocation(line: 239, column: 33, scope: !878, inlinedAt: !887)
!984 = !DILocation(line: 239, column: 21, scope: !878, inlinedAt: !887)
!985 = distinct !{!985, !956, !986, !716}
!986 = !DILocation(line: 258, column: 11, scope: !879, inlinedAt: !887)
!987 = !DILocation(line: 261, column: 18, scope: !988, inlinedAt: !887)
!988 = distinct !DILexicalBlock(scope: !853, file: !3, line: 261, column: 7)
!989 = !DILocation(line: 261, column: 7, scope: !853, inlinedAt: !887)
!990 = !DILocation(line: 263, column: 17, scope: !991, inlinedAt: !887)
!991 = distinct !DILexicalBlock(scope: !988, file: !3, line: 262, column: 5)
!992 = !DILocation(line: 263, column: 24, scope: !991, inlinedAt: !887)
!993 = !DILocation(line: 263, column: 7, scope: !991, inlinedAt: !887)
!994 = !DILocation(line: 265, column: 5, scope: !991, inlinedAt: !887)
!995 = !DILocation(line: 268, column: 3, scope: !996, inlinedAt: !887)
!996 = distinct !DILexicalBlock(scope: !853, file: !3, line: 268, column: 3)
!997 = !DILocation(line: 268, column: 17, scope: !998, inlinedAt: !887)
!998 = distinct !DILexicalBlock(scope: !996, file: !3, line: 268, column: 3)
!999 = !DILocation(line: 269, column: 9, scope: !1000, inlinedAt: !887)
!1000 = distinct !DILexicalBlock(scope: !998, file: !3, line: 269, column: 9)
!1001 = !DILocation(line: 269, column: 24, scope: !1000, inlinedAt: !887)
!1002 = !DILocation(line: 269, column: 27, scope: !1000, inlinedAt: !887)
!1003 = !DILocation(line: 269, column: 51, scope: !1000, inlinedAt: !887)
!1004 = !DILocation(line: 269, column: 9, scope: !998, inlinedAt: !887)
!1005 = !DILocation(line: 271, column: 19, scope: !1006, inlinedAt: !887)
!1006 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 270, column: 7)
!1007 = !DILocation(line: 271, column: 32, scope: !1006, inlinedAt: !887)
!1008 = !DILocation(line: 271, column: 9, scope: !1006, inlinedAt: !887)
!1009 = !DILocation(line: 273, column: 7, scope: !1006, inlinedAt: !887)
!1010 = !DILocation(line: 268, column: 29, scope: !998, inlinedAt: !887)
!1011 = distinct !{!1011, !995, !1012, !716}
!1012 = !DILocation(line: 273, column: 7, scope: !996, inlinedAt: !887)
!1013 = !DILocation(line: 275, column: 3, scope: !853, inlinedAt: !887)
!1014 = !DILocation(line: 278, column: 1, scope: !853, inlinedAt: !887)
!1015 = !DILocation(line: 173, column: 7, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !800, file: !3, line: 173, column: 7)
!1017 = !DILocation(line: 173, column: 28, scope: !1016)
!1018 = !DILocation(line: 173, column: 7, scope: !800)
!1019 = !DILocation(line: 174, column: 5, scope: !1016)
!1020 = !DILocation(line: 277, column: 10, scope: !853, inlinedAt: !887)
!1021 = !DILocation(line: 176, column: 10, scope: !800)
!1022 = !DILocation(line: 177, column: 1, scope: !800)
!1023 = !DISubprogram(name: "bindtextdomain", scope: !737, file: !737, line: 86, type: !1024, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !92)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!39, !51, !51}
!1026 = !DISubprogram(name: "textdomain", scope: !737, file: !737, line: 82, type: !1027, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !92)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!39, !51}
!1029 = !DISubprogram(name: "atexit", scope: !1030, file: !1030, line: 595, type: !1031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !92)
!1030 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!47, !103}
!1033 = !DISubprogram(name: "getopt_long", scope: !66, file: !66, line: 66, type: !1034, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !92)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!47, !47, !1036, !51, !1038, !71}
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!1039 = !DISubprogram(name: "signal", scope: !43, file: !43, line: 88, type: !1040, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !92)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!44, !47, !44}
!1042 = !DISubprogram(name: "setvbuf", scope: !741, file: !741, line: 308, type: !1043, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !92)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!47, !744, !39, !47, !50}
!1045 = !DISubprogram(name: "error", scope: !1046, file: !1046, line: 52, type: !1047, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !92)
!1046 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1047 = !DISubroutineType(types: !1048)
!1048 = !{null, !47, !47, !51, null}
!1049 = !DISubprogram(name: "fwrite_unlocked", scope: !741, file: !741, line: 680, type: !1050, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !92)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!50, !37, !50, !50, !744}
!1052 = !DISubprogram(name: "clearerr_unlocked", scope: !741, file: !741, line: 770, type: !1053, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !92)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{null, !744}
!1055 = !DISubprogram(name: "close", scope: !1056, file: !1056, line: 353, type: !1057, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !92)
!1056 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!47, !47}
!1059 = distinct !DISubprogram(name: "__argmatch_die", scope: !97, file: !97, line: 60, type: !104, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !92)
!1060 = !DILocation(line: 62, column: 3, scope: !1059)
!1061 = !DILocation(line: 63, column: 1, scope: !1059)
!1062 = distinct !DISubprogram(name: "argmatch", scope: !97, file: !97, line: 82, type: !1063, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !1067)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!1065, !51, !1066, !37, !48}
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !49, line: 35, baseType: !769)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!1067 = !{!1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075}
!1068 = !DILocalVariable(name: "arg", arg: 1, scope: !1062, file: !97, line: 82, type: !51)
!1069 = !DILocalVariable(name: "arglist", arg: 2, scope: !1062, file: !97, line: 82, type: !1066)
!1070 = !DILocalVariable(name: "vallist", arg: 3, scope: !1062, file: !97, line: 83, type: !37)
!1071 = !DILocalVariable(name: "valsize", arg: 4, scope: !1062, file: !97, line: 83, type: !48)
!1072 = !DILocalVariable(name: "i", scope: !1062, file: !97, line: 85, type: !48)
!1073 = !DILocalVariable(name: "arglen", scope: !1062, file: !97, line: 86, type: !48)
!1074 = !DILocalVariable(name: "matchind", scope: !1062, file: !97, line: 87, type: !1065)
!1075 = !DILocalVariable(name: "ambiguous", scope: !1062, file: !97, line: 88, type: !58)
!1076 = !DILocation(line: 0, scope: !1062)
!1077 = !DILocation(line: 90, column: 12, scope: !1062)
!1078 = !DILocation(line: 93, column: 15, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !97, line: 93, column: 3)
!1080 = distinct !DILexicalBlock(scope: !1062, file: !97, line: 93, column: 3)
!1081 = !DILocation(line: 93, column: 3, scope: !1080)
!1082 = !DILocation(line: 95, column: 12, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1084, file: !97, line: 95, column: 11)
!1084 = distinct !DILexicalBlock(scope: !1079, file: !97, line: 94, column: 5)
!1085 = !DILocation(line: 95, column: 11, scope: !1084)
!1086 = !DILocation(line: 97, column: 15, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1088, file: !97, line: 97, column: 15)
!1088 = distinct !DILexicalBlock(scope: !1083, file: !97, line: 96, column: 9)
!1089 = !DILocation(line: 97, column: 35, scope: !1087)
!1090 = !DILocation(line: 97, column: 15, scope: !1088)
!1091 = !DILocation(line: 100, column: 29, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1087, file: !97, line: 100, column: 20)
!1093 = !DILocation(line: 100, column: 20, scope: !1087)
!1094 = !DILocation(line: 107, column: 19, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1096, file: !97, line: 106, column: 19)
!1096 = distinct !DILexicalBlock(scope: !1092, file: !97, line: 104, column: 13)
!1097 = !DILocation(line: 107, column: 63, scope: !1095)
!1098 = !DILocation(line: 107, column: 53, scope: !1095)
!1099 = !DILocation(line: 108, column: 63, scope: !1095)
!1100 = !DILocation(line: 108, column: 53, scope: !1095)
!1101 = !DILocation(line: 107, column: 22, scope: !1095)
!1102 = !DILocation(line: 106, column: 19, scope: !1096)
!1103 = !DILocation(line: 113, column: 17, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1095, file: !97, line: 109, column: 17)
!1105 = !DILocation(line: 93, column: 28, scope: !1079)
!1106 = distinct !{!1106, !1081, !1107, !716}
!1107 = !DILocation(line: 116, column: 5, scope: !1080)
!1108 = !DILocation(line: 87, column: 13, scope: !1062)
!1109 = !DILocation(line: 88, column: 8, scope: !1062)
!1110 = !DILocation(line: 117, column: 7, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1062, file: !97, line: 117, column: 7)
!1112 = !DILocation(line: 117, column: 7, scope: !1062)
!1113 = !DILocation(line: 121, column: 1, scope: !1062)
!1114 = distinct !DISubprogram(name: "argmatch_invalid", scope: !97, file: !97, line: 129, type: !1115, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !1117)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{null, !51, !51, !1065}
!1117 = !{!1118, !1119, !1120, !1121}
!1118 = !DILocalVariable(name: "context", arg: 1, scope: !1114, file: !97, line: 129, type: !51)
!1119 = !DILocalVariable(name: "value", arg: 2, scope: !1114, file: !97, line: 129, type: !51)
!1120 = !DILocalVariable(name: "problem", arg: 3, scope: !1114, file: !97, line: 129, type: !1065)
!1121 = !DILocalVariable(name: "format", scope: !1114, file: !97, line: 131, type: !51)
!1122 = !DILocation(line: 0, scope: !1114)
!1123 = !DILocation(line: 131, column: 33, scope: !1114)
!1124 = !DILocation(line: 131, column: 25, scope: !1114)
!1125 = !DILocation(line: 135, column: 24, scope: !1114)
!1126 = !DILocation(line: 136, column: 10, scope: !1114)
!1127 = !DILocation(line: 135, column: 3, scope: !1114)
!1128 = !DILocation(line: 137, column: 1, scope: !1114)
!1129 = distinct !DISubprogram(name: "argmatch_valid", scope: !97, file: !97, line: 144, type: !1130, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !1132)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{null, !1066, !37, !48}
!1132 = !{!1133, !1134, !1135, !1136, !1137}
!1133 = !DILocalVariable(name: "arglist", arg: 1, scope: !1129, file: !97, line: 144, type: !1066)
!1134 = !DILocalVariable(name: "vallist", arg: 2, scope: !1129, file: !97, line: 145, type: !37)
!1135 = !DILocalVariable(name: "valsize", arg: 3, scope: !1129, file: !97, line: 145, type: !48)
!1136 = !DILocalVariable(name: "i", scope: !1129, file: !97, line: 147, type: !48)
!1137 = !DILocalVariable(name: "last_val", scope: !1129, file: !97, line: 148, type: !51)
!1138 = !DILocation(line: 0, scope: !1129)
!1139 = !DILocation(line: 152, column: 3, scope: !1129)
!1140 = !DILocation(line: 153, column: 15, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1142, file: !97, line: 153, column: 3)
!1142 = distinct !DILexicalBlock(scope: !1129, file: !97, line: 153, column: 3)
!1143 = !DILocation(line: 153, column: 3, scope: !1142)
!1144 = !DILocation(line: 154, column: 12, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1141, file: !97, line: 154, column: 9)
!1146 = !DILocation(line: 155, column: 9, scope: !1145)
!1147 = !DILocation(line: 155, column: 63, scope: !1145)
!1148 = !DILocation(line: 155, column: 53, scope: !1145)
!1149 = !DILocation(line: 155, column: 12, scope: !1145)
!1150 = !DILocation(line: 154, column: 9, scope: !1141)
!1151 = !DILocation(line: 158, column: 53, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1145, file: !97, line: 156, column: 7)
!1153 = !DILocation(line: 157, column: 9, scope: !1152)
!1154 = !DILocation(line: 158, column: 43, scope: !1152)
!1155 = !DILocation(line: 159, column: 7, scope: !1152)
!1156 = !DILocation(line: 162, column: 9, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1145, file: !97, line: 161, column: 7)
!1158 = !DILocation(line: 153, column: 28, scope: !1141)
!1159 = distinct !{!1159, !1143, !1160, !716}
!1160 = !DILocation(line: 163, column: 7, scope: !1142)
!1161 = !DILocation(line: 164, column: 3, scope: !1129)
!1162 = !DILocalVariable(name: "__c", arg: 1, scope: !1163, file: !1164, line: 101, type: !47)
!1163 = distinct !DISubprogram(name: "putc_unlocked", scope: !1164, file: !1164, line: 101, type: !1165, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !1201)
!1164 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!47, !47, !1167}
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !863, line: 7, baseType: !1169)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !746, line: 49, size: 1728, elements: !1170)
!1170 = !{!1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1169, file: !746, line: 51, baseType: !47, size: 32)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1169, file: !746, line: 54, baseType: !39, size: 64, offset: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1169, file: !746, line: 55, baseType: !39, size: 64, offset: 128)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1169, file: !746, line: 56, baseType: !39, size: 64, offset: 192)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1169, file: !746, line: 57, baseType: !39, size: 64, offset: 256)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1169, file: !746, line: 58, baseType: !39, size: 64, offset: 320)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1169, file: !746, line: 59, baseType: !39, size: 64, offset: 384)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1169, file: !746, line: 60, baseType: !39, size: 64, offset: 448)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1169, file: !746, line: 61, baseType: !39, size: 64, offset: 512)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1169, file: !746, line: 64, baseType: !39, size: 64, offset: 576)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1169, file: !746, line: 65, baseType: !39, size: 64, offset: 640)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1169, file: !746, line: 66, baseType: !39, size: 64, offset: 704)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1169, file: !746, line: 68, baseType: !761, size: 64, offset: 768)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1169, file: !746, line: 70, baseType: !1185, size: 64, offset: 832)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1169, file: !746, line: 72, baseType: !47, size: 32, offset: 896)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1169, file: !746, line: 73, baseType: !47, size: 32, offset: 928)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1169, file: !746, line: 74, baseType: !767, size: 64, offset: 960)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1169, file: !746, line: 77, baseType: !151, size: 16, offset: 1024)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1169, file: !746, line: 78, baseType: !772, size: 8, offset: 1040)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1169, file: !746, line: 79, baseType: !774, size: 8, offset: 1048)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1169, file: !746, line: 81, baseType: !778, size: 64, offset: 1088)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1169, file: !746, line: 89, baseType: !781, size: 64, offset: 1152)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1169, file: !746, line: 91, baseType: !783, size: 64, offset: 1216)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1169, file: !746, line: 92, baseType: !786, size: 64, offset: 1280)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1169, file: !746, line: 93, baseType: !1185, size: 64, offset: 1344)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1169, file: !746, line: 94, baseType: !41, size: 64, offset: 1408)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1169, file: !746, line: 95, baseType: !48, size: 64, offset: 1472)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1169, file: !746, line: 96, baseType: !47, size: 32, offset: 1536)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1169, file: !746, line: 98, baseType: !793, size: 160, offset: 1568)
!1201 = !{!1162, !1202}
!1202 = !DILocalVariable(name: "__stream", arg: 2, scope: !1163, file: !1164, line: 101, type: !1167)
!1203 = !DILocation(line: 0, scope: !1163, inlinedAt: !1204)
!1204 = distinct !DILocation(line: 164, column: 3, scope: !1129)
!1205 = !DILocation(line: 103, column: 10, scope: !1163, inlinedAt: !1204)
!1206 = !{!1207, !673, i64 40}
!1207 = !{!"_IO_FILE", !850, i64 0, !673, i64 8, !673, i64 16, !673, i64 24, !673, i64 32, !673, i64 40, !673, i64 48, !673, i64 56, !673, i64 64, !673, i64 72, !673, i64 80, !673, i64 88, !673, i64 96, !673, i64 104, !850, i64 112, !850, i64 116, !1208, i64 120, !1209, i64 128, !674, i64 130, !674, i64 131, !673, i64 136, !1208, i64 144, !673, i64 152, !673, i64 160, !673, i64 168, !673, i64 176, !1208, i64 184, !850, i64 192, !674, i64 196}
!1208 = !{!"long", !674, i64 0}
!1209 = !{!"short", !674, i64 0}
!1210 = !{!1207, !673, i64 48}
!1211 = !{!"branch_weights", i32 2000, i32 1}
!1212 = !DILocation(line: 165, column: 1, scope: !1129)
!1213 = distinct !DISubprogram(name: "__xargmatch_internal", scope: !97, file: !97, line: 174, type: !1214, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !1216)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!1065, !51, !51, !1066, !37, !48, !101}
!1216 = !{!1217, !1218, !1219, !1220, !1221, !1222, !1223}
!1217 = !DILocalVariable(name: "context", arg: 1, scope: !1213, file: !97, line: 174, type: !51)
!1218 = !DILocalVariable(name: "arg", arg: 2, scope: !1213, file: !97, line: 175, type: !51)
!1219 = !DILocalVariable(name: "arglist", arg: 3, scope: !1213, file: !97, line: 175, type: !1066)
!1220 = !DILocalVariable(name: "vallist", arg: 4, scope: !1213, file: !97, line: 176, type: !37)
!1221 = !DILocalVariable(name: "valsize", arg: 5, scope: !1213, file: !97, line: 176, type: !48)
!1222 = !DILocalVariable(name: "exit_fn", arg: 6, scope: !1213, file: !97, line: 177, type: !101)
!1223 = !DILocalVariable(name: "res", scope: !1213, file: !97, line: 179, type: !1065)
!1224 = !DILocation(line: 0, scope: !1213)
!1225 = !DILocation(line: 179, column: 19, scope: !1213)
!1226 = !DILocation(line: 180, column: 11, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1213, file: !97, line: 180, column: 7)
!1228 = !DILocation(line: 180, column: 7, scope: !1213)
!1229 = !DILocation(line: 0, scope: !1114, inlinedAt: !1230)
!1230 = distinct !DILocation(line: 185, column: 3, scope: !1213)
!1231 = !DILocation(line: 131, column: 33, scope: !1114, inlinedAt: !1230)
!1232 = !DILocation(line: 131, column: 25, scope: !1114, inlinedAt: !1230)
!1233 = !DILocation(line: 135, column: 24, scope: !1114, inlinedAt: !1230)
!1234 = !DILocation(line: 136, column: 10, scope: !1114, inlinedAt: !1230)
!1235 = !DILocation(line: 135, column: 3, scope: !1114, inlinedAt: !1230)
!1236 = !DILocation(line: 186, column: 3, scope: !1213)
!1237 = !DILocation(line: 187, column: 3, scope: !1213)
!1238 = !DILocation(line: 189, column: 3, scope: !1213)
!1239 = !DILocation(line: 190, column: 1, scope: !1213)
!1240 = distinct !DISubprogram(name: "argmatch_to_argument", scope: !97, file: !97, line: 195, type: !1241, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !1243)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!51, !37, !1066, !37, !48}
!1243 = !{!1244, !1245, !1246, !1247, !1248}
!1244 = !DILocalVariable(name: "value", arg: 1, scope: !1240, file: !97, line: 195, type: !37)
!1245 = !DILocalVariable(name: "arglist", arg: 2, scope: !1240, file: !97, line: 196, type: !1066)
!1246 = !DILocalVariable(name: "vallist", arg: 3, scope: !1240, file: !97, line: 197, type: !37)
!1247 = !DILocalVariable(name: "valsize", arg: 4, scope: !1240, file: !97, line: 197, type: !48)
!1248 = !DILocalVariable(name: "i", scope: !1240, file: !97, line: 199, type: !48)
!1249 = !DILocation(line: 0, scope: !1240)
!1250 = !DILocation(line: 201, column: 15, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !97, line: 201, column: 3)
!1252 = distinct !DILexicalBlock(scope: !1240, file: !97, line: 201, column: 3)
!1253 = !DILocation(line: 201, column: 3, scope: !1252)
!1254 = !DILocation(line: 202, column: 10, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1251, file: !97, line: 202, column: 9)
!1256 = !DILocation(line: 202, column: 9, scope: !1251)
!1257 = distinct !{!1257, !1253, !1258, !716}
!1258 = !DILocation(line: 203, column: 23, scope: !1252)
!1259 = !DILocation(line: 202, column: 58, scope: !1255)
!1260 = !DILocation(line: 202, column: 48, scope: !1255)
!1261 = !DILocation(line: 201, column: 28, scope: !1251)
!1262 = !DILocation(line: 205, column: 1, scope: !1240)
!1263 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !109, file: !109, line: 51, type: !686, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !108, retainedNodes: !1264)
!1264 = !{!1265}
!1265 = !DILocalVariable(name: "file", arg: 1, scope: !1263, file: !109, line: 51, type: !51)
!1266 = !DILocation(line: 0, scope: !1263)
!1267 = !DILocation(line: 53, column: 13, scope: !1263)
!1268 = !DILocation(line: 54, column: 1, scope: !1263)
!1269 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !109, file: !109, line: 88, type: !1270, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !108, retainedNodes: !1272)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{null, !58}
!1272 = !{!1273}
!1273 = !DILocalVariable(name: "ignore", arg: 1, scope: !1269, file: !109, line: 88, type: !58)
!1274 = !DILocation(line: 0, scope: !1269)
!1275 = !DILocation(line: 90, column: 16, scope: !1269)
!1276 = !{!1277, !1277, i64 0}
!1277 = !{!"_Bool", !674, i64 0}
!1278 = !DILocation(line: 91, column: 1, scope: !1269)
!1279 = distinct !DISubprogram(name: "close_stdout", scope: !109, file: !109, line: 117, type: !104, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !108, retainedNodes: !1280)
!1280 = !{!1281}
!1281 = !DILocalVariable(name: "write_error", scope: !1282, file: !109, line: 122, type: !51)
!1282 = distinct !DILexicalBlock(scope: !1283, file: !109, line: 121, column: 5)
!1283 = distinct !DILexicalBlock(scope: !1279, file: !109, line: 119, column: 7)
!1284 = !DILocation(line: 119, column: 21, scope: !1283)
!1285 = !DILocation(line: 119, column: 7, scope: !1283)
!1286 = !DILocation(line: 119, column: 29, scope: !1283)
!1287 = !DILocation(line: 120, column: 7, scope: !1283)
!1288 = !DILocation(line: 120, column: 12, scope: !1283)
!1289 = !{i8 0, i8 2}
!1290 = !DILocation(line: 120, column: 25, scope: !1283)
!1291 = !DILocation(line: 120, column: 28, scope: !1283)
!1292 = !DILocation(line: 120, column: 34, scope: !1283)
!1293 = !DILocation(line: 119, column: 7, scope: !1279)
!1294 = !DILocation(line: 122, column: 33, scope: !1282)
!1295 = !DILocation(line: 0, scope: !1282)
!1296 = !DILocation(line: 123, column: 11, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1282, file: !109, line: 123, column: 11)
!1298 = !DILocation(line: 0, scope: !1297)
!1299 = !DILocation(line: 123, column: 11, scope: !1282)
!1300 = !DILocation(line: 124, column: 36, scope: !1297)
!1301 = !DILocation(line: 124, column: 9, scope: !1297)
!1302 = !DILocation(line: 127, column: 9, scope: !1297)
!1303 = !DILocation(line: 129, column: 14, scope: !1282)
!1304 = !DILocation(line: 129, column: 7, scope: !1282)
!1305 = !DILocation(line: 134, column: 42, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1279, file: !109, line: 134, column: 7)
!1307 = !DILocation(line: 134, column: 28, scope: !1306)
!1308 = !DILocation(line: 134, column: 50, scope: !1306)
!1309 = !DILocation(line: 134, column: 7, scope: !1279)
!1310 = !DILocation(line: 135, column: 12, scope: !1306)
!1311 = !DILocation(line: 135, column: 5, scope: !1306)
!1312 = !DILocation(line: 136, column: 1, scope: !1279)
!1313 = distinct !DISubprogram(name: "fdadvise", scope: !219, file: !219, line: 31, type: !1314, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1318)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{null, !47, !1316, !1316, !1317}
!1316 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !741, line: 63, baseType: !767)
!1317 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !14, line: 52, baseType: !13)
!1318 = !{!1319, !1320, !1321, !1322, !1323}
!1319 = !DILocalVariable(name: "fd", arg: 1, scope: !1313, file: !219, line: 31, type: !47)
!1320 = !DILocalVariable(name: "offset", arg: 2, scope: !1313, file: !219, line: 31, type: !1316)
!1321 = !DILocalVariable(name: "len", arg: 3, scope: !1313, file: !219, line: 31, type: !1316)
!1322 = !DILocalVariable(name: "advice", arg: 4, scope: !1313, file: !219, line: 31, type: !1317)
!1323 = !DILocalVariable(name: "__x", scope: !1324, file: !219, line: 34, type: !47)
!1324 = distinct !DILexicalBlock(scope: !1313, file: !219, line: 34, column: 3)
!1325 = !DILocation(line: 0, scope: !1313)
!1326 = !DILocation(line: 34, column: 3, scope: !1324)
!1327 = !DILocation(line: 0, scope: !1324)
!1328 = !DILocation(line: 36, column: 1, scope: !1313)
!1329 = !DISubprogram(name: "posix_fadvise", scope: !1330, file: !1330, line: 288, type: !1331, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !92)
!1330 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!1331 = !DISubroutineType(types: !1332)
!1332 = !{!47, !47, !769, !769, !47}
!1333 = distinct !DISubprogram(name: "fadvise", scope: !219, file: !219, line: 39, type: !1334, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1370)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{null, !1336, !1317}
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !863, line: 7, baseType: !1338)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !746, line: 49, size: 1728, elements: !1339)
!1339 = !{!1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1338, file: !746, line: 51, baseType: !47, size: 32)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1338, file: !746, line: 54, baseType: !39, size: 64, offset: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1338, file: !746, line: 55, baseType: !39, size: 64, offset: 128)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1338, file: !746, line: 56, baseType: !39, size: 64, offset: 192)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1338, file: !746, line: 57, baseType: !39, size: 64, offset: 256)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1338, file: !746, line: 58, baseType: !39, size: 64, offset: 320)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1338, file: !746, line: 59, baseType: !39, size: 64, offset: 384)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1338, file: !746, line: 60, baseType: !39, size: 64, offset: 448)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1338, file: !746, line: 61, baseType: !39, size: 64, offset: 512)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1338, file: !746, line: 64, baseType: !39, size: 64, offset: 576)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1338, file: !746, line: 65, baseType: !39, size: 64, offset: 640)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1338, file: !746, line: 66, baseType: !39, size: 64, offset: 704)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1338, file: !746, line: 68, baseType: !761, size: 64, offset: 768)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1338, file: !746, line: 70, baseType: !1354, size: 64, offset: 832)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1338, file: !746, line: 72, baseType: !47, size: 32, offset: 896)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1338, file: !746, line: 73, baseType: !47, size: 32, offset: 928)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1338, file: !746, line: 74, baseType: !767, size: 64, offset: 960)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1338, file: !746, line: 77, baseType: !151, size: 16, offset: 1024)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1338, file: !746, line: 78, baseType: !772, size: 8, offset: 1040)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1338, file: !746, line: 79, baseType: !774, size: 8, offset: 1048)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1338, file: !746, line: 81, baseType: !778, size: 64, offset: 1088)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1338, file: !746, line: 89, baseType: !781, size: 64, offset: 1152)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1338, file: !746, line: 91, baseType: !783, size: 64, offset: 1216)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1338, file: !746, line: 92, baseType: !786, size: 64, offset: 1280)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1338, file: !746, line: 93, baseType: !1354, size: 64, offset: 1344)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1338, file: !746, line: 94, baseType: !41, size: 64, offset: 1408)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1338, file: !746, line: 95, baseType: !48, size: 64, offset: 1472)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1338, file: !746, line: 96, baseType: !47, size: 32, offset: 1536)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1338, file: !746, line: 98, baseType: !793, size: 160, offset: 1568)
!1370 = !{!1371, !1372}
!1371 = !DILocalVariable(name: "fp", arg: 1, scope: !1333, file: !219, line: 39, type: !1336)
!1372 = !DILocalVariable(name: "advice", arg: 2, scope: !1333, file: !219, line: 39, type: !1317)
!1373 = !DILocation(line: 0, scope: !1333)
!1374 = !DILocation(line: 41, column: 7, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1333, file: !219, line: 41, column: 7)
!1376 = !DILocation(line: 41, column: 7, scope: !1333)
!1377 = !DILocation(line: 42, column: 15, scope: !1375)
!1378 = !DILocation(line: 0, scope: !1313, inlinedAt: !1379)
!1379 = distinct !DILocation(line: 42, column: 5, scope: !1375)
!1380 = !DILocation(line: 34, column: 3, scope: !1324, inlinedAt: !1379)
!1381 = !DILocation(line: 0, scope: !1324, inlinedAt: !1379)
!1382 = !DILocation(line: 42, column: 5, scope: !1375)
!1383 = !DILocation(line: 43, column: 1, scope: !1333)
!1384 = !DISubprogram(name: "fileno", scope: !741, file: !741, line: 785, type: !1385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !92)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!47, !1354}
!1387 = distinct !DISubprogram(name: "fopen_safer", scope: !222, file: !222, line: 31, type: !1388, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1424)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!1390, !51, !51}
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !863, line: 7, baseType: !1392)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !746, line: 49, size: 1728, elements: !1393)
!1393 = !{!1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1392, file: !746, line: 51, baseType: !47, size: 32)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1392, file: !746, line: 54, baseType: !39, size: 64, offset: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1392, file: !746, line: 55, baseType: !39, size: 64, offset: 128)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1392, file: !746, line: 56, baseType: !39, size: 64, offset: 192)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1392, file: !746, line: 57, baseType: !39, size: 64, offset: 256)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1392, file: !746, line: 58, baseType: !39, size: 64, offset: 320)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1392, file: !746, line: 59, baseType: !39, size: 64, offset: 384)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1392, file: !746, line: 60, baseType: !39, size: 64, offset: 448)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1392, file: !746, line: 61, baseType: !39, size: 64, offset: 512)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1392, file: !746, line: 64, baseType: !39, size: 64, offset: 576)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1392, file: !746, line: 65, baseType: !39, size: 64, offset: 640)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1392, file: !746, line: 66, baseType: !39, size: 64, offset: 704)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1392, file: !746, line: 68, baseType: !761, size: 64, offset: 768)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1392, file: !746, line: 70, baseType: !1408, size: 64, offset: 832)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1392, file: !746, line: 72, baseType: !47, size: 32, offset: 896)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1392, file: !746, line: 73, baseType: !47, size: 32, offset: 928)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1392, file: !746, line: 74, baseType: !767, size: 64, offset: 960)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1392, file: !746, line: 77, baseType: !151, size: 16, offset: 1024)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1392, file: !746, line: 78, baseType: !772, size: 8, offset: 1040)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1392, file: !746, line: 79, baseType: !774, size: 8, offset: 1048)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1392, file: !746, line: 81, baseType: !778, size: 64, offset: 1088)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1392, file: !746, line: 89, baseType: !781, size: 64, offset: 1152)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1392, file: !746, line: 91, baseType: !783, size: 64, offset: 1216)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1392, file: !746, line: 92, baseType: !786, size: 64, offset: 1280)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1392, file: !746, line: 93, baseType: !1408, size: 64, offset: 1344)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1392, file: !746, line: 94, baseType: !41, size: 64, offset: 1408)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1392, file: !746, line: 95, baseType: !48, size: 64, offset: 1472)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1392, file: !746, line: 96, baseType: !47, size: 32, offset: 1536)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1392, file: !746, line: 98, baseType: !793, size: 160, offset: 1568)
!1424 = !{!1425, !1426, !1427, !1428, !1431, !1434, !1437}
!1425 = !DILocalVariable(name: "file", arg: 1, scope: !1387, file: !222, line: 31, type: !51)
!1426 = !DILocalVariable(name: "mode", arg: 2, scope: !1387, file: !222, line: 31, type: !51)
!1427 = !DILocalVariable(name: "fp", scope: !1387, file: !222, line: 33, type: !1390)
!1428 = !DILocalVariable(name: "fd", scope: !1429, file: !222, line: 37, type: !47)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !222, line: 36, column: 5)
!1430 = distinct !DILexicalBlock(scope: !1387, file: !222, line: 35, column: 7)
!1431 = !DILocalVariable(name: "f", scope: !1432, file: !222, line: 41, type: !47)
!1432 = distinct !DILexicalBlock(scope: !1433, file: !222, line: 40, column: 9)
!1433 = distinct !DILexicalBlock(scope: !1429, file: !222, line: 39, column: 11)
!1434 = !DILocalVariable(name: "e", scope: !1435, file: !222, line: 45, type: !47)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !222, line: 44, column: 13)
!1436 = distinct !DILexicalBlock(scope: !1432, file: !222, line: 43, column: 15)
!1437 = !DILocalVariable(name: "e", scope: !1438, file: !222, line: 54, type: !47)
!1438 = distinct !DILexicalBlock(scope: !1439, file: !222, line: 53, column: 13)
!1439 = distinct !DILexicalBlock(scope: !1432, file: !222, line: 51, column: 15)
!1440 = !DILocation(line: 0, scope: !1387)
!1441 = !DILocation(line: 33, column: 14, scope: !1387)
!1442 = !DILocation(line: 35, column: 7, scope: !1430)
!1443 = !DILocation(line: 35, column: 7, scope: !1387)
!1444 = !DILocation(line: 37, column: 16, scope: !1429)
!1445 = !DILocation(line: 0, scope: !1429)
!1446 = !DILocation(line: 39, column: 19, scope: !1433)
!1447 = !DILocation(line: 41, column: 19, scope: !1432)
!1448 = !DILocation(line: 0, scope: !1432)
!1449 = !DILocation(line: 43, column: 17, scope: !1436)
!1450 = !DILocation(line: 43, column: 15, scope: !1432)
!1451 = !DILocation(line: 45, column: 23, scope: !1435)
!1452 = !DILocation(line: 0, scope: !1435)
!1453 = !DILocation(line: 46, column: 15, scope: !1435)
!1454 = !DILocation(line: 47, column: 21, scope: !1435)
!1455 = !DILocation(line: 51, column: 15, scope: !1439)
!1456 = !DILocation(line: 51, column: 27, scope: !1439)
!1457 = !DILocation(line: 52, column: 15, scope: !1439)
!1458 = !DILocation(line: 52, column: 26, scope: !1439)
!1459 = !DILocation(line: 52, column: 24, scope: !1439)
!1460 = !DILocation(line: 51, column: 15, scope: !1432)
!1461 = !DILocation(line: 54, column: 23, scope: !1438)
!1462 = !DILocation(line: 0, scope: !1438)
!1463 = !DILocation(line: 55, column: 15, scope: !1438)
!1464 = !DILocation(line: 56, column: 21, scope: !1438)
!1465 = !DILocation(line: 63, column: 1, scope: !1387)
!1466 = !DISubprogram(name: "fdopen", scope: !741, file: !741, line: 279, type: !1467, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !92)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{!1408, !47, !51}
!1469 = distinct !DISubprogram(name: "set_program_name", scope: !122, file: !122, line: 39, type: !686, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !121, retainedNodes: !1470)
!1470 = !{!1471, !1472, !1473}
!1471 = !DILocalVariable(name: "argv0", arg: 1, scope: !1469, file: !122, line: 39, type: !51)
!1472 = !DILocalVariable(name: "slash", scope: !1469, file: !122, line: 46, type: !51)
!1473 = !DILocalVariable(name: "base", scope: !1469, file: !122, line: 47, type: !51)
!1474 = !DILocation(line: 0, scope: !1469)
!1475 = !DILocation(line: 51, column: 13, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1469, file: !122, line: 51, column: 7)
!1477 = !DILocation(line: 51, column: 7, scope: !1469)
!1478 = !DILocation(line: 55, column: 14, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1476, file: !122, line: 52, column: 5)
!1480 = !DILocation(line: 54, column: 7, scope: !1479)
!1481 = !DILocation(line: 56, column: 7, scope: !1479)
!1482 = !DILocation(line: 59, column: 11, scope: !1469)
!1483 = !DILocation(line: 60, column: 17, scope: !1469)
!1484 = !DILocation(line: 60, column: 11, scope: !1469)
!1485 = !DILocation(line: 61, column: 12, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1469, file: !122, line: 61, column: 7)
!1487 = !DILocation(line: 61, column: 20, scope: !1486)
!1488 = !DILocation(line: 61, column: 25, scope: !1486)
!1489 = !DILocation(line: 61, column: 42, scope: !1486)
!1490 = !DILocation(line: 61, column: 28, scope: !1486)
!1491 = !DILocation(line: 61, column: 61, scope: !1486)
!1492 = !DILocation(line: 61, column: 7, scope: !1469)
!1493 = !DILocation(line: 64, column: 11, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !122, line: 64, column: 11)
!1495 = distinct !DILexicalBlock(scope: !1486, file: !122, line: 62, column: 5)
!1496 = !DILocation(line: 64, column: 36, scope: !1494)
!1497 = !DILocation(line: 64, column: 11, scope: !1495)
!1498 = !DILocation(line: 66, column: 24, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1494, file: !122, line: 65, column: 9)
!1500 = !DILocation(line: 70, column: 41, scope: !1499)
!1501 = !DILocation(line: 72, column: 9, scope: !1499)
!1502 = !DILocation(line: 84, column: 16, scope: !1469)
!1503 = !DILocation(line: 90, column: 27, scope: !1469)
!1504 = !DILocation(line: 92, column: 1, scope: !1469)
!1505 = distinct !DISubprogram(name: "clone_quoting_options", scope: !128, file: !128, line: 122, type: !1506, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !1509)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!1508, !1508}
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!1509 = !{!1510, !1511, !1512}
!1510 = !DILocalVariable(name: "o", arg: 1, scope: !1505, file: !128, line: 122, type: !1508)
!1511 = !DILocalVariable(name: "e", scope: !1505, file: !128, line: 124, type: !47)
!1512 = !DILocalVariable(name: "p", scope: !1505, file: !128, line: 125, type: !1508)
!1513 = !DILocation(line: 0, scope: !1505)
!1514 = !DILocation(line: 124, column: 11, scope: !1505)
!1515 = !DILocation(line: 125, column: 40, scope: !1505)
!1516 = !DILocation(line: 125, column: 31, scope: !1505)
!1517 = !DILocation(line: 127, column: 9, scope: !1505)
!1518 = !DILocation(line: 128, column: 3, scope: !1505)
!1519 = distinct !DISubprogram(name: "get_quoting_style", scope: !128, file: !128, line: 133, type: !1520, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !1524)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{!22, !1522}
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!1524 = !{!1525}
!1525 = !DILocalVariable(name: "o", arg: 1, scope: !1519, file: !128, line: 133, type: !1522)
!1526 = !DILocation(line: 0, scope: !1519)
!1527 = !DILocation(line: 135, column: 11, scope: !1519)
!1528 = !DILocation(line: 135, column: 46, scope: !1519)
!1529 = !{!1530, !674, i64 0}
!1530 = !{!"quoting_options", !674, i64 0, !850, i64 4, !674, i64 8, !673, i64 40, !673, i64 48}
!1531 = !DILocation(line: 135, column: 3, scope: !1519)
!1532 = distinct !DISubprogram(name: "set_quoting_style", scope: !128, file: !128, line: 141, type: !1533, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !1535)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{null, !1508, !22}
!1535 = !{!1536, !1537}
!1536 = !DILocalVariable(name: "o", arg: 1, scope: !1532, file: !128, line: 141, type: !1508)
!1537 = !DILocalVariable(name: "s", arg: 2, scope: !1532, file: !128, line: 141, type: !22)
!1538 = !DILocation(line: 0, scope: !1532)
!1539 = !DILocation(line: 143, column: 4, scope: !1532)
!1540 = !DILocation(line: 143, column: 39, scope: !1532)
!1541 = !DILocation(line: 143, column: 45, scope: !1532)
!1542 = !DILocation(line: 144, column: 1, scope: !1532)
!1543 = distinct !DISubprogram(name: "set_char_quoting", scope: !128, file: !128, line: 152, type: !1544, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !1546)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!47, !1508, !40, !47}
!1546 = !{!1547, !1548, !1549, !1550, !1551, !1553, !1554}
!1547 = !DILocalVariable(name: "o", arg: 1, scope: !1543, file: !128, line: 152, type: !1508)
!1548 = !DILocalVariable(name: "c", arg: 2, scope: !1543, file: !128, line: 152, type: !40)
!1549 = !DILocalVariable(name: "i", arg: 3, scope: !1543, file: !128, line: 152, type: !47)
!1550 = !DILocalVariable(name: "uc", scope: !1543, file: !128, line: 154, type: !53)
!1551 = !DILocalVariable(name: "p", scope: !1543, file: !128, line: 155, type: !1552)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!1553 = !DILocalVariable(name: "shift", scope: !1543, file: !128, line: 157, type: !47)
!1554 = !DILocalVariable(name: "r", scope: !1543, file: !128, line: 158, type: !47)
!1555 = !DILocation(line: 0, scope: !1543)
!1556 = !DILocation(line: 156, column: 6, scope: !1543)
!1557 = !DILocation(line: 156, column: 62, scope: !1543)
!1558 = !DILocation(line: 156, column: 57, scope: !1543)
!1559 = !DILocation(line: 157, column: 15, scope: !1543)
!1560 = !DILocation(line: 158, column: 12, scope: !1543)
!1561 = !DILocation(line: 158, column: 15, scope: !1543)
!1562 = !DILocation(line: 158, column: 25, scope: !1543)
!1563 = !DILocation(line: 159, column: 13, scope: !1543)
!1564 = !DILocation(line: 159, column: 18, scope: !1543)
!1565 = !DILocation(line: 159, column: 23, scope: !1543)
!1566 = !DILocation(line: 159, column: 6, scope: !1543)
!1567 = !DILocation(line: 160, column: 3, scope: !1543)
!1568 = distinct !DISubprogram(name: "set_quoting_flags", scope: !128, file: !128, line: 168, type: !1569, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !1571)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!47, !1508, !47}
!1571 = !{!1572, !1573, !1574}
!1572 = !DILocalVariable(name: "o", arg: 1, scope: !1568, file: !128, line: 168, type: !1508)
!1573 = !DILocalVariable(name: "i", arg: 2, scope: !1568, file: !128, line: 168, type: !47)
!1574 = !DILocalVariable(name: "r", scope: !1568, file: !128, line: 170, type: !47)
!1575 = !DILocation(line: 0, scope: !1568)
!1576 = !DILocation(line: 171, column: 8, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1568, file: !128, line: 171, column: 7)
!1578 = !DILocation(line: 171, column: 7, scope: !1568)
!1579 = !DILocation(line: 173, column: 10, scope: !1568)
!1580 = !{!1530, !850, i64 4}
!1581 = !DILocation(line: 174, column: 12, scope: !1568)
!1582 = !DILocation(line: 175, column: 3, scope: !1568)
!1583 = distinct !DISubprogram(name: "set_custom_quoting", scope: !128, file: !128, line: 179, type: !1584, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !1586)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{null, !1508, !51, !51}
!1586 = !{!1587, !1588, !1589}
!1587 = !DILocalVariable(name: "o", arg: 1, scope: !1583, file: !128, line: 179, type: !1508)
!1588 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1583, file: !128, line: 180, type: !51)
!1589 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1583, file: !128, line: 180, type: !51)
!1590 = !DILocation(line: 0, scope: !1583)
!1591 = !DILocation(line: 182, column: 8, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1583, file: !128, line: 182, column: 7)
!1593 = !DILocation(line: 182, column: 7, scope: !1583)
!1594 = !DILocation(line: 184, column: 6, scope: !1583)
!1595 = !DILocation(line: 184, column: 12, scope: !1583)
!1596 = !DILocation(line: 185, column: 8, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1583, file: !128, line: 185, column: 7)
!1598 = !DILocation(line: 185, column: 19, scope: !1597)
!1599 = !DILocation(line: 186, column: 5, scope: !1597)
!1600 = !DILocation(line: 187, column: 6, scope: !1583)
!1601 = !DILocation(line: 187, column: 17, scope: !1583)
!1602 = !{!1530, !673, i64 40}
!1603 = !DILocation(line: 188, column: 6, scope: !1583)
!1604 = !DILocation(line: 188, column: 18, scope: !1583)
!1605 = !{!1530, !673, i64 48}
!1606 = !DILocation(line: 189, column: 1, scope: !1583)
!1607 = distinct !DISubprogram(name: "quotearg_buffer", scope: !128, file: !128, line: 784, type: !1608, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !1610)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!48, !39, !48, !51, !48, !1522}
!1610 = !{!1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618}
!1611 = !DILocalVariable(name: "buffer", arg: 1, scope: !1607, file: !128, line: 784, type: !39)
!1612 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1607, file: !128, line: 784, type: !48)
!1613 = !DILocalVariable(name: "arg", arg: 3, scope: !1607, file: !128, line: 785, type: !51)
!1614 = !DILocalVariable(name: "argsize", arg: 4, scope: !1607, file: !128, line: 785, type: !48)
!1615 = !DILocalVariable(name: "o", arg: 5, scope: !1607, file: !128, line: 786, type: !1522)
!1616 = !DILocalVariable(name: "p", scope: !1607, file: !128, line: 788, type: !1522)
!1617 = !DILocalVariable(name: "e", scope: !1607, file: !128, line: 789, type: !47)
!1618 = !DILocalVariable(name: "r", scope: !1607, file: !128, line: 790, type: !48)
!1619 = !DILocation(line: 0, scope: !1607)
!1620 = !DILocation(line: 788, column: 37, scope: !1607)
!1621 = !DILocation(line: 789, column: 11, scope: !1607)
!1622 = !DILocation(line: 791, column: 43, scope: !1607)
!1623 = !DILocation(line: 791, column: 53, scope: !1607)
!1624 = !DILocation(line: 791, column: 60, scope: !1607)
!1625 = !DILocation(line: 792, column: 43, scope: !1607)
!1626 = !DILocation(line: 792, column: 58, scope: !1607)
!1627 = !DILocation(line: 790, column: 14, scope: !1607)
!1628 = !DILocation(line: 793, column: 9, scope: !1607)
!1629 = !DILocation(line: 794, column: 3, scope: !1607)
!1630 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !128, file: !128, line: 256, type: !1631, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !1635)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{!48, !39, !48, !51, !48, !22, !47, !1633, !51, !51}
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!1635 = !{!1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1660, !1661, !1662, !1663, !1664, !1667, !1668, !1684, !1687, !1688, !1695, !1698, !1699, !1700, !1701, !1702, !1703}
!1636 = !DILocalVariable(name: "buffer", arg: 1, scope: !1630, file: !128, line: 256, type: !39)
!1637 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1630, file: !128, line: 256, type: !48)
!1638 = !DILocalVariable(name: "arg", arg: 3, scope: !1630, file: !128, line: 257, type: !51)
!1639 = !DILocalVariable(name: "argsize", arg: 4, scope: !1630, file: !128, line: 257, type: !48)
!1640 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1630, file: !128, line: 258, type: !22)
!1641 = !DILocalVariable(name: "flags", arg: 6, scope: !1630, file: !128, line: 258, type: !47)
!1642 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1630, file: !128, line: 259, type: !1633)
!1643 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1630, file: !128, line: 260, type: !51)
!1644 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1630, file: !128, line: 261, type: !51)
!1645 = !DILocalVariable(name: "i", scope: !1630, file: !128, line: 263, type: !48)
!1646 = !DILocalVariable(name: "len", scope: !1630, file: !128, line: 264, type: !48)
!1647 = !DILocalVariable(name: "orig_buffersize", scope: !1630, file: !128, line: 265, type: !48)
!1648 = !DILocalVariable(name: "quote_string", scope: !1630, file: !128, line: 266, type: !51)
!1649 = !DILocalVariable(name: "quote_string_len", scope: !1630, file: !128, line: 267, type: !48)
!1650 = !DILocalVariable(name: "backslash_escapes", scope: !1630, file: !128, line: 268, type: !58)
!1651 = !DILocalVariable(name: "unibyte_locale", scope: !1630, file: !128, line: 269, type: !58)
!1652 = !DILocalVariable(name: "elide_outer_quotes", scope: !1630, file: !128, line: 270, type: !58)
!1653 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1630, file: !128, line: 271, type: !58)
!1654 = !DILocalVariable(name: "encountered_single_quote", scope: !1630, file: !128, line: 272, type: !58)
!1655 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1630, file: !128, line: 273, type: !58)
!1656 = !DILocalVariable(name: "c", scope: !1657, file: !128, line: 402, type: !53)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !128, line: 401, column: 5)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !128, line: 400, column: 3)
!1659 = distinct !DILexicalBlock(scope: !1630, file: !128, line: 400, column: 3)
!1660 = !DILocalVariable(name: "esc", scope: !1657, file: !128, line: 403, type: !53)
!1661 = !DILocalVariable(name: "is_right_quote", scope: !1657, file: !128, line: 404, type: !58)
!1662 = !DILocalVariable(name: "escaping", scope: !1657, file: !128, line: 405, type: !58)
!1663 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1657, file: !128, line: 406, type: !58)
!1664 = !DILocalVariable(name: "m", scope: !1665, file: !128, line: 610, type: !48)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !128, line: 608, column: 11)
!1666 = distinct !DILexicalBlock(scope: !1657, file: !128, line: 426, column: 9)
!1667 = !DILocalVariable(name: "printable", scope: !1665, file: !128, line: 612, type: !58)
!1668 = !DILocalVariable(name: "mbstate", scope: !1669, file: !128, line: 621, type: !1671)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !128, line: 620, column: 15)
!1670 = distinct !DILexicalBlock(scope: !1665, file: !128, line: 614, column: 17)
!1671 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1672, line: 6, baseType: !1673)
!1672 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1673 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1674, line: 21, baseType: !1675)
!1674 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1674, line: 13, size: 64, elements: !1676)
!1676 = !{!1677, !1678}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1675, file: !1674, line: 15, baseType: !47, size: 32)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1675, file: !1674, line: 20, baseType: !1679, size: 32, offset: 32)
!1679 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1675, file: !1674, line: 16, size: 32, elements: !1680)
!1680 = !{!1681, !1682}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1679, file: !1674, line: 18, baseType: !6, size: 32)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1679, file: !1674, line: 19, baseType: !1683, size: 32)
!1683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 32, elements: !79)
!1684 = !DILocalVariable(name: "w", scope: !1685, file: !128, line: 631, type: !1686)
!1685 = distinct !DILexicalBlock(scope: !1669, file: !128, line: 630, column: 19)
!1686 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !49, line: 74, baseType: !47)
!1687 = !DILocalVariable(name: "bytes", scope: !1685, file: !128, line: 632, type: !48)
!1688 = !DILocalVariable(name: "j", scope: !1689, file: !128, line: 657, type: !48)
!1689 = distinct !DILexicalBlock(scope: !1690, file: !128, line: 656, column: 27)
!1690 = distinct !DILexicalBlock(scope: !1691, file: !128, line: 654, column: 29)
!1691 = distinct !DILexicalBlock(scope: !1692, file: !128, line: 649, column: 23)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !128, line: 641, column: 30)
!1693 = distinct !DILexicalBlock(scope: !1694, file: !128, line: 636, column: 30)
!1694 = distinct !DILexicalBlock(scope: !1685, file: !128, line: 634, column: 25)
!1695 = !DILocalVariable(name: "ilim", scope: !1696, file: !128, line: 684, type: !48)
!1696 = distinct !DILexicalBlock(scope: !1697, file: !128, line: 681, column: 15)
!1697 = distinct !DILexicalBlock(scope: !1665, file: !128, line: 680, column: 17)
!1698 = !DILabel(scope: !1630, name: "process_input", file: !128, line: 314)
!1699 = !DILabel(scope: !1666, name: "c_and_shell_escape", file: !128, line: 512)
!1700 = !DILabel(scope: !1666, name: "c_escape", file: !128, line: 517)
!1701 = !DILabel(scope: !1657, name: "store_escape", file: !128, line: 719)
!1702 = !DILabel(scope: !1657, name: "store_c", file: !128, line: 722)
!1703 = !DILabel(scope: !1630, name: "force_outer_quoting_style", file: !128, line: 763)
!1704 = !DILocation(line: 0, scope: !1630)
!1705 = !DILocation(line: 269, column: 25, scope: !1630)
!1706 = !DILocation(line: 269, column: 36, scope: !1630)
!1707 = !DILocation(line: 270, column: 8, scope: !1630)
!1708 = !DILocation(line: 273, column: 3, scope: !1630)
!1709 = !DILocation(line: 265, column: 10, scope: !1630)
!1710 = !DILocation(line: 266, column: 15, scope: !1630)
!1711 = !DILocation(line: 267, column: 10, scope: !1630)
!1712 = !DILocation(line: 268, column: 8, scope: !1630)
!1713 = !DILocation(line: 271, column: 8, scope: !1630)
!1714 = !DILocation(line: 272, column: 8, scope: !1630)
!1715 = !DILocation(line: 273, column: 8, scope: !1630)
!1716 = !DILocation(line: 314, column: 2, scope: !1630)
!1717 = !DILocation(line: 316, column: 3, scope: !1630)
!1718 = !DILocation(line: 323, column: 11, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1630, file: !128, line: 317, column: 5)
!1720 = !DILocation(line: 323, column: 12, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1719, file: !128, line: 323, column: 11)
!1722 = !DILocation(line: 324, column: 9, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !128, line: 324, column: 9)
!1724 = distinct !DILexicalBlock(scope: !1721, file: !128, line: 324, column: 9)
!1725 = !DILocation(line: 324, column: 9, scope: !1724)
!1726 = !DILocation(line: 362, column: 26, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1728, file: !128, line: 340, column: 11)
!1728 = distinct !DILexicalBlock(scope: !1729, file: !128, line: 339, column: 13)
!1729 = distinct !DILexicalBlock(scope: !1719, file: !128, line: 338, column: 7)
!1730 = !DILocation(line: 363, column: 27, scope: !1727)
!1731 = !DILocation(line: 364, column: 11, scope: !1727)
!1732 = !DILocation(line: 365, column: 14, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1729, file: !128, line: 365, column: 13)
!1734 = !DILocation(line: 365, column: 13, scope: !1729)
!1735 = !DILocation(line: 366, column: 43, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !128, line: 366, column: 11)
!1737 = distinct !DILexicalBlock(scope: !1733, file: !128, line: 366, column: 11)
!1738 = !DILocation(line: 366, column: 11, scope: !1737)
!1739 = !DILocation(line: 367, column: 13, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1741, file: !128, line: 367, column: 13)
!1741 = distinct !DILexicalBlock(scope: !1736, file: !128, line: 367, column: 13)
!1742 = !DILocation(line: 367, column: 13, scope: !1741)
!1743 = !DILocation(line: 366, column: 70, scope: !1736)
!1744 = distinct !{!1744, !1738, !1745, !716}
!1745 = !DILocation(line: 367, column: 13, scope: !1737)
!1746 = !DILocation(line: 264, column: 10, scope: !1630)
!1747 = !DILocation(line: 370, column: 28, scope: !1729)
!1748 = !DILocation(line: 372, column: 7, scope: !1719)
!1749 = !DILocation(line: 376, column: 7, scope: !1719)
!1750 = !DILocation(line: 379, column: 7, scope: !1719)
!1751 = !DILocation(line: 381, column: 12, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1719, file: !128, line: 381, column: 11)
!1753 = !DILocation(line: 381, column: 11, scope: !1719)
!1754 = !DILocation(line: 386, column: 12, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1719, file: !128, line: 386, column: 11)
!1756 = !DILocation(line: 386, column: 11, scope: !1719)
!1757 = !DILocation(line: 387, column: 9, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !128, line: 387, column: 9)
!1759 = distinct !DILexicalBlock(scope: !1755, file: !128, line: 387, column: 9)
!1760 = !DILocation(line: 387, column: 9, scope: !1759)
!1761 = !DILocation(line: 394, column: 7, scope: !1719)
!1762 = !DILocation(line: 397, column: 7, scope: !1719)
!1763 = !DILocation(line: 400, column: 8, scope: !1659)
!1764 = !DILocation(line: 0, scope: !1659)
!1765 = !DILocation(line: 400, column: 27, scope: !1658)
!1766 = !DILocation(line: 400, column: 19, scope: !1658)
!1767 = !DILocation(line: 400, column: 41, scope: !1658)
!1768 = !DILocation(line: 400, column: 48, scope: !1658)
!1769 = !DILocation(line: 400, column: 3, scope: !1659)
!1770 = !DILocation(line: 400, column: 60, scope: !1658)
!1771 = !DILocation(line: 0, scope: !1657)
!1772 = !DILocation(line: 409, column: 11, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1657, file: !128, line: 408, column: 11)
!1774 = !DILocation(line: 411, column: 17, scope: !1773)
!1775 = !DILocation(line: 412, column: 39, scope: !1773)
!1776 = !DILocation(line: 416, column: 32, scope: !1773)
!1777 = !DILocation(line: 412, column: 19, scope: !1773)
!1778 = !DILocation(line: 412, column: 15, scope: !1773)
!1779 = !DILocation(line: 417, column: 11, scope: !1773)
!1780 = !DILocation(line: 417, column: 26, scope: !1773)
!1781 = !DILocation(line: 417, column: 14, scope: !1773)
!1782 = !DILocation(line: 417, column: 63, scope: !1773)
!1783 = !DILocation(line: 408, column: 11, scope: !1657)
!1784 = !DILocation(line: 424, column: 11, scope: !1657)
!1785 = !DILocation(line: 425, column: 7, scope: !1657)
!1786 = !DILocation(line: 428, column: 15, scope: !1666)
!1787 = !DILocation(line: 430, column: 15, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1789, file: !128, line: 430, column: 15)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !128, line: 429, column: 13)
!1790 = distinct !DILexicalBlock(scope: !1666, file: !128, line: 428, column: 15)
!1791 = !DILocation(line: 430, column: 15, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1788, file: !128, line: 430, column: 15)
!1793 = !DILocation(line: 430, column: 15, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1795, file: !128, line: 430, column: 15)
!1795 = distinct !DILexicalBlock(scope: !1796, file: !128, line: 430, column: 15)
!1796 = distinct !DILexicalBlock(scope: !1792, file: !128, line: 430, column: 15)
!1797 = !DILocation(line: 430, column: 15, scope: !1795)
!1798 = !DILocation(line: 430, column: 15, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !128, line: 430, column: 15)
!1800 = distinct !DILexicalBlock(scope: !1796, file: !128, line: 430, column: 15)
!1801 = !DILocation(line: 430, column: 15, scope: !1800)
!1802 = !DILocation(line: 430, column: 15, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !128, line: 430, column: 15)
!1804 = distinct !DILexicalBlock(scope: !1796, file: !128, line: 430, column: 15)
!1805 = !DILocation(line: 430, column: 15, scope: !1804)
!1806 = !DILocation(line: 430, column: 15, scope: !1796)
!1807 = !DILocation(line: 430, column: 15, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !128, line: 430, column: 15)
!1809 = distinct !DILexicalBlock(scope: !1788, file: !128, line: 430, column: 15)
!1810 = !DILocation(line: 430, column: 15, scope: !1809)
!1811 = !DILocation(line: 438, column: 19, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1789, file: !128, line: 437, column: 19)
!1813 = !DILocation(line: 438, column: 48, scope: !1812)
!1814 = !DILocation(line: 438, column: 59, scope: !1812)
!1815 = !DILocation(line: 440, column: 19, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1817, file: !128, line: 440, column: 19)
!1817 = distinct !DILexicalBlock(scope: !1818, file: !128, line: 440, column: 19)
!1818 = distinct !DILexicalBlock(scope: !1812, file: !128, line: 439, column: 17)
!1819 = !DILocation(line: 440, column: 19, scope: !1817)
!1820 = !DILocation(line: 441, column: 19, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1822, file: !128, line: 441, column: 19)
!1822 = distinct !DILexicalBlock(scope: !1818, file: !128, line: 441, column: 19)
!1823 = !DILocation(line: 441, column: 19, scope: !1822)
!1824 = !DILocation(line: 442, column: 17, scope: !1818)
!1825 = !DILocation(line: 449, column: 20, scope: !1790)
!1826 = !DILocation(line: 454, column: 11, scope: !1666)
!1827 = !DILocation(line: 457, column: 19, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1666, file: !128, line: 455, column: 13)
!1829 = !DILocation(line: 463, column: 19, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1828, file: !128, line: 462, column: 19)
!1831 = !DILocation(line: 463, column: 47, scope: !1830)
!1832 = !DILocation(line: 463, column: 41, scope: !1830)
!1833 = !DILocation(line: 463, column: 52, scope: !1830)
!1834 = !DILocation(line: 462, column: 19, scope: !1828)
!1835 = !DILocation(line: 464, column: 25, scope: !1830)
!1836 = !DILocation(line: 464, column: 17, scope: !1830)
!1837 = !DILocation(line: 471, column: 25, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1830, file: !128, line: 465, column: 19)
!1839 = !DILocation(line: 475, column: 21, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1841, file: !128, line: 475, column: 21)
!1841 = distinct !DILexicalBlock(scope: !1838, file: !128, line: 475, column: 21)
!1842 = !DILocation(line: 475, column: 21, scope: !1841)
!1843 = !DILocation(line: 476, column: 21, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !128, line: 476, column: 21)
!1845 = distinct !DILexicalBlock(scope: !1838, file: !128, line: 476, column: 21)
!1846 = !DILocation(line: 476, column: 21, scope: !1845)
!1847 = !DILocation(line: 477, column: 21, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !128, line: 477, column: 21)
!1849 = distinct !DILexicalBlock(scope: !1838, file: !128, line: 477, column: 21)
!1850 = !DILocation(line: 477, column: 21, scope: !1849)
!1851 = !DILocation(line: 478, column: 21, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1853, file: !128, line: 478, column: 21)
!1853 = distinct !DILexicalBlock(scope: !1838, file: !128, line: 478, column: 21)
!1854 = !DILocation(line: 478, column: 21, scope: !1853)
!1855 = !DILocation(line: 479, column: 21, scope: !1838)
!1856 = !DILocation(line: 492, column: 31, scope: !1666)
!1857 = !DILocation(line: 493, column: 31, scope: !1666)
!1858 = !DILocation(line: 495, column: 31, scope: !1666)
!1859 = !DILocation(line: 496, column: 31, scope: !1666)
!1860 = !DILocation(line: 497, column: 31, scope: !1666)
!1861 = !DILocation(line: 500, column: 15, scope: !1666)
!1862 = !DILocation(line: 502, column: 19, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !128, line: 501, column: 13)
!1864 = distinct !DILexicalBlock(scope: !1666, file: !128, line: 500, column: 15)
!1865 = !DILocation(line: 509, column: 33, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1666, file: !128, line: 509, column: 15)
!1867 = !DILocation(line: 0, scope: !1666)
!1868 = !DILocation(line: 512, column: 9, scope: !1666)
!1869 = !DILocation(line: 514, column: 15, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1666, file: !128, line: 513, column: 15)
!1871 = !DILocation(line: 517, column: 9, scope: !1666)
!1872 = !DILocation(line: 518, column: 15, scope: !1666)
!1873 = !DILocation(line: 526, column: 15, scope: !1666)
!1874 = !DILocation(line: 526, column: 40, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1666, file: !128, line: 526, column: 15)
!1876 = !DILocation(line: 526, column: 47, scope: !1875)
!1877 = !DILocation(line: 526, column: 18, scope: !1875)
!1878 = !DILocation(line: 530, column: 17, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1666, file: !128, line: 530, column: 15)
!1880 = !DILocation(line: 530, column: 15, scope: !1666)
!1881 = !DILocation(line: 535, column: 11, scope: !1666)
!1882 = !DILocation(line: 549, column: 15, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1666, file: !128, line: 548, column: 15)
!1884 = !DILocation(line: 556, column: 15, scope: !1666)
!1885 = !DILocation(line: 558, column: 19, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !128, line: 557, column: 13)
!1887 = distinct !DILexicalBlock(scope: !1666, file: !128, line: 556, column: 15)
!1888 = !DILocation(line: 561, column: 19, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1886, file: !128, line: 561, column: 19)
!1890 = !DILocation(line: 561, column: 30, scope: !1889)
!1891 = !DILocation(line: 570, column: 15, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1893, file: !128, line: 570, column: 15)
!1893 = distinct !DILexicalBlock(scope: !1886, file: !128, line: 570, column: 15)
!1894 = !DILocation(line: 570, column: 15, scope: !1893)
!1895 = !DILocation(line: 571, column: 15, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !128, line: 571, column: 15)
!1897 = distinct !DILexicalBlock(scope: !1886, file: !128, line: 571, column: 15)
!1898 = !DILocation(line: 571, column: 15, scope: !1897)
!1899 = !DILocation(line: 572, column: 15, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !128, line: 572, column: 15)
!1901 = distinct !DILexicalBlock(scope: !1886, file: !128, line: 572, column: 15)
!1902 = !DILocation(line: 572, column: 15, scope: !1901)
!1903 = !DILocation(line: 574, column: 13, scope: !1886)
!1904 = !DILocation(line: 614, column: 17, scope: !1665)
!1905 = !DILocation(line: 0, scope: !1665)
!1906 = !DILocation(line: 617, column: 29, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1670, file: !128, line: 615, column: 15)
!1908 = !{!1209, !1209, i64 0}
!1909 = !DILocation(line: 617, column: 27, scope: !1907)
!1910 = !DILocation(line: 678, column: 40, scope: !1665)
!1911 = !DILocation(line: 680, column: 23, scope: !1697)
!1912 = !DILocation(line: 621, column: 17, scope: !1669)
!1913 = !DILocation(line: 621, column: 27, scope: !1669)
!1914 = !DILocalVariable(name: "__dest", arg: 1, scope: !1915, file: !1916, line: 57, type: !41)
!1915 = distinct !DISubprogram(name: "memset", scope: !1916, file: !1916, line: 57, type: !1917, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !1919)
!1916 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1917 = !DISubroutineType(types: !1918)
!1918 = !{!41, !41, !47, !48}
!1919 = !{!1914, !1920, !1921}
!1920 = !DILocalVariable(name: "__ch", arg: 2, scope: !1915, file: !1916, line: 57, type: !47)
!1921 = !DILocalVariable(name: "__len", arg: 3, scope: !1915, file: !1916, line: 57, type: !48)
!1922 = !DILocation(line: 0, scope: !1915, inlinedAt: !1923)
!1923 = distinct !DILocation(line: 622, column: 17, scope: !1669)
!1924 = !DILocation(line: 59, column: 10, scope: !1915, inlinedAt: !1923)
!1925 = !DILocation(line: 626, column: 29, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1669, file: !128, line: 626, column: 21)
!1927 = !DILocation(line: 626, column: 21, scope: !1669)
!1928 = !DILocation(line: 627, column: 29, scope: !1926)
!1929 = !DILocation(line: 627, column: 19, scope: !1926)
!1930 = !DILocation(line: 629, column: 17, scope: !1669)
!1931 = !DILocation(line: 624, column: 19, scope: !1669)
!1932 = !DILocation(line: 625, column: 27, scope: !1669)
!1933 = !DILocation(line: 631, column: 21, scope: !1685)
!1934 = !DILocation(line: 632, column: 56, scope: !1685)
!1935 = !DILocation(line: 632, column: 50, scope: !1685)
!1936 = !DILocation(line: 633, column: 53, scope: !1685)
!1937 = !DILocation(line: 0, scope: !1685)
!1938 = !DILocation(line: 632, column: 36, scope: !1685)
!1939 = !DILocation(line: 634, column: 25, scope: !1685)
!1940 = !DILocation(line: 644, column: 38, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1692, file: !128, line: 642, column: 23)
!1942 = !DILocation(line: 644, column: 48, scope: !1941)
!1943 = !DILocation(line: 644, column: 25, scope: !1941)
!1944 = !DILocation(line: 644, column: 51, scope: !1941)
!1945 = !DILocation(line: 645, column: 28, scope: !1941)
!1946 = !DILocation(line: 644, column: 34, scope: !1941)
!1947 = distinct !{!1947, !1943, !1945, !716}
!1948 = !DILocation(line: 655, column: 29, scope: !1690)
!1949 = !DILocation(line: 0, scope: !1689)
!1950 = !DILocation(line: 659, column: 49, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !128, line: 658, column: 29)
!1952 = distinct !DILexicalBlock(scope: !1689, file: !128, line: 658, column: 29)
!1953 = !DILocation(line: 659, column: 39, scope: !1951)
!1954 = !DILocation(line: 659, column: 31, scope: !1951)
!1955 = !DILocation(line: 658, column: 53, scope: !1951)
!1956 = !DILocation(line: 658, column: 43, scope: !1951)
!1957 = !DILocation(line: 658, column: 29, scope: !1952)
!1958 = distinct !{!1958, !1957, !1959, !716}
!1959 = !DILocation(line: 667, column: 33, scope: !1952)
!1960 = !DILocation(line: 674, column: 19, scope: !1669)
!1961 = !DILocation(line: 670, column: 41, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1691, file: !128, line: 670, column: 29)
!1963 = !DILocation(line: 670, column: 31, scope: !1962)
!1964 = !DILocation(line: 670, column: 29, scope: !1691)
!1965 = !DILocation(line: 672, column: 27, scope: !1691)
!1966 = !DILocation(line: 675, column: 26, scope: !1669)
!1967 = !DILocation(line: 675, column: 24, scope: !1669)
!1968 = !DILocation(line: 674, column: 19, scope: !1685)
!1969 = distinct !{!1969, !1930, !1970, !716}
!1970 = !DILocation(line: 675, column: 44, scope: !1669)
!1971 = !DILocation(line: 676, column: 15, scope: !1670)
!1972 = !DILocation(line: 680, column: 19, scope: !1697)
!1973 = !DILocation(line: 680, column: 45, scope: !1697)
!1974 = !DILocation(line: 684, column: 33, scope: !1696)
!1975 = !DILocation(line: 0, scope: !1696)
!1976 = !DILocation(line: 686, column: 17, scope: !1696)
!1977 = !DILocation(line: 405, column: 12, scope: !1657)
!1978 = !DILocation(line: 688, column: 43, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !128, line: 688, column: 25)
!1980 = distinct !DILexicalBlock(scope: !1981, file: !128, line: 687, column: 19)
!1981 = distinct !DILexicalBlock(scope: !1982, file: !128, line: 686, column: 17)
!1982 = distinct !DILexicalBlock(scope: !1696, file: !128, line: 686, column: 17)
!1983 = !DILocation(line: 690, column: 25, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !128, line: 690, column: 25)
!1985 = distinct !DILexicalBlock(scope: !1979, file: !128, line: 689, column: 23)
!1986 = !DILocation(line: 690, column: 25, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1984, file: !128, line: 690, column: 25)
!1988 = !DILocation(line: 690, column: 25, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !128, line: 690, column: 25)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !128, line: 690, column: 25)
!1991 = distinct !DILexicalBlock(scope: !1987, file: !128, line: 690, column: 25)
!1992 = !DILocation(line: 690, column: 25, scope: !1990)
!1993 = !DILocation(line: 690, column: 25, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !128, line: 690, column: 25)
!1995 = distinct !DILexicalBlock(scope: !1991, file: !128, line: 690, column: 25)
!1996 = !DILocation(line: 690, column: 25, scope: !1995)
!1997 = !DILocation(line: 690, column: 25, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !128, line: 690, column: 25)
!1999 = distinct !DILexicalBlock(scope: !1991, file: !128, line: 690, column: 25)
!2000 = !DILocation(line: 690, column: 25, scope: !1999)
!2001 = !DILocation(line: 690, column: 25, scope: !1991)
!2002 = !DILocation(line: 690, column: 25, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !128, line: 690, column: 25)
!2004 = distinct !DILexicalBlock(scope: !1984, file: !128, line: 690, column: 25)
!2005 = !DILocation(line: 690, column: 25, scope: !2004)
!2006 = !DILocation(line: 691, column: 25, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !128, line: 691, column: 25)
!2008 = distinct !DILexicalBlock(scope: !1985, file: !128, line: 691, column: 25)
!2009 = !DILocation(line: 691, column: 25, scope: !2008)
!2010 = !DILocation(line: 692, column: 25, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !128, line: 692, column: 25)
!2012 = distinct !DILexicalBlock(scope: !1985, file: !128, line: 692, column: 25)
!2013 = !DILocation(line: 692, column: 25, scope: !2012)
!2014 = !DILocation(line: 693, column: 38, scope: !1985)
!2015 = !DILocation(line: 693, column: 33, scope: !1985)
!2016 = !DILocation(line: 694, column: 23, scope: !1985)
!2017 = !DILocation(line: 695, column: 30, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !1979, file: !128, line: 695, column: 30)
!2019 = !DILocation(line: 695, column: 30, scope: !1979)
!2020 = !DILocation(line: 697, column: 25, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !128, line: 697, column: 25)
!2022 = distinct !DILexicalBlock(scope: !2023, file: !128, line: 697, column: 25)
!2023 = distinct !DILexicalBlock(scope: !2018, file: !128, line: 696, column: 23)
!2024 = !DILocation(line: 697, column: 25, scope: !2022)
!2025 = !DILocation(line: 699, column: 23, scope: !2023)
!2026 = !DILocation(line: 700, column: 35, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !1980, file: !128, line: 700, column: 25)
!2028 = !DILocation(line: 700, column: 30, scope: !2027)
!2029 = !DILocation(line: 700, column: 25, scope: !1980)
!2030 = !DILocation(line: 702, column: 21, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2032, file: !128, line: 702, column: 21)
!2032 = distinct !DILexicalBlock(scope: !1980, file: !128, line: 702, column: 21)
!2033 = !DILocation(line: 702, column: 21, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2035, file: !128, line: 702, column: 21)
!2035 = distinct !DILexicalBlock(scope: !2036, file: !128, line: 702, column: 21)
!2036 = distinct !DILexicalBlock(scope: !2031, file: !128, line: 702, column: 21)
!2037 = !DILocation(line: 702, column: 21, scope: !2035)
!2038 = !DILocation(line: 702, column: 21, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2040, file: !128, line: 702, column: 21)
!2040 = distinct !DILexicalBlock(scope: !2036, file: !128, line: 702, column: 21)
!2041 = !DILocation(line: 702, column: 21, scope: !2040)
!2042 = !DILocation(line: 702, column: 21, scope: !2036)
!2043 = !DILocation(line: 0, scope: !1980)
!2044 = !DILocation(line: 703, column: 21, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !128, line: 703, column: 21)
!2046 = distinct !DILexicalBlock(scope: !1980, file: !128, line: 703, column: 21)
!2047 = !DILocation(line: 703, column: 21, scope: !2046)
!2048 = !DILocation(line: 704, column: 25, scope: !1980)
!2049 = !DILocation(line: 686, column: 17, scope: !1981)
!2050 = distinct !{!2050, !2051, !2052}
!2051 = !DILocation(line: 686, column: 17, scope: !1982)
!2052 = !DILocation(line: 705, column: 19, scope: !1982)
!2053 = !DILocation(line: 416, column: 30, scope: !1773)
!2054 = !DILocation(line: 712, column: 34, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !1657, file: !128, line: 712, column: 11)
!2056 = !DILocation(line: 715, column: 35, scope: !2055)
!2057 = !DILocation(line: 715, column: 17, scope: !2055)
!2058 = !DILocation(line: 715, column: 47, scope: !2055)
!2059 = !DILocation(line: 715, column: 65, scope: !2055)
!2060 = !DILocation(line: 716, column: 11, scope: !2055)
!2061 = !DILocation(line: 712, column: 11, scope: !1657)
!2062 = !DILocation(line: 400, column: 10, scope: !1659)
!2063 = !DILocation(line: 719, column: 5, scope: !1657)
!2064 = !DILocation(line: 720, column: 7, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !1657, file: !128, line: 720, column: 7)
!2066 = !DILocation(line: 720, column: 7, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2065, file: !128, line: 720, column: 7)
!2068 = !DILocation(line: 720, column: 7, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !128, line: 720, column: 7)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !128, line: 720, column: 7)
!2071 = distinct !DILexicalBlock(scope: !2067, file: !128, line: 720, column: 7)
!2072 = !DILocation(line: 720, column: 7, scope: !2070)
!2073 = !DILocation(line: 720, column: 7, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !128, line: 720, column: 7)
!2075 = distinct !DILexicalBlock(scope: !2071, file: !128, line: 720, column: 7)
!2076 = !DILocation(line: 720, column: 7, scope: !2075)
!2077 = !DILocation(line: 720, column: 7, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2079, file: !128, line: 720, column: 7)
!2079 = distinct !DILexicalBlock(scope: !2071, file: !128, line: 720, column: 7)
!2080 = !DILocation(line: 720, column: 7, scope: !2079)
!2081 = !DILocation(line: 720, column: 7, scope: !2071)
!2082 = !DILocation(line: 720, column: 7, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2084, file: !128, line: 720, column: 7)
!2084 = distinct !DILexicalBlock(scope: !2065, file: !128, line: 720, column: 7)
!2085 = !DILocation(line: 720, column: 7, scope: !2084)
!2086 = !DILocation(line: 722, column: 5, scope: !1657)
!2087 = !DILocation(line: 723, column: 7, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2089, file: !128, line: 723, column: 7)
!2089 = distinct !DILexicalBlock(scope: !1657, file: !128, line: 723, column: 7)
!2090 = !DILocation(line: 424, column: 9, scope: !1657)
!2091 = !DILocation(line: 723, column: 7, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2093, file: !128, line: 723, column: 7)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !128, line: 723, column: 7)
!2094 = distinct !DILexicalBlock(scope: !2088, file: !128, line: 723, column: 7)
!2095 = !DILocation(line: 723, column: 7, scope: !2093)
!2096 = !DILocation(line: 723, column: 7, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2098, file: !128, line: 723, column: 7)
!2098 = distinct !DILexicalBlock(scope: !2094, file: !128, line: 723, column: 7)
!2099 = !DILocation(line: 723, column: 7, scope: !2098)
!2100 = !DILocation(line: 723, column: 7, scope: !2094)
!2101 = !DILocation(line: 724, column: 7, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2103, file: !128, line: 724, column: 7)
!2103 = distinct !DILexicalBlock(scope: !1657, file: !128, line: 724, column: 7)
!2104 = !DILocation(line: 724, column: 7, scope: !2103)
!2105 = !DILocation(line: 726, column: 13, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !1657, file: !128, line: 726, column: 11)
!2107 = !DILocation(line: 726, column: 11, scope: !1657)
!2108 = !DILocation(line: 728, column: 5, scope: !1658)
!2109 = !DILocation(line: 400, column: 75, scope: !1658)
!2110 = !DILocation(line: 400, column: 3, scope: !1658)
!2111 = distinct !{!2111, !1769, !2112, !716}
!2112 = !DILocation(line: 728, column: 5, scope: !1659)
!2113 = !DILocation(line: 730, column: 11, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !1630, file: !128, line: 730, column: 7)
!2115 = !DILocation(line: 730, column: 16, scope: !2114)
!2116 = !DILocation(line: 738, column: 51, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !1630, file: !128, line: 738, column: 7)
!2118 = !DILocation(line: 741, column: 11, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2120, file: !128, line: 741, column: 11)
!2120 = distinct !DILexicalBlock(scope: !2117, file: !128, line: 740, column: 5)
!2121 = !DILocation(line: 741, column: 11, scope: !2120)
!2122 = !DILocation(line: 742, column: 16, scope: !2119)
!2123 = !DILocation(line: 742, column: 9, scope: !2119)
!2124 = !DILocation(line: 746, column: 18, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2119, file: !128, line: 746, column: 16)
!2126 = !DILocation(line: 746, column: 29, scope: !2125)
!2127 = !DILocation(line: 755, column: 7, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !1630, file: !128, line: 755, column: 7)
!2129 = !DILocation(line: 755, column: 20, scope: !2128)
!2130 = !DILocation(line: 756, column: 12, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2132, file: !128, line: 756, column: 5)
!2132 = distinct !DILexicalBlock(scope: !2128, file: !128, line: 756, column: 5)
!2133 = !DILocation(line: 756, column: 5, scope: !2132)
!2134 = !DILocation(line: 757, column: 7, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2136, file: !128, line: 757, column: 7)
!2136 = distinct !DILexicalBlock(scope: !2131, file: !128, line: 757, column: 7)
!2137 = !DILocation(line: 757, column: 7, scope: !2136)
!2138 = !DILocation(line: 756, column: 39, scope: !2131)
!2139 = distinct !{!2139, !2133, !2140, !716}
!2140 = !DILocation(line: 757, column: 7, scope: !2132)
!2141 = !DILocation(line: 759, column: 11, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !1630, file: !128, line: 759, column: 7)
!2143 = !DILocation(line: 759, column: 7, scope: !1630)
!2144 = !DILocation(line: 760, column: 5, scope: !2142)
!2145 = !DILocation(line: 760, column: 17, scope: !2142)
!2146 = !DILocation(line: 763, column: 2, scope: !1630)
!2147 = !DILocation(line: 766, column: 51, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !1630, file: !128, line: 766, column: 7)
!2149 = !DILocation(line: 766, column: 21, scope: !2148)
!2150 = !DILocation(line: 770, column: 42, scope: !1630)
!2151 = !DILocation(line: 768, column: 10, scope: !1630)
!2152 = !DILocation(line: 768, column: 3, scope: !1630)
!2153 = !DILocation(line: 772, column: 1, scope: !1630)
!2154 = distinct !DISubprogram(name: "gettext_quote", scope: !128, file: !128, line: 207, type: !2155, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !2157)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!51, !51, !22}
!2157 = !{!2158, !2159, !2160, !2161}
!2158 = !DILocalVariable(name: "msgid", arg: 1, scope: !2154, file: !128, line: 207, type: !51)
!2159 = !DILocalVariable(name: "s", arg: 2, scope: !2154, file: !128, line: 207, type: !22)
!2160 = !DILocalVariable(name: "translation", scope: !2154, file: !128, line: 209, type: !51)
!2161 = !DILocalVariable(name: "locale_code", scope: !2154, file: !128, line: 210, type: !51)
!2162 = !DILocation(line: 0, scope: !2154)
!2163 = !DILocation(line: 209, column: 29, scope: !2154)
!2164 = !DILocation(line: 212, column: 19, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2154, file: !128, line: 212, column: 7)
!2166 = !DILocation(line: 212, column: 7, scope: !2154)
!2167 = !DILocation(line: 233, column: 17, scope: !2154)
!2168 = !DILocalVariable(name: "s1", arg: 1, scope: !2169, file: !2170, line: 160, type: !51)
!2169 = distinct !DISubprogram(name: "strcaseeq0", scope: !2170, file: !2170, line: 160, type: !2171, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !2173)
!2170 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!47, !51, !51, !40, !40, !40, !40, !40, !40, !40, !40, !40}
!2173 = !{!2168, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183}
!2174 = !DILocalVariable(name: "s2", arg: 2, scope: !2169, file: !2170, line: 160, type: !51)
!2175 = !DILocalVariable(name: "s20", arg: 3, scope: !2169, file: !2170, line: 160, type: !40)
!2176 = !DILocalVariable(name: "s21", arg: 4, scope: !2169, file: !2170, line: 160, type: !40)
!2177 = !DILocalVariable(name: "s22", arg: 5, scope: !2169, file: !2170, line: 160, type: !40)
!2178 = !DILocalVariable(name: "s23", arg: 6, scope: !2169, file: !2170, line: 160, type: !40)
!2179 = !DILocalVariable(name: "s24", arg: 7, scope: !2169, file: !2170, line: 160, type: !40)
!2180 = !DILocalVariable(name: "s25", arg: 8, scope: !2169, file: !2170, line: 160, type: !40)
!2181 = !DILocalVariable(name: "s26", arg: 9, scope: !2169, file: !2170, line: 160, type: !40)
!2182 = !DILocalVariable(name: "s27", arg: 10, scope: !2169, file: !2170, line: 160, type: !40)
!2183 = !DILocalVariable(name: "s28", arg: 11, scope: !2169, file: !2170, line: 160, type: !40)
!2184 = !DILocation(line: 0, scope: !2169, inlinedAt: !2185)
!2185 = distinct !DILocation(line: 234, column: 7, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2154, file: !128, line: 234, column: 7)
!2187 = !DILocation(line: 162, column: 7, scope: !2188, inlinedAt: !2185)
!2188 = distinct !DILexicalBlock(scope: !2169, file: !2170, line: 162, column: 7)
!2189 = !DILocalVariable(name: "s1", arg: 1, scope: !2190, file: !2170, line: 146, type: !51)
!2190 = distinct !DISubprogram(name: "strcaseeq1", scope: !2170, file: !2170, line: 146, type: !2191, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !2193)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{!47, !51, !51, !40, !40, !40, !40, !40, !40, !40, !40}
!2193 = !{!2189, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202}
!2194 = !DILocalVariable(name: "s2", arg: 2, scope: !2190, file: !2170, line: 146, type: !51)
!2195 = !DILocalVariable(name: "s21", arg: 3, scope: !2190, file: !2170, line: 146, type: !40)
!2196 = !DILocalVariable(name: "s22", arg: 4, scope: !2190, file: !2170, line: 146, type: !40)
!2197 = !DILocalVariable(name: "s23", arg: 5, scope: !2190, file: !2170, line: 146, type: !40)
!2198 = !DILocalVariable(name: "s24", arg: 6, scope: !2190, file: !2170, line: 146, type: !40)
!2199 = !DILocalVariable(name: "s25", arg: 7, scope: !2190, file: !2170, line: 146, type: !40)
!2200 = !DILocalVariable(name: "s26", arg: 8, scope: !2190, file: !2170, line: 146, type: !40)
!2201 = !DILocalVariable(name: "s27", arg: 9, scope: !2190, file: !2170, line: 146, type: !40)
!2202 = !DILocalVariable(name: "s28", arg: 10, scope: !2190, file: !2170, line: 146, type: !40)
!2203 = !DILocation(line: 0, scope: !2190, inlinedAt: !2204)
!2204 = distinct !DILocation(line: 167, column: 16, scope: !2205, inlinedAt: !2185)
!2205 = distinct !DILexicalBlock(scope: !2206, file: !2170, line: 164, column: 11)
!2206 = distinct !DILexicalBlock(scope: !2188, file: !2170, line: 163, column: 5)
!2207 = !DILocation(line: 148, column: 7, scope: !2208, inlinedAt: !2204)
!2208 = distinct !DILexicalBlock(scope: !2190, file: !2170, line: 148, column: 7)
!2209 = !DILocalVariable(name: "s1", arg: 1, scope: !2210, file: !2170, line: 132, type: !51)
!2210 = distinct !DISubprogram(name: "strcaseeq2", scope: !2170, file: !2170, line: 132, type: !2211, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !2213)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{!47, !51, !51, !40, !40, !40, !40, !40, !40, !40}
!2213 = !{!2209, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221}
!2214 = !DILocalVariable(name: "s2", arg: 2, scope: !2210, file: !2170, line: 132, type: !51)
!2215 = !DILocalVariable(name: "s22", arg: 3, scope: !2210, file: !2170, line: 132, type: !40)
!2216 = !DILocalVariable(name: "s23", arg: 4, scope: !2210, file: !2170, line: 132, type: !40)
!2217 = !DILocalVariable(name: "s24", arg: 5, scope: !2210, file: !2170, line: 132, type: !40)
!2218 = !DILocalVariable(name: "s25", arg: 6, scope: !2210, file: !2170, line: 132, type: !40)
!2219 = !DILocalVariable(name: "s26", arg: 7, scope: !2210, file: !2170, line: 132, type: !40)
!2220 = !DILocalVariable(name: "s27", arg: 8, scope: !2210, file: !2170, line: 132, type: !40)
!2221 = !DILocalVariable(name: "s28", arg: 9, scope: !2210, file: !2170, line: 132, type: !40)
!2222 = !DILocation(line: 0, scope: !2210, inlinedAt: !2223)
!2223 = distinct !DILocation(line: 153, column: 16, scope: !2224, inlinedAt: !2204)
!2224 = distinct !DILexicalBlock(scope: !2225, file: !2170, line: 150, column: 11)
!2225 = distinct !DILexicalBlock(scope: !2208, file: !2170, line: 149, column: 5)
!2226 = !DILocation(line: 134, column: 7, scope: !2227, inlinedAt: !2223)
!2227 = distinct !DILexicalBlock(scope: !2210, file: !2170, line: 134, column: 7)
!2228 = !DILocalVariable(name: "s1", arg: 1, scope: !2229, file: !2170, line: 118, type: !51)
!2229 = distinct !DISubprogram(name: "strcaseeq3", scope: !2170, file: !2170, line: 118, type: !2230, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !2232)
!2230 = !DISubroutineType(types: !2231)
!2231 = !{!47, !51, !51, !40, !40, !40, !40, !40, !40}
!2232 = !{!2228, !2233, !2234, !2235, !2236, !2237, !2238, !2239}
!2233 = !DILocalVariable(name: "s2", arg: 2, scope: !2229, file: !2170, line: 118, type: !51)
!2234 = !DILocalVariable(name: "s23", arg: 3, scope: !2229, file: !2170, line: 118, type: !40)
!2235 = !DILocalVariable(name: "s24", arg: 4, scope: !2229, file: !2170, line: 118, type: !40)
!2236 = !DILocalVariable(name: "s25", arg: 5, scope: !2229, file: !2170, line: 118, type: !40)
!2237 = !DILocalVariable(name: "s26", arg: 6, scope: !2229, file: !2170, line: 118, type: !40)
!2238 = !DILocalVariable(name: "s27", arg: 7, scope: !2229, file: !2170, line: 118, type: !40)
!2239 = !DILocalVariable(name: "s28", arg: 8, scope: !2229, file: !2170, line: 118, type: !40)
!2240 = !DILocation(line: 0, scope: !2229, inlinedAt: !2241)
!2241 = distinct !DILocation(line: 139, column: 16, scope: !2242, inlinedAt: !2223)
!2242 = distinct !DILexicalBlock(scope: !2243, file: !2170, line: 136, column: 11)
!2243 = distinct !DILexicalBlock(scope: !2227, file: !2170, line: 135, column: 5)
!2244 = !DILocation(line: 120, column: 7, scope: !2245, inlinedAt: !2241)
!2245 = distinct !DILexicalBlock(scope: !2229, file: !2170, line: 120, column: 7)
!2246 = !DILocation(line: 120, column: 7, scope: !2229, inlinedAt: !2241)
!2247 = !DILocalVariable(name: "s1", arg: 1, scope: !2248, file: !2170, line: 104, type: !51)
!2248 = distinct !DISubprogram(name: "strcaseeq4", scope: !2170, file: !2170, line: 104, type: !2249, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !2251)
!2249 = !DISubroutineType(types: !2250)
!2250 = !{!47, !51, !51, !40, !40, !40, !40, !40}
!2251 = !{!2247, !2252, !2253, !2254, !2255, !2256, !2257}
!2252 = !DILocalVariable(name: "s2", arg: 2, scope: !2248, file: !2170, line: 104, type: !51)
!2253 = !DILocalVariable(name: "s24", arg: 3, scope: !2248, file: !2170, line: 104, type: !40)
!2254 = !DILocalVariable(name: "s25", arg: 4, scope: !2248, file: !2170, line: 104, type: !40)
!2255 = !DILocalVariable(name: "s26", arg: 5, scope: !2248, file: !2170, line: 104, type: !40)
!2256 = !DILocalVariable(name: "s27", arg: 6, scope: !2248, file: !2170, line: 104, type: !40)
!2257 = !DILocalVariable(name: "s28", arg: 7, scope: !2248, file: !2170, line: 104, type: !40)
!2258 = !DILocation(line: 0, scope: !2248, inlinedAt: !2259)
!2259 = distinct !DILocation(line: 125, column: 16, scope: !2260, inlinedAt: !2241)
!2260 = distinct !DILexicalBlock(scope: !2261, file: !2170, line: 122, column: 11)
!2261 = distinct !DILexicalBlock(scope: !2245, file: !2170, line: 121, column: 5)
!2262 = !DILocation(line: 106, column: 7, scope: !2263, inlinedAt: !2259)
!2263 = distinct !DILexicalBlock(scope: !2248, file: !2170, line: 106, column: 7)
!2264 = !DILocation(line: 106, column: 7, scope: !2248, inlinedAt: !2259)
!2265 = !DILocalVariable(name: "s1", arg: 1, scope: !2266, file: !2170, line: 90, type: !51)
!2266 = distinct !DISubprogram(name: "strcaseeq5", scope: !2170, file: !2170, line: 90, type: !2267, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !2269)
!2267 = !DISubroutineType(types: !2268)
!2268 = !{!47, !51, !51, !40, !40, !40, !40}
!2269 = !{!2265, !2270, !2271, !2272, !2273, !2274}
!2270 = !DILocalVariable(name: "s2", arg: 2, scope: !2266, file: !2170, line: 90, type: !51)
!2271 = !DILocalVariable(name: "s25", arg: 3, scope: !2266, file: !2170, line: 90, type: !40)
!2272 = !DILocalVariable(name: "s26", arg: 4, scope: !2266, file: !2170, line: 90, type: !40)
!2273 = !DILocalVariable(name: "s27", arg: 5, scope: !2266, file: !2170, line: 90, type: !40)
!2274 = !DILocalVariable(name: "s28", arg: 6, scope: !2266, file: !2170, line: 90, type: !40)
!2275 = !DILocation(line: 0, scope: !2266, inlinedAt: !2276)
!2276 = distinct !DILocation(line: 111, column: 16, scope: !2277, inlinedAt: !2259)
!2277 = distinct !DILexicalBlock(scope: !2278, file: !2170, line: 108, column: 11)
!2278 = distinct !DILexicalBlock(scope: !2263, file: !2170, line: 107, column: 5)
!2279 = !DILocation(line: 92, column: 7, scope: !2280, inlinedAt: !2276)
!2280 = distinct !DILexicalBlock(scope: !2266, file: !2170, line: 92, column: 7)
!2281 = !DILocation(line: 92, column: 7, scope: !2266, inlinedAt: !2276)
!2282 = !DILocation(line: 235, column: 12, scope: !2186)
!2283 = !DILocation(line: 235, column: 21, scope: !2186)
!2284 = !DILocation(line: 235, column: 5, scope: !2186)
!2285 = !DILocation(line: 0, scope: !2190, inlinedAt: !2286)
!2286 = distinct !DILocation(line: 167, column: 16, scope: !2205, inlinedAt: !2287)
!2287 = distinct !DILocation(line: 236, column: 7, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2154, file: !128, line: 236, column: 7)
!2289 = !DILocation(line: 148, column: 7, scope: !2208, inlinedAt: !2286)
!2290 = !DILocation(line: 0, scope: !2210, inlinedAt: !2291)
!2291 = distinct !DILocation(line: 153, column: 16, scope: !2224, inlinedAt: !2286)
!2292 = !DILocation(line: 134, column: 7, scope: !2227, inlinedAt: !2291)
!2293 = !DILocation(line: 134, column: 7, scope: !2210, inlinedAt: !2291)
!2294 = !DILocation(line: 0, scope: !2229, inlinedAt: !2295)
!2295 = distinct !DILocation(line: 139, column: 16, scope: !2242, inlinedAt: !2291)
!2296 = !DILocation(line: 120, column: 7, scope: !2245, inlinedAt: !2295)
!2297 = !DILocation(line: 120, column: 7, scope: !2229, inlinedAt: !2295)
!2298 = !DILocation(line: 0, scope: !2248, inlinedAt: !2299)
!2299 = distinct !DILocation(line: 125, column: 16, scope: !2260, inlinedAt: !2295)
!2300 = !DILocation(line: 106, column: 7, scope: !2263, inlinedAt: !2299)
!2301 = !DILocation(line: 106, column: 7, scope: !2248, inlinedAt: !2299)
!2302 = !DILocation(line: 0, scope: !2266, inlinedAt: !2303)
!2303 = distinct !DILocation(line: 111, column: 16, scope: !2277, inlinedAt: !2299)
!2304 = !DILocation(line: 92, column: 7, scope: !2280, inlinedAt: !2303)
!2305 = !DILocation(line: 92, column: 7, scope: !2266, inlinedAt: !2303)
!2306 = !DILocalVariable(name: "s1", arg: 1, scope: !2307, file: !2170, line: 76, type: !51)
!2307 = distinct !DISubprogram(name: "strcaseeq6", scope: !2170, file: !2170, line: 76, type: !2308, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !2310)
!2308 = !DISubroutineType(types: !2309)
!2309 = !{!47, !51, !51, !40, !40, !40}
!2310 = !{!2306, !2311, !2312, !2313, !2314}
!2311 = !DILocalVariable(name: "s2", arg: 2, scope: !2307, file: !2170, line: 76, type: !51)
!2312 = !DILocalVariable(name: "s26", arg: 3, scope: !2307, file: !2170, line: 76, type: !40)
!2313 = !DILocalVariable(name: "s27", arg: 4, scope: !2307, file: !2170, line: 76, type: !40)
!2314 = !DILocalVariable(name: "s28", arg: 5, scope: !2307, file: !2170, line: 76, type: !40)
!2315 = !DILocation(line: 0, scope: !2307, inlinedAt: !2316)
!2316 = distinct !DILocation(line: 97, column: 16, scope: !2317, inlinedAt: !2303)
!2317 = distinct !DILexicalBlock(scope: !2318, file: !2170, line: 94, column: 11)
!2318 = distinct !DILexicalBlock(scope: !2280, file: !2170, line: 93, column: 5)
!2319 = !DILocation(line: 78, column: 7, scope: !2320, inlinedAt: !2316)
!2320 = distinct !DILexicalBlock(scope: !2307, file: !2170, line: 78, column: 7)
!2321 = !DILocation(line: 78, column: 7, scope: !2307, inlinedAt: !2316)
!2322 = !DILocalVariable(name: "s1", arg: 1, scope: !2323, file: !2170, line: 62, type: !51)
!2323 = distinct !DISubprogram(name: "strcaseeq7", scope: !2170, file: !2170, line: 62, type: !2324, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !2326)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{!47, !51, !51, !40, !40}
!2326 = !{!2322, !2327, !2328, !2329}
!2327 = !DILocalVariable(name: "s2", arg: 2, scope: !2323, file: !2170, line: 62, type: !51)
!2328 = !DILocalVariable(name: "s27", arg: 3, scope: !2323, file: !2170, line: 62, type: !40)
!2329 = !DILocalVariable(name: "s28", arg: 4, scope: !2323, file: !2170, line: 62, type: !40)
!2330 = !DILocation(line: 0, scope: !2323, inlinedAt: !2331)
!2331 = distinct !DILocation(line: 83, column: 16, scope: !2332, inlinedAt: !2316)
!2332 = distinct !DILexicalBlock(scope: !2333, file: !2170, line: 80, column: 11)
!2333 = distinct !DILexicalBlock(scope: !2320, file: !2170, line: 79, column: 5)
!2334 = !DILocation(line: 64, column: 7, scope: !2335, inlinedAt: !2331)
!2335 = distinct !DILexicalBlock(scope: !2323, file: !2170, line: 64, column: 7)
!2336 = !DILocation(line: 236, column: 7, scope: !2154)
!2337 = !DILocation(line: 237, column: 12, scope: !2288)
!2338 = !DILocation(line: 237, column: 21, scope: !2288)
!2339 = !DILocation(line: 237, column: 5, scope: !2288)
!2340 = !DILocation(line: 239, column: 13, scope: !2154)
!2341 = !DILocation(line: 239, column: 11, scope: !2154)
!2342 = !DILocation(line: 239, column: 3, scope: !2154)
!2343 = !DILocation(line: 240, column: 1, scope: !2154)
!2344 = !DISubprogram(name: "iswprint", scope: !2345, file: !2345, line: 120, type: !2346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !92)
!2345 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!2346 = !DISubroutineType(types: !2347)
!2347 = !{!47, !6}
!2348 = !DISubprogram(name: "mbsinit", scope: !2349, file: !2349, line: 292, type: !2350, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !92)
!2349 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!47, !2352}
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1675)
!2354 = distinct !DISubprogram(name: "quotearg_alloc", scope: !128, file: !128, line: 799, type: !2355, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !2357)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!39, !51, !48, !1522}
!2357 = !{!2358, !2359, !2360}
!2358 = !DILocalVariable(name: "arg", arg: 1, scope: !2354, file: !128, line: 799, type: !51)
!2359 = !DILocalVariable(name: "argsize", arg: 2, scope: !2354, file: !128, line: 799, type: !48)
!2360 = !DILocalVariable(name: "o", arg: 3, scope: !2354, file: !128, line: 800, type: !1522)
!2361 = !DILocation(line: 0, scope: !2354)
!2362 = !DILocalVariable(name: "arg", arg: 1, scope: !2363, file: !128, line: 812, type: !51)
!2363 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !128, file: !128, line: 812, type: !2364, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !2366)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!39, !51, !48, !240, !1522}
!2366 = !{!2362, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374}
!2367 = !DILocalVariable(name: "argsize", arg: 2, scope: !2363, file: !128, line: 812, type: !48)
!2368 = !DILocalVariable(name: "size", arg: 3, scope: !2363, file: !128, line: 812, type: !240)
!2369 = !DILocalVariable(name: "o", arg: 4, scope: !2363, file: !128, line: 813, type: !1522)
!2370 = !DILocalVariable(name: "p", scope: !2363, file: !128, line: 815, type: !1522)
!2371 = !DILocalVariable(name: "e", scope: !2363, file: !128, line: 816, type: !47)
!2372 = !DILocalVariable(name: "flags", scope: !2363, file: !128, line: 818, type: !47)
!2373 = !DILocalVariable(name: "bufsize", scope: !2363, file: !128, line: 819, type: !48)
!2374 = !DILocalVariable(name: "buf", scope: !2363, file: !128, line: 823, type: !39)
!2375 = !DILocation(line: 0, scope: !2363, inlinedAt: !2376)
!2376 = distinct !DILocation(line: 802, column: 10, scope: !2354)
!2377 = !DILocation(line: 815, column: 37, scope: !2363, inlinedAt: !2376)
!2378 = !DILocation(line: 816, column: 11, scope: !2363, inlinedAt: !2376)
!2379 = !DILocation(line: 818, column: 18, scope: !2363, inlinedAt: !2376)
!2380 = !DILocation(line: 818, column: 24, scope: !2363, inlinedAt: !2376)
!2381 = !DILocation(line: 819, column: 69, scope: !2363, inlinedAt: !2376)
!2382 = !DILocation(line: 820, column: 53, scope: !2363, inlinedAt: !2376)
!2383 = !DILocation(line: 821, column: 49, scope: !2363, inlinedAt: !2376)
!2384 = !DILocation(line: 822, column: 49, scope: !2363, inlinedAt: !2376)
!2385 = !DILocation(line: 819, column: 20, scope: !2363, inlinedAt: !2376)
!2386 = !DILocation(line: 822, column: 62, scope: !2363, inlinedAt: !2376)
!2387 = !DILocalVariable(name: "n", arg: 1, scope: !2388, file: !236, line: 216, type: !48)
!2388 = distinct !DISubprogram(name: "xcharalloc", scope: !236, file: !236, line: 216, type: !2389, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !2391)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!39, !48}
!2391 = !{!2387}
!2392 = !DILocation(line: 0, scope: !2388, inlinedAt: !2393)
!2393 = distinct !DILocation(line: 823, column: 15, scope: !2363, inlinedAt: !2376)
!2394 = !DILocation(line: 218, column: 10, scope: !2388, inlinedAt: !2393)
!2395 = !DILocation(line: 824, column: 60, scope: !2363, inlinedAt: !2376)
!2396 = !DILocation(line: 826, column: 32, scope: !2363, inlinedAt: !2376)
!2397 = !DILocation(line: 826, column: 47, scope: !2363, inlinedAt: !2376)
!2398 = !DILocation(line: 824, column: 3, scope: !2363, inlinedAt: !2376)
!2399 = !DILocation(line: 827, column: 9, scope: !2363, inlinedAt: !2376)
!2400 = !DILocation(line: 802, column: 3, scope: !2354)
!2401 = !DILocation(line: 0, scope: !2363)
!2402 = !DILocation(line: 815, column: 37, scope: !2363)
!2403 = !DILocation(line: 816, column: 11, scope: !2363)
!2404 = !DILocation(line: 818, column: 18, scope: !2363)
!2405 = !DILocation(line: 818, column: 27, scope: !2363)
!2406 = !DILocation(line: 818, column: 24, scope: !2363)
!2407 = !DILocation(line: 819, column: 69, scope: !2363)
!2408 = !DILocation(line: 820, column: 53, scope: !2363)
!2409 = !DILocation(line: 821, column: 49, scope: !2363)
!2410 = !DILocation(line: 822, column: 49, scope: !2363)
!2411 = !DILocation(line: 819, column: 20, scope: !2363)
!2412 = !DILocation(line: 822, column: 62, scope: !2363)
!2413 = !DILocation(line: 0, scope: !2388, inlinedAt: !2414)
!2414 = distinct !DILocation(line: 823, column: 15, scope: !2363)
!2415 = !DILocation(line: 218, column: 10, scope: !2388, inlinedAt: !2414)
!2416 = !DILocation(line: 824, column: 60, scope: !2363)
!2417 = !DILocation(line: 826, column: 32, scope: !2363)
!2418 = !DILocation(line: 826, column: 47, scope: !2363)
!2419 = !DILocation(line: 824, column: 3, scope: !2363)
!2420 = !DILocation(line: 827, column: 9, scope: !2363)
!2421 = !DILocation(line: 828, column: 7, scope: !2363)
!2422 = !DILocation(line: 829, column: 11, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2363, file: !128, line: 828, column: 7)
!2424 = !{!1208, !1208, i64 0}
!2425 = !DILocation(line: 829, column: 5, scope: !2423)
!2426 = !DILocation(line: 830, column: 3, scope: !2363)
!2427 = distinct !DISubprogram(name: "quotearg_free", scope: !128, file: !128, line: 848, type: !104, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !2428)
!2428 = !{!2429, !2430}
!2429 = !DILocalVariable(name: "sv", scope: !2427, file: !128, line: 850, type: !180)
!2430 = !DILocalVariable(name: "i", scope: !2427, file: !128, line: 851, type: !47)
!2431 = !DILocation(line: 850, column: 24, scope: !2427)
!2432 = !DILocation(line: 0, scope: !2427)
!2433 = !DILocation(line: 852, column: 19, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2435, file: !128, line: 852, column: 3)
!2435 = distinct !DILexicalBlock(scope: !2427, file: !128, line: 852, column: 3)
!2436 = !DILocation(line: 852, column: 17, scope: !2434)
!2437 = !DILocation(line: 852, column: 3, scope: !2435)
!2438 = !DILocation(line: 853, column: 17, scope: !2434)
!2439 = !{!2440, !673, i64 8}
!2440 = !{!"slotvec", !1208, i64 0, !673, i64 8}
!2441 = !DILocation(line: 853, column: 5, scope: !2434)
!2442 = !DILocation(line: 852, column: 28, scope: !2434)
!2443 = distinct !{!2443, !2437, !2444, !716}
!2444 = !DILocation(line: 853, column: 20, scope: !2435)
!2445 = !DILocation(line: 854, column: 13, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2427, file: !128, line: 854, column: 7)
!2447 = !DILocation(line: 854, column: 17, scope: !2446)
!2448 = !DILocation(line: 854, column: 7, scope: !2427)
!2449 = !DILocation(line: 856, column: 7, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2446, file: !128, line: 855, column: 5)
!2451 = !DILocation(line: 857, column: 21, scope: !2450)
!2452 = !{!2440, !1208, i64 0}
!2453 = !DILocation(line: 858, column: 20, scope: !2450)
!2454 = !DILocation(line: 859, column: 5, scope: !2450)
!2455 = !DILocation(line: 860, column: 10, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2427, file: !128, line: 860, column: 7)
!2457 = !DILocation(line: 860, column: 7, scope: !2427)
!2458 = !DILocation(line: 862, column: 13, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2456, file: !128, line: 861, column: 5)
!2460 = !DILocation(line: 862, column: 7, scope: !2459)
!2461 = !DILocation(line: 863, column: 15, scope: !2459)
!2462 = !DILocation(line: 864, column: 5, scope: !2459)
!2463 = !DILocation(line: 865, column: 10, scope: !2427)
!2464 = !DILocation(line: 866, column: 1, scope: !2427)
!2465 = distinct !DISubprogram(name: "quotearg_n", scope: !128, file: !128, line: 931, type: !798, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !2466)
!2466 = !{!2467, !2468}
!2467 = !DILocalVariable(name: "n", arg: 1, scope: !2465, file: !128, line: 931, type: !47)
!2468 = !DILocalVariable(name: "arg", arg: 2, scope: !2465, file: !128, line: 931, type: !51)
!2469 = !DILocation(line: 0, scope: !2465)
!2470 = !DILocation(line: 933, column: 10, scope: !2465)
!2471 = !DILocation(line: 933, column: 3, scope: !2465)
!2472 = distinct !DISubprogram(name: "quotearg_n_options", scope: !128, file: !128, line: 877, type: !2473, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !2475)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!39, !47, !51, !48, !1522}
!2475 = !{!2476, !2477, !2478, !2479, !2480, !2481, !2482, !2485, !2486, !2488, !2489, !2490}
!2476 = !DILocalVariable(name: "n", arg: 1, scope: !2472, file: !128, line: 877, type: !47)
!2477 = !DILocalVariable(name: "arg", arg: 2, scope: !2472, file: !128, line: 877, type: !51)
!2478 = !DILocalVariable(name: "argsize", arg: 3, scope: !2472, file: !128, line: 877, type: !48)
!2479 = !DILocalVariable(name: "options", arg: 4, scope: !2472, file: !128, line: 878, type: !1522)
!2480 = !DILocalVariable(name: "e", scope: !2472, file: !128, line: 880, type: !47)
!2481 = !DILocalVariable(name: "sv", scope: !2472, file: !128, line: 882, type: !180)
!2482 = !DILocalVariable(name: "preallocated", scope: !2483, file: !128, line: 889, type: !58)
!2483 = distinct !DILexicalBlock(scope: !2484, file: !128, line: 888, column: 5)
!2484 = distinct !DILexicalBlock(scope: !2472, file: !128, line: 887, column: 7)
!2485 = !DILocalVariable(name: "nmax", scope: !2483, file: !128, line: 890, type: !47)
!2486 = !DILocalVariable(name: "size", scope: !2487, file: !128, line: 903, type: !48)
!2487 = distinct !DILexicalBlock(scope: !2472, file: !128, line: 902, column: 3)
!2488 = !DILocalVariable(name: "val", scope: !2487, file: !128, line: 904, type: !39)
!2489 = !DILocalVariable(name: "flags", scope: !2487, file: !128, line: 906, type: !47)
!2490 = !DILocalVariable(name: "qsize", scope: !2487, file: !128, line: 907, type: !48)
!2491 = !DILocation(line: 0, scope: !2472)
!2492 = !DILocation(line: 880, column: 11, scope: !2472)
!2493 = !DILocation(line: 882, column: 24, scope: !2472)
!2494 = !DILocation(line: 884, column: 9, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2472, file: !128, line: 884, column: 7)
!2496 = !DILocation(line: 884, column: 7, scope: !2472)
!2497 = !DILocation(line: 885, column: 5, scope: !2495)
!2498 = !DILocation(line: 887, column: 7, scope: !2484)
!2499 = !DILocation(line: 887, column: 14, scope: !2484)
!2500 = !DILocation(line: 887, column: 7, scope: !2472)
!2501 = !DILocation(line: 889, column: 31, scope: !2483)
!2502 = !DILocation(line: 0, scope: !2483)
!2503 = !DILocation(line: 892, column: 16, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2483, file: !128, line: 892, column: 11)
!2505 = !DILocation(line: 892, column: 11, scope: !2483)
!2506 = !DILocation(line: 893, column: 9, scope: !2504)
!2507 = !DILocation(line: 895, column: 32, scope: !2483)
!2508 = !DILocation(line: 895, column: 61, scope: !2483)
!2509 = !DILocation(line: 895, column: 66, scope: !2483)
!2510 = !DILocation(line: 895, column: 22, scope: !2483)
!2511 = !DILocation(line: 895, column: 15, scope: !2483)
!2512 = !DILocation(line: 896, column: 11, scope: !2483)
!2513 = !DILocation(line: 897, column: 15, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2483, file: !128, line: 896, column: 11)
!2515 = !{i64 0, i64 8, !2424, i64 8, i64 8, !672}
!2516 = !DILocation(line: 897, column: 9, scope: !2514)
!2517 = !DILocation(line: 898, column: 20, scope: !2483)
!2518 = !DILocation(line: 898, column: 18, scope: !2483)
!2519 = !DILocation(line: 898, column: 15, scope: !2483)
!2520 = !DILocation(line: 898, column: 38, scope: !2483)
!2521 = !DILocation(line: 898, column: 31, scope: !2483)
!2522 = !DILocation(line: 898, column: 48, scope: !2483)
!2523 = !DILocation(line: 0, scope: !1915, inlinedAt: !2524)
!2524 = distinct !DILocation(line: 898, column: 7, scope: !2483)
!2525 = !DILocation(line: 59, column: 10, scope: !1915, inlinedAt: !2524)
!2526 = !DILocation(line: 899, column: 14, scope: !2483)
!2527 = !DILocation(line: 900, column: 5, scope: !2483)
!2528 = !DILocation(line: 903, column: 19, scope: !2487)
!2529 = !DILocation(line: 903, column: 25, scope: !2487)
!2530 = !DILocation(line: 0, scope: !2487)
!2531 = !DILocation(line: 904, column: 23, scope: !2487)
!2532 = !DILocation(line: 906, column: 26, scope: !2487)
!2533 = !DILocation(line: 906, column: 32, scope: !2487)
!2534 = !DILocation(line: 908, column: 55, scope: !2487)
!2535 = !DILocation(line: 909, column: 46, scope: !2487)
!2536 = !DILocation(line: 910, column: 55, scope: !2487)
!2537 = !DILocation(line: 911, column: 55, scope: !2487)
!2538 = !DILocation(line: 907, column: 20, scope: !2487)
!2539 = !DILocation(line: 913, column: 14, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2487, file: !128, line: 913, column: 9)
!2541 = !DILocation(line: 913, column: 9, scope: !2487)
!2542 = !DILocation(line: 915, column: 35, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2540, file: !128, line: 914, column: 7)
!2544 = !DILocation(line: 915, column: 20, scope: !2543)
!2545 = !DILocation(line: 916, column: 17, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2543, file: !128, line: 916, column: 13)
!2547 = !DILocation(line: 916, column: 13, scope: !2543)
!2548 = !DILocation(line: 917, column: 11, scope: !2546)
!2549 = !DILocation(line: 0, scope: !2388, inlinedAt: !2550)
!2550 = distinct !DILocation(line: 918, column: 27, scope: !2543)
!2551 = !DILocation(line: 218, column: 10, scope: !2388, inlinedAt: !2550)
!2552 = !DILocation(line: 918, column: 19, scope: !2543)
!2553 = !DILocation(line: 919, column: 69, scope: !2543)
!2554 = !DILocation(line: 921, column: 44, scope: !2543)
!2555 = !DILocation(line: 922, column: 44, scope: !2543)
!2556 = !DILocation(line: 919, column: 9, scope: !2543)
!2557 = !DILocation(line: 923, column: 7, scope: !2543)
!2558 = !DILocation(line: 925, column: 11, scope: !2487)
!2559 = !DILocation(line: 926, column: 5, scope: !2487)
!2560 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !128, file: !128, line: 937, type: !2561, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !2563)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{!39, !47, !51, !48}
!2563 = !{!2564, !2565, !2566}
!2564 = !DILocalVariable(name: "n", arg: 1, scope: !2560, file: !128, line: 937, type: !47)
!2565 = !DILocalVariable(name: "arg", arg: 2, scope: !2560, file: !128, line: 937, type: !51)
!2566 = !DILocalVariable(name: "argsize", arg: 3, scope: !2560, file: !128, line: 937, type: !48)
!2567 = !DILocation(line: 0, scope: !2560)
!2568 = !DILocation(line: 939, column: 10, scope: !2560)
!2569 = !DILocation(line: 939, column: 3, scope: !2560)
!2570 = distinct !DISubprogram(name: "quotearg", scope: !128, file: !128, line: 943, type: !1027, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !2571)
!2571 = !{!2572}
!2572 = !DILocalVariable(name: "arg", arg: 1, scope: !2570, file: !128, line: 943, type: !51)
!2573 = !DILocation(line: 0, scope: !2570)
!2574 = !DILocation(line: 0, scope: !2465, inlinedAt: !2575)
!2575 = distinct !DILocation(line: 945, column: 10, scope: !2570)
!2576 = !DILocation(line: 933, column: 10, scope: !2465, inlinedAt: !2575)
!2577 = !DILocation(line: 945, column: 3, scope: !2570)
!2578 = distinct !DISubprogram(name: "quotearg_mem", scope: !128, file: !128, line: 949, type: !2579, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !2581)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{!39, !51, !48}
!2581 = !{!2582, !2583}
!2582 = !DILocalVariable(name: "arg", arg: 1, scope: !2578, file: !128, line: 949, type: !51)
!2583 = !DILocalVariable(name: "argsize", arg: 2, scope: !2578, file: !128, line: 949, type: !48)
!2584 = !DILocation(line: 0, scope: !2578)
!2585 = !DILocation(line: 0, scope: !2560, inlinedAt: !2586)
!2586 = distinct !DILocation(line: 951, column: 10, scope: !2578)
!2587 = !DILocation(line: 939, column: 10, scope: !2560, inlinedAt: !2586)
!2588 = !DILocation(line: 951, column: 3, scope: !2578)
!2589 = distinct !DISubprogram(name: "quotearg_n_style", scope: !128, file: !128, line: 955, type: !2590, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !2592)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{!39, !47, !22, !51}
!2592 = !{!2593, !2594, !2595, !2596}
!2593 = !DILocalVariable(name: "n", arg: 1, scope: !2589, file: !128, line: 955, type: !47)
!2594 = !DILocalVariable(name: "s", arg: 2, scope: !2589, file: !128, line: 955, type: !22)
!2595 = !DILocalVariable(name: "arg", arg: 3, scope: !2589, file: !128, line: 955, type: !51)
!2596 = !DILocalVariable(name: "o", scope: !2589, file: !128, line: 957, type: !1523)
!2597 = !DILocation(line: 0, scope: !2589)
!2598 = !DILocation(line: 957, column: 3, scope: !2589)
!2599 = !DILocation(line: 957, column: 32, scope: !2589)
!2600 = !{!2601}
!2601 = distinct !{!2601, !2602, !"quoting_options_from_style: argument 0"}
!2602 = distinct !{!2602, !"quoting_options_from_style"}
!2603 = !DILocation(line: 957, column: 36, scope: !2589)
!2604 = !DILocalVariable(name: "style", arg: 1, scope: !2605, file: !128, line: 193, type: !22)
!2605 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !128, file: !128, line: 193, type: !2606, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !2608)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{!161, !22}
!2608 = !{!2604, !2609}
!2609 = !DILocalVariable(name: "o", scope: !2605, file: !128, line: 195, type: !161)
!2610 = !DILocation(line: 0, scope: !2605, inlinedAt: !2611)
!2611 = distinct !DILocation(line: 957, column: 36, scope: !2589)
!2612 = !DILocation(line: 195, column: 26, scope: !2605, inlinedAt: !2611)
!2613 = !DILocation(line: 196, column: 13, scope: !2614, inlinedAt: !2611)
!2614 = distinct !DILexicalBlock(scope: !2605, file: !128, line: 196, column: 7)
!2615 = !DILocation(line: 196, column: 7, scope: !2605, inlinedAt: !2611)
!2616 = !DILocation(line: 197, column: 5, scope: !2614, inlinedAt: !2611)
!2617 = !DILocation(line: 198, column: 5, scope: !2605, inlinedAt: !2611)
!2618 = !DILocation(line: 198, column: 11, scope: !2605, inlinedAt: !2611)
!2619 = !DILocation(line: 958, column: 10, scope: !2589)
!2620 = !DILocation(line: 959, column: 1, scope: !2589)
!2621 = !DILocation(line: 958, column: 3, scope: !2589)
!2622 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !128, file: !128, line: 962, type: !2623, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !2625)
!2623 = !DISubroutineType(types: !2624)
!2624 = !{!39, !47, !22, !51, !48}
!2625 = !{!2626, !2627, !2628, !2629, !2630}
!2626 = !DILocalVariable(name: "n", arg: 1, scope: !2622, file: !128, line: 962, type: !47)
!2627 = !DILocalVariable(name: "s", arg: 2, scope: !2622, file: !128, line: 962, type: !22)
!2628 = !DILocalVariable(name: "arg", arg: 3, scope: !2622, file: !128, line: 963, type: !51)
!2629 = !DILocalVariable(name: "argsize", arg: 4, scope: !2622, file: !128, line: 963, type: !48)
!2630 = !DILocalVariable(name: "o", scope: !2622, file: !128, line: 965, type: !1523)
!2631 = !DILocation(line: 0, scope: !2622)
!2632 = !DILocation(line: 965, column: 3, scope: !2622)
!2633 = !DILocation(line: 965, column: 32, scope: !2622)
!2634 = !{!2635}
!2635 = distinct !{!2635, !2636, !"quoting_options_from_style: argument 0"}
!2636 = distinct !{!2636, !"quoting_options_from_style"}
!2637 = !DILocation(line: 965, column: 36, scope: !2622)
!2638 = !DILocation(line: 0, scope: !2605, inlinedAt: !2639)
!2639 = distinct !DILocation(line: 965, column: 36, scope: !2622)
!2640 = !DILocation(line: 195, column: 26, scope: !2605, inlinedAt: !2639)
!2641 = !DILocation(line: 196, column: 13, scope: !2614, inlinedAt: !2639)
!2642 = !DILocation(line: 196, column: 7, scope: !2605, inlinedAt: !2639)
!2643 = !DILocation(line: 197, column: 5, scope: !2614, inlinedAt: !2639)
!2644 = !DILocation(line: 198, column: 5, scope: !2605, inlinedAt: !2639)
!2645 = !DILocation(line: 198, column: 11, scope: !2605, inlinedAt: !2639)
!2646 = !DILocation(line: 966, column: 10, scope: !2622)
!2647 = !DILocation(line: 967, column: 1, scope: !2622)
!2648 = !DILocation(line: 966, column: 3, scope: !2622)
!2649 = distinct !DISubprogram(name: "quotearg_style", scope: !128, file: !128, line: 970, type: !2650, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !2652)
!2650 = !DISubroutineType(types: !2651)
!2651 = !{!39, !22, !51}
!2652 = !{!2653, !2654}
!2653 = !DILocalVariable(name: "s", arg: 1, scope: !2649, file: !128, line: 970, type: !22)
!2654 = !DILocalVariable(name: "arg", arg: 2, scope: !2649, file: !128, line: 970, type: !51)
!2655 = !DILocation(line: 0, scope: !2649)
!2656 = !DILocation(line: 0, scope: !2589, inlinedAt: !2657)
!2657 = distinct !DILocation(line: 972, column: 10, scope: !2649)
!2658 = !DILocation(line: 957, column: 3, scope: !2589, inlinedAt: !2657)
!2659 = !DILocation(line: 957, column: 32, scope: !2589, inlinedAt: !2657)
!2660 = !{!2661}
!2661 = distinct !{!2661, !2662, !"quoting_options_from_style: argument 0"}
!2662 = distinct !{!2662, !"quoting_options_from_style"}
!2663 = !DILocation(line: 957, column: 36, scope: !2589, inlinedAt: !2657)
!2664 = !DILocation(line: 0, scope: !2605, inlinedAt: !2665)
!2665 = distinct !DILocation(line: 957, column: 36, scope: !2589, inlinedAt: !2657)
!2666 = !DILocation(line: 195, column: 26, scope: !2605, inlinedAt: !2665)
!2667 = !DILocation(line: 196, column: 13, scope: !2614, inlinedAt: !2665)
!2668 = !DILocation(line: 196, column: 7, scope: !2605, inlinedAt: !2665)
!2669 = !DILocation(line: 197, column: 5, scope: !2614, inlinedAt: !2665)
!2670 = !DILocation(line: 198, column: 5, scope: !2605, inlinedAt: !2665)
!2671 = !DILocation(line: 198, column: 11, scope: !2605, inlinedAt: !2665)
!2672 = !DILocation(line: 958, column: 10, scope: !2589, inlinedAt: !2657)
!2673 = !DILocation(line: 959, column: 1, scope: !2589, inlinedAt: !2657)
!2674 = !DILocation(line: 972, column: 3, scope: !2649)
!2675 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !128, file: !128, line: 976, type: !2676, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !2678)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{!39, !22, !51, !48}
!2678 = !{!2679, !2680, !2681}
!2679 = !DILocalVariable(name: "s", arg: 1, scope: !2675, file: !128, line: 976, type: !22)
!2680 = !DILocalVariable(name: "arg", arg: 2, scope: !2675, file: !128, line: 976, type: !51)
!2681 = !DILocalVariable(name: "argsize", arg: 3, scope: !2675, file: !128, line: 976, type: !48)
!2682 = !DILocation(line: 0, scope: !2675)
!2683 = !DILocation(line: 0, scope: !2622, inlinedAt: !2684)
!2684 = distinct !DILocation(line: 978, column: 10, scope: !2675)
!2685 = !DILocation(line: 965, column: 3, scope: !2622, inlinedAt: !2684)
!2686 = !DILocation(line: 965, column: 32, scope: !2622, inlinedAt: !2684)
!2687 = !{!2688}
!2688 = distinct !{!2688, !2689, !"quoting_options_from_style: argument 0"}
!2689 = distinct !{!2689, !"quoting_options_from_style"}
!2690 = !DILocation(line: 965, column: 36, scope: !2622, inlinedAt: !2684)
!2691 = !DILocation(line: 0, scope: !2605, inlinedAt: !2692)
!2692 = distinct !DILocation(line: 965, column: 36, scope: !2622, inlinedAt: !2684)
!2693 = !DILocation(line: 195, column: 26, scope: !2605, inlinedAt: !2692)
!2694 = !DILocation(line: 196, column: 13, scope: !2614, inlinedAt: !2692)
!2695 = !DILocation(line: 196, column: 7, scope: !2605, inlinedAt: !2692)
!2696 = !DILocation(line: 197, column: 5, scope: !2614, inlinedAt: !2692)
!2697 = !DILocation(line: 198, column: 5, scope: !2605, inlinedAt: !2692)
!2698 = !DILocation(line: 198, column: 11, scope: !2605, inlinedAt: !2692)
!2699 = !DILocation(line: 966, column: 10, scope: !2622, inlinedAt: !2684)
!2700 = !DILocation(line: 967, column: 1, scope: !2622, inlinedAt: !2684)
!2701 = !DILocation(line: 978, column: 3, scope: !2675)
!2702 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !128, file: !128, line: 982, type: !2703, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !2705)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!39, !51, !48, !40}
!2705 = !{!2706, !2707, !2708, !2709}
!2706 = !DILocalVariable(name: "arg", arg: 1, scope: !2702, file: !128, line: 982, type: !51)
!2707 = !DILocalVariable(name: "argsize", arg: 2, scope: !2702, file: !128, line: 982, type: !48)
!2708 = !DILocalVariable(name: "ch", arg: 3, scope: !2702, file: !128, line: 982, type: !40)
!2709 = !DILocalVariable(name: "options", scope: !2702, file: !128, line: 984, type: !161)
!2710 = !DILocation(line: 0, scope: !2702)
!2711 = !DILocation(line: 984, column: 3, scope: !2702)
!2712 = !DILocation(line: 984, column: 26, scope: !2702)
!2713 = !DILocation(line: 985, column: 13, scope: !2702)
!2714 = !{i64 0, i64 4, !830, i64 4, i64 4, !849, i64 8, i64 32, !830, i64 40, i64 8, !672, i64 48, i64 8, !672}
!2715 = !DILocation(line: 0, scope: !1543, inlinedAt: !2716)
!2716 = distinct !DILocation(line: 986, column: 3, scope: !2702)
!2717 = !DILocation(line: 156, column: 62, scope: !1543, inlinedAt: !2716)
!2718 = !DILocation(line: 156, column: 57, scope: !1543, inlinedAt: !2716)
!2719 = !DILocation(line: 157, column: 15, scope: !1543, inlinedAt: !2716)
!2720 = !DILocation(line: 158, column: 12, scope: !1543, inlinedAt: !2716)
!2721 = !DILocation(line: 158, column: 15, scope: !1543, inlinedAt: !2716)
!2722 = !DILocation(line: 158, column: 25, scope: !1543, inlinedAt: !2716)
!2723 = !DILocation(line: 159, column: 18, scope: !1543, inlinedAt: !2716)
!2724 = !DILocation(line: 159, column: 23, scope: !1543, inlinedAt: !2716)
!2725 = !DILocation(line: 159, column: 6, scope: !1543, inlinedAt: !2716)
!2726 = !DILocation(line: 987, column: 10, scope: !2702)
!2727 = !DILocation(line: 988, column: 1, scope: !2702)
!2728 = !DILocation(line: 987, column: 3, scope: !2702)
!2729 = distinct !DISubprogram(name: "quotearg_char", scope: !128, file: !128, line: 991, type: !2730, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !2732)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{!39, !51, !40}
!2732 = !{!2733, !2734}
!2733 = !DILocalVariable(name: "arg", arg: 1, scope: !2729, file: !128, line: 991, type: !51)
!2734 = !DILocalVariable(name: "ch", arg: 2, scope: !2729, file: !128, line: 991, type: !40)
!2735 = !DILocation(line: 0, scope: !2729)
!2736 = !DILocation(line: 0, scope: !2702, inlinedAt: !2737)
!2737 = distinct !DILocation(line: 993, column: 10, scope: !2729)
!2738 = !DILocation(line: 984, column: 3, scope: !2702, inlinedAt: !2737)
!2739 = !DILocation(line: 984, column: 26, scope: !2702, inlinedAt: !2737)
!2740 = !DILocation(line: 985, column: 13, scope: !2702, inlinedAt: !2737)
!2741 = !DILocation(line: 0, scope: !1543, inlinedAt: !2742)
!2742 = distinct !DILocation(line: 986, column: 3, scope: !2702, inlinedAt: !2737)
!2743 = !DILocation(line: 156, column: 62, scope: !1543, inlinedAt: !2742)
!2744 = !DILocation(line: 156, column: 57, scope: !1543, inlinedAt: !2742)
!2745 = !DILocation(line: 157, column: 15, scope: !1543, inlinedAt: !2742)
!2746 = !DILocation(line: 158, column: 12, scope: !1543, inlinedAt: !2742)
!2747 = !DILocation(line: 158, column: 15, scope: !1543, inlinedAt: !2742)
!2748 = !DILocation(line: 158, column: 25, scope: !1543, inlinedAt: !2742)
!2749 = !DILocation(line: 159, column: 18, scope: !1543, inlinedAt: !2742)
!2750 = !DILocation(line: 159, column: 23, scope: !1543, inlinedAt: !2742)
!2751 = !DILocation(line: 159, column: 6, scope: !1543, inlinedAt: !2742)
!2752 = !DILocation(line: 987, column: 10, scope: !2702, inlinedAt: !2737)
!2753 = !DILocation(line: 988, column: 1, scope: !2702, inlinedAt: !2737)
!2754 = !DILocation(line: 993, column: 3, scope: !2729)
!2755 = distinct !DISubprogram(name: "quotearg_colon", scope: !128, file: !128, line: 997, type: !1027, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !2756)
!2756 = !{!2757}
!2757 = !DILocalVariable(name: "arg", arg: 1, scope: !2755, file: !128, line: 997, type: !51)
!2758 = !DILocation(line: 0, scope: !2755)
!2759 = !DILocation(line: 0, scope: !2729, inlinedAt: !2760)
!2760 = distinct !DILocation(line: 999, column: 10, scope: !2755)
!2761 = !DILocation(line: 0, scope: !2702, inlinedAt: !2762)
!2762 = distinct !DILocation(line: 993, column: 10, scope: !2729, inlinedAt: !2760)
!2763 = !DILocation(line: 984, column: 3, scope: !2702, inlinedAt: !2762)
!2764 = !DILocation(line: 984, column: 26, scope: !2702, inlinedAt: !2762)
!2765 = !DILocation(line: 985, column: 13, scope: !2702, inlinedAt: !2762)
!2766 = !DILocation(line: 0, scope: !1543, inlinedAt: !2767)
!2767 = distinct !DILocation(line: 986, column: 3, scope: !2702, inlinedAt: !2762)
!2768 = !DILocation(line: 156, column: 57, scope: !1543, inlinedAt: !2767)
!2769 = !DILocation(line: 158, column: 12, scope: !1543, inlinedAt: !2767)
!2770 = !DILocation(line: 159, column: 6, scope: !1543, inlinedAt: !2767)
!2771 = !DILocation(line: 987, column: 10, scope: !2702, inlinedAt: !2762)
!2772 = !DILocation(line: 988, column: 1, scope: !2702, inlinedAt: !2762)
!2773 = !DILocation(line: 999, column: 3, scope: !2755)
!2774 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !128, file: !128, line: 1003, type: !2579, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !2775)
!2775 = !{!2776, !2777}
!2776 = !DILocalVariable(name: "arg", arg: 1, scope: !2774, file: !128, line: 1003, type: !51)
!2777 = !DILocalVariable(name: "argsize", arg: 2, scope: !2774, file: !128, line: 1003, type: !48)
!2778 = !DILocation(line: 0, scope: !2774)
!2779 = !DILocation(line: 0, scope: !2702, inlinedAt: !2780)
!2780 = distinct !DILocation(line: 1005, column: 10, scope: !2774)
!2781 = !DILocation(line: 984, column: 3, scope: !2702, inlinedAt: !2780)
!2782 = !DILocation(line: 984, column: 26, scope: !2702, inlinedAt: !2780)
!2783 = !DILocation(line: 985, column: 13, scope: !2702, inlinedAt: !2780)
!2784 = !DILocation(line: 0, scope: !1543, inlinedAt: !2785)
!2785 = distinct !DILocation(line: 986, column: 3, scope: !2702, inlinedAt: !2780)
!2786 = !DILocation(line: 156, column: 57, scope: !1543, inlinedAt: !2785)
!2787 = !DILocation(line: 158, column: 12, scope: !1543, inlinedAt: !2785)
!2788 = !DILocation(line: 159, column: 6, scope: !1543, inlinedAt: !2785)
!2789 = !DILocation(line: 987, column: 10, scope: !2702, inlinedAt: !2780)
!2790 = !DILocation(line: 988, column: 1, scope: !2702, inlinedAt: !2780)
!2791 = !DILocation(line: 1005, column: 3, scope: !2774)
!2792 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !128, file: !128, line: 1009, type: !2590, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !2793)
!2793 = !{!2794, !2795, !2796, !2797}
!2794 = !DILocalVariable(name: "n", arg: 1, scope: !2792, file: !128, line: 1009, type: !47)
!2795 = !DILocalVariable(name: "s", arg: 2, scope: !2792, file: !128, line: 1009, type: !22)
!2796 = !DILocalVariable(name: "arg", arg: 3, scope: !2792, file: !128, line: 1009, type: !51)
!2797 = !DILocalVariable(name: "options", scope: !2792, file: !128, line: 1011, type: !161)
!2798 = !DILocation(line: 195, column: 26, scope: !2605, inlinedAt: !2799)
!2799 = distinct !DILocation(line: 1012, column: 13, scope: !2792)
!2800 = !DILocation(line: 0, scope: !2792)
!2801 = !DILocation(line: 1011, column: 3, scope: !2792)
!2802 = !DILocation(line: 1011, column: 26, scope: !2792)
!2803 = !DILocation(line: 1012, column: 13, scope: !2792)
!2804 = !{!2805}
!2805 = distinct !{!2805, !2806, !"quoting_options_from_style: argument 0"}
!2806 = distinct !{!2806, !"quoting_options_from_style"}
!2807 = !DILocation(line: 0, scope: !2605, inlinedAt: !2799)
!2808 = !DILocation(line: 196, column: 13, scope: !2614, inlinedAt: !2799)
!2809 = !DILocation(line: 196, column: 7, scope: !2605, inlinedAt: !2799)
!2810 = !DILocation(line: 197, column: 5, scope: !2614, inlinedAt: !2799)
!2811 = !{i64 0, i64 4, !849, i64 4, i64 32, !830, i64 36, i64 8, !672, i64 44, i64 8, !672}
!2812 = !DILocation(line: 0, scope: !1543, inlinedAt: !2813)
!2813 = distinct !DILocation(line: 1013, column: 3, scope: !2792)
!2814 = !DILocation(line: 156, column: 57, scope: !1543, inlinedAt: !2813)
!2815 = !DILocation(line: 158, column: 12, scope: !1543, inlinedAt: !2813)
!2816 = !DILocation(line: 159, column: 6, scope: !1543, inlinedAt: !2813)
!2817 = !DILocation(line: 1014, column: 10, scope: !2792)
!2818 = !DILocation(line: 1015, column: 1, scope: !2792)
!2819 = !DILocation(line: 1014, column: 3, scope: !2792)
!2820 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !128, file: !128, line: 1018, type: !2821, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !2823)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{!39, !47, !51, !51, !51}
!2823 = !{!2824, !2825, !2826, !2827}
!2824 = !DILocalVariable(name: "n", arg: 1, scope: !2820, file: !128, line: 1018, type: !47)
!2825 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2820, file: !128, line: 1018, type: !51)
!2826 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2820, file: !128, line: 1019, type: !51)
!2827 = !DILocalVariable(name: "arg", arg: 4, scope: !2820, file: !128, line: 1019, type: !51)
!2828 = !DILocation(line: 0, scope: !2820)
!2829 = !DILocalVariable(name: "n", arg: 1, scope: !2830, file: !128, line: 1026, type: !47)
!2830 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !128, file: !128, line: 1026, type: !2831, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !2833)
!2831 = !DISubroutineType(types: !2832)
!2832 = !{!39, !47, !51, !51, !51, !48}
!2833 = !{!2829, !2834, !2835, !2836, !2837, !2838}
!2834 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2830, file: !128, line: 1026, type: !51)
!2835 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2830, file: !128, line: 1027, type: !51)
!2836 = !DILocalVariable(name: "arg", arg: 4, scope: !2830, file: !128, line: 1028, type: !51)
!2837 = !DILocalVariable(name: "argsize", arg: 5, scope: !2830, file: !128, line: 1028, type: !48)
!2838 = !DILocalVariable(name: "o", scope: !2830, file: !128, line: 1030, type: !161)
!2839 = !DILocation(line: 0, scope: !2830, inlinedAt: !2840)
!2840 = distinct !DILocation(line: 1021, column: 10, scope: !2820)
!2841 = !DILocation(line: 1030, column: 3, scope: !2830, inlinedAt: !2840)
!2842 = !DILocation(line: 1030, column: 26, scope: !2830, inlinedAt: !2840)
!2843 = !DILocation(line: 1030, column: 30, scope: !2830, inlinedAt: !2840)
!2844 = !DILocation(line: 0, scope: !1583, inlinedAt: !2845)
!2845 = distinct !DILocation(line: 1031, column: 3, scope: !2830, inlinedAt: !2840)
!2846 = !DILocation(line: 184, column: 6, scope: !1583, inlinedAt: !2845)
!2847 = !DILocation(line: 184, column: 12, scope: !1583, inlinedAt: !2845)
!2848 = !DILocation(line: 185, column: 8, scope: !1597, inlinedAt: !2845)
!2849 = !DILocation(line: 185, column: 19, scope: !1597, inlinedAt: !2845)
!2850 = !DILocation(line: 186, column: 5, scope: !1597, inlinedAt: !2845)
!2851 = !DILocation(line: 187, column: 6, scope: !1583, inlinedAt: !2845)
!2852 = !DILocation(line: 187, column: 17, scope: !1583, inlinedAt: !2845)
!2853 = !DILocation(line: 188, column: 6, scope: !1583, inlinedAt: !2845)
!2854 = !DILocation(line: 188, column: 18, scope: !1583, inlinedAt: !2845)
!2855 = !DILocation(line: 1032, column: 10, scope: !2830, inlinedAt: !2840)
!2856 = !DILocation(line: 1033, column: 1, scope: !2830, inlinedAt: !2840)
!2857 = !DILocation(line: 1021, column: 3, scope: !2820)
!2858 = !DILocation(line: 0, scope: !2830)
!2859 = !DILocation(line: 1030, column: 3, scope: !2830)
!2860 = !DILocation(line: 1030, column: 26, scope: !2830)
!2861 = !DILocation(line: 1030, column: 30, scope: !2830)
!2862 = !DILocation(line: 0, scope: !1583, inlinedAt: !2863)
!2863 = distinct !DILocation(line: 1031, column: 3, scope: !2830)
!2864 = !DILocation(line: 184, column: 6, scope: !1583, inlinedAt: !2863)
!2865 = !DILocation(line: 184, column: 12, scope: !1583, inlinedAt: !2863)
!2866 = !DILocation(line: 185, column: 8, scope: !1597, inlinedAt: !2863)
!2867 = !DILocation(line: 185, column: 19, scope: !1597, inlinedAt: !2863)
!2868 = !DILocation(line: 186, column: 5, scope: !1597, inlinedAt: !2863)
!2869 = !DILocation(line: 187, column: 6, scope: !1583, inlinedAt: !2863)
!2870 = !DILocation(line: 187, column: 17, scope: !1583, inlinedAt: !2863)
!2871 = !DILocation(line: 188, column: 6, scope: !1583, inlinedAt: !2863)
!2872 = !DILocation(line: 188, column: 18, scope: !1583, inlinedAt: !2863)
!2873 = !DILocation(line: 1032, column: 10, scope: !2830)
!2874 = !DILocation(line: 1033, column: 1, scope: !2830)
!2875 = !DILocation(line: 1032, column: 3, scope: !2830)
!2876 = distinct !DISubprogram(name: "quotearg_custom", scope: !128, file: !128, line: 1036, type: !2877, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !2879)
!2877 = !DISubroutineType(types: !2878)
!2878 = !{!39, !51, !51, !51}
!2879 = !{!2880, !2881, !2882}
!2880 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2876, file: !128, line: 1036, type: !51)
!2881 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2876, file: !128, line: 1036, type: !51)
!2882 = !DILocalVariable(name: "arg", arg: 3, scope: !2876, file: !128, line: 1037, type: !51)
!2883 = !DILocation(line: 0, scope: !2876)
!2884 = !DILocation(line: 0, scope: !2820, inlinedAt: !2885)
!2885 = distinct !DILocation(line: 1039, column: 10, scope: !2876)
!2886 = !DILocation(line: 0, scope: !2830, inlinedAt: !2887)
!2887 = distinct !DILocation(line: 1021, column: 10, scope: !2820, inlinedAt: !2885)
!2888 = !DILocation(line: 1030, column: 3, scope: !2830, inlinedAt: !2887)
!2889 = !DILocation(line: 1030, column: 26, scope: !2830, inlinedAt: !2887)
!2890 = !DILocation(line: 1030, column: 30, scope: !2830, inlinedAt: !2887)
!2891 = !DILocation(line: 0, scope: !1583, inlinedAt: !2892)
!2892 = distinct !DILocation(line: 1031, column: 3, scope: !2830, inlinedAt: !2887)
!2893 = !DILocation(line: 184, column: 6, scope: !1583, inlinedAt: !2892)
!2894 = !DILocation(line: 184, column: 12, scope: !1583, inlinedAt: !2892)
!2895 = !DILocation(line: 185, column: 8, scope: !1597, inlinedAt: !2892)
!2896 = !DILocation(line: 185, column: 19, scope: !1597, inlinedAt: !2892)
!2897 = !DILocation(line: 186, column: 5, scope: !1597, inlinedAt: !2892)
!2898 = !DILocation(line: 187, column: 6, scope: !1583, inlinedAt: !2892)
!2899 = !DILocation(line: 187, column: 17, scope: !1583, inlinedAt: !2892)
!2900 = !DILocation(line: 188, column: 6, scope: !1583, inlinedAt: !2892)
!2901 = !DILocation(line: 188, column: 18, scope: !1583, inlinedAt: !2892)
!2902 = !DILocation(line: 1032, column: 10, scope: !2830, inlinedAt: !2887)
!2903 = !DILocation(line: 1033, column: 1, scope: !2830, inlinedAt: !2887)
!2904 = !DILocation(line: 1039, column: 3, scope: !2876)
!2905 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !128, file: !128, line: 1043, type: !2906, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !2908)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{!39, !51, !51, !51, !48}
!2908 = !{!2909, !2910, !2911, !2912}
!2909 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2905, file: !128, line: 1043, type: !51)
!2910 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2905, file: !128, line: 1043, type: !51)
!2911 = !DILocalVariable(name: "arg", arg: 3, scope: !2905, file: !128, line: 1044, type: !51)
!2912 = !DILocalVariable(name: "argsize", arg: 4, scope: !2905, file: !128, line: 1044, type: !48)
!2913 = !DILocation(line: 0, scope: !2905)
!2914 = !DILocation(line: 0, scope: !2830, inlinedAt: !2915)
!2915 = distinct !DILocation(line: 1046, column: 10, scope: !2905)
!2916 = !DILocation(line: 1030, column: 3, scope: !2830, inlinedAt: !2915)
!2917 = !DILocation(line: 1030, column: 26, scope: !2830, inlinedAt: !2915)
!2918 = !DILocation(line: 1030, column: 30, scope: !2830, inlinedAt: !2915)
!2919 = !DILocation(line: 0, scope: !1583, inlinedAt: !2920)
!2920 = distinct !DILocation(line: 1031, column: 3, scope: !2830, inlinedAt: !2915)
!2921 = !DILocation(line: 184, column: 6, scope: !1583, inlinedAt: !2920)
!2922 = !DILocation(line: 184, column: 12, scope: !1583, inlinedAt: !2920)
!2923 = !DILocation(line: 185, column: 8, scope: !1597, inlinedAt: !2920)
!2924 = !DILocation(line: 185, column: 19, scope: !1597, inlinedAt: !2920)
!2925 = !DILocation(line: 186, column: 5, scope: !1597, inlinedAt: !2920)
!2926 = !DILocation(line: 187, column: 6, scope: !1583, inlinedAt: !2920)
!2927 = !DILocation(line: 187, column: 17, scope: !1583, inlinedAt: !2920)
!2928 = !DILocation(line: 188, column: 6, scope: !1583, inlinedAt: !2920)
!2929 = !DILocation(line: 188, column: 18, scope: !1583, inlinedAt: !2920)
!2930 = !DILocation(line: 1032, column: 10, scope: !2830, inlinedAt: !2915)
!2931 = !DILocation(line: 1033, column: 1, scope: !2830, inlinedAt: !2915)
!2932 = !DILocation(line: 1046, column: 3, scope: !2905)
!2933 = distinct !DISubprogram(name: "quote_n_mem", scope: !128, file: !128, line: 1061, type: !2934, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !2936)
!2934 = !DISubroutineType(types: !2935)
!2935 = !{!51, !47, !51, !48}
!2936 = !{!2937, !2938, !2939}
!2937 = !DILocalVariable(name: "n", arg: 1, scope: !2933, file: !128, line: 1061, type: !47)
!2938 = !DILocalVariable(name: "arg", arg: 2, scope: !2933, file: !128, line: 1061, type: !51)
!2939 = !DILocalVariable(name: "argsize", arg: 3, scope: !2933, file: !128, line: 1061, type: !48)
!2940 = !DILocation(line: 0, scope: !2933)
!2941 = !DILocation(line: 1063, column: 10, scope: !2933)
!2942 = !DILocation(line: 1063, column: 3, scope: !2933)
!2943 = distinct !DISubprogram(name: "quote_mem", scope: !128, file: !128, line: 1067, type: !2944, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !2946)
!2944 = !DISubroutineType(types: !2945)
!2945 = !{!51, !51, !48}
!2946 = !{!2947, !2948}
!2947 = !DILocalVariable(name: "arg", arg: 1, scope: !2943, file: !128, line: 1067, type: !51)
!2948 = !DILocalVariable(name: "argsize", arg: 2, scope: !2943, file: !128, line: 1067, type: !48)
!2949 = !DILocation(line: 0, scope: !2943)
!2950 = !DILocation(line: 0, scope: !2933, inlinedAt: !2951)
!2951 = distinct !DILocation(line: 1069, column: 10, scope: !2943)
!2952 = !DILocation(line: 1063, column: 10, scope: !2933, inlinedAt: !2951)
!2953 = !DILocation(line: 1069, column: 3, scope: !2943)
!2954 = distinct !DISubprogram(name: "quote_n", scope: !128, file: !128, line: 1073, type: !2955, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !2957)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{!51, !47, !51}
!2957 = !{!2958, !2959}
!2958 = !DILocalVariable(name: "n", arg: 1, scope: !2954, file: !128, line: 1073, type: !47)
!2959 = !DILocalVariable(name: "arg", arg: 2, scope: !2954, file: !128, line: 1073, type: !51)
!2960 = !DILocation(line: 0, scope: !2954)
!2961 = !DILocation(line: 0, scope: !2933, inlinedAt: !2962)
!2962 = distinct !DILocation(line: 1075, column: 10, scope: !2954)
!2963 = !DILocation(line: 1063, column: 10, scope: !2933, inlinedAt: !2962)
!2964 = !DILocation(line: 1075, column: 3, scope: !2954)
!2965 = distinct !DISubprogram(name: "quote", scope: !128, file: !128, line: 1079, type: !2966, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !2968)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!51, !51}
!2968 = !{!2969}
!2969 = !DILocalVariable(name: "arg", arg: 1, scope: !2965, file: !128, line: 1079, type: !51)
!2970 = !DILocation(line: 0, scope: !2965)
!2971 = !DILocation(line: 0, scope: !2954, inlinedAt: !2972)
!2972 = distinct !DILocation(line: 1081, column: 10, scope: !2965)
!2973 = !DILocation(line: 0, scope: !2933, inlinedAt: !2974)
!2974 = distinct !DILocation(line: 1075, column: 10, scope: !2954, inlinedAt: !2972)
!2975 = !DILocation(line: 1063, column: 10, scope: !2933, inlinedAt: !2974)
!2976 = !DILocation(line: 1081, column: 3, scope: !2965)
!2977 = distinct !DISubprogram(name: "dup_safer", scope: !224, file: !224, line: 31, type: !1057, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !223, retainedNodes: !2978)
!2978 = !{!2979}
!2979 = !DILocalVariable(name: "fd", arg: 1, scope: !2977, file: !224, line: 31, type: !47)
!2980 = !DILocation(line: 0, scope: !2977)
!2981 = !DILocation(line: 33, column: 10, scope: !2977)
!2982 = !DILocation(line: 33, column: 3, scope: !2977)
!2983 = distinct !DISubprogram(name: "version_etc_arn", scope: !226, file: !226, line: 61, type: !2984, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !3020)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{null, !2986, !51, !51, !51, !1066, !48}
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !863, line: 7, baseType: !2988)
!2988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !746, line: 49, size: 1728, elements: !2989)
!2989 = !{!2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2988, file: !746, line: 51, baseType: !47, size: 32)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2988, file: !746, line: 54, baseType: !39, size: 64, offset: 64)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2988, file: !746, line: 55, baseType: !39, size: 64, offset: 128)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2988, file: !746, line: 56, baseType: !39, size: 64, offset: 192)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2988, file: !746, line: 57, baseType: !39, size: 64, offset: 256)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2988, file: !746, line: 58, baseType: !39, size: 64, offset: 320)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2988, file: !746, line: 59, baseType: !39, size: 64, offset: 384)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2988, file: !746, line: 60, baseType: !39, size: 64, offset: 448)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2988, file: !746, line: 61, baseType: !39, size: 64, offset: 512)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2988, file: !746, line: 64, baseType: !39, size: 64, offset: 576)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2988, file: !746, line: 65, baseType: !39, size: 64, offset: 640)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2988, file: !746, line: 66, baseType: !39, size: 64, offset: 704)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2988, file: !746, line: 68, baseType: !761, size: 64, offset: 768)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2988, file: !746, line: 70, baseType: !3004, size: 64, offset: 832)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2988, file: !746, line: 72, baseType: !47, size: 32, offset: 896)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2988, file: !746, line: 73, baseType: !47, size: 32, offset: 928)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2988, file: !746, line: 74, baseType: !767, size: 64, offset: 960)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2988, file: !746, line: 77, baseType: !151, size: 16, offset: 1024)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2988, file: !746, line: 78, baseType: !772, size: 8, offset: 1040)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2988, file: !746, line: 79, baseType: !774, size: 8, offset: 1048)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2988, file: !746, line: 81, baseType: !778, size: 64, offset: 1088)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2988, file: !746, line: 89, baseType: !781, size: 64, offset: 1152)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2988, file: !746, line: 91, baseType: !783, size: 64, offset: 1216)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2988, file: !746, line: 92, baseType: !786, size: 64, offset: 1280)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2988, file: !746, line: 93, baseType: !3004, size: 64, offset: 1344)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2988, file: !746, line: 94, baseType: !41, size: 64, offset: 1408)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2988, file: !746, line: 95, baseType: !48, size: 64, offset: 1472)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2988, file: !746, line: 96, baseType: !47, size: 32, offset: 1536)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2988, file: !746, line: 98, baseType: !793, size: 160, offset: 1568)
!3020 = !{!3021, !3022, !3023, !3024, !3025, !3026}
!3021 = !DILocalVariable(name: "stream", arg: 1, scope: !2983, file: !226, line: 61, type: !2986)
!3022 = !DILocalVariable(name: "command_name", arg: 2, scope: !2983, file: !226, line: 62, type: !51)
!3023 = !DILocalVariable(name: "package", arg: 3, scope: !2983, file: !226, line: 62, type: !51)
!3024 = !DILocalVariable(name: "version", arg: 4, scope: !2983, file: !226, line: 63, type: !51)
!3025 = !DILocalVariable(name: "authors", arg: 5, scope: !2983, file: !226, line: 64, type: !1066)
!3026 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2983, file: !226, line: 64, type: !48)
!3027 = !DILocation(line: 0, scope: !2983)
!3028 = !DILocation(line: 66, column: 7, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !2983, file: !226, line: 66, column: 7)
!3030 = !DILocation(line: 66, column: 7, scope: !2983)
!3031 = !DILocation(line: 67, column: 5, scope: !3029)
!3032 = !DILocation(line: 69, column: 5, scope: !3029)
!3033 = !DILocation(line: 83, column: 3, scope: !2983)
!3034 = !DILocation(line: 85, column: 3, scope: !2983)
!3035 = !DILocation(line: 88, column: 3, scope: !2983)
!3036 = !DILocation(line: 95, column: 3, scope: !2983)
!3037 = !DILocation(line: 97, column: 3, scope: !2983)
!3038 = !DILocation(line: 105, column: 7, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !2983, file: !226, line: 98, column: 5)
!3040 = !DILocation(line: 106, column: 7, scope: !3039)
!3041 = !DILocation(line: 109, column: 7, scope: !3039)
!3042 = !DILocation(line: 110, column: 7, scope: !3039)
!3043 = !DILocation(line: 113, column: 7, scope: !3039)
!3044 = !DILocation(line: 115, column: 7, scope: !3039)
!3045 = !DILocation(line: 120, column: 7, scope: !3039)
!3046 = !DILocation(line: 122, column: 7, scope: !3039)
!3047 = !DILocation(line: 127, column: 7, scope: !3039)
!3048 = !DILocation(line: 129, column: 7, scope: !3039)
!3049 = !DILocation(line: 134, column: 7, scope: !3039)
!3050 = !DILocation(line: 137, column: 7, scope: !3039)
!3051 = !DILocation(line: 142, column: 7, scope: !3039)
!3052 = !DILocation(line: 145, column: 7, scope: !3039)
!3053 = !DILocation(line: 150, column: 7, scope: !3039)
!3054 = !DILocation(line: 154, column: 7, scope: !3039)
!3055 = !DILocation(line: 159, column: 7, scope: !3039)
!3056 = !DILocation(line: 163, column: 7, scope: !3039)
!3057 = !DILocation(line: 170, column: 7, scope: !3039)
!3058 = !DILocation(line: 174, column: 7, scope: !3039)
!3059 = !DILocation(line: 176, column: 1, scope: !2983)
!3060 = distinct !DISubprogram(name: "version_etc_ar", scope: !226, file: !226, line: 183, type: !3061, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !3063)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{null, !2986, !51, !51, !51, !1066}
!3063 = !{!3064, !3065, !3066, !3067, !3068, !3069}
!3064 = !DILocalVariable(name: "stream", arg: 1, scope: !3060, file: !226, line: 183, type: !2986)
!3065 = !DILocalVariable(name: "command_name", arg: 2, scope: !3060, file: !226, line: 184, type: !51)
!3066 = !DILocalVariable(name: "package", arg: 3, scope: !3060, file: !226, line: 184, type: !51)
!3067 = !DILocalVariable(name: "version", arg: 4, scope: !3060, file: !226, line: 185, type: !51)
!3068 = !DILocalVariable(name: "authors", arg: 5, scope: !3060, file: !226, line: 185, type: !1066)
!3069 = !DILocalVariable(name: "n_authors", scope: !3060, file: !226, line: 187, type: !48)
!3070 = !DILocation(line: 0, scope: !3060)
!3071 = !DILocation(line: 189, column: 8, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3060, file: !226, line: 189, column: 3)
!3073 = !DILocation(line: 0, scope: !3072)
!3074 = !DILocation(line: 189, column: 23, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3072, file: !226, line: 189, column: 3)
!3076 = !DILocation(line: 189, column: 3, scope: !3072)
!3077 = !DILocation(line: 189, column: 52, scope: !3075)
!3078 = distinct !{!3078, !3076, !3079, !716}
!3079 = !DILocation(line: 190, column: 5, scope: !3072)
!3080 = !DILocation(line: 191, column: 3, scope: !3060)
!3081 = !DILocation(line: 192, column: 1, scope: !3060)
!3082 = distinct !DISubprogram(name: "version_etc_va", scope: !226, file: !226, line: 199, type: !3083, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !3092)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{null, !2986, !51, !51, !51, !3085}
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3087)
!3087 = !{!3088, !3089, !3090, !3091}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3086, file: !226, line: 192, baseType: !6, size: 32)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3086, file: !226, line: 192, baseType: !6, size: 32, offset: 32)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3086, file: !226, line: 192, baseType: !41, size: 64, offset: 64)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3086, file: !226, line: 192, baseType: !41, size: 64, offset: 128)
!3092 = !{!3093, !3094, !3095, !3096, !3097, !3098, !3099}
!3093 = !DILocalVariable(name: "stream", arg: 1, scope: !3082, file: !226, line: 199, type: !2986)
!3094 = !DILocalVariable(name: "command_name", arg: 2, scope: !3082, file: !226, line: 200, type: !51)
!3095 = !DILocalVariable(name: "package", arg: 3, scope: !3082, file: !226, line: 200, type: !51)
!3096 = !DILocalVariable(name: "version", arg: 4, scope: !3082, file: !226, line: 201, type: !51)
!3097 = !DILocalVariable(name: "authors", arg: 5, scope: !3082, file: !226, line: 201, type: !3085)
!3098 = !DILocalVariable(name: "n_authors", scope: !3082, file: !226, line: 203, type: !48)
!3099 = !DILocalVariable(name: "authtab", scope: !3082, file: !226, line: 204, type: !3100)
!3100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 640, elements: !157)
!3101 = !DILocation(line: 0, scope: !3082)
!3102 = !DILocation(line: 204, column: 3, scope: !3082)
!3103 = !DILocation(line: 204, column: 15, scope: !3082)
!3104 = !DILocation(line: 208, column: 35, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3106, file: !226, line: 206, column: 3)
!3106 = distinct !DILexicalBlock(scope: !3082, file: !226, line: 206, column: 3)
!3107 = !DILocation(line: 208, column: 14, scope: !3105)
!3108 = !DILocation(line: 208, column: 33, scope: !3105)
!3109 = !DILocation(line: 208, column: 67, scope: !3105)
!3110 = !DILocation(line: 206, column: 3, scope: !3106)
!3111 = !DILocation(line: 0, scope: !3106)
!3112 = !DILocation(line: 211, column: 3, scope: !3082)
!3113 = !DILocation(line: 213, column: 1, scope: !3082)
!3114 = distinct !DISubprogram(name: "version_etc", scope: !226, file: !226, line: 230, type: !3115, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !3117)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{null, !2986, !51, !51, !51, null}
!3117 = !{!3118, !3119, !3120, !3121, !3122}
!3118 = !DILocalVariable(name: "stream", arg: 1, scope: !3114, file: !226, line: 230, type: !2986)
!3119 = !DILocalVariable(name: "command_name", arg: 2, scope: !3114, file: !226, line: 231, type: !51)
!3120 = !DILocalVariable(name: "package", arg: 3, scope: !3114, file: !226, line: 231, type: !51)
!3121 = !DILocalVariable(name: "version", arg: 4, scope: !3114, file: !226, line: 232, type: !51)
!3122 = !DILocalVariable(name: "authors", scope: !3114, file: !226, line: 234, type: !3123)
!3123 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !741, line: 52, baseType: !3124)
!3124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3125, line: 32, baseType: !3126)
!3125 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!3126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !226, baseType: !3127)
!3127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3086, size: 192, elements: !775)
!3128 = !DILocation(line: 0, scope: !3114)
!3129 = !DILocation(line: 234, column: 3, scope: !3114)
!3130 = !DILocation(line: 234, column: 11, scope: !3114)
!3131 = !DILocation(line: 236, column: 3, scope: !3114)
!3132 = !DILocation(line: 237, column: 3, scope: !3114)
!3133 = !DILocation(line: 238, column: 3, scope: !3114)
!3134 = !DILocation(line: 239, column: 1, scope: !3114)
!3135 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !226, file: !226, line: 242, type: !104, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !92)
!3136 = !DILocation(line: 244, column: 3, scope: !3135)
!3137 = !DILocation(line: 249, column: 3, scope: !3135)
!3138 = !DILocation(line: 255, column: 3, scope: !3135)
!3139 = !DILocation(line: 260, column: 3, scope: !3135)
!3140 = !DILocation(line: 262, column: 1, scope: !3135)
!3141 = distinct !DISubprogram(name: "xnmalloc", scope: !236, file: !236, line: 99, type: !895, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !232, retainedNodes: !3142)
!3142 = !{!3143, !3144}
!3143 = !DILocalVariable(name: "n", arg: 1, scope: !3141, file: !236, line: 99, type: !48)
!3144 = !DILocalVariable(name: "s", arg: 2, scope: !3141, file: !236, line: 99, type: !48)
!3145 = !DILocation(line: 0, scope: !3141)
!3146 = !DILocation(line: 101, column: 7, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3141, file: !236, line: 101, column: 7)
!3148 = !DILocation(line: 101, column: 7, scope: !3141)
!3149 = !DILocation(line: 102, column: 5, scope: !3147)
!3150 = !DILocation(line: 103, column: 21, scope: !3141)
!3151 = !DILocalVariable(name: "n", arg: 1, scope: !3152, file: !233, line: 39, type: !48)
!3152 = distinct !DISubprogram(name: "xmalloc", scope: !233, file: !233, line: 39, type: !3153, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !232, retainedNodes: !3155)
!3153 = !DISubroutineType(types: !3154)
!3154 = !{!41, !48}
!3155 = !{!3151, !3156}
!3156 = !DILocalVariable(name: "p", scope: !3152, file: !233, line: 41, type: !41)
!3157 = !DILocation(line: 0, scope: !3152, inlinedAt: !3158)
!3158 = distinct !DILocation(line: 103, column: 10, scope: !3141)
!3159 = !DILocation(line: 41, column: 13, scope: !3152, inlinedAt: !3158)
!3160 = !DILocation(line: 42, column: 8, scope: !3161, inlinedAt: !3158)
!3161 = distinct !DILexicalBlock(scope: !3152, file: !233, line: 42, column: 7)
!3162 = !DILocation(line: 42, column: 10, scope: !3161, inlinedAt: !3158)
!3163 = !DILocation(line: 43, column: 5, scope: !3161, inlinedAt: !3158)
!3164 = !DILocation(line: 103, column: 3, scope: !3141)
!3165 = !DILocation(line: 0, scope: !3152)
!3166 = !DILocation(line: 41, column: 13, scope: !3152)
!3167 = !DILocation(line: 42, column: 8, scope: !3161)
!3168 = !DILocation(line: 42, column: 10, scope: !3161)
!3169 = !DILocation(line: 43, column: 5, scope: !3161)
!3170 = !DILocation(line: 44, column: 3, scope: !3152)
!3171 = distinct !DISubprogram(name: "xnrealloc", scope: !236, file: !236, line: 112, type: !3172, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !232, retainedNodes: !3174)
!3172 = !DISubroutineType(types: !3173)
!3173 = !{!41, !41, !48, !48}
!3174 = !{!3175, !3176, !3177}
!3175 = !DILocalVariable(name: "p", arg: 1, scope: !3171, file: !236, line: 112, type: !41)
!3176 = !DILocalVariable(name: "n", arg: 2, scope: !3171, file: !236, line: 112, type: !48)
!3177 = !DILocalVariable(name: "s", arg: 3, scope: !3171, file: !236, line: 112, type: !48)
!3178 = !DILocation(line: 0, scope: !3171)
!3179 = !DILocation(line: 114, column: 7, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3171, file: !236, line: 114, column: 7)
!3181 = !DILocation(line: 114, column: 7, scope: !3171)
!3182 = !DILocation(line: 115, column: 5, scope: !3180)
!3183 = !DILocation(line: 116, column: 25, scope: !3171)
!3184 = !DILocalVariable(name: "p", arg: 1, scope: !3185, file: !233, line: 51, type: !41)
!3185 = distinct !DISubprogram(name: "xrealloc", scope: !233, file: !233, line: 51, type: !3186, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !232, retainedNodes: !3188)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{!41, !41, !48}
!3188 = !{!3184, !3189}
!3189 = !DILocalVariable(name: "n", arg: 2, scope: !3185, file: !233, line: 51, type: !48)
!3190 = !DILocation(line: 0, scope: !3185, inlinedAt: !3191)
!3191 = distinct !DILocation(line: 116, column: 10, scope: !3171)
!3192 = !DILocation(line: 53, column: 8, scope: !3193, inlinedAt: !3191)
!3193 = distinct !DILexicalBlock(scope: !3185, file: !233, line: 53, column: 7)
!3194 = !DILocation(line: 53, column: 10, scope: !3193, inlinedAt: !3191)
!3195 = !DILocation(line: 57, column: 7, scope: !3196, inlinedAt: !3191)
!3196 = distinct !DILexicalBlock(scope: !3193, file: !233, line: 54, column: 5)
!3197 = !DILocation(line: 58, column: 7, scope: !3196, inlinedAt: !3191)
!3198 = !DILocation(line: 61, column: 7, scope: !3185, inlinedAt: !3191)
!3199 = !DILocation(line: 62, column: 8, scope: !3200, inlinedAt: !3191)
!3200 = distinct !DILexicalBlock(scope: !3185, file: !233, line: 62, column: 7)
!3201 = !DILocation(line: 62, column: 10, scope: !3200, inlinedAt: !3191)
!3202 = !DILocation(line: 63, column: 5, scope: !3200, inlinedAt: !3191)
!3203 = !DILocation(line: 116, column: 3, scope: !3171)
!3204 = !DILocation(line: 0, scope: !3185)
!3205 = !DILocation(line: 53, column: 8, scope: !3193)
!3206 = !DILocation(line: 53, column: 10, scope: !3193)
!3207 = !DILocation(line: 57, column: 7, scope: !3196)
!3208 = !DILocation(line: 58, column: 7, scope: !3196)
!3209 = !DILocation(line: 61, column: 7, scope: !3185)
!3210 = !DILocation(line: 62, column: 8, scope: !3200)
!3211 = !DILocation(line: 62, column: 10, scope: !3200)
!3212 = !DILocation(line: 63, column: 5, scope: !3200)
!3213 = !DILocation(line: 65, column: 1, scope: !3185)
!3214 = !DILocation(line: 0, scope: !237)
!3215 = !DILocation(line: 176, column: 14, scope: !237)
!3216 = !DILocation(line: 178, column: 9, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !237, file: !236, line: 178, column: 7)
!3218 = !DILocation(line: 178, column: 7, scope: !237)
!3219 = !DILocation(line: 180, column: 13, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3221, file: !236, line: 180, column: 11)
!3221 = distinct !DILexicalBlock(scope: !3217, file: !236, line: 179, column: 5)
!3222 = !DILocation(line: 180, column: 11, scope: !3221)
!3223 = !DILocation(line: 188, column: 30, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3220, file: !236, line: 181, column: 9)
!3225 = !DILocation(line: 189, column: 16, scope: !3224)
!3226 = !DILocation(line: 189, column: 13, scope: !3224)
!3227 = !DILocation(line: 190, column: 9, scope: !3224)
!3228 = !DILocation(line: 191, column: 11, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3221, file: !236, line: 191, column: 11)
!3230 = !DILocation(line: 191, column: 11, scope: !3221)
!3231 = !DILocation(line: 206, column: 7, scope: !237)
!3232 = !DILocation(line: 207, column: 25, scope: !237)
!3233 = !DILocation(line: 0, scope: !3185, inlinedAt: !3234)
!3234 = distinct !DILocation(line: 207, column: 10, scope: !237)
!3235 = !DILocation(line: 53, column: 10, scope: !3193, inlinedAt: !3234)
!3236 = !DILocation(line: 192, column: 9, scope: !3229)
!3237 = !DILocation(line: 200, column: 69, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3239, file: !236, line: 200, column: 11)
!3239 = distinct !DILexicalBlock(scope: !3217, file: !236, line: 195, column: 5)
!3240 = !DILocation(line: 201, column: 11, scope: !3238)
!3241 = !DILocation(line: 200, column: 11, scope: !3239)
!3242 = !DILocation(line: 202, column: 9, scope: !3238)
!3243 = !DILocation(line: 203, column: 14, scope: !3239)
!3244 = !DILocation(line: 203, column: 18, scope: !3239)
!3245 = !DILocation(line: 203, column: 9, scope: !3239)
!3246 = !DILocation(line: 53, column: 8, scope: !3193, inlinedAt: !3234)
!3247 = !DILocation(line: 57, column: 7, scope: !3196, inlinedAt: !3234)
!3248 = !DILocation(line: 58, column: 7, scope: !3196, inlinedAt: !3234)
!3249 = !DILocation(line: 61, column: 7, scope: !3185, inlinedAt: !3234)
!3250 = !DILocation(line: 62, column: 8, scope: !3200, inlinedAt: !3234)
!3251 = !DILocation(line: 62, column: 10, scope: !3200, inlinedAt: !3234)
!3252 = !DILocation(line: 63, column: 5, scope: !3200, inlinedAt: !3234)
!3253 = !DILocation(line: 207, column: 3, scope: !237)
!3254 = distinct !DISubprogram(name: "xcharalloc", scope: !236, file: !236, line: 216, type: !2389, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !232, retainedNodes: !3255)
!3255 = !{!3256}
!3256 = !DILocalVariable(name: "n", arg: 1, scope: !3254, file: !236, line: 216, type: !48)
!3257 = !DILocation(line: 0, scope: !3254)
!3258 = !DILocation(line: 0, scope: !3152, inlinedAt: !3259)
!3259 = distinct !DILocation(line: 218, column: 10, scope: !3254)
!3260 = !DILocation(line: 41, column: 13, scope: !3152, inlinedAt: !3259)
!3261 = !DILocation(line: 42, column: 8, scope: !3161, inlinedAt: !3259)
!3262 = !DILocation(line: 42, column: 10, scope: !3161, inlinedAt: !3259)
!3263 = !DILocation(line: 43, column: 5, scope: !3161, inlinedAt: !3259)
!3264 = !DILocation(line: 218, column: 3, scope: !3254)
!3265 = distinct !DISubprogram(name: "x2realloc", scope: !233, file: !233, line: 74, type: !3266, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !232, retainedNodes: !3268)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!41, !41, !240}
!3268 = !{!3269, !3270}
!3269 = !DILocalVariable(name: "p", arg: 1, scope: !3265, file: !233, line: 74, type: !41)
!3270 = !DILocalVariable(name: "pn", arg: 2, scope: !3265, file: !233, line: 74, type: !240)
!3271 = !DILocation(line: 0, scope: !3265)
!3272 = !DILocation(line: 0, scope: !237, inlinedAt: !3273)
!3273 = distinct !DILocation(line: 76, column: 10, scope: !3265)
!3274 = !DILocation(line: 176, column: 14, scope: !237, inlinedAt: !3273)
!3275 = !DILocation(line: 178, column: 9, scope: !3217, inlinedAt: !3273)
!3276 = !DILocation(line: 178, column: 7, scope: !237, inlinedAt: !3273)
!3277 = !DILocation(line: 180, column: 13, scope: !3220, inlinedAt: !3273)
!3278 = !DILocation(line: 180, column: 11, scope: !3221, inlinedAt: !3273)
!3279 = !DILocation(line: 191, column: 11, scope: !3229, inlinedAt: !3273)
!3280 = !DILocation(line: 191, column: 11, scope: !3221, inlinedAt: !3273)
!3281 = !DILocation(line: 192, column: 9, scope: !3229, inlinedAt: !3273)
!3282 = !DILocation(line: 201, column: 11, scope: !3238, inlinedAt: !3273)
!3283 = !DILocation(line: 200, column: 11, scope: !3239, inlinedAt: !3273)
!3284 = !DILocation(line: 202, column: 9, scope: !3238, inlinedAt: !3273)
!3285 = !DILocation(line: 203, column: 14, scope: !3239, inlinedAt: !3273)
!3286 = !DILocation(line: 203, column: 18, scope: !3239, inlinedAt: !3273)
!3287 = !DILocation(line: 203, column: 9, scope: !3239, inlinedAt: !3273)
!3288 = !DILocation(line: 0, scope: !3185, inlinedAt: !3289)
!3289 = distinct !DILocation(line: 207, column: 10, scope: !237, inlinedAt: !3273)
!3290 = !DILocation(line: 53, column: 10, scope: !3193, inlinedAt: !3289)
!3291 = !DILocation(line: 206, column: 7, scope: !237, inlinedAt: !3273)
!3292 = !DILocation(line: 61, column: 7, scope: !3185, inlinedAt: !3289)
!3293 = !DILocation(line: 62, column: 8, scope: !3200, inlinedAt: !3289)
!3294 = !DILocation(line: 62, column: 10, scope: !3200, inlinedAt: !3289)
!3295 = !DILocation(line: 63, column: 5, scope: !3200, inlinedAt: !3289)
!3296 = !DILocation(line: 76, column: 3, scope: !3265)
!3297 = distinct !DISubprogram(name: "xzalloc", scope: !233, file: !233, line: 84, type: !3153, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !232, retainedNodes: !3298)
!3298 = !{!3299}
!3299 = !DILocalVariable(name: "n", arg: 1, scope: !3297, file: !233, line: 84, type: !48)
!3300 = !DILocation(line: 0, scope: !3297)
!3301 = !DILocalVariable(name: "n", arg: 1, scope: !3302, file: !233, line: 93, type: !48)
!3302 = distinct !DISubprogram(name: "xcalloc", scope: !233, file: !233, line: 93, type: !895, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !232, retainedNodes: !3303)
!3303 = !{!3301, !3304, !3305}
!3304 = !DILocalVariable(name: "s", arg: 2, scope: !3302, file: !233, line: 93, type: !48)
!3305 = !DILocalVariable(name: "p", scope: !3302, file: !233, line: 95, type: !41)
!3306 = !DILocation(line: 0, scope: !3302, inlinedAt: !3307)
!3307 = distinct !DILocation(line: 86, column: 10, scope: !3297)
!3308 = !DILocation(line: 100, column: 7, scope: !3309, inlinedAt: !3307)
!3309 = distinct !DILexicalBlock(scope: !3302, file: !233, line: 100, column: 7)
!3310 = !DILocation(line: 101, column: 7, scope: !3309, inlinedAt: !3307)
!3311 = !DILocation(line: 101, column: 18, scope: !3309, inlinedAt: !3307)
!3312 = !DILocation(line: 101, column: 16, scope: !3309, inlinedAt: !3307)
!3313 = !DILocation(line: 100, column: 7, scope: !3302, inlinedAt: !3307)
!3314 = !DILocation(line: 102, column: 5, scope: !3309, inlinedAt: !3307)
!3315 = !DILocation(line: 86, column: 3, scope: !3297)
!3316 = !DILocation(line: 0, scope: !3302)
!3317 = !DILocation(line: 100, column: 7, scope: !3309)
!3318 = !DILocation(line: 101, column: 7, scope: !3309)
!3319 = !DILocation(line: 101, column: 18, scope: !3309)
!3320 = !DILocation(line: 101, column: 16, scope: !3309)
!3321 = !DILocation(line: 100, column: 7, scope: !3302)
!3322 = !DILocation(line: 102, column: 5, scope: !3309)
!3323 = !DILocation(line: 103, column: 3, scope: !3302)
!3324 = distinct !DISubprogram(name: "xmemdup", scope: !233, file: !233, line: 111, type: !3325, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !232, retainedNodes: !3327)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{!41, !37, !48}
!3327 = !{!3328, !3329}
!3328 = !DILocalVariable(name: "p", arg: 1, scope: !3324, file: !233, line: 111, type: !37)
!3329 = !DILocalVariable(name: "s", arg: 2, scope: !3324, file: !233, line: 111, type: !48)
!3330 = !DILocation(line: 0, scope: !3324)
!3331 = !DILocation(line: 0, scope: !3152, inlinedAt: !3332)
!3332 = distinct !DILocation(line: 113, column: 18, scope: !3324)
!3333 = !DILocation(line: 41, column: 13, scope: !3152, inlinedAt: !3332)
!3334 = !DILocation(line: 42, column: 8, scope: !3161, inlinedAt: !3332)
!3335 = !DILocation(line: 42, column: 10, scope: !3161, inlinedAt: !3332)
!3336 = !DILocation(line: 43, column: 5, scope: !3161, inlinedAt: !3332)
!3337 = !DILocalVariable(name: "__dest", arg: 1, scope: !3338, file: !1916, line: 26, type: !3341)
!3338 = distinct !DISubprogram(name: "memcpy", scope: !1916, file: !1916, line: 26, type: !3339, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !232, retainedNodes: !3343)
!3339 = !DISubroutineType(types: !3340)
!3340 = !{!41, !3341, !3342, !48}
!3341 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !41)
!3342 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !37)
!3343 = !{!3337, !3344, !3345}
!3344 = !DILocalVariable(name: "__src", arg: 2, scope: !3338, file: !1916, line: 26, type: !3342)
!3345 = !DILocalVariable(name: "__len", arg: 3, scope: !3338, file: !1916, line: 26, type: !48)
!3346 = !DILocation(line: 0, scope: !3338, inlinedAt: !3347)
!3347 = distinct !DILocation(line: 113, column: 10, scope: !3324)
!3348 = !DILocation(line: 29, column: 10, scope: !3338, inlinedAt: !3347)
!3349 = !DILocation(line: 113, column: 3, scope: !3324)
!3350 = distinct !DISubprogram(name: "xstrdup", scope: !233, file: !233, line: 119, type: !1027, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !232, retainedNodes: !3351)
!3351 = !{!3352}
!3352 = !DILocalVariable(name: "string", arg: 1, scope: !3350, file: !233, line: 119, type: !51)
!3353 = !DILocation(line: 0, scope: !3350)
!3354 = !DILocation(line: 121, column: 27, scope: !3350)
!3355 = !DILocation(line: 121, column: 43, scope: !3350)
!3356 = !DILocation(line: 0, scope: !3324, inlinedAt: !3357)
!3357 = distinct !DILocation(line: 121, column: 10, scope: !3350)
!3358 = !DILocation(line: 0, scope: !3152, inlinedAt: !3359)
!3359 = distinct !DILocation(line: 113, column: 18, scope: !3324, inlinedAt: !3357)
!3360 = !DILocation(line: 41, column: 13, scope: !3152, inlinedAt: !3359)
!3361 = !DILocation(line: 42, column: 8, scope: !3161, inlinedAt: !3359)
!3362 = !DILocation(line: 42, column: 10, scope: !3161, inlinedAt: !3359)
!3363 = !DILocation(line: 43, column: 5, scope: !3161, inlinedAt: !3359)
!3364 = !DILocation(line: 0, scope: !3338, inlinedAt: !3365)
!3365 = distinct !DILocation(line: 113, column: 10, scope: !3324, inlinedAt: !3357)
!3366 = !DILocation(line: 29, column: 10, scope: !3338, inlinedAt: !3365)
!3367 = !DILocation(line: 121, column: 3, scope: !3350)
!3368 = distinct !DISubprogram(name: "xalloc_die", scope: !250, file: !250, line: 32, type: !104, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !92)
!3369 = !DILocation(line: 34, column: 10, scope: !3368)
!3370 = !DILocation(line: 34, column: 33, scope: !3368)
!3371 = !DILocation(line: 34, column: 3, scope: !3368)
!3372 = !DILocation(line: 40, column: 3, scope: !3368)
!3373 = distinct !DISubprogram(name: "rpl_calloc", scope: !252, file: !252, line: 42, type: !895, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !251, retainedNodes: !3374)
!3374 = !{!3375, !3376, !3377, !3378}
!3375 = !DILocalVariable(name: "n", arg: 1, scope: !3373, file: !252, line: 42, type: !48)
!3376 = !DILocalVariable(name: "s", arg: 2, scope: !3373, file: !252, line: 42, type: !48)
!3377 = !DILocalVariable(name: "result", scope: !3373, file: !252, line: 44, type: !41)
!3378 = !DILocalVariable(name: "bytes", scope: !3379, file: !252, line: 56, type: !48)
!3379 = distinct !DILexicalBlock(scope: !3380, file: !252, line: 53, column: 5)
!3380 = distinct !DILexicalBlock(scope: !3373, file: !252, line: 47, column: 7)
!3381 = !DILocation(line: 0, scope: !3373)
!3382 = !DILocation(line: 47, column: 9, scope: !3380)
!3383 = !DILocation(line: 47, column: 14, scope: !3380)
!3384 = !DILocation(line: 0, scope: !3379)
!3385 = !DILocation(line: 57, column: 21, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3379, file: !252, line: 57, column: 11)
!3387 = !DILocation(line: 57, column: 11, scope: !3379)
!3388 = !DILocation(line: 59, column: 11, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3386, file: !252, line: 58, column: 9)
!3390 = !DILocation(line: 59, column: 17, scope: !3389)
!3391 = !DILocation(line: 65, column: 12, scope: !3373)
!3392 = !DILocation(line: 72, column: 3, scope: !3373)
!3393 = !DILocation(line: 73, column: 1, scope: !3373)
!3394 = distinct !DISubprogram(name: "rpl_fclose", scope: !254, file: !254, line: 58, type: !3395, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !3431)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{!47, !3397}
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !863, line: 7, baseType: !3399)
!3399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !746, line: 49, size: 1728, elements: !3400)
!3400 = !{!3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3399, file: !746, line: 51, baseType: !47, size: 32)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3399, file: !746, line: 54, baseType: !39, size: 64, offset: 64)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3399, file: !746, line: 55, baseType: !39, size: 64, offset: 128)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3399, file: !746, line: 56, baseType: !39, size: 64, offset: 192)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3399, file: !746, line: 57, baseType: !39, size: 64, offset: 256)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3399, file: !746, line: 58, baseType: !39, size: 64, offset: 320)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3399, file: !746, line: 59, baseType: !39, size: 64, offset: 384)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3399, file: !746, line: 60, baseType: !39, size: 64, offset: 448)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3399, file: !746, line: 61, baseType: !39, size: 64, offset: 512)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3399, file: !746, line: 64, baseType: !39, size: 64, offset: 576)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3399, file: !746, line: 65, baseType: !39, size: 64, offset: 640)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3399, file: !746, line: 66, baseType: !39, size: 64, offset: 704)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3399, file: !746, line: 68, baseType: !761, size: 64, offset: 768)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3399, file: !746, line: 70, baseType: !3415, size: 64, offset: 832)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3399, file: !746, line: 72, baseType: !47, size: 32, offset: 896)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3399, file: !746, line: 73, baseType: !47, size: 32, offset: 928)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3399, file: !746, line: 74, baseType: !767, size: 64, offset: 960)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3399, file: !746, line: 77, baseType: !151, size: 16, offset: 1024)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3399, file: !746, line: 78, baseType: !772, size: 8, offset: 1040)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3399, file: !746, line: 79, baseType: !774, size: 8, offset: 1048)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3399, file: !746, line: 81, baseType: !778, size: 64, offset: 1088)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3399, file: !746, line: 89, baseType: !781, size: 64, offset: 1152)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3399, file: !746, line: 91, baseType: !783, size: 64, offset: 1216)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3399, file: !746, line: 92, baseType: !786, size: 64, offset: 1280)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3399, file: !746, line: 93, baseType: !3415, size: 64, offset: 1344)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3399, file: !746, line: 94, baseType: !41, size: 64, offset: 1408)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3399, file: !746, line: 95, baseType: !48, size: 64, offset: 1472)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3399, file: !746, line: 96, baseType: !47, size: 32, offset: 1536)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3399, file: !746, line: 98, baseType: !793, size: 160, offset: 1568)
!3431 = !{!3432, !3433, !3434, !3435}
!3432 = !DILocalVariable(name: "fp", arg: 1, scope: !3394, file: !254, line: 58, type: !3397)
!3433 = !DILocalVariable(name: "saved_errno", scope: !3394, file: !254, line: 60, type: !47)
!3434 = !DILocalVariable(name: "fd", scope: !3394, file: !254, line: 61, type: !47)
!3435 = !DILocalVariable(name: "result", scope: !3394, file: !254, line: 62, type: !47)
!3436 = !DILocation(line: 0, scope: !3394)
!3437 = !DILocation(line: 65, column: 8, scope: !3394)
!3438 = !DILocation(line: 66, column: 10, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3394, file: !254, line: 66, column: 7)
!3440 = !DILocation(line: 66, column: 7, scope: !3394)
!3441 = !DILocation(line: 67, column: 12, scope: !3439)
!3442 = !DILocation(line: 67, column: 5, scope: !3439)
!3443 = !DILocation(line: 72, column: 9, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3394, file: !254, line: 72, column: 7)
!3445 = !DILocation(line: 72, column: 23, scope: !3444)
!3446 = !DILocation(line: 72, column: 33, scope: !3444)
!3447 = !DILocation(line: 72, column: 26, scope: !3444)
!3448 = !DILocation(line: 72, column: 59, scope: !3444)
!3449 = !DILocation(line: 73, column: 7, scope: !3444)
!3450 = !DILocation(line: 73, column: 10, scope: !3444)
!3451 = !DILocation(line: 72, column: 7, scope: !3394)
!3452 = !DILocation(line: 100, column: 12, scope: !3394)
!3453 = !DILocation(line: 105, column: 7, scope: !3394)
!3454 = !DILocation(line: 74, column: 19, scope: !3444)
!3455 = !DILocation(line: 105, column: 19, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3394, file: !254, line: 105, column: 7)
!3457 = !DILocation(line: 107, column: 13, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3456, file: !254, line: 106, column: 5)
!3459 = !DILocation(line: 109, column: 5, scope: !3458)
!3460 = !DILocation(line: 112, column: 1, scope: !3394)
!3461 = !DISubprogram(name: "fclose", scope: !741, file: !741, line: 213, type: !3462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !92)
!3462 = !DISubroutineType(types: !3463)
!3463 = !{!47, !3415}
!3464 = !DISubprogram(name: "lseek", scope: !1056, file: !1056, line: 334, type: !3465, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !92)
!3465 = !DISubroutineType(types: !3466)
!3466 = !{!769, !47, !769, !47}
!3467 = distinct !DISubprogram(name: "rpl_fcntl", scope: !203, file: !203, line: 202, type: !3468, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !3470)
!3468 = !DISubroutineType(types: !3469)
!3469 = !{!47, !47, !47, null}
!3470 = !{!3471, !3472, !3473, !3483, !3484, !3487, !3489, !3493}
!3471 = !DILocalVariable(name: "fd", arg: 1, scope: !3467, file: !203, line: 202, type: !47)
!3472 = !DILocalVariable(name: "action", arg: 2, scope: !3467, file: !203, line: 202, type: !47)
!3473 = !DILocalVariable(name: "arg", scope: !3467, file: !203, line: 208, type: !3474)
!3474 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3125, line: 14, baseType: !3475)
!3475 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !203, baseType: !3476)
!3476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3477, size: 192, elements: !775)
!3477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3478)
!3478 = !{!3479, !3480, !3481, !3482}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3477, file: !203, line: 208, baseType: !6, size: 32)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3477, file: !203, line: 208, baseType: !6, size: 32, offset: 32)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3477, file: !203, line: 208, baseType: !41, size: 64, offset: 64)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3477, file: !203, line: 208, baseType: !41, size: 64, offset: 128)
!3483 = !DILocalVariable(name: "result", scope: !3467, file: !203, line: 209, type: !47)
!3484 = !DILocalVariable(name: "target", scope: !3485, file: !203, line: 215, type: !47)
!3485 = distinct !DILexicalBlock(scope: !3486, file: !203, line: 214, column: 7)
!3486 = distinct !DILexicalBlock(scope: !3467, file: !203, line: 212, column: 5)
!3487 = !DILocalVariable(name: "target", scope: !3488, file: !203, line: 222, type: !47)
!3488 = distinct !DILexicalBlock(scope: !3486, file: !203, line: 221, column: 7)
!3489 = !DILocalVariable(name: "x", scope: !3490, file: !203, line: 423, type: !47)
!3490 = distinct !DILexicalBlock(scope: !3491, file: !203, line: 422, column: 13)
!3491 = distinct !DILexicalBlock(scope: !3492, file: !203, line: 260, column: 11)
!3492 = distinct !DILexicalBlock(scope: !3486, file: !203, line: 257, column: 7)
!3493 = !DILocalVariable(name: "p", scope: !3494, file: !203, line: 431, type: !41)
!3494 = distinct !DILexicalBlock(scope: !3491, file: !203, line: 430, column: 13)
!3495 = !DILocation(line: 0, scope: !3467)
!3496 = !DILocation(line: 208, column: 3, scope: !3467)
!3497 = !DILocation(line: 208, column: 11, scope: !3467)
!3498 = !DILocation(line: 210, column: 3, scope: !3467)
!3499 = !DILocation(line: 211, column: 3, scope: !3467)
!3500 = !DILocation(line: 215, column: 22, scope: !3485)
!3501 = !DILocation(line: 0, scope: !3485)
!3502 = !DILocalVariable(name: "fd", arg: 1, scope: !3503, file: !203, line: 447, type: !47)
!3503 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !203, file: !203, line: 447, type: !204, scopeLine: 448, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !3504)
!3504 = !{!3502, !3505, !3506}
!3505 = !DILocalVariable(name: "target", arg: 2, scope: !3503, file: !203, line: 447, type: !47)
!3506 = !DILocalVariable(name: "result", scope: !3503, file: !203, line: 449, type: !47)
!3507 = !DILocation(line: 0, scope: !3503, inlinedAt: !3508)
!3508 = distinct !DILocation(line: 216, column: 18, scope: !3485)
!3509 = !DILocation(line: 482, column: 12, scope: !3503, inlinedAt: !3508)
!3510 = !DILocation(line: 222, column: 22, scope: !3488)
!3511 = !DILocation(line: 0, scope: !3488)
!3512 = !DILocation(line: 0, scope: !202, inlinedAt: !3513)
!3513 = distinct !DILocation(line: 223, column: 18, scope: !3488)
!3514 = !DILocation(line: 508, column: 12, scope: !3515, inlinedAt: !3513)
!3515 = distinct !DILexicalBlock(scope: !202, file: !203, line: 508, column: 7)
!3516 = !DILocation(line: 508, column: 9, scope: !3515, inlinedAt: !3513)
!3517 = !DILocation(line: 508, column: 7, scope: !202, inlinedAt: !3513)
!3518 = !DILocation(line: 510, column: 16, scope: !3519, inlinedAt: !3513)
!3519 = distinct !DILexicalBlock(scope: !3515, file: !203, line: 509, column: 5)
!3520 = !DILocation(line: 511, column: 13, scope: !3521, inlinedAt: !3513)
!3521 = distinct !DILexicalBlock(scope: !3519, file: !203, line: 511, column: 11)
!3522 = !DILocation(line: 511, column: 23, scope: !3521, inlinedAt: !3513)
!3523 = !DILocation(line: 511, column: 26, scope: !3521, inlinedAt: !3513)
!3524 = !DILocation(line: 511, column: 32, scope: !3521, inlinedAt: !3513)
!3525 = !DILocation(line: 511, column: 11, scope: !3519, inlinedAt: !3513)
!3526 = !DILocation(line: 513, column: 30, scope: !3527, inlinedAt: !3513)
!3527 = distinct !DILexicalBlock(scope: !3521, file: !203, line: 512, column: 9)
!3528 = !DILocation(line: 529, column: 19, scope: !214, inlinedAt: !3513)
!3529 = !DILocation(line: 0, scope: !3503, inlinedAt: !3530)
!3530 = distinct !DILocation(line: 521, column: 20, scope: !3531, inlinedAt: !3513)
!3531 = distinct !DILexicalBlock(scope: !3521, file: !203, line: 520, column: 9)
!3532 = !DILocation(line: 482, column: 12, scope: !3503, inlinedAt: !3530)
!3533 = !DILocation(line: 522, column: 22, scope: !3534, inlinedAt: !3513)
!3534 = distinct !DILexicalBlock(scope: !3531, file: !203, line: 522, column: 15)
!3535 = !DILocation(line: 522, column: 15, scope: !3531, inlinedAt: !3513)
!3536 = !DILocation(line: 523, column: 32, scope: !3534, inlinedAt: !3513)
!3537 = !DILocation(line: 523, column: 13, scope: !3534, inlinedAt: !3513)
!3538 = !DILocation(line: 0, scope: !3503, inlinedAt: !3539)
!3539 = distinct !DILocation(line: 528, column: 14, scope: !3515, inlinedAt: !3513)
!3540 = !DILocation(line: 482, column: 12, scope: !3503, inlinedAt: !3539)
!3541 = !DILocation(line: 0, scope: !3515, inlinedAt: !3513)
!3542 = !DILocation(line: 529, column: 9, scope: !214, inlinedAt: !3513)
!3543 = !DILocation(line: 531, column: 19, scope: !213, inlinedAt: !3513)
!3544 = !DILocation(line: 0, scope: !213, inlinedAt: !3513)
!3545 = !DILocation(line: 532, column: 17, scope: !217, inlinedAt: !3513)
!3546 = !DILocation(line: 532, column: 21, scope: !217, inlinedAt: !3513)
!3547 = !DILocation(line: 532, column: 54, scope: !217, inlinedAt: !3513)
!3548 = !DILocation(line: 532, column: 24, scope: !217, inlinedAt: !3513)
!3549 = !DILocation(line: 532, column: 68, scope: !217, inlinedAt: !3513)
!3550 = !DILocation(line: 532, column: 11, scope: !213, inlinedAt: !3513)
!3551 = !DILocation(line: 534, column: 29, scope: !216, inlinedAt: !3513)
!3552 = !DILocation(line: 0, scope: !216, inlinedAt: !3513)
!3553 = !DILocation(line: 535, column: 11, scope: !216, inlinedAt: !3513)
!3554 = !DILocation(line: 536, column: 17, scope: !216, inlinedAt: !3513)
!3555 = !DILocation(line: 538, column: 9, scope: !216, inlinedAt: !3513)
!3556 = !DILocation(line: 328, column: 22, scope: !3491)
!3557 = !DILocation(line: 329, column: 13, scope: !3491)
!3558 = !DILocation(line: 423, column: 23, scope: !3490)
!3559 = !DILocation(line: 0, scope: !3490)
!3560 = !DILocation(line: 424, column: 24, scope: !3490)
!3561 = !DILocation(line: 426, column: 13, scope: !3491)
!3562 = !DILocation(line: 431, column: 25, scope: !3494)
!3563 = !DILocation(line: 0, scope: !3494)
!3564 = !DILocation(line: 432, column: 24, scope: !3494)
!3565 = !DILocation(line: 434, column: 13, scope: !3491)
!3566 = !DILocation(line: 0, scope: !3486)
!3567 = !DILocation(line: 442, column: 3, scope: !3467)
!3568 = !DILocation(line: 444, column: 1, scope: !3467)
!3569 = !DILocation(line: 443, column: 3, scope: !3467)
!3570 = !DISubprogram(name: "fcntl", scope: !1330, file: !1330, line: 176, type: !3468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !92)
!3571 = distinct !DISubprogram(name: "rpl_fflush", scope: !256, file: !256, line: 129, type: !3572, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !3608)
!3572 = !DISubroutineType(types: !3573)
!3573 = !{!47, !3574}
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !863, line: 7, baseType: !3576)
!3576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !746, line: 49, size: 1728, elements: !3577)
!3577 = !{!3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607}
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3576, file: !746, line: 51, baseType: !47, size: 32)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3576, file: !746, line: 54, baseType: !39, size: 64, offset: 64)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3576, file: !746, line: 55, baseType: !39, size: 64, offset: 128)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3576, file: !746, line: 56, baseType: !39, size: 64, offset: 192)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3576, file: !746, line: 57, baseType: !39, size: 64, offset: 256)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3576, file: !746, line: 58, baseType: !39, size: 64, offset: 320)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3576, file: !746, line: 59, baseType: !39, size: 64, offset: 384)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3576, file: !746, line: 60, baseType: !39, size: 64, offset: 448)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3576, file: !746, line: 61, baseType: !39, size: 64, offset: 512)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3576, file: !746, line: 64, baseType: !39, size: 64, offset: 576)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3576, file: !746, line: 65, baseType: !39, size: 64, offset: 640)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3576, file: !746, line: 66, baseType: !39, size: 64, offset: 704)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3576, file: !746, line: 68, baseType: !761, size: 64, offset: 768)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3576, file: !746, line: 70, baseType: !3592, size: 64, offset: 832)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3576, file: !746, line: 72, baseType: !47, size: 32, offset: 896)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3576, file: !746, line: 73, baseType: !47, size: 32, offset: 928)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3576, file: !746, line: 74, baseType: !767, size: 64, offset: 960)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3576, file: !746, line: 77, baseType: !151, size: 16, offset: 1024)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3576, file: !746, line: 78, baseType: !772, size: 8, offset: 1040)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3576, file: !746, line: 79, baseType: !774, size: 8, offset: 1048)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3576, file: !746, line: 81, baseType: !778, size: 64, offset: 1088)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3576, file: !746, line: 89, baseType: !781, size: 64, offset: 1152)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3576, file: !746, line: 91, baseType: !783, size: 64, offset: 1216)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3576, file: !746, line: 92, baseType: !786, size: 64, offset: 1280)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3576, file: !746, line: 93, baseType: !3592, size: 64, offset: 1344)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3576, file: !746, line: 94, baseType: !41, size: 64, offset: 1408)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3576, file: !746, line: 95, baseType: !48, size: 64, offset: 1472)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3576, file: !746, line: 96, baseType: !47, size: 32, offset: 1536)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3576, file: !746, line: 98, baseType: !793, size: 160, offset: 1568)
!3608 = !{!3609}
!3609 = !DILocalVariable(name: "stream", arg: 1, scope: !3571, file: !256, line: 129, type: !3574)
!3610 = !DILocation(line: 0, scope: !3571)
!3611 = !DILocation(line: 150, column: 14, scope: !3612)
!3612 = distinct !DILexicalBlock(scope: !3571, file: !256, line: 150, column: 7)
!3613 = !DILocation(line: 150, column: 22, scope: !3612)
!3614 = !DILocation(line: 150, column: 27, scope: !3612)
!3615 = !DILocation(line: 150, column: 7, scope: !3571)
!3616 = !DILocation(line: 151, column: 12, scope: !3612)
!3617 = !DILocation(line: 151, column: 5, scope: !3612)
!3618 = !DILocalVariable(name: "fp", arg: 1, scope: !3619, file: !256, line: 41, type: !3574)
!3619 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !256, file: !256, line: 41, type: !3620, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !3622)
!3620 = !DISubroutineType(types: !3621)
!3621 = !{null, !3574}
!3622 = !{!3618}
!3623 = !DILocation(line: 0, scope: !3619, inlinedAt: !3624)
!3624 = distinct !DILocation(line: 156, column: 3, scope: !3571)
!3625 = !DILocation(line: 43, column: 11, scope: !3626, inlinedAt: !3624)
!3626 = distinct !DILexicalBlock(scope: !3619, file: !256, line: 43, column: 7)
!3627 = !{!1207, !850, i64 0}
!3628 = !DILocation(line: 43, column: 18, scope: !3626, inlinedAt: !3624)
!3629 = !DILocation(line: 43, column: 7, scope: !3619, inlinedAt: !3624)
!3630 = !DILocation(line: 45, column: 5, scope: !3626, inlinedAt: !3624)
!3631 = !DILocation(line: 158, column: 10, scope: !3571)
!3632 = !DILocation(line: 158, column: 3, scope: !3571)
!3633 = !DILocation(line: 235, column: 1, scope: !3571)
!3634 = !DISubprogram(name: "fflush", scope: !741, file: !741, line: 218, type: !3635, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !92)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{!47, !3592}
!3637 = distinct !DISubprogram(name: "rpl_fseeko", scope: !258, file: !258, line: 28, type: !3638, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !257, retainedNodes: !3674)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{!47, !3640, !1316, !47}
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3641 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !863, line: 7, baseType: !3642)
!3642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !746, line: 49, size: 1728, elements: !3643)
!3643 = !{!3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673}
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3642, file: !746, line: 51, baseType: !47, size: 32)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3642, file: !746, line: 54, baseType: !39, size: 64, offset: 64)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3642, file: !746, line: 55, baseType: !39, size: 64, offset: 128)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3642, file: !746, line: 56, baseType: !39, size: 64, offset: 192)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3642, file: !746, line: 57, baseType: !39, size: 64, offset: 256)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3642, file: !746, line: 58, baseType: !39, size: 64, offset: 320)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3642, file: !746, line: 59, baseType: !39, size: 64, offset: 384)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3642, file: !746, line: 60, baseType: !39, size: 64, offset: 448)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3642, file: !746, line: 61, baseType: !39, size: 64, offset: 512)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3642, file: !746, line: 64, baseType: !39, size: 64, offset: 576)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3642, file: !746, line: 65, baseType: !39, size: 64, offset: 640)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3642, file: !746, line: 66, baseType: !39, size: 64, offset: 704)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3642, file: !746, line: 68, baseType: !761, size: 64, offset: 768)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3642, file: !746, line: 70, baseType: !3658, size: 64, offset: 832)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3642, file: !746, line: 72, baseType: !47, size: 32, offset: 896)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3642, file: !746, line: 73, baseType: !47, size: 32, offset: 928)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3642, file: !746, line: 74, baseType: !767, size: 64, offset: 960)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3642, file: !746, line: 77, baseType: !151, size: 16, offset: 1024)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3642, file: !746, line: 78, baseType: !772, size: 8, offset: 1040)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3642, file: !746, line: 79, baseType: !774, size: 8, offset: 1048)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3642, file: !746, line: 81, baseType: !778, size: 64, offset: 1088)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3642, file: !746, line: 89, baseType: !781, size: 64, offset: 1152)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3642, file: !746, line: 91, baseType: !783, size: 64, offset: 1216)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3642, file: !746, line: 92, baseType: !786, size: 64, offset: 1280)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3642, file: !746, line: 93, baseType: !3658, size: 64, offset: 1344)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3642, file: !746, line: 94, baseType: !41, size: 64, offset: 1408)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3642, file: !746, line: 95, baseType: !48, size: 64, offset: 1472)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3642, file: !746, line: 96, baseType: !47, size: 32, offset: 1536)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3642, file: !746, line: 98, baseType: !793, size: 160, offset: 1568)
!3674 = !{!3675, !3676, !3677, !3678}
!3675 = !DILocalVariable(name: "fp", arg: 1, scope: !3637, file: !258, line: 28, type: !3640)
!3676 = !DILocalVariable(name: "offset", arg: 2, scope: !3637, file: !258, line: 28, type: !1316)
!3677 = !DILocalVariable(name: "whence", arg: 3, scope: !3637, file: !258, line: 28, type: !47)
!3678 = !DILocalVariable(name: "pos", scope: !3679, file: !258, line: 117, type: !1316)
!3679 = distinct !DILexicalBlock(scope: !3680, file: !258, line: 113, column: 5)
!3680 = distinct !DILexicalBlock(scope: !3637, file: !258, line: 52, column: 7)
!3681 = !DILocation(line: 0, scope: !3637)
!3682 = !DILocation(line: 52, column: 11, scope: !3680)
!3683 = !{!1207, !673, i64 16}
!3684 = !DILocation(line: 52, column: 31, scope: !3680)
!3685 = !{!1207, !673, i64 8}
!3686 = !DILocation(line: 52, column: 24, scope: !3680)
!3687 = !DILocation(line: 53, column: 7, scope: !3680)
!3688 = !DILocation(line: 53, column: 14, scope: !3680)
!3689 = !DILocation(line: 53, column: 35, scope: !3680)
!3690 = !{!1207, !673, i64 32}
!3691 = !DILocation(line: 53, column: 28, scope: !3680)
!3692 = !DILocation(line: 54, column: 7, scope: !3680)
!3693 = !DILocation(line: 54, column: 14, scope: !3680)
!3694 = !{!1207, !673, i64 72}
!3695 = !DILocation(line: 54, column: 28, scope: !3680)
!3696 = !DILocation(line: 52, column: 7, scope: !3637)
!3697 = !DILocation(line: 117, column: 26, scope: !3679)
!3698 = !DILocation(line: 117, column: 19, scope: !3679)
!3699 = !DILocation(line: 0, scope: !3679)
!3700 = !DILocation(line: 118, column: 15, scope: !3701)
!3701 = distinct !DILexicalBlock(scope: !3679, file: !258, line: 118, column: 11)
!3702 = !DILocation(line: 118, column: 11, scope: !3679)
!3703 = !DILocation(line: 129, column: 11, scope: !3679)
!3704 = !DILocation(line: 129, column: 18, scope: !3679)
!3705 = !DILocation(line: 130, column: 11, scope: !3679)
!3706 = !DILocation(line: 130, column: 19, scope: !3679)
!3707 = !{!1207, !1208, i64 144}
!3708 = !DILocation(line: 161, column: 7, scope: !3679)
!3709 = !DILocation(line: 163, column: 10, scope: !3637)
!3710 = !DILocation(line: 163, column: 3, scope: !3637)
!3711 = !DILocation(line: 164, column: 1, scope: !3637)
!3712 = !DISubprogram(name: "fseeko", scope: !741, file: !741, line: 712, type: !3713, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !92)
!3713 = !DISubroutineType(types: !3714)
!3714 = !{!47, !3658, !769, !47}
!3715 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !260, file: !260, line: 86, type: !3716, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !3730)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!48, !3718, !51, !48, !3719}
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1672, line: 6, baseType: !3721)
!3721 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1674, line: 21, baseType: !3722)
!3722 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1674, line: 13, size: 64, elements: !3723)
!3723 = !{!3724, !3725}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3722, file: !1674, line: 15, baseType: !47, size: 32)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3722, file: !1674, line: 20, baseType: !3726, size: 32, offset: 32)
!3726 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3722, file: !1674, line: 16, size: 32, elements: !3727)
!3727 = !{!3728, !3729}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3726, file: !1674, line: 18, baseType: !6, size: 32)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3726, file: !1674, line: 19, baseType: !1683, size: 32)
!3730 = !{!3731, !3732, !3733, !3734, !3735, !3736, !3737}
!3731 = !DILocalVariable(name: "pwc", arg: 1, scope: !3715, file: !260, line: 86, type: !3718)
!3732 = !DILocalVariable(name: "s", arg: 2, scope: !3715, file: !260, line: 86, type: !51)
!3733 = !DILocalVariable(name: "n", arg: 3, scope: !3715, file: !260, line: 86, type: !48)
!3734 = !DILocalVariable(name: "ps", arg: 4, scope: !3715, file: !260, line: 86, type: !3719)
!3735 = !DILocalVariable(name: "ret", scope: !3715, file: !260, line: 88, type: !48)
!3736 = !DILocalVariable(name: "wc", scope: !3715, file: !260, line: 89, type: !1686)
!3737 = !DILocalVariable(name: "uc", scope: !3738, file: !260, line: 156, type: !53)
!3738 = distinct !DILexicalBlock(scope: !3739, file: !260, line: 155, column: 5)
!3739 = distinct !DILexicalBlock(scope: !3715, file: !260, line: 154, column: 7)
!3740 = !DILocation(line: 0, scope: !3715)
!3741 = !DILocation(line: 89, column: 3, scope: !3715)
!3742 = !DILocation(line: 105, column: 9, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3715, file: !260, line: 105, column: 7)
!3744 = !DILocation(line: 105, column: 7, scope: !3715)
!3745 = !DILocation(line: 145, column: 9, scope: !3715)
!3746 = !DILocation(line: 154, column: 19, scope: !3739)
!3747 = !DILocation(line: 154, column: 26, scope: !3739)
!3748 = !DILocation(line: 154, column: 41, scope: !3739)
!3749 = !DILocation(line: 154, column: 7, scope: !3715)
!3750 = !DILocation(line: 156, column: 26, scope: !3738)
!3751 = !DILocation(line: 0, scope: !3738)
!3752 = !DILocation(line: 157, column: 14, scope: !3738)
!3753 = !DILocation(line: 157, column: 12, scope: !3738)
!3754 = !DILocation(line: 163, column: 1, scope: !3715)
!3755 = !DISubprogram(name: "mbrtowc", scope: !2349, file: !2349, line: 296, type: !3756, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !92)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{!50, !71, !51, !50, !3758}
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3759 = distinct !DISubprogram(name: "close_stream", scope: !263, file: !263, line: 56, type: !3760, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !262, retainedNodes: !3796)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{!47, !3762}
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !863, line: 7, baseType: !3764)
!3764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !746, line: 49, size: 1728, elements: !3765)
!3765 = !{!3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3764, file: !746, line: 51, baseType: !47, size: 32)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3764, file: !746, line: 54, baseType: !39, size: 64, offset: 64)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3764, file: !746, line: 55, baseType: !39, size: 64, offset: 128)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3764, file: !746, line: 56, baseType: !39, size: 64, offset: 192)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3764, file: !746, line: 57, baseType: !39, size: 64, offset: 256)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3764, file: !746, line: 58, baseType: !39, size: 64, offset: 320)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3764, file: !746, line: 59, baseType: !39, size: 64, offset: 384)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3764, file: !746, line: 60, baseType: !39, size: 64, offset: 448)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3764, file: !746, line: 61, baseType: !39, size: 64, offset: 512)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3764, file: !746, line: 64, baseType: !39, size: 64, offset: 576)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3764, file: !746, line: 65, baseType: !39, size: 64, offset: 640)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3764, file: !746, line: 66, baseType: !39, size: 64, offset: 704)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3764, file: !746, line: 68, baseType: !761, size: 64, offset: 768)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3764, file: !746, line: 70, baseType: !3780, size: 64, offset: 832)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3764, file: !746, line: 72, baseType: !47, size: 32, offset: 896)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3764, file: !746, line: 73, baseType: !47, size: 32, offset: 928)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3764, file: !746, line: 74, baseType: !767, size: 64, offset: 960)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3764, file: !746, line: 77, baseType: !151, size: 16, offset: 1024)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3764, file: !746, line: 78, baseType: !772, size: 8, offset: 1040)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3764, file: !746, line: 79, baseType: !774, size: 8, offset: 1048)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3764, file: !746, line: 81, baseType: !778, size: 64, offset: 1088)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3764, file: !746, line: 89, baseType: !781, size: 64, offset: 1152)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3764, file: !746, line: 91, baseType: !783, size: 64, offset: 1216)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3764, file: !746, line: 92, baseType: !786, size: 64, offset: 1280)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3764, file: !746, line: 93, baseType: !3780, size: 64, offset: 1344)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3764, file: !746, line: 94, baseType: !41, size: 64, offset: 1408)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3764, file: !746, line: 95, baseType: !48, size: 64, offset: 1472)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3764, file: !746, line: 96, baseType: !47, size: 32, offset: 1536)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3764, file: !746, line: 98, baseType: !793, size: 160, offset: 1568)
!3796 = !{!3797, !3798, !3800, !3801}
!3797 = !DILocalVariable(name: "stream", arg: 1, scope: !3759, file: !263, line: 56, type: !3762)
!3798 = !DILocalVariable(name: "some_pending", scope: !3759, file: !263, line: 58, type: !3799)
!3799 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!3800 = !DILocalVariable(name: "prev_fail", scope: !3759, file: !263, line: 59, type: !3799)
!3801 = !DILocalVariable(name: "fclose_fail", scope: !3759, file: !263, line: 60, type: !3799)
!3802 = !DILocation(line: 0, scope: !3759)
!3803 = !DILocation(line: 58, column: 30, scope: !3759)
!3804 = !DILocalVariable(name: "__stream", arg: 1, scope: !3805, file: !1164, line: 135, type: !3762)
!3805 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1164, file: !1164, line: 135, type: !3760, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !262, retainedNodes: !3806)
!3806 = !{!3804}
!3807 = !DILocation(line: 0, scope: !3805, inlinedAt: !3808)
!3808 = distinct !DILocation(line: 59, column: 27, scope: !3759)
!3809 = !DILocation(line: 137, column: 10, scope: !3805, inlinedAt: !3808)
!3810 = !DILocation(line: 59, column: 43, scope: !3759)
!3811 = !DILocation(line: 60, column: 29, scope: !3759)
!3812 = !DILocation(line: 60, column: 45, scope: !3759)
!3813 = !DILocation(line: 70, column: 17, scope: !3814)
!3814 = distinct !DILexicalBlock(scope: !3759, file: !263, line: 70, column: 7)
!3815 = !DILocation(line: 58, column: 50, scope: !3759)
!3816 = !DILocation(line: 70, column: 33, scope: !3814)
!3817 = !DILocation(line: 70, column: 53, scope: !3814)
!3818 = !DILocation(line: 70, column: 59, scope: !3814)
!3819 = !DILocation(line: 70, column: 7, scope: !3759)
!3820 = !DILocation(line: 72, column: 11, scope: !3821)
!3821 = distinct !DILexicalBlock(scope: !3814, file: !263, line: 71, column: 5)
!3822 = !DILocation(line: 73, column: 9, scope: !3823)
!3823 = distinct !DILexicalBlock(scope: !3821, file: !263, line: 72, column: 11)
!3824 = !DILocation(line: 73, column: 15, scope: !3823)
!3825 = !DILocation(line: 78, column: 1, scope: !3759)
!3826 = distinct !DISubprogram(name: "hard_locale", scope: !265, file: !265, line: 27, type: !3827, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !3829)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{!58, !47}
!3829 = !{!3830, !3831}
!3830 = !DILocalVariable(name: "category", arg: 1, scope: !3826, file: !265, line: 27, type: !47)
!3831 = !DILocalVariable(name: "locale", scope: !3826, file: !265, line: 29, type: !3832)
!3832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 2056, elements: !3833)
!3833 = !{!3834}
!3834 = !DISubrange(count: 257)
!3835 = !DILocation(line: 0, scope: !3826)
!3836 = !DILocation(line: 29, column: 3, scope: !3826)
!3837 = !DILocation(line: 29, column: 8, scope: !3826)
!3838 = !DILocation(line: 31, column: 7, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3826, file: !265, line: 31, column: 7)
!3840 = !DILocation(line: 31, column: 7, scope: !3826)
!3841 = !DILocation(line: 34, column: 12, scope: !3826)
!3842 = !DILocation(line: 34, column: 38, scope: !3826)
!3843 = !DILocation(line: 34, column: 41, scope: !3826)
!3844 = !DILocation(line: 34, column: 66, scope: !3826)
!3845 = !DILocation(line: 35, column: 1, scope: !3826)
!3846 = distinct !DISubprogram(name: "locale_charset", scope: !267, file: !267, line: 831, type: !3847, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !3849)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{!51}
!3849 = !{!3850}
!3850 = !DILocalVariable(name: "codeset", scope: !3846, file: !267, line: 833, type: !51)
!3851 = !DILocation(line: 847, column: 13, scope: !3846)
!3852 = !DILocation(line: 0, scope: !3846)
!3853 = !DILocation(line: 911, column: 15, scope: !3854)
!3854 = distinct !DILexicalBlock(scope: !3846, file: !267, line: 911, column: 7)
!3855 = !DILocation(line: 911, column: 7, scope: !3846)
!3856 = !DILocation(line: 1070, column: 13, scope: !3857)
!3857 = distinct !DILexicalBlock(scope: !3858, file: !267, line: 1070, column: 13)
!3858 = distinct !DILexicalBlock(scope: !3859, file: !267, line: 1060, column: 7)
!3859 = distinct !DILexicalBlock(scope: !3846, file: !267, line: 1019, column: 3)
!3860 = !DILocation(line: 1070, column: 24, scope: !3857)
!3861 = !DILocation(line: 1070, column: 13, scope: !3858)
!3862 = !DILocation(line: 1158, column: 3, scope: !3846)
!3863 = !DISubprogram(name: "nl_langinfo", scope: !270, file: !270, line: 661, type: !3864, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !92)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{!39, !47}
!3866 = distinct !DISubprogram(name: "setlocale_null_r", scope: !656, file: !656, line: 269, type: !3867, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !3869)
!3867 = !DISubroutineType(types: !3868)
!3868 = !{!47, !47, !39, !48}
!3869 = !{!3870, !3871, !3872}
!3870 = !DILocalVariable(name: "category", arg: 1, scope: !3866, file: !656, line: 269, type: !47)
!3871 = !DILocalVariable(name: "buf", arg: 2, scope: !3866, file: !656, line: 269, type: !39)
!3872 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3866, file: !656, line: 269, type: !48)
!3873 = !DILocation(line: 0, scope: !3866)
!3874 = !DILocalVariable(name: "category", arg: 1, scope: !3875, file: !656, line: 91, type: !47)
!3875 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !656, file: !656, line: 91, type: !3867, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !3876)
!3876 = !{!3874, !3877, !3878, !3879, !3880}
!3877 = !DILocalVariable(name: "buf", arg: 2, scope: !3875, file: !656, line: 91, type: !39)
!3878 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3875, file: !656, line: 91, type: !48)
!3879 = !DILocalVariable(name: "result", scope: !3875, file: !656, line: 140, type: !51)
!3880 = !DILocalVariable(name: "length", scope: !3881, file: !656, line: 154, type: !48)
!3881 = distinct !DILexicalBlock(scope: !3882, file: !656, line: 153, column: 5)
!3882 = distinct !DILexicalBlock(scope: !3875, file: !656, line: 142, column: 7)
!3883 = !DILocation(line: 0, scope: !3875, inlinedAt: !3884)
!3884 = distinct !DILocation(line: 274, column: 10, scope: !3866)
!3885 = !DILocalVariable(name: "category", arg: 1, scope: !3886, file: !656, line: 60, type: !47)
!3886 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !656, file: !656, line: 60, type: !3887, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !3889)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!51, !47}
!3889 = !{!3885, !3890}
!3890 = !DILocalVariable(name: "result", scope: !3886, file: !656, line: 62, type: !51)
!3891 = !DILocation(line: 0, scope: !3886, inlinedAt: !3892)
!3892 = distinct !DILocation(line: 140, column: 24, scope: !3875, inlinedAt: !3884)
!3893 = !DILocation(line: 62, column: 24, scope: !3886, inlinedAt: !3892)
!3894 = !DILocation(line: 142, column: 14, scope: !3882, inlinedAt: !3884)
!3895 = !DILocation(line: 142, column: 7, scope: !3875, inlinedAt: !3884)
!3896 = !DILocation(line: 145, column: 19, scope: !3897, inlinedAt: !3884)
!3897 = distinct !DILexicalBlock(scope: !3898, file: !656, line: 145, column: 11)
!3898 = distinct !DILexicalBlock(scope: !3882, file: !656, line: 143, column: 5)
!3899 = !DILocation(line: 145, column: 11, scope: !3898, inlinedAt: !3884)
!3900 = !DILocation(line: 149, column: 16, scope: !3897, inlinedAt: !3884)
!3901 = !DILocation(line: 149, column: 9, scope: !3897, inlinedAt: !3884)
!3902 = !DILocation(line: 154, column: 23, scope: !3881, inlinedAt: !3884)
!3903 = !DILocation(line: 0, scope: !3881, inlinedAt: !3884)
!3904 = !DILocation(line: 155, column: 18, scope: !3905, inlinedAt: !3884)
!3905 = distinct !DILexicalBlock(scope: !3881, file: !656, line: 155, column: 11)
!3906 = !DILocation(line: 155, column: 11, scope: !3881, inlinedAt: !3884)
!3907 = !DILocation(line: 157, column: 39, scope: !3908, inlinedAt: !3884)
!3908 = distinct !DILexicalBlock(scope: !3905, file: !656, line: 156, column: 9)
!3909 = !DILocalVariable(name: "__dest", arg: 1, scope: !3910, file: !1916, line: 26, type: !3341)
!3910 = distinct !DISubprogram(name: "memcpy", scope: !1916, file: !1916, line: 26, type: !3339, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !3911)
!3911 = !{!3909, !3912, !3913}
!3912 = !DILocalVariable(name: "__src", arg: 2, scope: !3910, file: !1916, line: 26, type: !3342)
!3913 = !DILocalVariable(name: "__len", arg: 3, scope: !3910, file: !1916, line: 26, type: !48)
!3914 = !DILocation(line: 0, scope: !3910, inlinedAt: !3915)
!3915 = distinct !DILocation(line: 157, column: 11, scope: !3908, inlinedAt: !3884)
!3916 = !DILocation(line: 29, column: 10, scope: !3910, inlinedAt: !3915)
!3917 = !DILocation(line: 158, column: 11, scope: !3908, inlinedAt: !3884)
!3918 = !DILocation(line: 162, column: 23, scope: !3919, inlinedAt: !3884)
!3919 = distinct !DILexicalBlock(scope: !3920, file: !656, line: 162, column: 15)
!3920 = distinct !DILexicalBlock(scope: !3905, file: !656, line: 161, column: 9)
!3921 = !DILocation(line: 162, column: 15, scope: !3920, inlinedAt: !3884)
!3922 = !DILocation(line: 167, column: 44, scope: !3923, inlinedAt: !3884)
!3923 = distinct !DILexicalBlock(scope: !3919, file: !656, line: 163, column: 13)
!3924 = !DILocation(line: 0, scope: !3910, inlinedAt: !3925)
!3925 = distinct !DILocation(line: 167, column: 15, scope: !3923, inlinedAt: !3884)
!3926 = !DILocation(line: 29, column: 10, scope: !3910, inlinedAt: !3925)
!3927 = !DILocation(line: 168, column: 15, scope: !3923, inlinedAt: !3884)
!3928 = !DILocation(line: 168, column: 32, scope: !3923, inlinedAt: !3884)
!3929 = !DILocation(line: 169, column: 13, scope: !3923, inlinedAt: !3884)
!3930 = !DILocation(line: 0, scope: !3882, inlinedAt: !3884)
!3931 = !DILocation(line: 274, column: 3, scope: !3866)
!3932 = distinct !DISubprogram(name: "setlocale_null", scope: !656, file: !656, line: 301, type: !3887, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !3933)
!3933 = !{!3934}
!3934 = !DILocalVariable(name: "category", arg: 1, scope: !3932, file: !656, line: 301, type: !47)
!3935 = !DILocation(line: 0, scope: !3932)
!3936 = !DILocation(line: 0, scope: !3886, inlinedAt: !3937)
!3937 = distinct !DILocation(line: 304, column: 10, scope: !3932)
!3938 = !DILocation(line: 62, column: 24, scope: !3886, inlinedAt: !3937)
!3939 = !DILocation(line: 304, column: 3, scope: !3932)
