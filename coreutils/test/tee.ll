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
@ignore_interrupts = internal unnamed_addr global i1 false, align 1, !dbg !222
@.str.11 = private unnamed_addr constant [4 x i8] c"aip\00", align 1
@long_options = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i32 0, i32* null, i32 97 }, %struct.option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0), i32 2, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !205
@optarg = external local_unnamed_addr global i8*, align 8
@.str.12 = private unnamed_addr constant [15 x i8] c"--output-error\00", align 1
@output_error_args = internal constant [5 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0), i8* null], align 16, !dbg !216
@output_error_types = internal constant [4 x i32] [i32 1, i32 2, i32 3, i32 4], align 16, !dbg !210
@output_error = internal unnamed_addr global i32 0, align 4, !dbg !203
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
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), align 8, !dbg !223
@.str.47 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@argmatch_die = dso_local local_unnamed_addr global void ()* @__argmatch_die, align 8, !dbg !228
@.str.50 = private unnamed_addr constant [27 x i8] c"invalid argument %s for %s\00", align 1
@.str.1.51 = private unnamed_addr constant [29 x i8] c"ambiguous argument %s for %s\00", align 1
@.str.2.52 = private unnamed_addr constant [21 x i8] c"Valid arguments are:\00", align 1
@.str.3.53 = private unnamed_addr constant [8 x i8] c"\0A  - %s\00", align 1
@.str.4.54 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !281
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !324
@.str.59 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.60 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.61 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !326
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !332
@.str.72 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.73 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.74 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.76, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.77, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.78, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.79, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.80, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.81, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.82, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.83, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.84, i32 0, i32 0), i8* null], align 16, !dbg !373
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !458
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !464
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !466
@.str.11.85 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.86 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.87 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.88 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.89 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.90 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.91 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !473
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !480
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !468
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !482
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !487
@.str.1.139 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.140 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !495
@.str.1.157 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.160 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.161 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !1269 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1272, metadata !DIExpression()), !dbg !1289
  call void @llvm.dbg.value(metadata i32 %0, metadata !1271, metadata !DIExpression()), !dbg !1293
  %3 = icmp eq i32 %0, 0, !dbg !1294
  br i1 %3, label %9, label %4, !dbg !1295

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1296, !tbaa !1298
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #20, !dbg !1296
  %7 = load i8*, i8** @program_name, align 8, !dbg !1296, !tbaa !1298
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #20, !dbg !1296
  br label %64, !dbg !1296

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #20, !dbg !1302
  %11 = load i8*, i8** @program_name, align 8, !dbg !1302, !tbaa !1298
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #20, !dbg !1302
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([190 x i8], [190 x i8]* @.str.2, i64 0, i64 0), i32 5) #20, !dbg !1303
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1303, !tbaa !1298
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !1303
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([141 x i8], [141 x i8]* @.str.3, i64 0, i64 0), i32 5) #20, !dbg !1304
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1304, !tbaa !1298
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !1304
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #20, !dbg !1305
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1305, !tbaa !1298
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !1305
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #20, !dbg !1306
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1306, !tbaa !1298
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !1306
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([512 x i8], [512 x i8]* @.str.6, i64 0, i64 0), i32 5) #20, !dbg !1307
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1307, !tbaa !1298
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !1307
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), metadata !1276, metadata !DIExpression()) #20, !dbg !1308
  %28 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1309
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %28) #20, !dbg !1309
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %28, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #20, !dbg !1289
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), metadata !1277, metadata !DIExpression()) #20, !dbg !1308
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1278, metadata !DIExpression()) #20, !dbg !1308
  %29 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1310
  call void @llvm.dbg.value(metadata %struct.infomap* %29, metadata !1278, metadata !DIExpression()) #20, !dbg !1308
  br label %30, !dbg !1311

30:                                               ; preds = %35, %9
  %31 = phi i8* [ %38, %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), %9 ]
  %32 = phi %struct.infomap* [ %36, %35 ], [ %29, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !1278, metadata !DIExpression()) #20, !dbg !1308
  %33 = tail call i32 @strcmp(i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* nonnull %31) #23, !dbg !1312
  %34 = icmp eq i32 %33, 0, !dbg !1312
  br i1 %34, label %40, label %35, !dbg !1311

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %32, i64 1, !dbg !1313
  call void @llvm.dbg.value(metadata %struct.infomap* %36, metadata !1278, metadata !DIExpression()) #20, !dbg !1308
  %37 = getelementptr inbounds %struct.infomap, %struct.infomap* %36, i64 0, i32 0, !dbg !1314
  %38 = load i8*, i8** %37, align 8, !dbg !1314, !tbaa !1315
  %39 = icmp eq i8* %38, null, !dbg !1317
  br i1 %39, label %40, label %30, !dbg !1318, !llvm.loop !1319

40:                                               ; preds = %35, %30
  %41 = phi %struct.infomap* [ %36, %35 ], [ %32, %30 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %41, metadata !1278, metadata !DIExpression()) #20, !dbg !1308
  call void @llvm.dbg.value(metadata %struct.infomap* %41, metadata !1278, metadata !DIExpression()) #20, !dbg !1308
  %42 = getelementptr inbounds %struct.infomap, %struct.infomap* %41, i64 0, i32 1, !dbg !1320
  %43 = load i8*, i8** %42, align 8, !dbg !1320, !tbaa !1322
  %44 = icmp eq i8* %43, null, !dbg !1323
  %45 = select i1 %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %43, !dbg !1324
  call void @llvm.dbg.value(metadata i8* %45, metadata !1277, metadata !DIExpression()) #20, !dbg !1308
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i64 0, i64 0), i32 5) #20, !dbg !1325
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.28, i64 0, i64 0)) #20, !dbg !1325
  %48 = tail call i8* @setlocale(i32 5, i8* null) #20, !dbg !1326
  call void @llvm.dbg.value(metadata i8* %48, metadata !1285, metadata !DIExpression()) #20, !dbg !1308
  %49 = icmp eq i8* %48, null, !dbg !1327
  br i1 %49, label %57, label %50, !dbg !1329

50:                                               ; preds = %40
  %51 = tail call i32 @strncmp(i8* nonnull %48, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i64 3) #23, !dbg !1330
  %52 = icmp eq i32 %51, 0, !dbg !1330
  br i1 %52, label %57, label %53, !dbg !1331

53:                                               ; preds = %50
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.30, i64 0, i64 0), i32 5) #20, !dbg !1332
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1332, !tbaa !1298
  %56 = tail call i32 @fputs_unlocked(i8* %54, %struct._IO_FILE* %55) #20, !dbg !1332
  br label %57, !dbg !1334

57:                                               ; preds = %40, %50, %53
  %58 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i64 0, i64 0), i32 5) #20, !dbg !1335
  %59 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %58, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)) #20, !dbg !1335
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.32, i64 0, i64 0), i32 5) #20, !dbg !1336
  %61 = icmp eq i8* %45, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), !dbg !1336
  %62 = select i1 %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !1336
  %63 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %60, i8* %45, i8* %62) #20, !dbg !1336
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %28) #20, !dbg !1337
  br label %64

64:                                               ; preds = %57, %4
  tail call void @exit(i32 %0) #24, !dbg !1338
  unreachable, !dbg !1338
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !37 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !47 i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !112 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !1339 {
  %3 = alloca [8192 x i8], align 16
  call void @llvm.dbg.declare(metadata [8192 x i8]* %3, metadata !1348, metadata !DIExpression()), !dbg !1382
  call void @llvm.dbg.value(metadata i32 %0, metadata !1344, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata i8** %1, metadata !1345, metadata !DIExpression()), !dbg !1384
  %4 = load i8*, i8** %1, align 8, !dbg !1385, !tbaa !1298
  tail call void @set_program_name(i8* %4) #20, !dbg !1386
  %5 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #20, !dbg !1387
  %6 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #20, !dbg !1388
  %7 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #20, !dbg !1389
  %8 = tail call i32 @atexit(void ()* nonnull @close_stdout) #20, !dbg !1390
  store i1 false, i1* @append, align 1, !dbg !1391
  store i1 false, i1* @ignore_interrupts, align 1, !dbg !1392
  br label %9, !dbg !1393

9:                                                ; preds = %21, %2
  %10 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #20, !dbg !1394
  call void @llvm.dbg.value(metadata i32 %10, metadata !1347, metadata !DIExpression()), !dbg !1384
  switch i32 %10, label %27 [
    i32 -1, label %28
    i32 97, label %11
    i32 105, label %12
    i32 112, label %13
    i32 -130, label %23
    i32 -131, label %24
  ], !dbg !1393

11:                                               ; preds = %9
  store i1 true, i1* @append, align 1, !dbg !1395
  br label %21, !dbg !1398

12:                                               ; preds = %9
  store i1 true, i1* @ignore_interrupts, align 1, !dbg !1399
  br label %21, !dbg !1400

13:                                               ; preds = %9
  %14 = load i8*, i8** @optarg, align 8, !dbg !1401, !tbaa !1298
  %15 = icmp eq i8* %14, null, !dbg !1401
  br i1 %15, label %22, label %16, !dbg !1403

16:                                               ; preds = %13
  %17 = load void ()*, void ()** @argmatch_die, align 8, !dbg !1404, !tbaa !1298
  %18 = tail call i64 @__xargmatch_internal(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8* nonnull %14, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @output_error_args, i64 0, i64 0), i8* bitcast ([4 x i32]* @output_error_types to i8*), i64 4, void ()* %17) #20, !dbg !1404
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* @output_error_types, i64 0, i64 %18, !dbg !1404
  %20 = load i32, i32* %19, align 4, !dbg !1404, !tbaa !1405
  store i32 %20, i32* @output_error, align 4, !dbg !1406, !tbaa !1405
  br label %21, !dbg !1407

21:                                               ; preds = %16, %22, %12, %11
  br label %9, !dbg !1394, !llvm.loop !1408

22:                                               ; preds = %13
  store i32 2, i32* @output_error, align 4, !dbg !1410, !tbaa !1405
  br label %21

23:                                               ; preds = %9
  tail call void @usage(i32 0) #25, !dbg !1411
  unreachable, !dbg !1411

24:                                               ; preds = %9
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1412, !tbaa !1298
  %26 = load i8*, i8** @Version, align 8, !dbg !1412, !tbaa !1298
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i8* null) #20, !dbg !1412
  tail call void @exit(i32 0) #24, !dbg !1412
  unreachable, !dbg !1412

27:                                               ; preds = %9
  tail call void @usage(i32 1) #25, !dbg !1413
  unreachable, !dbg !1413

28:                                               ; preds = %9
  %29 = load i1, i1* @ignore_interrupts, align 1, !dbg !1414
  br i1 %29, label %30, label %32, !dbg !1416

30:                                               ; preds = %28
  %31 = tail call void (i32)* @signal(i32 2, void (i32)* nonnull inttoptr (i64 1 to void (i32)*)) #20, !dbg !1417
  br label %32, !dbg !1417

32:                                               ; preds = %30, %28
  %33 = load i32, i32* @output_error, align 4, !dbg !1418, !tbaa !1405
  %34 = icmp eq i32 %33, 0, !dbg !1420
  br i1 %34, label %37, label %35, !dbg !1421

35:                                               ; preds = %32
  %36 = tail call void (i32)* @signal(i32 13, void (i32)* nonnull inttoptr (i64 1 to void (i32)*)) #20, !dbg !1422
  br label %37, !dbg !1422

37:                                               ; preds = %32, %35
  %38 = load i32, i32* @optind, align 4, !dbg !1423, !tbaa !1424
  %39 = sub nsw i32 %0, %38, !dbg !1426
  call void @llvm.dbg.value(metadata i32 %39, metadata !1353, metadata !DIExpression()) #20, !dbg !1427
  call void @llvm.dbg.value(metadata i8** undef, metadata !1354, metadata !DIExpression()) #20, !dbg !1427
  call void @llvm.dbg.value(metadata i64 0, metadata !1355, metadata !DIExpression()) #20, !dbg !1427
  %40 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 0, !dbg !1428
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* nonnull %40) #20, !dbg !1428
  call void @llvm.dbg.value(metadata i64 0, metadata !1361, metadata !DIExpression()) #20, !dbg !1427
  call void @llvm.dbg.value(metadata i8 1, metadata !1366, metadata !DIExpression()) #20, !dbg !1427
  %41 = load i1, i1* @append, align 1, !dbg !1429
  %42 = select i1 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i64 0, i64 0), !dbg !1429
  call void @llvm.dbg.value(metadata i8* %42, metadata !1367, metadata !DIExpression()) #20, !dbg !1427
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1430, !tbaa !1298
  tail call void @fadvise(%struct._IO_FILE* %43, i32 2) #20, !dbg !1431
  call void @llvm.dbg.value(metadata i32 %39, metadata !1432, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)) #20, !dbg !1438
  call void @llvm.dbg.value(metadata i64 8, metadata !1437, metadata !DIExpression()) #20, !dbg !1438
  %44 = icmp slt i32 %39, -1, !dbg !1440
  br i1 %44, label %45, label %46, !dbg !1442

45:                                               ; preds = %37
  tail call void @xalloc_die() #24, !dbg !1443
  unreachable, !dbg !1443

46:                                               ; preds = %37
  %47 = sext i32 %38 to i64, !dbg !1444
  %48 = getelementptr inbounds i8*, i8** %1, i64 %47, !dbg !1444
  call void @llvm.dbg.value(metadata i8** %48, metadata !1354, metadata !DIExpression()) #20, !dbg !1427
  %49 = add i32 %39, 1, !dbg !1445
  call void @llvm.dbg.value(metadata i32 %49, metadata !1432, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)) #20, !dbg !1438
  %50 = sext i32 %49 to i64, !dbg !1446
  call void @llvm.dbg.value(metadata i64 %50, metadata !1432, metadata !DIExpression()) #20, !dbg !1438
  %51 = shl nuw nsw i64 %50, 3, !dbg !1447
  %52 = tail call noalias i8* @xmalloc(i64 %51) #20, !dbg !1448
  %53 = bitcast i8* %52 to %struct._IO_FILE**, !dbg !1449
  call void @llvm.dbg.value(metadata %struct._IO_FILE** %53, metadata !1356, metadata !DIExpression()) #20, !dbg !1427
  %54 = getelementptr inbounds i8*, i8** %48, i64 -1, !dbg !1450
  call void @llvm.dbg.value(metadata i8** %54, metadata !1354, metadata !DIExpression()) #20, !dbg !1427
  %55 = load i64, i64* bitcast (%struct._IO_FILE** @stdout to i64*), align 8, !dbg !1451, !tbaa !1298
  %56 = bitcast i8* %52 to i64*, !dbg !1452
  store i64 %55, i64* %56, align 8, !dbg !1452, !tbaa !1298
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i64 0, i64 0), i32 5) #20, !dbg !1453
  store i8* %57, i8** %54, align 8, !dbg !1454, !tbaa !1298
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1455, !tbaa !1298
  %59 = tail call i32 @setvbuf(%struct._IO_FILE* %58, i8* null, i32 2, i64 0) #20, !dbg !1456
  call void @llvm.dbg.value(metadata i64 1, metadata !1355, metadata !DIExpression()) #20, !dbg !1427
  call void @llvm.dbg.value(metadata i32 1, metadata !1365, metadata !DIExpression()) #20, !dbg !1427
  call void @llvm.dbg.value(metadata i8 1, metadata !1366, metadata !DIExpression()) #20, !dbg !1427
  %60 = icmp slt i32 %39, 1, !dbg !1457
  %61 = zext i32 %49 to i64, !dbg !1427
  br i1 %60, label %64, label %68, !dbg !1460

62:                                               ; preds = %89
  call void @llvm.dbg.value(metadata i8 %90, metadata !1366, metadata !DIExpression()) #20, !dbg !1427
  call void @llvm.dbg.value(metadata i64 %91, metadata !1355, metadata !DIExpression()) #20, !dbg !1427
  call void @llvm.dbg.value(metadata i8 %90, metadata !1366, metadata !DIExpression()) #20, !dbg !1427
  call void @llvm.dbg.value(metadata i64 %91, metadata !1355, metadata !DIExpression()) #20, !dbg !1427
  call void @llvm.dbg.value(metadata i8 %90, metadata !1366, metadata !DIExpression()) #20, !dbg !1427
  call void @llvm.dbg.value(metadata i64 %91, metadata !1355, metadata !DIExpression()) #20, !dbg !1427
  call void @llvm.dbg.value(metadata i8 %90, metadata !1366, metadata !DIExpression()) #20, !dbg !1427
  call void @llvm.dbg.value(metadata i64 %91, metadata !1355, metadata !DIExpression()) #20, !dbg !1427
  call void @llvm.dbg.value(metadata i8 %90, metadata !1366, metadata !DIExpression()) #20, !dbg !1427
  call void @llvm.dbg.value(metadata i64 %91, metadata !1355, metadata !DIExpression()) #20, !dbg !1427
  call void @llvm.dbg.value(metadata i8 %90, metadata !1366, metadata !DIExpression()) #20, !dbg !1427
  call void @llvm.dbg.value(metadata i64 %91, metadata !1355, metadata !DIExpression()) #20, !dbg !1427
  call void @llvm.dbg.value(metadata i8 %90, metadata !1366, metadata !DIExpression()) #20, !dbg !1427
  call void @llvm.dbg.value(metadata i64 %91, metadata !1355, metadata !DIExpression()) #20, !dbg !1427
  call void @llvm.dbg.value(metadata i8 %90, metadata !1366, metadata !DIExpression()) #20, !dbg !1427
  call void @llvm.dbg.value(metadata i64 %91, metadata !1355, metadata !DIExpression()) #20, !dbg !1427
  call void @llvm.dbg.value(metadata i64 0, metadata !1361, metadata !DIExpression()) #20, !dbg !1427
  %63 = icmp eq i64 %91, 0, !dbg !1461
  br i1 %63, label %156, label %64, !dbg !1461

64:                                               ; preds = %46, %62
  %65 = phi i64 [ %91, %62 ], [ 1, %46 ]
  %66 = phi i8 [ %90, %62 ], [ 1, %46 ]
  %67 = icmp slt i32 %39, 0, !dbg !1462
  br label %98, !dbg !1461

68:                                               ; preds = %46, %89
  %69 = phi i64 [ %92, %89 ], [ 1, %46 ]
  %70 = phi i64 [ %91, %89 ], [ 1, %46 ]
  %71 = phi i8 [ %90, %89 ], [ 1, %46 ]
  call void @llvm.dbg.value(metadata i64 %70, metadata !1355, metadata !DIExpression()) #20, !dbg !1427
  call void @llvm.dbg.value(metadata i64 %69, metadata !1365, metadata !DIExpression()) #20, !dbg !1427
  call void @llvm.dbg.value(metadata i8 %71, metadata !1366, metadata !DIExpression()) #20, !dbg !1427
  %72 = getelementptr inbounds i8*, i8** %54, i64 %69, !dbg !1463
  %73 = load i8*, i8** %72, align 8, !dbg !1463, !tbaa !1298
  %74 = tail call %struct._IO_FILE* @fopen_safer(i8* %73, i8* %42) #20, !dbg !1465
  %75 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %53, i64 %69, !dbg !1466
  store %struct._IO_FILE* %74, %struct._IO_FILE** %75, align 8, !dbg !1467, !tbaa !1298
  %76 = icmp eq %struct._IO_FILE* %74, null, !dbg !1468
  br i1 %76, label %77, label %86, !dbg !1470

77:                                               ; preds = %68
  %78 = load i32, i32* @output_error, align 4, !dbg !1471, !tbaa !1405
  %79 = add i32 %78, -3, !dbg !1473
  %80 = icmp ult i32 %79, 2, !dbg !1473
  %81 = zext i1 %80 to i32, !dbg !1473
  %82 = tail call i32* @__errno_location() #26, !dbg !1474
  %83 = load i32, i32* %82, align 4, !dbg !1474, !tbaa !1424
  %84 = load i8*, i8** %72, align 8, !dbg !1475, !tbaa !1298
  %85 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %84) #20, !dbg !1475
  tail call void (i32, i32, i8*, ...) @error(i32 %81, i32 %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* %85) #20, !dbg !1476
  call void @llvm.dbg.value(metadata i8 0, metadata !1366, metadata !DIExpression()) #20, !dbg !1427
  br label %89, !dbg !1477

86:                                               ; preds = %68
  %87 = tail call i32 @setvbuf(%struct._IO_FILE* nonnull %74, i8* null, i32 2, i64 0) #20, !dbg !1478
  %88 = add i64 %70, 1, !dbg !1480
  call void @llvm.dbg.value(metadata i64 %88, metadata !1355, metadata !DIExpression()) #20, !dbg !1427
  br label %89

89:                                               ; preds = %86, %77
  %90 = phi i8 [ 0, %77 ], [ %71, %86 ], !dbg !1427
  %91 = phi i64 [ %70, %77 ], [ %88, %86 ], !dbg !1427
  call void @llvm.dbg.value(metadata i64 %91, metadata !1355, metadata !DIExpression()) #20, !dbg !1427
  call void @llvm.dbg.value(metadata i8 %90, metadata !1366, metadata !DIExpression()) #20, !dbg !1427
  %92 = add nuw nsw i64 %69, 1, !dbg !1481
  call void @llvm.dbg.value(metadata i64 %92, metadata !1365, metadata !DIExpression()) #20, !dbg !1427
  %93 = icmp eq i64 %92, %61, !dbg !1457
  br i1 %93, label %62, label %68, !dbg !1460, !llvm.loop !1482

94:                                               ; preds = %144, %110
  %95 = phi i8 [ %100, %110 ], [ %145, %144 ], !dbg !1427
  %96 = phi i64 [ %99, %110 ], [ %146, %144 ], !dbg !1427
  call void @llvm.dbg.value(metadata i64 %96, metadata !1355, metadata !DIExpression()) #20, !dbg !1427
  call void @llvm.dbg.value(metadata i64 %102, metadata !1361, metadata !DIExpression()) #20, !dbg !1427
  call void @llvm.dbg.value(metadata i8 %95, metadata !1366, metadata !DIExpression()) #20, !dbg !1427
  %97 = icmp eq i64 %96, 0, !dbg !1461
  br i1 %97, label %149, label %98, !dbg !1461

98:                                               ; preds = %94, %64
  %99 = phi i64 [ %65, %64 ], [ %96, %94 ]
  %100 = phi i8 [ %66, %64 ], [ %95, %94 ]
  call void @llvm.dbg.value(metadata i64 %99, metadata !1355, metadata !DIExpression()) #20, !dbg !1427
  call void @llvm.dbg.value(metadata i8 %100, metadata !1366, metadata !DIExpression()) #20, !dbg !1427
  br label %101, !dbg !1461

101:                                              ; preds = %104, %98
  %102 = call i64 @read(i32 0, i8* nonnull %40, i64 8192) #20, !dbg !1484
  call void @llvm.dbg.value(metadata i64 %102, metadata !1361, metadata !DIExpression()) #20, !dbg !1427
  %103 = icmp slt i64 %102, 0, !dbg !1485
  br i1 %103, label %104, label %108, !dbg !1487

104:                                              ; preds = %101
  %105 = tail call i32* @__errno_location() #26, !dbg !1488
  %106 = load i32, i32* %105, align 4, !dbg !1488, !tbaa !1424
  %107 = icmp eq i32 %106, 4, !dbg !1489
  br i1 %107, label %101, label %149, !dbg !1490, !llvm.loop !1491

108:                                              ; preds = %101
  %109 = icmp eq i64 %102, 0, !dbg !1493
  br i1 %109, label %156, label %110, !dbg !1495

110:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 %99, metadata !1355, metadata !DIExpression()) #20, !dbg !1427
  call void @llvm.dbg.value(metadata i32 0, metadata !1365, metadata !DIExpression()) #20, !dbg !1427
  call void @llvm.dbg.value(metadata i8 %100, metadata !1366, metadata !DIExpression()) #20, !dbg !1427
  br i1 %67, label %94, label %111, !dbg !1496, !llvm.loop !1497

111:                                              ; preds = %110, %144
  %112 = phi i64 [ %147, %144 ], [ 0, %110 ]
  %113 = phi i64 [ %146, %144 ], [ %99, %110 ]
  %114 = phi i8 [ %145, %144 ], [ %100, %110 ]
  call void @llvm.dbg.value(metadata i64 %113, metadata !1355, metadata !DIExpression()) #20, !dbg !1427
  call void @llvm.dbg.value(metadata i64 %112, metadata !1365, metadata !DIExpression()) #20, !dbg !1427
  call void @llvm.dbg.value(metadata i8 %114, metadata !1366, metadata !DIExpression()) #20, !dbg !1427
  %115 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %53, i64 %112, !dbg !1498
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** %115, align 8, !dbg !1498, !tbaa !1298
  %117 = icmp eq %struct._IO_FILE* %116, null, !dbg !1498
  br i1 %117, label %144, label %118, !dbg !1499

118:                                              ; preds = %111
  %119 = call i64 @fwrite_unlocked(i8* nonnull %40, i64 %102, i64 1, %struct._IO_FILE* nonnull %116) #20, !dbg !1500
  %120 = icmp eq i64 %119, 1, !dbg !1501
  br i1 %120, label %144, label %121, !dbg !1502

121:                                              ; preds = %118
  %122 = tail call i32* @__errno_location() #26, !dbg !1503
  %123 = load i32, i32* %122, align 4, !dbg !1503, !tbaa !1424
  call void @llvm.dbg.value(metadata i32 %123, metadata !1376, metadata !DIExpression()) #20, !dbg !1504
  %124 = icmp ne i32 %123, 32, !dbg !1505
  %125 = load i32, i32* @output_error, align 4, !dbg !1506
  %126 = or i32 %125, 2, !dbg !1506
  %127 = icmp eq i32 %126, 3, !dbg !1506
  %128 = or i1 %124, %127, !dbg !1506
  call void @llvm.dbg.value(metadata i1 %128, metadata !1378, metadata !DIExpression()) #20, !dbg !1504
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1507, !tbaa !1298
  %130 = icmp eq %struct._IO_FILE* %116, %129, !dbg !1509
  br i1 %130, label %131, label %132, !dbg !1510

131:                                              ; preds = %121
  tail call void @clearerr_unlocked(%struct._IO_FILE* nonnull %116) #20, !dbg !1511
  br label %132, !dbg !1511

132:                                              ; preds = %131, %121
  br i1 %128, label %133, label %141, !dbg !1512

133:                                              ; preds = %132
  %134 = load i32, i32* @output_error, align 4, !dbg !1513, !tbaa !1405
  %135 = add i32 %134, -3, !dbg !1516
  %136 = icmp ult i32 %135, 2, !dbg !1516
  %137 = zext i1 %136 to i32, !dbg !1516
  %138 = getelementptr inbounds i8*, i8** %54, i64 %112, !dbg !1517
  %139 = load i8*, i8** %138, align 8, !dbg !1517, !tbaa !1298
  %140 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %139) #20, !dbg !1517
  tail call void (i32, i32, i8*, ...) @error(i32 %137, i32 %123, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* %140) #20, !dbg !1518
  br label %141, !dbg !1519

141:                                              ; preds = %133, %132
  store %struct._IO_FILE* null, %struct._IO_FILE** %115, align 8, !dbg !1520, !tbaa !1298
  %142 = select i1 %128, i8 0, i8 %114, !dbg !1521
  call void @llvm.dbg.value(metadata i8 %142, metadata !1366, metadata !DIExpression()) #20, !dbg !1427
  %143 = add i64 %113, -1, !dbg !1522
  call void @llvm.dbg.value(metadata i64 %143, metadata !1355, metadata !DIExpression()) #20, !dbg !1427
  br label %144, !dbg !1523

144:                                              ; preds = %141, %118, %111
  %145 = phi i8 [ %142, %141 ], [ %114, %118 ], [ %114, %111 ], !dbg !1427
  %146 = phi i64 [ %143, %141 ], [ %113, %118 ], [ %113, %111 ], !dbg !1427
  call void @llvm.dbg.value(metadata i64 %146, metadata !1355, metadata !DIExpression()) #20, !dbg !1427
  call void @llvm.dbg.value(metadata i8 %145, metadata !1366, metadata !DIExpression()) #20, !dbg !1427
  %147 = add nuw nsw i64 %112, 1, !dbg !1524
  call void @llvm.dbg.value(metadata i64 %147, metadata !1365, metadata !DIExpression()) #20, !dbg !1427
  %148 = icmp eq i64 %147, %61, !dbg !1525
  br i1 %148, label %94, label %111, !dbg !1496, !llvm.loop !1526

149:                                              ; preds = %94, %104
  %150 = phi i8 [ %100, %104 ], [ %95, %94 ]
  call void @llvm.dbg.value(metadata i64 %102, metadata !1361, metadata !DIExpression()) #20, !dbg !1427
  %151 = icmp eq i64 %102, -1, !dbg !1528
  br i1 %151, label %152, label %156, !dbg !1530

152:                                              ; preds = %149
  %153 = tail call i32* @__errno_location() #26, !dbg !1531
  %154 = load i32, i32* %153, align 4, !dbg !1531, !tbaa !1424
  %155 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i64 0, i64 0), i32 5) #20, !dbg !1533
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %154, i8* %155) #20, !dbg !1534
  call void @llvm.dbg.value(metadata i8 0, metadata !1366, metadata !DIExpression()) #20, !dbg !1427
  br label %156, !dbg !1535

156:                                              ; preds = %108, %152, %149, %62
  %157 = phi i8 [ 0, %152 ], [ %150, %149 ], [ %90, %62 ], [ %100, %108 ], !dbg !1427
  call void @llvm.dbg.value(metadata i8 %157, metadata !1366, metadata !DIExpression()) #20, !dbg !1427
  call void @llvm.dbg.value(metadata i32 1, metadata !1365, metadata !DIExpression()) #20, !dbg !1427
  br i1 %60, label %179, label %158, !dbg !1536

158:                                              ; preds = %156
  %159 = zext i32 %49 to i64, !dbg !1538
  br label %160, !dbg !1536

160:                                              ; preds = %175, %158
  %161 = phi i64 [ 1, %158 ], [ %177, %175 ]
  %162 = phi i8 [ %157, %158 ], [ %176, %175 ]
  call void @llvm.dbg.value(metadata i64 %161, metadata !1365, metadata !DIExpression()) #20, !dbg !1427
  call void @llvm.dbg.value(metadata i8 %162, metadata !1366, metadata !DIExpression()) #20, !dbg !1427
  %163 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %53, i64 %161, !dbg !1540
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** %163, align 8, !dbg !1540, !tbaa !1298
  %165 = icmp eq %struct._IO_FILE* %164, null, !dbg !1540
  br i1 %165, label %175, label %166, !dbg !1542

166:                                              ; preds = %160
  %167 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %164) #20, !dbg !1543
  %168 = icmp eq i32 %167, 0, !dbg !1544
  br i1 %168, label %175, label %169, !dbg !1545

169:                                              ; preds = %166
  %170 = tail call i32* @__errno_location() #26, !dbg !1546
  %171 = load i32, i32* %170, align 4, !dbg !1546, !tbaa !1424
  %172 = getelementptr inbounds i8*, i8** %54, i64 %161, !dbg !1548
  %173 = load i8*, i8** %172, align 8, !dbg !1548, !tbaa !1298
  %174 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %173) #20, !dbg !1548
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %171, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* %174) #20, !dbg !1549
  call void @llvm.dbg.value(metadata i8 0, metadata !1366, metadata !DIExpression()) #20, !dbg !1427
  br label %175, !dbg !1550

175:                                              ; preds = %169, %166, %160
  %176 = phi i8 [ 0, %169 ], [ %162, %166 ], [ %162, %160 ], !dbg !1427
  call void @llvm.dbg.value(metadata i8 %176, metadata !1366, metadata !DIExpression()) #20, !dbg !1427
  %177 = add nuw nsw i64 %161, 1, !dbg !1551
  call void @llvm.dbg.value(metadata i64 %177, metadata !1365, metadata !DIExpression()) #20, !dbg !1427
  %178 = icmp eq i64 %177, %159, !dbg !1538
  br i1 %178, label %179, label %160, !dbg !1536, !llvm.loop !1552

179:                                              ; preds = %175, %156
  %180 = phi i8 [ %157, %156 ], [ %176, %175 ], !dbg !1427
  call void @llvm.dbg.value(metadata i8 %180, metadata !1366, metadata !DIExpression()) #20, !dbg !1427
  tail call void @free(i8* %52) #20, !dbg !1554
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %40) #20, !dbg !1555
  call void @llvm.dbg.value(metadata i1 undef, metadata !1346, metadata !DIExpression()), !dbg !1384
  %181 = tail call i32 @close(i32 0) #20, !dbg !1556
  %182 = icmp eq i32 %181, 0, !dbg !1558
  br i1 %182, label %187, label %183, !dbg !1559

183:                                              ; preds = %179
  %184 = tail call i32* @__errno_location() #26, !dbg !1560
  %185 = load i32, i32* %184, align 4, !dbg !1560, !tbaa !1424
  %186 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i32 5) #20, !dbg !1560
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %185, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* %186) #20, !dbg !1560
  unreachable, !dbg !1560

187:                                              ; preds = %179
  %188 = and i8 %180, 1, !dbg !1561
  call void @llvm.dbg.value(metadata i1 undef, metadata !1346, metadata !DIExpression()), !dbg !1384
  %189 = xor i8 %188, 1, !dbg !1562
  %190 = zext i8 %189 to i32, !dbg !1562
  ret i32 %190, !dbg !1563
}

; Function Attrs: nounwind
declare !dbg !116 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !119 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !122 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !129 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !155 void (i32)* @signal(i32, void (i32)*) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !169 i32 @setvbuf(%struct._IO_FILE* nocapture, i8*, i32, i64) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

declare !dbg !162 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree
declare i64 @read(i32, i8* nocapture, i64) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare !dbg !179 i64 @fwrite_unlocked(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !182 void @clearerr_unlocked(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !189 void @free(i8* nocapture) local_unnamed_addr #2

declare !dbg !158 i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal void @__argmatch_die() #8 !dbg !1564 {
  tail call void @usage(i32 1) #20, !dbg !1565
  ret void, !dbg !1566
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i64 @argmatch(i8* nocapture readonly %0, i8** nocapture readonly %1, i8* readonly %2, i64 %3) local_unnamed_addr #11 !dbg !1567 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1573, metadata !DIExpression()), !dbg !1581
  call void @llvm.dbg.value(metadata i8** %1, metadata !1574, metadata !DIExpression()), !dbg !1581
  call void @llvm.dbg.value(metadata i8* %2, metadata !1575, metadata !DIExpression()), !dbg !1581
  call void @llvm.dbg.value(metadata i64 %3, metadata !1576, metadata !DIExpression()), !dbg !1581
  call void @llvm.dbg.value(metadata i64 -1, metadata !1579, metadata !DIExpression()), !dbg !1581
  call void @llvm.dbg.value(metadata i8 0, metadata !1580, metadata !DIExpression()), !dbg !1581
  %5 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #23, !dbg !1582
  call void @llvm.dbg.value(metadata i64 %5, metadata !1578, metadata !DIExpression()), !dbg !1581
  call void @llvm.dbg.value(metadata i64 0, metadata !1577, metadata !DIExpression()), !dbg !1581
  call void @llvm.dbg.value(metadata i8 0, metadata !1580, metadata !DIExpression()), !dbg !1581
  call void @llvm.dbg.value(metadata i64 -1, metadata !1579, metadata !DIExpression()), !dbg !1581
  %6 = load i8*, i8** %1, align 8, !dbg !1583, !tbaa !1298
  %7 = icmp eq i8* %6, null, !dbg !1586
  br i1 %7, label %38, label %8, !dbg !1586

8:                                                ; preds = %4
  %9 = icmp eq i8* %2, null, !dbg !1587
  br label %10, !dbg !1586

10:                                               ; preds = %8, %31
  %11 = phi i8* [ %6, %8 ], [ %36, %31 ]
  %12 = phi i8 [ 0, %8 ], [ %33, %31 ]
  %13 = phi i64 [ -1, %8 ], [ %32, %31 ]
  %14 = phi i64 [ 0, %8 ], [ %34, %31 ]
  call void @llvm.dbg.value(metadata i8 %12, metadata !1580, metadata !DIExpression()), !dbg !1581
  call void @llvm.dbg.value(metadata i64 %13, metadata !1579, metadata !DIExpression()), !dbg !1581
  call void @llvm.dbg.value(metadata i64 %14, metadata !1577, metadata !DIExpression()), !dbg !1581
  %15 = tail call i32 @strncmp(i8* nonnull %11, i8* %0, i64 %5) #23, !dbg !1595
  %16 = icmp eq i32 %15, 0, !dbg !1595
  br i1 %16, label %17, label %31, !dbg !1596

17:                                               ; preds = %10
  %18 = tail call i64 @strlen(i8* nonnull %11) #23, !dbg !1597
  %19 = icmp eq i64 %18, %5, !dbg !1598
  br i1 %19, label %44, label %20, !dbg !1599

20:                                               ; preds = %17
  %21 = icmp eq i64 %13, -1, !dbg !1600
  br i1 %21, label %31, label %22, !dbg !1601

22:                                               ; preds = %20
  br i1 %9, label %30, label %23, !dbg !1602

23:                                               ; preds = %22
  %24 = mul i64 %13, %3, !dbg !1603
  %25 = getelementptr inbounds i8, i8* %2, i64 %24, !dbg !1604
  %26 = mul i64 %14, %3, !dbg !1605
  %27 = getelementptr inbounds i8, i8* %2, i64 %26, !dbg !1606
  %28 = tail call i32 @bcmp(i8* nonnull %25, i8* nonnull %27, i64 %3), !dbg !1607
  %29 = icmp eq i32 %28, 0, !dbg !1607
  br i1 %29, label %31, label %30, !dbg !1608

30:                                               ; preds = %23, %22
  call void @llvm.dbg.value(metadata i8 1, metadata !1580, metadata !DIExpression()), !dbg !1581
  br label %31, !dbg !1609

31:                                               ; preds = %20, %23, %10, %30
  %32 = phi i64 [ %13, %10 ], [ %13, %30 ], [ %13, %23 ], [ %14, %20 ], !dbg !1581
  %33 = phi i8 [ %12, %10 ], [ 1, %30 ], [ %12, %23 ], [ %12, %20 ], !dbg !1581
  call void @llvm.dbg.value(metadata i8 %33, metadata !1580, metadata !DIExpression()), !dbg !1581
  call void @llvm.dbg.value(metadata i64 %32, metadata !1579, metadata !DIExpression()), !dbg !1581
  %34 = add i64 %14, 1, !dbg !1611
  call void @llvm.dbg.value(metadata i64 %34, metadata !1577, metadata !DIExpression()), !dbg !1581
  %35 = getelementptr inbounds i8*, i8** %1, i64 %34, !dbg !1583
  %36 = load i8*, i8** %35, align 8, !dbg !1583, !tbaa !1298
  %37 = icmp eq i8* %36, null, !dbg !1586
  br i1 %37, label %38, label %10, !dbg !1586, !llvm.loop !1612

38:                                               ; preds = %31, %4
  %39 = phi i64 [ -1, %4 ], [ %32, %31 ], !dbg !1614
  %40 = phi i8 [ 0, %4 ], [ %33, %31 ], !dbg !1615
  call void @llvm.dbg.value(metadata i64 %39, metadata !1579, metadata !DIExpression()), !dbg !1581
  call void @llvm.dbg.value(metadata i8 %40, metadata !1580, metadata !DIExpression()), !dbg !1581
  %41 = and i8 %40, 1, !dbg !1616
  %42 = icmp eq i8 %41, 0, !dbg !1616
  %43 = select i1 %42, i64 %39, i64 -2, !dbg !1618
  br label %44, !dbg !1618

44:                                               ; preds = %17, %38
  %45 = phi i64 [ %43, %38 ], [ %14, %17 ], !dbg !1581
  ret i64 %45, !dbg !1619
}

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #12

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #13

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @argmatch_invalid(i8* %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !1620 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1624, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata i8* %1, metadata !1625, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata i64 %2, metadata !1626, metadata !DIExpression()), !dbg !1628
  %4 = icmp eq i64 %2, -1, !dbg !1629
  %5 = select i1 %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.51, i64 0, i64 0), !dbg !1630
  %6 = tail call i8* @dcgettext(i8* null, i8* %5, i32 5) #20, !dbg !1628
  call void @llvm.dbg.value(metadata i8* %6, metadata !1627, metadata !DIExpression()), !dbg !1628
  %7 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %1) #20, !dbg !1631
  %8 = tail call i8* @quote_n(i32 1, i8* %0) #20, !dbg !1632
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %6, i8* %7, i8* %8) #20, !dbg !1633
  ret void, !dbg !1634
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @argmatch_valid(i8** nocapture readonly %0, i8* nocapture readonly %1, i64 %2) local_unnamed_addr #8 !dbg !1635 {
  call void @llvm.dbg.value(metadata i8** %0, metadata !1639, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8* %1, metadata !1640, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 %2, metadata !1641, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8* null, metadata !1643, metadata !DIExpression()), !dbg !1644
  %4 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2.52, i64 0, i64 0), i32 5) #20, !dbg !1645
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1645, !tbaa !1298
  %6 = tail call i32 @fputs_unlocked(i8* %4, %struct._IO_FILE* %5), !dbg !1645
  call void @llvm.dbg.value(metadata i64 0, metadata !1642, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8* null, metadata !1643, metadata !DIExpression()), !dbg !1644
  %7 = load i8*, i8** %0, align 8, !dbg !1646, !tbaa !1298
  %8 = icmp eq i8* %7, null, !dbg !1649
  br i1 %8, label %35, label %9, !dbg !1649

9:                                                ; preds = %3, %29
  %10 = phi i8* [ %33, %29 ], [ %7, %3 ]
  %11 = phi i8* [ %30, %29 ], [ null, %3 ]
  %12 = phi i64 [ %31, %29 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i8* %11, metadata !1643, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 %12, metadata !1642, metadata !DIExpression()), !dbg !1644
  %13 = icmp eq i64 %12, 0, !dbg !1650
  br i1 %13, label %19, label %14, !dbg !1652

14:                                               ; preds = %9
  %15 = mul i64 %12, %2, !dbg !1653
  %16 = getelementptr inbounds i8, i8* %1, i64 %15, !dbg !1654
  %17 = tail call i32 @bcmp(i8* %11, i8* %16, i64 %2), !dbg !1655
  %18 = icmp eq i32 %17, 0, !dbg !1655
  br i1 %18, label %25, label %19, !dbg !1656

19:                                               ; preds = %9, %14
  %20 = phi i64 [ %15, %14 ], [ 0, %9 ], !dbg !1657
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1659, !tbaa !1298
  %22 = tail call i8* @quote(i8* nonnull %10) #20, !dbg !1659
  %23 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %21, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.53, i64 0, i64 0), i8* %22) #20, !dbg !1659
  %24 = getelementptr inbounds i8, i8* %1, i64 %20, !dbg !1660
  call void @llvm.dbg.value(metadata i8* %24, metadata !1643, metadata !DIExpression()), !dbg !1644
  br label %29, !dbg !1661

25:                                               ; preds = %14
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1662, !tbaa !1298
  %27 = tail call i8* @quote(i8* nonnull %10) #20, !dbg !1662
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %26, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.54, i64 0, i64 0), i8* %27) #20, !dbg !1662
  br label %29

29:                                               ; preds = %19, %25
  %30 = phi i8* [ %24, %19 ], [ %11, %25 ], !dbg !1644
  call void @llvm.dbg.value(metadata i8* %30, metadata !1643, metadata !DIExpression()), !dbg !1644
  %31 = add i64 %12, 1, !dbg !1664
  call void @llvm.dbg.value(metadata i64 %31, metadata !1642, metadata !DIExpression()), !dbg !1644
  %32 = getelementptr inbounds i8*, i8** %0, i64 %31, !dbg !1646
  %33 = load i8*, i8** %32, align 8, !dbg !1646, !tbaa !1298
  %34 = icmp eq i8* %33, null, !dbg !1649
  br i1 %34, label %35, label %9, !dbg !1649, !llvm.loop !1665

35:                                               ; preds = %29, %3
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1667, !tbaa !1298
  call void @llvm.dbg.value(metadata i32 10, metadata !1668, metadata !DIExpression()) #20, !dbg !1677
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %36, metadata !1676, metadata !DIExpression()) #20, !dbg !1677
  %37 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %36, i64 0, i32 5, !dbg !1679
  %38 = load i8*, i8** %37, align 8, !dbg !1679, !tbaa !1680
  %39 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %36, i64 0, i32 6, !dbg !1679
  %40 = load i8*, i8** %39, align 8, !dbg !1679, !tbaa !1684
  %41 = icmp ult i8* %38, %40, !dbg !1679
  br i1 %41, label %44, label %42, !dbg !1679, !prof !1685, !misexpect !1686

42:                                               ; preds = %35
  %43 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %36, i32 10) #20, !dbg !1679
  br label %46, !dbg !1679

44:                                               ; preds = %35
  %45 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !1679
  store i8* %45, i8** %37, align 8, !dbg !1679, !tbaa !1680
  store i8 10, i8* %38, align 1, !dbg !1679, !tbaa !1405
  br label %46, !dbg !1679

46:                                               ; preds = %42, %44
  ret void, !dbg !1687
}

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @__xargmatch_internal(i8* %0, i8* %1, i8** nocapture readonly %2, i8* readonly %3, i64 %4, void ()* nocapture %5) local_unnamed_addr #8 !dbg !1688 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1692, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8* %1, metadata !1693, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8** %2, metadata !1694, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8* %3, metadata !1695, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i64 %4, metadata !1696, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata void ()* %5, metadata !1697, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8* %1, metadata !1573, metadata !DIExpression()) #20, !dbg !1700
  call void @llvm.dbg.value(metadata i8** %2, metadata !1574, metadata !DIExpression()) #20, !dbg !1700
  call void @llvm.dbg.value(metadata i8* %3, metadata !1575, metadata !DIExpression()) #20, !dbg !1700
  call void @llvm.dbg.value(metadata i64 %4, metadata !1576, metadata !DIExpression()) #20, !dbg !1700
  call void @llvm.dbg.value(metadata i64 -1, metadata !1579, metadata !DIExpression()) #20, !dbg !1700
  call void @llvm.dbg.value(metadata i8 0, metadata !1580, metadata !DIExpression()) #20, !dbg !1700
  %7 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %1) #23, !dbg !1702
  call void @llvm.dbg.value(metadata i64 %7, metadata !1578, metadata !DIExpression()) #20, !dbg !1700
  call void @llvm.dbg.value(metadata i64 0, metadata !1577, metadata !DIExpression()) #20, !dbg !1700
  call void @llvm.dbg.value(metadata i8 0, metadata !1580, metadata !DIExpression()) #20, !dbg !1700
  call void @llvm.dbg.value(metadata i64 -1, metadata !1579, metadata !DIExpression()) #20, !dbg !1700
  %8 = load i8*, i8** %2, align 8, !dbg !1703, !tbaa !1298
  %9 = icmp eq i8* %8, null, !dbg !1704
  br i1 %9, label %49, label %10, !dbg !1704

10:                                               ; preds = %6
  %11 = icmp eq i8* %3, null, !dbg !1705
  br label %12, !dbg !1704

12:                                               ; preds = %33, %10
  %13 = phi i8* [ %8, %10 ], [ %38, %33 ]
  %14 = phi i8 [ 0, %10 ], [ %35, %33 ]
  %15 = phi i64 [ -1, %10 ], [ %34, %33 ]
  %16 = phi i64 [ 0, %10 ], [ %36, %33 ]
  call void @llvm.dbg.value(metadata i8 %14, metadata !1580, metadata !DIExpression()) #20, !dbg !1700
  call void @llvm.dbg.value(metadata i64 %15, metadata !1579, metadata !DIExpression()) #20, !dbg !1700
  call void @llvm.dbg.value(metadata i64 %16, metadata !1577, metadata !DIExpression()) #20, !dbg !1700
  %17 = tail call i32 @strncmp(i8* nonnull %13, i8* %1, i64 %7) #23, !dbg !1706
  %18 = icmp eq i32 %17, 0, !dbg !1706
  br i1 %18, label %19, label %33, !dbg !1707

19:                                               ; preds = %12
  %20 = tail call i64 @strlen(i8* nonnull %13) #23, !dbg !1708
  %21 = icmp eq i64 %20, %7, !dbg !1709
  br i1 %21, label %43, label %22, !dbg !1710

22:                                               ; preds = %19
  %23 = icmp eq i64 %15, -1, !dbg !1711
  br i1 %23, label %33, label %24, !dbg !1712

24:                                               ; preds = %22
  br i1 %11, label %32, label %25, !dbg !1713

25:                                               ; preds = %24
  %26 = mul i64 %15, %4, !dbg !1714
  %27 = getelementptr inbounds i8, i8* %3, i64 %26, !dbg !1715
  %28 = mul i64 %16, %4, !dbg !1716
  %29 = getelementptr inbounds i8, i8* %3, i64 %28, !dbg !1717
  %30 = tail call i32 @bcmp(i8* nonnull %27, i8* nonnull %29, i64 %4) #20, !dbg !1718
  %31 = icmp eq i32 %30, 0, !dbg !1718
  br i1 %31, label %33, label %32, !dbg !1719

32:                                               ; preds = %25, %24
  call void @llvm.dbg.value(metadata i8 1, metadata !1580, metadata !DIExpression()) #20, !dbg !1700
  br label %33, !dbg !1720

33:                                               ; preds = %32, %25, %22, %12
  %34 = phi i64 [ %15, %12 ], [ %15, %32 ], [ %15, %25 ], [ %16, %22 ], !dbg !1700
  %35 = phi i8 [ %14, %12 ], [ 1, %32 ], [ %14, %25 ], [ %14, %22 ], !dbg !1700
  call void @llvm.dbg.value(metadata i8 %35, metadata !1580, metadata !DIExpression()) #20, !dbg !1700
  call void @llvm.dbg.value(metadata i64 %34, metadata !1579, metadata !DIExpression()) #20, !dbg !1700
  %36 = add i64 %16, 1, !dbg !1721
  call void @llvm.dbg.value(metadata i64 %36, metadata !1577, metadata !DIExpression()) #20, !dbg !1700
  %37 = getelementptr inbounds i8*, i8** %2, i64 %36, !dbg !1703
  %38 = load i8*, i8** %37, align 8, !dbg !1703, !tbaa !1298
  %39 = icmp eq i8* %38, null, !dbg !1704
  br i1 %39, label %40, label %12, !dbg !1704, !llvm.loop !1722

40:                                               ; preds = %33
  call void @llvm.dbg.value(metadata i64 %34, metadata !1579, metadata !DIExpression()) #20, !dbg !1700
  call void @llvm.dbg.value(metadata i8 %35, metadata !1580, metadata !DIExpression()) #20, !dbg !1700
  call void @llvm.dbg.value(metadata i64 %34, metadata !1579, metadata !DIExpression()) #20, !dbg !1700
  call void @llvm.dbg.value(metadata i8 %35, metadata !1580, metadata !DIExpression()) #20, !dbg !1700
  call void @llvm.dbg.value(metadata i64 %34, metadata !1579, metadata !DIExpression()) #20, !dbg !1700
  call void @llvm.dbg.value(metadata i8 %35, metadata !1580, metadata !DIExpression()) #20, !dbg !1700
  call void @llvm.dbg.value(metadata i64 %34, metadata !1579, metadata !DIExpression()) #20, !dbg !1700
  call void @llvm.dbg.value(metadata i8 %35, metadata !1580, metadata !DIExpression()) #20, !dbg !1700
  call void @llvm.dbg.value(metadata i64 %34, metadata !1579, metadata !DIExpression()) #20, !dbg !1700
  call void @llvm.dbg.value(metadata i8 %35, metadata !1580, metadata !DIExpression()) #20, !dbg !1700
  call void @llvm.dbg.value(metadata i64 %34, metadata !1579, metadata !DIExpression()) #20, !dbg !1700
  call void @llvm.dbg.value(metadata i8 %35, metadata !1580, metadata !DIExpression()) #20, !dbg !1700
  call void @llvm.dbg.value(metadata i64 %34, metadata !1579, metadata !DIExpression()) #20, !dbg !1700
  call void @llvm.dbg.value(metadata i8 %35, metadata !1580, metadata !DIExpression()) #20, !dbg !1700
  %41 = and i8 %35, 1, !dbg !1724
  %42 = icmp eq i8 %41, 0, !dbg !1724
  br i1 %42, label %43, label %48

43:                                               ; preds = %19, %40
  %44 = phi i64 [ %34, %40 ], [ %16, %19 ], !dbg !1700
  call void @llvm.dbg.value(metadata i64 %44, metadata !1698, metadata !DIExpression()), !dbg !1699
  %45 = icmp sgt i64 %44, -1, !dbg !1725
  br i1 %45, label %54, label %46, !dbg !1727

46:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i8* %0, metadata !1624, metadata !DIExpression()) #20, !dbg !1728
  call void @llvm.dbg.value(metadata i8* %1, metadata !1625, metadata !DIExpression()) #20, !dbg !1728
  call void @llvm.dbg.value(metadata i64 %44, metadata !1626, metadata !DIExpression()) #20, !dbg !1728
  %47 = icmp eq i64 %44, -1, !dbg !1730
  br i1 %47, label %49, label %48, !dbg !1731

48:                                               ; preds = %40, %46
  br label %49, !dbg !1731

49:                                               ; preds = %46, %6, %48
  %50 = phi i8* [ getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.51, i64 0, i64 0), %48 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.50, i64 0, i64 0), %6 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.50, i64 0, i64 0), %46 ]
  %51 = tail call i8* @dcgettext(i8* null, i8* %50, i32 5) #20, !dbg !1728
  call void @llvm.dbg.value(metadata i8* %51, metadata !1627, metadata !DIExpression()) #20, !dbg !1728
  %52 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %1) #20, !dbg !1732
  %53 = tail call i8* @quote_n(i32 1, i8* %0) #20, !dbg !1733
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %51, i8* %52, i8* %53) #20, !dbg !1734
  tail call void @argmatch_valid(i8** nonnull %2, i8* %3, i64 %4), !dbg !1735
  tail call void %5() #20, !dbg !1736
  br label %54, !dbg !1737

54:                                               ; preds = %43, %49
  %55 = phi i64 [ -1, %49 ], [ %44, %43 ], !dbg !1699
  ret i64 %55, !dbg !1738
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i8* @argmatch_to_argument(i8* nocapture readonly %0, i8** nocapture readonly %1, i8* nocapture readonly %2, i64 %3) local_unnamed_addr #11 !dbg !1739 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1743, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i8** %1, metadata !1744, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i8* %2, metadata !1745, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i64 %3, metadata !1746, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i64 0, metadata !1747, metadata !DIExpression()), !dbg !1748
  %5 = load i8*, i8** %1, align 8, !dbg !1749, !tbaa !1298
  %6 = icmp eq i8* %5, null, !dbg !1752
  br i1 %6, label %21, label %7, !dbg !1752

7:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i64 0, metadata !1747, metadata !DIExpression()), !dbg !1748
  %8 = tail call i32 @bcmp(i8* %0, i8* %2, i64 %3), !dbg !1753
  %9 = icmp eq i32 %8, 0, !dbg !1753
  call void @llvm.dbg.value(metadata i64 1, metadata !1747, metadata !DIExpression()), !dbg !1748
  br i1 %9, label %21, label %10, !dbg !1755

10:                                               ; preds = %7, %15
  %11 = phi i64 [ %20, %15 ], [ 1, %7 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !1747, metadata !DIExpression()), !dbg !1748
  %12 = getelementptr inbounds i8*, i8** %1, i64 %11, !dbg !1749
  %13 = load i8*, i8** %12, align 8, !dbg !1749, !tbaa !1298
  %14 = icmp eq i8* %13, null, !dbg !1752
  br i1 %14, label %21, label %15, !dbg !1752, !llvm.loop !1756

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i64 %11, metadata !1747, metadata !DIExpression()), !dbg !1748
  %16 = mul i64 %11, %3, !dbg !1758
  %17 = getelementptr inbounds i8, i8* %2, i64 %16, !dbg !1759
  %18 = tail call i32 @bcmp(i8* %0, i8* %17, i64 %3), !dbg !1753
  %19 = icmp eq i32 %18, 0, !dbg !1753
  %20 = add i64 %11, 1, !dbg !1760
  call void @llvm.dbg.value(metadata i64 %20, metadata !1747, metadata !DIExpression()), !dbg !1748
  br i1 %19, label %21, label %10, !dbg !1755, !llvm.loop !1756

21:                                               ; preds = %10, %15, %7, %4
  %22 = phi i8* [ null, %4 ], [ %5, %7 ], [ %13, %15 ], [ null, %10 ], !dbg !1749
  ret i8* %22, !dbg !1761
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #14 !dbg !1762 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1764, metadata !DIExpression()), !dbg !1765
  store i8* %0, i8** @file_name, align 8, !dbg !1766, !tbaa !1298
  ret void, !dbg !1767
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #14 !dbg !1768 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1772, metadata !DIExpression()), !dbg !1773
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1774, !tbaa !1775
  ret void, !dbg !1777
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1778 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1783, !tbaa !1298
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #20, !dbg !1784
  %3 = icmp eq i32 %2, 0, !dbg !1785
  br i1 %3, label %22, label %4, !dbg !1786

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1787, !tbaa !1775, !range !1788
  %6 = icmp eq i8 %5, 0, !dbg !1787
  br i1 %6, label %11, label %7, !dbg !1789

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #26, !dbg !1790
  %9 = load i32, i32* %8, align 4, !dbg !1790, !tbaa !1424
  %10 = icmp eq i32 %9, 32, !dbg !1791
  br i1 %10, label %22, label %11, !dbg !1792

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.59, i64 0, i64 0), i32 5) #20, !dbg !1793
  call void @llvm.dbg.value(metadata i8* %12, metadata !1780, metadata !DIExpression()), !dbg !1794
  %13 = load i8*, i8** @file_name, align 8, !dbg !1795, !tbaa !1298
  %14 = icmp eq i8* %13, null, !dbg !1795
  %15 = tail call i32* @__errno_location() #26, !dbg !1797
  %16 = load i32, i32* %15, align 4, !dbg !1797, !tbaa !1424
  br i1 %14, label %19, label %17, !dbg !1798

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #20, !dbg !1799
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.60, i64 0, i64 0), i8* %18, i8* %12) #20, !dbg !1800
  br label %20, !dbg !1800

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.61, i64 0, i64 0), i8* %12) #20, !dbg !1801
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1802, !tbaa !1424
  tail call void @_exit(i32 %21) #24, !dbg !1803
  unreachable, !dbg !1803

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1804, !tbaa !1298
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #20, !dbg !1806
  %25 = icmp eq i32 %24, 0, !dbg !1807
  br i1 %25, label %28, label %26, !dbg !1808

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1809, !tbaa !1424
  tail call void @_exit(i32 %27) #24, !dbg !1810
  unreachable, !dbg !1810

28:                                               ; preds = %22
  ret void, !dbg !1811
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #15

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32 %0, i64 %1, i64 %2, i32 %3) local_unnamed_addr #8 !dbg !1812 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1818, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata i64 %1, metadata !1819, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata i64 %2, metadata !1820, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata i32 %3, metadata !1821, metadata !DIExpression()), !dbg !1824
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #20, !dbg !1825
  call void @llvm.dbg.value(metadata i32 %5, metadata !1822, metadata !DIExpression()), !dbg !1826
  ret void, !dbg !1827
}

; Function Attrs: nounwind
declare !dbg !522 i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE* %0, i32 %1) local_unnamed_addr #8 !dbg !1828 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1834, metadata !DIExpression()), !dbg !1836
  call void @llvm.dbg.value(metadata i32 %1, metadata !1835, metadata !DIExpression()), !dbg !1836
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1837
  br i1 %3, label %7, label %4, !dbg !1839

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #20, !dbg !1840
  call void @llvm.dbg.value(metadata i32 %5, metadata !1818, metadata !DIExpression()) #20, !dbg !1841
  call void @llvm.dbg.value(metadata i64 0, metadata !1819, metadata !DIExpression()) #20, !dbg !1841
  call void @llvm.dbg.value(metadata i64 0, metadata !1820, metadata !DIExpression()) #20, !dbg !1841
  call void @llvm.dbg.value(metadata i32 %1, metadata !1821, metadata !DIExpression()) #20, !dbg !1841
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #20, !dbg !1843
  call void @llvm.dbg.value(metadata i32 %6, metadata !1822, metadata !DIExpression()) #20, !dbg !1844
  br label %7, !dbg !1845

7:                                                ; preds = %2, %4
  ret void, !dbg !1846
}

; Function Attrs: nofree nounwind
declare !dbg !525 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct._IO_FILE* @fopen_safer(i8* nocapture readonly %0, i8* nocapture readonly %1) local_unnamed_addr #8 !dbg !1847 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1853, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.value(metadata i8* %1, metadata !1854, metadata !DIExpression()), !dbg !1868
  %3 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* %1), !dbg !1869
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %3, metadata !1855, metadata !DIExpression()), !dbg !1868
  %4 = icmp eq %struct._IO_FILE* %3, null, !dbg !1870
  br i1 %4, label %25, label %5, !dbg !1871

5:                                                ; preds = %2
  %6 = tail call i32 @fileno(%struct._IO_FILE* nonnull %3) #20, !dbg !1872
  call void @llvm.dbg.value(metadata i32 %6, metadata !1856, metadata !DIExpression()), !dbg !1873
  %7 = icmp ult i32 %6, 3, !dbg !1874
  br i1 %7, label %8, label %25, !dbg !1874

8:                                                ; preds = %5
  %9 = tail call i32 @dup_safer(i32 %6) #20, !dbg !1875
  call void @llvm.dbg.value(metadata i32 %9, metadata !1859, metadata !DIExpression()), !dbg !1876
  %10 = icmp slt i32 %9, 0, !dbg !1877
  br i1 %10, label %11, label %15, !dbg !1878

11:                                               ; preds = %8
  %12 = tail call i32* @__errno_location() #26, !dbg !1879
  %13 = load i32, i32* %12, align 4, !dbg !1879, !tbaa !1424
  call void @llvm.dbg.value(metadata i32 %13, metadata !1862, metadata !DIExpression()), !dbg !1880
  %14 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #20, !dbg !1881
  store i32 %13, i32* %12, align 4, !dbg !1882, !tbaa !1424
  br label %25

15:                                               ; preds = %8
  %16 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #20, !dbg !1883
  %17 = icmp eq i32 %16, 0, !dbg !1884
  br i1 %17, label %18, label %21, !dbg !1885

18:                                               ; preds = %15
  %19 = tail call %struct._IO_FILE* @fdopen(i32 %9, i8* %1) #20, !dbg !1886
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %19, metadata !1855, metadata !DIExpression()), !dbg !1868
  %20 = icmp eq %struct._IO_FILE* %19, null, !dbg !1887
  br i1 %20, label %21, label %25, !dbg !1888

21:                                               ; preds = %18, %15
  call void @llvm.dbg.value(metadata %struct._IO_FILE* undef, metadata !1855, metadata !DIExpression()), !dbg !1868
  %22 = tail call i32* @__errno_location() #26, !dbg !1889
  %23 = load i32, i32* %22, align 4, !dbg !1889, !tbaa !1424
  call void @llvm.dbg.value(metadata i32 %23, metadata !1865, metadata !DIExpression()), !dbg !1890
  %24 = tail call i32 @close(i32 %9) #20, !dbg !1891
  store i32 %23, i32* %22, align 4, !dbg !1892, !tbaa !1424
  br label %25

25:                                               ; preds = %5, %18, %2, %21, %11
  %26 = phi %struct._IO_FILE* [ null, %11 ], [ null, %21 ], [ null, %2 ], [ %19, %18 ], [ %3, %5 ], !dbg !1868
  ret %struct._IO_FILE* %26, !dbg !1893
}

; Function Attrs: nofree nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !601 noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1894 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1896, metadata !DIExpression()), !dbg !1899
  %2 = icmp eq i8* %0, null, !dbg !1900
  br i1 %2, label %3, label %6, !dbg !1902

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1903, !tbaa !1298
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.72, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #27, !dbg !1905
  tail call void @abort() #24, !dbg !1906
  unreachable, !dbg !1906

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #23, !dbg !1907
  call void @llvm.dbg.value(metadata i8* %7, metadata !1897, metadata !DIExpression()), !dbg !1899
  %8 = icmp eq i8* %7, null, !dbg !1908
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1909
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1909
  call void @llvm.dbg.value(metadata i8* %10, metadata !1898, metadata !DIExpression()), !dbg !1899
  %11 = ptrtoint i8* %10 to i64, !dbg !1910
  %12 = ptrtoint i8* %0 to i64, !dbg !1910
  %13 = sub i64 %11, %12, !dbg !1910
  %14 = icmp sgt i64 %13, 6, !dbg !1912
  br i1 %14, label %15, label %24, !dbg !1913

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1914
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.73, i64 0, i64 0), i64 7) #23, !dbg !1915
  %18 = icmp eq i32 %17, 0, !dbg !1916
  br i1 %18, label %19, label %24, !dbg !1917

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1896, metadata !DIExpression()), !dbg !1899
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.74, i64 0, i64 0), i64 3) #23, !dbg !1918
  %21 = icmp eq i32 %20, 0, !dbg !1921
  br i1 %21, label %22, label %24, !dbg !1922

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1923
  call void @llvm.dbg.value(metadata i8* %23, metadata !1896, metadata !DIExpression()), !dbg !1899
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1925, !tbaa !1298
  br label %24, !dbg !1926

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1896, metadata !DIExpression()), !dbg !1899
  store i8* %25, i8** @program_name, align 8, !dbg !1927, !tbaa !1298
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1928, !tbaa !1298
  ret void, !dbg !1929
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #16

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1930 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1935, metadata !DIExpression()), !dbg !1938
  %2 = tail call i32* @__errno_location() #26, !dbg !1939
  %3 = load i32, i32* %2, align 4, !dbg !1939, !tbaa !1424
  call void @llvm.dbg.value(metadata i32 %3, metadata !1936, metadata !DIExpression()), !dbg !1938
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1940
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1940
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1940
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #20, !dbg !1941
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1941
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1937, metadata !DIExpression()), !dbg !1938
  store i32 %3, i32* %2, align 4, !dbg !1942, !tbaa !1424
  ret %struct.quoting_options* %8, !dbg !1943
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #17 !dbg !1944 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1948, metadata !DIExpression()), !dbg !1949
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1950
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1950
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1951
  %5 = load i32, i32* %4, align 8, !dbg !1951, !tbaa !1952
  ret i32 %5, !dbg !1954
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #14 !dbg !1955 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1959, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i32 %1, metadata !1960, metadata !DIExpression()), !dbg !1961
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1962
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1962
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1963
  store i32 %1, i32* %5, align 8, !dbg !1964, !tbaa !1952
  ret void, !dbg !1965
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #18 !dbg !1966 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1970, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata i8 %1, metadata !1971, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata i32 %2, metadata !1972, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata i8 %1, metadata !1973, metadata !DIExpression()), !dbg !1978
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1979
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1979
  %6 = lshr i8 %1, 5, !dbg !1980
  %7 = zext i8 %6 to i64, !dbg !1980
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1981
  call void @llvm.dbg.value(metadata i32* %8, metadata !1974, metadata !DIExpression()), !dbg !1978
  %9 = and i8 %1, 31, !dbg !1982
  %10 = zext i8 %9 to i32, !dbg !1982
  call void @llvm.dbg.value(metadata i32 %10, metadata !1976, metadata !DIExpression()), !dbg !1978
  %11 = load i32, i32* %8, align 4, !dbg !1983, !tbaa !1424
  %12 = lshr i32 %11, %10, !dbg !1984
  %13 = and i32 %12, 1, !dbg !1985
  call void @llvm.dbg.value(metadata i32 %13, metadata !1977, metadata !DIExpression()), !dbg !1978
  %14 = and i32 %2, 1, !dbg !1986
  %15 = xor i32 %13, %14, !dbg !1987
  %16 = shl i32 %15, %10, !dbg !1988
  %17 = xor i32 %16, %11, !dbg !1989
  store i32 %17, i32* %8, align 4, !dbg !1989, !tbaa !1424
  ret i32 %13, !dbg !1990
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #18 !dbg !1991 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1995, metadata !DIExpression()), !dbg !1998
  call void @llvm.dbg.value(metadata i32 %1, metadata !1996, metadata !DIExpression()), !dbg !1998
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1999
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2001
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1995, metadata !DIExpression()), !dbg !1998
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2002
  %6 = load i32, i32* %5, align 4, !dbg !2002, !tbaa !2003
  call void @llvm.dbg.value(metadata i32 %6, metadata !1997, metadata !DIExpression()), !dbg !1998
  store i32 %1, i32* %5, align 4, !dbg !2004, !tbaa !2003
  ret i32 %6, !dbg !2005
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2006 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2010, metadata !DIExpression()), !dbg !2013
  call void @llvm.dbg.value(metadata i8* %1, metadata !2011, metadata !DIExpression()), !dbg !2013
  call void @llvm.dbg.value(metadata i8* %2, metadata !2012, metadata !DIExpression()), !dbg !2013
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2014
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2016
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2010, metadata !DIExpression()), !dbg !2013
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2017
  store i32 10, i32* %6, align 8, !dbg !2018, !tbaa !1952
  %7 = icmp ne i8* %1, null, !dbg !2019
  %8 = icmp ne i8* %2, null, !dbg !2021
  %9 = and i1 %7, %8, !dbg !2022
  br i1 %9, label %11, label %10, !dbg !2022

10:                                               ; preds = %3
  tail call void @abort() #24, !dbg !2023
  unreachable, !dbg !2023

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2024
  store i8* %1, i8** %12, align 8, !dbg !2025, !tbaa !2026
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2027
  store i8* %2, i8** %13, align 8, !dbg !2028, !tbaa !2029
  ret void, !dbg !2030
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !2031 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2035, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.value(metadata i64 %1, metadata !2036, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.value(metadata i8* %2, metadata !2037, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.value(metadata i64 %3, metadata !2038, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2039, metadata !DIExpression()), !dbg !2043
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2044
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2044
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2040, metadata !DIExpression()), !dbg !2043
  %8 = tail call i32* @__errno_location() #26, !dbg !2045
  %9 = load i32, i32* %8, align 4, !dbg !2045, !tbaa !1424
  call void @llvm.dbg.value(metadata i32 %9, metadata !2041, metadata !DIExpression()), !dbg !2043
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2046
  %11 = load i32, i32* %10, align 8, !dbg !2046, !tbaa !1952
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2047
  %13 = load i32, i32* %12, align 4, !dbg !2047, !tbaa !2003
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2048
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2049
  %16 = load i8*, i8** %15, align 8, !dbg !2049, !tbaa !2026
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2050
  %18 = load i8*, i8** %17, align 8, !dbg !2050, !tbaa !2029
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2051
  call void @llvm.dbg.value(metadata i64 %19, metadata !2042, metadata !DIExpression()), !dbg !2043
  store i32 %9, i32* %8, align 4, !dbg !2052, !tbaa !1424
  ret i64 %19, !dbg !2053
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !2054 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2060, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %1, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %2, metadata !2062, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %3, metadata !2063, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i32 %4, metadata !2064, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i32 %5, metadata !2065, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i32* %6, metadata !2066, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %7, metadata !2067, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %8, metadata !2068, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 0, metadata !2070, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 0, metadata !2071, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* null, metadata !2072, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 0, metadata !2073, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 0, metadata !2074, metadata !DIExpression()), !dbg !2118
  %13 = tail call i64 @__ctype_get_mb_cur_max() #20, !dbg !2119
  %14 = icmp eq i64 %13, 1, !dbg !2120
  call void @llvm.dbg.value(metadata i1 %14, metadata !2075, metadata !DIExpression()), !dbg !2118
  %15 = lshr i32 %5, 1, !dbg !2121
  %16 = trunc i32 %15 to i8, !dbg !2121
  %17 = and i8 %16, 1, !dbg !2121
  call void @llvm.dbg.value(metadata i8 %17, metadata !2076, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 0, metadata !2077, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 0, metadata !2078, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 1, metadata !2079, metadata !DIExpression()), !dbg !2118
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !2122
  %19 = and i32 %5, 4, !dbg !2124
  %20 = icmp eq i32 %19, 0, !dbg !2124
  %21 = and i32 %5, 1, !dbg !2127
  %22 = icmp eq i32 %21, 0, !dbg !2127
  %23 = bitcast i64* %10 to i8*, !dbg !2130
  %24 = bitcast i32* %12 to i8*, !dbg !2131
  %25 = icmp eq i32* %6, null, !dbg !2132
  br label %26, !dbg !2134

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !2135
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !2136
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !2137
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !2138
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !2118
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !2139
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !2140
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !2141
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %38, metadata !2079, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %37, metadata !2078, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %36, metadata !2077, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %35, metadata !2076, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %34, metadata !2063, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %33, metadata !2074, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %32, metadata !2073, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %31, metadata !2072, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %30, metadata !2071, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 0, metadata !2070, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %29, metadata !2068, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %28, metadata !2067, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i32 %27, metadata !2064, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.label(metadata !2112), !dbg !2142
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
  ], !dbg !2143

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !2064, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 1, metadata !2076, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %35, metadata !2076, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i32 5, metadata !2064, metadata !DIExpression()), !dbg !2118
  br label %92, !dbg !2144

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2076, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i32 5, metadata !2064, metadata !DIExpression()), !dbg !2118
  %42 = and i8 %35, 1, !dbg !2146
  %43 = icmp eq i8 %42, 0, !dbg !2146
  br i1 %43, label %44, label %92, !dbg !2144

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !2148
  br i1 %45, label %92, label %46, !dbg !2151

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !2148, !tbaa !1405
  br label %92, !dbg !2148

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.85, i64 0, i64 0), i32 %27), !dbg !2152
  call void @llvm.dbg.value(metadata i8* %48, metadata !2067, metadata !DIExpression()), !dbg !2118
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.86, i64 0, i64 0), i32 %27), !dbg !2156
  call void @llvm.dbg.value(metadata i8* %49, metadata !2068, metadata !DIExpression()), !dbg !2118
  br label %50, !dbg !2157

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !2068, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %51, metadata !2067, metadata !DIExpression()), !dbg !2118
  %53 = and i8 %35, 1, !dbg !2158
  %54 = icmp eq i8 %53, 0, !dbg !2158
  br i1 %54, label %55, label %70, !dbg !2160

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !2072, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 0, metadata !2070, metadata !DIExpression()), !dbg !2118
  %56 = load i8, i8* %51, align 1, !dbg !2161, !tbaa !1405
  %57 = icmp eq i8 %56, 0, !dbg !2164
  br i1 %57, label %70, label %58, !dbg !2164

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !2072, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %61, metadata !2070, metadata !DIExpression()), !dbg !2118
  %62 = icmp ult i64 %61, %39, !dbg !2165
  br i1 %62, label %63, label %65, !dbg !2168

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !2165
  store i8 %59, i8* %64, align 1, !dbg !2165, !tbaa !1405
  br label %65, !dbg !2165

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !2168
  call void @llvm.dbg.value(metadata i64 %66, metadata !2070, metadata !DIExpression()), !dbg !2118
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2169
  call void @llvm.dbg.value(metadata i8* %67, metadata !2072, metadata !DIExpression()), !dbg !2118
  %68 = load i8, i8* %67, align 1, !dbg !2161, !tbaa !1405
  %69 = icmp eq i8 %68, 0, !dbg !2164
  br i1 %69, label %70, label %58, !dbg !2164, !llvm.loop !2170

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !2172
  call void @llvm.dbg.value(metadata i64 %71, metadata !2070, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 1, metadata !2074, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %52, metadata !2072, metadata !DIExpression()), !dbg !2118
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #23, !dbg !2173
  call void @llvm.dbg.value(metadata i64 %72, metadata !2073, metadata !DIExpression()), !dbg !2118
  br label %92, !dbg !2174

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !2074, metadata !DIExpression()), !dbg !2118
  br label %74, !dbg !2175

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !2118
  call void @llvm.dbg.value(metadata i8 %75, metadata !2074, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 1, metadata !2076, metadata !DIExpression()), !dbg !2118
  br label %76, !dbg !2176

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !2138
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !2118
  call void @llvm.dbg.value(metadata i8 %78, metadata !2076, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %77, metadata !2074, metadata !DIExpression()), !dbg !2118
  %79 = and i8 %78, 1, !dbg !2177
  %80 = icmp eq i8 %79, 0, !dbg !2177
  %81 = select i1 %80, i8 1, i8 %77, !dbg !2179
  br label %82, !dbg !2179

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !2118
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !2121
  call void @llvm.dbg.value(metadata i8 %84, metadata !2076, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %83, metadata !2074, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i32 2, metadata !2064, metadata !DIExpression()), !dbg !2118
  %85 = and i8 %84, 1, !dbg !2180
  %86 = icmp eq i8 %85, 0, !dbg !2180
  br i1 %86, label %87, label %92, !dbg !2182

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !2183
  br i1 %88, label %92, label %89, !dbg !2186

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !2183, !tbaa !1405
  br label %92, !dbg !2183

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !2076, metadata !DIExpression()), !dbg !2118
  br label %92, !dbg !2187

91:                                               ; preds = %26
  call void @abort() #24, !dbg !2188
  unreachable, !dbg !2188

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !2172
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.87, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.87, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.87, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.86, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.86, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.86, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.87, i64 0, i64 0), %40 ], !dbg !2118
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !2118
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !2118
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !2118
  call void @llvm.dbg.value(metadata i8 %100, metadata !2076, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %99, metadata !2074, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %98, metadata !2073, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %97, metadata !2072, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %96, metadata !2070, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %95, metadata !2068, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %94, metadata !2067, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i32 %93, metadata !2064, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 0, metadata !2069, metadata !DIExpression()), !dbg !2118
  %101 = and i8 %99, 1, !dbg !2189
  %102 = icmp ne i8 %101, 0, !dbg !2189
  %103 = icmp ne i32 %93, 2, !dbg !2189
  %104 = and i1 %103, %102, !dbg !2189
  %105 = icmp ne i64 %98, 0, !dbg !2189
  %106 = and i1 %105, %104, !dbg !2189
  %107 = icmp ugt i64 %98, 1, !dbg !2189
  %108 = and i8 %100, 1, !dbg !2191
  %109 = icmp eq i8 %108, 0, !dbg !2191
  %110 = icmp eq i32 %93, 2, !dbg !2194
  %111 = or i1 %103, %109, !dbg !2196
  %112 = icmp ne i8 %108, 0, !dbg !2198
  %113 = and i1 %110, %112, !dbg !2198
  %114 = xor i1 %102, true, !dbg !2199
  %115 = xor i1 %104, true, !dbg !2132
  %116 = and i1 %109, %115, !dbg !2132
  %117 = or i1 %25, %116, !dbg !2132
  %118 = and i8 %99, %100, !dbg !2200
  %119 = and i8 %118, 1, !dbg !2200
  %120 = icmp ne i8 %119, 0, !dbg !2200
  %121 = and i1 %120, %105, !dbg !2200
  br label %122, !dbg !2202

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !2203
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !2172
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !2135
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !2139
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !2140
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !2141
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %129, metadata !2079, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %128, metadata !2078, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %127, metadata !2077, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %126, metadata !2063, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %125, metadata !2071, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %124, metadata !2070, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %123, metadata !2069, metadata !DIExpression()), !dbg !2118
  %131 = icmp eq i64 %126, -1, !dbg !2204
  br i1 %131, label %132, label %136, !dbg !2205

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2206
  %134 = load i8, i8* %133, align 1, !dbg !2206, !tbaa !1405
  %135 = icmp eq i8 %134, 0, !dbg !2207
  br i1 %135, label %581, label %138, !dbg !2208

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !2209
  br i1 %137, label %581, label %138, !dbg !2208

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !2085, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i8 0, metadata !2086, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i8 0, metadata !2087, metadata !DIExpression()), !dbg !2210
  br i1 %106, label %139, label %154, !dbg !2211

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !2212
  %141 = and i1 %107, %131, !dbg !2213
  br i1 %141, label %142, label %144, !dbg !2213

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #23, !dbg !2214
  call void @llvm.dbg.value(metadata i64 %143, metadata !2063, metadata !DIExpression()), !dbg !2118
  br label %144, !dbg !2215

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !2063, metadata !DIExpression()), !dbg !2118
  %146 = icmp ugt i64 %140, %145, !dbg !2216
  br i1 %146, label %154, label %147, !dbg !2217

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2218
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !2219
  %150 = icmp ne i32 %149, 0, !dbg !2220
  %151 = or i1 %150, %109, !dbg !2221
  %152 = xor i1 %150, true, !dbg !2221
  %153 = zext i1 %152 to i8, !dbg !2221
  br i1 %151, label %154, label %639, !dbg !2221

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !2210
  call void @llvm.dbg.value(metadata i8 %156, metadata !2085, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i64 %155, metadata !2063, metadata !DIExpression()), !dbg !2118
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2222
  %158 = load i8, i8* %157, align 1, !dbg !2222, !tbaa !1405
  call void @llvm.dbg.value(metadata i8 %158, metadata !2080, metadata !DIExpression()), !dbg !2210
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
  ], !dbg !2223

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !2224

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !2225

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !2086, metadata !DIExpression()), !dbg !2210
  %162 = and i8 %127, 1, !dbg !2228
  %163 = icmp eq i8 %162, 0, !dbg !2228
  %164 = and i1 %110, %163, !dbg !2228
  br i1 %164, label %165, label %181, !dbg !2228

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !2230
  br i1 %166, label %167, label %169, !dbg !2234

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2230
  store i8 39, i8* %168, align 1, !dbg !2230, !tbaa !1405
  br label %169, !dbg !2230

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !2234
  call void @llvm.dbg.value(metadata i64 %170, metadata !2070, metadata !DIExpression()), !dbg !2118
  %171 = icmp ult i64 %170, %130, !dbg !2235
  br i1 %171, label %172, label %174, !dbg !2238

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2235
  store i8 36, i8* %173, align 1, !dbg !2235, !tbaa !1405
  br label %174, !dbg !2235

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !2238
  call void @llvm.dbg.value(metadata i64 %175, metadata !2070, metadata !DIExpression()), !dbg !2118
  %176 = icmp ult i64 %175, %130, !dbg !2239
  br i1 %176, label %177, label %179, !dbg !2242

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2239
  store i8 39, i8* %178, align 1, !dbg !2239, !tbaa !1405
  br label %179, !dbg !2239

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !2242
  call void @llvm.dbg.value(metadata i64 %180, metadata !2070, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 1, metadata !2077, metadata !DIExpression()), !dbg !2118
  br label %181, !dbg !2243

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !2118
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !2118
  call void @llvm.dbg.value(metadata i8 %183, metadata !2077, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %182, metadata !2070, metadata !DIExpression()), !dbg !2118
  %184 = icmp ult i64 %182, %130, !dbg !2244
  br i1 %184, label %185, label %187, !dbg !2247

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2244
  store i8 92, i8* %186, align 1, !dbg !2244, !tbaa !1405
  br label %187, !dbg !2244

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2247
  call void @llvm.dbg.value(metadata i64 %188, metadata !2070, metadata !DIExpression()), !dbg !2118
  br i1 %103, label %189, label %463, !dbg !2248

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !2250
  %191 = icmp ult i64 %190, %155, !dbg !2251
  br i1 %191, label %192, label %463, !dbg !2252

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !2253
  %194 = load i8, i8* %193, align 1, !dbg !2253, !tbaa !1405
  %195 = add i8 %194, -48, !dbg !2254
  %196 = icmp ult i8 %195, 10, !dbg !2254
  br i1 %196, label %197, label %463, !dbg !2254

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !2255
  br i1 %198, label %199, label %201, !dbg !2259

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2255
  store i8 48, i8* %200, align 1, !dbg !2255, !tbaa !1405
  br label %201, !dbg !2255

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2259
  call void @llvm.dbg.value(metadata i64 %202, metadata !2070, metadata !DIExpression()), !dbg !2118
  %203 = icmp ult i64 %202, %130, !dbg !2260
  br i1 %203, label %204, label %206, !dbg !2263

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2260
  store i8 48, i8* %205, align 1, !dbg !2260, !tbaa !1405
  br label %206, !dbg !2260

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2263
  call void @llvm.dbg.value(metadata i64 %207, metadata !2070, metadata !DIExpression()), !dbg !2118
  br label %463, !dbg !2264

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !2265

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2266

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !2267

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !2268

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !2269
  %214 = icmp ult i64 %213, %155, !dbg !2270
  br i1 %214, label %215, label %463, !dbg !2271

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !2272
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2273
  %218 = load i8, i8* %217, align 1, !dbg !2273, !tbaa !1405
  %219 = icmp eq i8 %218, 63, !dbg !2274
  br i1 %219, label %220, label %463, !dbg !2275

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2276
  %222 = load i8, i8* %221, align 1, !dbg !2276, !tbaa !1405
  %223 = sext i8 %222 to i32, !dbg !2276
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
  ], !dbg !2277

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !2278

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !2080, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i64 %213, metadata !2069, metadata !DIExpression()), !dbg !2118
  %226 = icmp ult i64 %124, %130, !dbg !2280
  br i1 %226, label %227, label %229, !dbg !2283

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2280
  store i8 63, i8* %228, align 1, !dbg !2280, !tbaa !1405
  br label %229, !dbg !2280

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2283
  call void @llvm.dbg.value(metadata i64 %230, metadata !2070, metadata !DIExpression()), !dbg !2118
  %231 = icmp ult i64 %230, %130, !dbg !2284
  br i1 %231, label %232, label %234, !dbg !2287

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2284
  store i8 34, i8* %233, align 1, !dbg !2284, !tbaa !1405
  br label %234, !dbg !2284

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2287
  call void @llvm.dbg.value(metadata i64 %235, metadata !2070, metadata !DIExpression()), !dbg !2118
  %236 = icmp ult i64 %235, %130, !dbg !2288
  br i1 %236, label %237, label %239, !dbg !2291

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2288
  store i8 34, i8* %238, align 1, !dbg !2288, !tbaa !1405
  br label %239, !dbg !2288

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2291
  call void @llvm.dbg.value(metadata i64 %240, metadata !2070, metadata !DIExpression()), !dbg !2118
  %241 = icmp ult i64 %240, %130, !dbg !2292
  br i1 %241, label %242, label %244, !dbg !2295

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2292
  store i8 63, i8* %243, align 1, !dbg !2292, !tbaa !1405
  br label %244, !dbg !2292

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2295
  call void @llvm.dbg.value(metadata i64 %245, metadata !2070, metadata !DIExpression()), !dbg !2118
  br label %463, !dbg !2296

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !2084, metadata !DIExpression()), !dbg !2210
  br label %256, !dbg !2297

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !2084, metadata !DIExpression()), !dbg !2210
  br label %256, !dbg !2298

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !2084, metadata !DIExpression()), !dbg !2210
  br label %254, !dbg !2299

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !2084, metadata !DIExpression()), !dbg !2210
  br label %254, !dbg !2300

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !2084, metadata !DIExpression()), !dbg !2210
  br label %256, !dbg !2301

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !2084, metadata !DIExpression()), !dbg !2210
  br i1 %110, label %252, label %253, !dbg !2302

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !2303

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !2306

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !2307
  call void @llvm.dbg.value(metadata i8 %255, metadata !2084, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.label(metadata !2113), !dbg !2308
  br i1 %111, label %256, label %625, !dbg !2309

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !2307
  call void @llvm.dbg.value(metadata i8 %257, metadata !2084, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.label(metadata !2114), !dbg !2311
  br i1 %102, label %488, label %463, !dbg !2312

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2313

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2314, !tbaa !1405
  %261 = icmp eq i8 %260, 0, !dbg !2315
  br i1 %261, label %262, label %463, !dbg !2316

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !2317
  br i1 %263, label %264, label %463, !dbg !2319

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2087, metadata !DIExpression()), !dbg !2210
  br label %265, !dbg !2320

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !2210
  call void @llvm.dbg.value(metadata i8 %266, metadata !2087, metadata !DIExpression()), !dbg !2210
  br i1 %111, label %463, label %625, !dbg !2321

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2078, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 1, metadata !2087, metadata !DIExpression()), !dbg !2210
  br i1 %110, label %268, label %463, !dbg !2322

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !2323

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !2325
  %271 = icmp ne i64 %125, 0, !dbg !2327
  %272 = or i1 %271, %270, !dbg !2328
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !2328
  %274 = select i1 %272, i64 %130, i64 0, !dbg !2328
  call void @llvm.dbg.value(metadata i64 %274, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %273, metadata !2071, metadata !DIExpression()), !dbg !2118
  %275 = icmp ult i64 %124, %274, !dbg !2329
  br i1 %275, label %276, label %278, !dbg !2332

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2329
  store i8 39, i8* %277, align 1, !dbg !2329, !tbaa !1405
  br label %278, !dbg !2329

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !2332
  call void @llvm.dbg.value(metadata i64 %279, metadata !2070, metadata !DIExpression()), !dbg !2118
  %280 = icmp ult i64 %279, %274, !dbg !2333
  br i1 %280, label %281, label %283, !dbg !2336

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2333
  store i8 92, i8* %282, align 1, !dbg !2333, !tbaa !1405
  br label %283, !dbg !2333

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !2336
  call void @llvm.dbg.value(metadata i64 %284, metadata !2070, metadata !DIExpression()), !dbg !2118
  %285 = icmp ult i64 %284, %274, !dbg !2337
  br i1 %285, label %286, label %288, !dbg !2340

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2337
  store i8 39, i8* %287, align 1, !dbg !2337, !tbaa !1405
  br label %288, !dbg !2337

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !2340
  call void @llvm.dbg.value(metadata i64 %289, metadata !2070, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 0, metadata !2077, metadata !DIExpression()), !dbg !2118
  br label %463, !dbg !2341

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !2342

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !2088, metadata !DIExpression()), !dbg !2343
  %292 = tail call i16** @__ctype_b_loc() #26, !dbg !2344
  %293 = load i16*, i16** %292, align 8, !dbg !2344, !tbaa !1298
  %294 = zext i8 %158 to i64, !dbg !2344
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2344
  %296 = load i16, i16* %295, align 2, !dbg !2344, !tbaa !2346
  %297 = lshr i16 %296, 14, !dbg !2347
  %298 = trunc i16 %297 to i8, !dbg !2347
  %299 = and i8 %298, 1, !dbg !2347
  call void @llvm.dbg.value(metadata i8 %299, metadata !2091, metadata !DIExpression()), !dbg !2343
  br label %355, !dbg !2348

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #20, !dbg !2349
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !2092, metadata !DIExpression()), !dbg !2350
  call void @llvm.dbg.value(metadata i8* %23, metadata !2351, metadata !DIExpression()) #20, !dbg !2359
  call void @llvm.dbg.value(metadata i32 0, metadata !2357, metadata !DIExpression()) #20, !dbg !2359
  call void @llvm.dbg.value(metadata i64 8, metadata !2358, metadata !DIExpression()) #20, !dbg !2359
  store i64 0, i64* %10, align 8, !dbg !2361
  call void @llvm.dbg.value(metadata i64 0, metadata !2088, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i8 1, metadata !2091, metadata !DIExpression()), !dbg !2343
  %301 = icmp eq i64 %155, -1, !dbg !2362
  br i1 %301, label %302, label %304, !dbg !2364

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #23, !dbg !2365
  call void @llvm.dbg.value(metadata i64 %303, metadata !2063, metadata !DIExpression()), !dbg !2118
  br label %304, !dbg !2366

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !2210
  call void @llvm.dbg.value(metadata i64 %305, metadata !2063, metadata !DIExpression()), !dbg !2118
  br label %306, !dbg !2367

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !2368
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !2369
  call void @llvm.dbg.value(metadata i8 %308, metadata !2091, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i64 %307, metadata !2088, metadata !DIExpression()), !dbg !2343
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #20, !dbg !2370
  %309 = add i64 %307, %123, !dbg !2371
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !2372
  %311 = sub i64 %305, %309, !dbg !2373
  call void @llvm.dbg.value(metadata i32* %12, metadata !2098, metadata !DIExpression(DW_OP_deref)), !dbg !2131
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #20, !dbg !2374
  call void @llvm.dbg.value(metadata i64 %312, metadata !2101, metadata !DIExpression()), !dbg !2131
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !2375

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2088, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i64 %307, metadata !2088, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i64 %307, metadata !2088, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i64 %307, metadata !2088, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i64 %307, metadata !2088, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i64 %307, metadata !2088, metadata !DIExpression()), !dbg !2343
  %314 = icmp ugt i64 %305, %309, !dbg !2376
  br i1 %314, label %315, label %340, !dbg !2378

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !2379
  br label %317, !dbg !2379

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !2088, metadata !DIExpression()), !dbg !2343
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !2380
  %321 = load i8, i8* %320, align 1, !dbg !2380, !tbaa !1405
  %322 = icmp eq i8 %321, 0, !dbg !2378
  br i1 %322, label %340, label %323, !dbg !2379

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !2381
  call void @llvm.dbg.value(metadata i64 %324, metadata !2088, metadata !DIExpression()), !dbg !2343
  %325 = add i64 %324, %123, !dbg !2382
  %326 = icmp ult i64 %325, %305, !dbg !2376
  br i1 %326, label %317, label %340, !dbg !2378, !llvm.loop !2383

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !2384
  %329 = and i1 %113, %328, !dbg !2387
  call void @llvm.dbg.value(metadata i64 1, metadata !2102, metadata !DIExpression()), !dbg !2388
  br i1 %329, label %330, label %343, !dbg !2387

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !2102, metadata !DIExpression()), !dbg !2388
  %332 = add i64 %331, %309, !dbg !2389
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !2390
  %334 = load i8, i8* %333, align 1, !dbg !2390, !tbaa !1405
  %335 = sext i8 %334 to i32, !dbg !2390
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !2391

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !2392
  call void @llvm.dbg.value(metadata i64 %337, metadata !2102, metadata !DIExpression()), !dbg !2388
  %338 = icmp eq i64 %337, %312, !dbg !2384
  br i1 %338, label %343, label %330, !dbg !2393, !llvm.loop !2394

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2088, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i8 %308, metadata !2091, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i64 %307, metadata !2088, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i8 %308, metadata !2091, metadata !DIExpression()), !dbg !2343
  br label %340, !dbg !2396

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #20, !dbg !2396
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !2397, !tbaa !1424
  call void @llvm.dbg.value(metadata i32 %344, metadata !2098, metadata !DIExpression()), !dbg !2131
  %345 = call i32 @iswprint(i32 %344) #20, !dbg !2399
  %346 = icmp eq i32 %345, 0, !dbg !2399
  %347 = select i1 %346, i8 0, i8 %308, !dbg !2400
  call void @llvm.dbg.value(metadata i8 %347, metadata !2091, metadata !DIExpression()), !dbg !2343
  %348 = add i64 %312, %307, !dbg !2401
  call void @llvm.dbg.value(metadata i64 %348, metadata !2088, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i8 %347, metadata !2091, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i64 %348, metadata !2088, metadata !DIExpression()), !dbg !2343
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #20, !dbg !2396
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #23, !dbg !2402
  %350 = icmp eq i32 %349, 0, !dbg !2403
  br i1 %350, label %306, label %351, !dbg !2404, !llvm.loop !2405

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #20, !dbg !2407
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !2067, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %94, metadata !2067, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %94, metadata !2067, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %94, metadata !2067, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %94, metadata !2067, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %95, metadata !2068, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %95, metadata !2068, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %95, metadata !2068, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %95, metadata !2068, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %95, metadata !2068, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %130, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %130, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %130, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %130, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %130, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %305, metadata !2063, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %305, metadata !2063, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %305, metadata !2063, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %305, metadata !2063, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %305, metadata !2063, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %94, metadata !2067, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %94, metadata !2067, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %94, metadata !2067, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %94, metadata !2067, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %94, metadata !2067, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %95, metadata !2068, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %95, metadata !2068, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %95, metadata !2068, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %95, metadata !2068, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %95, metadata !2068, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %130, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %130, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %130, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %130, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %130, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %305, metadata !2063, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %305, metadata !2063, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %305, metadata !2063, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %305, metadata !2063, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %305, metadata !2063, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %94, metadata !2067, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %94, metadata !2067, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %94, metadata !2067, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %94, metadata !2067, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %94, metadata !2067, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %95, metadata !2068, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %95, metadata !2068, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %95, metadata !2068, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %95, metadata !2068, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %95, metadata !2068, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %130, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %130, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %130, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %130, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %130, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %305, metadata !2063, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %305, metadata !2063, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %305, metadata !2063, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %305, metadata !2063, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %305, metadata !2063, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %94, metadata !2067, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %94, metadata !2067, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %94, metadata !2067, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %94, metadata !2067, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %94, metadata !2067, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %95, metadata !2068, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %95, metadata !2068, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %95, metadata !2068, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %95, metadata !2068, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %95, metadata !2068, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %130, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %130, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %130, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %130, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %130, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %305, metadata !2063, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %305, metadata !2063, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %305, metadata !2063, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %305, metadata !2063, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %305, metadata !2063, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i32 2, metadata !2064, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i32 2, metadata !2064, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i32 2, metadata !2064, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i32 2, metadata !2064, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i32 2, metadata !2064, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %94, metadata !2067, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %94, metadata !2067, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %94, metadata !2067, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %94, metadata !2067, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %94, metadata !2067, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %95, metadata !2068, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %95, metadata !2068, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %95, metadata !2068, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %95, metadata !2068, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %95, metadata !2068, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %99, metadata !2074, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %99, metadata !2074, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %99, metadata !2074, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %99, metadata !2074, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %99, metadata !2074, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %130, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %130, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %130, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %130, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %130, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %305, metadata !2063, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %305, metadata !2063, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %305, metadata !2063, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %305, metadata !2063, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %305, metadata !2063, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i32 2, metadata !2064, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i32 2, metadata !2064, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i32 2, metadata !2064, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i32 2, metadata !2064, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i32 2, metadata !2064, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %94, metadata !2067, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %94, metadata !2067, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %94, metadata !2067, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %94, metadata !2067, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %94, metadata !2067, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %95, metadata !2068, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %95, metadata !2068, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %95, metadata !2068, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %95, metadata !2068, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %95, metadata !2068, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %99, metadata !2074, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %99, metadata !2074, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %99, metadata !2074, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %99, metadata !2074, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %99, metadata !2074, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %130, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %130, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %130, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %130, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %130, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %305, metadata !2063, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %305, metadata !2063, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %305, metadata !2063, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %305, metadata !2063, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %305, metadata !2063, metadata !DIExpression()), !dbg !2118
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #20, !dbg !2396
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #20, !dbg !2407
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !2210
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !2408
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !2408
  call void @llvm.dbg.value(metadata i8 %358, metadata !2091, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i64 %357, metadata !2088, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i64 %356, metadata !2063, metadata !DIExpression()), !dbg !2118
  %359 = and i8 %358, 1, !dbg !2409
  %360 = icmp ne i8 %359, 0, !dbg !2409
  call void @llvm.dbg.value(metadata i8 %359, metadata !2087, metadata !DIExpression()), !dbg !2210
  %361 = icmp ult i64 %357, 2, !dbg !2410
  %362 = or i1 %360, %114, !dbg !2411
  %363 = and i1 %361, %362, !dbg !2412
  br i1 %363, label %463, label %364, !dbg !2412

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !2413
  call void @llvm.dbg.value(metadata i64 %365, metadata !2109, metadata !DIExpression()), !dbg !2414
  br label %366, !dbg !2415

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !2203
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !2118
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !2139
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !2210
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !2210
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !2416
  call void @llvm.dbg.value(metadata i8 %372, metadata !2086, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i8 %371, metadata !2085, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i8 %370, metadata !2080, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i8 %369, metadata !2077, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %368, metadata !2070, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %367, metadata !2069, metadata !DIExpression()), !dbg !2118
  br i1 %362, label %419, label %373, !dbg !2417

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !2422

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !2086, metadata !DIExpression()), !dbg !2210
  %375 = and i8 %369, 1, !dbg !2425
  %376 = icmp eq i8 %375, 0, !dbg !2425
  %377 = and i1 %110, %376, !dbg !2425
  br i1 %377, label %378, label %394, !dbg !2425

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !2427
  br i1 %379, label %380, label %382, !dbg !2431

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2427
  store i8 39, i8* %381, align 1, !dbg !2427, !tbaa !1405
  br label %382, !dbg !2427

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !2431
  call void @llvm.dbg.value(metadata i64 %383, metadata !2070, metadata !DIExpression()), !dbg !2118
  %384 = icmp ult i64 %383, %130, !dbg !2432
  br i1 %384, label %385, label %387, !dbg !2435

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2432
  store i8 36, i8* %386, align 1, !dbg !2432, !tbaa !1405
  br label %387, !dbg !2432

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !2435
  call void @llvm.dbg.value(metadata i64 %388, metadata !2070, metadata !DIExpression()), !dbg !2118
  %389 = icmp ult i64 %388, %130, !dbg !2436
  br i1 %389, label %390, label %392, !dbg !2439

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !2436
  store i8 39, i8* %391, align 1, !dbg !2436, !tbaa !1405
  br label %392, !dbg !2436

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !2439
  call void @llvm.dbg.value(metadata i64 %393, metadata !2070, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 1, metadata !2077, metadata !DIExpression()), !dbg !2118
  br label %394, !dbg !2440

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !2118
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !2118
  call void @llvm.dbg.value(metadata i8 %396, metadata !2077, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %395, metadata !2070, metadata !DIExpression()), !dbg !2118
  %397 = icmp ult i64 %395, %130, !dbg !2441
  br i1 %397, label %398, label %400, !dbg !2444

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2441
  store i8 92, i8* %399, align 1, !dbg !2441, !tbaa !1405
  br label %400, !dbg !2441

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !2444
  call void @llvm.dbg.value(metadata i64 %401, metadata !2070, metadata !DIExpression()), !dbg !2118
  %402 = icmp ult i64 %401, %130, !dbg !2445
  br i1 %402, label %403, label %407, !dbg !2448

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !2445
  %405 = or i8 %404, 48, !dbg !2445
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2445
  store i8 %405, i8* %406, align 1, !dbg !2445, !tbaa !1405
  br label %407, !dbg !2445

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !2448
  call void @llvm.dbg.value(metadata i64 %408, metadata !2070, metadata !DIExpression()), !dbg !2118
  %409 = icmp ult i64 %408, %130, !dbg !2449
  br i1 %409, label %410, label %415, !dbg !2452

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !2449
  %412 = and i8 %411, 7, !dbg !2449
  %413 = or i8 %412, 48, !dbg !2449
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2449
  store i8 %413, i8* %414, align 1, !dbg !2449, !tbaa !1405
  br label %415, !dbg !2449

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !2452
  call void @llvm.dbg.value(metadata i64 %416, metadata !2070, metadata !DIExpression()), !dbg !2118
  %417 = and i8 %370, 7, !dbg !2453
  %418 = or i8 %417, 48, !dbg !2454
  call void @llvm.dbg.value(metadata i8 %418, metadata !2080, metadata !DIExpression()), !dbg !2210
  br label %428, !dbg !2455

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !2456
  %421 = icmp eq i8 %420, 0, !dbg !2456
  br i1 %421, label %428, label %422, !dbg !2458

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !2459
  br i1 %423, label %424, label %426, !dbg !2463

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2459
  store i8 92, i8* %425, align 1, !dbg !2459, !tbaa !1405
  br label %426, !dbg !2459

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !2463
  call void @llvm.dbg.value(metadata i64 %427, metadata !2070, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 0, metadata !2085, metadata !DIExpression()), !dbg !2210
  br label %428, !dbg !2464

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !2118
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !2139
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !2210
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !2210
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !2210
  call void @llvm.dbg.value(metadata i8 %433, metadata !2086, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i8 %432, metadata !2085, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i8 %431, metadata !2080, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i8 %430, metadata !2077, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %429, metadata !2070, metadata !DIExpression()), !dbg !2118
  %434 = add i64 %367, 1, !dbg !2465
  %435 = icmp ugt i64 %365, %434, !dbg !2467
  br i1 %435, label %436, label %526, !dbg !2468

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !2469
  %438 = icmp ne i8 %437, 0, !dbg !2469
  %439 = and i8 %433, 1, !dbg !2469
  %440 = icmp eq i8 %439, 0, !dbg !2469
  %441 = and i1 %438, %440, !dbg !2469
  br i1 %441, label %442, label %453, !dbg !2469

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !2472
  br i1 %443, label %444, label %446, !dbg !2476

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !2472
  store i8 39, i8* %445, align 1, !dbg !2472, !tbaa !1405
  br label %446, !dbg !2472

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !2476
  call void @llvm.dbg.value(metadata i64 %447, metadata !2070, metadata !DIExpression()), !dbg !2118
  %448 = icmp ult i64 %447, %130, !dbg !2477
  br i1 %448, label %449, label %451, !dbg !2480

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !2477
  store i8 39, i8* %450, align 1, !dbg !2477, !tbaa !1405
  br label %451, !dbg !2477

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !2480
  call void @llvm.dbg.value(metadata i64 %452, metadata !2070, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 0, metadata !2077, metadata !DIExpression()), !dbg !2118
  br label %453, !dbg !2481

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !2482
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !2118
  call void @llvm.dbg.value(metadata i8 %455, metadata !2077, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %454, metadata !2070, metadata !DIExpression()), !dbg !2118
  %456 = icmp ult i64 %454, %130, !dbg !2483
  br i1 %456, label %457, label %459, !dbg !2486

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2483
  store i8 %431, i8* %458, align 1, !dbg !2483, !tbaa !1405
  br label %459, !dbg !2483

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !2486
  call void @llvm.dbg.value(metadata i64 %460, metadata !2070, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %434, metadata !2069, metadata !DIExpression()), !dbg !2118
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !2487
  %462 = load i8, i8* %461, align 1, !dbg !2487, !tbaa !1405
  call void @llvm.dbg.value(metadata i8 %462, metadata !2080, metadata !DIExpression()), !dbg !2210
  br label %366, !dbg !2488, !llvm.loop !2489

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !2203
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !2118
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !2135
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !2492
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !2118
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !2118
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !2210
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !2210
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !2210
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %472, metadata !2087, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i8 %471, metadata !2086, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i8 %156, metadata !2085, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i8 %470, metadata !2080, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i8 %469, metadata !2078, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %468, metadata !2077, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %467, metadata !2063, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %466, metadata !2071, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %465, metadata !2070, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %464, metadata !2069, metadata !DIExpression()), !dbg !2118
  br i1 %117, label %486, label %474, !dbg !2493

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !2494
  %476 = zext i8 %475 to i64, !dbg !2494
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !2495
  %478 = load i32, i32* %477, align 4, !dbg !2495, !tbaa !1424
  %479 = and i8 %470, 31, !dbg !2496
  %480 = zext i8 %479 to i32, !dbg !2496
  %481 = shl nuw i32 1, %480, !dbg !2497
  %482 = and i32 %478, %481, !dbg !2497
  %483 = icmp eq i32 %482, 0, !dbg !2497
  %484 = icmp eq i8 %156, 0, !dbg !2498
  %485 = and i1 %484, %483, !dbg !2499
  br i1 %485, label %526, label %488, !dbg !2499

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !2498
  br i1 %487, label %526, label %488, !dbg !2500

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !2501
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !2118
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !2135
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !2492
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !2139
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !2140
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !2210
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !2210
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %496, metadata !2087, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i8 %495, metadata !2080, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i8 %494, metadata !2078, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %493, metadata !2077, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %492, metadata !2063, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %491, metadata !2071, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %490, metadata !2070, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %489, metadata !2069, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.label(metadata !2115), !dbg !2502
  br i1 %109, label %498, label %629, !dbg !2503

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !2086, metadata !DIExpression()), !dbg !2210
  %499 = and i8 %493, 1, !dbg !2505
  %500 = icmp eq i8 %499, 0, !dbg !2505
  %501 = and i1 %110, %500, !dbg !2505
  br i1 %501, label %502, label %518, !dbg !2505

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !2507
  br i1 %503, label %504, label %506, !dbg !2511

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !2507
  store i8 39, i8* %505, align 1, !dbg !2507, !tbaa !1405
  br label %506, !dbg !2507

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !2511
  call void @llvm.dbg.value(metadata i64 %507, metadata !2070, metadata !DIExpression()), !dbg !2118
  %508 = icmp ult i64 %507, %497, !dbg !2512
  br i1 %508, label %509, label %511, !dbg !2515

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !2512
  store i8 36, i8* %510, align 1, !dbg !2512, !tbaa !1405
  br label %511, !dbg !2512

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !2515
  call void @llvm.dbg.value(metadata i64 %512, metadata !2070, metadata !DIExpression()), !dbg !2118
  %513 = icmp ult i64 %512, %497, !dbg !2516
  br i1 %513, label %514, label %516, !dbg !2519

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2516
  store i8 39, i8* %515, align 1, !dbg !2516, !tbaa !1405
  br label %516, !dbg !2516

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !2519
  call void @llvm.dbg.value(metadata i64 %517, metadata !2070, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 1, metadata !2077, metadata !DIExpression()), !dbg !2118
  br label %518, !dbg !2520

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !2210
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !2118
  call void @llvm.dbg.value(metadata i8 %520, metadata !2077, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %519, metadata !2070, metadata !DIExpression()), !dbg !2118
  %521 = icmp ult i64 %519, %497, !dbg !2521
  br i1 %521, label %522, label %524, !dbg !2524

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2521
  store i8 92, i8* %523, align 1, !dbg !2521, !tbaa !1405
  br label %524, !dbg !2521

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !2524
  call void @llvm.dbg.value(metadata i64 %525, metadata !2070, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %536, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %535, metadata !2087, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i8 %534, metadata !2086, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i8 %533, metadata !2080, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i8 %532, metadata !2078, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %531, metadata !2077, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %530, metadata !2063, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %529, metadata !2071, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %528, metadata !2070, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %527, metadata !2069, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.label(metadata !2116), !dbg !2525
  br label %553, !dbg !2526

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !2501
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !2118
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !2135
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !2492
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !2139
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !2140
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !2529
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !2210
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !2210
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %535, metadata !2087, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i8 %534, metadata !2086, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i8 %533, metadata !2080, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i8 %532, metadata !2078, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %531, metadata !2077, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %530, metadata !2063, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %529, metadata !2071, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %528, metadata !2070, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %527, metadata !2069, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.label(metadata !2116), !dbg !2525
  %537 = and i8 %531, 1, !dbg !2526
  %538 = icmp ne i8 %537, 0, !dbg !2526
  %539 = and i8 %534, 1, !dbg !2526
  %540 = icmp eq i8 %539, 0, !dbg !2526
  %541 = and i1 %538, %540, !dbg !2526
  br i1 %541, label %542, label %553, !dbg !2526

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !2530
  br i1 %543, label %544, label %546, !dbg !2534

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2530
  store i8 39, i8* %545, align 1, !dbg !2530, !tbaa !1405
  br label %546, !dbg !2530

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !2534
  call void @llvm.dbg.value(metadata i64 %547, metadata !2070, metadata !DIExpression()), !dbg !2118
  %548 = icmp ult i64 %547, %536, !dbg !2535
  br i1 %548, label %549, label %551, !dbg !2538

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !2535
  store i8 39, i8* %550, align 1, !dbg !2535, !tbaa !1405
  br label %551, !dbg !2535

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !2538
  call void @llvm.dbg.value(metadata i64 %552, metadata !2070, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 0, metadata !2077, metadata !DIExpression()), !dbg !2118
  br label %553, !dbg !2539

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !2210
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !2118
  call void @llvm.dbg.value(metadata i8 %562, metadata !2077, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %561, metadata !2070, metadata !DIExpression()), !dbg !2118
  %563 = icmp ult i64 %561, %554, !dbg !2540
  br i1 %563, label %564, label %566, !dbg !2543

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !2540
  store i8 %556, i8* %565, align 1, !dbg !2540, !tbaa !1405
  br label %566, !dbg !2540

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2543
  call void @llvm.dbg.value(metadata i64 %567, metadata !2070, metadata !DIExpression()), !dbg !2118
  %568 = and i8 %555, 1, !dbg !2544
  %569 = icmp eq i8 %568, 0, !dbg !2544
  %570 = select i1 %569, i8 0, i8 %129, !dbg !2546
  call void @llvm.dbg.value(metadata i8 %570, metadata !2079, metadata !DIExpression()), !dbg !2118
  br label %571, !dbg !2547

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !2501
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !2118
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !2135
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !2492
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !2139
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !2118
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !2141
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %578, metadata !2079, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %577, metadata !2078, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %576, metadata !2077, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %575, metadata !2063, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %574, metadata !2071, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %573, metadata !2070, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %572, metadata !2069, metadata !DIExpression()), !dbg !2118
  %580 = add i64 %572, 1, !dbg !2548
  call void @llvm.dbg.value(metadata i64 %580, metadata !2069, metadata !DIExpression()), !dbg !2118
  br label %122, !dbg !2549, !llvm.loop !2550

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !2070, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %124, metadata !2070, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %125, metadata !2071, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %125, metadata !2071, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %127, metadata !2077, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %127, metadata !2077, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %128, metadata !2078, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %128, metadata !2078, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %129, metadata !2079, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %129, metadata !2079, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %130, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %130, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %124, metadata !2070, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %124, metadata !2070, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %125, metadata !2071, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %125, metadata !2071, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %127, metadata !2077, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %127, metadata !2077, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %128, metadata !2078, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %128, metadata !2078, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %129, metadata !2079, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %129, metadata !2079, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %130, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %130, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %124, metadata !2070, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %124, metadata !2070, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %125, metadata !2071, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %125, metadata !2071, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %127, metadata !2077, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %127, metadata !2077, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %128, metadata !2078, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %128, metadata !2078, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %129, metadata !2079, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %129, metadata !2079, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %130, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %130, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %124, metadata !2070, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %124, metadata !2070, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %125, metadata !2071, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %125, metadata !2071, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %127, metadata !2077, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %127, metadata !2077, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %128, metadata !2078, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %128, metadata !2078, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %129, metadata !2079, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %129, metadata !2079, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %130, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %130, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %124, metadata !2070, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %124, metadata !2070, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %125, metadata !2071, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %125, metadata !2071, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %582, metadata !2063, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %582, metadata !2063, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %127, metadata !2077, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %127, metadata !2077, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %128, metadata !2078, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %128, metadata !2078, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %129, metadata !2079, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %129, metadata !2079, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %130, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %130, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %124, metadata !2070, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %124, metadata !2070, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %125, metadata !2071, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %125, metadata !2071, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %582, metadata !2063, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %582, metadata !2063, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %127, metadata !2077, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %127, metadata !2077, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %128, metadata !2078, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %128, metadata !2078, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %129, metadata !2079, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 %129, metadata !2079, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %130, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %130, metadata !2061, metadata !DIExpression()), !dbg !2118
  %583 = icmp eq i64 %124, 0, !dbg !2552
  %584 = and i1 %110, %583, !dbg !2554
  %585 = xor i1 %584, true, !dbg !2554
  %586 = or i1 %109, %585, !dbg !2554
  br i1 %586, label %587, label %629, !dbg !2554

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !2555
  %589 = xor i1 %588, true, !dbg !2555
  %590 = and i8 %128, 1, !dbg !2557
  %591 = icmp eq i8 %590, 0, !dbg !2557
  %592 = or i1 %591, %589, !dbg !2555
  br i1 %592, label %602, label %593, !dbg !2555

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !2558
  %595 = icmp eq i8 %594, 0, !dbg !2558
  br i1 %595, label %598, label %596, !dbg !2561

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !2063, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %94, metadata !2067, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %95, metadata !2068, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %125, metadata !2071, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %582, metadata !2063, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %94, metadata !2067, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %95, metadata !2068, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %125, metadata !2071, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %582, metadata !2063, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %94, metadata !2067, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %95, metadata !2068, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %125, metadata !2071, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %582, metadata !2063, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %94, metadata !2067, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %95, metadata !2068, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %125, metadata !2071, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %94, metadata !2067, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %95, metadata !2068, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %125, metadata !2071, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %582, metadata !2063, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %94, metadata !2067, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %95, metadata !2068, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %125, metadata !2071, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %582, metadata !2063, metadata !DIExpression()), !dbg !2118
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2562
  br label %645, !dbg !2563

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !2564
  %600 = icmp ne i64 %125, 0, !dbg !2566
  %601 = and i1 %600, %599, !dbg !2567
  br i1 %601, label %26, label %602, !dbg !2567

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !2072, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %97, metadata !2072, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %124, metadata !2070, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %124, metadata !2070, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %130, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %130, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %97, metadata !2072, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %97, metadata !2072, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %124, metadata !2070, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %124, metadata !2070, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %130, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %130, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %97, metadata !2072, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %97, metadata !2072, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %124, metadata !2070, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %124, metadata !2070, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %130, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %130, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %97, metadata !2072, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %97, metadata !2072, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %124, metadata !2070, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %124, metadata !2070, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %130, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %130, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %97, metadata !2072, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %97, metadata !2072, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %124, metadata !2070, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %124, metadata !2070, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %130, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %130, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %97, metadata !2072, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %97, metadata !2072, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %124, metadata !2070, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %124, metadata !2070, metadata !DIExpression()), !dbg !2118
  %603 = icmp ne i8* %97, null, !dbg !2568
  %604 = and i1 %603, %109, !dbg !2570
  br i1 %604, label %605, label %620, !dbg !2570

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !2072, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %124, metadata !2070, metadata !DIExpression()), !dbg !2118
  %606 = load i8, i8* %97, align 1, !dbg !2571, !tbaa !1405
  %607 = icmp eq i8 %606, 0, !dbg !2574
  br i1 %607, label %620, label %608, !dbg !2574

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !2072, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %611, metadata !2070, metadata !DIExpression()), !dbg !2118
  %612 = icmp ult i64 %611, %130, !dbg !2575
  br i1 %612, label %613, label %615, !dbg !2578

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !2575
  store i8 %609, i8* %614, align 1, !dbg !2575, !tbaa !1405
  br label %615, !dbg !2575

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !2578
  call void @llvm.dbg.value(metadata i64 %616, metadata !2070, metadata !DIExpression()), !dbg !2118
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !2579
  call void @llvm.dbg.value(metadata i8* %617, metadata !2072, metadata !DIExpression()), !dbg !2118
  %618 = load i8, i8* %617, align 1, !dbg !2571, !tbaa !1405
  %619 = icmp eq i8 %618, 0, !dbg !2574
  br i1 %619, label %620, label %608, !dbg !2574, !llvm.loop !2580

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !2172
  call void @llvm.dbg.value(metadata i64 %621, metadata !2070, metadata !DIExpression()), !dbg !2118
  %622 = icmp ult i64 %621, %130, !dbg !2582
  br i1 %622, label %623, label %645, !dbg !2584

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2585
  store i8 0, i8* %624, align 1, !dbg !2586, !tbaa !1405
  br label %645, !dbg !2585

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %630, metadata !2063, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.label(metadata !2117), !dbg !2587
  %627 = icmp eq i8 %101, 0, !dbg !2588
  %628 = select i1 %627, i32 2, i32 4, !dbg !2588
  br label %635, !dbg !2588

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2061, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %630, metadata !2063, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.label(metadata !2117), !dbg !2587
  %632 = icmp eq i32 %93, 2, !dbg !2590
  %633 = icmp eq i8 %101, 0, !dbg !2588
  %634 = select i1 %633, i32 2, i32 4, !dbg !2588
  br i1 %632, label %635, label %639, !dbg !2588

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !2588

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !2064, metadata !DIExpression()), !dbg !2118
  %643 = and i32 %5, -3, !dbg !2591
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !2592
  br label %645, !dbg !2593

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !2594
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2595 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2599, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i32 %1, metadata !2600, metadata !DIExpression()), !dbg !2603
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #20, !dbg !2604
  call void @llvm.dbg.value(metadata i8* %3, metadata !2601, metadata !DIExpression()), !dbg !2603
  %4 = icmp eq i8* %3, %0, !dbg !2605
  br i1 %4, label %5, label %71, !dbg !2607

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #20, !dbg !2608
  call void @llvm.dbg.value(metadata i8* %6, metadata !2602, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8* %6, metadata !2609, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8* undef, metadata !2615, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8 85, metadata !2616, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8 84, metadata !2617, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8 70, metadata !2618, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8 45, metadata !2619, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8 56, metadata !2620, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8 0, metadata !2621, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8 0, metadata !2622, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8 0, metadata !2623, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8 0, metadata !2624, metadata !DIExpression()), !dbg !2625
  %7 = load i8, i8* %6, align 1, !dbg !2628, !tbaa !1405
  %8 = and i8 %7, -33, !dbg !2628
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2628

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2630, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i8* undef, metadata !2635, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i8 84, metadata !2636, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i8 70, metadata !2637, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i8 45, metadata !2638, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i8 56, metadata !2639, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i8 0, metadata !2640, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i8 0, metadata !2641, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i8 0, metadata !2642, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i8 0, metadata !2643, metadata !DIExpression()), !dbg !2644
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2648
  %11 = load i8, i8* %10, align 1, !dbg !2648, !tbaa !1405
  %12 = and i8 %11, -33, !dbg !2648
  %13 = icmp eq i8 %12, 84, !dbg !2648
  br i1 %13, label %14, label %68, !dbg !2648

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2650, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8* undef, metadata !2655, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8 70, metadata !2656, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8 45, metadata !2657, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8 56, metadata !2658, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8 0, metadata !2659, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8 0, metadata !2660, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8 0, metadata !2661, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8 0, metadata !2662, metadata !DIExpression()), !dbg !2663
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2667
  %16 = load i8, i8* %15, align 1, !dbg !2667, !tbaa !1405
  %17 = and i8 %16, -33, !dbg !2667
  %18 = icmp eq i8 %17, 70, !dbg !2667
  br i1 %18, label %19, label %68, !dbg !2667

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2669, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata i8* undef, metadata !2674, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata i8 45, metadata !2675, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata i8 56, metadata !2676, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata i8 0, metadata !2677, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata i8 0, metadata !2678, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata i8 0, metadata !2679, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata i8 0, metadata !2680, metadata !DIExpression()), !dbg !2681
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2685
  %21 = load i8, i8* %20, align 1, !dbg !2685, !tbaa !1405
  %22 = icmp eq i8 %21, 45, !dbg !2685
  br i1 %22, label %23, label %68, !dbg !2687

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2688, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i8* undef, metadata !2693, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i8 56, metadata !2694, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i8 0, metadata !2695, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i8 0, metadata !2696, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i8 0, metadata !2697, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i8 0, metadata !2698, metadata !DIExpression()), !dbg !2699
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2703
  %25 = load i8, i8* %24, align 1, !dbg !2703, !tbaa !1405
  %26 = icmp eq i8 %25, 56, !dbg !2703
  br i1 %26, label %27, label %68, !dbg !2705

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2706, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i8* undef, metadata !2711, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i8 0, metadata !2712, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i8 0, metadata !2713, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i8 0, metadata !2714, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i8 0, metadata !2715, metadata !DIExpression()), !dbg !2716
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2720
  %29 = load i8, i8* %28, align 1, !dbg !2720, !tbaa !1405
  %30 = icmp eq i8 %29, 0, !dbg !2720
  br i1 %30, label %31, label %68, !dbg !2722

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2723, !tbaa !1405
  %33 = icmp eq i8 %32, 96, !dbg !2724
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.88, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.89, i64 0, i64 0), !dbg !2723
  br label %71, !dbg !2725

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2630, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i8* undef, metadata !2635, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i8 66, metadata !2636, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i8 49, metadata !2637, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i8 56, metadata !2638, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i8 48, metadata !2639, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i8 51, metadata !2640, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i8 48, metadata !2641, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i8 0, metadata !2642, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i8 0, metadata !2643, metadata !DIExpression()), !dbg !2726
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2730
  %37 = load i8, i8* %36, align 1, !dbg !2730, !tbaa !1405
  %38 = and i8 %37, -33, !dbg !2730
  %39 = icmp eq i8 %38, 66, !dbg !2730
  br i1 %39, label %40, label %68, !dbg !2730

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2650, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i8* undef, metadata !2655, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i8 49, metadata !2656, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i8 56, metadata !2657, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i8 48, metadata !2658, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i8 51, metadata !2659, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i8 48, metadata !2660, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i8 0, metadata !2661, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i8 0, metadata !2662, metadata !DIExpression()), !dbg !2731
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2733
  %42 = load i8, i8* %41, align 1, !dbg !2733, !tbaa !1405
  %43 = icmp eq i8 %42, 49, !dbg !2733
  br i1 %43, label %44, label %68, !dbg !2734

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2669, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i8* undef, metadata !2674, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i8 56, metadata !2675, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i8 48, metadata !2676, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i8 51, metadata !2677, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i8 48, metadata !2678, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i8 0, metadata !2679, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i8 0, metadata !2680, metadata !DIExpression()), !dbg !2735
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2737
  %46 = load i8, i8* %45, align 1, !dbg !2737, !tbaa !1405
  %47 = icmp eq i8 %46, 56, !dbg !2737
  br i1 %47, label %48, label %68, !dbg !2738

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2688, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i8* undef, metadata !2693, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i8 48, metadata !2694, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i8 51, metadata !2695, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i8 48, metadata !2696, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i8 0, metadata !2697, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i8 0, metadata !2698, metadata !DIExpression()), !dbg !2739
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2741
  %50 = load i8, i8* %49, align 1, !dbg !2741, !tbaa !1405
  %51 = icmp eq i8 %50, 48, !dbg !2741
  br i1 %51, label %52, label %68, !dbg !2742

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2706, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i8* undef, metadata !2711, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i8 51, metadata !2712, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i8 48, metadata !2713, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i8 0, metadata !2714, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i8 0, metadata !2715, metadata !DIExpression()), !dbg !2743
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2745
  %54 = load i8, i8* %53, align 1, !dbg !2745, !tbaa !1405
  %55 = icmp eq i8 %54, 51, !dbg !2745
  br i1 %55, label %56, label %68, !dbg !2746

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2747, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i8* undef, metadata !2752, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i8 48, metadata !2753, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i8 0, metadata !2754, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i8 0, metadata !2755, metadata !DIExpression()), !dbg !2756
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2760
  %58 = load i8, i8* %57, align 1, !dbg !2760, !tbaa !1405
  %59 = icmp eq i8 %58, 48, !dbg !2760
  br i1 %59, label %60, label %68, !dbg !2762

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2763, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8* undef, metadata !2768, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8 0, metadata !2769, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8 0, metadata !2770, metadata !DIExpression()), !dbg !2771
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2775
  %62 = load i8, i8* %61, align 1, !dbg !2775, !tbaa !1405
  %63 = icmp eq i8 %62, 0, !dbg !2775
  br i1 %63, label %64, label %68, !dbg !2777

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2778, !tbaa !1405
  %66 = icmp eq i8 %65, 96, !dbg !2779
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.90, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.91, i64 0, i64 0), !dbg !2778
  br label %71, !dbg !2780

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2781
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.87, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.86, i64 0, i64 0), !dbg !2782
  br label %71, !dbg !2783

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2603
  ret i8* %72, !dbg !2784
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !436 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !440 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2785 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2789, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i64 %1, metadata !2790, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2791, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i8* %0, metadata !2793, metadata !DIExpression()) #20, !dbg !2806
  call void @llvm.dbg.value(metadata i64 %1, metadata !2798, metadata !DIExpression()) #20, !dbg !2806
  call void @llvm.dbg.value(metadata i64* null, metadata !2799, metadata !DIExpression()) #20, !dbg !2806
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2800, metadata !DIExpression()) #20, !dbg !2806
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2808
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2808
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2801, metadata !DIExpression()) #20, !dbg !2806
  %6 = tail call i32* @__errno_location() #26, !dbg !2809
  %7 = load i32, i32* %6, align 4, !dbg !2809, !tbaa !1424
  call void @llvm.dbg.value(metadata i32 %7, metadata !2802, metadata !DIExpression()) #20, !dbg !2806
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2810
  %9 = load i32, i32* %8, align 4, !dbg !2810, !tbaa !2003
  %10 = or i32 %9, 1, !dbg !2811
  call void @llvm.dbg.value(metadata i32 %10, metadata !2803, metadata !DIExpression()) #20, !dbg !2806
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2812
  %12 = load i32, i32* %11, align 8, !dbg !2812, !tbaa !1952
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2813
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2814
  %15 = load i8*, i8** %14, align 8, !dbg !2814, !tbaa !2026
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2815
  %17 = load i8*, i8** %16, align 8, !dbg !2815, !tbaa !2029
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #20, !dbg !2816
  %19 = add i64 %18, 1, !dbg !2817
  call void @llvm.dbg.value(metadata i64 %19, metadata !2804, metadata !DIExpression()) #20, !dbg !2806
  call void @llvm.dbg.value(metadata i64 %19, metadata !2818, metadata !DIExpression()) #20, !dbg !2823
  %20 = tail call noalias i8* @xmalloc(i64 %19) #20, !dbg !2825
  call void @llvm.dbg.value(metadata i8* %20, metadata !2805, metadata !DIExpression()) #20, !dbg !2806
  %21 = load i32, i32* %11, align 8, !dbg !2826, !tbaa !1952
  %22 = load i8*, i8** %14, align 8, !dbg !2827, !tbaa !2026
  %23 = load i8*, i8** %16, align 8, !dbg !2828, !tbaa !2029
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #20, !dbg !2829
  store i32 %7, i32* %6, align 4, !dbg !2830, !tbaa !1424
  ret i8* %20, !dbg !2831
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2794 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2793, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata i64 %1, metadata !2798, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata i64* %2, metadata !2799, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2800, metadata !DIExpression()), !dbg !2832
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2833
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2833
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2801, metadata !DIExpression()), !dbg !2832
  %7 = tail call i32* @__errno_location() #26, !dbg !2834
  %8 = load i32, i32* %7, align 4, !dbg !2834, !tbaa !1424
  call void @llvm.dbg.value(metadata i32 %8, metadata !2802, metadata !DIExpression()), !dbg !2832
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2835
  %10 = load i32, i32* %9, align 4, !dbg !2835, !tbaa !2003
  %11 = icmp ne i64* %2, null, !dbg !2836
  %12 = xor i1 %11, true, !dbg !2836
  %13 = zext i1 %12 to i32, !dbg !2836
  %14 = or i32 %10, %13, !dbg !2837
  call void @llvm.dbg.value(metadata i32 %14, metadata !2803, metadata !DIExpression()), !dbg !2832
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2838
  %16 = load i32, i32* %15, align 8, !dbg !2838, !tbaa !1952
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2839
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2840
  %19 = load i8*, i8** %18, align 8, !dbg !2840, !tbaa !2026
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2841
  %21 = load i8*, i8** %20, align 8, !dbg !2841, !tbaa !2029
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2842
  %23 = add i64 %22, 1, !dbg !2843
  call void @llvm.dbg.value(metadata i64 %23, metadata !2804, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata i64 %23, metadata !2818, metadata !DIExpression()) #20, !dbg !2844
  %24 = tail call noalias i8* @xmalloc(i64 %23) #20, !dbg !2846
  call void @llvm.dbg.value(metadata i8* %24, metadata !2805, metadata !DIExpression()), !dbg !2832
  %25 = load i32, i32* %15, align 8, !dbg !2847, !tbaa !1952
  %26 = load i8*, i8** %18, align 8, !dbg !2848, !tbaa !2026
  %27 = load i8*, i8** %20, align 8, !dbg !2849, !tbaa !2029
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2850
  store i32 %8, i32* %7, align 4, !dbg !2851, !tbaa !1424
  br i1 %11, label %29, label %30, !dbg !2852

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2853, !tbaa !2855
  br label %30, !dbg !2856

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !2857
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2858 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2862, !tbaa !1298
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2860, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata i32 1, metadata !2861, metadata !DIExpression()), !dbg !2863
  %2 = load i32, i32* @nslots, align 4, !dbg !2864, !tbaa !1424
  %3 = icmp sgt i32 %2, 1, !dbg !2867
  br i1 %3, label %4, label %12, !dbg !2868

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2861, metadata !DIExpression()), !dbg !2863
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2869
  %7 = load i8*, i8** %6, align 8, !dbg !2869, !tbaa !2870
  tail call void @free(i8* %7) #20, !dbg !2872
  %8 = add nuw nsw i64 %5, 1, !dbg !2873
  call void @llvm.dbg.value(metadata i64 %8, metadata !2861, metadata !DIExpression()), !dbg !2863
  %9 = load i32, i32* @nslots, align 4, !dbg !2864, !tbaa !1424
  %10 = sext i32 %9 to i64, !dbg !2867
  %11 = icmp slt i64 %8, %10, !dbg !2867
  br i1 %11, label %4, label %12, !dbg !2868, !llvm.loop !2874

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2876
  %14 = load i8*, i8** %13, align 8, !dbg !2876, !tbaa !2870
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2878
  br i1 %15, label %17, label %16, !dbg !2879

16:                                               ; preds = %12
  tail call void @free(i8* %14) #20, !dbg !2880
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2882, !tbaa !2883
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2884, !tbaa !2870
  br label %17, !dbg !2885

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2886
  br i1 %18, label %21, label %19, !dbg !2888

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2889
  tail call void @free(i8* %20) #20, !dbg !2891
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2892, !tbaa !1298
  br label %21, !dbg !2893

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2894, !tbaa !1424
  ret void, !dbg !2895
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2896 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2898, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i8* %1, metadata !2899, metadata !DIExpression()), !dbg !2900
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2901
  ret i8* %3, !dbg !2902
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2903 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2907, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i8* %1, metadata !2908, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i64 %2, metadata !2909, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2910, metadata !DIExpression()), !dbg !2922
  %5 = tail call i32* @__errno_location() #26, !dbg !2923
  %6 = load i32, i32* %5, align 4, !dbg !2923, !tbaa !1424
  call void @llvm.dbg.value(metadata i32 %6, metadata !2911, metadata !DIExpression()), !dbg !2922
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2924, !tbaa !1298
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2912, metadata !DIExpression()), !dbg !2922
  %8 = icmp slt i32 %0, 0, !dbg !2925
  br i1 %8, label %9, label %10, !dbg !2927

9:                                                ; preds = %4
  tail call void @abort() #24, !dbg !2928
  unreachable, !dbg !2928

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2929, !tbaa !1424
  %12 = icmp sgt i32 %11, %0, !dbg !2930
  br i1 %12, label %34, label %13, !dbg !2931

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2932
  call void @llvm.dbg.value(metadata i1 %14, metadata !2913, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2916, metadata !DIExpression()), !dbg !2933
  %15 = icmp eq i32 %0, 2147483647, !dbg !2934
  br i1 %15, label %16, label %17, !dbg !2936

16:                                               ; preds = %13
  tail call void @xalloc_die() #24, !dbg !2937
  unreachable, !dbg !2937

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2938
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2938
  %20 = add nuw nsw i32 %0, 1, !dbg !2939
  %21 = sext i32 %20 to i64, !dbg !2940
  %22 = shl nuw nsw i64 %21, 4, !dbg !2941
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #20, !dbg !2942
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2942
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2912, metadata !DIExpression()), !dbg !2922
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2943, !tbaa !1298
  br i1 %14, label %25, label %26, !dbg !2944

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2945, !tbaa.struct !2947
  br label %26, !dbg !2948

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2949, !tbaa !1424
  %28 = sext i32 %27 to i64, !dbg !2950
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2950
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2951
  %31 = sub nsw i32 %20, %27, !dbg !2952
  %32 = sext i32 %31 to i64, !dbg !2953
  %33 = shl nsw i64 %32, 4, !dbg !2954
  call void @llvm.dbg.value(metadata i8* %30, metadata !2351, metadata !DIExpression()) #20, !dbg !2955
  call void @llvm.dbg.value(metadata i32 0, metadata !2357, metadata !DIExpression()) #20, !dbg !2955
  call void @llvm.dbg.value(metadata i64 %33, metadata !2358, metadata !DIExpression()) #20, !dbg !2955
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #20, !dbg !2957
  store i32 %20, i32* @nslots, align 4, !dbg !2958, !tbaa !1424
  br label %34, !dbg !2959

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2922
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2912, metadata !DIExpression()), !dbg !2922
  %36 = zext i32 %0 to i64, !dbg !2960
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2961
  %38 = load i64, i64* %37, align 8, !dbg !2961, !tbaa !2883
  call void @llvm.dbg.value(metadata i64 %38, metadata !2917, metadata !DIExpression()), !dbg !2962
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2963
  %40 = load i8*, i8** %39, align 8, !dbg !2963, !tbaa !2870
  call void @llvm.dbg.value(metadata i8* %40, metadata !2919, metadata !DIExpression()), !dbg !2962
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2964
  %42 = load i32, i32* %41, align 4, !dbg !2964, !tbaa !2003
  %43 = or i32 %42, 1, !dbg !2965
  call void @llvm.dbg.value(metadata i32 %43, metadata !2920, metadata !DIExpression()), !dbg !2962
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2966
  %45 = load i32, i32* %44, align 8, !dbg !2966, !tbaa !1952
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2967
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2968
  %48 = load i8*, i8** %47, align 8, !dbg !2968, !tbaa !2026
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2969
  %50 = load i8*, i8** %49, align 8, !dbg !2969, !tbaa !2029
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2970
  call void @llvm.dbg.value(metadata i64 %51, metadata !2921, metadata !DIExpression()), !dbg !2962
  %52 = icmp ugt i64 %38, %51, !dbg !2971
  br i1 %52, label %63, label %53, !dbg !2973

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2974
  call void @llvm.dbg.value(metadata i64 %54, metadata !2917, metadata !DIExpression()), !dbg !2962
  store i64 %54, i64* %37, align 8, !dbg !2976, !tbaa !2883
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2977
  br i1 %55, label %57, label %56, !dbg !2979

56:                                               ; preds = %53
  tail call void @free(i8* %40) #20, !dbg !2980
  br label %57, !dbg !2980

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2818, metadata !DIExpression()) #20, !dbg !2981
  %58 = tail call noalias i8* @xmalloc(i64 %54) #20, !dbg !2983
  call void @llvm.dbg.value(metadata i8* %58, metadata !2919, metadata !DIExpression()), !dbg !2962
  store i8* %58, i8** %39, align 8, !dbg !2984, !tbaa !2870
  %59 = load i32, i32* %44, align 8, !dbg !2985, !tbaa !1952
  %60 = load i8*, i8** %47, align 8, !dbg !2986, !tbaa !2026
  %61 = load i8*, i8** %49, align 8, !dbg !2987, !tbaa !2029
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2988
  br label %63, !dbg !2989

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2962
  call void @llvm.dbg.value(metadata i8* %64, metadata !2919, metadata !DIExpression()), !dbg !2962
  store i32 %6, i32* %5, align 4, !dbg !2990, !tbaa !1424
  ret i8* %64, !dbg !2991
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2992 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2996, metadata !DIExpression()), !dbg !2999
  call void @llvm.dbg.value(metadata i8* %1, metadata !2997, metadata !DIExpression()), !dbg !2999
  call void @llvm.dbg.value(metadata i64 %2, metadata !2998, metadata !DIExpression()), !dbg !2999
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3000
  ret i8* %4, !dbg !3001
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !3002 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3004, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata i32 0, metadata !2898, metadata !DIExpression()) #20, !dbg !3006
  call void @llvm.dbg.value(metadata i8* %0, metadata !2899, metadata !DIExpression()) #20, !dbg !3006
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #20, !dbg !3008
  ret i8* %2, !dbg !3009
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3010 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3014, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata i64 %1, metadata !3015, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata i32 0, metadata !2996, metadata !DIExpression()) #20, !dbg !3017
  call void @llvm.dbg.value(metadata i8* %0, metadata !2997, metadata !DIExpression()) #20, !dbg !3017
  call void @llvm.dbg.value(metadata i64 %1, metadata !2998, metadata !DIExpression()) #20, !dbg !3017
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #20, !dbg !3019
  ret i8* %3, !dbg !3020
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3021 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3023, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i32 %1, metadata !3024, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i8* %2, metadata !3025, metadata !DIExpression()), !dbg !3027
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3028
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3028
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3026, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i32 %1, metadata !3030, metadata !DIExpression()) #20, !dbg !3036
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3035, metadata !DIExpression()) #20, !dbg !3038
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #20, !dbg !3038, !alias.scope !3039
  %6 = icmp eq i32 %1, 10, !dbg !3042
  br i1 %6, label %7, label %8, !dbg !3044

7:                                                ; preds = %3
  tail call void @abort() #24, !dbg !3045, !noalias !3039
  unreachable, !dbg !3045

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3046
  store i32 %1, i32* %9, align 8, !dbg !3047, !tbaa !1952, !alias.scope !3039
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3048
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3049
  ret i8* %10, !dbg !3050
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3051 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3055, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i32 %1, metadata !3056, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i8* %2, metadata !3057, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i64 %3, metadata !3058, metadata !DIExpression()), !dbg !3060
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3061
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3061
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3059, metadata !DIExpression()), !dbg !3062
  call void @llvm.dbg.value(metadata i32 %1, metadata !3030, metadata !DIExpression()) #20, !dbg !3063
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3035, metadata !DIExpression()) #20, !dbg !3065
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #20, !dbg !3065, !alias.scope !3066
  %7 = icmp eq i32 %1, 10, !dbg !3069
  br i1 %7, label %8, label %9, !dbg !3070

8:                                                ; preds = %4
  tail call void @abort() #24, !dbg !3071, !noalias !3066
  unreachable, !dbg !3071

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3072
  store i32 %1, i32* %10, align 8, !dbg !3073, !tbaa !1952, !alias.scope !3066
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3074
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3075
  ret i8* %11, !dbg !3076
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3077 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3035, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3026, metadata !DIExpression()), !dbg !3086
  call void @llvm.dbg.value(metadata i32 %0, metadata !3081, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i8* %1, metadata !3082, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i32 0, metadata !3023, metadata !DIExpression()) #20, !dbg !3088
  call void @llvm.dbg.value(metadata i32 %0, metadata !3024, metadata !DIExpression()) #20, !dbg !3088
  call void @llvm.dbg.value(metadata i8* %1, metadata !3025, metadata !DIExpression()) #20, !dbg !3088
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3089
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3089
  call void @llvm.dbg.value(metadata i32 %0, metadata !3030, metadata !DIExpression()) #20, !dbg !3090
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #20, !dbg !3083, !alias.scope !3091
  %5 = icmp eq i32 %0, 10, !dbg !3094
  br i1 %5, label %6, label %7, !dbg !3095

6:                                                ; preds = %2
  tail call void @abort() #24, !dbg !3096, !noalias !3091
  unreachable, !dbg !3096

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3097
  store i32 %0, i32* %8, align 8, !dbg !3098, !tbaa !1952, !alias.scope !3091
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #20, !dbg !3099
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3100
  ret i8* %9, !dbg !3101
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3102 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3035, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3059, metadata !DIExpression()), !dbg !3112
  call void @llvm.dbg.value(metadata i32 %0, metadata !3106, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata i8* %1, metadata !3107, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata i64 %2, metadata !3108, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata i32 0, metadata !3055, metadata !DIExpression()) #20, !dbg !3114
  call void @llvm.dbg.value(metadata i32 %0, metadata !3056, metadata !DIExpression()) #20, !dbg !3114
  call void @llvm.dbg.value(metadata i8* %1, metadata !3057, metadata !DIExpression()) #20, !dbg !3114
  call void @llvm.dbg.value(metadata i64 %2, metadata !3058, metadata !DIExpression()) #20, !dbg !3114
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3115
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3115
  call void @llvm.dbg.value(metadata i32 %0, metadata !3030, metadata !DIExpression()) #20, !dbg !3116
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #20, !dbg !3109, !alias.scope !3117
  %6 = icmp eq i32 %0, 10, !dbg !3120
  br i1 %6, label %7, label %8, !dbg !3121

7:                                                ; preds = %3
  tail call void @abort() #24, !dbg !3122, !noalias !3117
  unreachable, !dbg !3122

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3123
  store i32 %0, i32* %9, align 8, !dbg !3124, !tbaa !1952, !alias.scope !3117
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #20, !dbg !3125
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3126
  ret i8* %10, !dbg !3127
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !3128 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3132, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata i64 %1, metadata !3133, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata i8 %2, metadata !3134, metadata !DIExpression()), !dbg !3136
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3137
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3137
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3135, metadata !DIExpression()), !dbg !3138
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3139, !tbaa.struct !3140
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1970, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i8 %2, metadata !1971, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i32 1, metadata !1972, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i8 %2, metadata !1973, metadata !DIExpression()), !dbg !3141
  %6 = lshr i8 %2, 5, !dbg !3143
  %7 = zext i8 %6 to i64, !dbg !3143
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3144
  call void @llvm.dbg.value(metadata i32* %8, metadata !1974, metadata !DIExpression()), !dbg !3141
  %9 = and i8 %2, 31, !dbg !3145
  %10 = zext i8 %9 to i32, !dbg !3145
  call void @llvm.dbg.value(metadata i32 %10, metadata !1976, metadata !DIExpression()), !dbg !3141
  %11 = load i32, i32* %8, align 4, !dbg !3146, !tbaa !1424
  %12 = lshr i32 %11, %10, !dbg !3147
  %13 = and i32 %12, 1, !dbg !3148
  call void @llvm.dbg.value(metadata i32 %13, metadata !1977, metadata !DIExpression()), !dbg !3141
  %14 = xor i32 %13, 1, !dbg !3149
  %15 = shl i32 %14, %10, !dbg !3150
  %16 = xor i32 %15, %11, !dbg !3151
  store i32 %16, i32* %8, align 4, !dbg !3151, !tbaa !1424
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3152
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3153
  ret i8* %17, !dbg !3154
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !3155 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3135, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i8* %0, metadata !3159, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata i8 %1, metadata !3160, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata i8* %0, metadata !3132, metadata !DIExpression()) #20, !dbg !3164
  call void @llvm.dbg.value(metadata i64 -1, metadata !3133, metadata !DIExpression()) #20, !dbg !3164
  call void @llvm.dbg.value(metadata i8 %1, metadata !3134, metadata !DIExpression()) #20, !dbg !3164
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3165
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3165
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3166, !tbaa.struct !3140
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1970, metadata !DIExpression()) #20, !dbg !3167
  call void @llvm.dbg.value(metadata i8 %1, metadata !1971, metadata !DIExpression()) #20, !dbg !3167
  call void @llvm.dbg.value(metadata i32 1, metadata !1972, metadata !DIExpression()) #20, !dbg !3167
  call void @llvm.dbg.value(metadata i8 %1, metadata !1973, metadata !DIExpression()) #20, !dbg !3167
  %5 = lshr i8 %1, 5, !dbg !3169
  %6 = zext i8 %5 to i64, !dbg !3169
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3170
  call void @llvm.dbg.value(metadata i32* %7, metadata !1974, metadata !DIExpression()) #20, !dbg !3167
  %8 = and i8 %1, 31, !dbg !3171
  %9 = zext i8 %8 to i32, !dbg !3171
  call void @llvm.dbg.value(metadata i32 %9, metadata !1976, metadata !DIExpression()) #20, !dbg !3167
  %10 = load i32, i32* %7, align 4, !dbg !3172, !tbaa !1424
  %11 = lshr i32 %10, %9, !dbg !3173
  %12 = and i32 %11, 1, !dbg !3174
  call void @llvm.dbg.value(metadata i32 %12, metadata !1977, metadata !DIExpression()) #20, !dbg !3167
  %13 = xor i32 %12, 1, !dbg !3175
  %14 = shl i32 %13, %9, !dbg !3176
  %15 = xor i32 %14, %10, !dbg !3177
  store i32 %15, i32* %7, align 4, !dbg !3177, !tbaa !1424
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #20, !dbg !3178
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3179
  ret i8* %16, !dbg !3180
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !3181 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3135, metadata !DIExpression()), !dbg !3184
  call void @llvm.dbg.value(metadata i8* %0, metadata !3183, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata i8* %0, metadata !3159, metadata !DIExpression()) #20, !dbg !3188
  call void @llvm.dbg.value(metadata i8 58, metadata !3160, metadata !DIExpression()) #20, !dbg !3188
  call void @llvm.dbg.value(metadata i8* %0, metadata !3132, metadata !DIExpression()) #20, !dbg !3189
  call void @llvm.dbg.value(metadata i64 -1, metadata !3133, metadata !DIExpression()) #20, !dbg !3189
  call void @llvm.dbg.value(metadata i8 58, metadata !3134, metadata !DIExpression()) #20, !dbg !3189
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3190
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #20, !dbg !3190
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3191, !tbaa.struct !3140
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1970, metadata !DIExpression()) #20, !dbg !3192
  call void @llvm.dbg.value(metadata i8 58, metadata !1971, metadata !DIExpression()) #20, !dbg !3192
  call void @llvm.dbg.value(metadata i32 1, metadata !1972, metadata !DIExpression()) #20, !dbg !3192
  call void @llvm.dbg.value(metadata i8 58, metadata !1973, metadata !DIExpression()) #20, !dbg !3192
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3194
  call void @llvm.dbg.value(metadata i32* %4, metadata !1974, metadata !DIExpression()) #20, !dbg !3192
  call void @llvm.dbg.value(metadata i32 26, metadata !1976, metadata !DIExpression()) #20, !dbg !3192
  %5 = load i32, i32* %4, align 4, !dbg !3195, !tbaa !1424
  call void @llvm.dbg.value(metadata i32 %5, metadata !1977, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #20, !dbg !3192
  %6 = or i32 %5, 67108864, !dbg !3196
  store i32 %6, i32* %4, align 4, !dbg !3196, !tbaa !1424
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #20, !dbg !3197
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #20, !dbg !3198
  ret i8* %7, !dbg !3199
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3200 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3135, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata i8* %0, metadata !3202, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64 %1, metadata !3203, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i8* %0, metadata !3132, metadata !DIExpression()) #20, !dbg !3207
  call void @llvm.dbg.value(metadata i64 %1, metadata !3133, metadata !DIExpression()) #20, !dbg !3207
  call void @llvm.dbg.value(metadata i8 58, metadata !3134, metadata !DIExpression()) #20, !dbg !3207
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3208
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3208
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3209, !tbaa.struct !3140
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1970, metadata !DIExpression()) #20, !dbg !3210
  call void @llvm.dbg.value(metadata i8 58, metadata !1971, metadata !DIExpression()) #20, !dbg !3210
  call void @llvm.dbg.value(metadata i32 1, metadata !1972, metadata !DIExpression()) #20, !dbg !3210
  call void @llvm.dbg.value(metadata i8 58, metadata !1973, metadata !DIExpression()) #20, !dbg !3210
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3212
  call void @llvm.dbg.value(metadata i32* %5, metadata !1974, metadata !DIExpression()) #20, !dbg !3210
  call void @llvm.dbg.value(metadata i32 26, metadata !1976, metadata !DIExpression()) #20, !dbg !3210
  %6 = load i32, i32* %5, align 4, !dbg !3213, !tbaa !1424
  call void @llvm.dbg.value(metadata i32 %6, metadata !1977, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #20, !dbg !3210
  %7 = or i32 %6, 67108864, !dbg !3214
  store i32 %7, i32* %5, align 4, !dbg !3214, !tbaa !1424
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #20, !dbg !3215
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3216
  ret i8* %8, !dbg !3217
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3218 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3035, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3224
  call void @llvm.dbg.value(metadata i32 %0, metadata !3220, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata i32 %1, metadata !3221, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata i8* %2, metadata !3222, metadata !DIExpression()), !dbg !3226
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3227
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3227
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3223, metadata !DIExpression()), !dbg !3228
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3229
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3229
  call void @llvm.dbg.value(metadata i32 %1, metadata !3030, metadata !DIExpression()) #20, !dbg !3230
  call void @llvm.dbg.value(metadata i32 0, metadata !3035, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3230
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !3224, !alias.scope !3231
  %8 = icmp eq i32 %1, 10, !dbg !3234
  br i1 %8, label %9, label %10, !dbg !3235

9:                                                ; preds = %3
  tail call void @abort() #24, !dbg !3236, !noalias !3231
  unreachable, !dbg !3236

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3035, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3230
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3229
  store i32 %1, i32* %11, align 8, !dbg !3229, !tbaa.struct !3140
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3229
  %13 = bitcast i32* %12 to i8*, !dbg !3229
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !3229, !tbaa.struct !3140
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3229
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1970, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata i8 58, metadata !1971, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata i32 1, metadata !1972, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata i8 58, metadata !1973, metadata !DIExpression()), !dbg !3237
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3239
  call void @llvm.dbg.value(metadata i32* %14, metadata !1974, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata i32 26, metadata !1976, metadata !DIExpression()), !dbg !3237
  %15 = load i32, i32* %14, align 4, !dbg !3240, !tbaa !1424
  call void @llvm.dbg.value(metadata i32 %15, metadata !1977, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3237
  %16 = or i32 %15, 67108864, !dbg !3241
  store i32 %16, i32* %14, align 4, !dbg !3241, !tbaa !1424
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3242
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3243
  ret i8* %17, !dbg !3244
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3245 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3253, metadata !DIExpression()), !dbg !3263
  call void @llvm.dbg.value(metadata i32 %0, metadata !3249, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i8* %1, metadata !3250, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i8* %2, metadata !3251, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i8* %3, metadata !3252, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i32 %0, metadata !3258, metadata !DIExpression()) #20, !dbg !3266
  call void @llvm.dbg.value(metadata i8* %1, metadata !3259, metadata !DIExpression()) #20, !dbg !3266
  call void @llvm.dbg.value(metadata i8* %2, metadata !3260, metadata !DIExpression()) #20, !dbg !3266
  call void @llvm.dbg.value(metadata i8* %3, metadata !3261, metadata !DIExpression()) #20, !dbg !3266
  call void @llvm.dbg.value(metadata i64 -1, metadata !3262, metadata !DIExpression()) #20, !dbg !3266
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3267
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3267
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3268, !tbaa.struct !3140
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2010, metadata !DIExpression()) #20, !dbg !3269
  call void @llvm.dbg.value(metadata i8* %1, metadata !2011, metadata !DIExpression()) #20, !dbg !3269
  call void @llvm.dbg.value(metadata i8* %2, metadata !2012, metadata !DIExpression()) #20, !dbg !3269
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2010, metadata !DIExpression()) #20, !dbg !3269
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3271
  store i32 10, i32* %7, align 8, !dbg !3272, !tbaa !1952
  %8 = icmp ne i8* %1, null, !dbg !3273
  %9 = icmp ne i8* %2, null, !dbg !3274
  %10 = and i1 %8, %9, !dbg !3275
  br i1 %10, label %12, label %11, !dbg !3275

11:                                               ; preds = %4
  tail call void @abort() #24, !dbg !3276
  unreachable, !dbg !3276

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3277
  store i8* %1, i8** %13, align 8, !dbg !3278, !tbaa !2026
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3279
  store i8* %2, i8** %14, align 8, !dbg !3280, !tbaa !2029
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #20, !dbg !3281
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3282
  ret i8* %15, !dbg !3283
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !3254 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3258, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.value(metadata i8* %1, metadata !3259, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.value(metadata i8* %2, metadata !3260, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.value(metadata i8* %3, metadata !3261, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.value(metadata i64 %4, metadata !3262, metadata !DIExpression()), !dbg !3284
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3285
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #20, !dbg !3285
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3253, metadata !DIExpression()), !dbg !3286
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3287, !tbaa.struct !3140
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2010, metadata !DIExpression()) #20, !dbg !3288
  call void @llvm.dbg.value(metadata i8* %1, metadata !2011, metadata !DIExpression()) #20, !dbg !3288
  call void @llvm.dbg.value(metadata i8* %2, metadata !2012, metadata !DIExpression()) #20, !dbg !3288
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2010, metadata !DIExpression()) #20, !dbg !3288
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3290
  store i32 10, i32* %8, align 8, !dbg !3291, !tbaa !1952
  %9 = icmp ne i8* %1, null, !dbg !3292
  %10 = icmp ne i8* %2, null, !dbg !3293
  %11 = and i1 %9, %10, !dbg !3294
  br i1 %11, label %13, label %12, !dbg !3294

12:                                               ; preds = %5
  tail call void @abort() #24, !dbg !3295
  unreachable, !dbg !3295

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3296
  store i8* %1, i8** %14, align 8, !dbg !3297, !tbaa !2026
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3298
  store i8* %2, i8** %15, align 8, !dbg !3299, !tbaa !2029
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3300
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #20, !dbg !3301
  ret i8* %16, !dbg !3302
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3303 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3253, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i8* %0, metadata !3307, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata i8* %1, metadata !3308, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata i8* %2, metadata !3309, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata i32 0, metadata !3249, metadata !DIExpression()) #20, !dbg !3314
  call void @llvm.dbg.value(metadata i8* %0, metadata !3250, metadata !DIExpression()) #20, !dbg !3314
  call void @llvm.dbg.value(metadata i8* %1, metadata !3251, metadata !DIExpression()) #20, !dbg !3314
  call void @llvm.dbg.value(metadata i8* %2, metadata !3252, metadata !DIExpression()) #20, !dbg !3314
  call void @llvm.dbg.value(metadata i32 0, metadata !3258, metadata !DIExpression()) #20, !dbg !3315
  call void @llvm.dbg.value(metadata i8* %0, metadata !3259, metadata !DIExpression()) #20, !dbg !3315
  call void @llvm.dbg.value(metadata i8* %1, metadata !3260, metadata !DIExpression()) #20, !dbg !3315
  call void @llvm.dbg.value(metadata i8* %2, metadata !3261, metadata !DIExpression()) #20, !dbg !3315
  call void @llvm.dbg.value(metadata i64 -1, metadata !3262, metadata !DIExpression()) #20, !dbg !3315
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3316
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3316
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3317, !tbaa.struct !3140
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2010, metadata !DIExpression()) #20, !dbg !3318
  call void @llvm.dbg.value(metadata i8* %0, metadata !2011, metadata !DIExpression()) #20, !dbg !3318
  call void @llvm.dbg.value(metadata i8* %1, metadata !2012, metadata !DIExpression()) #20, !dbg !3318
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2010, metadata !DIExpression()) #20, !dbg !3318
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3320
  store i32 10, i32* %6, align 8, !dbg !3321, !tbaa !1952
  %7 = icmp ne i8* %0, null, !dbg !3322
  %8 = icmp ne i8* %1, null, !dbg !3323
  %9 = and i1 %7, %8, !dbg !3324
  br i1 %9, label %11, label %10, !dbg !3324

10:                                               ; preds = %3
  tail call void @abort() #24, !dbg !3325
  unreachable, !dbg !3325

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3326
  store i8* %0, i8** %12, align 8, !dbg !3327, !tbaa !2026
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3328
  store i8* %1, i8** %13, align 8, !dbg !3329, !tbaa !2029
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #20, !dbg !3330
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3331
  ret i8* %14, !dbg !3332
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3333 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3253, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i8* %0, metadata !3337, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata i8* %1, metadata !3338, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata i8* %2, metadata !3339, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata i64 %3, metadata !3340, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata i32 0, metadata !3258, metadata !DIExpression()) #20, !dbg !3344
  call void @llvm.dbg.value(metadata i8* %0, metadata !3259, metadata !DIExpression()) #20, !dbg !3344
  call void @llvm.dbg.value(metadata i8* %1, metadata !3260, metadata !DIExpression()) #20, !dbg !3344
  call void @llvm.dbg.value(metadata i8* %2, metadata !3261, metadata !DIExpression()) #20, !dbg !3344
  call void @llvm.dbg.value(metadata i64 %3, metadata !3262, metadata !DIExpression()) #20, !dbg !3344
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3345
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3345
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3346, !tbaa.struct !3140
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2010, metadata !DIExpression()) #20, !dbg !3347
  call void @llvm.dbg.value(metadata i8* %0, metadata !2011, metadata !DIExpression()) #20, !dbg !3347
  call void @llvm.dbg.value(metadata i8* %1, metadata !2012, metadata !DIExpression()) #20, !dbg !3347
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2010, metadata !DIExpression()) #20, !dbg !3347
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3349
  store i32 10, i32* %7, align 8, !dbg !3350, !tbaa !1952
  %8 = icmp ne i8* %0, null, !dbg !3351
  %9 = icmp ne i8* %1, null, !dbg !3352
  %10 = and i1 %8, %9, !dbg !3353
  br i1 %10, label %12, label %11, !dbg !3353

11:                                               ; preds = %4
  tail call void @abort() #24, !dbg !3354
  unreachable, !dbg !3354

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3355
  store i8* %0, i8** %13, align 8, !dbg !3356, !tbaa !2026
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3357
  store i8* %1, i8** %14, align 8, !dbg !3358, !tbaa !2029
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #20, !dbg !3359
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3360
  ret i8* %15, !dbg !3361
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3362 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3366, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i8* %1, metadata !3367, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i64 %2, metadata !3368, metadata !DIExpression()), !dbg !3369
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3370
  ret i8* %4, !dbg !3371
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3372 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3376, metadata !DIExpression()), !dbg !3378
  call void @llvm.dbg.value(metadata i64 %1, metadata !3377, metadata !DIExpression()), !dbg !3378
  call void @llvm.dbg.value(metadata i32 0, metadata !3366, metadata !DIExpression()) #20, !dbg !3379
  call void @llvm.dbg.value(metadata i8* %0, metadata !3367, metadata !DIExpression()) #20, !dbg !3379
  call void @llvm.dbg.value(metadata i64 %1, metadata !3368, metadata !DIExpression()) #20, !dbg !3379
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #20, !dbg !3381
  ret i8* %3, !dbg !3382
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3383 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3385, metadata !DIExpression()), !dbg !3387
  call void @llvm.dbg.value(metadata i8* %1, metadata !3386, metadata !DIExpression()), !dbg !3387
  call void @llvm.dbg.value(metadata i32 %0, metadata !3366, metadata !DIExpression()) #20, !dbg !3388
  call void @llvm.dbg.value(metadata i8* %1, metadata !3367, metadata !DIExpression()) #20, !dbg !3388
  call void @llvm.dbg.value(metadata i64 -1, metadata !3368, metadata !DIExpression()) #20, !dbg !3388
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #20, !dbg !3390
  ret i8* %3, !dbg !3391
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3392 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3394, metadata !DIExpression()), !dbg !3395
  call void @llvm.dbg.value(metadata i32 0, metadata !3385, metadata !DIExpression()) #20, !dbg !3396
  call void @llvm.dbg.value(metadata i8* %0, metadata !3386, metadata !DIExpression()) #20, !dbg !3396
  call void @llvm.dbg.value(metadata i32 0, metadata !3366, metadata !DIExpression()) #20, !dbg !3398
  call void @llvm.dbg.value(metadata i8* %0, metadata !3367, metadata !DIExpression()) #20, !dbg !3398
  call void @llvm.dbg.value(metadata i64 -1, metadata !3368, metadata !DIExpression()) #20, !dbg !3398
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #20, !dbg !3400
  ret i8* %2, !dbg !3401
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @dup_safer(i32 %0) local_unnamed_addr #8 !dbg !3402 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3404, metadata !DIExpression()), !dbg !3405
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 3) #20, !dbg !3406
  ret i32 %2, !dbg !3407
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3408 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3414, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata i8* %1, metadata !3415, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata i8* %2, metadata !3416, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata i8* %3, metadata !3417, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata i8** %4, metadata !3418, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata i64 %5, metadata !3419, metadata !DIExpression()), !dbg !3420
  %7 = icmp eq i8* %1, null, !dbg !3421
  br i1 %7, label %10, label %8, !dbg !3423

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.104, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #20, !dbg !3424
  br label %12, !dbg !3424

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.105, i64 0, i64 0), i8* %2, i8* %3) #20, !dbg !3425
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.106, i64 0, i64 0), i32 5) #20, !dbg !3426
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #20, !dbg !3426
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.107, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3427
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.108, i64 0, i64 0), i32 5) #20, !dbg !3428
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.109, i64 0, i64 0)) #20, !dbg !3428
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.107, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3429
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
  ], !dbg !3430

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.110, i64 0, i64 0), i32 5) #20, !dbg !3431
  %21 = load i8*, i8** %4, align 8, !dbg !3431, !tbaa !1298
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #20, !dbg !3431
  br label %147, !dbg !3433

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.111, i64 0, i64 0), i32 5) #20, !dbg !3434
  %25 = load i8*, i8** %4, align 8, !dbg !3434, !tbaa !1298
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3434
  %27 = load i8*, i8** %26, align 8, !dbg !3434, !tbaa !1298
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #20, !dbg !3434
  br label %147, !dbg !3435

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.112, i64 0, i64 0), i32 5) #20, !dbg !3436
  %31 = load i8*, i8** %4, align 8, !dbg !3436, !tbaa !1298
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3436
  %33 = load i8*, i8** %32, align 8, !dbg !3436, !tbaa !1298
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3436
  %35 = load i8*, i8** %34, align 8, !dbg !3436, !tbaa !1298
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #20, !dbg !3436
  br label %147, !dbg !3437

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.113, i64 0, i64 0), i32 5) #20, !dbg !3438
  %39 = load i8*, i8** %4, align 8, !dbg !3438, !tbaa !1298
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3438
  %41 = load i8*, i8** %40, align 8, !dbg !3438, !tbaa !1298
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3438
  %43 = load i8*, i8** %42, align 8, !dbg !3438, !tbaa !1298
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3438
  %45 = load i8*, i8** %44, align 8, !dbg !3438, !tbaa !1298
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #20, !dbg !3438
  br label %147, !dbg !3439

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.114, i64 0, i64 0), i32 5) #20, !dbg !3440
  %49 = load i8*, i8** %4, align 8, !dbg !3440, !tbaa !1298
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3440
  %51 = load i8*, i8** %50, align 8, !dbg !3440, !tbaa !1298
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3440
  %53 = load i8*, i8** %52, align 8, !dbg !3440, !tbaa !1298
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3440
  %55 = load i8*, i8** %54, align 8, !dbg !3440, !tbaa !1298
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3440
  %57 = load i8*, i8** %56, align 8, !dbg !3440, !tbaa !1298
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #20, !dbg !3440
  br label %147, !dbg !3441

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.115, i64 0, i64 0), i32 5) #20, !dbg !3442
  %61 = load i8*, i8** %4, align 8, !dbg !3442, !tbaa !1298
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3442
  %63 = load i8*, i8** %62, align 8, !dbg !3442, !tbaa !1298
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3442
  %65 = load i8*, i8** %64, align 8, !dbg !3442, !tbaa !1298
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3442
  %67 = load i8*, i8** %66, align 8, !dbg !3442, !tbaa !1298
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3442
  %69 = load i8*, i8** %68, align 8, !dbg !3442, !tbaa !1298
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3442
  %71 = load i8*, i8** %70, align 8, !dbg !3442, !tbaa !1298
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #20, !dbg !3442
  br label %147, !dbg !3443

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.116, i64 0, i64 0), i32 5) #20, !dbg !3444
  %75 = load i8*, i8** %4, align 8, !dbg !3444, !tbaa !1298
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3444
  %77 = load i8*, i8** %76, align 8, !dbg !3444, !tbaa !1298
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3444
  %79 = load i8*, i8** %78, align 8, !dbg !3444, !tbaa !1298
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3444
  %81 = load i8*, i8** %80, align 8, !dbg !3444, !tbaa !1298
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3444
  %83 = load i8*, i8** %82, align 8, !dbg !3444, !tbaa !1298
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3444
  %85 = load i8*, i8** %84, align 8, !dbg !3444, !tbaa !1298
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3444
  %87 = load i8*, i8** %86, align 8, !dbg !3444, !tbaa !1298
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #20, !dbg !3444
  br label %147, !dbg !3445

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.117, i64 0, i64 0), i32 5) #20, !dbg !3446
  %91 = load i8*, i8** %4, align 8, !dbg !3446, !tbaa !1298
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3446
  %93 = load i8*, i8** %92, align 8, !dbg !3446, !tbaa !1298
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3446
  %95 = load i8*, i8** %94, align 8, !dbg !3446, !tbaa !1298
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3446
  %97 = load i8*, i8** %96, align 8, !dbg !3446, !tbaa !1298
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3446
  %99 = load i8*, i8** %98, align 8, !dbg !3446, !tbaa !1298
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3446
  %101 = load i8*, i8** %100, align 8, !dbg !3446, !tbaa !1298
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3446
  %103 = load i8*, i8** %102, align 8, !dbg !3446, !tbaa !1298
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3446
  %105 = load i8*, i8** %104, align 8, !dbg !3446, !tbaa !1298
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #20, !dbg !3446
  br label %147, !dbg !3447

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.118, i64 0, i64 0), i32 5) #20, !dbg !3448
  %109 = load i8*, i8** %4, align 8, !dbg !3448, !tbaa !1298
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3448
  %111 = load i8*, i8** %110, align 8, !dbg !3448, !tbaa !1298
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3448
  %113 = load i8*, i8** %112, align 8, !dbg !3448, !tbaa !1298
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3448
  %115 = load i8*, i8** %114, align 8, !dbg !3448, !tbaa !1298
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3448
  %117 = load i8*, i8** %116, align 8, !dbg !3448, !tbaa !1298
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3448
  %119 = load i8*, i8** %118, align 8, !dbg !3448, !tbaa !1298
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3448
  %121 = load i8*, i8** %120, align 8, !dbg !3448, !tbaa !1298
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3448
  %123 = load i8*, i8** %122, align 8, !dbg !3448, !tbaa !1298
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3448
  %125 = load i8*, i8** %124, align 8, !dbg !3448, !tbaa !1298
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #20, !dbg !3448
  br label %147, !dbg !3449

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.119, i64 0, i64 0), i32 5) #20, !dbg !3450
  %129 = load i8*, i8** %4, align 8, !dbg !3450, !tbaa !1298
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3450
  %131 = load i8*, i8** %130, align 8, !dbg !3450, !tbaa !1298
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3450
  %133 = load i8*, i8** %132, align 8, !dbg !3450, !tbaa !1298
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3450
  %135 = load i8*, i8** %134, align 8, !dbg !3450, !tbaa !1298
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3450
  %137 = load i8*, i8** %136, align 8, !dbg !3450, !tbaa !1298
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3450
  %139 = load i8*, i8** %138, align 8, !dbg !3450, !tbaa !1298
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3450
  %141 = load i8*, i8** %140, align 8, !dbg !3450, !tbaa !1298
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3450
  %143 = load i8*, i8** %142, align 8, !dbg !3450, !tbaa !1298
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3450
  %145 = load i8*, i8** %144, align 8, !dbg !3450, !tbaa !1298
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #20, !dbg !3450
  br label %147, !dbg !3451

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3452
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3453 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3457, metadata !DIExpression()), !dbg !3463
  call void @llvm.dbg.value(metadata i8* %1, metadata !3458, metadata !DIExpression()), !dbg !3463
  call void @llvm.dbg.value(metadata i8* %2, metadata !3459, metadata !DIExpression()), !dbg !3463
  call void @llvm.dbg.value(metadata i8* %3, metadata !3460, metadata !DIExpression()), !dbg !3463
  call void @llvm.dbg.value(metadata i8** %4, metadata !3461, metadata !DIExpression()), !dbg !3463
  call void @llvm.dbg.value(metadata i64 0, metadata !3462, metadata !DIExpression()), !dbg !3463
  br label %6, !dbg !3464

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3466
  call void @llvm.dbg.value(metadata i64 %7, metadata !3462, metadata !DIExpression()), !dbg !3463
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3467
  %9 = load i8*, i8** %8, align 8, !dbg !3467, !tbaa !1298
  %10 = icmp eq i8* %9, null, !dbg !3469
  %11 = add i64 %7, 1, !dbg !3470
  call void @llvm.dbg.value(metadata i64 %11, metadata !3462, metadata !DIExpression()), !dbg !3463
  br i1 %10, label %12, label %6, !dbg !3469, !llvm.loop !3471

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3462, metadata !DIExpression()), !dbg !3463
  call void @llvm.dbg.value(metadata i64 %7, metadata !3462, metadata !DIExpression()), !dbg !3463
  call void @llvm.dbg.value(metadata i64 %7, metadata !3462, metadata !DIExpression()), !dbg !3463
  call void @llvm.dbg.value(metadata i64 %7, metadata !3462, metadata !DIExpression()), !dbg !3463
  call void @llvm.dbg.value(metadata i64 %7, metadata !3462, metadata !DIExpression()), !dbg !3463
  call void @llvm.dbg.value(metadata i64 %7, metadata !3462, metadata !DIExpression()), !dbg !3463
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3473
  ret void, !dbg !3474
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3475 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3486, metadata !DIExpression()), !dbg !3494
  call void @llvm.dbg.value(metadata i8* %1, metadata !3487, metadata !DIExpression()), !dbg !3494
  call void @llvm.dbg.value(metadata i8* %2, metadata !3488, metadata !DIExpression()), !dbg !3494
  call void @llvm.dbg.value(metadata i8* %3, metadata !3489, metadata !DIExpression()), !dbg !3494
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3490, metadata !DIExpression()), !dbg !3494
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3495
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #20, !dbg !3495
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3492, metadata !DIExpression()), !dbg !3496
  call void @llvm.dbg.value(metadata i64 0, metadata !3491, metadata !DIExpression()), !dbg !3494
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !3497
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !3497
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !3497
  %11 = load i32, i32* %8, align 8, !dbg !3500
  %12 = icmp ult i32 %11, 41, !dbg !3500
  br i1 %12, label %13, label %18, !dbg !3500

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3500
  %15 = zext i32 %11 to i64, !dbg !3500
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3500
  %17 = add nuw nsw i32 %11, 8, !dbg !3500
  store i32 %17, i32* %8, align 8, !dbg !3500
  br label %21, !dbg !3500

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3500
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3500
  store i8* %20, i8** %9, align 8, !dbg !3500
  br label %21, !dbg !3500

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3500
  %25 = load i8*, i8** %24, align 8, !dbg !3500
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3501
  store i8* %25, i8** %26, align 16, !dbg !3502, !tbaa !1298
  %27 = icmp eq i8* %25, null, !dbg !3503
  br i1 %27, label %30, label %28, !dbg !3504

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3491, metadata !DIExpression()), !dbg !3494
  %29 = icmp ult i32 %22, 41, !dbg !3500
  br i1 %29, label %35, label %32, !dbg !3500

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3505
  call void @llvm.dbg.value(metadata i64 %31, metadata !3491, metadata !DIExpression()), !dbg !3494
  call void @llvm.dbg.value(metadata i64 %31, metadata !3491, metadata !DIExpression()), !dbg !3494
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3506
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #20, !dbg !3507
  ret void, !dbg !3507

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3500
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3500
  store i8* %34, i8** %9, align 8, !dbg !3500
  br label %40, !dbg !3500

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3500
  %37 = zext i32 %22 to i64, !dbg !3500
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3500
  %39 = add nuw nsw i32 %22, 8, !dbg !3500
  store i32 %39, i32* %8, align 8, !dbg !3500
  br label %40, !dbg !3500

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3500
  %44 = load i8*, i8** %43, align 8, !dbg !3500
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3501
  store i8* %44, i8** %45, align 8, !dbg !3502, !tbaa !1298
  %46 = icmp eq i8* %44, null, !dbg !3503
  br i1 %46, label %30, label %47, !dbg !3504

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3491, metadata !DIExpression()), !dbg !3494
  %48 = icmp ult i32 %41, 41, !dbg !3500
  br i1 %48, label %52, label %49, !dbg !3500

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3500
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3500
  store i8* %51, i8** %9, align 8, !dbg !3500
  br label %57, !dbg !3500

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3500
  %54 = zext i32 %41 to i64, !dbg !3500
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3500
  %56 = add nuw nsw i32 %41, 8, !dbg !3500
  store i32 %56, i32* %8, align 8, !dbg !3500
  br label %57, !dbg !3500

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3500
  %61 = load i8*, i8** %60, align 8, !dbg !3500
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3501
  store i8* %61, i8** %62, align 16, !dbg !3502, !tbaa !1298
  %63 = icmp eq i8* %61, null, !dbg !3503
  br i1 %63, label %30, label %64, !dbg !3504

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3491, metadata !DIExpression()), !dbg !3494
  %65 = icmp ult i32 %58, 41, !dbg !3500
  br i1 %65, label %69, label %66, !dbg !3500

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3500
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3500
  store i8* %68, i8** %9, align 8, !dbg !3500
  br label %74, !dbg !3500

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3500
  %71 = zext i32 %58 to i64, !dbg !3500
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3500
  %73 = add nuw nsw i32 %58, 8, !dbg !3500
  store i32 %73, i32* %8, align 8, !dbg !3500
  br label %74, !dbg !3500

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3500
  %78 = load i8*, i8** %77, align 8, !dbg !3500
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3501
  store i8* %78, i8** %79, align 8, !dbg !3502, !tbaa !1298
  %80 = icmp eq i8* %78, null, !dbg !3503
  br i1 %80, label %30, label %81, !dbg !3504

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3491, metadata !DIExpression()), !dbg !3494
  %82 = icmp ult i32 %75, 41, !dbg !3500
  br i1 %82, label %86, label %83, !dbg !3500

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3500
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3500
  store i8* %85, i8** %9, align 8, !dbg !3500
  br label %91, !dbg !3500

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3500
  %88 = zext i32 %75 to i64, !dbg !3500
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3500
  %90 = add nuw nsw i32 %75, 8, !dbg !3500
  store i32 %90, i32* %8, align 8, !dbg !3500
  br label %91, !dbg !3500

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3500
  %95 = load i8*, i8** %94, align 8, !dbg !3500
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3501
  store i8* %95, i8** %96, align 16, !dbg !3502, !tbaa !1298
  %97 = icmp eq i8* %95, null, !dbg !3503
  br i1 %97, label %30, label %98, !dbg !3504

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3491, metadata !DIExpression()), !dbg !3494
  %99 = icmp ult i32 %92, 41, !dbg !3500
  br i1 %99, label %103, label %100, !dbg !3500

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3500
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3500
  store i8* %102, i8** %9, align 8, !dbg !3500
  br label %108, !dbg !3500

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3500
  %105 = zext i32 %92 to i64, !dbg !3500
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3500
  %107 = add nuw nsw i32 %92, 8, !dbg !3500
  store i32 %107, i32* %8, align 8, !dbg !3500
  br label %108, !dbg !3500

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3500
  %111 = load i8*, i8** %110, align 8, !dbg !3500
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3501
  store i8* %111, i8** %112, align 8, !dbg !3502, !tbaa !1298
  %113 = icmp eq i8* %111, null, !dbg !3503
  br i1 %113, label %30, label %114, !dbg !3504

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3491, metadata !DIExpression()), !dbg !3494
  %115 = load i8*, i8** %9, align 8, !dbg !3500
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3500
  store i8* %116, i8** %9, align 8, !dbg !3500
  %117 = bitcast i8* %115 to i8**, !dbg !3500
  %118 = load i8*, i8** %117, align 8, !dbg !3500
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3501
  store i8* %118, i8** %119, align 16, !dbg !3502, !tbaa !1298
  %120 = icmp eq i8* %118, null, !dbg !3503
  br i1 %120, label %30, label %121, !dbg !3504

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3491, metadata !DIExpression()), !dbg !3494
  %122 = load i8*, i8** %9, align 8, !dbg !3500
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3500
  store i8* %123, i8** %9, align 8, !dbg !3500
  %124 = bitcast i8* %122 to i8**, !dbg !3500
  %125 = load i8*, i8** %124, align 8, !dbg !3500
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3501
  store i8* %125, i8** %126, align 8, !dbg !3502, !tbaa !1298
  %127 = icmp eq i8* %125, null, !dbg !3503
  br i1 %127, label %30, label %128, !dbg !3504

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3491, metadata !DIExpression()), !dbg !3494
  %129 = load i8*, i8** %9, align 8, !dbg !3500
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3500
  store i8* %130, i8** %9, align 8, !dbg !3500
  %131 = bitcast i8* %129 to i8**, !dbg !3500
  %132 = load i8*, i8** %131, align 8, !dbg !3500
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3501
  store i8* %132, i8** %133, align 16, !dbg !3502, !tbaa !1298
  %134 = icmp eq i8* %132, null, !dbg !3503
  br i1 %134, label %30, label %135, !dbg !3504

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3491, metadata !DIExpression()), !dbg !3494
  %136 = load i8*, i8** %9, align 8, !dbg !3500
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3500
  store i8* %137, i8** %9, align 8, !dbg !3500
  %138 = bitcast i8* %136 to i8**, !dbg !3500
  %139 = load i8*, i8** %138, align 8, !dbg !3500
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3501
  store i8* %139, i8** %140, align 8, !dbg !3502, !tbaa !1298
  %141 = icmp eq i8* %139, null, !dbg !3503
  %142 = select i1 %141, i64 9, i64 10, !dbg !3504
  br label %30, !dbg !3504
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3508 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3512, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i8* %1, metadata !3513, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i8* %2, metadata !3514, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i8* %3, metadata !3515, metadata !DIExpression()), !dbg !3522
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3523
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #20, !dbg !3523
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3516, metadata !DIExpression()), !dbg !3524
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3525
  call void @llvm.va_start(i8* nonnull %6), !dbg !3525
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3526
  call void @llvm.va_end(i8* nonnull %6), !dbg !3527
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #20, !dbg !3528
  ret void, !dbg !3528
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #20

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3529 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3530, !tbaa !1298
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.107, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3530
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.122, i64 0, i64 0), i32 5) #20, !dbg !3531
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.123, i64 0, i64 0)) #20, !dbg !3531
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.124, i64 0, i64 0), i32 5) #20, !dbg !3532
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.125, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.126, i64 0, i64 0)) #20, !dbg !3532
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.127, i64 0, i64 0), i32 5) #20, !dbg !3533
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.128, i64 0, i64 0)) #20, !dbg !3533
  ret void, !dbg !3534
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #21 !dbg !3535 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3537, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata i64 %1, metadata !3538, metadata !DIExpression()), !dbg !3539
  %3 = udiv i64 9223372036854775807, %1, !dbg !3540
  %4 = icmp ult i64 %3, %0, !dbg !3540
  br i1 %4, label %5, label %6, !dbg !3542

5:                                                ; preds = %2
  tail call void @xalloc_die() #24, !dbg !3543
  unreachable, !dbg !3543

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3544
  call void @llvm.dbg.value(metadata i64 %7, metadata !3545, metadata !DIExpression()) #20, !dbg !3551
  %8 = tail call noalias i8* @malloc(i64 %7) #20, !dbg !3553
  call void @llvm.dbg.value(metadata i8* %8, metadata !3550, metadata !DIExpression()) #20, !dbg !3551
  %9 = icmp eq i8* %8, null, !dbg !3554
  %10 = icmp ne i64 %7, 0, !dbg !3556
  %11 = and i1 %10, %9, !dbg !3557
  br i1 %11, label %12, label %13, !dbg !3557

12:                                               ; preds = %6
  tail call void @xalloc_die() #24, !dbg !3558
  unreachable, !dbg !3558

13:                                               ; preds = %6
  ret i8* %8, !dbg !3559
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3546 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3545, metadata !DIExpression()), !dbg !3560
  %2 = tail call noalias i8* @malloc(i64 %0) #20, !dbg !3561
  call void @llvm.dbg.value(metadata i8* %2, metadata !3550, metadata !DIExpression()), !dbg !3560
  %3 = icmp eq i8* %2, null, !dbg !3562
  %4 = icmp ne i64 %0, 0, !dbg !3563
  %5 = and i1 %4, %3, !dbg !3564
  br i1 %5, label %6, label %7, !dbg !3564

6:                                                ; preds = %1
  tail call void @xalloc_die() #24, !dbg !3565
  unreachable, !dbg !3565

7:                                                ; preds = %1
  ret i8* %2, !dbg !3566
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #21 !dbg !3567 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3571, metadata !DIExpression()), !dbg !3574
  call void @llvm.dbg.value(metadata i64 %1, metadata !3572, metadata !DIExpression()), !dbg !3574
  call void @llvm.dbg.value(metadata i64 %2, metadata !3573, metadata !DIExpression()), !dbg !3574
  %4 = udiv i64 9223372036854775807, %2, !dbg !3575
  %5 = icmp ult i64 %4, %1, !dbg !3575
  br i1 %5, label %6, label %7, !dbg !3577

6:                                                ; preds = %3
  tail call void @xalloc_die() #24, !dbg !3578
  unreachable, !dbg !3578

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3579
  call void @llvm.dbg.value(metadata i8* %0, metadata !3580, metadata !DIExpression()) #20, !dbg !3586
  call void @llvm.dbg.value(metadata i64 %8, metadata !3585, metadata !DIExpression()) #20, !dbg !3586
  %9 = icmp eq i64 %8, 0, !dbg !3588
  %10 = icmp ne i8* %0, null, !dbg !3590
  %11 = and i1 %10, %9, !dbg !3591
  br i1 %11, label %12, label %13, !dbg !3591

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #20, !dbg !3592
  br label %19, !dbg !3594

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #20, !dbg !3595
  call void @llvm.dbg.value(metadata i8* %14, metadata !3580, metadata !DIExpression()) #20, !dbg !3586
  %15 = icmp eq i8* %14, null, !dbg !3596
  %16 = icmp ne i64 %8, 0, !dbg !3598
  %17 = and i1 %16, %15, !dbg !3599
  br i1 %17, label %18, label %19, !dbg !3599

18:                                               ; preds = %13
  tail call void @xalloc_die() #24, !dbg !3600
  unreachable, !dbg !3600

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3586
  ret i8* %20, !dbg !3601
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3581 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3580, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata i64 %1, metadata !3585, metadata !DIExpression()), !dbg !3602
  %3 = icmp eq i64 %1, 0, !dbg !3603
  %4 = icmp ne i8* %0, null, !dbg !3604
  %5 = and i1 %4, %3, !dbg !3605
  br i1 %5, label %6, label %7, !dbg !3605

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #20, !dbg !3606
  br label %13, !dbg !3607

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #20, !dbg !3608
  call void @llvm.dbg.value(metadata i8* %8, metadata !3580, metadata !DIExpression()), !dbg !3602
  %9 = icmp eq i8* %8, null, !dbg !3609
  %10 = icmp ne i64 %1, 0, !dbg !3610
  %11 = and i1 %10, %9, !dbg !3611
  br i1 %11, label %12, label %13, !dbg !3611

12:                                               ; preds = %7
  tail call void @xalloc_die() #24, !dbg !3612
  unreachable, !dbg !3612

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3602
  ret i8* %14, !dbg !3613
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #21 !dbg !655 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !660, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.value(metadata i64* %1, metadata !661, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.value(metadata i64 %2, metadata !662, metadata !DIExpression()), !dbg !3614
  %4 = load i64, i64* %1, align 8, !dbg !3615, !tbaa !2855
  call void @llvm.dbg.value(metadata i64 %4, metadata !663, metadata !DIExpression()), !dbg !3614
  %5 = icmp eq i8* %0, null, !dbg !3616
  br i1 %5, label %6, label %20, !dbg !3618

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3619
  br i1 %7, label %8, label %13, !dbg !3622

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3623
  call void @llvm.dbg.value(metadata i64 %9, metadata !663, metadata !DIExpression()), !dbg !3614
  %10 = icmp ugt i64 %2, 128, !dbg !3625
  %11 = zext i1 %10 to i64, !dbg !3625
  %12 = add nuw nsw i64 %9, %11, !dbg !3626
  call void @llvm.dbg.value(metadata i64 %12, metadata !663, metadata !DIExpression()), !dbg !3614
  br label %13, !dbg !3627

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3614
  call void @llvm.dbg.value(metadata i64 %14, metadata !663, metadata !DIExpression()), !dbg !3614
  %15 = udiv i64 9223372036854775807, %2, !dbg !3628
  %16 = icmp ult i64 %15, %14, !dbg !3628
  br i1 %16, label %19, label %17, !dbg !3630

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !663, metadata !DIExpression()), !dbg !3614
  store i64 %14, i64* %1, align 8, !dbg !3631, !tbaa !2855
  %18 = mul i64 %14, %2, !dbg !3632
  call void @llvm.dbg.value(metadata i8* %0, metadata !3580, metadata !DIExpression()) #20, !dbg !3633
  call void @llvm.dbg.value(metadata i64 %28, metadata !3585, metadata !DIExpression()) #20, !dbg !3633
  br label %31, !dbg !3635

19:                                               ; preds = %13
  tail call void @xalloc_die() #24, !dbg !3636
  unreachable, !dbg !3636

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3637
  %22 = icmp ugt i64 %21, %4, !dbg !3640
  br i1 %22, label %24, label %23, !dbg !3641

23:                                               ; preds = %20
  tail call void @xalloc_die() #24, !dbg !3642
  unreachable, !dbg !3642

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3643
  %26 = add nuw i64 %4, 1, !dbg !3644
  %27 = add i64 %26, %25, !dbg !3645
  call void @llvm.dbg.value(metadata i64 %27, metadata !663, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.value(metadata i64 %27, metadata !663, metadata !DIExpression()), !dbg !3614
  store i64 %27, i64* %1, align 8, !dbg !3631, !tbaa !2855
  %28 = mul i64 %27, %2, !dbg !3632
  call void @llvm.dbg.value(metadata i8* %0, metadata !3580, metadata !DIExpression()) #20, !dbg !3633
  call void @llvm.dbg.value(metadata i64 %28, metadata !3585, metadata !DIExpression()) #20, !dbg !3633
  %29 = icmp eq i64 %28, 0, !dbg !3646
  br i1 %29, label %30, label %31, !dbg !3635

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #20, !dbg !3647
  br label %38, !dbg !3648

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #20, !dbg !3649
  call void @llvm.dbg.value(metadata i8* %33, metadata !3580, metadata !DIExpression()) #20, !dbg !3633
  %34 = icmp eq i8* %33, null, !dbg !3650
  %35 = icmp ne i64 %32, 0, !dbg !3651
  %36 = and i1 %35, %34, !dbg !3652
  br i1 %36, label %37, label %38, !dbg !3652

37:                                               ; preds = %31
  tail call void @xalloc_die() #24, !dbg !3653
  unreachable, !dbg !3653

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3633
  ret i8* %39, !dbg !3654
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #21 !dbg !3655 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3657, metadata !DIExpression()), !dbg !3658
  call void @llvm.dbg.value(metadata i64 %0, metadata !3545, metadata !DIExpression()) #20, !dbg !3659
  %2 = tail call noalias i8* @malloc(i64 %0) #20, !dbg !3661
  call void @llvm.dbg.value(metadata i8* %2, metadata !3550, metadata !DIExpression()) #20, !dbg !3659
  %3 = icmp eq i8* %2, null, !dbg !3662
  %4 = icmp ne i64 %0, 0, !dbg !3663
  %5 = and i1 %4, %3, !dbg !3664
  br i1 %5, label %6, label %7, !dbg !3664

6:                                                ; preds = %1
  tail call void @xalloc_die() #24, !dbg !3665
  unreachable, !dbg !3665

7:                                                ; preds = %1
  ret i8* %2, !dbg !3666
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3667 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3671, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i64* %1, metadata !3672, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i8* %0, metadata !660, metadata !DIExpression()) #20, !dbg !3674
  call void @llvm.dbg.value(metadata i64* %1, metadata !661, metadata !DIExpression()) #20, !dbg !3674
  call void @llvm.dbg.value(metadata i64 1, metadata !662, metadata !DIExpression()) #20, !dbg !3674
  %3 = load i64, i64* %1, align 8, !dbg !3676, !tbaa !2855
  call void @llvm.dbg.value(metadata i64 %3, metadata !663, metadata !DIExpression()) #20, !dbg !3674
  %4 = icmp eq i8* %0, null, !dbg !3677
  br i1 %4, label %5, label %12, !dbg !3678

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3679
  br i1 %6, label %9, label %7, !dbg !3680

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !663, metadata !DIExpression()) #20, !dbg !3674
  %8 = icmp slt i64 %3, 0, !dbg !3681
  br i1 %8, label %11, label %9, !dbg !3682

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !663, metadata !DIExpression()) #20, !dbg !3674
  store i64 %10, i64* %1, align 8, !dbg !3683, !tbaa !2855
  call void @llvm.dbg.value(metadata i8* %0, metadata !3580, metadata !DIExpression()) #20, !dbg !3684
  call void @llvm.dbg.value(metadata i64 %18, metadata !3585, metadata !DIExpression()) #20, !dbg !3684
  br label %21, !dbg !3686

11:                                               ; preds = %7
  tail call void @xalloc_die() #24, !dbg !3687
  unreachable, !dbg !3687

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3688
  br i1 %13, label %15, label %14, !dbg !3689

14:                                               ; preds = %12
  tail call void @xalloc_die() #24, !dbg !3690
  unreachable, !dbg !3690

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3691
  %17 = add nuw nsw i64 %3, 1, !dbg !3692
  %18 = add nuw nsw i64 %17, %16, !dbg !3693
  call void @llvm.dbg.value(metadata i64 %18, metadata !663, metadata !DIExpression()) #20, !dbg !3674
  call void @llvm.dbg.value(metadata i64 %18, metadata !663, metadata !DIExpression()) #20, !dbg !3674
  store i64 %18, i64* %1, align 8, !dbg !3683, !tbaa !2855
  call void @llvm.dbg.value(metadata i8* %0, metadata !3580, metadata !DIExpression()) #20, !dbg !3684
  call void @llvm.dbg.value(metadata i64 %18, metadata !3585, metadata !DIExpression()) #20, !dbg !3684
  %19 = icmp eq i64 %18, 0, !dbg !3694
  br i1 %19, label %20, label %21, !dbg !3686

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #20, !dbg !3695
  br label %28, !dbg !3696

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #20, !dbg !3697
  call void @llvm.dbg.value(metadata i8* %23, metadata !3580, metadata !DIExpression()) #20, !dbg !3684
  %24 = icmp eq i8* %23, null, !dbg !3698
  %25 = icmp ne i64 %22, 0, !dbg !3699
  %26 = and i1 %25, %24, !dbg !3700
  br i1 %26, label %27, label %28, !dbg !3700

27:                                               ; preds = %21
  tail call void @xalloc_die() #24, !dbg !3701
  unreachable, !dbg !3701

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3684
  ret i8* %29, !dbg !3702
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3703 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3705, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata i64 %0, metadata !3707, metadata !DIExpression()) #20, !dbg !3712
  call void @llvm.dbg.value(metadata i64 1, metadata !3710, metadata !DIExpression()) #20, !dbg !3712
  %2 = icmp slt i64 %0, 0, !dbg !3714
  br i1 %2, label %6, label %3, !dbg !3716

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #20, !dbg !3717
  call void @llvm.dbg.value(metadata i8* %4, metadata !3711, metadata !DIExpression()) #20, !dbg !3712
  %5 = icmp eq i8* %4, null, !dbg !3718
  br i1 %5, label %6, label %7, !dbg !3719

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #24, !dbg !3720
  unreachable, !dbg !3720

7:                                                ; preds = %3
  ret i8* %4, !dbg !3721
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3708 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3707, metadata !DIExpression()), !dbg !3722
  call void @llvm.dbg.value(metadata i64 %1, metadata !3710, metadata !DIExpression()), !dbg !3722
  %3 = udiv i64 9223372036854775807, %1, !dbg !3723
  %4 = icmp ult i64 %3, %0, !dbg !3723
  br i1 %4, label %8, label %5, !dbg !3724

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #20, !dbg !3725
  call void @llvm.dbg.value(metadata i8* %6, metadata !3711, metadata !DIExpression()), !dbg !3722
  %7 = icmp eq i8* %6, null, !dbg !3726
  br i1 %7, label %8, label %9, !dbg !3727

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #24, !dbg !3728
  unreachable, !dbg !3728

9:                                                ; preds = %5
  ret i8* %6, !dbg !3729
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3730 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3734, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata i64 %1, metadata !3735, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata i64 %1, metadata !3545, metadata !DIExpression()) #20, !dbg !3737
  %3 = tail call noalias i8* @malloc(i64 %1) #20, !dbg !3739
  call void @llvm.dbg.value(metadata i8* %3, metadata !3550, metadata !DIExpression()) #20, !dbg !3737
  %4 = icmp eq i8* %3, null, !dbg !3740
  %5 = icmp ne i64 %1, 0, !dbg !3741
  %6 = and i1 %5, %4, !dbg !3742
  br i1 %6, label %7, label %8, !dbg !3742

7:                                                ; preds = %2
  tail call void @xalloc_die() #24, !dbg !3743
  unreachable, !dbg !3743

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3744, metadata !DIExpression()) #20, !dbg !3753
  call void @llvm.dbg.value(metadata i8* %0, metadata !3751, metadata !DIExpression()) #20, !dbg !3753
  call void @llvm.dbg.value(metadata i64 %1, metadata !3752, metadata !DIExpression()) #20, !dbg !3753
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #20, !dbg !3755
  ret i8* %3, !dbg !3756
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3757 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3759, metadata !DIExpression()), !dbg !3760
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #23, !dbg !3761
  %3 = add i64 %2, 1, !dbg !3762
  call void @llvm.dbg.value(metadata i8* %0, metadata !3734, metadata !DIExpression()) #20, !dbg !3763
  call void @llvm.dbg.value(metadata i64 %3, metadata !3735, metadata !DIExpression()) #20, !dbg !3763
  call void @llvm.dbg.value(metadata i64 %3, metadata !3545, metadata !DIExpression()) #20, !dbg !3765
  %4 = tail call noalias i8* @malloc(i64 %3) #20, !dbg !3767
  call void @llvm.dbg.value(metadata i8* %4, metadata !3550, metadata !DIExpression()) #20, !dbg !3765
  %5 = icmp eq i8* %4, null, !dbg !3768
  %6 = icmp ne i64 %3, 0, !dbg !3769
  %7 = and i1 %6, %5, !dbg !3770
  br i1 %7, label %8, label %9, !dbg !3770

8:                                                ; preds = %1
  tail call void @xalloc_die() #24, !dbg !3771
  unreachable, !dbg !3771

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3744, metadata !DIExpression()) #20, !dbg !3772
  call void @llvm.dbg.value(metadata i8* %0, metadata !3751, metadata !DIExpression()) #20, !dbg !3772
  call void @llvm.dbg.value(metadata i64 %3, metadata !3752, metadata !DIExpression()) #20, !dbg !3772
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #20, !dbg !3774
  ret i8* %4, !dbg !3775
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3776 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3777, !tbaa !1424
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.139, i64 0, i64 0), i32 5) #20, !dbg !3778
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.140, i64 0, i64 0), i8* %2) #20, !dbg !3779
  tail call void @abort() #24, !dbg !3780
  unreachable, !dbg !3780
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #22 !dbg !3781 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3783, metadata !DIExpression()), !dbg !3789
  call void @llvm.dbg.value(metadata i64 %1, metadata !3784, metadata !DIExpression()), !dbg !3789
  %3 = icmp eq i64 %0, 0, !dbg !3790
  %4 = icmp eq i64 %1, 0, !dbg !3791
  %5 = or i1 %3, %4, !dbg !3792
  br i1 %5, label %11, label %6, !dbg !3792

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3786, metadata !DIExpression()), !dbg !3793
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3794
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3794
  br i1 %8, label %9, label %11, !dbg !3796

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #26, !dbg !3797
  store i32 12, i32* %10, align 4, !dbg !3799, !tbaa !1424
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3783, metadata !DIExpression()), !dbg !3789
  call void @llvm.dbg.value(metadata i64 %12, metadata !3784, metadata !DIExpression()), !dbg !3789
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #20, !dbg !3800
  call void @llvm.dbg.value(metadata i8* %14, metadata !3785, metadata !DIExpression()), !dbg !3789
  br label %15, !dbg !3801

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3789
  ret i8* %16, !dbg !3802
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3803 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3809, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata i32 0, metadata !3810, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata i32 0, metadata !3812, metadata !DIExpression()), !dbg !3813
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #20, !dbg !3814
  call void @llvm.dbg.value(metadata i32 %2, metadata !3811, metadata !DIExpression()), !dbg !3813
  %3 = icmp slt i32 %2, 0, !dbg !3815
  br i1 %3, label %4, label %6, !dbg !3817

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3818
  br label %24, !dbg !3819

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #20, !dbg !3820
  %8 = icmp eq i32 %7, 0, !dbg !3820
  br i1 %8, label %13, label %9, !dbg !3822

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #20, !dbg !3823
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #20, !dbg !3824
  %12 = icmp eq i64 %11, -1, !dbg !3825
  br i1 %12, label %16, label %13, !dbg !3826

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #20, !dbg !3827
  %15 = icmp eq i32 %14, 0, !dbg !3827
  br i1 %15, label %16, label %18, !dbg !3828

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3810, metadata !DIExpression()), !dbg !3813
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3829
  call void @llvm.dbg.value(metadata i32 %21, metadata !3812, metadata !DIExpression()), !dbg !3813
  br label %24, !dbg !3830

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #26, !dbg !3831
  %20 = load i32, i32* %19, align 4, !dbg !3831, !tbaa !1424
  call void @llvm.dbg.value(metadata i32 %20, metadata !3810, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata i32 %20, metadata !3810, metadata !DIExpression()), !dbg !3813
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3829
  call void @llvm.dbg.value(metadata i32 %21, metadata !3812, metadata !DIExpression()), !dbg !3813
  %22 = icmp eq i32 %20, 0, !dbg !3832
  br i1 %22, label %24, label %23, !dbg !3830

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3834, !tbaa !1424
  call void @llvm.dbg.value(metadata i32 -1, metadata !3812, metadata !DIExpression()), !dbg !3813
  br label %24, !dbg !3836

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3813
  ret i32 %25, !dbg !3837
}

; Function Attrs: nofree nounwind
declare !dbg !716 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !717 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fcntl(i32 %0, i32 %1, ...) local_unnamed_addr #8 !dbg !3838 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3840, metadata !DIExpression()), !dbg !3864
  call void @llvm.dbg.value(metadata i32 %1, metadata !3841, metadata !DIExpression()), !dbg !3864
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !3865
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #20, !dbg !3865
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !3842, metadata !DIExpression()), !dbg !3866
  call void @llvm.dbg.value(metadata i32 -1, metadata !3852, metadata !DIExpression()), !dbg !3864
  call void @llvm.va_start(i8* nonnull %4), !dbg !3867
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
  ], !dbg !3868

5:                                                ; preds = %2
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !3869
  %7 = load i32, i32* %6, align 16, !dbg !3869
  %8 = icmp ult i32 %7, 41, !dbg !3869
  br i1 %8, label %9, label %15, !dbg !3869

9:                                                ; preds = %5
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !3869
  %11 = load i8*, i8** %10, align 16, !dbg !3869
  %12 = zext i32 %7 to i64, !dbg !3869
  %13 = getelementptr i8, i8* %11, i64 %12, !dbg !3869
  %14 = add nuw nsw i32 %7, 8, !dbg !3869
  store i32 %14, i32* %6, align 16, !dbg !3869
  br label %19, !dbg !3869

15:                                               ; preds = %5
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !3869
  %17 = load i8*, i8** %16, align 8, !dbg !3869
  %18 = getelementptr i8, i8* %17, i64 8, !dbg !3869
  store i8* %18, i8** %16, align 8, !dbg !3869
  br label %19, !dbg !3869

19:                                               ; preds = %15, %9
  %20 = phi i8* [ %13, %9 ], [ %17, %15 ]
  %21 = bitcast i8* %20 to i32*, !dbg !3869
  %22 = load i32, i32* %21, align 4, !dbg !3869
  call void @llvm.dbg.value(metadata i32 %22, metadata !3853, metadata !DIExpression()), !dbg !3870
  call void @llvm.dbg.value(metadata i32 %0, metadata !3871, metadata !DIExpression()) #20, !dbg !3876
  call void @llvm.dbg.value(metadata i32 %22, metadata !3874, metadata !DIExpression()) #20, !dbg !3876
  %23 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 0, i32 %22) #20, !dbg !3878
  call void @llvm.dbg.value(metadata i32 %23, metadata !3875, metadata !DIExpression()) #20, !dbg !3876
  call void @llvm.dbg.value(metadata i32 %23, metadata !3852, metadata !DIExpression()), !dbg !3864
  br label %116

24:                                               ; preds = %2
  %25 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !3879
  %26 = load i32, i32* %25, align 16, !dbg !3879
  %27 = icmp ult i32 %26, 41, !dbg !3879
  br i1 %27, label %28, label %34, !dbg !3879

28:                                               ; preds = %24
  %29 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !3879
  %30 = load i8*, i8** %29, align 16, !dbg !3879
  %31 = zext i32 %26 to i64, !dbg !3879
  %32 = getelementptr i8, i8* %30, i64 %31, !dbg !3879
  %33 = add nuw nsw i32 %26, 8, !dbg !3879
  store i32 %33, i32* %25, align 16, !dbg !3879
  br label %38, !dbg !3879

34:                                               ; preds = %24
  %35 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !3879
  %36 = load i8*, i8** %35, align 8, !dbg !3879
  %37 = getelementptr i8, i8* %36, i64 8, !dbg !3879
  store i8* %37, i8** %35, align 8, !dbg !3879
  br label %38, !dbg !3879

38:                                               ; preds = %34, %28
  %39 = phi i8* [ %32, %28 ], [ %36, %34 ]
  %40 = bitcast i8* %39 to i32*, !dbg !3879
  %41 = load i32, i32* %40, align 4, !dbg !3879
  call void @llvm.dbg.value(metadata i32 %41, metadata !3856, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata i32 %0, metadata !509, metadata !DIExpression()) #20, !dbg !3881
  call void @llvm.dbg.value(metadata i32 %41, metadata !510, metadata !DIExpression()) #20, !dbg !3881
  %42 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !3883, !tbaa !1424
  %43 = icmp sgt i32 %42, -1, !dbg !3885
  br i1 %43, label %44, label %56, !dbg !3886

44:                                               ; preds = %38
  %45 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %41) #20, !dbg !3887
  call void @llvm.dbg.value(metadata i32 %45, metadata !511, metadata !DIExpression()) #20, !dbg !3881
  %46 = icmp sgt i32 %45, -1, !dbg !3889
  br i1 %46, label %51, label %47, !dbg !3891

47:                                               ; preds = %44
  %48 = tail call i32* @__errno_location() #26, !dbg !3892
  %49 = load i32, i32* %48, align 4, !dbg !3892, !tbaa !1424
  %50 = icmp eq i32 %49, 22, !dbg !3893
  br i1 %50, label %52, label %51, !dbg !3894

51:                                               ; preds = %47, %44
  store i32 1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !3895, !tbaa !1424
  call void @llvm.dbg.value(metadata i32 %62, metadata !511, metadata !DIExpression()) #20, !dbg !3881
  br label %116, !dbg !3897

52:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 %0, metadata !3871, metadata !DIExpression()) #20, !dbg !3898
  call void @llvm.dbg.value(metadata i32 %41, metadata !3874, metadata !DIExpression()) #20, !dbg !3898
  %53 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 0, i32 %41) #20, !dbg !3901
  call void @llvm.dbg.value(metadata i32 %53, metadata !3875, metadata !DIExpression()) #20, !dbg !3898
  call void @llvm.dbg.value(metadata i32 %53, metadata !511, metadata !DIExpression()) #20, !dbg !3881
  %54 = icmp sgt i32 %53, -1, !dbg !3902
  br i1 %54, label %55, label %116, !dbg !3904

55:                                               ; preds = %52
  store i32 -1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !3905, !tbaa !1424
  br label %60, !dbg !3906

56:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i32 %0, metadata !3871, metadata !DIExpression()) #20, !dbg !3907
  call void @llvm.dbg.value(metadata i32 %41, metadata !3874, metadata !DIExpression()) #20, !dbg !3907
  %57 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 0, i32 %41) #20, !dbg !3909
  call void @llvm.dbg.value(metadata i32 %57, metadata !3875, metadata !DIExpression()) #20, !dbg !3907
  call void @llvm.dbg.value(metadata i32 %57, metadata !511, metadata !DIExpression()) #20, !dbg !3881
  %58 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !3910
  %59 = icmp eq i32 %58, -1
  br label %60

60:                                               ; preds = %56, %55
  %61 = phi i1 [ true, %55 ], [ %59, %56 ]
  %62 = phi i32 [ %53, %55 ], [ %57, %56 ], !dbg !3911
  call void @llvm.dbg.value(metadata i32 %62, metadata !511, metadata !DIExpression()) #20, !dbg !3881
  %63 = icmp sgt i32 %62, -1, !dbg !3912
  %64 = and i1 %61, %63, !dbg !3897
  br i1 %64, label %65, label %116, !dbg !3897

65:                                               ; preds = %60
  %66 = call i32 (i32, i32, ...) @fcntl(i32 %62, i32 1) #20, !dbg !3913
  call void @llvm.dbg.value(metadata i32 %66, metadata !512, metadata !DIExpression()) #20, !dbg !3914
  %67 = icmp slt i32 %66, 0, !dbg !3915
  br i1 %67, label %72, label %68, !dbg !3916

68:                                               ; preds = %65
  %69 = or i32 %66, 1, !dbg !3917
  %70 = call i32 (i32, i32, ...) @fcntl(i32 %62, i32 2, i32 %69) #20, !dbg !3918
  %71 = icmp eq i32 %70, -1, !dbg !3919
  br i1 %71, label %72, label %116, !dbg !3920

72:                                               ; preds = %68, %65
  %73 = tail call i32* @__errno_location() #26, !dbg !3921
  %74 = load i32, i32* %73, align 4, !dbg !3921, !tbaa !1424
  call void @llvm.dbg.value(metadata i32 %74, metadata !515, metadata !DIExpression()) #20, !dbg !3922
  %75 = call i32 @close(i32 %62) #20, !dbg !3923
  store i32 %74, i32* %73, align 4, !dbg !3924, !tbaa !1424
  call void @llvm.dbg.value(metadata i32 -1, metadata !511, metadata !DIExpression()) #20, !dbg !3881
  br label %116, !dbg !3925

76:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %77 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1) #20, !dbg !3926
  call void @llvm.dbg.value(metadata i32 %77, metadata !3852, metadata !DIExpression()), !dbg !3864
  br label %116, !dbg !3927

78:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %79 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !3928
  %80 = load i32, i32* %79, align 16, !dbg !3928
  %81 = icmp ult i32 %80, 41, !dbg !3928
  br i1 %81, label %82, label %88, !dbg !3928

82:                                               ; preds = %78
  %83 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !3928
  %84 = load i8*, i8** %83, align 16, !dbg !3928
  %85 = zext i32 %80 to i64, !dbg !3928
  %86 = getelementptr i8, i8* %84, i64 %85, !dbg !3928
  %87 = add nuw nsw i32 %80, 8, !dbg !3928
  store i32 %87, i32* %79, align 16, !dbg !3928
  br label %92, !dbg !3928

88:                                               ; preds = %78
  %89 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !3928
  %90 = load i8*, i8** %89, align 8, !dbg !3928
  %91 = getelementptr i8, i8* %90, i64 8, !dbg !3928
  store i8* %91, i8** %89, align 8, !dbg !3928
  br label %92, !dbg !3928

92:                                               ; preds = %88, %82
  %93 = phi i8* [ %86, %82 ], [ %90, %88 ]
  %94 = bitcast i8* %93 to i32*, !dbg !3928
  %95 = load i32, i32* %94, align 4, !dbg !3928
  call void @llvm.dbg.value(metadata i32 %95, metadata !3858, metadata !DIExpression()), !dbg !3929
  %96 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i32 %95) #20, !dbg !3930
  call void @llvm.dbg.value(metadata i32 %96, metadata !3852, metadata !DIExpression()), !dbg !3864
  br label %116, !dbg !3931

97:                                               ; preds = %2
  %98 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !3932
  %99 = load i32, i32* %98, align 16, !dbg !3932
  %100 = icmp ult i32 %99, 41, !dbg !3932
  br i1 %100, label %101, label %107, !dbg !3932

101:                                              ; preds = %97
  %102 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !3932
  %103 = load i8*, i8** %102, align 16, !dbg !3932
  %104 = zext i32 %99 to i64, !dbg !3932
  %105 = getelementptr i8, i8* %103, i64 %104, !dbg !3932
  %106 = add nuw nsw i32 %99, 8, !dbg !3932
  store i32 %106, i32* %98, align 16, !dbg !3932
  br label %111, !dbg !3932

107:                                              ; preds = %97
  %108 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !3932
  %109 = load i8*, i8** %108, align 8, !dbg !3932
  %110 = getelementptr i8, i8* %109, i64 8, !dbg !3932
  store i8* %110, i8** %108, align 8, !dbg !3932
  br label %111, !dbg !3932

111:                                              ; preds = %107, %101
  %112 = phi i8* [ %105, %101 ], [ %109, %107 ]
  %113 = bitcast i8* %112 to i8**, !dbg !3932
  %114 = load i8*, i8** %113, align 8, !dbg !3932
  call void @llvm.dbg.value(metadata i8* %114, metadata !3862, metadata !DIExpression()), !dbg !3933
  %115 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %114) #20, !dbg !3934
  call void @llvm.dbg.value(metadata i32 %115, metadata !3852, metadata !DIExpression()), !dbg !3864
  br label %116, !dbg !3935

116:                                              ; preds = %72, %68, %60, %52, %51, %76, %92, %111, %19
  %117 = phi i32 [ %115, %111 ], [ %96, %92 ], [ %77, %76 ], [ %23, %19 ], [ %62, %60 ], [ -1, %72 ], [ %62, %68 ], [ %53, %52 ], [ %45, %51 ], !dbg !3936
  call void @llvm.dbg.value(metadata i32 %117, metadata !3852, metadata !DIExpression()), !dbg !3864
  call void @llvm.va_end(i8* nonnull %4), !dbg !3937
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #20, !dbg !3938
  ret i32 %117, !dbg !3939
}

declare !dbg !503 i32 @fcntl(i32, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3940 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3946, metadata !DIExpression()), !dbg !3947
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3948
  br i1 %2, label %6, label %3, !dbg !3950

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #20, !dbg !3951
  %5 = icmp eq i32 %4, 0, !dbg !3951
  br i1 %5, label %6, label %8, !dbg !3952

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3953
  br label %17, !dbg !3954

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3955, metadata !DIExpression()) #20, !dbg !3960
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3962
  %10 = load i32, i32* %9, align 8, !dbg !3962, !tbaa !3964
  %11 = and i32 %10, 256, !dbg !3965
  %12 = icmp eq i32 %11, 0, !dbg !3965
  br i1 %12, label %15, label %13, !dbg !3966

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #20, !dbg !3967
  br label %15, !dbg !3967

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3968
  br label %17, !dbg !3969

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3947
  ret i32 %18, !dbg !3970
}

; Function Attrs: nofree nounwind
declare !dbg !724 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3971 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3977, metadata !DIExpression()), !dbg !3983
  call void @llvm.dbg.value(metadata i64 %1, metadata !3978, metadata !DIExpression()), !dbg !3983
  call void @llvm.dbg.value(metadata i32 %2, metadata !3979, metadata !DIExpression()), !dbg !3983
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3984
  %5 = load i8*, i8** %4, align 8, !dbg !3984, !tbaa !3985
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3986
  %7 = load i8*, i8** %6, align 8, !dbg !3986, !tbaa !3987
  %8 = icmp eq i8* %5, %7, !dbg !3988
  br i1 %8, label %9, label %28, !dbg !3989

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3990
  %11 = load i8*, i8** %10, align 8, !dbg !3990, !tbaa !1680
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3991
  %13 = load i8*, i8** %12, align 8, !dbg !3991, !tbaa !3992
  %14 = icmp eq i8* %11, %13, !dbg !3993
  br i1 %14, label %15, label %28, !dbg !3994

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3995
  %17 = load i8*, i8** %16, align 8, !dbg !3995, !tbaa !3996
  %18 = icmp eq i8* %17, null, !dbg !3997
  br i1 %18, label %19, label %28, !dbg !3998

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #20, !dbg !3999
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #20, !dbg !4000
  call void @llvm.dbg.value(metadata i64 %21, metadata !3980, metadata !DIExpression()), !dbg !4001
  %22 = icmp eq i64 %21, -1, !dbg !4002
  br i1 %22, label %30, label %23, !dbg !4004

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4005
  %25 = load i32, i32* %24, align 8, !dbg !4006, !tbaa !3964
  %26 = and i32 %25, -17, !dbg !4006
  store i32 %26, i32* %24, align 8, !dbg !4006, !tbaa !3964
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4007
  store i64 %21, i64* %27, align 8, !dbg !4008, !tbaa !4009
  br label %30, !dbg !4010

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4011
  br label %30, !dbg !4012

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3983
  ret i32 %31, !dbg !4013
}

; Function Attrs: nofree nounwind
declare !dbg !800 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !4014 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4022, metadata !DIExpression()), !dbg !4031
  call void @llvm.dbg.value(metadata i8* %1, metadata !4023, metadata !DIExpression()), !dbg !4031
  call void @llvm.dbg.value(metadata i64 %2, metadata !4024, metadata !DIExpression()), !dbg !4031
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4025, metadata !DIExpression()), !dbg !4031
  %6 = bitcast i32* %5 to i8*, !dbg !4032
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #20, !dbg !4032
  %7 = icmp eq i32* %0, null, !dbg !4033
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4035
  call void @llvm.dbg.value(metadata i32* %8, metadata !4022, metadata !DIExpression()), !dbg !4031
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #20, !dbg !4036
  call void @llvm.dbg.value(metadata i64 %9, metadata !4026, metadata !DIExpression()), !dbg !4031
  %10 = icmp ugt i64 %9, -3, !dbg !4037
  %11 = icmp ne i64 %2, 0, !dbg !4038
  %12 = and i1 %11, %10, !dbg !4039
  br i1 %12, label %13, label %18, !dbg !4039

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #20, !dbg !4040
  br i1 %14, label %18, label %15, !dbg !4041

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4042, !tbaa !1405
  call void @llvm.dbg.value(metadata i8 %16, metadata !4028, metadata !DIExpression()), !dbg !4043
  %17 = zext i8 %16 to i32, !dbg !4044
  store i32 %17, i32* %8, align 4, !dbg !4045, !tbaa !1424
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4031
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #20, !dbg !4046
  ret i64 %19, !dbg !4046
}

; Function Attrs: nounwind
declare !dbg !806 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4047 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4053, metadata !DIExpression()), !dbg !4058
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #20, !dbg !4059
  call void @llvm.dbg.value(metadata i1 undef, metadata !4054, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4060, metadata !DIExpression()), !dbg !4063
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4065
  %4 = load i32, i32* %3, align 8, !dbg !4065, !tbaa !3964
  %5 = and i32 %4, 32, !dbg !4065
  %6 = icmp eq i32 %5, 0, !dbg !4066
  call void @llvm.dbg.value(metadata i1 %6, metadata !4056, metadata !DIExpression()), !dbg !4058
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #20, !dbg !4067
  %8 = icmp ne i32 %7, 0, !dbg !4068
  call void @llvm.dbg.value(metadata i1 %8, metadata !4057, metadata !DIExpression()), !dbg !4058
  br i1 %6, label %9, label %19, !dbg !4069

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4071
  call void @llvm.dbg.value(metadata i1 %10, metadata !4054, metadata !DIExpression()), !dbg !4058
  %11 = xor i1 %8, true, !dbg !4072
  %12 = or i1 %10, %11, !dbg !4072
  %13 = sext i1 %8 to i32, !dbg !4072
  br i1 %12, label %22, label %14, !dbg !4072

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #26, !dbg !4073
  %16 = load i32, i32* %15, align 4, !dbg !4073, !tbaa !1424
  %17 = icmp ne i32 %16, 9, !dbg !4074
  %18 = sext i1 %17 to i32, !dbg !4075
  br label %22, !dbg !4075

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4076

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #26, !dbg !4078
  store i32 0, i32* %21, align 4, !dbg !4080, !tbaa !1424
  br label %22, !dbg !4078

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4058
  ret i32 %23, !dbg !4081
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !4082 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4084, metadata !DIExpression()), !dbg !4089
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4090
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #20, !dbg !4090
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4085, metadata !DIExpression()), !dbg !4091
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #20, !dbg !4092
  %5 = icmp eq i32 %4, 0, !dbg !4092
  br i1 %5, label %6, label %13, !dbg !4094

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !4095
  %8 = load i16, i16* %7, align 16, !dbg !4095
  %9 = icmp eq i16 %8, 67, !dbg !4095
  br i1 %9, label %13, label %10, !dbg !4096

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.157, i64 0, i64 0), i64 6), !dbg !4097
  %12 = icmp ne i32 %11, 0, !dbg !4098
  br label %13, !dbg !4096

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !4089
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #20, !dbg !4099
  ret i1 %14, !dbg !4099
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !4100 {
  %1 = tail call i8* @nl_langinfo(i32 14) #20, !dbg !4103
  call void @llvm.dbg.value(metadata i8* %1, metadata !4102, metadata !DIExpression()), !dbg !4104
  %2 = icmp eq i8* %1, null, !dbg !4105
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.160, i64 0, i64 0), i8* %1, !dbg !4107
  call void @llvm.dbg.value(metadata i8* %3, metadata !4102, metadata !DIExpression()), !dbg !4104
  %4 = load i8, i8* %3, align 1, !dbg !4108, !tbaa !1405
  %5 = icmp eq i8 %4, 0, !dbg !4112
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.161, i64 0, i64 0), i8* %3, !dbg !4113
  call void @llvm.dbg.value(metadata i8* %6, metadata !4102, metadata !DIExpression()), !dbg !4104
  ret i8* %6, !dbg !4114
}

; Function Attrs: nounwind
declare !dbg !1257 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !4115 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4119, metadata !DIExpression()), !dbg !4122
  call void @llvm.dbg.value(metadata i8* %1, metadata !4120, metadata !DIExpression()), !dbg !4122
  call void @llvm.dbg.value(metadata i64 %2, metadata !4121, metadata !DIExpression()), !dbg !4122
  call void @llvm.dbg.value(metadata i32 %0, metadata !4123, metadata !DIExpression()) #20, !dbg !4132
  call void @llvm.dbg.value(metadata i8* %1, metadata !4126, metadata !DIExpression()) #20, !dbg !4132
  call void @llvm.dbg.value(metadata i64 %2, metadata !4127, metadata !DIExpression()) #20, !dbg !4132
  call void @llvm.dbg.value(metadata i32 %0, metadata !4134, metadata !DIExpression()) #20, !dbg !4140
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #20, !dbg !4142
  call void @llvm.dbg.value(metadata i8* %4, metadata !4139, metadata !DIExpression()) #20, !dbg !4140
  call void @llvm.dbg.value(metadata i8* %4, metadata !4128, metadata !DIExpression()) #20, !dbg !4132
  %5 = icmp eq i8* %4, null, !dbg !4143
  br i1 %5, label %6, label %9, !dbg !4144

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4145
  br i1 %7, label %19, label %8, !dbg !4148

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4149, !tbaa !1405
  br label %19, !dbg !4150

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #23, !dbg !4151
  call void @llvm.dbg.value(metadata i64 %10, metadata !4129, metadata !DIExpression()) #20, !dbg !4152
  %11 = icmp ult i64 %10, %2, !dbg !4153
  br i1 %11, label %12, label %14, !dbg !4155

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4156
  call void @llvm.dbg.value(metadata i8* %1, metadata !4158, metadata !DIExpression()) #20, !dbg !4163
  call void @llvm.dbg.value(metadata i8* %4, metadata !4161, metadata !DIExpression()) #20, !dbg !4163
  call void @llvm.dbg.value(metadata i64 %13, metadata !4162, metadata !DIExpression()) #20, !dbg !4163
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #20, !dbg !4165
  br label %19, !dbg !4166

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4167
  br i1 %15, label %19, label %16, !dbg !4170

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4171
  call void @llvm.dbg.value(metadata i8* %1, metadata !4158, metadata !DIExpression()) #20, !dbg !4173
  call void @llvm.dbg.value(metadata i8* %4, metadata !4161, metadata !DIExpression()) #20, !dbg !4173
  call void @llvm.dbg.value(metadata i64 %17, metadata !4162, metadata !DIExpression()) #20, !dbg !4173
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #20, !dbg !4175
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4176
  store i8 0, i8* %18, align 1, !dbg !4177, !tbaa !1405
  br label %19, !dbg !4178

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !4179
  ret i32 %20, !dbg !4180
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !4181 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4183, metadata !DIExpression()), !dbg !4184
  call void @llvm.dbg.value(metadata i32 %0, metadata !4134, metadata !DIExpression()) #20, !dbg !4185
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #20, !dbg !4187
  call void @llvm.dbg.value(metadata i8* %2, metadata !4139, metadata !DIExpression()) #20, !dbg !4185
  ret i8* %2, !dbg !4188
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
attributes #10 = { nofree "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nofree nounwind readonly }
attributes #14 = { nofree norecurse nounwind sspstrong uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { nofree nounwind }
attributes #17 = { norecurse nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { nofree norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { nounwind }
attributes #21 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #22 = { nofree nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #23 = { nounwind readonly }
attributes #24 = { noreturn nounwind }
attributes #25 = { noreturn }
attributes #26 = { nounwind readnone }
attributes #27 = { cold }

!llvm.dbg.cu = !{!2, !225, !230, !283, !328, !518, !560, !334, !375, !604, !609, !489, !651, !672, !675, !678, !501, !721, !762, !803, !822, !860, !867, !1260}
!llvm.ident = !{!1263, !1263, !1263, !1263, !1263, !1263, !1263, !1263, !1263, !1263, !1263, !1263, !1263, !1263, !1263, !1263, !1263, !1263, !1263, !1263, !1263, !1263, !1263, !1263}
!llvm.module.flags = !{!1264, !1265, !1266, !1267, !1268}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1 = distinct !DIGlobalVariable(name: "append", scope: !2, file: !3, line: 43, type: !202, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !36, globals: !198, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/tee.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
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
!14 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!15 = !{!16, !17, !18, !19, !20, !21}
!16 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2, isUnsigned: true)
!18 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5, isUnsigned: true)
!19 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4, isUnsigned: true)
!20 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3, isUnsigned: true)
!21 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1, isUnsigned: true)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !23, line: 32, baseType: !6, size: 32, elements: !24)
!23 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
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
!36 = !{!37, !47, !108, !112, !116, !119, !122, !129, !144, !41, !98, !146, !150, !155, !158, !162, !166, !169, !172, !176, !100, !43, !179, !182, !185, !189, !192, !194, !197}
!37 = !DISubprogram(name: "dcgettext", scope: !38, file: !38, line: 51, type: !39, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!38 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!39 = !DISubroutineType(types: !40)
!40 = !{!41, !43, !43, !45}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!45 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!46 = !{}
!47 = !DISubprogram(name: "fputs_unlocked", scope: !48, file: !48, line: 662, type: !49, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!48 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!49 = !DISubroutineType(types: !50)
!50 = !{!45, !43, !51}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !53, line: 49, size: 1728, elements: !54)
!53 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!54 = !{!55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !70, !71, !72, !73, !77, !79, !81, !85, !88, !90, !93, !96, !97, !99, !103, !104}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !52, file: !53, line: 51, baseType: !45, size: 32)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !52, file: !53, line: 54, baseType: !41, size: 64, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !52, file: !53, line: 55, baseType: !41, size: 64, offset: 128)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !52, file: !53, line: 56, baseType: !41, size: 64, offset: 192)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !52, file: !53, line: 57, baseType: !41, size: 64, offset: 256)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !52, file: !53, line: 58, baseType: !41, size: 64, offset: 320)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !52, file: !53, line: 59, baseType: !41, size: 64, offset: 384)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !52, file: !53, line: 60, baseType: !41, size: 64, offset: 448)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !52, file: !53, line: 61, baseType: !41, size: 64, offset: 512)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !52, file: !53, line: 64, baseType: !41, size: 64, offset: 576)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !52, file: !53, line: 65, baseType: !41, size: 64, offset: 640)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !52, file: !53, line: 66, baseType: !41, size: 64, offset: 704)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !52, file: !53, line: 68, baseType: !68, size: 64, offset: 768)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !53, line: 36, flags: DIFlagFwdDecl)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !52, file: !53, line: 70, baseType: !51, size: 64, offset: 832)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !52, file: !53, line: 72, baseType: !45, size: 32, offset: 896)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !52, file: !53, line: 73, baseType: !45, size: 32, offset: 928)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !52, file: !53, line: 74, baseType: !74, size: 64, offset: 960)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !75, line: 152, baseType: !76)
!75 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!76 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !52, file: !53, line: 77, baseType: !78, size: 16, offset: 1024)
!78 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !52, file: !53, line: 78, baseType: !80, size: 8, offset: 1040)
!80 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !52, file: !53, line: 79, baseType: !82, size: 8, offset: 1048)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 8, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 1)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !52, file: !53, line: 81, baseType: !86, size: 64, offset: 1088)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !53, line: 43, baseType: null)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !52, file: !53, line: 89, baseType: !89, size: 64, offset: 1152)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !75, line: 153, baseType: !76)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !52, file: !53, line: 91, baseType: !91, size: 64, offset: 1216)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !53, line: 37, flags: DIFlagFwdDecl)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !52, file: !53, line: 92, baseType: !94, size: 64, offset: 1280)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !53, line: 38, flags: DIFlagFwdDecl)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !52, file: !53, line: 93, baseType: !51, size: 64, offset: 1344)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !52, file: !53, line: 94, baseType: !98, size: 64, offset: 1408)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !52, file: !53, line: 95, baseType: !100, size: 64, offset: 1472)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !101, line: 46, baseType: !102)
!101 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stddef.h", directory: "")
!102 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !52, file: !53, line: 96, baseType: !45, size: 32, offset: 1536)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !52, file: !53, line: 98, baseType: !105, size: 160, offset: 1568)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 160, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 20)
!108 = !DISubprogram(name: "set_program_name", scope: !109, file: !109, line: 37, type: !110, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!109 = !DIFile(filename: "./lib/progname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!110 = !DISubroutineType(types: !111)
!111 = !{null, !43}
!112 = !DISubprogram(name: "setlocale", scope: !113, file: !113, line: 122, type: !114, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!113 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!114 = !DISubroutineType(types: !115)
!115 = !{!41, !45, !43}
!116 = !DISubprogram(name: "bindtextdomain", scope: !38, file: !38, line: 86, type: !117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!117 = !DISubroutineType(types: !118)
!118 = !{!41, !43, !43}
!119 = !DISubprogram(name: "textdomain", scope: !38, file: !38, line: 82, type: !120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!120 = !DISubroutineType(types: !121)
!121 = !{!41, !43}
!122 = !DISubprogram(name: "atexit", scope: !123, file: !123, line: 595, type: !124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!123 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!124 = !DISubroutineType(types: !125)
!125 = !{!45, !126}
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DISubroutineType(types: !128)
!128 = !{null}
!129 = !DISubprogram(name: "getopt_long", scope: !130, file: !130, line: 66, type: !131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!130 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!131 = !DISubroutineType(types: !132)
!132 = !{!45, !45, !133, !43, !135, !142}
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !130, line: 50, size: 256, elements: !138)
!138 = !{!139, !140, !141, !143}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !137, file: !130, line: 52, baseType: !43, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !137, file: !130, line: 55, baseType: !45, size: 32, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !137, file: !130, line: 56, baseType: !142, size: 64, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !137, file: !130, line: 57, baseType: !45, size: 32, offset: 192)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!146 = !DISubprogram(name: "version_etc", scope: !147, file: !147, line: 69, type: !148, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!147 = !DIFile(filename: "./lib/version-etc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!148 = !DISubroutineType(types: !149)
!149 = !{null, !51, !43, !43, !43, null}
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !151, line: 72, baseType: !152)
!151 = !DIFile(filename: "/usr/include/signal.h", directory: "")
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DISubroutineType(types: !154)
!154 = !{null, !45}
!155 = !DISubprogram(name: "signal", scope: !151, file: !151, line: 88, type: !156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!156 = !DISubroutineType(types: !157)
!157 = !{!152, !45, !152}
!158 = !DISubprogram(name: "close", scope: !159, file: !159, line: 353, type: !160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!159 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!160 = !DISubroutineType(types: !161)
!161 = !{!45, !45}
!162 = !DISubprogram(name: "error", scope: !163, file: !163, line: 52, type: !164, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!163 = !DIFile(filename: "./lib/error.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!164 = !DISubroutineType(types: !165)
!165 = !{null, !45, !45, !43, null}
!166 = !DISubprogram(name: "fadvise", scope: !14, file: !14, line: 72, type: !167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!167 = !DISubroutineType(types: !168)
!168 = !{null, !51, !13}
!169 = !DISubprogram(name: "setvbuf", scope: !48, file: !48, line: 308, type: !170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!170 = !DISubroutineType(types: !171)
!171 = !{!45, !51, !41, !45, !102}
!172 = !DISubprogram(name: "fopen_safer", scope: !173, file: !173, line: 23, type: !174, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!173 = !DIFile(filename: "./lib/stdio-safer.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!174 = !DISubroutineType(types: !175)
!175 = !{!51, !43, !43}
!176 = !DISubprogram(name: "quotearg_n_style_colon", scope: !23, file: !23, line: 397, type: !177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!177 = !DISubroutineType(types: !178)
!178 = !{!41, !45, !22, !43}
!179 = !DISubprogram(name: "fwrite_unlocked", scope: !48, file: !48, line: 675, type: !180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!180 = !DISubroutineType(types: !181)
!181 = !{!102, !144, !102, !102, !51}
!182 = !DISubprogram(name: "clearerr_unlocked", scope: !48, file: !48, line: 765, type: !183, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!183 = !DISubroutineType(types: !184)
!184 = !{null, !51}
!185 = !DISubprogram(name: "rpl_fclose", scope: !186, file: !186, line: 672, type: !187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!186 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!187 = !DISubroutineType(types: !188)
!188 = !{!45, !51}
!189 = !DISubprogram(name: "free", scope: !123, file: !123, line: 565, type: !190, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!190 = !DISubroutineType(types: !191)
!191 = !{null, !98}
!192 = !DISubprogram(name: "xalloc_die", scope: !193, file: !193, line: 51, type: !127, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !46)
!193 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!194 = !DISubprogram(name: "xmalloc", scope: !193, file: !193, line: 53, type: !195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!195 = !DISubroutineType(types: !196)
!196 = !{!98, !102}
!197 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!198 = !{!199, !200, !203, !205, !210, !216}
!199 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(name: "ignore_interrupts", scope: !2, file: !3, line: 46, type: !202, isLocal: true, isDefinition: true)
!202 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(name: "output_error", scope: !2, file: !3, line: 57, type: !5, isLocal: true, isDefinition: true)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 59, type: !207, isLocal: true, isDefinition: true)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 1536, elements: !208)
!208 = !{!209}
!209 = !DISubrange(count: 6)
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(name: "output_error_types", scope: !2, file: !3, line: 73, type: !212, isLocal: true, isDefinition: true)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, size: 128, elements: !214)
!213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!214 = !{!215}
!215 = !DISubrange(count: 4)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(name: "output_error_args", scope: !2, file: !3, line: 69, type: !218, isLocal: true, isDefinition: true)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 320, elements: !220)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!220 = !{!221}
!221 = !DISubrange(count: 5)
!222 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(name: "Version", scope: !225, file: !226, line: 2, type: !43, isLocal: false, isDefinition: true)
!225 = distinct !DICompileUnit(language: DW_LANG_C99, file: !226, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, globals: !227, splitDebugInlining: false, nameTableKind: None)
!226 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!227 = !{!223}
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(name: "argmatch_die", scope: !230, file: !231, line: 67, type: !279, isLocal: false, isDefinition: true)
!230 = distinct !DICompileUnit(language: DW_LANG_C99, file: !231, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !232, retainedTypes: !233, globals: !278, splitDebugInlining: false, nameTableKind: None)
!231 = !DIFile(filename: "lib/argmatch.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!232 = !{!22}
!233 = !{!98, !43, !37, !234, !235, !162, !239, !274, !277, !197}
!234 = !DISubprogram(name: "quotearg_n_style", scope: !23, file: !23, line: 368, type: !177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!235 = !DISubprogram(name: "quote_n", scope: !236, file: !236, line: 40, type: !237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!236 = !DIFile(filename: "./lib/quote.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!237 = !DISubroutineType(types: !238)
!238 = !{!43, !45, !43}
!239 = !DISubprogram(name: "fputs_unlocked", scope: !48, file: !48, line: 662, type: !240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!240 = !DISubroutineType(types: !241)
!241 = !{!45, !43, !242}
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !53, line: 49, size: 1728, elements: !244)
!244 = !{!245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !243, file: !53, line: 51, baseType: !45, size: 32)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !243, file: !53, line: 54, baseType: !41, size: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !243, file: !53, line: 55, baseType: !41, size: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !243, file: !53, line: 56, baseType: !41, size: 64, offset: 192)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !243, file: !53, line: 57, baseType: !41, size: 64, offset: 256)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !243, file: !53, line: 58, baseType: !41, size: 64, offset: 320)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !243, file: !53, line: 59, baseType: !41, size: 64, offset: 384)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !243, file: !53, line: 60, baseType: !41, size: 64, offset: 448)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !243, file: !53, line: 61, baseType: !41, size: 64, offset: 512)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !243, file: !53, line: 64, baseType: !41, size: 64, offset: 576)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !243, file: !53, line: 65, baseType: !41, size: 64, offset: 640)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !243, file: !53, line: 66, baseType: !41, size: 64, offset: 704)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !243, file: !53, line: 68, baseType: !68, size: 64, offset: 768)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !243, file: !53, line: 70, baseType: !242, size: 64, offset: 832)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !243, file: !53, line: 72, baseType: !45, size: 32, offset: 896)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !243, file: !53, line: 73, baseType: !45, size: 32, offset: 928)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !243, file: !53, line: 74, baseType: !74, size: 64, offset: 960)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !243, file: !53, line: 77, baseType: !78, size: 16, offset: 1024)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !243, file: !53, line: 78, baseType: !80, size: 8, offset: 1040)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !243, file: !53, line: 79, baseType: !82, size: 8, offset: 1048)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !243, file: !53, line: 81, baseType: !86, size: 64, offset: 1088)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !243, file: !53, line: 89, baseType: !89, size: 64, offset: 1152)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !243, file: !53, line: 91, baseType: !91, size: 64, offset: 1216)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !243, file: !53, line: 92, baseType: !94, size: 64, offset: 1280)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !243, file: !53, line: 93, baseType: !242, size: 64, offset: 1344)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !243, file: !53, line: 94, baseType: !98, size: 64, offset: 1408)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !243, file: !53, line: 95, baseType: !100, size: 64, offset: 1472)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !243, file: !53, line: 96, baseType: !45, size: 32, offset: 1536)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !243, file: !53, line: 98, baseType: !105, size: 160, offset: 1568)
!274 = !DISubprogram(name: "quote", scope: !236, file: !236, line: 44, type: !275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!275 = !DISubroutineType(types: !276)
!276 = !{!43, !43}
!277 = !DISubprogram(name: "usage", scope: !231, file: !231, line: 56, type: !153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!278 = !{!228}
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "argmatch_exit_fn", file: !280, line: 61, baseType: !126)
!280 = !DIFile(filename: "./lib/argmatch.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(name: "file_name", scope: !283, file: !284, line: 46, type: !43, isLocal: true, isDefinition: true)
!283 = distinct !DICompileUnit(language: DW_LANG_C99, file: !284, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, retainedTypes: !285, globals: !323, splitDebugInlining: false, nameTableKind: None)
!284 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!285 = !{!286, !37, !322, !162}
!286 = !DISubprogram(name: "close_stream", scope: !287, file: !287, line: 2, type: !288, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!287 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!288 = !DISubroutineType(types: !289)
!289 = !{!45, !290}
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !53, line: 49, size: 1728, elements: !292)
!292 = !{!293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !291, file: !53, line: 51, baseType: !45, size: 32)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !291, file: !53, line: 54, baseType: !41, size: 64, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !291, file: !53, line: 55, baseType: !41, size: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !291, file: !53, line: 56, baseType: !41, size: 64, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !291, file: !53, line: 57, baseType: !41, size: 64, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !291, file: !53, line: 58, baseType: !41, size: 64, offset: 320)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !291, file: !53, line: 59, baseType: !41, size: 64, offset: 384)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !291, file: !53, line: 60, baseType: !41, size: 64, offset: 448)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !291, file: !53, line: 61, baseType: !41, size: 64, offset: 512)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !291, file: !53, line: 64, baseType: !41, size: 64, offset: 576)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !291, file: !53, line: 65, baseType: !41, size: 64, offset: 640)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !291, file: !53, line: 66, baseType: !41, size: 64, offset: 704)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !291, file: !53, line: 68, baseType: !68, size: 64, offset: 768)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !291, file: !53, line: 70, baseType: !290, size: 64, offset: 832)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !291, file: !53, line: 72, baseType: !45, size: 32, offset: 896)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !291, file: !53, line: 73, baseType: !45, size: 32, offset: 928)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !291, file: !53, line: 74, baseType: !74, size: 64, offset: 960)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !291, file: !53, line: 77, baseType: !78, size: 16, offset: 1024)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !291, file: !53, line: 78, baseType: !80, size: 8, offset: 1040)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !291, file: !53, line: 79, baseType: !82, size: 8, offset: 1048)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !291, file: !53, line: 81, baseType: !86, size: 64, offset: 1088)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !291, file: !53, line: 89, baseType: !89, size: 64, offset: 1152)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !291, file: !53, line: 91, baseType: !91, size: 64, offset: 1216)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !291, file: !53, line: 92, baseType: !94, size: 64, offset: 1280)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !291, file: !53, line: 93, baseType: !290, size: 64, offset: 1344)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !291, file: !53, line: 94, baseType: !98, size: 64, offset: 1408)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !291, file: !53, line: 95, baseType: !100, size: 64, offset: 1472)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !291, file: !53, line: 96, baseType: !45, size: 32, offset: 1536)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !291, file: !53, line: 98, baseType: !105, size: 160, offset: 1568)
!322 = !DISubprogram(name: "quotearg_colon", scope: !23, file: !23, line: 391, type: !120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!323 = !{!281, !324}
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !283, file: !284, line: 56, type: !202, isLocal: true, isDefinition: true)
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(name: "exit_failure", scope: !328, file: !329, line: 24, type: !331, isLocal: false, isDefinition: true)
!328 = distinct !DICompileUnit(language: DW_LANG_C99, file: !329, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, globals: !330, splitDebugInlining: false, nameTableKind: None)
!329 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!330 = !{!326}
!331 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !45)
!332 = !DIGlobalVariableExpression(var: !333, expr: !DIExpression())
!333 = distinct !DIGlobalVariable(name: "program_name", scope: !334, file: !335, line: 33, type: !43, isLocal: false, isDefinition: true)
!334 = distinct !DICompileUnit(language: DW_LANG_C99, file: !335, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, retainedTypes: !336, globals: !372, splitDebugInlining: false, nameTableKind: None)
!335 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!336 = !{!98, !337, !41}
!337 = !DISubprogram(name: "fputs", scope: !48, file: !48, line: 626, type: !338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!338 = !DISubroutineType(types: !339)
!339 = !{!45, !43, !340}
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !53, line: 49, size: 1728, elements: !342)
!342 = !{!343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !341, file: !53, line: 51, baseType: !45, size: 32)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !341, file: !53, line: 54, baseType: !41, size: 64, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !341, file: !53, line: 55, baseType: !41, size: 64, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !341, file: !53, line: 56, baseType: !41, size: 64, offset: 192)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !341, file: !53, line: 57, baseType: !41, size: 64, offset: 256)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !341, file: !53, line: 58, baseType: !41, size: 64, offset: 320)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !341, file: !53, line: 59, baseType: !41, size: 64, offset: 384)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !341, file: !53, line: 60, baseType: !41, size: 64, offset: 448)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !341, file: !53, line: 61, baseType: !41, size: 64, offset: 512)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !341, file: !53, line: 64, baseType: !41, size: 64, offset: 576)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !341, file: !53, line: 65, baseType: !41, size: 64, offset: 640)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !341, file: !53, line: 66, baseType: !41, size: 64, offset: 704)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !341, file: !53, line: 68, baseType: !68, size: 64, offset: 768)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !341, file: !53, line: 70, baseType: !340, size: 64, offset: 832)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !341, file: !53, line: 72, baseType: !45, size: 32, offset: 896)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !341, file: !53, line: 73, baseType: !45, size: 32, offset: 928)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !341, file: !53, line: 74, baseType: !74, size: 64, offset: 960)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !341, file: !53, line: 77, baseType: !78, size: 16, offset: 1024)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !341, file: !53, line: 78, baseType: !80, size: 8, offset: 1040)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !341, file: !53, line: 79, baseType: !82, size: 8, offset: 1048)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !341, file: !53, line: 81, baseType: !86, size: 64, offset: 1088)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !341, file: !53, line: 89, baseType: !89, size: 64, offset: 1152)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !341, file: !53, line: 91, baseType: !91, size: 64, offset: 1216)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !341, file: !53, line: 92, baseType: !94, size: 64, offset: 1280)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !341, file: !53, line: 93, baseType: !340, size: 64, offset: 1344)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !341, file: !53, line: 94, baseType: !98, size: 64, offset: 1408)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !341, file: !53, line: 95, baseType: !100, size: 64, offset: 1472)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !341, file: !53, line: 96, baseType: !45, size: 32, offset: 1536)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !341, file: !53, line: 98, baseType: !105, size: 160, offset: 1568)
!372 = !{!332}
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !375, file: !376, line: 85, type: !484, isLocal: false, isDefinition: true)
!375 = distinct !DICompileUnit(language: DW_LANG_C99, file: !376, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !377, retainedTypes: !398, globals: !457, splitDebugInlining: false, nameTableKind: None)
!376 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!377 = !{!22, !378, !383}
!378 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !23, line: 242, baseType: !6, size: 32, elements: !379)
!379 = !{!380, !381, !382}
!380 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!381 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!382 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!383 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !384, line: 46, baseType: !6, size: 32, elements: !385)
!384 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!385 = !{!386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397}
!386 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!387 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!388 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!389 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!390 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!391 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!392 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!393 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!394 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!395 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!396 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!397 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!398 = !{!399, !402, !189, !418, !45, !78, !421, !100, !436, !440, !37, !446, !450, !41, !194, !192, !454}
!399 = !DISubprogram(name: "xmemdup", scope: !193, file: !193, line: 62, type: !400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!400 = !DISubroutineType(types: !401)
!401 = !{!98, !144, !102}
!402 = !DISubprogram(name: "quotearg_alloc_mem", scope: !23, file: !23, line: 342, type: !403, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!403 = !DISubroutineType(types: !404)
!404 = !{!41, !43, !102, !405, !406}
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !408)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !376, line: 65, size: 448, elements: !409)
!409 = !{!410, !411, !412, !416, !417}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !408, file: !376, line: 68, baseType: !22, size: 32)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !408, file: !376, line: 71, baseType: !45, size: 32, offset: 32)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !408, file: !376, line: 75, baseType: !413, size: 256, offset: 64)
!413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !414)
!414 = !{!415}
!415 = !DISubrange(count: 8)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !408, file: !376, line: 78, baseType: !43, size: 64, offset: 320)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !408, file: !376, line: 81, baseType: !43, size: 64, offset: 384)
!418 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !23, file: !23, line: 408, type: !419, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!419 = !DISubroutineType(types: !420)
!420 = !{!41, !45, !43, !43, !43, !102}
!421 = !DISubprogram(name: "rpl_mbrtowc", scope: !422, file: !422, line: 717, type: !423, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!422 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!423 = !DISubroutineType(types: !424)
!424 = !{!102, !142, !43, !102, !425}
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !427, line: 13, size: 64, elements: !428)
!427 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!428 = !{!429, !430}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !426, file: !427, line: 15, baseType: !45, size: 32)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !426, file: !427, line: 20, baseType: !431, size: 32, offset: 32)
!431 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !426, file: !427, line: 16, size: 32, elements: !432)
!432 = !{!433, !434}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !431, file: !427, line: 18, baseType: !6, size: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !431, file: !427, line: 19, baseType: !435, size: 32)
!435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 32, elements: !214)
!436 = !DISubprogram(name: "iswprint", scope: !437, file: !437, line: 120, type: !438, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!437 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!438 = !DISubroutineType(types: !439)
!439 = !{!45, !6}
!440 = !DISubprogram(name: "mbsinit", scope: !441, file: !441, line: 292, type: !442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!441 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!442 = !DISubroutineType(types: !443)
!443 = !{!45, !444}
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !426)
!446 = !DISubprogram(name: "locale_charset", scope: !447, file: !447, line: 35, type: !448, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!447 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!448 = !DISubroutineType(types: !449)
!449 = !{!43}
!450 = !DISubprogram(name: "c_strcasecmp", scope: !451, file: !451, line: 42, type: !452, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!451 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!452 = !DISubroutineType(types: !453)
!453 = !{!45, !43, !43}
!454 = !DISubprogram(name: "xrealloc", scope: !193, file: !193, line: 59, type: !455, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!455 = !DISubroutineType(types: !456)
!456 = !{!98, !98, !102}
!457 = !{!373, !458, !464, !466, !468, !473, !480, !482}
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !375, file: !376, line: 101, type: !460, isLocal: false, isDefinition: true)
!460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !461, size: 320, elements: !462)
!461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!462 = !{!463}
!463 = !DISubrange(count: 10)
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !375, file: !376, line: 1052, type: !408, isLocal: false, isDefinition: true)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !375, file: !376, line: 116, type: !408, isLocal: true, isDefinition: true)
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(name: "slot0", scope: !375, file: !376, line: 842, type: !470, isLocal: true, isDefinition: true)
!470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 2048, elements: !471)
!471 = !{!472}
!472 = !DISubrange(count: 256)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(name: "slotvec", scope: !375, file: !376, line: 845, type: !475, isLocal: true, isDefinition: true)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !376, line: 834, size: 128, elements: !477)
!477 = !{!478, !479}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !476, file: !376, line: 836, baseType: !100, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !476, file: !376, line: 837, baseType: !41, size: 64, offset: 64)
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(name: "nslots", scope: !375, file: !376, line: 843, type: !45, isLocal: true, isDefinition: true)
!482 = !DIGlobalVariableExpression(var: !483, expr: !DIExpression())
!483 = distinct !DIGlobalVariable(name: "slotvec0", scope: !375, file: !376, line: 844, type: !476, isLocal: true, isDefinition: true)
!484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 704, elements: !485)
!485 = !{!486}
!486 = !DISubrange(count: 11)
!487 = !DIGlobalVariableExpression(var: !488, expr: !DIExpression())
!488 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !489, file: !490, line: 26, type: !492, isLocal: false, isDefinition: true)
!489 = distinct !DICompileUnit(language: DW_LANG_C99, file: !490, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, globals: !491, splitDebugInlining: false, nameTableKind: None)
!490 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!491 = !{!487}
!492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 376, elements: !493)
!493 = !{!494}
!494 = !DISubrange(count: 47)
!495 = !DIGlobalVariableExpression(var: !496, expr: !DIExpression())
!496 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !497, file: !498, line: 507, type: !45, isLocal: true, isDefinition: true)
!497 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !498, file: !498, line: 488, type: !499, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !501, retainedNodes: !508)
!498 = !DIFile(filename: "lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!499 = !DISubroutineType(types: !500)
!500 = !{!45, !45, !45}
!501 = distinct !DICompileUnit(language: DW_LANG_C99, file: !498, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, retainedTypes: !502, globals: !507, splitDebugInlining: false, nameTableKind: None)
!502 = !{!503, !158}
!503 = !DISubprogram(name: "fcntl", scope: !504, file: !504, line: 176, type: !505, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!504 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!505 = !DISubroutineType(types: !506)
!506 = !{!45, !45, !45, null}
!507 = !{!495}
!508 = !{!509, !510, !511, !512, !515}
!509 = !DILocalVariable(name: "fd", arg: 1, scope: !497, file: !498, line: 488, type: !45)
!510 = !DILocalVariable(name: "target", arg: 2, scope: !497, file: !498, line: 488, type: !45)
!511 = !DILocalVariable(name: "result", scope: !497, file: !498, line: 490, type: !45)
!512 = !DILocalVariable(name: "flags", scope: !513, file: !498, line: 531, type: !45)
!513 = distinct !DILexicalBlock(scope: !514, file: !498, line: 530, column: 5)
!514 = distinct !DILexicalBlock(scope: !497, file: !498, line: 529, column: 7)
!515 = !DILocalVariable(name: "saved_errno", scope: !516, file: !498, line: 534, type: !45)
!516 = distinct !DILexicalBlock(scope: !517, file: !498, line: 533, column: 9)
!517 = distinct !DILexicalBlock(scope: !513, file: !498, line: 532, column: 11)
!518 = distinct !DICompileUnit(language: DW_LANG_C99, file: !519, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !520, retainedTypes: !521, splitDebugInlining: false, nameTableKind: None)
!519 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!520 = !{!13}
!521 = !{!522, !525}
!522 = !DISubprogram(name: "posix_fadvise", scope: !504, file: !504, line: 288, type: !523, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!523 = !DISubroutineType(types: !524)
!524 = !{!45, !45, !76, !76, !45}
!525 = !DISubprogram(name: "fileno", scope: !48, file: !48, line: 786, type: !526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!526 = !DISubroutineType(types: !527)
!527 = !{!45, !528}
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !53, line: 49, size: 1728, elements: !530)
!530 = !{!531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !529, file: !53, line: 51, baseType: !45, size: 32)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !529, file: !53, line: 54, baseType: !41, size: 64, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !529, file: !53, line: 55, baseType: !41, size: 64, offset: 128)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !529, file: !53, line: 56, baseType: !41, size: 64, offset: 192)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !529, file: !53, line: 57, baseType: !41, size: 64, offset: 256)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !529, file: !53, line: 58, baseType: !41, size: 64, offset: 320)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !529, file: !53, line: 59, baseType: !41, size: 64, offset: 384)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !529, file: !53, line: 60, baseType: !41, size: 64, offset: 448)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !529, file: !53, line: 61, baseType: !41, size: 64, offset: 512)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !529, file: !53, line: 64, baseType: !41, size: 64, offset: 576)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !529, file: !53, line: 65, baseType: !41, size: 64, offset: 640)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !529, file: !53, line: 66, baseType: !41, size: 64, offset: 704)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !529, file: !53, line: 68, baseType: !68, size: 64, offset: 768)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !529, file: !53, line: 70, baseType: !528, size: 64, offset: 832)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !529, file: !53, line: 72, baseType: !45, size: 32, offset: 896)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !529, file: !53, line: 73, baseType: !45, size: 32, offset: 928)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !529, file: !53, line: 74, baseType: !74, size: 64, offset: 960)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !529, file: !53, line: 77, baseType: !78, size: 16, offset: 1024)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !529, file: !53, line: 78, baseType: !80, size: 8, offset: 1040)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !529, file: !53, line: 79, baseType: !82, size: 8, offset: 1048)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !529, file: !53, line: 81, baseType: !86, size: 64, offset: 1088)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !529, file: !53, line: 89, baseType: !89, size: 64, offset: 1152)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !529, file: !53, line: 91, baseType: !91, size: 64, offset: 1216)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !529, file: !53, line: 92, baseType: !94, size: 64, offset: 1280)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !529, file: !53, line: 93, baseType: !528, size: 64, offset: 1344)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !529, file: !53, line: 94, baseType: !98, size: 64, offset: 1408)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !529, file: !53, line: 95, baseType: !100, size: 64, offset: 1472)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !529, file: !53, line: 96, baseType: !45, size: 32, offset: 1536)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !529, file: !53, line: 98, baseType: !105, size: 160, offset: 1568)
!560 = distinct !DICompileUnit(language: DW_LANG_C99, file: !561, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, retainedTypes: !562, splitDebugInlining: false, nameTableKind: None)
!561 = !DIFile(filename: "lib/fopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!562 = !{!563, !598, !600, !601, !158}
!563 = !DISubprogram(name: "fileno", scope: !48, file: !48, line: 786, type: !564, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!564 = !DISubroutineType(types: !565)
!565 = !{!45, !566}
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !53, line: 49, size: 1728, elements: !568)
!568 = !{!569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !567, file: !53, line: 51, baseType: !45, size: 32)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !567, file: !53, line: 54, baseType: !41, size: 64, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !567, file: !53, line: 55, baseType: !41, size: 64, offset: 128)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !567, file: !53, line: 56, baseType: !41, size: 64, offset: 192)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !567, file: !53, line: 57, baseType: !41, size: 64, offset: 256)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !567, file: !53, line: 58, baseType: !41, size: 64, offset: 320)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !567, file: !53, line: 59, baseType: !41, size: 64, offset: 384)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !567, file: !53, line: 60, baseType: !41, size: 64, offset: 448)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !567, file: !53, line: 61, baseType: !41, size: 64, offset: 512)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !567, file: !53, line: 64, baseType: !41, size: 64, offset: 576)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !567, file: !53, line: 65, baseType: !41, size: 64, offset: 640)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !567, file: !53, line: 66, baseType: !41, size: 64, offset: 704)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !567, file: !53, line: 68, baseType: !68, size: 64, offset: 768)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !567, file: !53, line: 70, baseType: !566, size: 64, offset: 832)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !567, file: !53, line: 72, baseType: !45, size: 32, offset: 896)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !567, file: !53, line: 73, baseType: !45, size: 32, offset: 928)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !567, file: !53, line: 74, baseType: !74, size: 64, offset: 960)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !567, file: !53, line: 77, baseType: !78, size: 16, offset: 1024)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !567, file: !53, line: 78, baseType: !80, size: 8, offset: 1040)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !567, file: !53, line: 79, baseType: !82, size: 8, offset: 1048)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !567, file: !53, line: 81, baseType: !86, size: 64, offset: 1088)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !567, file: !53, line: 89, baseType: !89, size: 64, offset: 1152)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !567, file: !53, line: 91, baseType: !91, size: 64, offset: 1216)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !567, file: !53, line: 92, baseType: !94, size: 64, offset: 1280)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !567, file: !53, line: 93, baseType: !566, size: 64, offset: 1344)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !567, file: !53, line: 94, baseType: !98, size: 64, offset: 1408)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !567, file: !53, line: 95, baseType: !100, size: 64, offset: 1472)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !567, file: !53, line: 96, baseType: !45, size: 32, offset: 1536)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !567, file: !53, line: 98, baseType: !105, size: 160, offset: 1568)
!598 = !DISubprogram(name: "dup_safer", scope: !599, file: !599, line: 20, type: !160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!599 = !DIFile(filename: "./lib/unistd-safer.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!600 = !DISubprogram(name: "rpl_fclose", scope: !186, file: !186, line: 672, type: !564, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!601 = !DISubprogram(name: "fdopen", scope: !48, file: !48, line: 279, type: !602, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!602 = !DISubroutineType(types: !603)
!603 = !{!566, !45, !43}
!604 = distinct !DICompileUnit(language: DW_LANG_C99, file: !605, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, retainedTypes: !606, splitDebugInlining: false, nameTableKind: None)
!605 = !DIFile(filename: "lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!606 = !{!607}
!607 = !DISubprogram(name: "rpl_fcntl", scope: !608, file: !608, line: 588, type: !505, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!608 = !DIFile(filename: "./lib/fcntl.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!609 = distinct !DICompileUnit(language: DW_LANG_C99, file: !610, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !611, retainedTypes: !615, splitDebugInlining: false, nameTableKind: None)
!610 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!611 = !{!612}
!612 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !610, line: 40, baseType: !6, size: 32, elements: !613)
!613 = !{!614}
!614 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!615 = !{!37, !616, !98}
!616 = !DISubprogram(name: "fputs_unlocked", scope: !48, file: !48, line: 662, type: !617, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!617 = !DISubroutineType(types: !618)
!618 = !{!45, !43, !619}
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !53, line: 49, size: 1728, elements: !621)
!621 = !{!622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !620, file: !53, line: 51, baseType: !45, size: 32)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !620, file: !53, line: 54, baseType: !41, size: 64, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !620, file: !53, line: 55, baseType: !41, size: 64, offset: 128)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !620, file: !53, line: 56, baseType: !41, size: 64, offset: 192)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !620, file: !53, line: 57, baseType: !41, size: 64, offset: 256)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !620, file: !53, line: 58, baseType: !41, size: 64, offset: 320)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !620, file: !53, line: 59, baseType: !41, size: 64, offset: 384)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !620, file: !53, line: 60, baseType: !41, size: 64, offset: 448)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !620, file: !53, line: 61, baseType: !41, size: 64, offset: 512)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !620, file: !53, line: 64, baseType: !41, size: 64, offset: 576)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !620, file: !53, line: 65, baseType: !41, size: 64, offset: 640)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !620, file: !53, line: 66, baseType: !41, size: 64, offset: 704)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !620, file: !53, line: 68, baseType: !68, size: 64, offset: 768)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !620, file: !53, line: 70, baseType: !619, size: 64, offset: 832)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !620, file: !53, line: 72, baseType: !45, size: 32, offset: 896)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !620, file: !53, line: 73, baseType: !45, size: 32, offset: 928)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !620, file: !53, line: 74, baseType: !74, size: 64, offset: 960)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !620, file: !53, line: 77, baseType: !78, size: 16, offset: 1024)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !620, file: !53, line: 78, baseType: !80, size: 8, offset: 1040)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !620, file: !53, line: 79, baseType: !82, size: 8, offset: 1048)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !620, file: !53, line: 81, baseType: !86, size: 64, offset: 1088)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !620, file: !53, line: 89, baseType: !89, size: 64, offset: 1152)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !620, file: !53, line: 91, baseType: !91, size: 64, offset: 1216)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !620, file: !53, line: 92, baseType: !94, size: 64, offset: 1280)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !620, file: !53, line: 93, baseType: !619, size: 64, offset: 1344)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !620, file: !53, line: 94, baseType: !98, size: 64, offset: 1408)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !620, file: !53, line: 95, baseType: !100, size: 64, offset: 1472)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !620, file: !53, line: 96, baseType: !45, size: 32, offset: 1536)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !620, file: !53, line: 98, baseType: !105, size: 160, offset: 1568)
!651 = distinct !DICompileUnit(language: DW_LANG_C99, file: !652, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !653, retainedTypes: !666, splitDebugInlining: false, nameTableKind: None)
!652 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!653 = !{!654}
!654 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !655, file: !193, line: 186, baseType: !6, size: 32, elements: !664)
!655 = distinct !DISubprogram(name: "x2nrealloc", scope: !193, file: !193, line: 174, type: !656, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !651, retainedNodes: !659)
!656 = !DISubroutineType(types: !657)
!657 = !{!98, !98, !658, !100}
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!659 = !{!660, !661, !662, !663}
!660 = !DILocalVariable(name: "p", arg: 1, scope: !655, file: !193, line: 174, type: !98)
!661 = !DILocalVariable(name: "pn", arg: 2, scope: !655, file: !193, line: 174, type: !658)
!662 = !DILocalVariable(name: "s", arg: 3, scope: !655, file: !193, line: 174, type: !100)
!663 = !DILocalVariable(name: "n", scope: !655, file: !193, line: 176, type: !100)
!664 = !{!665}
!665 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!666 = !{!100, !192, !194, !454, !41, !189, !98, !667, !670}
!667 = !DISubprogram(name: "xcalloc", scope: !193, file: !193, line: 57, type: !668, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!668 = !DISubroutineType(types: !669)
!669 = !{!98, !102, !102}
!670 = !DISubprogram(name: "rpl_calloc", scope: !671, file: !671, line: 688, type: !668, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!671 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!672 = distinct !DICompileUnit(language: DW_LANG_C99, file: !673, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, retainedTypes: !674, splitDebugInlining: false, nameTableKind: None)
!673 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!674 = !{!37, !162}
!675 = distinct !DICompileUnit(language: DW_LANG_C99, file: !676, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, retainedTypes: !677, splitDebugInlining: false, nameTableKind: None)
!676 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!677 = !{!98}
!678 = distinct !DICompileUnit(language: DW_LANG_C99, file: !679, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, retainedTypes: !680, splitDebugInlining: false, nameTableKind: None)
!679 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!680 = !{!681, !716, !717, !720}
!681 = !DISubprogram(name: "fileno", scope: !48, file: !48, line: 786, type: !682, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!682 = !DISubroutineType(types: !683)
!683 = !{!45, !684}
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !53, line: 49, size: 1728, elements: !686)
!686 = !{!687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !685, file: !53, line: 51, baseType: !45, size: 32)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !685, file: !53, line: 54, baseType: !41, size: 64, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !685, file: !53, line: 55, baseType: !41, size: 64, offset: 128)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !685, file: !53, line: 56, baseType: !41, size: 64, offset: 192)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !685, file: !53, line: 57, baseType: !41, size: 64, offset: 256)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !685, file: !53, line: 58, baseType: !41, size: 64, offset: 320)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !685, file: !53, line: 59, baseType: !41, size: 64, offset: 384)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !685, file: !53, line: 60, baseType: !41, size: 64, offset: 448)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !685, file: !53, line: 61, baseType: !41, size: 64, offset: 512)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !685, file: !53, line: 64, baseType: !41, size: 64, offset: 576)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !685, file: !53, line: 65, baseType: !41, size: 64, offset: 640)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !685, file: !53, line: 66, baseType: !41, size: 64, offset: 704)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !685, file: !53, line: 68, baseType: !68, size: 64, offset: 768)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !685, file: !53, line: 70, baseType: !684, size: 64, offset: 832)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !685, file: !53, line: 72, baseType: !45, size: 32, offset: 896)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !685, file: !53, line: 73, baseType: !45, size: 32, offset: 928)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !685, file: !53, line: 74, baseType: !74, size: 64, offset: 960)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !685, file: !53, line: 77, baseType: !78, size: 16, offset: 1024)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !685, file: !53, line: 78, baseType: !80, size: 8, offset: 1040)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !685, file: !53, line: 79, baseType: !82, size: 8, offset: 1048)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !685, file: !53, line: 81, baseType: !86, size: 64, offset: 1088)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !685, file: !53, line: 89, baseType: !89, size: 64, offset: 1152)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !685, file: !53, line: 91, baseType: !91, size: 64, offset: 1216)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !685, file: !53, line: 92, baseType: !94, size: 64, offset: 1280)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !685, file: !53, line: 93, baseType: !684, size: 64, offset: 1344)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !685, file: !53, line: 94, baseType: !98, size: 64, offset: 1408)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !685, file: !53, line: 95, baseType: !100, size: 64, offset: 1472)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !685, file: !53, line: 96, baseType: !45, size: 32, offset: 1536)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !685, file: !53, line: 98, baseType: !105, size: 160, offset: 1568)
!716 = !DISubprogram(name: "fclose", scope: !48, file: !48, line: 213, type: !682, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!717 = !DISubprogram(name: "lseek", scope: !159, file: !159, line: 334, type: !718, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!718 = !DISubroutineType(types: !719)
!719 = !{!76, !45, !76, !45}
!720 = !DISubprogram(name: "rpl_fflush", scope: !186, file: !186, line: 718, type: !682, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!721 = distinct !DICompileUnit(language: DW_LANG_C99, file: !722, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, retainedTypes: !723, splitDebugInlining: false, nameTableKind: None)
!722 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!723 = !{!98, !724, !759}
!724 = !DISubprogram(name: "fflush", scope: !48, file: !48, line: 218, type: !725, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!725 = !DISubroutineType(types: !726)
!726 = !{!45, !727}
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !53, line: 49, size: 1728, elements: !729)
!729 = !{!730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !728, file: !53, line: 51, baseType: !45, size: 32)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !728, file: !53, line: 54, baseType: !41, size: 64, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !728, file: !53, line: 55, baseType: !41, size: 64, offset: 128)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !728, file: !53, line: 56, baseType: !41, size: 64, offset: 192)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !728, file: !53, line: 57, baseType: !41, size: 64, offset: 256)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !728, file: !53, line: 58, baseType: !41, size: 64, offset: 320)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !728, file: !53, line: 59, baseType: !41, size: 64, offset: 384)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !728, file: !53, line: 60, baseType: !41, size: 64, offset: 448)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !728, file: !53, line: 61, baseType: !41, size: 64, offset: 512)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !728, file: !53, line: 64, baseType: !41, size: 64, offset: 576)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !728, file: !53, line: 65, baseType: !41, size: 64, offset: 640)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !728, file: !53, line: 66, baseType: !41, size: 64, offset: 704)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !728, file: !53, line: 68, baseType: !68, size: 64, offset: 768)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !728, file: !53, line: 70, baseType: !727, size: 64, offset: 832)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !728, file: !53, line: 72, baseType: !45, size: 32, offset: 896)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !728, file: !53, line: 73, baseType: !45, size: 32, offset: 928)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !728, file: !53, line: 74, baseType: !74, size: 64, offset: 960)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !728, file: !53, line: 77, baseType: !78, size: 16, offset: 1024)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !728, file: !53, line: 78, baseType: !80, size: 8, offset: 1040)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !728, file: !53, line: 79, baseType: !82, size: 8, offset: 1048)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !728, file: !53, line: 81, baseType: !86, size: 64, offset: 1088)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !728, file: !53, line: 89, baseType: !89, size: 64, offset: 1152)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !728, file: !53, line: 91, baseType: !91, size: 64, offset: 1216)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !728, file: !53, line: 92, baseType: !94, size: 64, offset: 1280)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !728, file: !53, line: 93, baseType: !727, size: 64, offset: 1344)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !728, file: !53, line: 94, baseType: !98, size: 64, offset: 1408)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !728, file: !53, line: 95, baseType: !100, size: 64, offset: 1472)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !728, file: !53, line: 96, baseType: !45, size: 32, offset: 1536)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !728, file: !53, line: 98, baseType: !105, size: 160, offset: 1568)
!759 = !DISubprogram(name: "rpl_fseeko", scope: !186, file: !186, line: 1034, type: !760, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!760 = !DISubroutineType(types: !761)
!761 = !{!45, !727, !76, !45}
!762 = distinct !DICompileUnit(language: DW_LANG_C99, file: !763, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, retainedTypes: !764, splitDebugInlining: false, nameTableKind: None)
!763 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!764 = !{!98, !765, !717, !800}
!765 = !DISubprogram(name: "fileno", scope: !48, file: !48, line: 786, type: !766, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!766 = !DISubroutineType(types: !767)
!767 = !{!45, !768}
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !53, line: 49, size: 1728, elements: !770)
!770 = !{!771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !769, file: !53, line: 51, baseType: !45, size: 32)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !769, file: !53, line: 54, baseType: !41, size: 64, offset: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !769, file: !53, line: 55, baseType: !41, size: 64, offset: 128)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !769, file: !53, line: 56, baseType: !41, size: 64, offset: 192)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !769, file: !53, line: 57, baseType: !41, size: 64, offset: 256)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !769, file: !53, line: 58, baseType: !41, size: 64, offset: 320)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !769, file: !53, line: 59, baseType: !41, size: 64, offset: 384)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !769, file: !53, line: 60, baseType: !41, size: 64, offset: 448)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !769, file: !53, line: 61, baseType: !41, size: 64, offset: 512)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !769, file: !53, line: 64, baseType: !41, size: 64, offset: 576)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !769, file: !53, line: 65, baseType: !41, size: 64, offset: 640)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !769, file: !53, line: 66, baseType: !41, size: 64, offset: 704)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !769, file: !53, line: 68, baseType: !68, size: 64, offset: 768)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !769, file: !53, line: 70, baseType: !768, size: 64, offset: 832)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !769, file: !53, line: 72, baseType: !45, size: 32, offset: 896)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !769, file: !53, line: 73, baseType: !45, size: 32, offset: 928)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !769, file: !53, line: 74, baseType: !74, size: 64, offset: 960)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !769, file: !53, line: 77, baseType: !78, size: 16, offset: 1024)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !769, file: !53, line: 78, baseType: !80, size: 8, offset: 1040)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !769, file: !53, line: 79, baseType: !82, size: 8, offset: 1048)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !769, file: !53, line: 81, baseType: !86, size: 64, offset: 1088)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !769, file: !53, line: 89, baseType: !89, size: 64, offset: 1152)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !769, file: !53, line: 91, baseType: !91, size: 64, offset: 1216)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !769, file: !53, line: 92, baseType: !94, size: 64, offset: 1280)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !769, file: !53, line: 93, baseType: !768, size: 64, offset: 1344)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !769, file: !53, line: 94, baseType: !98, size: 64, offset: 1408)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !769, file: !53, line: 95, baseType: !100, size: 64, offset: 1472)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !769, file: !53, line: 96, baseType: !45, size: 32, offset: 1536)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !769, file: !53, line: 98, baseType: !105, size: 160, offset: 1568)
!800 = !DISubprogram(name: "fseeko", scope: !48, file: !48, line: 707, type: !801, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!801 = !DISubroutineType(types: !802)
!802 = !{!45, !768, !76, !45}
!803 = distinct !DICompileUnit(language: DW_LANG_C99, file: !804, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, retainedTypes: !805, splitDebugInlining: false, nameTableKind: None)
!804 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!805 = !{!806, !100, !818}
!806 = !DISubprogram(name: "mbrtowc", scope: !441, file: !441, line: 296, type: !807, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!807 = !DISubroutineType(types: !808)
!808 = !{!102, !142, !43, !102, !809}
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !427, line: 13, size: 64, elements: !811)
!811 = !{!812, !813}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !810, file: !427, line: 15, baseType: !45, size: 32)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !810, file: !427, line: 20, baseType: !814, size: 32, offset: 32)
!814 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !810, file: !427, line: 16, size: 32, elements: !815)
!815 = !{!816, !817}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !814, file: !427, line: 18, baseType: !6, size: 32)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !814, file: !427, line: 19, baseType: !435, size: 32)
!818 = !DISubprogram(name: "hard_locale", scope: !819, file: !819, line: 26, type: !820, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!819 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!820 = !DISubroutineType(types: !821)
!821 = !{!202, !45}
!822 = distinct !DICompileUnit(language: DW_LANG_C99, file: !823, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, retainedTypes: !824, splitDebugInlining: false, nameTableKind: None)
!823 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!824 = !{!825}
!825 = !DISubprogram(name: "rpl_fclose", scope: !186, file: !186, line: 672, type: !826, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!826 = !DISubroutineType(types: !827)
!827 = !{!45, !828}
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !53, line: 49, size: 1728, elements: !830)
!830 = !{!831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !829, file: !53, line: 51, baseType: !45, size: 32)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !829, file: !53, line: 54, baseType: !41, size: 64, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !829, file: !53, line: 55, baseType: !41, size: 64, offset: 128)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !829, file: !53, line: 56, baseType: !41, size: 64, offset: 192)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !829, file: !53, line: 57, baseType: !41, size: 64, offset: 256)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !829, file: !53, line: 58, baseType: !41, size: 64, offset: 320)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !829, file: !53, line: 59, baseType: !41, size: 64, offset: 384)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !829, file: !53, line: 60, baseType: !41, size: 64, offset: 448)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !829, file: !53, line: 61, baseType: !41, size: 64, offset: 512)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !829, file: !53, line: 64, baseType: !41, size: 64, offset: 576)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !829, file: !53, line: 65, baseType: !41, size: 64, offset: 640)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !829, file: !53, line: 66, baseType: !41, size: 64, offset: 704)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !829, file: !53, line: 68, baseType: !68, size: 64, offset: 768)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !829, file: !53, line: 70, baseType: !828, size: 64, offset: 832)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !829, file: !53, line: 72, baseType: !45, size: 32, offset: 896)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !829, file: !53, line: 73, baseType: !45, size: 32, offset: 928)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !829, file: !53, line: 74, baseType: !74, size: 64, offset: 960)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !829, file: !53, line: 77, baseType: !78, size: 16, offset: 1024)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !829, file: !53, line: 78, baseType: !80, size: 8, offset: 1040)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !829, file: !53, line: 79, baseType: !82, size: 8, offset: 1048)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !829, file: !53, line: 81, baseType: !86, size: 64, offset: 1088)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !829, file: !53, line: 89, baseType: !89, size: 64, offset: 1152)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !829, file: !53, line: 91, baseType: !91, size: 64, offset: 1216)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !829, file: !53, line: 92, baseType: !94, size: 64, offset: 1280)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !829, file: !53, line: 93, baseType: !828, size: 64, offset: 1344)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !829, file: !53, line: 94, baseType: !98, size: 64, offset: 1408)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !829, file: !53, line: 95, baseType: !100, size: 64, offset: 1472)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !829, file: !53, line: 96, baseType: !45, size: 32, offset: 1536)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !829, file: !53, line: 98, baseType: !105, size: 160, offset: 1568)
!860 = distinct !DICompileUnit(language: DW_LANG_C99, file: !861, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, retainedTypes: !862, splitDebugInlining: false, nameTableKind: None)
!861 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!862 = !{!863}
!863 = !DISubprogram(name: "setlocale_null_r", scope: !864, file: !864, line: 64, type: !865, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!864 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!865 = !DISubroutineType(types: !866)
!866 = !{!45, !45, !41, !102}
!867 = distinct !DICompileUnit(language: DW_LANG_C99, file: !868, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !869, retainedTypes: !1256, splitDebugInlining: false, nameTableKind: None)
!868 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!869 = !{!870}
!870 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !871, line: 41, baseType: !6, size: 32, elements: !872)
!871 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!872 = !{!873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255}
!873 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!874 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!875 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!876 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!877 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!878 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!879 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!880 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!881 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!882 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!883 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!884 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!885 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!886 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!887 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!888 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!889 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!890 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!891 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!892 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!893 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!894 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!895 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!896 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!897 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!898 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!899 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!900 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!901 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!902 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!903 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!904 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!905 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!906 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!907 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!908 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!909 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!910 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!911 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!912 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!913 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!914 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!915 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!916 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!917 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!918 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!919 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!920 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!921 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!922 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!923 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!924 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!925 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!926 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!927 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!928 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!929 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!930 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!931 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!932 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!933 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!934 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!935 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!936 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!937 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!938 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!939 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!940 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!941 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!942 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!943 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!944 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!945 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!946 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!947 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!948 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!949 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!950 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!951 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!952 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!953 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!954 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!955 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!956 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!957 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!958 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!959 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!960 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!961 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!962 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!963 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!964 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!965 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!966 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!967 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!968 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!969 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!970 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!971 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!972 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!973 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!974 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!975 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!976 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!977 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!978 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!979 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!980 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!981 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!982 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!983 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!984 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!985 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!986 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!987 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!988 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!989 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!990 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!991 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!992 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!993 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!994 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!995 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!996 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!997 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!998 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!999 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!1000 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!1001 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!1002 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!1003 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!1004 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!1005 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!1006 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!1007 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!1008 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!1009 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!1010 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!1011 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!1012 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!1013 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!1014 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!1015 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!1016 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!1017 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!1018 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!1019 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!1020 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!1021 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!1022 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!1023 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!1024 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!1025 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!1026 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!1027 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!1028 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!1029 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!1030 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!1031 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!1032 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!1033 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!1034 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!1035 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!1036 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!1037 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!1038 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!1039 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!1040 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!1041 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!1042 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!1043 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!1044 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!1045 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!1046 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!1047 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!1048 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!1049 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!1050 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!1051 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!1052 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!1053 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!1054 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!1055 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!1056 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!1057 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!1058 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!1059 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!1060 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!1061 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!1062 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!1063 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!1064 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!1065 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!1066 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!1067 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!1068 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!1069 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!1070 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!1071 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!1072 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!1073 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!1074 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!1075 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!1076 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!1077 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!1078 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!1079 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!1080 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!1081 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!1082 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!1083 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!1084 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!1085 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!1086 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!1087 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!1088 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!1089 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!1090 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!1091 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!1092 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!1093 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!1094 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!1095 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!1096 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!1097 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!1098 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!1099 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!1100 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!1101 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!1102 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!1103 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!1104 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!1105 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!1106 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!1107 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!1108 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!1109 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!1110 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!1111 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!1112 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!1113 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!1114 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!1115 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!1116 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!1117 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!1118 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!1119 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!1120 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!1121 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!1122 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!1123 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!1124 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!1125 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!1126 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!1127 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!1128 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!1129 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!1130 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!1131 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!1132 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!1133 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!1134 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!1135 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!1136 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!1137 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!1138 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!1139 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!1140 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!1141 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!1142 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!1143 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!1144 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!1145 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!1146 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!1147 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!1148 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!1149 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!1150 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!1151 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!1152 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!1153 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!1154 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!1155 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!1156 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!1157 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!1158 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!1159 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!1160 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!1161 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!1162 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!1163 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!1164 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!1165 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!1166 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!1167 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!1168 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!1169 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!1170 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!1171 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!1172 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!1173 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!1174 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!1175 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!1176 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!1177 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!1178 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!1179 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!1180 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!1181 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!1182 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!1183 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!1184 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!1185 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!1186 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!1187 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!1188 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!1189 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!1190 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!1191 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!1192 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!1193 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!1194 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!1195 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!1196 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!1197 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!1198 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!1199 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!1200 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!1201 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!1202 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!1203 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!1204 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!1205 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!1206 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!1207 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!1208 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!1209 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!1210 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!1211 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!1212 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!1213 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!1214 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!1215 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!1216 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!1217 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!1218 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!1219 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!1220 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!1221 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!1222 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!1223 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!1224 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!1225 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!1226 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!1227 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!1228 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!1229 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!1230 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!1231 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!1232 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!1233 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!1234 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!1235 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!1236 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!1237 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!1238 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!1239 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!1240 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!1241 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!1242 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!1243 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!1244 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!1245 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!1246 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!1247 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!1248 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!1249 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!1250 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!1251 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!1252 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!1253 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!1254 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!1255 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!1256 = !{!1257, !98}
!1257 = !DISubprogram(name: "nl_langinfo", scope: !871, file: !871, line: 661, type: !1258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !46)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!41, !45}
!1260 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1261, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, retainedTypes: !1262, splitDebugInlining: false, nameTableKind: None)
!1261 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1262 = !{!98, !112}
!1263 = !{!"clang version 10.0.0 "}
!1264 = !{i32 7, !"Dwarf Version", i32 4}
!1265 = !{i32 2, !"Debug Info Version", i32 3}
!1266 = !{i32 1, !"wchar_size", i32 4}
!1267 = !{i32 7, !"PIC Level", i32 2}
!1268 = !{i32 7, !"PIE Level", i32 2}
!1269 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 81, type: !153, scopeLine: 82, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1270)
!1270 = !{!1271}
!1271 = !DILocalVariable(name: "status", arg: 1, scope: !1269, file: !3, line: 81, type: !45)
!1272 = !DILocalVariable(name: "infomap", scope: !1273, file: !1274, line: 636, type: !1286)
!1273 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1274, file: !1274, line: 634, type: !110, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1275)
!1274 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1275 = !{!1276, !1272, !1277, !1278, !1285}
!1276 = !DILocalVariable(name: "program", arg: 1, scope: !1273, file: !1274, line: 634, type: !43)
!1277 = !DILocalVariable(name: "node", scope: !1273, file: !1274, line: 646, type: !43)
!1278 = !DILocalVariable(name: "map_prog", scope: !1273, file: !1274, line: 647, type: !1279)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1281)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1273, file: !1274, line: 636, size: 128, elements: !1282)
!1282 = !{!1283, !1284}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1281, file: !1274, line: 636, baseType: !43, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1281, file: !1274, line: 636, baseType: !43, size: 64, offset: 64)
!1285 = !DILocalVariable(name: "lc_messages", scope: !1273, file: !1274, line: 659, type: !43)
!1286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1280, size: 896, elements: !1287)
!1287 = !{!1288}
!1288 = !DISubrange(count: 7)
!1289 = !DILocation(line: 636, column: 67, scope: !1273, inlinedAt: !1290)
!1290 = distinct !DILocation(line: 112, column: 7, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1292, file: !3, line: 86, column: 5)
!1292 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 83, column: 7)
!1293 = !DILocation(line: 0, scope: !1269)
!1294 = !DILocation(line: 83, column: 14, scope: !1292)
!1295 = !DILocation(line: 83, column: 7, scope: !1269)
!1296 = !DILocation(line: 84, column: 5, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1292, file: !3, line: 84, column: 5)
!1298 = !{!1299, !1299, i64 0}
!1299 = !{!"any pointer", !1300, i64 0}
!1300 = !{!"omnipotent char", !1301, i64 0}
!1301 = !{!"Simple C/C++ TBAA"}
!1302 = !DILocation(line: 87, column: 7, scope: !1291)
!1303 = !DILocation(line: 88, column: 7, scope: !1291)
!1304 = !DILocation(line: 94, column: 7, scope: !1291)
!1305 = !DILocation(line: 98, column: 7, scope: !1291)
!1306 = !DILocation(line: 99, column: 7, scope: !1291)
!1307 = !DILocation(line: 100, column: 7, scope: !1291)
!1308 = !DILocation(line: 0, scope: !1273, inlinedAt: !1290)
!1309 = !DILocation(line: 636, column: 3, scope: !1273, inlinedAt: !1290)
!1310 = !DILocation(line: 647, column: 36, scope: !1273, inlinedAt: !1290)
!1311 = !DILocation(line: 649, column: 3, scope: !1273, inlinedAt: !1290)
!1312 = !DILocation(line: 649, column: 33, scope: !1273, inlinedAt: !1290)
!1313 = !DILocation(line: 650, column: 13, scope: !1273, inlinedAt: !1290)
!1314 = !DILocation(line: 649, column: 20, scope: !1273, inlinedAt: !1290)
!1315 = !{!1316, !1299, i64 0}
!1316 = !{!"infomap", !1299, i64 0, !1299, i64 8}
!1317 = !DILocation(line: 649, column: 10, scope: !1273, inlinedAt: !1290)
!1318 = !DILocation(line: 649, column: 28, scope: !1273, inlinedAt: !1290)
!1319 = distinct !{!1319, !1311, !1313}
!1320 = !DILocation(line: 652, column: 17, scope: !1321, inlinedAt: !1290)
!1321 = distinct !DILexicalBlock(scope: !1273, file: !1274, line: 652, column: 7)
!1322 = !{!1316, !1299, i64 8}
!1323 = !DILocation(line: 652, column: 7, scope: !1321, inlinedAt: !1290)
!1324 = !DILocation(line: 652, column: 7, scope: !1273, inlinedAt: !1290)
!1325 = !DILocation(line: 655, column: 3, scope: !1273, inlinedAt: !1290)
!1326 = !DILocation(line: 659, column: 29, scope: !1273, inlinedAt: !1290)
!1327 = !DILocation(line: 660, column: 7, scope: !1328, inlinedAt: !1290)
!1328 = distinct !DILexicalBlock(scope: !1273, file: !1274, line: 660, column: 7)
!1329 = !DILocation(line: 660, column: 19, scope: !1328, inlinedAt: !1290)
!1330 = !DILocation(line: 660, column: 22, scope: !1328, inlinedAt: !1290)
!1331 = !DILocation(line: 660, column: 7, scope: !1273, inlinedAt: !1290)
!1332 = !DILocation(line: 666, column: 7, scope: !1333, inlinedAt: !1290)
!1333 = distinct !DILexicalBlock(scope: !1328, file: !1274, line: 661, column: 5)
!1334 = !DILocation(line: 668, column: 5, scope: !1333, inlinedAt: !1290)
!1335 = !DILocation(line: 669, column: 3, scope: !1273, inlinedAt: !1290)
!1336 = !DILocation(line: 671, column: 3, scope: !1273, inlinedAt: !1290)
!1337 = !DILocation(line: 673, column: 1, scope: !1273, inlinedAt: !1290)
!1338 = !DILocation(line: 114, column: 3, scope: !1269)
!1339 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 118, type: !1340, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1343)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!45, !45, !1342}
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!1343 = !{!1344, !1345, !1346, !1347}
!1344 = !DILocalVariable(name: "argc", arg: 1, scope: !1339, file: !3, line: 118, type: !45)
!1345 = !DILocalVariable(name: "argv", arg: 2, scope: !1339, file: !3, line: 118, type: !1342)
!1346 = !DILocalVariable(name: "ok", scope: !1339, file: !3, line: 120, type: !202)
!1347 = !DILocalVariable(name: "optc", scope: !1339, file: !3, line: 121, type: !45)
!1348 = !DILocalVariable(name: "buffer", scope: !1349, file: !3, line: 188, type: !1379)
!1349 = distinct !DISubprogram(name: "tee_files", scope: !3, file: !3, line: 184, type: !1350, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1352)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!202, !45, !1342}
!1352 = !{!1353, !1354, !1355, !1356, !1348, !1361, !1365, !1366, !1367, !1368, !1374, !1375, !1376, !1378}
!1353 = !DILocalVariable(name: "nfiles", arg: 1, scope: !1349, file: !3, line: 184, type: !45)
!1354 = !DILocalVariable(name: "files", arg: 2, scope: !1349, file: !3, line: 184, type: !1342)
!1355 = !DILocalVariable(name: "n_outputs", scope: !1349, file: !3, line: 186, type: !100)
!1356 = !DILocalVariable(name: "descriptors", scope: !1349, file: !3, line: 187, type: !1357)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1360, line: 7, baseType: !52)
!1360 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!1361 = !DILocalVariable(name: "bytes_read", scope: !1349, file: !3, line: 189, type: !1362)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1363, line: 108, baseType: !1364)
!1363 = !DIFile(filename: "/usr/include/sys/types.h", directory: "")
!1364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !75, line: 193, baseType: !76)
!1365 = !DILocalVariable(name: "i", scope: !1349, file: !3, line: 190, type: !45)
!1366 = !DILocalVariable(name: "ok", scope: !1349, file: !3, line: 191, type: !202)
!1367 = !DILocalVariable(name: "mode_string", scope: !1349, file: !3, line: 192, type: !43)
!1368 = !DILocalVariable(name: "__ptr", scope: !1369, file: !3, line: 241, type: !43)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 241, column: 16)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 240, column: 13)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 239, column: 7)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 239, column: 7)
!1373 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 230, column: 5)
!1374 = !DILocalVariable(name: "__stream", scope: !1369, file: !3, line: 241, type: !1358)
!1375 = !DILocalVariable(name: "__cnt", scope: !1369, file: !3, line: 241, type: !100)
!1376 = !DILocalVariable(name: "w_errno", scope: !1377, file: !3, line: 243, type: !45)
!1377 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 242, column: 11)
!1378 = !DILocalVariable(name: "fail", scope: !1377, file: !3, line: 244, type: !202)
!1379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 65536, elements: !1380)
!1380 = !{!1381}
!1381 = !DISubrange(count: 8192)
!1382 = !DILocation(line: 188, column: 8, scope: !1349, inlinedAt: !1383)
!1383 = distinct !DILocation(line: 172, column: 8, scope: !1339)
!1384 = !DILocation(line: 0, scope: !1339)
!1385 = !DILocation(line: 124, column: 21, scope: !1339)
!1386 = !DILocation(line: 124, column: 3, scope: !1339)
!1387 = !DILocation(line: 125, column: 3, scope: !1339)
!1388 = !DILocation(line: 126, column: 3, scope: !1339)
!1389 = !DILocation(line: 127, column: 3, scope: !1339)
!1390 = !DILocation(line: 129, column: 3, scope: !1339)
!1391 = !DILocation(line: 131, column: 10, scope: !1339)
!1392 = !DILocation(line: 132, column: 21, scope: !1339)
!1393 = !DILocation(line: 134, column: 3, scope: !1339)
!1394 = !DILocation(line: 134, column: 18, scope: !1339)
!1395 = !DILocation(line: 139, column: 18, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 137, column: 9)
!1397 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 135, column: 5)
!1398 = !DILocation(line: 140, column: 11, scope: !1396)
!1399 = !DILocation(line: 143, column: 29, scope: !1396)
!1400 = !DILocation(line: 144, column: 11, scope: !1396)
!1401 = !DILocation(line: 147, column: 15, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 147, column: 15)
!1403 = !DILocation(line: 147, column: 15, scope: !1396)
!1404 = !DILocation(line: 148, column: 28, scope: !1402)
!1405 = !{!1300, !1300, i64 0}
!1406 = !DILocation(line: 148, column: 26, scope: !1402)
!1407 = !DILocation(line: 148, column: 13, scope: !1402)
!1408 = distinct !{!1408, !1393, !1409}
!1409 = !DILocation(line: 161, column: 5, scope: !1339)
!1410 = !DILocation(line: 151, column: 26, scope: !1402)
!1411 = !DILocation(line: 154, column: 9, scope: !1396)
!1412 = !DILocation(line: 156, column: 9, scope: !1396)
!1413 = !DILocation(line: 159, column: 11, scope: !1396)
!1414 = !DILocation(line: 163, column: 7, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 163, column: 7)
!1416 = !DILocation(line: 163, column: 7, scope: !1339)
!1417 = !DILocation(line: 164, column: 5, scope: !1415)
!1418 = !DILocation(line: 166, column: 7, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 166, column: 7)
!1420 = !DILocation(line: 166, column: 20, scope: !1419)
!1421 = !DILocation(line: 166, column: 7, scope: !1339)
!1422 = !DILocation(line: 167, column: 5, scope: !1419)
!1423 = !DILocation(line: 172, column: 26, scope: !1339)
!1424 = !{!1425, !1425, i64 0}
!1425 = !{!"int", !1300, i64 0}
!1426 = !DILocation(line: 172, column: 24, scope: !1339)
!1427 = !DILocation(line: 0, scope: !1349, inlinedAt: !1383)
!1428 = !DILocation(line: 188, column: 3, scope: !1349, inlinedAt: !1383)
!1429 = !DILocation(line: 195, column: 9, scope: !1349, inlinedAt: !1383)
!1430 = !DILocation(line: 199, column: 12, scope: !1349, inlinedAt: !1383)
!1431 = !DILocation(line: 199, column: 3, scope: !1349, inlinedAt: !1383)
!1432 = !DILocalVariable(name: "n", arg: 1, scope: !1433, file: !193, line: 99, type: !100)
!1433 = distinct !DISubprogram(name: "xnmalloc", scope: !193, file: !193, line: 99, type: !1434, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1436)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!98, !100, !100}
!1436 = !{!1432, !1437}
!1437 = !DILocalVariable(name: "s", arg: 2, scope: !1433, file: !193, line: 99, type: !100)
!1438 = !DILocation(line: 0, scope: !1433, inlinedAt: !1439)
!1439 = distinct !DILocation(line: 204, column: 17, scope: !1349, inlinedAt: !1383)
!1440 = !DILocation(line: 101, column: 7, scope: !1441, inlinedAt: !1439)
!1441 = distinct !DILexicalBlock(scope: !1433, file: !193, line: 101, column: 7)
!1442 = !DILocation(line: 101, column: 7, scope: !1433, inlinedAt: !1439)
!1443 = !DILocation(line: 102, column: 5, scope: !1441, inlinedAt: !1439)
!1444 = !DILocation(line: 172, column: 35, scope: !1339)
!1445 = !DILocation(line: 204, column: 34, scope: !1349, inlinedAt: !1383)
!1446 = !DILocation(line: 204, column: 27, scope: !1349, inlinedAt: !1383)
!1447 = !DILocation(line: 103, column: 21, scope: !1433, inlinedAt: !1439)
!1448 = !DILocation(line: 103, column: 10, scope: !1433, inlinedAt: !1439)
!1449 = !DILocation(line: 204, column: 17, scope: !1349, inlinedAt: !1383)
!1450 = !DILocation(line: 205, column: 8, scope: !1349, inlinedAt: !1383)
!1451 = !DILocation(line: 206, column: 20, scope: !1349, inlinedAt: !1383)
!1452 = !DILocation(line: 206, column: 18, scope: !1349, inlinedAt: !1383)
!1453 = !DILocation(line: 207, column: 24, scope: !1349, inlinedAt: !1383)
!1454 = !DILocation(line: 207, column: 12, scope: !1349, inlinedAt: !1383)
!1455 = !DILocation(line: 208, column: 12, scope: !1349, inlinedAt: !1383)
!1456 = !DILocation(line: 208, column: 3, scope: !1349, inlinedAt: !1383)
!1457 = !DILocation(line: 211, column: 17, scope: !1458, inlinedAt: !1383)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !3, line: 211, column: 3)
!1459 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 211, column: 3)
!1460 = !DILocation(line: 211, column: 3, scope: !1459, inlinedAt: !1383)
!1461 = !DILocation(line: 229, column: 3, scope: !1349, inlinedAt: !1383)
!1462 = !DILocation(line: 0, scope: !1371, inlinedAt: !1383)
!1463 = !DILocation(line: 214, column: 31, scope: !1464, inlinedAt: !1383)
!1464 = distinct !DILexicalBlock(scope: !1458, file: !3, line: 212, column: 5)
!1465 = !DILocation(line: 214, column: 24, scope: !1464, inlinedAt: !1383)
!1466 = !DILocation(line: 214, column: 7, scope: !1464, inlinedAt: !1383)
!1467 = !DILocation(line: 214, column: 22, scope: !1464, inlinedAt: !1383)
!1468 = !DILocation(line: 215, column: 26, scope: !1469, inlinedAt: !1383)
!1469 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 215, column: 11)
!1470 = !DILocation(line: 215, column: 11, scope: !1464, inlinedAt: !1383)
!1471 = !DILocation(line: 217, column: 18, scope: !1472, inlinedAt: !1383)
!1472 = distinct !DILexicalBlock(scope: !1469, file: !3, line: 216, column: 9)
!1473 = !DILocation(line: 218, column: 18, scope: !1472, inlinedAt: !1383)
!1474 = !DILocation(line: 219, column: 18, scope: !1472, inlinedAt: !1383)
!1475 = !DILocation(line: 219, column: 31, scope: !1472, inlinedAt: !1383)
!1476 = !DILocation(line: 217, column: 11, scope: !1472, inlinedAt: !1383)
!1477 = !DILocation(line: 221, column: 9, scope: !1472, inlinedAt: !1383)
!1478 = !DILocation(line: 224, column: 11, scope: !1479, inlinedAt: !1383)
!1479 = distinct !DILexicalBlock(scope: !1469, file: !3, line: 223, column: 9)
!1480 = !DILocation(line: 225, column: 20, scope: !1479, inlinedAt: !1383)
!1481 = !DILocation(line: 211, column: 29, scope: !1458, inlinedAt: !1383)
!1482 = distinct !{!1482, !1460, !1483}
!1483 = !DILocation(line: 227, column: 5, scope: !1459, inlinedAt: !1383)
!1484 = !DILocation(line: 231, column: 20, scope: !1373, inlinedAt: !1383)
!1485 = !DILocation(line: 232, column: 22, scope: !1486, inlinedAt: !1383)
!1486 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 232, column: 11)
!1487 = !DILocation(line: 232, column: 26, scope: !1486, inlinedAt: !1383)
!1488 = !DILocation(line: 232, column: 29, scope: !1486, inlinedAt: !1383)
!1489 = !DILocation(line: 232, column: 35, scope: !1486, inlinedAt: !1383)
!1490 = !DILocation(line: 232, column: 11, scope: !1373, inlinedAt: !1383)
!1491 = distinct !{!1491, !1461, !1492}
!1492 = !DILocation(line: 259, column: 5, scope: !1349, inlinedAt: !1383)
!1493 = !DILocation(line: 234, column: 22, scope: !1494, inlinedAt: !1383)
!1494 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 234, column: 11)
!1495 = !DILocation(line: 234, column: 11, scope: !1373, inlinedAt: !1383)
!1496 = !DILocation(line: 239, column: 7, scope: !1372, inlinedAt: !1383)
!1497 = distinct !{!1497, !1461, !1492}
!1498 = !DILocation(line: 240, column: 13, scope: !1370, inlinedAt: !1383)
!1499 = !DILocation(line: 241, column: 13, scope: !1370, inlinedAt: !1383)
!1500 = !DILocation(line: 241, column: 16, scope: !1370, inlinedAt: !1383)
!1501 = !DILocation(line: 241, column: 63, scope: !1370, inlinedAt: !1383)
!1502 = !DILocation(line: 240, column: 13, scope: !1371, inlinedAt: !1383)
!1503 = !DILocation(line: 243, column: 27, scope: !1377, inlinedAt: !1383)
!1504 = !DILocation(line: 0, scope: !1377, inlinedAt: !1383)
!1505 = !DILocation(line: 244, column: 31, scope: !1377, inlinedAt: !1383)
!1506 = !DILocation(line: 244, column: 40, scope: !1377, inlinedAt: !1383)
!1507 = !DILocation(line: 246, column: 35, scope: !1508, inlinedAt: !1383)
!1508 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 246, column: 17)
!1509 = !DILocation(line: 246, column: 32, scope: !1508, inlinedAt: !1383)
!1510 = !DILocation(line: 246, column: 17, scope: !1377, inlinedAt: !1383)
!1511 = !DILocation(line: 247, column: 15, scope: !1508, inlinedAt: !1383)
!1512 = !DILocation(line: 248, column: 17, scope: !1377, inlinedAt: !1383)
!1513 = !DILocation(line: 250, column: 24, scope: !1514, inlinedAt: !1383)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !3, line: 249, column: 15)
!1515 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 248, column: 17)
!1516 = !DILocation(line: 251, column: 24, scope: !1514, inlinedAt: !1383)
!1517 = !DILocation(line: 252, column: 39, scope: !1514, inlinedAt: !1383)
!1518 = !DILocation(line: 250, column: 17, scope: !1514, inlinedAt: !1383)
!1519 = !DILocation(line: 253, column: 15, scope: !1514, inlinedAt: !1383)
!1520 = !DILocation(line: 254, column: 28, scope: !1377, inlinedAt: !1383)
!1521 = !DILocation(line: 255, column: 17, scope: !1377, inlinedAt: !1383)
!1522 = !DILocation(line: 257, column: 22, scope: !1377, inlinedAt: !1383)
!1523 = !DILocation(line: 258, column: 11, scope: !1377, inlinedAt: !1383)
!1524 = !DILocation(line: 239, column: 33, scope: !1371, inlinedAt: !1383)
!1525 = !DILocation(line: 239, column: 21, scope: !1371, inlinedAt: !1383)
!1526 = distinct !{!1526, !1496, !1527}
!1527 = !DILocation(line: 258, column: 11, scope: !1372, inlinedAt: !1383)
!1528 = !DILocation(line: 261, column: 18, scope: !1529, inlinedAt: !1383)
!1529 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 261, column: 7)
!1530 = !DILocation(line: 261, column: 7, scope: !1349, inlinedAt: !1383)
!1531 = !DILocation(line: 263, column: 17, scope: !1532, inlinedAt: !1383)
!1532 = distinct !DILexicalBlock(scope: !1529, file: !3, line: 262, column: 5)
!1533 = !DILocation(line: 263, column: 24, scope: !1532, inlinedAt: !1383)
!1534 = !DILocation(line: 263, column: 7, scope: !1532, inlinedAt: !1383)
!1535 = !DILocation(line: 265, column: 5, scope: !1532, inlinedAt: !1383)
!1536 = !DILocation(line: 268, column: 3, scope: !1537, inlinedAt: !1383)
!1537 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 268, column: 3)
!1538 = !DILocation(line: 268, column: 17, scope: !1539, inlinedAt: !1383)
!1539 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 268, column: 3)
!1540 = !DILocation(line: 269, column: 9, scope: !1541, inlinedAt: !1383)
!1541 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 269, column: 9)
!1542 = !DILocation(line: 269, column: 24, scope: !1541, inlinedAt: !1383)
!1543 = !DILocation(line: 269, column: 27, scope: !1541, inlinedAt: !1383)
!1544 = !DILocation(line: 269, column: 51, scope: !1541, inlinedAt: !1383)
!1545 = !DILocation(line: 269, column: 9, scope: !1539, inlinedAt: !1383)
!1546 = !DILocation(line: 271, column: 19, scope: !1547, inlinedAt: !1383)
!1547 = distinct !DILexicalBlock(scope: !1541, file: !3, line: 270, column: 7)
!1548 = !DILocation(line: 271, column: 32, scope: !1547, inlinedAt: !1383)
!1549 = !DILocation(line: 271, column: 9, scope: !1547, inlinedAt: !1383)
!1550 = !DILocation(line: 273, column: 7, scope: !1547, inlinedAt: !1383)
!1551 = !DILocation(line: 268, column: 29, scope: !1539, inlinedAt: !1383)
!1552 = distinct !{!1552, !1536, !1553}
!1553 = !DILocation(line: 273, column: 7, scope: !1537, inlinedAt: !1383)
!1554 = !DILocation(line: 275, column: 3, scope: !1349, inlinedAt: !1383)
!1555 = !DILocation(line: 278, column: 1, scope: !1349, inlinedAt: !1383)
!1556 = !DILocation(line: 173, column: 7, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 173, column: 7)
!1558 = !DILocation(line: 173, column: 28, scope: !1557)
!1559 = !DILocation(line: 173, column: 7, scope: !1339)
!1560 = !DILocation(line: 174, column: 5, scope: !1557)
!1561 = !DILocation(line: 277, column: 10, scope: !1349, inlinedAt: !1383)
!1562 = !DILocation(line: 176, column: 10, scope: !1339)
!1563 = !DILocation(line: 177, column: 1, scope: !1339)
!1564 = distinct !DISubprogram(name: "__argmatch_die", scope: !231, file: !231, line: 60, type: !127, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !46)
!1565 = !DILocation(line: 62, column: 3, scope: !1564)
!1566 = !DILocation(line: 63, column: 1, scope: !1564)
!1567 = distinct !DISubprogram(name: "argmatch", scope: !231, file: !231, line: 82, type: !1568, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1572)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!1570, !43, !1571, !144, !100}
!1570 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !101, line: 35, baseType: !76)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!1572 = !{!1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580}
!1573 = !DILocalVariable(name: "arg", arg: 1, scope: !1567, file: !231, line: 82, type: !43)
!1574 = !DILocalVariable(name: "arglist", arg: 2, scope: !1567, file: !231, line: 82, type: !1571)
!1575 = !DILocalVariable(name: "vallist", arg: 3, scope: !1567, file: !231, line: 83, type: !144)
!1576 = !DILocalVariable(name: "valsize", arg: 4, scope: !1567, file: !231, line: 83, type: !100)
!1577 = !DILocalVariable(name: "i", scope: !1567, file: !231, line: 85, type: !100)
!1578 = !DILocalVariable(name: "arglen", scope: !1567, file: !231, line: 86, type: !100)
!1579 = !DILocalVariable(name: "matchind", scope: !1567, file: !231, line: 87, type: !1570)
!1580 = !DILocalVariable(name: "ambiguous", scope: !1567, file: !231, line: 88, type: !202)
!1581 = !DILocation(line: 0, scope: !1567)
!1582 = !DILocation(line: 90, column: 12, scope: !1567)
!1583 = !DILocation(line: 93, column: 15, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !231, line: 93, column: 3)
!1585 = distinct !DILexicalBlock(scope: !1567, file: !231, line: 93, column: 3)
!1586 = !DILocation(line: 93, column: 3, scope: !1585)
!1587 = !DILocation(line: 0, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1589, file: !231, line: 106, column: 19)
!1589 = distinct !DILexicalBlock(scope: !1590, file: !231, line: 104, column: 13)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !231, line: 100, column: 20)
!1591 = distinct !DILexicalBlock(scope: !1592, file: !231, line: 97, column: 15)
!1592 = distinct !DILexicalBlock(scope: !1593, file: !231, line: 96, column: 9)
!1593 = distinct !DILexicalBlock(scope: !1594, file: !231, line: 95, column: 11)
!1594 = distinct !DILexicalBlock(scope: !1584, file: !231, line: 94, column: 5)
!1595 = !DILocation(line: 95, column: 12, scope: !1593)
!1596 = !DILocation(line: 95, column: 11, scope: !1594)
!1597 = !DILocation(line: 97, column: 15, scope: !1591)
!1598 = !DILocation(line: 97, column: 35, scope: !1591)
!1599 = !DILocation(line: 97, column: 15, scope: !1592)
!1600 = !DILocation(line: 100, column: 29, scope: !1590)
!1601 = !DILocation(line: 100, column: 20, scope: !1591)
!1602 = !DILocation(line: 107, column: 19, scope: !1588)
!1603 = !DILocation(line: 107, column: 63, scope: !1588)
!1604 = !DILocation(line: 107, column: 53, scope: !1588)
!1605 = !DILocation(line: 108, column: 63, scope: !1588)
!1606 = !DILocation(line: 108, column: 53, scope: !1588)
!1607 = !DILocation(line: 107, column: 22, scope: !1588)
!1608 = !DILocation(line: 106, column: 19, scope: !1589)
!1609 = !DILocation(line: 113, column: 17, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1588, file: !231, line: 109, column: 17)
!1611 = !DILocation(line: 93, column: 28, scope: !1584)
!1612 = distinct !{!1612, !1586, !1613}
!1613 = !DILocation(line: 116, column: 5, scope: !1585)
!1614 = !DILocation(line: 87, column: 13, scope: !1567)
!1615 = !DILocation(line: 88, column: 8, scope: !1567)
!1616 = !DILocation(line: 117, column: 7, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1567, file: !231, line: 117, column: 7)
!1618 = !DILocation(line: 0, scope: !1617)
!1619 = !DILocation(line: 121, column: 1, scope: !1567)
!1620 = distinct !DISubprogram(name: "argmatch_invalid", scope: !231, file: !231, line: 129, type: !1621, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1623)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{null, !43, !43, !1570}
!1623 = !{!1624, !1625, !1626, !1627}
!1624 = !DILocalVariable(name: "context", arg: 1, scope: !1620, file: !231, line: 129, type: !43)
!1625 = !DILocalVariable(name: "value", arg: 2, scope: !1620, file: !231, line: 129, type: !43)
!1626 = !DILocalVariable(name: "problem", arg: 3, scope: !1620, file: !231, line: 129, type: !1570)
!1627 = !DILocalVariable(name: "format", scope: !1620, file: !231, line: 131, type: !43)
!1628 = !DILocation(line: 0, scope: !1620)
!1629 = !DILocation(line: 131, column: 33, scope: !1620)
!1630 = !DILocation(line: 131, column: 25, scope: !1620)
!1631 = !DILocation(line: 135, column: 24, scope: !1620)
!1632 = !DILocation(line: 136, column: 10, scope: !1620)
!1633 = !DILocation(line: 135, column: 3, scope: !1620)
!1634 = !DILocation(line: 137, column: 1, scope: !1620)
!1635 = distinct !DISubprogram(name: "argmatch_valid", scope: !231, file: !231, line: 144, type: !1636, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1638)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{null, !1571, !144, !100}
!1638 = !{!1639, !1640, !1641, !1642, !1643}
!1639 = !DILocalVariable(name: "arglist", arg: 1, scope: !1635, file: !231, line: 144, type: !1571)
!1640 = !DILocalVariable(name: "vallist", arg: 2, scope: !1635, file: !231, line: 145, type: !144)
!1641 = !DILocalVariable(name: "valsize", arg: 3, scope: !1635, file: !231, line: 145, type: !100)
!1642 = !DILocalVariable(name: "i", scope: !1635, file: !231, line: 147, type: !100)
!1643 = !DILocalVariable(name: "last_val", scope: !1635, file: !231, line: 148, type: !43)
!1644 = !DILocation(line: 0, scope: !1635)
!1645 = !DILocation(line: 152, column: 3, scope: !1635)
!1646 = !DILocation(line: 153, column: 15, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !231, line: 153, column: 3)
!1648 = distinct !DILexicalBlock(scope: !1635, file: !231, line: 153, column: 3)
!1649 = !DILocation(line: 153, column: 3, scope: !1648)
!1650 = !DILocation(line: 154, column: 12, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1647, file: !231, line: 154, column: 9)
!1652 = !DILocation(line: 155, column: 9, scope: !1651)
!1653 = !DILocation(line: 155, column: 63, scope: !1651)
!1654 = !DILocation(line: 155, column: 53, scope: !1651)
!1655 = !DILocation(line: 155, column: 12, scope: !1651)
!1656 = !DILocation(line: 154, column: 9, scope: !1647)
!1657 = !DILocation(line: 158, column: 53, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1651, file: !231, line: 156, column: 7)
!1659 = !DILocation(line: 157, column: 9, scope: !1658)
!1660 = !DILocation(line: 158, column: 43, scope: !1658)
!1661 = !DILocation(line: 159, column: 7, scope: !1658)
!1662 = !DILocation(line: 162, column: 9, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1651, file: !231, line: 161, column: 7)
!1664 = !DILocation(line: 153, column: 28, scope: !1647)
!1665 = distinct !{!1665, !1649, !1666}
!1666 = !DILocation(line: 163, column: 7, scope: !1648)
!1667 = !DILocation(line: 164, column: 3, scope: !1635)
!1668 = !DILocalVariable(name: "__c", arg: 1, scope: !1669, file: !1670, line: 101, type: !45)
!1669 = distinct !DISubprogram(name: "putc_unlocked", scope: !1670, file: !1670, line: 101, type: !1671, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1675)
!1670 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!45, !45, !1673}
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1360, line: 7, baseType: !243)
!1675 = !{!1668, !1676}
!1676 = !DILocalVariable(name: "__stream", arg: 2, scope: !1669, file: !1670, line: 101, type: !1673)
!1677 = !DILocation(line: 0, scope: !1669, inlinedAt: !1678)
!1678 = distinct !DILocation(line: 164, column: 3, scope: !1635)
!1679 = !DILocation(line: 103, column: 10, scope: !1669, inlinedAt: !1678)
!1680 = !{!1681, !1299, i64 40}
!1681 = !{!"_IO_FILE", !1425, i64 0, !1299, i64 8, !1299, i64 16, !1299, i64 24, !1299, i64 32, !1299, i64 40, !1299, i64 48, !1299, i64 56, !1299, i64 64, !1299, i64 72, !1299, i64 80, !1299, i64 88, !1299, i64 96, !1299, i64 104, !1425, i64 112, !1425, i64 116, !1682, i64 120, !1683, i64 128, !1300, i64 130, !1300, i64 131, !1299, i64 136, !1682, i64 144, !1299, i64 152, !1299, i64 160, !1299, i64 168, !1299, i64 176, !1682, i64 184, !1425, i64 192, !1300, i64 196}
!1682 = !{!"long", !1300, i64 0}
!1683 = !{!"short", !1300, i64 0}
!1684 = !{!1681, !1299, i64 48}
!1685 = !{!"branch_weights", i32 2000, i32 1}
!1686 = !{!"misexpect", i64 1, i64 2000, i64 1}
!1687 = !DILocation(line: 165, column: 1, scope: !1635)
!1688 = distinct !DISubprogram(name: "__xargmatch_internal", scope: !231, file: !231, line: 174, type: !1689, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1691)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{!1570, !43, !43, !1571, !144, !100, !279}
!1691 = !{!1692, !1693, !1694, !1695, !1696, !1697, !1698}
!1692 = !DILocalVariable(name: "context", arg: 1, scope: !1688, file: !231, line: 174, type: !43)
!1693 = !DILocalVariable(name: "arg", arg: 2, scope: !1688, file: !231, line: 175, type: !43)
!1694 = !DILocalVariable(name: "arglist", arg: 3, scope: !1688, file: !231, line: 175, type: !1571)
!1695 = !DILocalVariable(name: "vallist", arg: 4, scope: !1688, file: !231, line: 176, type: !144)
!1696 = !DILocalVariable(name: "valsize", arg: 5, scope: !1688, file: !231, line: 176, type: !100)
!1697 = !DILocalVariable(name: "exit_fn", arg: 6, scope: !1688, file: !231, line: 177, type: !279)
!1698 = !DILocalVariable(name: "res", scope: !1688, file: !231, line: 179, type: !1570)
!1699 = !DILocation(line: 0, scope: !1688)
!1700 = !DILocation(line: 0, scope: !1567, inlinedAt: !1701)
!1701 = distinct !DILocation(line: 179, column: 19, scope: !1688)
!1702 = !DILocation(line: 90, column: 12, scope: !1567, inlinedAt: !1701)
!1703 = !DILocation(line: 93, column: 15, scope: !1584, inlinedAt: !1701)
!1704 = !DILocation(line: 93, column: 3, scope: !1585, inlinedAt: !1701)
!1705 = !DILocation(line: 0, scope: !1588, inlinedAt: !1701)
!1706 = !DILocation(line: 95, column: 12, scope: !1593, inlinedAt: !1701)
!1707 = !DILocation(line: 95, column: 11, scope: !1594, inlinedAt: !1701)
!1708 = !DILocation(line: 97, column: 15, scope: !1591, inlinedAt: !1701)
!1709 = !DILocation(line: 97, column: 35, scope: !1591, inlinedAt: !1701)
!1710 = !DILocation(line: 97, column: 15, scope: !1592, inlinedAt: !1701)
!1711 = !DILocation(line: 100, column: 29, scope: !1590, inlinedAt: !1701)
!1712 = !DILocation(line: 100, column: 20, scope: !1591, inlinedAt: !1701)
!1713 = !DILocation(line: 107, column: 19, scope: !1588, inlinedAt: !1701)
!1714 = !DILocation(line: 107, column: 63, scope: !1588, inlinedAt: !1701)
!1715 = !DILocation(line: 107, column: 53, scope: !1588, inlinedAt: !1701)
!1716 = !DILocation(line: 108, column: 63, scope: !1588, inlinedAt: !1701)
!1717 = !DILocation(line: 108, column: 53, scope: !1588, inlinedAt: !1701)
!1718 = !DILocation(line: 107, column: 22, scope: !1588, inlinedAt: !1701)
!1719 = !DILocation(line: 106, column: 19, scope: !1589, inlinedAt: !1701)
!1720 = !DILocation(line: 113, column: 17, scope: !1610, inlinedAt: !1701)
!1721 = !DILocation(line: 93, column: 28, scope: !1584, inlinedAt: !1701)
!1722 = distinct !{!1722, !1704, !1723}
!1723 = !DILocation(line: 116, column: 5, scope: !1585, inlinedAt: !1701)
!1724 = !DILocation(line: 117, column: 7, scope: !1617, inlinedAt: !1701)
!1725 = !DILocation(line: 180, column: 11, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1688, file: !231, line: 180, column: 7)
!1727 = !DILocation(line: 180, column: 7, scope: !1688)
!1728 = !DILocation(line: 0, scope: !1620, inlinedAt: !1729)
!1729 = distinct !DILocation(line: 185, column: 3, scope: !1688)
!1730 = !DILocation(line: 131, column: 33, scope: !1620, inlinedAt: !1729)
!1731 = !DILocation(line: 131, column: 25, scope: !1620, inlinedAt: !1729)
!1732 = !DILocation(line: 135, column: 24, scope: !1620, inlinedAt: !1729)
!1733 = !DILocation(line: 136, column: 10, scope: !1620, inlinedAt: !1729)
!1734 = !DILocation(line: 135, column: 3, scope: !1620, inlinedAt: !1729)
!1735 = !DILocation(line: 186, column: 3, scope: !1688)
!1736 = !DILocation(line: 187, column: 3, scope: !1688)
!1737 = !DILocation(line: 189, column: 3, scope: !1688)
!1738 = !DILocation(line: 190, column: 1, scope: !1688)
!1739 = distinct !DISubprogram(name: "argmatch_to_argument", scope: !231, file: !231, line: 195, type: !1740, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1742)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!43, !144, !1571, !144, !100}
!1742 = !{!1743, !1744, !1745, !1746, !1747}
!1743 = !DILocalVariable(name: "value", arg: 1, scope: !1739, file: !231, line: 195, type: !144)
!1744 = !DILocalVariable(name: "arglist", arg: 2, scope: !1739, file: !231, line: 196, type: !1571)
!1745 = !DILocalVariable(name: "vallist", arg: 3, scope: !1739, file: !231, line: 197, type: !144)
!1746 = !DILocalVariable(name: "valsize", arg: 4, scope: !1739, file: !231, line: 197, type: !100)
!1747 = !DILocalVariable(name: "i", scope: !1739, file: !231, line: 199, type: !100)
!1748 = !DILocation(line: 0, scope: !1739)
!1749 = !DILocation(line: 201, column: 15, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1751, file: !231, line: 201, column: 3)
!1751 = distinct !DILexicalBlock(scope: !1739, file: !231, line: 201, column: 3)
!1752 = !DILocation(line: 201, column: 3, scope: !1751)
!1753 = !DILocation(line: 202, column: 10, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1750, file: !231, line: 202, column: 9)
!1755 = !DILocation(line: 202, column: 9, scope: !1750)
!1756 = distinct !{!1756, !1752, !1757}
!1757 = !DILocation(line: 203, column: 23, scope: !1751)
!1758 = !DILocation(line: 202, column: 58, scope: !1754)
!1759 = !DILocation(line: 202, column: 48, scope: !1754)
!1760 = !DILocation(line: 201, column: 28, scope: !1750)
!1761 = !DILocation(line: 205, column: 1, scope: !1739)
!1762 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !284, file: !284, line: 51, type: !110, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !1763)
!1763 = !{!1764}
!1764 = !DILocalVariable(name: "file", arg: 1, scope: !1762, file: !284, line: 51, type: !43)
!1765 = !DILocation(line: 0, scope: !1762)
!1766 = !DILocation(line: 53, column: 13, scope: !1762)
!1767 = !DILocation(line: 54, column: 1, scope: !1762)
!1768 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !284, file: !284, line: 88, type: !1769, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !1771)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{null, !202}
!1771 = !{!1772}
!1772 = !DILocalVariable(name: "ignore", arg: 1, scope: !1768, file: !284, line: 88, type: !202)
!1773 = !DILocation(line: 0, scope: !1768)
!1774 = !DILocation(line: 90, column: 16, scope: !1768)
!1775 = !{!1776, !1776, i64 0}
!1776 = !{!"_Bool", !1300, i64 0}
!1777 = !DILocation(line: 91, column: 1, scope: !1768)
!1778 = distinct !DISubprogram(name: "close_stdout", scope: !284, file: !284, line: 117, type: !127, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !1779)
!1779 = !{!1780}
!1780 = !DILocalVariable(name: "write_error", scope: !1781, file: !284, line: 122, type: !43)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !284, line: 121, column: 5)
!1782 = distinct !DILexicalBlock(scope: !1778, file: !284, line: 119, column: 7)
!1783 = !DILocation(line: 119, column: 21, scope: !1782)
!1784 = !DILocation(line: 119, column: 7, scope: !1782)
!1785 = !DILocation(line: 119, column: 29, scope: !1782)
!1786 = !DILocation(line: 120, column: 7, scope: !1782)
!1787 = !DILocation(line: 120, column: 12, scope: !1782)
!1788 = !{i8 0, i8 2}
!1789 = !DILocation(line: 120, column: 25, scope: !1782)
!1790 = !DILocation(line: 120, column: 28, scope: !1782)
!1791 = !DILocation(line: 120, column: 34, scope: !1782)
!1792 = !DILocation(line: 119, column: 7, scope: !1778)
!1793 = !DILocation(line: 122, column: 33, scope: !1781)
!1794 = !DILocation(line: 0, scope: !1781)
!1795 = !DILocation(line: 123, column: 11, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1781, file: !284, line: 123, column: 11)
!1797 = !DILocation(line: 0, scope: !1796)
!1798 = !DILocation(line: 123, column: 11, scope: !1781)
!1799 = !DILocation(line: 124, column: 36, scope: !1796)
!1800 = !DILocation(line: 124, column: 9, scope: !1796)
!1801 = !DILocation(line: 127, column: 9, scope: !1796)
!1802 = !DILocation(line: 129, column: 14, scope: !1781)
!1803 = !DILocation(line: 129, column: 7, scope: !1781)
!1804 = !DILocation(line: 134, column: 42, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1778, file: !284, line: 134, column: 7)
!1806 = !DILocation(line: 134, column: 28, scope: !1805)
!1807 = !DILocation(line: 134, column: 50, scope: !1805)
!1808 = !DILocation(line: 134, column: 7, scope: !1778)
!1809 = !DILocation(line: 135, column: 12, scope: !1805)
!1810 = !DILocation(line: 135, column: 5, scope: !1805)
!1811 = !DILocation(line: 136, column: 1, scope: !1778)
!1812 = distinct !DISubprogram(name: "fdadvise", scope: !519, file: !519, line: 31, type: !1813, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !518, retainedNodes: !1817)
!1813 = !DISubroutineType(types: !1814)
!1814 = !{null, !45, !1815, !1815, !1816}
!1815 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !48, line: 63, baseType: !74)
!1816 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !14, line: 52, baseType: !13)
!1817 = !{!1818, !1819, !1820, !1821, !1822}
!1818 = !DILocalVariable(name: "fd", arg: 1, scope: !1812, file: !519, line: 31, type: !45)
!1819 = !DILocalVariable(name: "offset", arg: 2, scope: !1812, file: !519, line: 31, type: !1815)
!1820 = !DILocalVariable(name: "len", arg: 3, scope: !1812, file: !519, line: 31, type: !1815)
!1821 = !DILocalVariable(name: "advice", arg: 4, scope: !1812, file: !519, line: 31, type: !1816)
!1822 = !DILocalVariable(name: "__x", scope: !1823, file: !519, line: 34, type: !45)
!1823 = distinct !DILexicalBlock(scope: !1812, file: !519, line: 34, column: 3)
!1824 = !DILocation(line: 0, scope: !1812)
!1825 = !DILocation(line: 34, column: 3, scope: !1823)
!1826 = !DILocation(line: 0, scope: !1823)
!1827 = !DILocation(line: 36, column: 1, scope: !1812)
!1828 = distinct !DISubprogram(name: "fadvise", scope: !519, file: !519, line: 39, type: !1829, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !518, retainedNodes: !1833)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{null, !1831, !1816}
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1360, line: 7, baseType: !529)
!1833 = !{!1834, !1835}
!1834 = !DILocalVariable(name: "fp", arg: 1, scope: !1828, file: !519, line: 39, type: !1831)
!1835 = !DILocalVariable(name: "advice", arg: 2, scope: !1828, file: !519, line: 39, type: !1816)
!1836 = !DILocation(line: 0, scope: !1828)
!1837 = !DILocation(line: 41, column: 7, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1828, file: !519, line: 41, column: 7)
!1839 = !DILocation(line: 41, column: 7, scope: !1828)
!1840 = !DILocation(line: 42, column: 15, scope: !1838)
!1841 = !DILocation(line: 0, scope: !1812, inlinedAt: !1842)
!1842 = distinct !DILocation(line: 42, column: 5, scope: !1838)
!1843 = !DILocation(line: 34, column: 3, scope: !1823, inlinedAt: !1842)
!1844 = !DILocation(line: 0, scope: !1823, inlinedAt: !1842)
!1845 = !DILocation(line: 42, column: 5, scope: !1838)
!1846 = !DILocation(line: 43, column: 1, scope: !1828)
!1847 = distinct !DISubprogram(name: "fopen_safer", scope: !561, file: !561, line: 31, type: !1848, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !1852)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{!1850, !43, !43}
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1360, line: 7, baseType: !567)
!1852 = !{!1853, !1854, !1855, !1856, !1859, !1862, !1865}
!1853 = !DILocalVariable(name: "file", arg: 1, scope: !1847, file: !561, line: 31, type: !43)
!1854 = !DILocalVariable(name: "mode", arg: 2, scope: !1847, file: !561, line: 31, type: !43)
!1855 = !DILocalVariable(name: "fp", scope: !1847, file: !561, line: 33, type: !1850)
!1856 = !DILocalVariable(name: "fd", scope: !1857, file: !561, line: 37, type: !45)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !561, line: 36, column: 5)
!1858 = distinct !DILexicalBlock(scope: !1847, file: !561, line: 35, column: 7)
!1859 = !DILocalVariable(name: "f", scope: !1860, file: !561, line: 41, type: !45)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !561, line: 40, column: 9)
!1861 = distinct !DILexicalBlock(scope: !1857, file: !561, line: 39, column: 11)
!1862 = !DILocalVariable(name: "e", scope: !1863, file: !561, line: 45, type: !45)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !561, line: 44, column: 13)
!1864 = distinct !DILexicalBlock(scope: !1860, file: !561, line: 43, column: 15)
!1865 = !DILocalVariable(name: "e", scope: !1866, file: !561, line: 54, type: !45)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !561, line: 53, column: 13)
!1867 = distinct !DILexicalBlock(scope: !1860, file: !561, line: 51, column: 15)
!1868 = !DILocation(line: 0, scope: !1847)
!1869 = !DILocation(line: 33, column: 14, scope: !1847)
!1870 = !DILocation(line: 35, column: 7, scope: !1858)
!1871 = !DILocation(line: 35, column: 7, scope: !1847)
!1872 = !DILocation(line: 37, column: 16, scope: !1857)
!1873 = !DILocation(line: 0, scope: !1857)
!1874 = !DILocation(line: 39, column: 19, scope: !1861)
!1875 = !DILocation(line: 41, column: 19, scope: !1860)
!1876 = !DILocation(line: 0, scope: !1860)
!1877 = !DILocation(line: 43, column: 17, scope: !1864)
!1878 = !DILocation(line: 43, column: 15, scope: !1860)
!1879 = !DILocation(line: 45, column: 23, scope: !1863)
!1880 = !DILocation(line: 0, scope: !1863)
!1881 = !DILocation(line: 46, column: 15, scope: !1863)
!1882 = !DILocation(line: 47, column: 21, scope: !1863)
!1883 = !DILocation(line: 51, column: 15, scope: !1867)
!1884 = !DILocation(line: 51, column: 27, scope: !1867)
!1885 = !DILocation(line: 52, column: 15, scope: !1867)
!1886 = !DILocation(line: 52, column: 26, scope: !1867)
!1887 = !DILocation(line: 52, column: 24, scope: !1867)
!1888 = !DILocation(line: 51, column: 15, scope: !1860)
!1889 = !DILocation(line: 54, column: 23, scope: !1866)
!1890 = !DILocation(line: 0, scope: !1866)
!1891 = !DILocation(line: 55, column: 15, scope: !1866)
!1892 = !DILocation(line: 56, column: 21, scope: !1866)
!1893 = !DILocation(line: 63, column: 1, scope: !1847)
!1894 = distinct !DISubprogram(name: "set_program_name", scope: !335, file: !335, line: 39, type: !110, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !334, retainedNodes: !1895)
!1895 = !{!1896, !1897, !1898}
!1896 = !DILocalVariable(name: "argv0", arg: 1, scope: !1894, file: !335, line: 39, type: !43)
!1897 = !DILocalVariable(name: "slash", scope: !1894, file: !335, line: 46, type: !43)
!1898 = !DILocalVariable(name: "base", scope: !1894, file: !335, line: 47, type: !43)
!1899 = !DILocation(line: 0, scope: !1894)
!1900 = !DILocation(line: 51, column: 13, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1894, file: !335, line: 51, column: 7)
!1902 = !DILocation(line: 51, column: 7, scope: !1894)
!1903 = !DILocation(line: 55, column: 14, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1901, file: !335, line: 52, column: 5)
!1905 = !DILocation(line: 54, column: 7, scope: !1904)
!1906 = !DILocation(line: 56, column: 7, scope: !1904)
!1907 = !DILocation(line: 59, column: 11, scope: !1894)
!1908 = !DILocation(line: 60, column: 17, scope: !1894)
!1909 = !DILocation(line: 60, column: 11, scope: !1894)
!1910 = !DILocation(line: 61, column: 12, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1894, file: !335, line: 61, column: 7)
!1912 = !DILocation(line: 61, column: 20, scope: !1911)
!1913 = !DILocation(line: 61, column: 25, scope: !1911)
!1914 = !DILocation(line: 61, column: 42, scope: !1911)
!1915 = !DILocation(line: 61, column: 28, scope: !1911)
!1916 = !DILocation(line: 61, column: 61, scope: !1911)
!1917 = !DILocation(line: 61, column: 7, scope: !1894)
!1918 = !DILocation(line: 64, column: 11, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !335, line: 64, column: 11)
!1920 = distinct !DILexicalBlock(scope: !1911, file: !335, line: 62, column: 5)
!1921 = !DILocation(line: 64, column: 36, scope: !1919)
!1922 = !DILocation(line: 64, column: 11, scope: !1920)
!1923 = !DILocation(line: 66, column: 24, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1919, file: !335, line: 65, column: 9)
!1925 = !DILocation(line: 70, column: 41, scope: !1924)
!1926 = !DILocation(line: 72, column: 9, scope: !1924)
!1927 = !DILocation(line: 84, column: 16, scope: !1894)
!1928 = !DILocation(line: 90, column: 27, scope: !1894)
!1929 = !DILocation(line: 92, column: 1, scope: !1894)
!1930 = distinct !DISubprogram(name: "clone_quoting_options", scope: !376, file: !376, line: 122, type: !1931, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !1934)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{!1933, !1933}
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!1934 = !{!1935, !1936, !1937}
!1935 = !DILocalVariable(name: "o", arg: 1, scope: !1930, file: !376, line: 122, type: !1933)
!1936 = !DILocalVariable(name: "e", scope: !1930, file: !376, line: 124, type: !45)
!1937 = !DILocalVariable(name: "p", scope: !1930, file: !376, line: 125, type: !1933)
!1938 = !DILocation(line: 0, scope: !1930)
!1939 = !DILocation(line: 124, column: 11, scope: !1930)
!1940 = !DILocation(line: 125, column: 40, scope: !1930)
!1941 = !DILocation(line: 125, column: 31, scope: !1930)
!1942 = !DILocation(line: 127, column: 9, scope: !1930)
!1943 = !DILocation(line: 128, column: 3, scope: !1930)
!1944 = distinct !DISubprogram(name: "get_quoting_style", scope: !376, file: !376, line: 133, type: !1945, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !1947)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!22, !406}
!1947 = !{!1948}
!1948 = !DILocalVariable(name: "o", arg: 1, scope: !1944, file: !376, line: 133, type: !406)
!1949 = !DILocation(line: 0, scope: !1944)
!1950 = !DILocation(line: 135, column: 11, scope: !1944)
!1951 = !DILocation(line: 135, column: 46, scope: !1944)
!1952 = !{!1953, !1300, i64 0}
!1953 = !{!"quoting_options", !1300, i64 0, !1425, i64 4, !1300, i64 8, !1299, i64 40, !1299, i64 48}
!1954 = !DILocation(line: 135, column: 3, scope: !1944)
!1955 = distinct !DISubprogram(name: "set_quoting_style", scope: !376, file: !376, line: 141, type: !1956, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !1958)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{null, !1933, !22}
!1958 = !{!1959, !1960}
!1959 = !DILocalVariable(name: "o", arg: 1, scope: !1955, file: !376, line: 141, type: !1933)
!1960 = !DILocalVariable(name: "s", arg: 2, scope: !1955, file: !376, line: 141, type: !22)
!1961 = !DILocation(line: 0, scope: !1955)
!1962 = !DILocation(line: 143, column: 4, scope: !1955)
!1963 = !DILocation(line: 143, column: 39, scope: !1955)
!1964 = !DILocation(line: 143, column: 45, scope: !1955)
!1965 = !DILocation(line: 144, column: 1, scope: !1955)
!1966 = distinct !DISubprogram(name: "set_char_quoting", scope: !376, file: !376, line: 152, type: !1967, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !1969)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!45, !1933, !42, !45}
!1969 = !{!1970, !1971, !1972, !1973, !1974, !1976, !1977}
!1970 = !DILocalVariable(name: "o", arg: 1, scope: !1966, file: !376, line: 152, type: !1933)
!1971 = !DILocalVariable(name: "c", arg: 2, scope: !1966, file: !376, line: 152, type: !42)
!1972 = !DILocalVariable(name: "i", arg: 3, scope: !1966, file: !376, line: 152, type: !45)
!1973 = !DILocalVariable(name: "uc", scope: !1966, file: !376, line: 154, type: !197)
!1974 = !DILocalVariable(name: "p", scope: !1966, file: !376, line: 155, type: !1975)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!1976 = !DILocalVariable(name: "shift", scope: !1966, file: !376, line: 157, type: !45)
!1977 = !DILocalVariable(name: "r", scope: !1966, file: !376, line: 158, type: !45)
!1978 = !DILocation(line: 0, scope: !1966)
!1979 = !DILocation(line: 156, column: 6, scope: !1966)
!1980 = !DILocation(line: 156, column: 62, scope: !1966)
!1981 = !DILocation(line: 156, column: 57, scope: !1966)
!1982 = !DILocation(line: 157, column: 15, scope: !1966)
!1983 = !DILocation(line: 158, column: 12, scope: !1966)
!1984 = !DILocation(line: 158, column: 15, scope: !1966)
!1985 = !DILocation(line: 158, column: 25, scope: !1966)
!1986 = !DILocation(line: 159, column: 13, scope: !1966)
!1987 = !DILocation(line: 159, column: 18, scope: !1966)
!1988 = !DILocation(line: 159, column: 23, scope: !1966)
!1989 = !DILocation(line: 159, column: 6, scope: !1966)
!1990 = !DILocation(line: 160, column: 3, scope: !1966)
!1991 = distinct !DISubprogram(name: "set_quoting_flags", scope: !376, file: !376, line: 168, type: !1992, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !1994)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!45, !1933, !45}
!1994 = !{!1995, !1996, !1997}
!1995 = !DILocalVariable(name: "o", arg: 1, scope: !1991, file: !376, line: 168, type: !1933)
!1996 = !DILocalVariable(name: "i", arg: 2, scope: !1991, file: !376, line: 168, type: !45)
!1997 = !DILocalVariable(name: "r", scope: !1991, file: !376, line: 170, type: !45)
!1998 = !DILocation(line: 0, scope: !1991)
!1999 = !DILocation(line: 171, column: 8, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1991, file: !376, line: 171, column: 7)
!2001 = !DILocation(line: 171, column: 7, scope: !1991)
!2002 = !DILocation(line: 173, column: 10, scope: !1991)
!2003 = !{!1953, !1425, i64 4}
!2004 = !DILocation(line: 174, column: 12, scope: !1991)
!2005 = !DILocation(line: 175, column: 3, scope: !1991)
!2006 = distinct !DISubprogram(name: "set_custom_quoting", scope: !376, file: !376, line: 179, type: !2007, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !2009)
!2007 = !DISubroutineType(types: !2008)
!2008 = !{null, !1933, !43, !43}
!2009 = !{!2010, !2011, !2012}
!2010 = !DILocalVariable(name: "o", arg: 1, scope: !2006, file: !376, line: 179, type: !1933)
!2011 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2006, file: !376, line: 180, type: !43)
!2012 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2006, file: !376, line: 180, type: !43)
!2013 = !DILocation(line: 0, scope: !2006)
!2014 = !DILocation(line: 182, column: 8, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2006, file: !376, line: 182, column: 7)
!2016 = !DILocation(line: 182, column: 7, scope: !2006)
!2017 = !DILocation(line: 184, column: 6, scope: !2006)
!2018 = !DILocation(line: 184, column: 12, scope: !2006)
!2019 = !DILocation(line: 185, column: 8, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2006, file: !376, line: 185, column: 7)
!2021 = !DILocation(line: 185, column: 23, scope: !2020)
!2022 = !DILocation(line: 185, column: 19, scope: !2020)
!2023 = !DILocation(line: 186, column: 5, scope: !2020)
!2024 = !DILocation(line: 187, column: 6, scope: !2006)
!2025 = !DILocation(line: 187, column: 17, scope: !2006)
!2026 = !{!1953, !1299, i64 40}
!2027 = !DILocation(line: 188, column: 6, scope: !2006)
!2028 = !DILocation(line: 188, column: 18, scope: !2006)
!2029 = !{!1953, !1299, i64 48}
!2030 = !DILocation(line: 189, column: 1, scope: !2006)
!2031 = distinct !DISubprogram(name: "quotearg_buffer", scope: !376, file: !376, line: 784, type: !2032, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !2034)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!100, !41, !100, !43, !100, !406}
!2034 = !{!2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042}
!2035 = !DILocalVariable(name: "buffer", arg: 1, scope: !2031, file: !376, line: 784, type: !41)
!2036 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2031, file: !376, line: 784, type: !100)
!2037 = !DILocalVariable(name: "arg", arg: 3, scope: !2031, file: !376, line: 785, type: !43)
!2038 = !DILocalVariable(name: "argsize", arg: 4, scope: !2031, file: !376, line: 785, type: !100)
!2039 = !DILocalVariable(name: "o", arg: 5, scope: !2031, file: !376, line: 786, type: !406)
!2040 = !DILocalVariable(name: "p", scope: !2031, file: !376, line: 788, type: !406)
!2041 = !DILocalVariable(name: "e", scope: !2031, file: !376, line: 789, type: !45)
!2042 = !DILocalVariable(name: "r", scope: !2031, file: !376, line: 790, type: !100)
!2043 = !DILocation(line: 0, scope: !2031)
!2044 = !DILocation(line: 788, column: 37, scope: !2031)
!2045 = !DILocation(line: 789, column: 11, scope: !2031)
!2046 = !DILocation(line: 791, column: 43, scope: !2031)
!2047 = !DILocation(line: 791, column: 53, scope: !2031)
!2048 = !DILocation(line: 791, column: 60, scope: !2031)
!2049 = !DILocation(line: 792, column: 43, scope: !2031)
!2050 = !DILocation(line: 792, column: 58, scope: !2031)
!2051 = !DILocation(line: 790, column: 14, scope: !2031)
!2052 = !DILocation(line: 793, column: 9, scope: !2031)
!2053 = !DILocation(line: 794, column: 3, scope: !2031)
!2054 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !376, file: !376, line: 256, type: !2055, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !2059)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{!100, !41, !100, !43, !100, !22, !45, !2057, !43, !43}
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!2059 = !{!2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2084, !2085, !2086, !2087, !2088, !2091, !2092, !2098, !2101, !2102, !2109, !2112, !2113, !2114, !2115, !2116, !2117}
!2060 = !DILocalVariable(name: "buffer", arg: 1, scope: !2054, file: !376, line: 256, type: !41)
!2061 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2054, file: !376, line: 256, type: !100)
!2062 = !DILocalVariable(name: "arg", arg: 3, scope: !2054, file: !376, line: 257, type: !43)
!2063 = !DILocalVariable(name: "argsize", arg: 4, scope: !2054, file: !376, line: 257, type: !100)
!2064 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2054, file: !376, line: 258, type: !22)
!2065 = !DILocalVariable(name: "flags", arg: 6, scope: !2054, file: !376, line: 258, type: !45)
!2066 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2054, file: !376, line: 259, type: !2057)
!2067 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2054, file: !376, line: 260, type: !43)
!2068 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2054, file: !376, line: 261, type: !43)
!2069 = !DILocalVariable(name: "i", scope: !2054, file: !376, line: 263, type: !100)
!2070 = !DILocalVariable(name: "len", scope: !2054, file: !376, line: 264, type: !100)
!2071 = !DILocalVariable(name: "orig_buffersize", scope: !2054, file: !376, line: 265, type: !100)
!2072 = !DILocalVariable(name: "quote_string", scope: !2054, file: !376, line: 266, type: !43)
!2073 = !DILocalVariable(name: "quote_string_len", scope: !2054, file: !376, line: 267, type: !100)
!2074 = !DILocalVariable(name: "backslash_escapes", scope: !2054, file: !376, line: 268, type: !202)
!2075 = !DILocalVariable(name: "unibyte_locale", scope: !2054, file: !376, line: 269, type: !202)
!2076 = !DILocalVariable(name: "elide_outer_quotes", scope: !2054, file: !376, line: 270, type: !202)
!2077 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2054, file: !376, line: 271, type: !202)
!2078 = !DILocalVariable(name: "encountered_single_quote", scope: !2054, file: !376, line: 272, type: !202)
!2079 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2054, file: !376, line: 273, type: !202)
!2080 = !DILocalVariable(name: "c", scope: !2081, file: !376, line: 402, type: !197)
!2081 = distinct !DILexicalBlock(scope: !2082, file: !376, line: 401, column: 5)
!2082 = distinct !DILexicalBlock(scope: !2083, file: !376, line: 400, column: 3)
!2083 = distinct !DILexicalBlock(scope: !2054, file: !376, line: 400, column: 3)
!2084 = !DILocalVariable(name: "esc", scope: !2081, file: !376, line: 403, type: !197)
!2085 = !DILocalVariable(name: "is_right_quote", scope: !2081, file: !376, line: 404, type: !202)
!2086 = !DILocalVariable(name: "escaping", scope: !2081, file: !376, line: 405, type: !202)
!2087 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2081, file: !376, line: 406, type: !202)
!2088 = !DILocalVariable(name: "m", scope: !2089, file: !376, line: 610, type: !100)
!2089 = distinct !DILexicalBlock(scope: !2090, file: !376, line: 608, column: 11)
!2090 = distinct !DILexicalBlock(scope: !2081, file: !376, line: 426, column: 9)
!2091 = !DILocalVariable(name: "printable", scope: !2089, file: !376, line: 612, type: !202)
!2092 = !DILocalVariable(name: "mbstate", scope: !2093, file: !376, line: 621, type: !2095)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !376, line: 620, column: 15)
!2094 = distinct !DILexicalBlock(scope: !2089, file: !376, line: 614, column: 17)
!2095 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2096, line: 6, baseType: !2097)
!2096 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!2097 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !427, line: 21, baseType: !426)
!2098 = !DILocalVariable(name: "w", scope: !2099, file: !376, line: 631, type: !2100)
!2099 = distinct !DILexicalBlock(scope: !2093, file: !376, line: 630, column: 19)
!2100 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !101, line: 74, baseType: !45)
!2101 = !DILocalVariable(name: "bytes", scope: !2099, file: !376, line: 632, type: !100)
!2102 = !DILocalVariable(name: "j", scope: !2103, file: !376, line: 657, type: !100)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !376, line: 656, column: 27)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !376, line: 654, column: 29)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !376, line: 649, column: 23)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !376, line: 641, column: 30)
!2107 = distinct !DILexicalBlock(scope: !2108, file: !376, line: 636, column: 30)
!2108 = distinct !DILexicalBlock(scope: !2099, file: !376, line: 634, column: 25)
!2109 = !DILocalVariable(name: "ilim", scope: !2110, file: !376, line: 684, type: !100)
!2110 = distinct !DILexicalBlock(scope: !2111, file: !376, line: 681, column: 15)
!2111 = distinct !DILexicalBlock(scope: !2089, file: !376, line: 680, column: 17)
!2112 = !DILabel(scope: !2054, name: "process_input", file: !376, line: 314)
!2113 = !DILabel(scope: !2090, name: "c_and_shell_escape", file: !376, line: 512)
!2114 = !DILabel(scope: !2090, name: "c_escape", file: !376, line: 517)
!2115 = !DILabel(scope: !2081, name: "store_escape", file: !376, line: 719)
!2116 = !DILabel(scope: !2081, name: "store_c", file: !376, line: 722)
!2117 = !DILabel(scope: !2054, name: "force_outer_quoting_style", file: !376, line: 763)
!2118 = !DILocation(line: 0, scope: !2054)
!2119 = !DILocation(line: 269, column: 25, scope: !2054)
!2120 = !DILocation(line: 269, column: 36, scope: !2054)
!2121 = !DILocation(line: 270, column: 8, scope: !2054)
!2122 = !DILocation(line: 0, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2090, file: !376, line: 526, column: 15)
!2124 = !DILocation(line: 0, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2126, file: !376, line: 462, column: 19)
!2126 = distinct !DILexicalBlock(scope: !2090, file: !376, line: 455, column: 13)
!2127 = !DILocation(line: 0, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2129, file: !376, line: 449, column: 20)
!2129 = distinct !DILexicalBlock(scope: !2090, file: !376, line: 428, column: 15)
!2130 = !DILocation(line: 0, scope: !2093)
!2131 = !DILocation(line: 0, scope: !2099)
!2132 = !DILocation(line: 0, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2081, file: !376, line: 712, column: 11)
!2134 = !DILocation(line: 273, column: 3, scope: !2054)
!2135 = !DILocation(line: 265, column: 10, scope: !2054)
!2136 = !DILocation(line: 266, column: 15, scope: !2054)
!2137 = !DILocation(line: 267, column: 10, scope: !2054)
!2138 = !DILocation(line: 268, column: 8, scope: !2054)
!2139 = !DILocation(line: 271, column: 8, scope: !2054)
!2140 = !DILocation(line: 272, column: 8, scope: !2054)
!2141 = !DILocation(line: 273, column: 8, scope: !2054)
!2142 = !DILocation(line: 314, column: 2, scope: !2054)
!2143 = !DILocation(line: 316, column: 3, scope: !2054)
!2144 = !DILocation(line: 323, column: 11, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2054, file: !376, line: 317, column: 5)
!2146 = !DILocation(line: 323, column: 12, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2145, file: !376, line: 323, column: 11)
!2148 = !DILocation(line: 324, column: 9, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !376, line: 324, column: 9)
!2150 = distinct !DILexicalBlock(scope: !2147, file: !376, line: 324, column: 9)
!2151 = !DILocation(line: 324, column: 9, scope: !2150)
!2152 = !DILocation(line: 362, column: 26, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2154, file: !376, line: 340, column: 11)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !376, line: 339, column: 13)
!2155 = distinct !DILexicalBlock(scope: !2145, file: !376, line: 338, column: 7)
!2156 = !DILocation(line: 363, column: 27, scope: !2153)
!2157 = !DILocation(line: 364, column: 11, scope: !2153)
!2158 = !DILocation(line: 365, column: 14, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2155, file: !376, line: 365, column: 13)
!2160 = !DILocation(line: 365, column: 13, scope: !2155)
!2161 = !DILocation(line: 366, column: 43, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2163, file: !376, line: 366, column: 11)
!2163 = distinct !DILexicalBlock(scope: !2159, file: !376, line: 366, column: 11)
!2164 = !DILocation(line: 366, column: 11, scope: !2163)
!2165 = !DILocation(line: 367, column: 13, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2167, file: !376, line: 367, column: 13)
!2167 = distinct !DILexicalBlock(scope: !2162, file: !376, line: 367, column: 13)
!2168 = !DILocation(line: 367, column: 13, scope: !2167)
!2169 = !DILocation(line: 366, column: 70, scope: !2162)
!2170 = distinct !{!2170, !2164, !2171}
!2171 = !DILocation(line: 367, column: 13, scope: !2163)
!2172 = !DILocation(line: 264, column: 10, scope: !2054)
!2173 = !DILocation(line: 370, column: 28, scope: !2155)
!2174 = !DILocation(line: 372, column: 7, scope: !2145)
!2175 = !DILocation(line: 376, column: 7, scope: !2145)
!2176 = !DILocation(line: 379, column: 7, scope: !2145)
!2177 = !DILocation(line: 381, column: 12, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2145, file: !376, line: 381, column: 11)
!2179 = !DILocation(line: 381, column: 11, scope: !2145)
!2180 = !DILocation(line: 386, column: 12, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2145, file: !376, line: 386, column: 11)
!2182 = !DILocation(line: 386, column: 11, scope: !2145)
!2183 = !DILocation(line: 387, column: 9, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !376, line: 387, column: 9)
!2185 = distinct !DILexicalBlock(scope: !2181, file: !376, line: 387, column: 9)
!2186 = !DILocation(line: 387, column: 9, scope: !2185)
!2187 = !DILocation(line: 394, column: 7, scope: !2145)
!2188 = !DILocation(line: 397, column: 7, scope: !2145)
!2189 = !DILocation(line: 0, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2081, file: !376, line: 408, column: 11)
!2191 = !DILocation(line: 0, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2193, file: !376, line: 419, column: 15)
!2193 = distinct !DILexicalBlock(scope: !2190, file: !376, line: 418, column: 9)
!2194 = !DILocation(line: 0, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2090, file: !376, line: 556, column: 15)
!2196 = !DILocation(line: 0, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2090, file: !376, line: 548, column: 15)
!2198 = !DILocation(line: 0, scope: !2104)
!2199 = !DILocation(line: 0, scope: !2111)
!2200 = !DILocation(line: 0, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2090, file: !376, line: 509, column: 15)
!2202 = !DILocation(line: 400, column: 8, scope: !2083)
!2203 = !DILocation(line: 0, scope: !2083)
!2204 = !DILocation(line: 400, column: 27, scope: !2082)
!2205 = !DILocation(line: 400, column: 19, scope: !2082)
!2206 = !DILocation(line: 400, column: 41, scope: !2082)
!2207 = !DILocation(line: 400, column: 48, scope: !2082)
!2208 = !DILocation(line: 400, column: 3, scope: !2083)
!2209 = !DILocation(line: 400, column: 60, scope: !2082)
!2210 = !DILocation(line: 0, scope: !2081)
!2211 = !DILocation(line: 409, column: 11, scope: !2190)
!2212 = !DILocation(line: 411, column: 17, scope: !2190)
!2213 = !DILocation(line: 412, column: 39, scope: !2190)
!2214 = !DILocation(line: 416, column: 32, scope: !2190)
!2215 = !DILocation(line: 412, column: 19, scope: !2190)
!2216 = !DILocation(line: 412, column: 15, scope: !2190)
!2217 = !DILocation(line: 417, column: 11, scope: !2190)
!2218 = !DILocation(line: 417, column: 26, scope: !2190)
!2219 = !DILocation(line: 417, column: 14, scope: !2190)
!2220 = !DILocation(line: 417, column: 63, scope: !2190)
!2221 = !DILocation(line: 408, column: 11, scope: !2081)
!2222 = !DILocation(line: 424, column: 11, scope: !2081)
!2223 = !DILocation(line: 425, column: 7, scope: !2081)
!2224 = !DILocation(line: 428, column: 15, scope: !2090)
!2225 = !DILocation(line: 430, column: 15, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2227, file: !376, line: 430, column: 15)
!2227 = distinct !DILexicalBlock(scope: !2129, file: !376, line: 429, column: 13)
!2228 = !DILocation(line: 430, column: 15, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2226, file: !376, line: 430, column: 15)
!2230 = !DILocation(line: 430, column: 15, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2232, file: !376, line: 430, column: 15)
!2232 = distinct !DILexicalBlock(scope: !2233, file: !376, line: 430, column: 15)
!2233 = distinct !DILexicalBlock(scope: !2229, file: !376, line: 430, column: 15)
!2234 = !DILocation(line: 430, column: 15, scope: !2232)
!2235 = !DILocation(line: 430, column: 15, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2237, file: !376, line: 430, column: 15)
!2237 = distinct !DILexicalBlock(scope: !2233, file: !376, line: 430, column: 15)
!2238 = !DILocation(line: 430, column: 15, scope: !2237)
!2239 = !DILocation(line: 430, column: 15, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2241, file: !376, line: 430, column: 15)
!2241 = distinct !DILexicalBlock(scope: !2233, file: !376, line: 430, column: 15)
!2242 = !DILocation(line: 430, column: 15, scope: !2241)
!2243 = !DILocation(line: 430, column: 15, scope: !2233)
!2244 = !DILocation(line: 430, column: 15, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2246, file: !376, line: 430, column: 15)
!2246 = distinct !DILexicalBlock(scope: !2226, file: !376, line: 430, column: 15)
!2247 = !DILocation(line: 430, column: 15, scope: !2246)
!2248 = !DILocation(line: 438, column: 19, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2227, file: !376, line: 437, column: 19)
!2250 = !DILocation(line: 438, column: 24, scope: !2249)
!2251 = !DILocation(line: 438, column: 28, scope: !2249)
!2252 = !DILocation(line: 438, column: 38, scope: !2249)
!2253 = !DILocation(line: 438, column: 48, scope: !2249)
!2254 = !DILocation(line: 438, column: 59, scope: !2249)
!2255 = !DILocation(line: 440, column: 19, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2257, file: !376, line: 440, column: 19)
!2257 = distinct !DILexicalBlock(scope: !2258, file: !376, line: 440, column: 19)
!2258 = distinct !DILexicalBlock(scope: !2249, file: !376, line: 439, column: 17)
!2259 = !DILocation(line: 440, column: 19, scope: !2257)
!2260 = !DILocation(line: 441, column: 19, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !376, line: 441, column: 19)
!2262 = distinct !DILexicalBlock(scope: !2258, file: !376, line: 441, column: 19)
!2263 = !DILocation(line: 441, column: 19, scope: !2262)
!2264 = !DILocation(line: 442, column: 17, scope: !2258)
!2265 = !DILocation(line: 449, column: 20, scope: !2129)
!2266 = !DILocation(line: 454, column: 11, scope: !2090)
!2267 = !DILocation(line: 457, column: 19, scope: !2126)
!2268 = !DILocation(line: 463, column: 19, scope: !2125)
!2269 = !DILocation(line: 463, column: 24, scope: !2125)
!2270 = !DILocation(line: 463, column: 28, scope: !2125)
!2271 = !DILocation(line: 463, column: 38, scope: !2125)
!2272 = !DILocation(line: 463, column: 47, scope: !2125)
!2273 = !DILocation(line: 463, column: 41, scope: !2125)
!2274 = !DILocation(line: 463, column: 52, scope: !2125)
!2275 = !DILocation(line: 462, column: 19, scope: !2126)
!2276 = !DILocation(line: 464, column: 25, scope: !2125)
!2277 = !DILocation(line: 464, column: 17, scope: !2125)
!2278 = !DILocation(line: 471, column: 25, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2125, file: !376, line: 465, column: 19)
!2280 = !DILocation(line: 475, column: 21, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2282, file: !376, line: 475, column: 21)
!2282 = distinct !DILexicalBlock(scope: !2279, file: !376, line: 475, column: 21)
!2283 = !DILocation(line: 475, column: 21, scope: !2282)
!2284 = !DILocation(line: 476, column: 21, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2286, file: !376, line: 476, column: 21)
!2286 = distinct !DILexicalBlock(scope: !2279, file: !376, line: 476, column: 21)
!2287 = !DILocation(line: 476, column: 21, scope: !2286)
!2288 = !DILocation(line: 477, column: 21, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2290, file: !376, line: 477, column: 21)
!2290 = distinct !DILexicalBlock(scope: !2279, file: !376, line: 477, column: 21)
!2291 = !DILocation(line: 477, column: 21, scope: !2290)
!2292 = !DILocation(line: 478, column: 21, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2294, file: !376, line: 478, column: 21)
!2294 = distinct !DILexicalBlock(scope: !2279, file: !376, line: 478, column: 21)
!2295 = !DILocation(line: 478, column: 21, scope: !2294)
!2296 = !DILocation(line: 479, column: 21, scope: !2279)
!2297 = !DILocation(line: 492, column: 31, scope: !2090)
!2298 = !DILocation(line: 493, column: 31, scope: !2090)
!2299 = !DILocation(line: 495, column: 31, scope: !2090)
!2300 = !DILocation(line: 496, column: 31, scope: !2090)
!2301 = !DILocation(line: 497, column: 31, scope: !2090)
!2302 = !DILocation(line: 500, column: 15, scope: !2090)
!2303 = !DILocation(line: 502, column: 19, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2305, file: !376, line: 501, column: 13)
!2305 = distinct !DILexicalBlock(scope: !2090, file: !376, line: 500, column: 15)
!2306 = !DILocation(line: 509, column: 33, scope: !2201)
!2307 = !DILocation(line: 0, scope: !2090)
!2308 = !DILocation(line: 512, column: 9, scope: !2090)
!2309 = !DILocation(line: 514, column: 15, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2090, file: !376, line: 513, column: 15)
!2311 = !DILocation(line: 517, column: 9, scope: !2090)
!2312 = !DILocation(line: 518, column: 15, scope: !2090)
!2313 = !DILocation(line: 526, column: 15, scope: !2090)
!2314 = !DILocation(line: 526, column: 40, scope: !2123)
!2315 = !DILocation(line: 526, column: 47, scope: !2123)
!2316 = !DILocation(line: 526, column: 18, scope: !2123)
!2317 = !DILocation(line: 530, column: 17, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2090, file: !376, line: 530, column: 15)
!2319 = !DILocation(line: 530, column: 15, scope: !2090)
!2320 = !DILocation(line: 535, column: 11, scope: !2090)
!2321 = !DILocation(line: 549, column: 15, scope: !2197)
!2322 = !DILocation(line: 556, column: 15, scope: !2090)
!2323 = !DILocation(line: 558, column: 19, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2195, file: !376, line: 557, column: 13)
!2325 = !DILocation(line: 561, column: 19, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2324, file: !376, line: 561, column: 19)
!2327 = !DILocation(line: 561, column: 35, scope: !2326)
!2328 = !DILocation(line: 561, column: 30, scope: !2326)
!2329 = !DILocation(line: 570, column: 15, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2331, file: !376, line: 570, column: 15)
!2331 = distinct !DILexicalBlock(scope: !2324, file: !376, line: 570, column: 15)
!2332 = !DILocation(line: 570, column: 15, scope: !2331)
!2333 = !DILocation(line: 571, column: 15, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2335, file: !376, line: 571, column: 15)
!2335 = distinct !DILexicalBlock(scope: !2324, file: !376, line: 571, column: 15)
!2336 = !DILocation(line: 571, column: 15, scope: !2335)
!2337 = !DILocation(line: 572, column: 15, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2339, file: !376, line: 572, column: 15)
!2339 = distinct !DILexicalBlock(scope: !2324, file: !376, line: 572, column: 15)
!2340 = !DILocation(line: 572, column: 15, scope: !2339)
!2341 = !DILocation(line: 574, column: 13, scope: !2324)
!2342 = !DILocation(line: 614, column: 17, scope: !2089)
!2343 = !DILocation(line: 0, scope: !2089)
!2344 = !DILocation(line: 617, column: 29, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2094, file: !376, line: 615, column: 15)
!2346 = !{!1683, !1683, i64 0}
!2347 = !DILocation(line: 617, column: 27, scope: !2345)
!2348 = !DILocation(line: 618, column: 15, scope: !2345)
!2349 = !DILocation(line: 621, column: 17, scope: !2093)
!2350 = !DILocation(line: 621, column: 27, scope: !2093)
!2351 = !DILocalVariable(name: "__dest", arg: 1, scope: !2352, file: !2353, line: 59, type: !98)
!2352 = distinct !DISubprogram(name: "memset", scope: !2353, file: !2353, line: 59, type: !2354, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !2356)
!2353 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!2354 = !DISubroutineType(types: !2355)
!2355 = !{!98, !98, !45, !100}
!2356 = !{!2351, !2357, !2358}
!2357 = !DILocalVariable(name: "__ch", arg: 2, scope: !2352, file: !2353, line: 59, type: !45)
!2358 = !DILocalVariable(name: "__len", arg: 3, scope: !2352, file: !2353, line: 59, type: !100)
!2359 = !DILocation(line: 0, scope: !2352, inlinedAt: !2360)
!2360 = distinct !DILocation(line: 622, column: 17, scope: !2093)
!2361 = !DILocation(line: 71, column: 10, scope: !2352, inlinedAt: !2360)
!2362 = !DILocation(line: 626, column: 29, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2093, file: !376, line: 626, column: 21)
!2364 = !DILocation(line: 626, column: 21, scope: !2093)
!2365 = !DILocation(line: 627, column: 29, scope: !2363)
!2366 = !DILocation(line: 627, column: 19, scope: !2363)
!2367 = !DILocation(line: 629, column: 17, scope: !2093)
!2368 = !DILocation(line: 624, column: 19, scope: !2093)
!2369 = !DILocation(line: 625, column: 27, scope: !2093)
!2370 = !DILocation(line: 631, column: 21, scope: !2099)
!2371 = !DILocation(line: 632, column: 56, scope: !2099)
!2372 = !DILocation(line: 632, column: 50, scope: !2099)
!2373 = !DILocation(line: 633, column: 53, scope: !2099)
!2374 = !DILocation(line: 632, column: 36, scope: !2099)
!2375 = !DILocation(line: 634, column: 25, scope: !2099)
!2376 = !DILocation(line: 644, column: 38, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2106, file: !376, line: 642, column: 23)
!2378 = !DILocation(line: 644, column: 48, scope: !2377)
!2379 = !DILocation(line: 644, column: 25, scope: !2377)
!2380 = !DILocation(line: 644, column: 51, scope: !2377)
!2381 = !DILocation(line: 645, column: 28, scope: !2377)
!2382 = !DILocation(line: 644, column: 34, scope: !2377)
!2383 = distinct !{!2383, !2379, !2381}
!2384 = !DILocation(line: 658, column: 43, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2386, file: !376, line: 658, column: 29)
!2386 = distinct !DILexicalBlock(scope: !2103, file: !376, line: 658, column: 29)
!2387 = !DILocation(line: 655, column: 29, scope: !2104)
!2388 = !DILocation(line: 0, scope: !2103)
!2389 = !DILocation(line: 659, column: 49, scope: !2385)
!2390 = !DILocation(line: 659, column: 39, scope: !2385)
!2391 = !DILocation(line: 659, column: 31, scope: !2385)
!2392 = !DILocation(line: 658, column: 53, scope: !2385)
!2393 = !DILocation(line: 658, column: 29, scope: !2386)
!2394 = distinct !{!2394, !2393, !2395}
!2395 = !DILocation(line: 667, column: 33, scope: !2386)
!2396 = !DILocation(line: 674, column: 19, scope: !2093)
!2397 = !DILocation(line: 670, column: 41, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2105, file: !376, line: 670, column: 29)
!2399 = !DILocation(line: 670, column: 31, scope: !2398)
!2400 = !DILocation(line: 670, column: 29, scope: !2105)
!2401 = !DILocation(line: 672, column: 27, scope: !2105)
!2402 = !DILocation(line: 675, column: 26, scope: !2093)
!2403 = !DILocation(line: 675, column: 24, scope: !2093)
!2404 = !DILocation(line: 674, column: 19, scope: !2099)
!2405 = distinct !{!2405, !2367, !2406}
!2406 = !DILocation(line: 675, column: 44, scope: !2093)
!2407 = !DILocation(line: 676, column: 15, scope: !2094)
!2408 = !DILocation(line: 0, scope: !2094)
!2409 = !DILocation(line: 678, column: 40, scope: !2089)
!2410 = !DILocation(line: 680, column: 19, scope: !2111)
!2411 = !DILocation(line: 680, column: 45, scope: !2111)
!2412 = !DILocation(line: 680, column: 23, scope: !2111)
!2413 = !DILocation(line: 684, column: 33, scope: !2110)
!2414 = !DILocation(line: 0, scope: !2110)
!2415 = !DILocation(line: 686, column: 17, scope: !2110)
!2416 = !DILocation(line: 405, column: 12, scope: !2081)
!2417 = !DILocation(line: 688, column: 43, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2419, file: !376, line: 688, column: 25)
!2419 = distinct !DILexicalBlock(scope: !2420, file: !376, line: 687, column: 19)
!2420 = distinct !DILexicalBlock(scope: !2421, file: !376, line: 686, column: 17)
!2421 = distinct !DILexicalBlock(scope: !2110, file: !376, line: 686, column: 17)
!2422 = !DILocation(line: 690, column: 25, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2424, file: !376, line: 690, column: 25)
!2424 = distinct !DILexicalBlock(scope: !2418, file: !376, line: 689, column: 23)
!2425 = !DILocation(line: 690, column: 25, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2423, file: !376, line: 690, column: 25)
!2427 = !DILocation(line: 690, column: 25, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2429, file: !376, line: 690, column: 25)
!2429 = distinct !DILexicalBlock(scope: !2430, file: !376, line: 690, column: 25)
!2430 = distinct !DILexicalBlock(scope: !2426, file: !376, line: 690, column: 25)
!2431 = !DILocation(line: 690, column: 25, scope: !2429)
!2432 = !DILocation(line: 690, column: 25, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2434, file: !376, line: 690, column: 25)
!2434 = distinct !DILexicalBlock(scope: !2430, file: !376, line: 690, column: 25)
!2435 = !DILocation(line: 690, column: 25, scope: !2434)
!2436 = !DILocation(line: 690, column: 25, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2438, file: !376, line: 690, column: 25)
!2438 = distinct !DILexicalBlock(scope: !2430, file: !376, line: 690, column: 25)
!2439 = !DILocation(line: 690, column: 25, scope: !2438)
!2440 = !DILocation(line: 690, column: 25, scope: !2430)
!2441 = !DILocation(line: 690, column: 25, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2443, file: !376, line: 690, column: 25)
!2443 = distinct !DILexicalBlock(scope: !2423, file: !376, line: 690, column: 25)
!2444 = !DILocation(line: 690, column: 25, scope: !2443)
!2445 = !DILocation(line: 691, column: 25, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2447, file: !376, line: 691, column: 25)
!2447 = distinct !DILexicalBlock(scope: !2424, file: !376, line: 691, column: 25)
!2448 = !DILocation(line: 691, column: 25, scope: !2447)
!2449 = !DILocation(line: 692, column: 25, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2451, file: !376, line: 692, column: 25)
!2451 = distinct !DILexicalBlock(scope: !2424, file: !376, line: 692, column: 25)
!2452 = !DILocation(line: 692, column: 25, scope: !2451)
!2453 = !DILocation(line: 693, column: 38, scope: !2424)
!2454 = !DILocation(line: 693, column: 33, scope: !2424)
!2455 = !DILocation(line: 694, column: 23, scope: !2424)
!2456 = !DILocation(line: 695, column: 30, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2418, file: !376, line: 695, column: 30)
!2458 = !DILocation(line: 695, column: 30, scope: !2418)
!2459 = !DILocation(line: 697, column: 25, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2461, file: !376, line: 697, column: 25)
!2461 = distinct !DILexicalBlock(scope: !2462, file: !376, line: 697, column: 25)
!2462 = distinct !DILexicalBlock(scope: !2457, file: !376, line: 696, column: 23)
!2463 = !DILocation(line: 697, column: 25, scope: !2461)
!2464 = !DILocation(line: 699, column: 23, scope: !2462)
!2465 = !DILocation(line: 700, column: 35, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2419, file: !376, line: 700, column: 25)
!2467 = !DILocation(line: 700, column: 30, scope: !2466)
!2468 = !DILocation(line: 700, column: 25, scope: !2419)
!2469 = !DILocation(line: 702, column: 21, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2471, file: !376, line: 702, column: 21)
!2471 = distinct !DILexicalBlock(scope: !2419, file: !376, line: 702, column: 21)
!2472 = !DILocation(line: 702, column: 21, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2474, file: !376, line: 702, column: 21)
!2474 = distinct !DILexicalBlock(scope: !2475, file: !376, line: 702, column: 21)
!2475 = distinct !DILexicalBlock(scope: !2470, file: !376, line: 702, column: 21)
!2476 = !DILocation(line: 702, column: 21, scope: !2474)
!2477 = !DILocation(line: 702, column: 21, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2479, file: !376, line: 702, column: 21)
!2479 = distinct !DILexicalBlock(scope: !2475, file: !376, line: 702, column: 21)
!2480 = !DILocation(line: 702, column: 21, scope: !2479)
!2481 = !DILocation(line: 702, column: 21, scope: !2475)
!2482 = !DILocation(line: 0, scope: !2419)
!2483 = !DILocation(line: 703, column: 21, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2485, file: !376, line: 703, column: 21)
!2485 = distinct !DILexicalBlock(scope: !2419, file: !376, line: 703, column: 21)
!2486 = !DILocation(line: 703, column: 21, scope: !2485)
!2487 = !DILocation(line: 704, column: 25, scope: !2419)
!2488 = !DILocation(line: 686, column: 17, scope: !2420)
!2489 = distinct !{!2489, !2490, !2491}
!2490 = !DILocation(line: 686, column: 17, scope: !2421)
!2491 = !DILocation(line: 705, column: 19, scope: !2421)
!2492 = !DILocation(line: 416, column: 30, scope: !2190)
!2493 = !DILocation(line: 712, column: 34, scope: !2133)
!2494 = !DILocation(line: 715, column: 35, scope: !2133)
!2495 = !DILocation(line: 715, column: 17, scope: !2133)
!2496 = !DILocation(line: 715, column: 47, scope: !2133)
!2497 = !DILocation(line: 715, column: 65, scope: !2133)
!2498 = !DILocation(line: 716, column: 15, scope: !2133)
!2499 = !DILocation(line: 716, column: 11, scope: !2133)
!2500 = !DILocation(line: 712, column: 11, scope: !2081)
!2501 = !DILocation(line: 400, column: 10, scope: !2083)
!2502 = !DILocation(line: 719, column: 5, scope: !2081)
!2503 = !DILocation(line: 720, column: 7, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2081, file: !376, line: 720, column: 7)
!2505 = !DILocation(line: 720, column: 7, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2504, file: !376, line: 720, column: 7)
!2507 = !DILocation(line: 720, column: 7, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2509, file: !376, line: 720, column: 7)
!2509 = distinct !DILexicalBlock(scope: !2510, file: !376, line: 720, column: 7)
!2510 = distinct !DILexicalBlock(scope: !2506, file: !376, line: 720, column: 7)
!2511 = !DILocation(line: 720, column: 7, scope: !2509)
!2512 = !DILocation(line: 720, column: 7, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2514, file: !376, line: 720, column: 7)
!2514 = distinct !DILexicalBlock(scope: !2510, file: !376, line: 720, column: 7)
!2515 = !DILocation(line: 720, column: 7, scope: !2514)
!2516 = !DILocation(line: 720, column: 7, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2518, file: !376, line: 720, column: 7)
!2518 = distinct !DILexicalBlock(scope: !2510, file: !376, line: 720, column: 7)
!2519 = !DILocation(line: 720, column: 7, scope: !2518)
!2520 = !DILocation(line: 720, column: 7, scope: !2510)
!2521 = !DILocation(line: 720, column: 7, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2523, file: !376, line: 720, column: 7)
!2523 = distinct !DILexicalBlock(scope: !2504, file: !376, line: 720, column: 7)
!2524 = !DILocation(line: 720, column: 7, scope: !2523)
!2525 = !DILocation(line: 722, column: 5, scope: !2081)
!2526 = !DILocation(line: 723, column: 7, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2528, file: !376, line: 723, column: 7)
!2528 = distinct !DILexicalBlock(scope: !2081, file: !376, line: 723, column: 7)
!2529 = !DILocation(line: 424, column: 9, scope: !2081)
!2530 = !DILocation(line: 723, column: 7, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2532, file: !376, line: 723, column: 7)
!2532 = distinct !DILexicalBlock(scope: !2533, file: !376, line: 723, column: 7)
!2533 = distinct !DILexicalBlock(scope: !2527, file: !376, line: 723, column: 7)
!2534 = !DILocation(line: 723, column: 7, scope: !2532)
!2535 = !DILocation(line: 723, column: 7, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2537, file: !376, line: 723, column: 7)
!2537 = distinct !DILexicalBlock(scope: !2533, file: !376, line: 723, column: 7)
!2538 = !DILocation(line: 723, column: 7, scope: !2537)
!2539 = !DILocation(line: 723, column: 7, scope: !2533)
!2540 = !DILocation(line: 724, column: 7, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2542, file: !376, line: 724, column: 7)
!2542 = distinct !DILexicalBlock(scope: !2081, file: !376, line: 724, column: 7)
!2543 = !DILocation(line: 724, column: 7, scope: !2542)
!2544 = !DILocation(line: 726, column: 13, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2081, file: !376, line: 726, column: 11)
!2546 = !DILocation(line: 726, column: 11, scope: !2081)
!2547 = !DILocation(line: 728, column: 5, scope: !2082)
!2548 = !DILocation(line: 400, column: 75, scope: !2082)
!2549 = !DILocation(line: 400, column: 3, scope: !2082)
!2550 = distinct !{!2550, !2208, !2551}
!2551 = !DILocation(line: 728, column: 5, scope: !2083)
!2552 = !DILocation(line: 730, column: 11, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2054, file: !376, line: 730, column: 7)
!2554 = !DILocation(line: 730, column: 16, scope: !2553)
!2555 = !DILocation(line: 738, column: 51, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2054, file: !376, line: 738, column: 7)
!2557 = !DILocation(line: 739, column: 10, scope: !2556)
!2558 = !DILocation(line: 741, column: 11, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2560, file: !376, line: 741, column: 11)
!2560 = distinct !DILexicalBlock(scope: !2556, file: !376, line: 740, column: 5)
!2561 = !DILocation(line: 741, column: 11, scope: !2560)
!2562 = !DILocation(line: 742, column: 16, scope: !2559)
!2563 = !DILocation(line: 742, column: 9, scope: !2559)
!2564 = !DILocation(line: 746, column: 18, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2559, file: !376, line: 746, column: 16)
!2566 = !DILocation(line: 746, column: 32, scope: !2565)
!2567 = !DILocation(line: 746, column: 29, scope: !2565)
!2568 = !DILocation(line: 755, column: 7, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2054, file: !376, line: 755, column: 7)
!2570 = !DILocation(line: 755, column: 20, scope: !2569)
!2571 = !DILocation(line: 756, column: 12, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2573, file: !376, line: 756, column: 5)
!2573 = distinct !DILexicalBlock(scope: !2569, file: !376, line: 756, column: 5)
!2574 = !DILocation(line: 756, column: 5, scope: !2573)
!2575 = !DILocation(line: 757, column: 7, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2577, file: !376, line: 757, column: 7)
!2577 = distinct !DILexicalBlock(scope: !2572, file: !376, line: 757, column: 7)
!2578 = !DILocation(line: 757, column: 7, scope: !2577)
!2579 = !DILocation(line: 756, column: 39, scope: !2572)
!2580 = distinct !{!2580, !2574, !2581}
!2581 = !DILocation(line: 757, column: 7, scope: !2573)
!2582 = !DILocation(line: 759, column: 11, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2054, file: !376, line: 759, column: 7)
!2584 = !DILocation(line: 759, column: 7, scope: !2054)
!2585 = !DILocation(line: 760, column: 5, scope: !2583)
!2586 = !DILocation(line: 760, column: 17, scope: !2583)
!2587 = !DILocation(line: 763, column: 2, scope: !2054)
!2588 = !DILocation(line: 766, column: 51, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2054, file: !376, line: 766, column: 7)
!2590 = !DILocation(line: 766, column: 21, scope: !2589)
!2591 = !DILocation(line: 770, column: 42, scope: !2054)
!2592 = !DILocation(line: 768, column: 10, scope: !2054)
!2593 = !DILocation(line: 768, column: 3, scope: !2054)
!2594 = !DILocation(line: 772, column: 1, scope: !2054)
!2595 = distinct !DISubprogram(name: "gettext_quote", scope: !376, file: !376, line: 207, type: !2596, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !2598)
!2596 = !DISubroutineType(types: !2597)
!2597 = !{!43, !43, !22}
!2598 = !{!2599, !2600, !2601, !2602}
!2599 = !DILocalVariable(name: "msgid", arg: 1, scope: !2595, file: !376, line: 207, type: !43)
!2600 = !DILocalVariable(name: "s", arg: 2, scope: !2595, file: !376, line: 207, type: !22)
!2601 = !DILocalVariable(name: "translation", scope: !2595, file: !376, line: 209, type: !43)
!2602 = !DILocalVariable(name: "locale_code", scope: !2595, file: !376, line: 210, type: !43)
!2603 = !DILocation(line: 0, scope: !2595)
!2604 = !DILocation(line: 209, column: 29, scope: !2595)
!2605 = !DILocation(line: 212, column: 19, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2595, file: !376, line: 212, column: 7)
!2607 = !DILocation(line: 212, column: 7, scope: !2595)
!2608 = !DILocation(line: 233, column: 17, scope: !2595)
!2609 = !DILocalVariable(name: "s1", arg: 1, scope: !2610, file: !2611, line: 160, type: !43)
!2610 = distinct !DISubprogram(name: "strcaseeq0", scope: !2611, file: !2611, line: 160, type: !2612, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !2614)
!2611 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2612 = !DISubroutineType(types: !2613)
!2613 = !{!45, !43, !43, !42, !42, !42, !42, !42, !42, !42, !42, !42}
!2614 = !{!2609, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624}
!2615 = !DILocalVariable(name: "s2", arg: 2, scope: !2610, file: !2611, line: 160, type: !43)
!2616 = !DILocalVariable(name: "s20", arg: 3, scope: !2610, file: !2611, line: 160, type: !42)
!2617 = !DILocalVariable(name: "s21", arg: 4, scope: !2610, file: !2611, line: 160, type: !42)
!2618 = !DILocalVariable(name: "s22", arg: 5, scope: !2610, file: !2611, line: 160, type: !42)
!2619 = !DILocalVariable(name: "s23", arg: 6, scope: !2610, file: !2611, line: 160, type: !42)
!2620 = !DILocalVariable(name: "s24", arg: 7, scope: !2610, file: !2611, line: 160, type: !42)
!2621 = !DILocalVariable(name: "s25", arg: 8, scope: !2610, file: !2611, line: 160, type: !42)
!2622 = !DILocalVariable(name: "s26", arg: 9, scope: !2610, file: !2611, line: 160, type: !42)
!2623 = !DILocalVariable(name: "s27", arg: 10, scope: !2610, file: !2611, line: 160, type: !42)
!2624 = !DILocalVariable(name: "s28", arg: 11, scope: !2610, file: !2611, line: 160, type: !42)
!2625 = !DILocation(line: 0, scope: !2610, inlinedAt: !2626)
!2626 = distinct !DILocation(line: 234, column: 7, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2595, file: !376, line: 234, column: 7)
!2628 = !DILocation(line: 162, column: 7, scope: !2629, inlinedAt: !2626)
!2629 = distinct !DILexicalBlock(scope: !2610, file: !2611, line: 162, column: 7)
!2630 = !DILocalVariable(name: "s1", arg: 1, scope: !2631, file: !2611, line: 146, type: !43)
!2631 = distinct !DISubprogram(name: "strcaseeq1", scope: !2611, file: !2611, line: 146, type: !2632, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !2634)
!2632 = !DISubroutineType(types: !2633)
!2633 = !{!45, !43, !43, !42, !42, !42, !42, !42, !42, !42, !42}
!2634 = !{!2630, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643}
!2635 = !DILocalVariable(name: "s2", arg: 2, scope: !2631, file: !2611, line: 146, type: !43)
!2636 = !DILocalVariable(name: "s21", arg: 3, scope: !2631, file: !2611, line: 146, type: !42)
!2637 = !DILocalVariable(name: "s22", arg: 4, scope: !2631, file: !2611, line: 146, type: !42)
!2638 = !DILocalVariable(name: "s23", arg: 5, scope: !2631, file: !2611, line: 146, type: !42)
!2639 = !DILocalVariable(name: "s24", arg: 6, scope: !2631, file: !2611, line: 146, type: !42)
!2640 = !DILocalVariable(name: "s25", arg: 7, scope: !2631, file: !2611, line: 146, type: !42)
!2641 = !DILocalVariable(name: "s26", arg: 8, scope: !2631, file: !2611, line: 146, type: !42)
!2642 = !DILocalVariable(name: "s27", arg: 9, scope: !2631, file: !2611, line: 146, type: !42)
!2643 = !DILocalVariable(name: "s28", arg: 10, scope: !2631, file: !2611, line: 146, type: !42)
!2644 = !DILocation(line: 0, scope: !2631, inlinedAt: !2645)
!2645 = distinct !DILocation(line: 167, column: 16, scope: !2646, inlinedAt: !2626)
!2646 = distinct !DILexicalBlock(scope: !2647, file: !2611, line: 164, column: 11)
!2647 = distinct !DILexicalBlock(scope: !2629, file: !2611, line: 163, column: 5)
!2648 = !DILocation(line: 148, column: 7, scope: !2649, inlinedAt: !2645)
!2649 = distinct !DILexicalBlock(scope: !2631, file: !2611, line: 148, column: 7)
!2650 = !DILocalVariable(name: "s1", arg: 1, scope: !2651, file: !2611, line: 132, type: !43)
!2651 = distinct !DISubprogram(name: "strcaseeq2", scope: !2611, file: !2611, line: 132, type: !2652, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !2654)
!2652 = !DISubroutineType(types: !2653)
!2653 = !{!45, !43, !43, !42, !42, !42, !42, !42, !42, !42}
!2654 = !{!2650, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662}
!2655 = !DILocalVariable(name: "s2", arg: 2, scope: !2651, file: !2611, line: 132, type: !43)
!2656 = !DILocalVariable(name: "s22", arg: 3, scope: !2651, file: !2611, line: 132, type: !42)
!2657 = !DILocalVariable(name: "s23", arg: 4, scope: !2651, file: !2611, line: 132, type: !42)
!2658 = !DILocalVariable(name: "s24", arg: 5, scope: !2651, file: !2611, line: 132, type: !42)
!2659 = !DILocalVariable(name: "s25", arg: 6, scope: !2651, file: !2611, line: 132, type: !42)
!2660 = !DILocalVariable(name: "s26", arg: 7, scope: !2651, file: !2611, line: 132, type: !42)
!2661 = !DILocalVariable(name: "s27", arg: 8, scope: !2651, file: !2611, line: 132, type: !42)
!2662 = !DILocalVariable(name: "s28", arg: 9, scope: !2651, file: !2611, line: 132, type: !42)
!2663 = !DILocation(line: 0, scope: !2651, inlinedAt: !2664)
!2664 = distinct !DILocation(line: 153, column: 16, scope: !2665, inlinedAt: !2645)
!2665 = distinct !DILexicalBlock(scope: !2666, file: !2611, line: 150, column: 11)
!2666 = distinct !DILexicalBlock(scope: !2649, file: !2611, line: 149, column: 5)
!2667 = !DILocation(line: 134, column: 7, scope: !2668, inlinedAt: !2664)
!2668 = distinct !DILexicalBlock(scope: !2651, file: !2611, line: 134, column: 7)
!2669 = !DILocalVariable(name: "s1", arg: 1, scope: !2670, file: !2611, line: 118, type: !43)
!2670 = distinct !DISubprogram(name: "strcaseeq3", scope: !2611, file: !2611, line: 118, type: !2671, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !2673)
!2671 = !DISubroutineType(types: !2672)
!2672 = !{!45, !43, !43, !42, !42, !42, !42, !42, !42}
!2673 = !{!2669, !2674, !2675, !2676, !2677, !2678, !2679, !2680}
!2674 = !DILocalVariable(name: "s2", arg: 2, scope: !2670, file: !2611, line: 118, type: !43)
!2675 = !DILocalVariable(name: "s23", arg: 3, scope: !2670, file: !2611, line: 118, type: !42)
!2676 = !DILocalVariable(name: "s24", arg: 4, scope: !2670, file: !2611, line: 118, type: !42)
!2677 = !DILocalVariable(name: "s25", arg: 5, scope: !2670, file: !2611, line: 118, type: !42)
!2678 = !DILocalVariable(name: "s26", arg: 6, scope: !2670, file: !2611, line: 118, type: !42)
!2679 = !DILocalVariable(name: "s27", arg: 7, scope: !2670, file: !2611, line: 118, type: !42)
!2680 = !DILocalVariable(name: "s28", arg: 8, scope: !2670, file: !2611, line: 118, type: !42)
!2681 = !DILocation(line: 0, scope: !2670, inlinedAt: !2682)
!2682 = distinct !DILocation(line: 139, column: 16, scope: !2683, inlinedAt: !2664)
!2683 = distinct !DILexicalBlock(scope: !2684, file: !2611, line: 136, column: 11)
!2684 = distinct !DILexicalBlock(scope: !2668, file: !2611, line: 135, column: 5)
!2685 = !DILocation(line: 120, column: 7, scope: !2686, inlinedAt: !2682)
!2686 = distinct !DILexicalBlock(scope: !2670, file: !2611, line: 120, column: 7)
!2687 = !DILocation(line: 120, column: 7, scope: !2670, inlinedAt: !2682)
!2688 = !DILocalVariable(name: "s1", arg: 1, scope: !2689, file: !2611, line: 104, type: !43)
!2689 = distinct !DISubprogram(name: "strcaseeq4", scope: !2611, file: !2611, line: 104, type: !2690, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !2692)
!2690 = !DISubroutineType(types: !2691)
!2691 = !{!45, !43, !43, !42, !42, !42, !42, !42}
!2692 = !{!2688, !2693, !2694, !2695, !2696, !2697, !2698}
!2693 = !DILocalVariable(name: "s2", arg: 2, scope: !2689, file: !2611, line: 104, type: !43)
!2694 = !DILocalVariable(name: "s24", arg: 3, scope: !2689, file: !2611, line: 104, type: !42)
!2695 = !DILocalVariable(name: "s25", arg: 4, scope: !2689, file: !2611, line: 104, type: !42)
!2696 = !DILocalVariable(name: "s26", arg: 5, scope: !2689, file: !2611, line: 104, type: !42)
!2697 = !DILocalVariable(name: "s27", arg: 6, scope: !2689, file: !2611, line: 104, type: !42)
!2698 = !DILocalVariable(name: "s28", arg: 7, scope: !2689, file: !2611, line: 104, type: !42)
!2699 = !DILocation(line: 0, scope: !2689, inlinedAt: !2700)
!2700 = distinct !DILocation(line: 125, column: 16, scope: !2701, inlinedAt: !2682)
!2701 = distinct !DILexicalBlock(scope: !2702, file: !2611, line: 122, column: 11)
!2702 = distinct !DILexicalBlock(scope: !2686, file: !2611, line: 121, column: 5)
!2703 = !DILocation(line: 106, column: 7, scope: !2704, inlinedAt: !2700)
!2704 = distinct !DILexicalBlock(scope: !2689, file: !2611, line: 106, column: 7)
!2705 = !DILocation(line: 106, column: 7, scope: !2689, inlinedAt: !2700)
!2706 = !DILocalVariable(name: "s1", arg: 1, scope: !2707, file: !2611, line: 90, type: !43)
!2707 = distinct !DISubprogram(name: "strcaseeq5", scope: !2611, file: !2611, line: 90, type: !2708, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !2710)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!45, !43, !43, !42, !42, !42, !42}
!2710 = !{!2706, !2711, !2712, !2713, !2714, !2715}
!2711 = !DILocalVariable(name: "s2", arg: 2, scope: !2707, file: !2611, line: 90, type: !43)
!2712 = !DILocalVariable(name: "s25", arg: 3, scope: !2707, file: !2611, line: 90, type: !42)
!2713 = !DILocalVariable(name: "s26", arg: 4, scope: !2707, file: !2611, line: 90, type: !42)
!2714 = !DILocalVariable(name: "s27", arg: 5, scope: !2707, file: !2611, line: 90, type: !42)
!2715 = !DILocalVariable(name: "s28", arg: 6, scope: !2707, file: !2611, line: 90, type: !42)
!2716 = !DILocation(line: 0, scope: !2707, inlinedAt: !2717)
!2717 = distinct !DILocation(line: 111, column: 16, scope: !2718, inlinedAt: !2700)
!2718 = distinct !DILexicalBlock(scope: !2719, file: !2611, line: 108, column: 11)
!2719 = distinct !DILexicalBlock(scope: !2704, file: !2611, line: 107, column: 5)
!2720 = !DILocation(line: 92, column: 7, scope: !2721, inlinedAt: !2717)
!2721 = distinct !DILexicalBlock(scope: !2707, file: !2611, line: 92, column: 7)
!2722 = !DILocation(line: 92, column: 7, scope: !2707, inlinedAt: !2717)
!2723 = !DILocation(line: 235, column: 12, scope: !2627)
!2724 = !DILocation(line: 235, column: 21, scope: !2627)
!2725 = !DILocation(line: 235, column: 5, scope: !2627)
!2726 = !DILocation(line: 0, scope: !2631, inlinedAt: !2727)
!2727 = distinct !DILocation(line: 167, column: 16, scope: !2646, inlinedAt: !2728)
!2728 = distinct !DILocation(line: 236, column: 7, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2595, file: !376, line: 236, column: 7)
!2730 = !DILocation(line: 148, column: 7, scope: !2649, inlinedAt: !2727)
!2731 = !DILocation(line: 0, scope: !2651, inlinedAt: !2732)
!2732 = distinct !DILocation(line: 153, column: 16, scope: !2665, inlinedAt: !2727)
!2733 = !DILocation(line: 134, column: 7, scope: !2668, inlinedAt: !2732)
!2734 = !DILocation(line: 134, column: 7, scope: !2651, inlinedAt: !2732)
!2735 = !DILocation(line: 0, scope: !2670, inlinedAt: !2736)
!2736 = distinct !DILocation(line: 139, column: 16, scope: !2683, inlinedAt: !2732)
!2737 = !DILocation(line: 120, column: 7, scope: !2686, inlinedAt: !2736)
!2738 = !DILocation(line: 120, column: 7, scope: !2670, inlinedAt: !2736)
!2739 = !DILocation(line: 0, scope: !2689, inlinedAt: !2740)
!2740 = distinct !DILocation(line: 125, column: 16, scope: !2701, inlinedAt: !2736)
!2741 = !DILocation(line: 106, column: 7, scope: !2704, inlinedAt: !2740)
!2742 = !DILocation(line: 106, column: 7, scope: !2689, inlinedAt: !2740)
!2743 = !DILocation(line: 0, scope: !2707, inlinedAt: !2744)
!2744 = distinct !DILocation(line: 111, column: 16, scope: !2718, inlinedAt: !2740)
!2745 = !DILocation(line: 92, column: 7, scope: !2721, inlinedAt: !2744)
!2746 = !DILocation(line: 92, column: 7, scope: !2707, inlinedAt: !2744)
!2747 = !DILocalVariable(name: "s1", arg: 1, scope: !2748, file: !2611, line: 76, type: !43)
!2748 = distinct !DISubprogram(name: "strcaseeq6", scope: !2611, file: !2611, line: 76, type: !2749, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !2751)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{!45, !43, !43, !42, !42, !42}
!2751 = !{!2747, !2752, !2753, !2754, !2755}
!2752 = !DILocalVariable(name: "s2", arg: 2, scope: !2748, file: !2611, line: 76, type: !43)
!2753 = !DILocalVariable(name: "s26", arg: 3, scope: !2748, file: !2611, line: 76, type: !42)
!2754 = !DILocalVariable(name: "s27", arg: 4, scope: !2748, file: !2611, line: 76, type: !42)
!2755 = !DILocalVariable(name: "s28", arg: 5, scope: !2748, file: !2611, line: 76, type: !42)
!2756 = !DILocation(line: 0, scope: !2748, inlinedAt: !2757)
!2757 = distinct !DILocation(line: 97, column: 16, scope: !2758, inlinedAt: !2744)
!2758 = distinct !DILexicalBlock(scope: !2759, file: !2611, line: 94, column: 11)
!2759 = distinct !DILexicalBlock(scope: !2721, file: !2611, line: 93, column: 5)
!2760 = !DILocation(line: 78, column: 7, scope: !2761, inlinedAt: !2757)
!2761 = distinct !DILexicalBlock(scope: !2748, file: !2611, line: 78, column: 7)
!2762 = !DILocation(line: 78, column: 7, scope: !2748, inlinedAt: !2757)
!2763 = !DILocalVariable(name: "s1", arg: 1, scope: !2764, file: !2611, line: 62, type: !43)
!2764 = distinct !DISubprogram(name: "strcaseeq7", scope: !2611, file: !2611, line: 62, type: !2765, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !2767)
!2765 = !DISubroutineType(types: !2766)
!2766 = !{!45, !43, !43, !42, !42}
!2767 = !{!2763, !2768, !2769, !2770}
!2768 = !DILocalVariable(name: "s2", arg: 2, scope: !2764, file: !2611, line: 62, type: !43)
!2769 = !DILocalVariable(name: "s27", arg: 3, scope: !2764, file: !2611, line: 62, type: !42)
!2770 = !DILocalVariable(name: "s28", arg: 4, scope: !2764, file: !2611, line: 62, type: !42)
!2771 = !DILocation(line: 0, scope: !2764, inlinedAt: !2772)
!2772 = distinct !DILocation(line: 83, column: 16, scope: !2773, inlinedAt: !2757)
!2773 = distinct !DILexicalBlock(scope: !2774, file: !2611, line: 80, column: 11)
!2774 = distinct !DILexicalBlock(scope: !2761, file: !2611, line: 79, column: 5)
!2775 = !DILocation(line: 64, column: 7, scope: !2776, inlinedAt: !2772)
!2776 = distinct !DILexicalBlock(scope: !2764, file: !2611, line: 64, column: 7)
!2777 = !DILocation(line: 236, column: 7, scope: !2595)
!2778 = !DILocation(line: 237, column: 12, scope: !2729)
!2779 = !DILocation(line: 237, column: 21, scope: !2729)
!2780 = !DILocation(line: 237, column: 5, scope: !2729)
!2781 = !DILocation(line: 239, column: 13, scope: !2595)
!2782 = !DILocation(line: 239, column: 11, scope: !2595)
!2783 = !DILocation(line: 239, column: 3, scope: !2595)
!2784 = !DILocation(line: 240, column: 1, scope: !2595)
!2785 = distinct !DISubprogram(name: "quotearg_alloc", scope: !376, file: !376, line: 799, type: !2786, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !2788)
!2786 = !DISubroutineType(types: !2787)
!2787 = !{!41, !43, !100, !406}
!2788 = !{!2789, !2790, !2791}
!2789 = !DILocalVariable(name: "arg", arg: 1, scope: !2785, file: !376, line: 799, type: !43)
!2790 = !DILocalVariable(name: "argsize", arg: 2, scope: !2785, file: !376, line: 799, type: !100)
!2791 = !DILocalVariable(name: "o", arg: 3, scope: !2785, file: !376, line: 800, type: !406)
!2792 = !DILocation(line: 0, scope: !2785)
!2793 = !DILocalVariable(name: "arg", arg: 1, scope: !2794, file: !376, line: 812, type: !43)
!2794 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !376, file: !376, line: 812, type: !2795, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !2797)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{!41, !43, !100, !658, !406}
!2797 = !{!2793, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805}
!2798 = !DILocalVariable(name: "argsize", arg: 2, scope: !2794, file: !376, line: 812, type: !100)
!2799 = !DILocalVariable(name: "size", arg: 3, scope: !2794, file: !376, line: 812, type: !658)
!2800 = !DILocalVariable(name: "o", arg: 4, scope: !2794, file: !376, line: 813, type: !406)
!2801 = !DILocalVariable(name: "p", scope: !2794, file: !376, line: 815, type: !406)
!2802 = !DILocalVariable(name: "e", scope: !2794, file: !376, line: 816, type: !45)
!2803 = !DILocalVariable(name: "flags", scope: !2794, file: !376, line: 818, type: !45)
!2804 = !DILocalVariable(name: "bufsize", scope: !2794, file: !376, line: 819, type: !100)
!2805 = !DILocalVariable(name: "buf", scope: !2794, file: !376, line: 823, type: !41)
!2806 = !DILocation(line: 0, scope: !2794, inlinedAt: !2807)
!2807 = distinct !DILocation(line: 802, column: 10, scope: !2785)
!2808 = !DILocation(line: 815, column: 37, scope: !2794, inlinedAt: !2807)
!2809 = !DILocation(line: 816, column: 11, scope: !2794, inlinedAt: !2807)
!2810 = !DILocation(line: 818, column: 18, scope: !2794, inlinedAt: !2807)
!2811 = !DILocation(line: 818, column: 24, scope: !2794, inlinedAt: !2807)
!2812 = !DILocation(line: 819, column: 69, scope: !2794, inlinedAt: !2807)
!2813 = !DILocation(line: 820, column: 53, scope: !2794, inlinedAt: !2807)
!2814 = !DILocation(line: 821, column: 49, scope: !2794, inlinedAt: !2807)
!2815 = !DILocation(line: 822, column: 49, scope: !2794, inlinedAt: !2807)
!2816 = !DILocation(line: 819, column: 20, scope: !2794, inlinedAt: !2807)
!2817 = !DILocation(line: 822, column: 62, scope: !2794, inlinedAt: !2807)
!2818 = !DILocalVariable(name: "n", arg: 1, scope: !2819, file: !193, line: 216, type: !100)
!2819 = distinct !DISubprogram(name: "xcharalloc", scope: !193, file: !193, line: 216, type: !2820, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !2822)
!2820 = !DISubroutineType(types: !2821)
!2821 = !{!41, !100}
!2822 = !{!2818}
!2823 = !DILocation(line: 0, scope: !2819, inlinedAt: !2824)
!2824 = distinct !DILocation(line: 823, column: 15, scope: !2794, inlinedAt: !2807)
!2825 = !DILocation(line: 218, column: 10, scope: !2819, inlinedAt: !2824)
!2826 = !DILocation(line: 824, column: 60, scope: !2794, inlinedAt: !2807)
!2827 = !DILocation(line: 826, column: 32, scope: !2794, inlinedAt: !2807)
!2828 = !DILocation(line: 826, column: 47, scope: !2794, inlinedAt: !2807)
!2829 = !DILocation(line: 824, column: 3, scope: !2794, inlinedAt: !2807)
!2830 = !DILocation(line: 827, column: 9, scope: !2794, inlinedAt: !2807)
!2831 = !DILocation(line: 802, column: 3, scope: !2785)
!2832 = !DILocation(line: 0, scope: !2794)
!2833 = !DILocation(line: 815, column: 37, scope: !2794)
!2834 = !DILocation(line: 816, column: 11, scope: !2794)
!2835 = !DILocation(line: 818, column: 18, scope: !2794)
!2836 = !DILocation(line: 818, column: 27, scope: !2794)
!2837 = !DILocation(line: 818, column: 24, scope: !2794)
!2838 = !DILocation(line: 819, column: 69, scope: !2794)
!2839 = !DILocation(line: 820, column: 53, scope: !2794)
!2840 = !DILocation(line: 821, column: 49, scope: !2794)
!2841 = !DILocation(line: 822, column: 49, scope: !2794)
!2842 = !DILocation(line: 819, column: 20, scope: !2794)
!2843 = !DILocation(line: 822, column: 62, scope: !2794)
!2844 = !DILocation(line: 0, scope: !2819, inlinedAt: !2845)
!2845 = distinct !DILocation(line: 823, column: 15, scope: !2794)
!2846 = !DILocation(line: 218, column: 10, scope: !2819, inlinedAt: !2845)
!2847 = !DILocation(line: 824, column: 60, scope: !2794)
!2848 = !DILocation(line: 826, column: 32, scope: !2794)
!2849 = !DILocation(line: 826, column: 47, scope: !2794)
!2850 = !DILocation(line: 824, column: 3, scope: !2794)
!2851 = !DILocation(line: 827, column: 9, scope: !2794)
!2852 = !DILocation(line: 828, column: 7, scope: !2794)
!2853 = !DILocation(line: 829, column: 11, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2794, file: !376, line: 828, column: 7)
!2855 = !{!1682, !1682, i64 0}
!2856 = !DILocation(line: 829, column: 5, scope: !2854)
!2857 = !DILocation(line: 830, column: 3, scope: !2794)
!2858 = distinct !DISubprogram(name: "quotearg_free", scope: !376, file: !376, line: 848, type: !127, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !2859)
!2859 = !{!2860, !2861}
!2860 = !DILocalVariable(name: "sv", scope: !2858, file: !376, line: 850, type: !475)
!2861 = !DILocalVariable(name: "i", scope: !2858, file: !376, line: 851, type: !45)
!2862 = !DILocation(line: 850, column: 24, scope: !2858)
!2863 = !DILocation(line: 0, scope: !2858)
!2864 = !DILocation(line: 852, column: 19, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2866, file: !376, line: 852, column: 3)
!2866 = distinct !DILexicalBlock(scope: !2858, file: !376, line: 852, column: 3)
!2867 = !DILocation(line: 852, column: 17, scope: !2865)
!2868 = !DILocation(line: 852, column: 3, scope: !2866)
!2869 = !DILocation(line: 853, column: 17, scope: !2865)
!2870 = !{!2871, !1299, i64 8}
!2871 = !{!"slotvec", !1682, i64 0, !1299, i64 8}
!2872 = !DILocation(line: 853, column: 5, scope: !2865)
!2873 = !DILocation(line: 852, column: 28, scope: !2865)
!2874 = distinct !{!2874, !2868, !2875}
!2875 = !DILocation(line: 853, column: 20, scope: !2866)
!2876 = !DILocation(line: 854, column: 13, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2858, file: !376, line: 854, column: 7)
!2878 = !DILocation(line: 854, column: 17, scope: !2877)
!2879 = !DILocation(line: 854, column: 7, scope: !2858)
!2880 = !DILocation(line: 856, column: 7, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2877, file: !376, line: 855, column: 5)
!2882 = !DILocation(line: 857, column: 21, scope: !2881)
!2883 = !{!2871, !1682, i64 0}
!2884 = !DILocation(line: 858, column: 20, scope: !2881)
!2885 = !DILocation(line: 859, column: 5, scope: !2881)
!2886 = !DILocation(line: 860, column: 10, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2858, file: !376, line: 860, column: 7)
!2888 = !DILocation(line: 860, column: 7, scope: !2858)
!2889 = !DILocation(line: 862, column: 13, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2887, file: !376, line: 861, column: 5)
!2891 = !DILocation(line: 862, column: 7, scope: !2890)
!2892 = !DILocation(line: 863, column: 15, scope: !2890)
!2893 = !DILocation(line: 864, column: 5, scope: !2890)
!2894 = !DILocation(line: 865, column: 10, scope: !2858)
!2895 = !DILocation(line: 866, column: 1, scope: !2858)
!2896 = distinct !DISubprogram(name: "quotearg_n", scope: !376, file: !376, line: 931, type: !114, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !2897)
!2897 = !{!2898, !2899}
!2898 = !DILocalVariable(name: "n", arg: 1, scope: !2896, file: !376, line: 931, type: !45)
!2899 = !DILocalVariable(name: "arg", arg: 2, scope: !2896, file: !376, line: 931, type: !43)
!2900 = !DILocation(line: 0, scope: !2896)
!2901 = !DILocation(line: 933, column: 10, scope: !2896)
!2902 = !DILocation(line: 933, column: 3, scope: !2896)
!2903 = distinct !DISubprogram(name: "quotearg_n_options", scope: !376, file: !376, line: 877, type: !2904, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !2906)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{!41, !45, !43, !100, !406}
!2906 = !{!2907, !2908, !2909, !2910, !2911, !2912, !2913, !2916, !2917, !2919, !2920, !2921}
!2907 = !DILocalVariable(name: "n", arg: 1, scope: !2903, file: !376, line: 877, type: !45)
!2908 = !DILocalVariable(name: "arg", arg: 2, scope: !2903, file: !376, line: 877, type: !43)
!2909 = !DILocalVariable(name: "argsize", arg: 3, scope: !2903, file: !376, line: 877, type: !100)
!2910 = !DILocalVariable(name: "options", arg: 4, scope: !2903, file: !376, line: 878, type: !406)
!2911 = !DILocalVariable(name: "e", scope: !2903, file: !376, line: 880, type: !45)
!2912 = !DILocalVariable(name: "sv", scope: !2903, file: !376, line: 882, type: !475)
!2913 = !DILocalVariable(name: "preallocated", scope: !2914, file: !376, line: 889, type: !202)
!2914 = distinct !DILexicalBlock(scope: !2915, file: !376, line: 888, column: 5)
!2915 = distinct !DILexicalBlock(scope: !2903, file: !376, line: 887, column: 7)
!2916 = !DILocalVariable(name: "nmax", scope: !2914, file: !376, line: 890, type: !45)
!2917 = !DILocalVariable(name: "size", scope: !2918, file: !376, line: 903, type: !100)
!2918 = distinct !DILexicalBlock(scope: !2903, file: !376, line: 902, column: 3)
!2919 = !DILocalVariable(name: "val", scope: !2918, file: !376, line: 904, type: !41)
!2920 = !DILocalVariable(name: "flags", scope: !2918, file: !376, line: 906, type: !45)
!2921 = !DILocalVariable(name: "qsize", scope: !2918, file: !376, line: 907, type: !100)
!2922 = !DILocation(line: 0, scope: !2903)
!2923 = !DILocation(line: 880, column: 11, scope: !2903)
!2924 = !DILocation(line: 882, column: 24, scope: !2903)
!2925 = !DILocation(line: 884, column: 9, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2903, file: !376, line: 884, column: 7)
!2927 = !DILocation(line: 884, column: 7, scope: !2903)
!2928 = !DILocation(line: 885, column: 5, scope: !2926)
!2929 = !DILocation(line: 887, column: 7, scope: !2915)
!2930 = !DILocation(line: 887, column: 14, scope: !2915)
!2931 = !DILocation(line: 887, column: 7, scope: !2903)
!2932 = !DILocation(line: 889, column: 31, scope: !2914)
!2933 = !DILocation(line: 0, scope: !2914)
!2934 = !DILocation(line: 892, column: 16, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2914, file: !376, line: 892, column: 11)
!2936 = !DILocation(line: 892, column: 11, scope: !2914)
!2937 = !DILocation(line: 893, column: 9, scope: !2935)
!2938 = !DILocation(line: 895, column: 32, scope: !2914)
!2939 = !DILocation(line: 895, column: 61, scope: !2914)
!2940 = !DILocation(line: 895, column: 58, scope: !2914)
!2941 = !DILocation(line: 895, column: 66, scope: !2914)
!2942 = !DILocation(line: 895, column: 22, scope: !2914)
!2943 = !DILocation(line: 895, column: 15, scope: !2914)
!2944 = !DILocation(line: 896, column: 11, scope: !2914)
!2945 = !DILocation(line: 897, column: 15, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2914, file: !376, line: 896, column: 11)
!2947 = !{i64 0, i64 8, !2855, i64 8, i64 8, !1298}
!2948 = !DILocation(line: 897, column: 9, scope: !2946)
!2949 = !DILocation(line: 898, column: 20, scope: !2914)
!2950 = !DILocation(line: 898, column: 18, scope: !2914)
!2951 = !DILocation(line: 898, column: 15, scope: !2914)
!2952 = !DILocation(line: 898, column: 38, scope: !2914)
!2953 = !DILocation(line: 898, column: 31, scope: !2914)
!2954 = !DILocation(line: 898, column: 48, scope: !2914)
!2955 = !DILocation(line: 0, scope: !2352, inlinedAt: !2956)
!2956 = distinct !DILocation(line: 898, column: 7, scope: !2914)
!2957 = !DILocation(line: 71, column: 10, scope: !2352, inlinedAt: !2956)
!2958 = !DILocation(line: 899, column: 14, scope: !2914)
!2959 = !DILocation(line: 900, column: 5, scope: !2914)
!2960 = !DILocation(line: 903, column: 19, scope: !2918)
!2961 = !DILocation(line: 903, column: 25, scope: !2918)
!2962 = !DILocation(line: 0, scope: !2918)
!2963 = !DILocation(line: 904, column: 23, scope: !2918)
!2964 = !DILocation(line: 906, column: 26, scope: !2918)
!2965 = !DILocation(line: 906, column: 32, scope: !2918)
!2966 = !DILocation(line: 908, column: 55, scope: !2918)
!2967 = !DILocation(line: 909, column: 46, scope: !2918)
!2968 = !DILocation(line: 910, column: 55, scope: !2918)
!2969 = !DILocation(line: 911, column: 55, scope: !2918)
!2970 = !DILocation(line: 907, column: 20, scope: !2918)
!2971 = !DILocation(line: 913, column: 14, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2918, file: !376, line: 913, column: 9)
!2973 = !DILocation(line: 913, column: 9, scope: !2918)
!2974 = !DILocation(line: 915, column: 35, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2972, file: !376, line: 914, column: 7)
!2976 = !DILocation(line: 915, column: 20, scope: !2975)
!2977 = !DILocation(line: 916, column: 17, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2975, file: !376, line: 916, column: 13)
!2979 = !DILocation(line: 916, column: 13, scope: !2975)
!2980 = !DILocation(line: 917, column: 11, scope: !2978)
!2981 = !DILocation(line: 0, scope: !2819, inlinedAt: !2982)
!2982 = distinct !DILocation(line: 918, column: 27, scope: !2975)
!2983 = !DILocation(line: 218, column: 10, scope: !2819, inlinedAt: !2982)
!2984 = !DILocation(line: 918, column: 19, scope: !2975)
!2985 = !DILocation(line: 919, column: 69, scope: !2975)
!2986 = !DILocation(line: 921, column: 44, scope: !2975)
!2987 = !DILocation(line: 922, column: 44, scope: !2975)
!2988 = !DILocation(line: 919, column: 9, scope: !2975)
!2989 = !DILocation(line: 923, column: 7, scope: !2975)
!2990 = !DILocation(line: 925, column: 11, scope: !2918)
!2991 = !DILocation(line: 926, column: 5, scope: !2918)
!2992 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !376, file: !376, line: 937, type: !2993, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !2995)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{!41, !45, !43, !100}
!2995 = !{!2996, !2997, !2998}
!2996 = !DILocalVariable(name: "n", arg: 1, scope: !2992, file: !376, line: 937, type: !45)
!2997 = !DILocalVariable(name: "arg", arg: 2, scope: !2992, file: !376, line: 937, type: !43)
!2998 = !DILocalVariable(name: "argsize", arg: 3, scope: !2992, file: !376, line: 937, type: !100)
!2999 = !DILocation(line: 0, scope: !2992)
!3000 = !DILocation(line: 939, column: 10, scope: !2992)
!3001 = !DILocation(line: 939, column: 3, scope: !2992)
!3002 = distinct !DISubprogram(name: "quotearg", scope: !376, file: !376, line: 943, type: !120, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3003)
!3003 = !{!3004}
!3004 = !DILocalVariable(name: "arg", arg: 1, scope: !3002, file: !376, line: 943, type: !43)
!3005 = !DILocation(line: 0, scope: !3002)
!3006 = !DILocation(line: 0, scope: !2896, inlinedAt: !3007)
!3007 = distinct !DILocation(line: 945, column: 10, scope: !3002)
!3008 = !DILocation(line: 933, column: 10, scope: !2896, inlinedAt: !3007)
!3009 = !DILocation(line: 945, column: 3, scope: !3002)
!3010 = distinct !DISubprogram(name: "quotearg_mem", scope: !376, file: !376, line: 949, type: !3011, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3013)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{!41, !43, !100}
!3013 = !{!3014, !3015}
!3014 = !DILocalVariable(name: "arg", arg: 1, scope: !3010, file: !376, line: 949, type: !43)
!3015 = !DILocalVariable(name: "argsize", arg: 2, scope: !3010, file: !376, line: 949, type: !100)
!3016 = !DILocation(line: 0, scope: !3010)
!3017 = !DILocation(line: 0, scope: !2992, inlinedAt: !3018)
!3018 = distinct !DILocation(line: 951, column: 10, scope: !3010)
!3019 = !DILocation(line: 939, column: 10, scope: !2992, inlinedAt: !3018)
!3020 = !DILocation(line: 951, column: 3, scope: !3010)
!3021 = distinct !DISubprogram(name: "quotearg_n_style", scope: !376, file: !376, line: 955, type: !177, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3022)
!3022 = !{!3023, !3024, !3025, !3026}
!3023 = !DILocalVariable(name: "n", arg: 1, scope: !3021, file: !376, line: 955, type: !45)
!3024 = !DILocalVariable(name: "s", arg: 2, scope: !3021, file: !376, line: 955, type: !22)
!3025 = !DILocalVariable(name: "arg", arg: 3, scope: !3021, file: !376, line: 955, type: !43)
!3026 = !DILocalVariable(name: "o", scope: !3021, file: !376, line: 957, type: !407)
!3027 = !DILocation(line: 0, scope: !3021)
!3028 = !DILocation(line: 957, column: 3, scope: !3021)
!3029 = !DILocation(line: 957, column: 32, scope: !3021)
!3030 = !DILocalVariable(name: "style", arg: 1, scope: !3031, file: !376, line: 193, type: !22)
!3031 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !376, file: !376, line: 193, type: !3032, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3034)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{!408, !22}
!3034 = !{!3030, !3035}
!3035 = !DILocalVariable(name: "o", scope: !3031, file: !376, line: 195, type: !408)
!3036 = !DILocation(line: 0, scope: !3031, inlinedAt: !3037)
!3037 = distinct !DILocation(line: 957, column: 36, scope: !3021)
!3038 = !DILocation(line: 195, column: 26, scope: !3031, inlinedAt: !3037)
!3039 = !{!3040}
!3040 = distinct !{!3040, !3041, !"quoting_options_from_style: argument 0"}
!3041 = distinct !{!3041, !"quoting_options_from_style"}
!3042 = !DILocation(line: 196, column: 13, scope: !3043, inlinedAt: !3037)
!3043 = distinct !DILexicalBlock(scope: !3031, file: !376, line: 196, column: 7)
!3044 = !DILocation(line: 196, column: 7, scope: !3031, inlinedAt: !3037)
!3045 = !DILocation(line: 197, column: 5, scope: !3043, inlinedAt: !3037)
!3046 = !DILocation(line: 198, column: 5, scope: !3031, inlinedAt: !3037)
!3047 = !DILocation(line: 198, column: 11, scope: !3031, inlinedAt: !3037)
!3048 = !DILocation(line: 958, column: 10, scope: !3021)
!3049 = !DILocation(line: 959, column: 1, scope: !3021)
!3050 = !DILocation(line: 958, column: 3, scope: !3021)
!3051 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !376, file: !376, line: 962, type: !3052, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3054)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{!41, !45, !22, !43, !100}
!3054 = !{!3055, !3056, !3057, !3058, !3059}
!3055 = !DILocalVariable(name: "n", arg: 1, scope: !3051, file: !376, line: 962, type: !45)
!3056 = !DILocalVariable(name: "s", arg: 2, scope: !3051, file: !376, line: 962, type: !22)
!3057 = !DILocalVariable(name: "arg", arg: 3, scope: !3051, file: !376, line: 963, type: !43)
!3058 = !DILocalVariable(name: "argsize", arg: 4, scope: !3051, file: !376, line: 963, type: !100)
!3059 = !DILocalVariable(name: "o", scope: !3051, file: !376, line: 965, type: !407)
!3060 = !DILocation(line: 0, scope: !3051)
!3061 = !DILocation(line: 965, column: 3, scope: !3051)
!3062 = !DILocation(line: 965, column: 32, scope: !3051)
!3063 = !DILocation(line: 0, scope: !3031, inlinedAt: !3064)
!3064 = distinct !DILocation(line: 965, column: 36, scope: !3051)
!3065 = !DILocation(line: 195, column: 26, scope: !3031, inlinedAt: !3064)
!3066 = !{!3067}
!3067 = distinct !{!3067, !3068, !"quoting_options_from_style: argument 0"}
!3068 = distinct !{!3068, !"quoting_options_from_style"}
!3069 = !DILocation(line: 196, column: 13, scope: !3043, inlinedAt: !3064)
!3070 = !DILocation(line: 196, column: 7, scope: !3031, inlinedAt: !3064)
!3071 = !DILocation(line: 197, column: 5, scope: !3043, inlinedAt: !3064)
!3072 = !DILocation(line: 198, column: 5, scope: !3031, inlinedAt: !3064)
!3073 = !DILocation(line: 198, column: 11, scope: !3031, inlinedAt: !3064)
!3074 = !DILocation(line: 966, column: 10, scope: !3051)
!3075 = !DILocation(line: 967, column: 1, scope: !3051)
!3076 = !DILocation(line: 966, column: 3, scope: !3051)
!3077 = distinct !DISubprogram(name: "quotearg_style", scope: !376, file: !376, line: 970, type: !3078, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3080)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{!41, !22, !43}
!3080 = !{!3081, !3082}
!3081 = !DILocalVariable(name: "s", arg: 1, scope: !3077, file: !376, line: 970, type: !22)
!3082 = !DILocalVariable(name: "arg", arg: 2, scope: !3077, file: !376, line: 970, type: !43)
!3083 = !DILocation(line: 195, column: 26, scope: !3031, inlinedAt: !3084)
!3084 = distinct !DILocation(line: 957, column: 36, scope: !3021, inlinedAt: !3085)
!3085 = distinct !DILocation(line: 972, column: 10, scope: !3077)
!3086 = !DILocation(line: 957, column: 32, scope: !3021, inlinedAt: !3085)
!3087 = !DILocation(line: 0, scope: !3077)
!3088 = !DILocation(line: 0, scope: !3021, inlinedAt: !3085)
!3089 = !DILocation(line: 957, column: 3, scope: !3021, inlinedAt: !3085)
!3090 = !DILocation(line: 0, scope: !3031, inlinedAt: !3084)
!3091 = !{!3092}
!3092 = distinct !{!3092, !3093, !"quoting_options_from_style: argument 0"}
!3093 = distinct !{!3093, !"quoting_options_from_style"}
!3094 = !DILocation(line: 196, column: 13, scope: !3043, inlinedAt: !3084)
!3095 = !DILocation(line: 196, column: 7, scope: !3031, inlinedAt: !3084)
!3096 = !DILocation(line: 197, column: 5, scope: !3043, inlinedAt: !3084)
!3097 = !DILocation(line: 198, column: 5, scope: !3031, inlinedAt: !3084)
!3098 = !DILocation(line: 198, column: 11, scope: !3031, inlinedAt: !3084)
!3099 = !DILocation(line: 958, column: 10, scope: !3021, inlinedAt: !3085)
!3100 = !DILocation(line: 959, column: 1, scope: !3021, inlinedAt: !3085)
!3101 = !DILocation(line: 972, column: 3, scope: !3077)
!3102 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !376, file: !376, line: 976, type: !3103, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3105)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{!41, !22, !43, !100}
!3105 = !{!3106, !3107, !3108}
!3106 = !DILocalVariable(name: "s", arg: 1, scope: !3102, file: !376, line: 976, type: !22)
!3107 = !DILocalVariable(name: "arg", arg: 2, scope: !3102, file: !376, line: 976, type: !43)
!3108 = !DILocalVariable(name: "argsize", arg: 3, scope: !3102, file: !376, line: 976, type: !100)
!3109 = !DILocation(line: 195, column: 26, scope: !3031, inlinedAt: !3110)
!3110 = distinct !DILocation(line: 965, column: 36, scope: !3051, inlinedAt: !3111)
!3111 = distinct !DILocation(line: 978, column: 10, scope: !3102)
!3112 = !DILocation(line: 965, column: 32, scope: !3051, inlinedAt: !3111)
!3113 = !DILocation(line: 0, scope: !3102)
!3114 = !DILocation(line: 0, scope: !3051, inlinedAt: !3111)
!3115 = !DILocation(line: 965, column: 3, scope: !3051, inlinedAt: !3111)
!3116 = !DILocation(line: 0, scope: !3031, inlinedAt: !3110)
!3117 = !{!3118}
!3118 = distinct !{!3118, !3119, !"quoting_options_from_style: argument 0"}
!3119 = distinct !{!3119, !"quoting_options_from_style"}
!3120 = !DILocation(line: 196, column: 13, scope: !3043, inlinedAt: !3110)
!3121 = !DILocation(line: 196, column: 7, scope: !3031, inlinedAt: !3110)
!3122 = !DILocation(line: 197, column: 5, scope: !3043, inlinedAt: !3110)
!3123 = !DILocation(line: 198, column: 5, scope: !3031, inlinedAt: !3110)
!3124 = !DILocation(line: 198, column: 11, scope: !3031, inlinedAt: !3110)
!3125 = !DILocation(line: 966, column: 10, scope: !3051, inlinedAt: !3111)
!3126 = !DILocation(line: 967, column: 1, scope: !3051, inlinedAt: !3111)
!3127 = !DILocation(line: 978, column: 3, scope: !3102)
!3128 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !376, file: !376, line: 982, type: !3129, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3131)
!3129 = !DISubroutineType(types: !3130)
!3130 = !{!41, !43, !100, !42}
!3131 = !{!3132, !3133, !3134, !3135}
!3132 = !DILocalVariable(name: "arg", arg: 1, scope: !3128, file: !376, line: 982, type: !43)
!3133 = !DILocalVariable(name: "argsize", arg: 2, scope: !3128, file: !376, line: 982, type: !100)
!3134 = !DILocalVariable(name: "ch", arg: 3, scope: !3128, file: !376, line: 982, type: !42)
!3135 = !DILocalVariable(name: "options", scope: !3128, file: !376, line: 984, type: !408)
!3136 = !DILocation(line: 0, scope: !3128)
!3137 = !DILocation(line: 984, column: 3, scope: !3128)
!3138 = !DILocation(line: 984, column: 26, scope: !3128)
!3139 = !DILocation(line: 985, column: 13, scope: !3128)
!3140 = !{i64 0, i64 4, !1405, i64 4, i64 4, !1424, i64 8, i64 32, !1405, i64 40, i64 8, !1298, i64 48, i64 8, !1298}
!3141 = !DILocation(line: 0, scope: !1966, inlinedAt: !3142)
!3142 = distinct !DILocation(line: 986, column: 3, scope: !3128)
!3143 = !DILocation(line: 156, column: 62, scope: !1966, inlinedAt: !3142)
!3144 = !DILocation(line: 156, column: 57, scope: !1966, inlinedAt: !3142)
!3145 = !DILocation(line: 157, column: 15, scope: !1966, inlinedAt: !3142)
!3146 = !DILocation(line: 158, column: 12, scope: !1966, inlinedAt: !3142)
!3147 = !DILocation(line: 158, column: 15, scope: !1966, inlinedAt: !3142)
!3148 = !DILocation(line: 158, column: 25, scope: !1966, inlinedAt: !3142)
!3149 = !DILocation(line: 159, column: 18, scope: !1966, inlinedAt: !3142)
!3150 = !DILocation(line: 159, column: 23, scope: !1966, inlinedAt: !3142)
!3151 = !DILocation(line: 159, column: 6, scope: !1966, inlinedAt: !3142)
!3152 = !DILocation(line: 987, column: 10, scope: !3128)
!3153 = !DILocation(line: 988, column: 1, scope: !3128)
!3154 = !DILocation(line: 987, column: 3, scope: !3128)
!3155 = distinct !DISubprogram(name: "quotearg_char", scope: !376, file: !376, line: 991, type: !3156, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3158)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{!41, !43, !42}
!3158 = !{!3159, !3160}
!3159 = !DILocalVariable(name: "arg", arg: 1, scope: !3155, file: !376, line: 991, type: !43)
!3160 = !DILocalVariable(name: "ch", arg: 2, scope: !3155, file: !376, line: 991, type: !42)
!3161 = !DILocation(line: 984, column: 26, scope: !3128, inlinedAt: !3162)
!3162 = distinct !DILocation(line: 993, column: 10, scope: !3155)
!3163 = !DILocation(line: 0, scope: !3155)
!3164 = !DILocation(line: 0, scope: !3128, inlinedAt: !3162)
!3165 = !DILocation(line: 984, column: 3, scope: !3128, inlinedAt: !3162)
!3166 = !DILocation(line: 985, column: 13, scope: !3128, inlinedAt: !3162)
!3167 = !DILocation(line: 0, scope: !1966, inlinedAt: !3168)
!3168 = distinct !DILocation(line: 986, column: 3, scope: !3128, inlinedAt: !3162)
!3169 = !DILocation(line: 156, column: 62, scope: !1966, inlinedAt: !3168)
!3170 = !DILocation(line: 156, column: 57, scope: !1966, inlinedAt: !3168)
!3171 = !DILocation(line: 157, column: 15, scope: !1966, inlinedAt: !3168)
!3172 = !DILocation(line: 158, column: 12, scope: !1966, inlinedAt: !3168)
!3173 = !DILocation(line: 158, column: 15, scope: !1966, inlinedAt: !3168)
!3174 = !DILocation(line: 158, column: 25, scope: !1966, inlinedAt: !3168)
!3175 = !DILocation(line: 159, column: 18, scope: !1966, inlinedAt: !3168)
!3176 = !DILocation(line: 159, column: 23, scope: !1966, inlinedAt: !3168)
!3177 = !DILocation(line: 159, column: 6, scope: !1966, inlinedAt: !3168)
!3178 = !DILocation(line: 987, column: 10, scope: !3128, inlinedAt: !3162)
!3179 = !DILocation(line: 988, column: 1, scope: !3128, inlinedAt: !3162)
!3180 = !DILocation(line: 993, column: 3, scope: !3155)
!3181 = distinct !DISubprogram(name: "quotearg_colon", scope: !376, file: !376, line: 997, type: !120, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3182)
!3182 = !{!3183}
!3183 = !DILocalVariable(name: "arg", arg: 1, scope: !3181, file: !376, line: 997, type: !43)
!3184 = !DILocation(line: 984, column: 26, scope: !3128, inlinedAt: !3185)
!3185 = distinct !DILocation(line: 993, column: 10, scope: !3155, inlinedAt: !3186)
!3186 = distinct !DILocation(line: 999, column: 10, scope: !3181)
!3187 = !DILocation(line: 0, scope: !3181)
!3188 = !DILocation(line: 0, scope: !3155, inlinedAt: !3186)
!3189 = !DILocation(line: 0, scope: !3128, inlinedAt: !3185)
!3190 = !DILocation(line: 984, column: 3, scope: !3128, inlinedAt: !3185)
!3191 = !DILocation(line: 985, column: 13, scope: !3128, inlinedAt: !3185)
!3192 = !DILocation(line: 0, scope: !1966, inlinedAt: !3193)
!3193 = distinct !DILocation(line: 986, column: 3, scope: !3128, inlinedAt: !3185)
!3194 = !DILocation(line: 156, column: 57, scope: !1966, inlinedAt: !3193)
!3195 = !DILocation(line: 158, column: 12, scope: !1966, inlinedAt: !3193)
!3196 = !DILocation(line: 159, column: 6, scope: !1966, inlinedAt: !3193)
!3197 = !DILocation(line: 987, column: 10, scope: !3128, inlinedAt: !3185)
!3198 = !DILocation(line: 988, column: 1, scope: !3128, inlinedAt: !3185)
!3199 = !DILocation(line: 999, column: 3, scope: !3181)
!3200 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !376, file: !376, line: 1003, type: !3011, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3201)
!3201 = !{!3202, !3203}
!3202 = !DILocalVariable(name: "arg", arg: 1, scope: !3200, file: !376, line: 1003, type: !43)
!3203 = !DILocalVariable(name: "argsize", arg: 2, scope: !3200, file: !376, line: 1003, type: !100)
!3204 = !DILocation(line: 984, column: 26, scope: !3128, inlinedAt: !3205)
!3205 = distinct !DILocation(line: 1005, column: 10, scope: !3200)
!3206 = !DILocation(line: 0, scope: !3200)
!3207 = !DILocation(line: 0, scope: !3128, inlinedAt: !3205)
!3208 = !DILocation(line: 984, column: 3, scope: !3128, inlinedAt: !3205)
!3209 = !DILocation(line: 985, column: 13, scope: !3128, inlinedAt: !3205)
!3210 = !DILocation(line: 0, scope: !1966, inlinedAt: !3211)
!3211 = distinct !DILocation(line: 986, column: 3, scope: !3128, inlinedAt: !3205)
!3212 = !DILocation(line: 156, column: 57, scope: !1966, inlinedAt: !3211)
!3213 = !DILocation(line: 158, column: 12, scope: !1966, inlinedAt: !3211)
!3214 = !DILocation(line: 159, column: 6, scope: !1966, inlinedAt: !3211)
!3215 = !DILocation(line: 987, column: 10, scope: !3128, inlinedAt: !3205)
!3216 = !DILocation(line: 988, column: 1, scope: !3128, inlinedAt: !3205)
!3217 = !DILocation(line: 1005, column: 3, scope: !3200)
!3218 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !376, file: !376, line: 1009, type: !177, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3219)
!3219 = !{!3220, !3221, !3222, !3223}
!3220 = !DILocalVariable(name: "n", arg: 1, scope: !3218, file: !376, line: 1009, type: !45)
!3221 = !DILocalVariable(name: "s", arg: 2, scope: !3218, file: !376, line: 1009, type: !22)
!3222 = !DILocalVariable(name: "arg", arg: 3, scope: !3218, file: !376, line: 1009, type: !43)
!3223 = !DILocalVariable(name: "options", scope: !3218, file: !376, line: 1011, type: !408)
!3224 = !DILocation(line: 195, column: 26, scope: !3031, inlinedAt: !3225)
!3225 = distinct !DILocation(line: 1012, column: 13, scope: !3218)
!3226 = !DILocation(line: 0, scope: !3218)
!3227 = !DILocation(line: 1011, column: 3, scope: !3218)
!3228 = !DILocation(line: 1011, column: 26, scope: !3218)
!3229 = !DILocation(line: 1012, column: 13, scope: !3218)
!3230 = !DILocation(line: 0, scope: !3031, inlinedAt: !3225)
!3231 = !{!3232}
!3232 = distinct !{!3232, !3233, !"quoting_options_from_style: argument 0"}
!3233 = distinct !{!3233, !"quoting_options_from_style"}
!3234 = !DILocation(line: 196, column: 13, scope: !3043, inlinedAt: !3225)
!3235 = !DILocation(line: 196, column: 7, scope: !3031, inlinedAt: !3225)
!3236 = !DILocation(line: 197, column: 5, scope: !3043, inlinedAt: !3225)
!3237 = !DILocation(line: 0, scope: !1966, inlinedAt: !3238)
!3238 = distinct !DILocation(line: 1013, column: 3, scope: !3218)
!3239 = !DILocation(line: 156, column: 57, scope: !1966, inlinedAt: !3238)
!3240 = !DILocation(line: 158, column: 12, scope: !1966, inlinedAt: !3238)
!3241 = !DILocation(line: 159, column: 6, scope: !1966, inlinedAt: !3238)
!3242 = !DILocation(line: 1014, column: 10, scope: !3218)
!3243 = !DILocation(line: 1015, column: 1, scope: !3218)
!3244 = !DILocation(line: 1014, column: 3, scope: !3218)
!3245 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !376, file: !376, line: 1018, type: !3246, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3248)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!41, !45, !43, !43, !43}
!3248 = !{!3249, !3250, !3251, !3252}
!3249 = !DILocalVariable(name: "n", arg: 1, scope: !3245, file: !376, line: 1018, type: !45)
!3250 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3245, file: !376, line: 1018, type: !43)
!3251 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3245, file: !376, line: 1019, type: !43)
!3252 = !DILocalVariable(name: "arg", arg: 4, scope: !3245, file: !376, line: 1019, type: !43)
!3253 = !DILocalVariable(name: "o", scope: !3254, file: !376, line: 1030, type: !408)
!3254 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !376, file: !376, line: 1026, type: !3255, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3257)
!3255 = !DISubroutineType(types: !3256)
!3256 = !{!41, !45, !43, !43, !43, !100}
!3257 = !{!3258, !3259, !3260, !3261, !3262, !3253}
!3258 = !DILocalVariable(name: "n", arg: 1, scope: !3254, file: !376, line: 1026, type: !45)
!3259 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3254, file: !376, line: 1026, type: !43)
!3260 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3254, file: !376, line: 1027, type: !43)
!3261 = !DILocalVariable(name: "arg", arg: 4, scope: !3254, file: !376, line: 1028, type: !43)
!3262 = !DILocalVariable(name: "argsize", arg: 5, scope: !3254, file: !376, line: 1028, type: !100)
!3263 = !DILocation(line: 1030, column: 26, scope: !3254, inlinedAt: !3264)
!3264 = distinct !DILocation(line: 1021, column: 10, scope: !3245)
!3265 = !DILocation(line: 0, scope: !3245)
!3266 = !DILocation(line: 0, scope: !3254, inlinedAt: !3264)
!3267 = !DILocation(line: 1030, column: 3, scope: !3254, inlinedAt: !3264)
!3268 = !DILocation(line: 1030, column: 30, scope: !3254, inlinedAt: !3264)
!3269 = !DILocation(line: 0, scope: !2006, inlinedAt: !3270)
!3270 = distinct !DILocation(line: 1031, column: 3, scope: !3254, inlinedAt: !3264)
!3271 = !DILocation(line: 184, column: 6, scope: !2006, inlinedAt: !3270)
!3272 = !DILocation(line: 184, column: 12, scope: !2006, inlinedAt: !3270)
!3273 = !DILocation(line: 185, column: 8, scope: !2020, inlinedAt: !3270)
!3274 = !DILocation(line: 185, column: 23, scope: !2020, inlinedAt: !3270)
!3275 = !DILocation(line: 185, column: 19, scope: !2020, inlinedAt: !3270)
!3276 = !DILocation(line: 186, column: 5, scope: !2020, inlinedAt: !3270)
!3277 = !DILocation(line: 187, column: 6, scope: !2006, inlinedAt: !3270)
!3278 = !DILocation(line: 187, column: 17, scope: !2006, inlinedAt: !3270)
!3279 = !DILocation(line: 188, column: 6, scope: !2006, inlinedAt: !3270)
!3280 = !DILocation(line: 188, column: 18, scope: !2006, inlinedAt: !3270)
!3281 = !DILocation(line: 1032, column: 10, scope: !3254, inlinedAt: !3264)
!3282 = !DILocation(line: 1033, column: 1, scope: !3254, inlinedAt: !3264)
!3283 = !DILocation(line: 1021, column: 3, scope: !3245)
!3284 = !DILocation(line: 0, scope: !3254)
!3285 = !DILocation(line: 1030, column: 3, scope: !3254)
!3286 = !DILocation(line: 1030, column: 26, scope: !3254)
!3287 = !DILocation(line: 1030, column: 30, scope: !3254)
!3288 = !DILocation(line: 0, scope: !2006, inlinedAt: !3289)
!3289 = distinct !DILocation(line: 1031, column: 3, scope: !3254)
!3290 = !DILocation(line: 184, column: 6, scope: !2006, inlinedAt: !3289)
!3291 = !DILocation(line: 184, column: 12, scope: !2006, inlinedAt: !3289)
!3292 = !DILocation(line: 185, column: 8, scope: !2020, inlinedAt: !3289)
!3293 = !DILocation(line: 185, column: 23, scope: !2020, inlinedAt: !3289)
!3294 = !DILocation(line: 185, column: 19, scope: !2020, inlinedAt: !3289)
!3295 = !DILocation(line: 186, column: 5, scope: !2020, inlinedAt: !3289)
!3296 = !DILocation(line: 187, column: 6, scope: !2006, inlinedAt: !3289)
!3297 = !DILocation(line: 187, column: 17, scope: !2006, inlinedAt: !3289)
!3298 = !DILocation(line: 188, column: 6, scope: !2006, inlinedAt: !3289)
!3299 = !DILocation(line: 188, column: 18, scope: !2006, inlinedAt: !3289)
!3300 = !DILocation(line: 1032, column: 10, scope: !3254)
!3301 = !DILocation(line: 1033, column: 1, scope: !3254)
!3302 = !DILocation(line: 1032, column: 3, scope: !3254)
!3303 = distinct !DISubprogram(name: "quotearg_custom", scope: !376, file: !376, line: 1036, type: !3304, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3306)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{!41, !43, !43, !43}
!3306 = !{!3307, !3308, !3309}
!3307 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3303, file: !376, line: 1036, type: !43)
!3308 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3303, file: !376, line: 1036, type: !43)
!3309 = !DILocalVariable(name: "arg", arg: 3, scope: !3303, file: !376, line: 1037, type: !43)
!3310 = !DILocation(line: 1030, column: 26, scope: !3254, inlinedAt: !3311)
!3311 = distinct !DILocation(line: 1021, column: 10, scope: !3245, inlinedAt: !3312)
!3312 = distinct !DILocation(line: 1039, column: 10, scope: !3303)
!3313 = !DILocation(line: 0, scope: !3303)
!3314 = !DILocation(line: 0, scope: !3245, inlinedAt: !3312)
!3315 = !DILocation(line: 0, scope: !3254, inlinedAt: !3311)
!3316 = !DILocation(line: 1030, column: 3, scope: !3254, inlinedAt: !3311)
!3317 = !DILocation(line: 1030, column: 30, scope: !3254, inlinedAt: !3311)
!3318 = !DILocation(line: 0, scope: !2006, inlinedAt: !3319)
!3319 = distinct !DILocation(line: 1031, column: 3, scope: !3254, inlinedAt: !3311)
!3320 = !DILocation(line: 184, column: 6, scope: !2006, inlinedAt: !3319)
!3321 = !DILocation(line: 184, column: 12, scope: !2006, inlinedAt: !3319)
!3322 = !DILocation(line: 185, column: 8, scope: !2020, inlinedAt: !3319)
!3323 = !DILocation(line: 185, column: 23, scope: !2020, inlinedAt: !3319)
!3324 = !DILocation(line: 185, column: 19, scope: !2020, inlinedAt: !3319)
!3325 = !DILocation(line: 186, column: 5, scope: !2020, inlinedAt: !3319)
!3326 = !DILocation(line: 187, column: 6, scope: !2006, inlinedAt: !3319)
!3327 = !DILocation(line: 187, column: 17, scope: !2006, inlinedAt: !3319)
!3328 = !DILocation(line: 188, column: 6, scope: !2006, inlinedAt: !3319)
!3329 = !DILocation(line: 188, column: 18, scope: !2006, inlinedAt: !3319)
!3330 = !DILocation(line: 1032, column: 10, scope: !3254, inlinedAt: !3311)
!3331 = !DILocation(line: 1033, column: 1, scope: !3254, inlinedAt: !3311)
!3332 = !DILocation(line: 1039, column: 3, scope: !3303)
!3333 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !376, file: !376, line: 1043, type: !3334, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3336)
!3334 = !DISubroutineType(types: !3335)
!3335 = !{!41, !43, !43, !43, !100}
!3336 = !{!3337, !3338, !3339, !3340}
!3337 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3333, file: !376, line: 1043, type: !43)
!3338 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3333, file: !376, line: 1043, type: !43)
!3339 = !DILocalVariable(name: "arg", arg: 3, scope: !3333, file: !376, line: 1044, type: !43)
!3340 = !DILocalVariable(name: "argsize", arg: 4, scope: !3333, file: !376, line: 1044, type: !100)
!3341 = !DILocation(line: 1030, column: 26, scope: !3254, inlinedAt: !3342)
!3342 = distinct !DILocation(line: 1046, column: 10, scope: !3333)
!3343 = !DILocation(line: 0, scope: !3333)
!3344 = !DILocation(line: 0, scope: !3254, inlinedAt: !3342)
!3345 = !DILocation(line: 1030, column: 3, scope: !3254, inlinedAt: !3342)
!3346 = !DILocation(line: 1030, column: 30, scope: !3254, inlinedAt: !3342)
!3347 = !DILocation(line: 0, scope: !2006, inlinedAt: !3348)
!3348 = distinct !DILocation(line: 1031, column: 3, scope: !3254, inlinedAt: !3342)
!3349 = !DILocation(line: 184, column: 6, scope: !2006, inlinedAt: !3348)
!3350 = !DILocation(line: 184, column: 12, scope: !2006, inlinedAt: !3348)
!3351 = !DILocation(line: 185, column: 8, scope: !2020, inlinedAt: !3348)
!3352 = !DILocation(line: 185, column: 23, scope: !2020, inlinedAt: !3348)
!3353 = !DILocation(line: 185, column: 19, scope: !2020, inlinedAt: !3348)
!3354 = !DILocation(line: 186, column: 5, scope: !2020, inlinedAt: !3348)
!3355 = !DILocation(line: 187, column: 6, scope: !2006, inlinedAt: !3348)
!3356 = !DILocation(line: 187, column: 17, scope: !2006, inlinedAt: !3348)
!3357 = !DILocation(line: 188, column: 6, scope: !2006, inlinedAt: !3348)
!3358 = !DILocation(line: 188, column: 18, scope: !2006, inlinedAt: !3348)
!3359 = !DILocation(line: 1032, column: 10, scope: !3254, inlinedAt: !3342)
!3360 = !DILocation(line: 1033, column: 1, scope: !3254, inlinedAt: !3342)
!3361 = !DILocation(line: 1046, column: 3, scope: !3333)
!3362 = distinct !DISubprogram(name: "quote_n_mem", scope: !376, file: !376, line: 1061, type: !3363, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3365)
!3363 = !DISubroutineType(types: !3364)
!3364 = !{!43, !45, !43, !100}
!3365 = !{!3366, !3367, !3368}
!3366 = !DILocalVariable(name: "n", arg: 1, scope: !3362, file: !376, line: 1061, type: !45)
!3367 = !DILocalVariable(name: "arg", arg: 2, scope: !3362, file: !376, line: 1061, type: !43)
!3368 = !DILocalVariable(name: "argsize", arg: 3, scope: !3362, file: !376, line: 1061, type: !100)
!3369 = !DILocation(line: 0, scope: !3362)
!3370 = !DILocation(line: 1063, column: 10, scope: !3362)
!3371 = !DILocation(line: 1063, column: 3, scope: !3362)
!3372 = distinct !DISubprogram(name: "quote_mem", scope: !376, file: !376, line: 1067, type: !3373, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3375)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{!43, !43, !100}
!3375 = !{!3376, !3377}
!3376 = !DILocalVariable(name: "arg", arg: 1, scope: !3372, file: !376, line: 1067, type: !43)
!3377 = !DILocalVariable(name: "argsize", arg: 2, scope: !3372, file: !376, line: 1067, type: !100)
!3378 = !DILocation(line: 0, scope: !3372)
!3379 = !DILocation(line: 0, scope: !3362, inlinedAt: !3380)
!3380 = distinct !DILocation(line: 1069, column: 10, scope: !3372)
!3381 = !DILocation(line: 1063, column: 10, scope: !3362, inlinedAt: !3380)
!3382 = !DILocation(line: 1069, column: 3, scope: !3372)
!3383 = distinct !DISubprogram(name: "quote_n", scope: !376, file: !376, line: 1073, type: !237, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3384)
!3384 = !{!3385, !3386}
!3385 = !DILocalVariable(name: "n", arg: 1, scope: !3383, file: !376, line: 1073, type: !45)
!3386 = !DILocalVariable(name: "arg", arg: 2, scope: !3383, file: !376, line: 1073, type: !43)
!3387 = !DILocation(line: 0, scope: !3383)
!3388 = !DILocation(line: 0, scope: !3362, inlinedAt: !3389)
!3389 = distinct !DILocation(line: 1075, column: 10, scope: !3383)
!3390 = !DILocation(line: 1063, column: 10, scope: !3362, inlinedAt: !3389)
!3391 = !DILocation(line: 1075, column: 3, scope: !3383)
!3392 = distinct !DISubprogram(name: "quote", scope: !376, file: !376, line: 1079, type: !275, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3393)
!3393 = !{!3394}
!3394 = !DILocalVariable(name: "arg", arg: 1, scope: !3392, file: !376, line: 1079, type: !43)
!3395 = !DILocation(line: 0, scope: !3392)
!3396 = !DILocation(line: 0, scope: !3383, inlinedAt: !3397)
!3397 = distinct !DILocation(line: 1081, column: 10, scope: !3392)
!3398 = !DILocation(line: 0, scope: !3362, inlinedAt: !3399)
!3399 = distinct !DILocation(line: 1075, column: 10, scope: !3383, inlinedAt: !3397)
!3400 = !DILocation(line: 1063, column: 10, scope: !3362, inlinedAt: !3399)
!3401 = !DILocation(line: 1081, column: 3, scope: !3392)
!3402 = distinct !DISubprogram(name: "dup_safer", scope: !605, file: !605, line: 31, type: !160, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !604, retainedNodes: !3403)
!3403 = !{!3404}
!3404 = !DILocalVariable(name: "fd", arg: 1, scope: !3402, file: !605, line: 31, type: !45)
!3405 = !DILocation(line: 0, scope: !3402)
!3406 = !DILocation(line: 33, column: 10, scope: !3402)
!3407 = !DILocation(line: 33, column: 3, scope: !3402)
!3408 = distinct !DISubprogram(name: "version_etc_arn", scope: !610, file: !610, line: 61, type: !3409, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3413)
!3409 = !DISubroutineType(types: !3410)
!3410 = !{null, !3411, !43, !43, !43, !1571, !100}
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3412, size: 64)
!3412 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1360, line: 7, baseType: !620)
!3413 = !{!3414, !3415, !3416, !3417, !3418, !3419}
!3414 = !DILocalVariable(name: "stream", arg: 1, scope: !3408, file: !610, line: 61, type: !3411)
!3415 = !DILocalVariable(name: "command_name", arg: 2, scope: !3408, file: !610, line: 62, type: !43)
!3416 = !DILocalVariable(name: "package", arg: 3, scope: !3408, file: !610, line: 62, type: !43)
!3417 = !DILocalVariable(name: "version", arg: 4, scope: !3408, file: !610, line: 63, type: !43)
!3418 = !DILocalVariable(name: "authors", arg: 5, scope: !3408, file: !610, line: 64, type: !1571)
!3419 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3408, file: !610, line: 64, type: !100)
!3420 = !DILocation(line: 0, scope: !3408)
!3421 = !DILocation(line: 66, column: 7, scope: !3422)
!3422 = distinct !DILexicalBlock(scope: !3408, file: !610, line: 66, column: 7)
!3423 = !DILocation(line: 66, column: 7, scope: !3408)
!3424 = !DILocation(line: 67, column: 5, scope: !3422)
!3425 = !DILocation(line: 69, column: 5, scope: !3422)
!3426 = !DILocation(line: 83, column: 3, scope: !3408)
!3427 = !DILocation(line: 85, column: 3, scope: !3408)
!3428 = !DILocation(line: 88, column: 3, scope: !3408)
!3429 = !DILocation(line: 95, column: 3, scope: !3408)
!3430 = !DILocation(line: 97, column: 3, scope: !3408)
!3431 = !DILocation(line: 105, column: 7, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3408, file: !610, line: 98, column: 5)
!3433 = !DILocation(line: 106, column: 7, scope: !3432)
!3434 = !DILocation(line: 109, column: 7, scope: !3432)
!3435 = !DILocation(line: 110, column: 7, scope: !3432)
!3436 = !DILocation(line: 113, column: 7, scope: !3432)
!3437 = !DILocation(line: 115, column: 7, scope: !3432)
!3438 = !DILocation(line: 120, column: 7, scope: !3432)
!3439 = !DILocation(line: 122, column: 7, scope: !3432)
!3440 = !DILocation(line: 127, column: 7, scope: !3432)
!3441 = !DILocation(line: 129, column: 7, scope: !3432)
!3442 = !DILocation(line: 134, column: 7, scope: !3432)
!3443 = !DILocation(line: 137, column: 7, scope: !3432)
!3444 = !DILocation(line: 142, column: 7, scope: !3432)
!3445 = !DILocation(line: 145, column: 7, scope: !3432)
!3446 = !DILocation(line: 150, column: 7, scope: !3432)
!3447 = !DILocation(line: 154, column: 7, scope: !3432)
!3448 = !DILocation(line: 159, column: 7, scope: !3432)
!3449 = !DILocation(line: 163, column: 7, scope: !3432)
!3450 = !DILocation(line: 170, column: 7, scope: !3432)
!3451 = !DILocation(line: 174, column: 7, scope: !3432)
!3452 = !DILocation(line: 176, column: 1, scope: !3408)
!3453 = distinct !DISubprogram(name: "version_etc_ar", scope: !610, file: !610, line: 183, type: !3454, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3456)
!3454 = !DISubroutineType(types: !3455)
!3455 = !{null, !3411, !43, !43, !43, !1571}
!3456 = !{!3457, !3458, !3459, !3460, !3461, !3462}
!3457 = !DILocalVariable(name: "stream", arg: 1, scope: !3453, file: !610, line: 183, type: !3411)
!3458 = !DILocalVariable(name: "command_name", arg: 2, scope: !3453, file: !610, line: 184, type: !43)
!3459 = !DILocalVariable(name: "package", arg: 3, scope: !3453, file: !610, line: 184, type: !43)
!3460 = !DILocalVariable(name: "version", arg: 4, scope: !3453, file: !610, line: 185, type: !43)
!3461 = !DILocalVariable(name: "authors", arg: 5, scope: !3453, file: !610, line: 185, type: !1571)
!3462 = !DILocalVariable(name: "n_authors", scope: !3453, file: !610, line: 187, type: !100)
!3463 = !DILocation(line: 0, scope: !3453)
!3464 = !DILocation(line: 189, column: 8, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3453, file: !610, line: 189, column: 3)
!3466 = !DILocation(line: 0, scope: !3465)
!3467 = !DILocation(line: 189, column: 23, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3465, file: !610, line: 189, column: 3)
!3469 = !DILocation(line: 189, column: 3, scope: !3465)
!3470 = !DILocation(line: 189, column: 52, scope: !3468)
!3471 = distinct !{!3471, !3469, !3472}
!3472 = !DILocation(line: 190, column: 5, scope: !3465)
!3473 = !DILocation(line: 191, column: 3, scope: !3453)
!3474 = !DILocation(line: 192, column: 1, scope: !3453)
!3475 = distinct !DISubprogram(name: "version_etc_va", scope: !610, file: !610, line: 199, type: !3476, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3485)
!3476 = !DISubroutineType(types: !3477)
!3477 = !{null, !3411, !43, !43, !43, !3478}
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !610, line: 192, size: 192, elements: !3480)
!3480 = !{!3481, !3482, !3483, !3484}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3479, file: !610, line: 192, baseType: !6, size: 32)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3479, file: !610, line: 192, baseType: !6, size: 32, offset: 32)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3479, file: !610, line: 192, baseType: !98, size: 64, offset: 64)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3479, file: !610, line: 192, baseType: !98, size: 64, offset: 128)
!3485 = !{!3486, !3487, !3488, !3489, !3490, !3491, !3492}
!3486 = !DILocalVariable(name: "stream", arg: 1, scope: !3475, file: !610, line: 199, type: !3411)
!3487 = !DILocalVariable(name: "command_name", arg: 2, scope: !3475, file: !610, line: 200, type: !43)
!3488 = !DILocalVariable(name: "package", arg: 3, scope: !3475, file: !610, line: 200, type: !43)
!3489 = !DILocalVariable(name: "version", arg: 4, scope: !3475, file: !610, line: 201, type: !43)
!3490 = !DILocalVariable(name: "authors", arg: 5, scope: !3475, file: !610, line: 201, type: !3478)
!3491 = !DILocalVariable(name: "n_authors", scope: !3475, file: !610, line: 203, type: !100)
!3492 = !DILocalVariable(name: "authtab", scope: !3475, file: !610, line: 204, type: !3493)
!3493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 640, elements: !462)
!3494 = !DILocation(line: 0, scope: !3475)
!3495 = !DILocation(line: 204, column: 3, scope: !3475)
!3496 = !DILocation(line: 204, column: 15, scope: !3475)
!3497 = !DILocation(line: 0, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3499, file: !610, line: 206, column: 3)
!3499 = distinct !DILexicalBlock(scope: !3475, file: !610, line: 206, column: 3)
!3500 = !DILocation(line: 208, column: 35, scope: !3498)
!3501 = !DILocation(line: 208, column: 14, scope: !3498)
!3502 = !DILocation(line: 208, column: 33, scope: !3498)
!3503 = !DILocation(line: 208, column: 67, scope: !3498)
!3504 = !DILocation(line: 206, column: 3, scope: !3499)
!3505 = !DILocation(line: 0, scope: !3499)
!3506 = !DILocation(line: 211, column: 3, scope: !3475)
!3507 = !DILocation(line: 213, column: 1, scope: !3475)
!3508 = distinct !DISubprogram(name: "version_etc", scope: !610, file: !610, line: 230, type: !3509, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !3511)
!3509 = !DISubroutineType(types: !3510)
!3510 = !{null, !3411, !43, !43, !43, null}
!3511 = !{!3512, !3513, !3514, !3515, !3516}
!3512 = !DILocalVariable(name: "stream", arg: 1, scope: !3508, file: !610, line: 230, type: !3411)
!3513 = !DILocalVariable(name: "command_name", arg: 2, scope: !3508, file: !610, line: 231, type: !43)
!3514 = !DILocalVariable(name: "package", arg: 3, scope: !3508, file: !610, line: 231, type: !43)
!3515 = !DILocalVariable(name: "version", arg: 4, scope: !3508, file: !610, line: 232, type: !43)
!3516 = !DILocalVariable(name: "authors", scope: !3508, file: !610, line: 234, type: !3517)
!3517 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !48, line: 52, baseType: !3518)
!3518 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3519, line: 32, baseType: !3520)
!3519 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!3520 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !610, line: 234, baseType: !3521)
!3521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3479, size: 192, elements: !83)
!3522 = !DILocation(line: 0, scope: !3508)
!3523 = !DILocation(line: 234, column: 3, scope: !3508)
!3524 = !DILocation(line: 234, column: 11, scope: !3508)
!3525 = !DILocation(line: 236, column: 3, scope: !3508)
!3526 = !DILocation(line: 237, column: 3, scope: !3508)
!3527 = !DILocation(line: 238, column: 3, scope: !3508)
!3528 = !DILocation(line: 239, column: 1, scope: !3508)
!3529 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !610, file: !610, line: 242, type: !127, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !46)
!3530 = !DILocation(line: 244, column: 3, scope: !3529)
!3531 = !DILocation(line: 249, column: 3, scope: !3529)
!3532 = !DILocation(line: 255, column: 3, scope: !3529)
!3533 = !DILocation(line: 260, column: 3, scope: !3529)
!3534 = !DILocation(line: 262, column: 1, scope: !3529)
!3535 = distinct !DISubprogram(name: "xnmalloc", scope: !193, file: !193, line: 99, type: !1434, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !651, retainedNodes: !3536)
!3536 = !{!3537, !3538}
!3537 = !DILocalVariable(name: "n", arg: 1, scope: !3535, file: !193, line: 99, type: !100)
!3538 = !DILocalVariable(name: "s", arg: 2, scope: !3535, file: !193, line: 99, type: !100)
!3539 = !DILocation(line: 0, scope: !3535)
!3540 = !DILocation(line: 101, column: 7, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3535, file: !193, line: 101, column: 7)
!3542 = !DILocation(line: 101, column: 7, scope: !3535)
!3543 = !DILocation(line: 102, column: 5, scope: !3541)
!3544 = !DILocation(line: 103, column: 21, scope: !3535)
!3545 = !DILocalVariable(name: "n", arg: 1, scope: !3546, file: !652, line: 39, type: !100)
!3546 = distinct !DISubprogram(name: "xmalloc", scope: !652, file: !652, line: 39, type: !3547, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !651, retainedNodes: !3549)
!3547 = !DISubroutineType(types: !3548)
!3548 = !{!98, !100}
!3549 = !{!3545, !3550}
!3550 = !DILocalVariable(name: "p", scope: !3546, file: !652, line: 41, type: !98)
!3551 = !DILocation(line: 0, scope: !3546, inlinedAt: !3552)
!3552 = distinct !DILocation(line: 103, column: 10, scope: !3535)
!3553 = !DILocation(line: 41, column: 13, scope: !3546, inlinedAt: !3552)
!3554 = !DILocation(line: 42, column: 8, scope: !3555, inlinedAt: !3552)
!3555 = distinct !DILexicalBlock(scope: !3546, file: !652, line: 42, column: 7)
!3556 = !DILocation(line: 42, column: 15, scope: !3555, inlinedAt: !3552)
!3557 = !DILocation(line: 42, column: 10, scope: !3555, inlinedAt: !3552)
!3558 = !DILocation(line: 43, column: 5, scope: !3555, inlinedAt: !3552)
!3559 = !DILocation(line: 103, column: 3, scope: !3535)
!3560 = !DILocation(line: 0, scope: !3546)
!3561 = !DILocation(line: 41, column: 13, scope: !3546)
!3562 = !DILocation(line: 42, column: 8, scope: !3555)
!3563 = !DILocation(line: 42, column: 15, scope: !3555)
!3564 = !DILocation(line: 42, column: 10, scope: !3555)
!3565 = !DILocation(line: 43, column: 5, scope: !3555)
!3566 = !DILocation(line: 44, column: 3, scope: !3546)
!3567 = distinct !DISubprogram(name: "xnrealloc", scope: !193, file: !193, line: 112, type: !3568, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !651, retainedNodes: !3570)
!3568 = !DISubroutineType(types: !3569)
!3569 = !{!98, !98, !100, !100}
!3570 = !{!3571, !3572, !3573}
!3571 = !DILocalVariable(name: "p", arg: 1, scope: !3567, file: !193, line: 112, type: !98)
!3572 = !DILocalVariable(name: "n", arg: 2, scope: !3567, file: !193, line: 112, type: !100)
!3573 = !DILocalVariable(name: "s", arg: 3, scope: !3567, file: !193, line: 112, type: !100)
!3574 = !DILocation(line: 0, scope: !3567)
!3575 = !DILocation(line: 114, column: 7, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3567, file: !193, line: 114, column: 7)
!3577 = !DILocation(line: 114, column: 7, scope: !3567)
!3578 = !DILocation(line: 115, column: 5, scope: !3576)
!3579 = !DILocation(line: 116, column: 25, scope: !3567)
!3580 = !DILocalVariable(name: "p", arg: 1, scope: !3581, file: !652, line: 51, type: !98)
!3581 = distinct !DISubprogram(name: "xrealloc", scope: !652, file: !652, line: 51, type: !3582, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !651, retainedNodes: !3584)
!3582 = !DISubroutineType(types: !3583)
!3583 = !{!98, !98, !100}
!3584 = !{!3580, !3585}
!3585 = !DILocalVariable(name: "n", arg: 2, scope: !3581, file: !652, line: 51, type: !100)
!3586 = !DILocation(line: 0, scope: !3581, inlinedAt: !3587)
!3587 = distinct !DILocation(line: 116, column: 10, scope: !3567)
!3588 = !DILocation(line: 53, column: 8, scope: !3589, inlinedAt: !3587)
!3589 = distinct !DILexicalBlock(scope: !3581, file: !652, line: 53, column: 7)
!3590 = !DILocation(line: 53, column: 13, scope: !3589, inlinedAt: !3587)
!3591 = !DILocation(line: 53, column: 10, scope: !3589, inlinedAt: !3587)
!3592 = !DILocation(line: 57, column: 7, scope: !3593, inlinedAt: !3587)
!3593 = distinct !DILexicalBlock(scope: !3589, file: !652, line: 54, column: 5)
!3594 = !DILocation(line: 58, column: 7, scope: !3593, inlinedAt: !3587)
!3595 = !DILocation(line: 61, column: 7, scope: !3581, inlinedAt: !3587)
!3596 = !DILocation(line: 62, column: 8, scope: !3597, inlinedAt: !3587)
!3597 = distinct !DILexicalBlock(scope: !3581, file: !652, line: 62, column: 7)
!3598 = !DILocation(line: 62, column: 13, scope: !3597, inlinedAt: !3587)
!3599 = !DILocation(line: 62, column: 10, scope: !3597, inlinedAt: !3587)
!3600 = !DILocation(line: 63, column: 5, scope: !3597, inlinedAt: !3587)
!3601 = !DILocation(line: 116, column: 3, scope: !3567)
!3602 = !DILocation(line: 0, scope: !3581)
!3603 = !DILocation(line: 53, column: 8, scope: !3589)
!3604 = !DILocation(line: 53, column: 13, scope: !3589)
!3605 = !DILocation(line: 53, column: 10, scope: !3589)
!3606 = !DILocation(line: 57, column: 7, scope: !3593)
!3607 = !DILocation(line: 58, column: 7, scope: !3593)
!3608 = !DILocation(line: 61, column: 7, scope: !3581)
!3609 = !DILocation(line: 62, column: 8, scope: !3597)
!3610 = !DILocation(line: 62, column: 13, scope: !3597)
!3611 = !DILocation(line: 62, column: 10, scope: !3597)
!3612 = !DILocation(line: 63, column: 5, scope: !3597)
!3613 = !DILocation(line: 65, column: 1, scope: !3581)
!3614 = !DILocation(line: 0, scope: !655)
!3615 = !DILocation(line: 176, column: 14, scope: !655)
!3616 = !DILocation(line: 178, column: 9, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !655, file: !193, line: 178, column: 7)
!3618 = !DILocation(line: 178, column: 7, scope: !655)
!3619 = !DILocation(line: 180, column: 13, scope: !3620)
!3620 = distinct !DILexicalBlock(scope: !3621, file: !193, line: 180, column: 11)
!3621 = distinct !DILexicalBlock(scope: !3617, file: !193, line: 179, column: 5)
!3622 = !DILocation(line: 180, column: 11, scope: !3621)
!3623 = !DILocation(line: 188, column: 30, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3620, file: !193, line: 181, column: 9)
!3625 = !DILocation(line: 189, column: 16, scope: !3624)
!3626 = !DILocation(line: 189, column: 13, scope: !3624)
!3627 = !DILocation(line: 190, column: 9, scope: !3624)
!3628 = !DILocation(line: 191, column: 11, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !3621, file: !193, line: 191, column: 11)
!3630 = !DILocation(line: 191, column: 11, scope: !3621)
!3631 = !DILocation(line: 206, column: 7, scope: !655)
!3632 = !DILocation(line: 207, column: 25, scope: !655)
!3633 = !DILocation(line: 0, scope: !3581, inlinedAt: !3634)
!3634 = distinct !DILocation(line: 207, column: 10, scope: !655)
!3635 = !DILocation(line: 53, column: 10, scope: !3589, inlinedAt: !3634)
!3636 = !DILocation(line: 192, column: 9, scope: !3629)
!3637 = !DILocation(line: 200, column: 69, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !3639, file: !193, line: 200, column: 11)
!3639 = distinct !DILexicalBlock(scope: !3617, file: !193, line: 195, column: 5)
!3640 = !DILocation(line: 201, column: 11, scope: !3638)
!3641 = !DILocation(line: 200, column: 11, scope: !3639)
!3642 = !DILocation(line: 202, column: 9, scope: !3638)
!3643 = !DILocation(line: 203, column: 14, scope: !3639)
!3644 = !DILocation(line: 203, column: 18, scope: !3639)
!3645 = !DILocation(line: 203, column: 9, scope: !3639)
!3646 = !DILocation(line: 53, column: 8, scope: !3589, inlinedAt: !3634)
!3647 = !DILocation(line: 57, column: 7, scope: !3593, inlinedAt: !3634)
!3648 = !DILocation(line: 58, column: 7, scope: !3593, inlinedAt: !3634)
!3649 = !DILocation(line: 61, column: 7, scope: !3581, inlinedAt: !3634)
!3650 = !DILocation(line: 62, column: 8, scope: !3597, inlinedAt: !3634)
!3651 = !DILocation(line: 62, column: 13, scope: !3597, inlinedAt: !3634)
!3652 = !DILocation(line: 62, column: 10, scope: !3597, inlinedAt: !3634)
!3653 = !DILocation(line: 63, column: 5, scope: !3597, inlinedAt: !3634)
!3654 = !DILocation(line: 207, column: 3, scope: !655)
!3655 = distinct !DISubprogram(name: "xcharalloc", scope: !193, file: !193, line: 216, type: !2820, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !651, retainedNodes: !3656)
!3656 = !{!3657}
!3657 = !DILocalVariable(name: "n", arg: 1, scope: !3655, file: !193, line: 216, type: !100)
!3658 = !DILocation(line: 0, scope: !3655)
!3659 = !DILocation(line: 0, scope: !3546, inlinedAt: !3660)
!3660 = distinct !DILocation(line: 218, column: 10, scope: !3655)
!3661 = !DILocation(line: 41, column: 13, scope: !3546, inlinedAt: !3660)
!3662 = !DILocation(line: 42, column: 8, scope: !3555, inlinedAt: !3660)
!3663 = !DILocation(line: 42, column: 15, scope: !3555, inlinedAt: !3660)
!3664 = !DILocation(line: 42, column: 10, scope: !3555, inlinedAt: !3660)
!3665 = !DILocation(line: 43, column: 5, scope: !3555, inlinedAt: !3660)
!3666 = !DILocation(line: 218, column: 3, scope: !3655)
!3667 = distinct !DISubprogram(name: "x2realloc", scope: !652, file: !652, line: 74, type: !3668, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !651, retainedNodes: !3670)
!3668 = !DISubroutineType(types: !3669)
!3669 = !{!98, !98, !658}
!3670 = !{!3671, !3672}
!3671 = !DILocalVariable(name: "p", arg: 1, scope: !3667, file: !652, line: 74, type: !98)
!3672 = !DILocalVariable(name: "pn", arg: 2, scope: !3667, file: !652, line: 74, type: !658)
!3673 = !DILocation(line: 0, scope: !3667)
!3674 = !DILocation(line: 0, scope: !655, inlinedAt: !3675)
!3675 = distinct !DILocation(line: 76, column: 10, scope: !3667)
!3676 = !DILocation(line: 176, column: 14, scope: !655, inlinedAt: !3675)
!3677 = !DILocation(line: 178, column: 9, scope: !3617, inlinedAt: !3675)
!3678 = !DILocation(line: 178, column: 7, scope: !655, inlinedAt: !3675)
!3679 = !DILocation(line: 180, column: 13, scope: !3620, inlinedAt: !3675)
!3680 = !DILocation(line: 180, column: 11, scope: !3621, inlinedAt: !3675)
!3681 = !DILocation(line: 191, column: 11, scope: !3629, inlinedAt: !3675)
!3682 = !DILocation(line: 191, column: 11, scope: !3621, inlinedAt: !3675)
!3683 = !DILocation(line: 206, column: 7, scope: !655, inlinedAt: !3675)
!3684 = !DILocation(line: 0, scope: !3581, inlinedAt: !3685)
!3685 = distinct !DILocation(line: 207, column: 10, scope: !655, inlinedAt: !3675)
!3686 = !DILocation(line: 53, column: 10, scope: !3589, inlinedAt: !3685)
!3687 = !DILocation(line: 192, column: 9, scope: !3629, inlinedAt: !3675)
!3688 = !DILocation(line: 201, column: 11, scope: !3638, inlinedAt: !3675)
!3689 = !DILocation(line: 200, column: 11, scope: !3639, inlinedAt: !3675)
!3690 = !DILocation(line: 202, column: 9, scope: !3638, inlinedAt: !3675)
!3691 = !DILocation(line: 203, column: 14, scope: !3639, inlinedAt: !3675)
!3692 = !DILocation(line: 203, column: 18, scope: !3639, inlinedAt: !3675)
!3693 = !DILocation(line: 203, column: 9, scope: !3639, inlinedAt: !3675)
!3694 = !DILocation(line: 53, column: 8, scope: !3589, inlinedAt: !3685)
!3695 = !DILocation(line: 57, column: 7, scope: !3593, inlinedAt: !3685)
!3696 = !DILocation(line: 58, column: 7, scope: !3593, inlinedAt: !3685)
!3697 = !DILocation(line: 61, column: 7, scope: !3581, inlinedAt: !3685)
!3698 = !DILocation(line: 62, column: 8, scope: !3597, inlinedAt: !3685)
!3699 = !DILocation(line: 62, column: 13, scope: !3597, inlinedAt: !3685)
!3700 = !DILocation(line: 62, column: 10, scope: !3597, inlinedAt: !3685)
!3701 = !DILocation(line: 63, column: 5, scope: !3597, inlinedAt: !3685)
!3702 = !DILocation(line: 76, column: 3, scope: !3667)
!3703 = distinct !DISubprogram(name: "xzalloc", scope: !652, file: !652, line: 84, type: !3547, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !651, retainedNodes: !3704)
!3704 = !{!3705}
!3705 = !DILocalVariable(name: "n", arg: 1, scope: !3703, file: !652, line: 84, type: !100)
!3706 = !DILocation(line: 0, scope: !3703)
!3707 = !DILocalVariable(name: "n", arg: 1, scope: !3708, file: !652, line: 93, type: !100)
!3708 = distinct !DISubprogram(name: "xcalloc", scope: !652, file: !652, line: 93, type: !1434, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !651, retainedNodes: !3709)
!3709 = !{!3707, !3710, !3711}
!3710 = !DILocalVariable(name: "s", arg: 2, scope: !3708, file: !652, line: 93, type: !100)
!3711 = !DILocalVariable(name: "p", scope: !3708, file: !652, line: 95, type: !98)
!3712 = !DILocation(line: 0, scope: !3708, inlinedAt: !3713)
!3713 = distinct !DILocation(line: 86, column: 10, scope: !3703)
!3714 = !DILocation(line: 100, column: 7, scope: !3715, inlinedAt: !3713)
!3715 = distinct !DILexicalBlock(scope: !3708, file: !652, line: 100, column: 7)
!3716 = !DILocation(line: 101, column: 7, scope: !3715, inlinedAt: !3713)
!3717 = !DILocation(line: 101, column: 18, scope: !3715, inlinedAt: !3713)
!3718 = !DILocation(line: 101, column: 16, scope: !3715, inlinedAt: !3713)
!3719 = !DILocation(line: 100, column: 7, scope: !3708, inlinedAt: !3713)
!3720 = !DILocation(line: 102, column: 5, scope: !3715, inlinedAt: !3713)
!3721 = !DILocation(line: 86, column: 3, scope: !3703)
!3722 = !DILocation(line: 0, scope: !3708)
!3723 = !DILocation(line: 100, column: 7, scope: !3715)
!3724 = !DILocation(line: 101, column: 7, scope: !3715)
!3725 = !DILocation(line: 101, column: 18, scope: !3715)
!3726 = !DILocation(line: 101, column: 16, scope: !3715)
!3727 = !DILocation(line: 100, column: 7, scope: !3708)
!3728 = !DILocation(line: 102, column: 5, scope: !3715)
!3729 = !DILocation(line: 103, column: 3, scope: !3708)
!3730 = distinct !DISubprogram(name: "xmemdup", scope: !652, file: !652, line: 111, type: !3731, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !651, retainedNodes: !3733)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{!98, !144, !100}
!3733 = !{!3734, !3735}
!3734 = !DILocalVariable(name: "p", arg: 1, scope: !3730, file: !652, line: 111, type: !144)
!3735 = !DILocalVariable(name: "s", arg: 2, scope: !3730, file: !652, line: 111, type: !100)
!3736 = !DILocation(line: 0, scope: !3730)
!3737 = !DILocation(line: 0, scope: !3546, inlinedAt: !3738)
!3738 = distinct !DILocation(line: 113, column: 18, scope: !3730)
!3739 = !DILocation(line: 41, column: 13, scope: !3546, inlinedAt: !3738)
!3740 = !DILocation(line: 42, column: 8, scope: !3555, inlinedAt: !3738)
!3741 = !DILocation(line: 42, column: 15, scope: !3555, inlinedAt: !3738)
!3742 = !DILocation(line: 42, column: 10, scope: !3555, inlinedAt: !3738)
!3743 = !DILocation(line: 43, column: 5, scope: !3555, inlinedAt: !3738)
!3744 = !DILocalVariable(name: "__dest", arg: 1, scope: !3745, file: !2353, line: 31, type: !3748)
!3745 = distinct !DISubprogram(name: "memcpy", scope: !2353, file: !2353, line: 31, type: !3746, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !651, retainedNodes: !3750)
!3746 = !DISubroutineType(types: !3747)
!3747 = !{!98, !3748, !3749, !100}
!3748 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !98)
!3749 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !144)
!3750 = !{!3744, !3751, !3752}
!3751 = !DILocalVariable(name: "__src", arg: 2, scope: !3745, file: !2353, line: 31, type: !3749)
!3752 = !DILocalVariable(name: "__len", arg: 3, scope: !3745, file: !2353, line: 31, type: !100)
!3753 = !DILocation(line: 0, scope: !3745, inlinedAt: !3754)
!3754 = distinct !DILocation(line: 113, column: 10, scope: !3730)
!3755 = !DILocation(line: 34, column: 10, scope: !3745, inlinedAt: !3754)
!3756 = !DILocation(line: 113, column: 3, scope: !3730)
!3757 = distinct !DISubprogram(name: "xstrdup", scope: !652, file: !652, line: 119, type: !120, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !651, retainedNodes: !3758)
!3758 = !{!3759}
!3759 = !DILocalVariable(name: "string", arg: 1, scope: !3757, file: !652, line: 119, type: !43)
!3760 = !DILocation(line: 0, scope: !3757)
!3761 = !DILocation(line: 121, column: 27, scope: !3757)
!3762 = !DILocation(line: 121, column: 43, scope: !3757)
!3763 = !DILocation(line: 0, scope: !3730, inlinedAt: !3764)
!3764 = distinct !DILocation(line: 121, column: 10, scope: !3757)
!3765 = !DILocation(line: 0, scope: !3546, inlinedAt: !3766)
!3766 = distinct !DILocation(line: 113, column: 18, scope: !3730, inlinedAt: !3764)
!3767 = !DILocation(line: 41, column: 13, scope: !3546, inlinedAt: !3766)
!3768 = !DILocation(line: 42, column: 8, scope: !3555, inlinedAt: !3766)
!3769 = !DILocation(line: 42, column: 15, scope: !3555, inlinedAt: !3766)
!3770 = !DILocation(line: 42, column: 10, scope: !3555, inlinedAt: !3766)
!3771 = !DILocation(line: 43, column: 5, scope: !3555, inlinedAt: !3766)
!3772 = !DILocation(line: 0, scope: !3745, inlinedAt: !3773)
!3773 = distinct !DILocation(line: 113, column: 10, scope: !3730, inlinedAt: !3764)
!3774 = !DILocation(line: 34, column: 10, scope: !3745, inlinedAt: !3773)
!3775 = !DILocation(line: 121, column: 3, scope: !3757)
!3776 = distinct !DISubprogram(name: "xalloc_die", scope: !673, file: !673, line: 32, type: !127, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !46)
!3777 = !DILocation(line: 34, column: 10, scope: !3776)
!3778 = !DILocation(line: 34, column: 33, scope: !3776)
!3779 = !DILocation(line: 34, column: 3, scope: !3776)
!3780 = !DILocation(line: 40, column: 3, scope: !3776)
!3781 = distinct !DISubprogram(name: "rpl_calloc", scope: !676, file: !676, line: 42, type: !1434, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !675, retainedNodes: !3782)
!3782 = !{!3783, !3784, !3785, !3786}
!3783 = !DILocalVariable(name: "n", arg: 1, scope: !3781, file: !676, line: 42, type: !100)
!3784 = !DILocalVariable(name: "s", arg: 2, scope: !3781, file: !676, line: 42, type: !100)
!3785 = !DILocalVariable(name: "result", scope: !3781, file: !676, line: 44, type: !98)
!3786 = !DILocalVariable(name: "bytes", scope: !3787, file: !676, line: 56, type: !100)
!3787 = distinct !DILexicalBlock(scope: !3788, file: !676, line: 53, column: 5)
!3788 = distinct !DILexicalBlock(scope: !3781, file: !676, line: 47, column: 7)
!3789 = !DILocation(line: 0, scope: !3781)
!3790 = !DILocation(line: 47, column: 9, scope: !3788)
!3791 = !DILocation(line: 47, column: 19, scope: !3788)
!3792 = !DILocation(line: 47, column: 14, scope: !3788)
!3793 = !DILocation(line: 0, scope: !3787)
!3794 = !DILocation(line: 57, column: 21, scope: !3795)
!3795 = distinct !DILexicalBlock(scope: !3787, file: !676, line: 57, column: 11)
!3796 = !DILocation(line: 57, column: 11, scope: !3787)
!3797 = !DILocation(line: 59, column: 11, scope: !3798)
!3798 = distinct !DILexicalBlock(scope: !3795, file: !676, line: 58, column: 9)
!3799 = !DILocation(line: 59, column: 17, scope: !3798)
!3800 = !DILocation(line: 65, column: 12, scope: !3781)
!3801 = !DILocation(line: 72, column: 3, scope: !3781)
!3802 = !DILocation(line: 73, column: 1, scope: !3781)
!3803 = distinct !DISubprogram(name: "rpl_fclose", scope: !679, file: !679, line: 58, type: !3804, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !678, retainedNodes: !3808)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!45, !3806}
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1360, line: 7, baseType: !685)
!3808 = !{!3809, !3810, !3811, !3812}
!3809 = !DILocalVariable(name: "fp", arg: 1, scope: !3803, file: !679, line: 58, type: !3806)
!3810 = !DILocalVariable(name: "saved_errno", scope: !3803, file: !679, line: 60, type: !45)
!3811 = !DILocalVariable(name: "fd", scope: !3803, file: !679, line: 61, type: !45)
!3812 = !DILocalVariable(name: "result", scope: !3803, file: !679, line: 62, type: !45)
!3813 = !DILocation(line: 0, scope: !3803)
!3814 = !DILocation(line: 65, column: 8, scope: !3803)
!3815 = !DILocation(line: 66, column: 10, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3803, file: !679, line: 66, column: 7)
!3817 = !DILocation(line: 66, column: 7, scope: !3803)
!3818 = !DILocation(line: 67, column: 12, scope: !3816)
!3819 = !DILocation(line: 67, column: 5, scope: !3816)
!3820 = !DILocation(line: 72, column: 9, scope: !3821)
!3821 = distinct !DILexicalBlock(scope: !3803, file: !679, line: 72, column: 7)
!3822 = !DILocation(line: 72, column: 23, scope: !3821)
!3823 = !DILocation(line: 72, column: 33, scope: !3821)
!3824 = !DILocation(line: 72, column: 26, scope: !3821)
!3825 = !DILocation(line: 72, column: 59, scope: !3821)
!3826 = !DILocation(line: 73, column: 7, scope: !3821)
!3827 = !DILocation(line: 73, column: 10, scope: !3821)
!3828 = !DILocation(line: 72, column: 7, scope: !3803)
!3829 = !DILocation(line: 100, column: 12, scope: !3803)
!3830 = !DILocation(line: 105, column: 7, scope: !3803)
!3831 = !DILocation(line: 74, column: 19, scope: !3821)
!3832 = !DILocation(line: 105, column: 19, scope: !3833)
!3833 = distinct !DILexicalBlock(scope: !3803, file: !679, line: 105, column: 7)
!3834 = !DILocation(line: 107, column: 13, scope: !3835)
!3835 = distinct !DILexicalBlock(scope: !3833, file: !679, line: 106, column: 5)
!3836 = !DILocation(line: 109, column: 5, scope: !3835)
!3837 = !DILocation(line: 112, column: 1, scope: !3803)
!3838 = distinct !DISubprogram(name: "rpl_fcntl", scope: !498, file: !498, line: 202, type: !505, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !501, retainedNodes: !3839)
!3839 = !{!3840, !3841, !3842, !3852, !3853, !3856, !3858, !3862}
!3840 = !DILocalVariable(name: "fd", arg: 1, scope: !3838, file: !498, line: 202, type: !45)
!3841 = !DILocalVariable(name: "action", arg: 2, scope: !3838, file: !498, line: 202, type: !45)
!3842 = !DILocalVariable(name: "arg", scope: !3838, file: !498, line: 208, type: !3843)
!3843 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3519, line: 14, baseType: !3844)
!3844 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !498, line: 208, baseType: !3845)
!3845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3846, size: 192, elements: !83)
!3846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !498, line: 208, size: 192, elements: !3847)
!3847 = !{!3848, !3849, !3850, !3851}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3846, file: !498, line: 208, baseType: !6, size: 32)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3846, file: !498, line: 208, baseType: !6, size: 32, offset: 32)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3846, file: !498, line: 208, baseType: !98, size: 64, offset: 64)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3846, file: !498, line: 208, baseType: !98, size: 64, offset: 128)
!3852 = !DILocalVariable(name: "result", scope: !3838, file: !498, line: 209, type: !45)
!3853 = !DILocalVariable(name: "target", scope: !3854, file: !498, line: 215, type: !45)
!3854 = distinct !DILexicalBlock(scope: !3855, file: !498, line: 214, column: 7)
!3855 = distinct !DILexicalBlock(scope: !3838, file: !498, line: 212, column: 5)
!3856 = !DILocalVariable(name: "target", scope: !3857, file: !498, line: 222, type: !45)
!3857 = distinct !DILexicalBlock(scope: !3855, file: !498, line: 221, column: 7)
!3858 = !DILocalVariable(name: "x", scope: !3859, file: !498, line: 423, type: !45)
!3859 = distinct !DILexicalBlock(scope: !3860, file: !498, line: 422, column: 13)
!3860 = distinct !DILexicalBlock(scope: !3861, file: !498, line: 260, column: 11)
!3861 = distinct !DILexicalBlock(scope: !3855, file: !498, line: 257, column: 7)
!3862 = !DILocalVariable(name: "p", scope: !3863, file: !498, line: 431, type: !98)
!3863 = distinct !DILexicalBlock(scope: !3860, file: !498, line: 430, column: 13)
!3864 = !DILocation(line: 0, scope: !3838)
!3865 = !DILocation(line: 208, column: 3, scope: !3838)
!3866 = !DILocation(line: 208, column: 11, scope: !3838)
!3867 = !DILocation(line: 210, column: 3, scope: !3838)
!3868 = !DILocation(line: 211, column: 3, scope: !3838)
!3869 = !DILocation(line: 215, column: 22, scope: !3854)
!3870 = !DILocation(line: 0, scope: !3854)
!3871 = !DILocalVariable(name: "fd", arg: 1, scope: !3872, file: !498, line: 447, type: !45)
!3872 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !498, file: !498, line: 447, type: !499, scopeLine: 448, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !501, retainedNodes: !3873)
!3873 = !{!3871, !3874, !3875}
!3874 = !DILocalVariable(name: "target", arg: 2, scope: !3872, file: !498, line: 447, type: !45)
!3875 = !DILocalVariable(name: "result", scope: !3872, file: !498, line: 449, type: !45)
!3876 = !DILocation(line: 0, scope: !3872, inlinedAt: !3877)
!3877 = distinct !DILocation(line: 216, column: 18, scope: !3854)
!3878 = !DILocation(line: 482, column: 12, scope: !3872, inlinedAt: !3877)
!3879 = !DILocation(line: 222, column: 22, scope: !3857)
!3880 = !DILocation(line: 0, scope: !3857)
!3881 = !DILocation(line: 0, scope: !497, inlinedAt: !3882)
!3882 = distinct !DILocation(line: 223, column: 18, scope: !3857)
!3883 = !DILocation(line: 508, column: 12, scope: !3884, inlinedAt: !3882)
!3884 = distinct !DILexicalBlock(scope: !497, file: !498, line: 508, column: 7)
!3885 = !DILocation(line: 508, column: 9, scope: !3884, inlinedAt: !3882)
!3886 = !DILocation(line: 508, column: 7, scope: !497, inlinedAt: !3882)
!3887 = !DILocation(line: 510, column: 16, scope: !3888, inlinedAt: !3882)
!3888 = distinct !DILexicalBlock(scope: !3884, file: !498, line: 509, column: 5)
!3889 = !DILocation(line: 511, column: 13, scope: !3890, inlinedAt: !3882)
!3890 = distinct !DILexicalBlock(scope: !3888, file: !498, line: 511, column: 11)
!3891 = !DILocation(line: 511, column: 23, scope: !3890, inlinedAt: !3882)
!3892 = !DILocation(line: 511, column: 26, scope: !3890, inlinedAt: !3882)
!3893 = !DILocation(line: 511, column: 32, scope: !3890, inlinedAt: !3882)
!3894 = !DILocation(line: 511, column: 11, scope: !3888, inlinedAt: !3882)
!3895 = !DILocation(line: 513, column: 30, scope: !3896, inlinedAt: !3882)
!3896 = distinct !DILexicalBlock(scope: !3890, file: !498, line: 512, column: 9)
!3897 = !DILocation(line: 529, column: 19, scope: !514, inlinedAt: !3882)
!3898 = !DILocation(line: 0, scope: !3872, inlinedAt: !3899)
!3899 = distinct !DILocation(line: 521, column: 20, scope: !3900, inlinedAt: !3882)
!3900 = distinct !DILexicalBlock(scope: !3890, file: !498, line: 520, column: 9)
!3901 = !DILocation(line: 482, column: 12, scope: !3872, inlinedAt: !3899)
!3902 = !DILocation(line: 522, column: 22, scope: !3903, inlinedAt: !3882)
!3903 = distinct !DILexicalBlock(scope: !3900, file: !498, line: 522, column: 15)
!3904 = !DILocation(line: 522, column: 15, scope: !3900, inlinedAt: !3882)
!3905 = !DILocation(line: 523, column: 32, scope: !3903, inlinedAt: !3882)
!3906 = !DILocation(line: 523, column: 13, scope: !3903, inlinedAt: !3882)
!3907 = !DILocation(line: 0, scope: !3872, inlinedAt: !3908)
!3908 = distinct !DILocation(line: 528, column: 14, scope: !3884, inlinedAt: !3882)
!3909 = !DILocation(line: 482, column: 12, scope: !3872, inlinedAt: !3908)
!3910 = !DILocation(line: 529, column: 22, scope: !514, inlinedAt: !3882)
!3911 = !DILocation(line: 0, scope: !3884, inlinedAt: !3882)
!3912 = !DILocation(line: 529, column: 9, scope: !514, inlinedAt: !3882)
!3913 = !DILocation(line: 531, column: 19, scope: !513, inlinedAt: !3882)
!3914 = !DILocation(line: 0, scope: !513, inlinedAt: !3882)
!3915 = !DILocation(line: 532, column: 17, scope: !517, inlinedAt: !3882)
!3916 = !DILocation(line: 532, column: 21, scope: !517, inlinedAt: !3882)
!3917 = !DILocation(line: 532, column: 54, scope: !517, inlinedAt: !3882)
!3918 = !DILocation(line: 532, column: 24, scope: !517, inlinedAt: !3882)
!3919 = !DILocation(line: 532, column: 68, scope: !517, inlinedAt: !3882)
!3920 = !DILocation(line: 532, column: 11, scope: !513, inlinedAt: !3882)
!3921 = !DILocation(line: 534, column: 29, scope: !516, inlinedAt: !3882)
!3922 = !DILocation(line: 0, scope: !516, inlinedAt: !3882)
!3923 = !DILocation(line: 535, column: 11, scope: !516, inlinedAt: !3882)
!3924 = !DILocation(line: 536, column: 17, scope: !516, inlinedAt: !3882)
!3925 = !DILocation(line: 538, column: 9, scope: !516, inlinedAt: !3882)
!3926 = !DILocation(line: 328, column: 22, scope: !3860)
!3927 = !DILocation(line: 329, column: 13, scope: !3860)
!3928 = !DILocation(line: 423, column: 23, scope: !3859)
!3929 = !DILocation(line: 0, scope: !3859)
!3930 = !DILocation(line: 424, column: 24, scope: !3859)
!3931 = !DILocation(line: 426, column: 13, scope: !3860)
!3932 = !DILocation(line: 431, column: 25, scope: !3863)
!3933 = !DILocation(line: 0, scope: !3863)
!3934 = !DILocation(line: 432, column: 24, scope: !3863)
!3935 = !DILocation(line: 434, column: 13, scope: !3860)
!3936 = !DILocation(line: 0, scope: !3855)
!3937 = !DILocation(line: 442, column: 3, scope: !3838)
!3938 = !DILocation(line: 444, column: 1, scope: !3838)
!3939 = !DILocation(line: 443, column: 3, scope: !3838)
!3940 = distinct !DISubprogram(name: "rpl_fflush", scope: !722, file: !722, line: 129, type: !3941, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3945)
!3941 = !DISubroutineType(types: !3942)
!3942 = !{!45, !3943}
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3944 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1360, line: 7, baseType: !728)
!3945 = !{!3946}
!3946 = !DILocalVariable(name: "stream", arg: 1, scope: !3940, file: !722, line: 129, type: !3943)
!3947 = !DILocation(line: 0, scope: !3940)
!3948 = !DILocation(line: 150, column: 14, scope: !3949)
!3949 = distinct !DILexicalBlock(scope: !3940, file: !722, line: 150, column: 7)
!3950 = !DILocation(line: 150, column: 22, scope: !3949)
!3951 = !DILocation(line: 150, column: 27, scope: !3949)
!3952 = !DILocation(line: 150, column: 7, scope: !3940)
!3953 = !DILocation(line: 151, column: 12, scope: !3949)
!3954 = !DILocation(line: 151, column: 5, scope: !3949)
!3955 = !DILocalVariable(name: "fp", arg: 1, scope: !3956, file: !722, line: 41, type: !3943)
!3956 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !722, file: !722, line: 41, type: !3957, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3959)
!3957 = !DISubroutineType(types: !3958)
!3958 = !{null, !3943}
!3959 = !{!3955}
!3960 = !DILocation(line: 0, scope: !3956, inlinedAt: !3961)
!3961 = distinct !DILocation(line: 156, column: 3, scope: !3940)
!3962 = !DILocation(line: 43, column: 11, scope: !3963, inlinedAt: !3961)
!3963 = distinct !DILexicalBlock(scope: !3956, file: !722, line: 43, column: 7)
!3964 = !{!1681, !1425, i64 0}
!3965 = !DILocation(line: 43, column: 18, scope: !3963, inlinedAt: !3961)
!3966 = !DILocation(line: 43, column: 7, scope: !3956, inlinedAt: !3961)
!3967 = !DILocation(line: 45, column: 5, scope: !3963, inlinedAt: !3961)
!3968 = !DILocation(line: 158, column: 10, scope: !3940)
!3969 = !DILocation(line: 158, column: 3, scope: !3940)
!3970 = !DILocation(line: 235, column: 1, scope: !3940)
!3971 = distinct !DISubprogram(name: "rpl_fseeko", scope: !763, file: !763, line: 28, type: !3972, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !762, retainedNodes: !3976)
!3972 = !DISubroutineType(types: !3973)
!3973 = !{!45, !3974, !1815, !45}
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1360, line: 7, baseType: !769)
!3976 = !{!3977, !3978, !3979, !3980}
!3977 = !DILocalVariable(name: "fp", arg: 1, scope: !3971, file: !763, line: 28, type: !3974)
!3978 = !DILocalVariable(name: "offset", arg: 2, scope: !3971, file: !763, line: 28, type: !1815)
!3979 = !DILocalVariable(name: "whence", arg: 3, scope: !3971, file: !763, line: 28, type: !45)
!3980 = !DILocalVariable(name: "pos", scope: !3981, file: !763, line: 117, type: !1815)
!3981 = distinct !DILexicalBlock(scope: !3982, file: !763, line: 113, column: 5)
!3982 = distinct !DILexicalBlock(scope: !3971, file: !763, line: 52, column: 7)
!3983 = !DILocation(line: 0, scope: !3971)
!3984 = !DILocation(line: 52, column: 11, scope: !3982)
!3985 = !{!1681, !1299, i64 16}
!3986 = !DILocation(line: 52, column: 31, scope: !3982)
!3987 = !{!1681, !1299, i64 8}
!3988 = !DILocation(line: 52, column: 24, scope: !3982)
!3989 = !DILocation(line: 53, column: 7, scope: !3982)
!3990 = !DILocation(line: 53, column: 14, scope: !3982)
!3991 = !DILocation(line: 53, column: 35, scope: !3982)
!3992 = !{!1681, !1299, i64 32}
!3993 = !DILocation(line: 53, column: 28, scope: !3982)
!3994 = !DILocation(line: 54, column: 7, scope: !3982)
!3995 = !DILocation(line: 54, column: 14, scope: !3982)
!3996 = !{!1681, !1299, i64 72}
!3997 = !DILocation(line: 54, column: 28, scope: !3982)
!3998 = !DILocation(line: 52, column: 7, scope: !3971)
!3999 = !DILocation(line: 117, column: 26, scope: !3981)
!4000 = !DILocation(line: 117, column: 19, scope: !3981)
!4001 = !DILocation(line: 0, scope: !3981)
!4002 = !DILocation(line: 118, column: 15, scope: !4003)
!4003 = distinct !DILexicalBlock(scope: !3981, file: !763, line: 118, column: 11)
!4004 = !DILocation(line: 118, column: 11, scope: !3981)
!4005 = !DILocation(line: 129, column: 11, scope: !3981)
!4006 = !DILocation(line: 129, column: 18, scope: !3981)
!4007 = !DILocation(line: 130, column: 11, scope: !3981)
!4008 = !DILocation(line: 130, column: 19, scope: !3981)
!4009 = !{!1681, !1682, i64 144}
!4010 = !DILocation(line: 161, column: 7, scope: !3981)
!4011 = !DILocation(line: 163, column: 10, scope: !3971)
!4012 = !DILocation(line: 163, column: 3, scope: !3971)
!4013 = !DILocation(line: 164, column: 1, scope: !3971)
!4014 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !804, file: !804, line: 86, type: !4015, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !4021)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{!100, !4017, !43, !100, !4018}
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2096, line: 6, baseType: !4020)
!4020 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !427, line: 21, baseType: !810)
!4021 = !{!4022, !4023, !4024, !4025, !4026, !4027, !4028}
!4022 = !DILocalVariable(name: "pwc", arg: 1, scope: !4014, file: !804, line: 86, type: !4017)
!4023 = !DILocalVariable(name: "s", arg: 2, scope: !4014, file: !804, line: 86, type: !43)
!4024 = !DILocalVariable(name: "n", arg: 3, scope: !4014, file: !804, line: 86, type: !100)
!4025 = !DILocalVariable(name: "ps", arg: 4, scope: !4014, file: !804, line: 86, type: !4018)
!4026 = !DILocalVariable(name: "ret", scope: !4014, file: !804, line: 88, type: !100)
!4027 = !DILocalVariable(name: "wc", scope: !4014, file: !804, line: 89, type: !2100)
!4028 = !DILocalVariable(name: "uc", scope: !4029, file: !804, line: 156, type: !197)
!4029 = distinct !DILexicalBlock(scope: !4030, file: !804, line: 155, column: 5)
!4030 = distinct !DILexicalBlock(scope: !4014, file: !804, line: 154, column: 7)
!4031 = !DILocation(line: 0, scope: !4014)
!4032 = !DILocation(line: 89, column: 3, scope: !4014)
!4033 = !DILocation(line: 105, column: 9, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !4014, file: !804, line: 105, column: 7)
!4035 = !DILocation(line: 105, column: 7, scope: !4014)
!4036 = !DILocation(line: 145, column: 9, scope: !4014)
!4037 = !DILocation(line: 154, column: 19, scope: !4030)
!4038 = !DILocation(line: 154, column: 31, scope: !4030)
!4039 = !DILocation(line: 154, column: 26, scope: !4030)
!4040 = !DILocation(line: 154, column: 41, scope: !4030)
!4041 = !DILocation(line: 154, column: 7, scope: !4014)
!4042 = !DILocation(line: 156, column: 26, scope: !4029)
!4043 = !DILocation(line: 0, scope: !4029)
!4044 = !DILocation(line: 157, column: 14, scope: !4029)
!4045 = !DILocation(line: 157, column: 12, scope: !4029)
!4046 = !DILocation(line: 163, column: 1, scope: !4014)
!4047 = distinct !DISubprogram(name: "close_stream", scope: !823, file: !823, line: 56, type: !4048, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !4052)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{!45, !4050}
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4051, size: 64)
!4051 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1360, line: 7, baseType: !829)
!4052 = !{!4053, !4054, !4056, !4057}
!4053 = !DILocalVariable(name: "stream", arg: 1, scope: !4047, file: !823, line: 56, type: !4050)
!4054 = !DILocalVariable(name: "some_pending", scope: !4047, file: !823, line: 58, type: !4055)
!4055 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!4056 = !DILocalVariable(name: "prev_fail", scope: !4047, file: !823, line: 59, type: !4055)
!4057 = !DILocalVariable(name: "fclose_fail", scope: !4047, file: !823, line: 60, type: !4055)
!4058 = !DILocation(line: 0, scope: !4047)
!4059 = !DILocation(line: 58, column: 30, scope: !4047)
!4060 = !DILocalVariable(name: "__stream", arg: 1, scope: !4061, file: !1670, line: 135, type: !4050)
!4061 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1670, file: !1670, line: 135, type: !4048, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !4062)
!4062 = !{!4060}
!4063 = !DILocation(line: 0, scope: !4061, inlinedAt: !4064)
!4064 = distinct !DILocation(line: 59, column: 27, scope: !4047)
!4065 = !DILocation(line: 137, column: 10, scope: !4061, inlinedAt: !4064)
!4066 = !DILocation(line: 59, column: 43, scope: !4047)
!4067 = !DILocation(line: 60, column: 29, scope: !4047)
!4068 = !DILocation(line: 60, column: 45, scope: !4047)
!4069 = !DILocation(line: 70, column: 17, scope: !4070)
!4070 = distinct !DILexicalBlock(scope: !4047, file: !823, line: 70, column: 7)
!4071 = !DILocation(line: 58, column: 50, scope: !4047)
!4072 = !DILocation(line: 70, column: 33, scope: !4070)
!4073 = !DILocation(line: 70, column: 53, scope: !4070)
!4074 = !DILocation(line: 70, column: 59, scope: !4070)
!4075 = !DILocation(line: 70, column: 7, scope: !4047)
!4076 = !DILocation(line: 72, column: 11, scope: !4077)
!4077 = distinct !DILexicalBlock(scope: !4070, file: !823, line: 71, column: 5)
!4078 = !DILocation(line: 73, column: 9, scope: !4079)
!4079 = distinct !DILexicalBlock(scope: !4077, file: !823, line: 72, column: 11)
!4080 = !DILocation(line: 73, column: 15, scope: !4079)
!4081 = !DILocation(line: 78, column: 1, scope: !4047)
!4082 = distinct !DISubprogram(name: "hard_locale", scope: !861, file: !861, line: 27, type: !820, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !860, retainedNodes: !4083)
!4083 = !{!4084, !4085}
!4084 = !DILocalVariable(name: "category", arg: 1, scope: !4082, file: !861, line: 27, type: !45)
!4085 = !DILocalVariable(name: "locale", scope: !4082, file: !861, line: 29, type: !4086)
!4086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 2056, elements: !4087)
!4087 = !{!4088}
!4088 = !DISubrange(count: 257)
!4089 = !DILocation(line: 0, scope: !4082)
!4090 = !DILocation(line: 29, column: 3, scope: !4082)
!4091 = !DILocation(line: 29, column: 8, scope: !4082)
!4092 = !DILocation(line: 31, column: 7, scope: !4093)
!4093 = distinct !DILexicalBlock(scope: !4082, file: !861, line: 31, column: 7)
!4094 = !DILocation(line: 31, column: 7, scope: !4082)
!4095 = !DILocation(line: 34, column: 12, scope: !4082)
!4096 = !DILocation(line: 34, column: 38, scope: !4082)
!4097 = !DILocation(line: 34, column: 41, scope: !4082)
!4098 = !DILocation(line: 34, column: 66, scope: !4082)
!4099 = !DILocation(line: 35, column: 1, scope: !4082)
!4100 = distinct !DISubprogram(name: "locale_charset", scope: !868, file: !868, line: 831, type: !448, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !867, retainedNodes: !4101)
!4101 = !{!4102}
!4102 = !DILocalVariable(name: "codeset", scope: !4100, file: !868, line: 833, type: !43)
!4103 = !DILocation(line: 847, column: 13, scope: !4100)
!4104 = !DILocation(line: 0, scope: !4100)
!4105 = !DILocation(line: 911, column: 15, scope: !4106)
!4106 = distinct !DILexicalBlock(scope: !4100, file: !868, line: 911, column: 7)
!4107 = !DILocation(line: 911, column: 7, scope: !4100)
!4108 = !DILocation(line: 1070, column: 13, scope: !4109)
!4109 = distinct !DILexicalBlock(scope: !4110, file: !868, line: 1070, column: 13)
!4110 = distinct !DILexicalBlock(scope: !4111, file: !868, line: 1060, column: 7)
!4111 = distinct !DILexicalBlock(scope: !4100, file: !868, line: 1019, column: 3)
!4112 = !DILocation(line: 1070, column: 24, scope: !4109)
!4113 = !DILocation(line: 1070, column: 13, scope: !4110)
!4114 = !DILocation(line: 1158, column: 3, scope: !4100)
!4115 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1261, file: !1261, line: 269, type: !4116, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1260, retainedNodes: !4118)
!4116 = !DISubroutineType(types: !4117)
!4117 = !{!45, !45, !41, !100}
!4118 = !{!4119, !4120, !4121}
!4119 = !DILocalVariable(name: "category", arg: 1, scope: !4115, file: !1261, line: 269, type: !45)
!4120 = !DILocalVariable(name: "buf", arg: 2, scope: !4115, file: !1261, line: 269, type: !41)
!4121 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4115, file: !1261, line: 269, type: !100)
!4122 = !DILocation(line: 0, scope: !4115)
!4123 = !DILocalVariable(name: "category", arg: 1, scope: !4124, file: !1261, line: 91, type: !45)
!4124 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1261, file: !1261, line: 91, type: !4116, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1260, retainedNodes: !4125)
!4125 = !{!4123, !4126, !4127, !4128, !4129}
!4126 = !DILocalVariable(name: "buf", arg: 2, scope: !4124, file: !1261, line: 91, type: !41)
!4127 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4124, file: !1261, line: 91, type: !100)
!4128 = !DILocalVariable(name: "result", scope: !4124, file: !1261, line: 140, type: !43)
!4129 = !DILocalVariable(name: "length", scope: !4130, file: !1261, line: 154, type: !100)
!4130 = distinct !DILexicalBlock(scope: !4131, file: !1261, line: 153, column: 5)
!4131 = distinct !DILexicalBlock(scope: !4124, file: !1261, line: 142, column: 7)
!4132 = !DILocation(line: 0, scope: !4124, inlinedAt: !4133)
!4133 = distinct !DILocation(line: 274, column: 10, scope: !4115)
!4134 = !DILocalVariable(name: "category", arg: 1, scope: !4135, file: !1261, line: 60, type: !45)
!4135 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !1261, file: !1261, line: 60, type: !4136, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1260, retainedNodes: !4138)
!4136 = !DISubroutineType(types: !4137)
!4137 = !{!43, !45}
!4138 = !{!4134, !4139}
!4139 = !DILocalVariable(name: "result", scope: !4135, file: !1261, line: 62, type: !43)
!4140 = !DILocation(line: 0, scope: !4135, inlinedAt: !4141)
!4141 = distinct !DILocation(line: 140, column: 24, scope: !4124, inlinedAt: !4133)
!4142 = !DILocation(line: 62, column: 24, scope: !4135, inlinedAt: !4141)
!4143 = !DILocation(line: 142, column: 14, scope: !4131, inlinedAt: !4133)
!4144 = !DILocation(line: 142, column: 7, scope: !4124, inlinedAt: !4133)
!4145 = !DILocation(line: 145, column: 19, scope: !4146, inlinedAt: !4133)
!4146 = distinct !DILexicalBlock(scope: !4147, file: !1261, line: 145, column: 11)
!4147 = distinct !DILexicalBlock(scope: !4131, file: !1261, line: 143, column: 5)
!4148 = !DILocation(line: 145, column: 11, scope: !4147, inlinedAt: !4133)
!4149 = !DILocation(line: 149, column: 16, scope: !4146, inlinedAt: !4133)
!4150 = !DILocation(line: 149, column: 9, scope: !4146, inlinedAt: !4133)
!4151 = !DILocation(line: 154, column: 23, scope: !4130, inlinedAt: !4133)
!4152 = !DILocation(line: 0, scope: !4130, inlinedAt: !4133)
!4153 = !DILocation(line: 155, column: 18, scope: !4154, inlinedAt: !4133)
!4154 = distinct !DILexicalBlock(scope: !4130, file: !1261, line: 155, column: 11)
!4155 = !DILocation(line: 155, column: 11, scope: !4130, inlinedAt: !4133)
!4156 = !DILocation(line: 157, column: 39, scope: !4157, inlinedAt: !4133)
!4157 = distinct !DILexicalBlock(scope: !4154, file: !1261, line: 156, column: 9)
!4158 = !DILocalVariable(name: "__dest", arg: 1, scope: !4159, file: !2353, line: 31, type: !3748)
!4159 = distinct !DISubprogram(name: "memcpy", scope: !2353, file: !2353, line: 31, type: !3746, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1260, retainedNodes: !4160)
!4160 = !{!4158, !4161, !4162}
!4161 = !DILocalVariable(name: "__src", arg: 2, scope: !4159, file: !2353, line: 31, type: !3749)
!4162 = !DILocalVariable(name: "__len", arg: 3, scope: !4159, file: !2353, line: 31, type: !100)
!4163 = !DILocation(line: 0, scope: !4159, inlinedAt: !4164)
!4164 = distinct !DILocation(line: 157, column: 11, scope: !4157, inlinedAt: !4133)
!4165 = !DILocation(line: 34, column: 10, scope: !4159, inlinedAt: !4164)
!4166 = !DILocation(line: 158, column: 11, scope: !4157, inlinedAt: !4133)
!4167 = !DILocation(line: 162, column: 23, scope: !4168, inlinedAt: !4133)
!4168 = distinct !DILexicalBlock(scope: !4169, file: !1261, line: 162, column: 15)
!4169 = distinct !DILexicalBlock(scope: !4154, file: !1261, line: 161, column: 9)
!4170 = !DILocation(line: 162, column: 15, scope: !4169, inlinedAt: !4133)
!4171 = !DILocation(line: 167, column: 44, scope: !4172, inlinedAt: !4133)
!4172 = distinct !DILexicalBlock(scope: !4168, file: !1261, line: 163, column: 13)
!4173 = !DILocation(line: 0, scope: !4159, inlinedAt: !4174)
!4174 = distinct !DILocation(line: 167, column: 15, scope: !4172, inlinedAt: !4133)
!4175 = !DILocation(line: 34, column: 10, scope: !4159, inlinedAt: !4174)
!4176 = !DILocation(line: 168, column: 15, scope: !4172, inlinedAt: !4133)
!4177 = !DILocation(line: 168, column: 32, scope: !4172, inlinedAt: !4133)
!4178 = !DILocation(line: 169, column: 13, scope: !4172, inlinedAt: !4133)
!4179 = !DILocation(line: 0, scope: !4131, inlinedAt: !4133)
!4180 = !DILocation(line: 274, column: 3, scope: !4115)
!4181 = distinct !DISubprogram(name: "setlocale_null", scope: !1261, file: !1261, line: 301, type: !4136, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1260, retainedNodes: !4182)
!4182 = !{!4183}
!4183 = !DILocalVariable(name: "category", arg: 1, scope: !4181, file: !1261, line: 301, type: !45)
!4184 = !DILocation(line: 0, scope: !4181)
!4185 = !DILocation(line: 0, scope: !4135, inlinedAt: !4186)
!4186 = distinct !DILocation(line: 304, column: 10, scope: !4181)
!4187 = !DILocation(line: 62, column: 24, scope: !4135, inlinedAt: !4186)
!4188 = !DILocation(line: 304, column: 3, scope: !4181)
