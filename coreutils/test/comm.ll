; ModuleID = 'coreutils-8.32/src/comm.bc'
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
%struct.linebuffer = type { i64, i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Usage: %s [OPTION]... FILE1 FILE2\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Compare sorted files FILE1 and FILE2 line by line.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [60 x i8] c"\0AWhen FILE1 or FILE2 (not both) is -, read standard input.\0A\00", align 1
@.str.4 = private unnamed_addr constant [189 x i8] c"\0AWith no options, produce three-column output.  Column one contains\0Alines unique to FILE1, column two contains lines unique to FILE2,\0Aand column three contains lines common to both files.\0A\00", align 1
@.str.5 = private unnamed_addr constant [192 x i8] c"\0A  -1              suppress column 1 (lines unique to FILE1)\0A  -2              suppress column 2 (lines unique to FILE2)\0A  -3              suppress column 3 (lines that appear in both files)\0A\00", align 1
@.str.6 = private unnamed_addr constant [191 x i8] c"\0A  --check-order     check that the input is correctly sorted, even\0A                      if all input lines are pairable\0A  --nocheck-order   do not check that the input is correctly sorted\0A\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"  --output-delimiter=STR  separate columns with STR\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"  --total           output a summary\0A\00", align 1
@.str.9 = private unnamed_addr constant [63 x i8] c"  -z, --zero-terminated    line delimiter is NUL, not newline\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.12 = private unnamed_addr constant [63 x i8] c"\0ANote, comparisons honor the rules specified by 'LC_COLLATE'.\0A\00", align 1
@.str.13 = private unnamed_addr constant [156 x i8] c"\0AExamples:\0A  %s -12 file1 file2  Print only lines present in both file1 and file2.\0A  %s -3 file1 file2  Print lines in file1 not in file2, and vice versa.\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"comm\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.29, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.27 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.36 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.38 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.39 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.40 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@hard_LC_COLLATE = internal unnamed_addr global i8 0, align 1, !dbg !0
@only_file_1 = internal unnamed_addr global i1 false, align 1, !dbg !233
@only_file_2 = internal unnamed_addr global i1 false, align 1, !dbg !234
@both = internal unnamed_addr global i1 false, align 1, !dbg !235
@seen_unpairable = internal unnamed_addr global i1 false, align 1, !dbg !236
@issued_disorder_warning = internal unnamed_addr global [2 x i8] zeroinitializer, align 1, !dbg !213
@check_input_order = internal unnamed_addr global i32 0, align 4, !dbg !220
@total_option = internal unnamed_addr global i1 false, align 1, !dbg !237
@.str.18 = private unnamed_addr constant [5 x i8] c"123z\00", align 1
@long_options = internal constant [8 x %struct.option] [%struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), i32 0, i32* null, i32 129 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.44, i32 0, i32 0), i32 1, i32* null, i32 130 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i32 0, i32* null, i32 131 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !222
@delim = internal unnamed_addr global i1 false, align 1, !dbg !238
@col_sep_len = internal unnamed_addr global i64 0, align 8, !dbg !229
@optarg = external local_unnamed_addr global i8*, align 8
@col_sep = internal unnamed_addr global i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i64 0, i64 0), align 8, !dbg !231
@.str.19 = private unnamed_addr constant [37 x i8] c"multiple output delimiters specified\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"Richard M. Stallman\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.23 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"missing operand after %s\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.51 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"total\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"%s%s%s%s%s%s%s%c\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"input is not in sorted order\00", align 1
@.str.54 = private unnamed_addr constant [31 x i8] c"file %d is not in sorted order\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"check-order\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"nocheck-order\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"output-delimiter\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"zero-terminated\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), align 8, !dbg !239
@.str.55 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !244
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !287
@.str.58 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.59 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.60 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !289
@.str.1.69 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !295
@.str.82 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.83 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.84 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.86, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.87, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.88, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.89, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.90, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.91, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.92, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.93, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.94, i32 0, i32 0), i8* null], align 16, !dbg !336
@.str.85 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.86 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.87 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.88 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.89 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.90 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.91 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.92 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.93 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.94 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !429
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !435
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !437
@.str.11.95 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.96 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.97 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.98 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.99 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.100 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.101 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !444
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !451
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !439
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !453
@.str.112 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.113 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.114 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.115 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.116 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.117 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.118 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.119 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.120 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.121 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.122 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.123 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.124 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.125 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.126 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.127 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.130 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.131 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.132 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.133 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.134 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.135 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.136 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !459
@.str.1.149 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.150 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.153 = private unnamed_addr constant [25 x i8] c"string comparison failed\00", align 1
@.str.1.154 = private unnamed_addr constant [43 x i8] c"Set LC_ALL='C' to work around the problem.\00", align 1
@.str.2.155 = private unnamed_addr constant [37 x i8] c"The strings compared were %s and %s.\00", align 1
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !467
@.str.172 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.173 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !1312 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1317, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i32 %0, metadata !1316, metadata !DIExpression()), !dbg !1338
  %3 = icmp eq i32 %0, 0, !dbg !1339
  br i1 %3, label %9, label %4, !dbg !1340

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1341, !tbaa !1343
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #20, !dbg !1341
  %7 = load i8*, i8** @program_name, align 8, !dbg !1341, !tbaa !1343
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #20, !dbg !1341
  br label %85, !dbg !1341

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 5) #20, !dbg !1347
  %11 = load i8*, i8** @program_name, align 8, !dbg !1347, !tbaa !1343
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #20, !dbg !1347
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 5) #20, !dbg !1348
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1348, !tbaa !1343
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !1348
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 5) #20, !dbg !1349
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1349, !tbaa !1343
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !1349
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([189 x i8], [189 x i8]* @.str.4, i64 0, i64 0), i32 5) #20, !dbg !1350
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1350, !tbaa !1343
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !1350
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([192 x i8], [192 x i8]* @.str.5, i64 0, i64 0), i32 5) #20, !dbg !1351
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1351, !tbaa !1343
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !1351
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.6, i64 0, i64 0), i32 5) #20, !dbg !1352
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1352, !tbaa !1343
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !1352
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i32 5) #20, !dbg !1353
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1353, !tbaa !1343
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !1353
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i32 5) #20, !dbg !1354
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1354, !tbaa !1343
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32), !dbg !1354
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.9, i64 0, i64 0), i32 5) #20, !dbg !1355
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1355, !tbaa !1343
  %36 = tail call i32 @fputs_unlocked(i8* %34, %struct._IO_FILE* %35), !dbg !1355
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i32 5) #20, !dbg !1356
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1356, !tbaa !1343
  %39 = tail call i32 @fputs_unlocked(i8* %37, %struct._IO_FILE* %38), !dbg !1356
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i32 5) #20, !dbg !1357
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1357, !tbaa !1343
  %42 = tail call i32 @fputs_unlocked(i8* %40, %struct._IO_FILE* %41), !dbg !1357
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.12, i64 0, i64 0), i32 5) #20, !dbg !1358
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1358, !tbaa !1343
  %45 = tail call i32 @fputs_unlocked(i8* %43, %struct._IO_FILE* %44), !dbg !1358
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.13, i64 0, i64 0), i32 5) #20, !dbg !1359
  %47 = load i8*, i8** @program_name, align 8, !dbg !1359, !tbaa !1343
  %48 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %46, i8* %47, i8* %47) #20, !dbg !1359
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), metadata !1321, metadata !DIExpression()) #20, !dbg !1360
  %49 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1361
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %49) #20, !dbg !1361
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %49, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #20, !dbg !1334
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), metadata !1322, metadata !DIExpression()) #20, !dbg !1360
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1323, metadata !DIExpression()) #20, !dbg !1360
  %50 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1362
  call void @llvm.dbg.value(metadata %struct.infomap* %50, metadata !1323, metadata !DIExpression()) #20, !dbg !1360
  br label %51, !dbg !1363

51:                                               ; preds = %56, %9
  %52 = phi i8* [ %59, %56 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), %9 ]
  %53 = phi %struct.infomap* [ %57, %56 ], [ %50, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %53, metadata !1323, metadata !DIExpression()) #20, !dbg !1360
  %54 = tail call i32 @strcmp(i8* nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* nonnull %52) #22, !dbg !1364
  %55 = icmp eq i32 %54, 0, !dbg !1364
  br i1 %55, label %61, label %56, !dbg !1363

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.infomap, %struct.infomap* %53, i64 1, !dbg !1365
  call void @llvm.dbg.value(metadata %struct.infomap* %57, metadata !1323, metadata !DIExpression()) #20, !dbg !1360
  %58 = getelementptr inbounds %struct.infomap, %struct.infomap* %57, i64 0, i32 0, !dbg !1366
  %59 = load i8*, i8** %58, align 8, !dbg !1366, !tbaa !1367
  %60 = icmp eq i8* %59, null, !dbg !1369
  br i1 %60, label %61, label %51, !dbg !1370, !llvm.loop !1371

61:                                               ; preds = %56, %51
  %62 = phi %struct.infomap* [ %57, %56 ], [ %53, %51 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %62, metadata !1323, metadata !DIExpression()) #20, !dbg !1360
  call void @llvm.dbg.value(metadata %struct.infomap* %62, metadata !1323, metadata !DIExpression()) #20, !dbg !1360
  %63 = getelementptr inbounds %struct.infomap, %struct.infomap* %62, i64 0, i32 1, !dbg !1372
  %64 = load i8*, i8** %63, align 8, !dbg !1372, !tbaa !1374
  %65 = icmp eq i8* %64, null, !dbg !1375
  %66 = select i1 %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* %64, !dbg !1376
  call void @llvm.dbg.value(metadata i8* %66, metadata !1322, metadata !DIExpression()) #20, !dbg !1360
  %67 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i64 0, i64 0), i32 5) #20, !dbg !1377
  %68 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0)) #20, !dbg !1377
  %69 = tail call i8* @setlocale(i32 5, i8* null) #20, !dbg !1378
  call void @llvm.dbg.value(metadata i8* %69, metadata !1330, metadata !DIExpression()) #20, !dbg !1360
  %70 = icmp eq i8* %69, null, !dbg !1379
  br i1 %70, label %78, label %71, !dbg !1381

71:                                               ; preds = %61
  %72 = tail call i32 @strncmp(i8* nonnull %69, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i64 0, i64 0), i64 3) #22, !dbg !1382
  %73 = icmp eq i32 %72, 0, !dbg !1382
  br i1 %73, label %78, label %74, !dbg !1383

74:                                               ; preds = %71
  %75 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.38, i64 0, i64 0), i32 5) #20, !dbg !1384
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1384, !tbaa !1343
  %77 = tail call i32 @fputs_unlocked(i8* %75, %struct._IO_FILE* %76) #20, !dbg !1384
  br label %78, !dbg !1386

78:                                               ; preds = %61, %71, %74
  %79 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.39, i64 0, i64 0), i32 5) #20, !dbg !1387
  %80 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %79, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #20, !dbg !1387
  %81 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.40, i64 0, i64 0), i32 5) #20, !dbg !1388
  %82 = icmp eq i8* %66, getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), !dbg !1388
  %83 = select i1 %82, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), !dbg !1388
  %84 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %81, i8* %66, i8* %83) #20, !dbg !1388
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %49) #20, !dbg !1389
  br label %85

85:                                               ; preds = %78, %4
  tail call void @exit(i32 %0) #23, !dbg !1390
  unreachable, !dbg !1390
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !35 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !45 i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !110 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !1391 {
  %3 = alloca [2 x [4 x %struct.linebuffer]], align 16
  call void @llvm.dbg.declare(metadata [2 x [4 x %struct.linebuffer]]* %3, metadata !1399, metadata !DIExpression()), !dbg !1442
  %4 = alloca [2 x [4 x %struct.linebuffer*]], align 16
  call void @llvm.dbg.declare(metadata [2 x [4 x %struct.linebuffer*]]* %4, metadata !1407, metadata !DIExpression()), !dbg !1444
  %5 = alloca [21 x i8], align 16
  call void @llvm.dbg.declare(metadata [21 x i8]* %5, metadata !1433, metadata !DIExpression()), !dbg !1445
  %6 = alloca [21 x i8], align 16
  call void @llvm.dbg.declare(metadata [21 x i8]* %6, metadata !1439, metadata !DIExpression()), !dbg !1446
  %7 = alloca [21 x i8], align 16
  call void @llvm.dbg.declare(metadata [21 x i8]* %7, metadata !1440, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i32 %0, metadata !1396, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i8** %1, metadata !1397, metadata !DIExpression()), !dbg !1448
  %8 = load i8*, i8** %1, align 8, !dbg !1449, !tbaa !1343
  tail call void @set_program_name(i8* %8) #20, !dbg !1450
  %9 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)) #20, !dbg !1451
  %10 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0)) #20, !dbg !1452
  %11 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0)) #20, !dbg !1453
  %12 = tail call zeroext i1 @hard_locale(i32 3) #20, !dbg !1454
  %13 = zext i1 %12 to i8, !dbg !1455
  store i8 %13, i8* @hard_LC_COLLATE, align 1, !dbg !1455, !tbaa !1456
  %14 = tail call i32 @atexit(void ()* nonnull @close_stdout) #20, !dbg !1458
  store i1 true, i1* @only_file_1, align 1, !dbg !1459
  store i1 true, i1* @only_file_2, align 1, !dbg !1460
  store i1 true, i1* @both, align 1, !dbg !1461
  store i1 false, i1* @seen_unpairable, align 1, !dbg !1462
  store i8 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 1), align 1, !dbg !1463, !tbaa !1456
  store i8 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 0), align 1, !dbg !1464, !tbaa !1456
  store i32 0, i32* @check_input_order, align 4, !dbg !1465, !tbaa !1466
  store i1 false, i1* @total_option, align 1, !dbg !1467
  br label %15, !dbg !1468

15:                                               ; preds = %46, %2
  %16 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), %struct.option* getelementptr inbounds ([8 x %struct.option], [8 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #20, !dbg !1469
  call void @llvm.dbg.value(metadata i32 %16, metadata !1398, metadata !DIExpression()), !dbg !1448
  switch i32 %16, label %51 [
    i32 -1, label %52
    i32 49, label %17
    i32 50, label %18
    i32 51, label %19
    i32 122, label %20
    i32 129, label %21
    i32 128, label %22
    i32 130, label %23
    i32 131, label %45
    i32 -130, label %47
    i32 -131, label %48
  ], !dbg !1468

17:                                               ; preds = %15
  store i1 false, i1* @only_file_1, align 1, !dbg !1470
  br label %46, !dbg !1472

18:                                               ; preds = %15
  store i1 false, i1* @only_file_2, align 1, !dbg !1473
  br label %46, !dbg !1474

19:                                               ; preds = %15
  store i1 false, i1* @both, align 1, !dbg !1475
  br label %46, !dbg !1476

20:                                               ; preds = %15
  store i1 true, i1* @delim, align 1, !dbg !1477
  br label %46, !dbg !1478

21:                                               ; preds = %15
  store i32 2, i32* @check_input_order, align 4, !dbg !1479, !tbaa !1466
  br label %46, !dbg !1480

22:                                               ; preds = %15
  store i32 1, i32* @check_input_order, align 4, !dbg !1481, !tbaa !1466
  br label %46, !dbg !1482

23:                                               ; preds = %15
  %24 = load i64, i64* @col_sep_len, align 8, !dbg !1483, !tbaa !1485
  %25 = icmp eq i64 %24, 0, !dbg !1483
  br i1 %25, label %26, label %28, !dbg !1487

26:                                               ; preds = %23
  %27 = load i64, i64* bitcast (i8** @optarg to i64*), align 8, !dbg !1488, !tbaa !1343
  br label %36, !dbg !1487

28:                                               ; preds = %23
  %29 = load i8*, i8** @col_sep, align 8, !dbg !1489, !tbaa !1343
  %30 = load i8*, i8** @optarg, align 8, !dbg !1489, !tbaa !1343
  %31 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %29, i8* nonnull dereferenceable(1) %30) #22, !dbg !1489
  %32 = icmp eq i32 %31, 0, !dbg !1489
  %33 = ptrtoint i8* %30 to i64, !dbg !1490
  br i1 %32, label %36, label %34, !dbg !1490

34:                                               ; preds = %28
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i64 0, i64 0), i32 5) #20, !dbg !1491
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %35) #20, !dbg !1491
  unreachable, !dbg !1491

36:                                               ; preds = %26, %28
  %37 = phi i64 [ %27, %26 ], [ %33, %28 ], !dbg !1488
  store i64 %37, i64* bitcast (i8** @col_sep to i64*), align 8, !dbg !1492, !tbaa !1343
  %38 = inttoptr i64 %37 to i8*, !dbg !1493
  %39 = load i8, i8* %38, align 1, !dbg !1494, !tbaa !1466
  %40 = icmp eq i8 %39, 0, !dbg !1494
  br i1 %40, label %43, label %41, !dbg !1494

41:                                               ; preds = %36
  %42 = tail call i64 @strlen(i8* nonnull %38) #22, !dbg !1495
  br label %43, !dbg !1494

43:                                               ; preds = %36, %41
  %44 = phi i64 [ %42, %41 ], [ 1, %36 ], !dbg !1494
  store i64 %44, i64* @col_sep_len, align 8, !dbg !1496, !tbaa !1485
  br label %46, !dbg !1497

45:                                               ; preds = %15
  store i1 true, i1* @total_option, align 1, !dbg !1498
  br label %46, !dbg !1499

46:                                               ; preds = %45, %43, %22, %21, %20, %19, %18, %17
  br label %15, !dbg !1469, !llvm.loop !1500

47:                                               ; preds = %15
  tail call void @usage(i32 0) #24, !dbg !1502
  unreachable, !dbg !1502

48:                                               ; preds = %15
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1503, !tbaa !1343
  %50 = load i8*, i8** @Version, align 8, !dbg !1503, !tbaa !1343
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* %50, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i8* null) #20, !dbg !1503
  tail call void @exit(i32 0) #23, !dbg !1503
  unreachable, !dbg !1503

51:                                               ; preds = %15
  tail call void @usage(i32 1) #24, !dbg !1504
  unreachable, !dbg !1504

52:                                               ; preds = %15
  %53 = load i64, i64* @col_sep_len, align 8, !dbg !1505, !tbaa !1485
  %54 = icmp eq i64 %53, 0, !dbg !1505
  br i1 %54, label %55, label %56, !dbg !1507

55:                                               ; preds = %52
  store i64 1, i64* @col_sep_len, align 8, !dbg !1508, !tbaa !1485
  br label %56, !dbg !1509

56:                                               ; preds = %52, %55
  %57 = load i32, i32* @optind, align 4, !dbg !1510, !tbaa !1512
  %58 = sub nsw i32 %0, %57, !dbg !1514
  %59 = icmp slt i32 %58, 2, !dbg !1515
  br i1 %59, label %60, label %72, !dbg !1516

60:                                               ; preds = %56
  %61 = icmp slt i32 %57, %0, !dbg !1517
  br i1 %61, label %64, label %62, !dbg !1520

62:                                               ; preds = %60
  %63 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0), i32 5) #20, !dbg !1521
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %63) #20, !dbg !1522
  br label %71, !dbg !1522

64:                                               ; preds = %60
  %65 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0), i32 5) #20, !dbg !1523
  %66 = add nsw i32 %0, -1, !dbg !1524
  %67 = sext i32 %66 to i64, !dbg !1525
  %68 = getelementptr inbounds i8*, i8** %1, i64 %67, !dbg !1525
  %69 = load i8*, i8** %68, align 8, !dbg !1525, !tbaa !1343
  %70 = tail call i8* @quote(i8* %69) #20, !dbg !1526
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %65, i8* %70) #20, !dbg !1527
  br label %71

71:                                               ; preds = %64, %62
  tail call void @usage(i32 1) #24, !dbg !1528
  unreachable, !dbg !1528

72:                                               ; preds = %56
  %73 = icmp eq i32 %58, 2, !dbg !1529
  br i1 %73, label %82, label %74, !dbg !1531

74:                                               ; preds = %72
  %75 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0), i32 5) #20, !dbg !1532
  %76 = load i32, i32* @optind, align 4, !dbg !1534, !tbaa !1512
  %77 = add nsw i32 %76, 2, !dbg !1535
  %78 = sext i32 %77 to i64, !dbg !1536
  %79 = getelementptr inbounds i8*, i8** %1, i64 %78, !dbg !1536
  %80 = load i8*, i8** %79, align 8, !dbg !1536, !tbaa !1343
  %81 = tail call i8* @quote(i8* %80) #20, !dbg !1537
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %75, i8* %81) #20, !dbg !1538
  tail call void @usage(i32 1) #24, !dbg !1539
  unreachable, !dbg !1539

82:                                               ; preds = %72
  %83 = sext i32 %57 to i64, !dbg !1540
  %84 = getelementptr inbounds i8*, i8** %1, i64 %83, !dbg !1540
  call void @llvm.dbg.value(metadata i8** %84, metadata !1404, metadata !DIExpression()) #20, !dbg !1541
  %85 = bitcast [2 x [4 x %struct.linebuffer]]* %3 to i8*, !dbg !1542
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %85) #20, !dbg !1542
  %86 = bitcast [2 x [4 x %struct.linebuffer*]]* %4 to i8*, !dbg !1543
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %86) #20, !dbg !1543
  call void @llvm.dbg.value(metadata i64 0, metadata !1419, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #20, !dbg !1541
  call void @llvm.dbg.value(metadata i64 0, metadata !1419, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #20, !dbg !1541
  call void @llvm.dbg.value(metadata i64 0, metadata !1419, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)) #20, !dbg !1541
  call void @llvm.dbg.value(metadata i64 0, metadata !1422, metadata !DIExpression()) #20, !dbg !1541
  call void @llvm.dbg.value(metadata i64 0, metadata !1423, metadata !DIExpression()) #20, !dbg !1541
  %87 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], [2 x [4 x %struct.linebuffer]]* %3, i64 0, i64 0, i64 0, !dbg !1544
  call void @initbuffer(%struct.linebuffer* nonnull %87) #20, !dbg !1551
  %88 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 0, i64 0, !dbg !1552
  store %struct.linebuffer* %87, %struct.linebuffer** %88, align 16, !dbg !1553, !tbaa !1343
  call void @llvm.dbg.value(metadata i64 1, metadata !1423, metadata !DIExpression()) #20, !dbg !1541
  %89 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], [2 x [4 x %struct.linebuffer]]* %3, i64 0, i64 0, i64 1, !dbg !1544
  call void @initbuffer(%struct.linebuffer* nonnull %89) #20, !dbg !1551
  %90 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 0, i64 1, !dbg !1552
  store %struct.linebuffer* %89, %struct.linebuffer** %90, align 8, !dbg !1553, !tbaa !1343
  call void @llvm.dbg.value(metadata i64 2, metadata !1423, metadata !DIExpression()) #20, !dbg !1541
  %91 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], [2 x [4 x %struct.linebuffer]]* %3, i64 0, i64 0, i64 2, !dbg !1544
  call void @initbuffer(%struct.linebuffer* nonnull %91) #20, !dbg !1551
  %92 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 0, i64 2, !dbg !1552
  store %struct.linebuffer* %91, %struct.linebuffer** %92, align 16, !dbg !1553, !tbaa !1343
  call void @llvm.dbg.value(metadata i64 3, metadata !1423, metadata !DIExpression()) #20, !dbg !1541
  %93 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], [2 x [4 x %struct.linebuffer]]* %3, i64 0, i64 0, i64 3, !dbg !1544
  call void @initbuffer(%struct.linebuffer* nonnull %93) #20, !dbg !1551
  %94 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 0, i64 3, !dbg !1552
  store %struct.linebuffer* %93, %struct.linebuffer** %94, align 8, !dbg !1553, !tbaa !1343
  call void @llvm.dbg.value(metadata i64 4, metadata !1423, metadata !DIExpression()) #20, !dbg !1541
  call void @llvm.dbg.value(metadata i32 undef, metadata !1410, metadata !DIExpression()) #20, !dbg !1541
  call void @llvm.dbg.value(metadata i32 undef, metadata !1410, metadata !DIExpression()) #20, !dbg !1541
  call void @llvm.dbg.value(metadata i32 undef, metadata !1410, metadata !DIExpression()) #20, !dbg !1541
  %95 = load i8*, i8** %84, align 8, !dbg !1554, !tbaa !1343
  %96 = call i32 @strcmp(i8* nonnull dereferenceable(1) %95, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i64 0, i64 0)) #22, !dbg !1554
  %97 = icmp eq i32 %96, 0, !dbg !1554
  br i1 %97, label %111, label %113, !dbg !1554

98:                                               ; preds = %125
  call void @llvm.dbg.value(metadata i64 1, metadata !1422, metadata !DIExpression()) #20, !dbg !1541
  call void @llvm.dbg.value(metadata i64 0, metadata !1423, metadata !DIExpression()) #20, !dbg !1541
  %99 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], [2 x [4 x %struct.linebuffer]]* %3, i64 0, i64 1, i64 0, !dbg !1544
  call void @initbuffer(%struct.linebuffer* nonnull %99) #20, !dbg !1551
  %100 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 1, i64 0, !dbg !1552
  store %struct.linebuffer* %99, %struct.linebuffer** %100, align 16, !dbg !1553, !tbaa !1343
  call void @llvm.dbg.value(metadata i64 1, metadata !1423, metadata !DIExpression()) #20, !dbg !1541
  %101 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], [2 x [4 x %struct.linebuffer]]* %3, i64 0, i64 1, i64 1, !dbg !1544
  call void @initbuffer(%struct.linebuffer* nonnull %101) #20, !dbg !1551
  %102 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 1, i64 1, !dbg !1552
  store %struct.linebuffer* %101, %struct.linebuffer** %102, align 8, !dbg !1553, !tbaa !1343
  call void @llvm.dbg.value(metadata i64 2, metadata !1423, metadata !DIExpression()) #20, !dbg !1541
  %103 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], [2 x [4 x %struct.linebuffer]]* %3, i64 0, i64 1, i64 2, !dbg !1544
  call void @initbuffer(%struct.linebuffer* nonnull %103) #20, !dbg !1551
  %104 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 1, i64 2, !dbg !1552
  store %struct.linebuffer* %103, %struct.linebuffer** %104, align 16, !dbg !1553, !tbaa !1343
  call void @llvm.dbg.value(metadata i64 3, metadata !1423, metadata !DIExpression()) #20, !dbg !1541
  %105 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], [2 x [4 x %struct.linebuffer]]* %3, i64 0, i64 1, i64 3, !dbg !1544
  call void @initbuffer(%struct.linebuffer* nonnull %105) #20, !dbg !1551
  %106 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 1, i64 3, !dbg !1552
  store %struct.linebuffer* %105, %struct.linebuffer** %106, align 8, !dbg !1553, !tbaa !1343
  call void @llvm.dbg.value(metadata i64 4, metadata !1423, metadata !DIExpression()) #20, !dbg !1541
  call void @llvm.dbg.value(metadata i32 undef, metadata !1410, metadata !DIExpression()) #20, !dbg !1541
  call void @llvm.dbg.value(metadata i32 undef, metadata !1410, metadata !DIExpression()) #20, !dbg !1541
  call void @llvm.dbg.value(metadata i32 undef, metadata !1410, metadata !DIExpression()) #20, !dbg !1541
  %107 = getelementptr inbounds i8*, i8** %84, i64 1, !dbg !1554
  %108 = load i8*, i8** %107, align 8, !dbg !1554, !tbaa !1343
  %109 = call i32 @strcmp(i8* nonnull dereferenceable(1) %108, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i64 0, i64 0)) #22, !dbg !1554
  %110 = icmp eq i32 %109, 0, !dbg !1554
  br i1 %110, label %332, label %330, !dbg !1554

111:                                              ; preds = %82
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1555, !tbaa !1343
  br label %115, !dbg !1554

113:                                              ; preds = %82
  %114 = call %struct._IO_FILE* @fopen_safer(i8* %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0)) #20, !dbg !1556
  br label %115, !dbg !1554

115:                                              ; preds = %113, %111
  %116 = phi %struct._IO_FILE* [ %112, %111 ], [ %114, %113 ], !dbg !1554
  call void @llvm.dbg.value(metadata %struct._IO_FILE* undef, metadata !1414, metadata !DIExpression()) #20, !dbg !1541
  %117 = icmp eq %struct._IO_FILE* %116, null, !dbg !1557
  br i1 %117, label %118, label %125, !dbg !1559

118:                                              ; preds = %334, %115
  %119 = phi i64 [ 0, %115 ], [ 1, %334 ], !dbg !1560
  %120 = getelementptr inbounds i8*, i8** %84, i64 %119, !dbg !1554
  %121 = tail call i32* @__errno_location() #25, !dbg !1561
  %122 = load i32, i32* %121, align 4, !dbg !1561, !tbaa !1512
  %123 = load i8*, i8** %120, align 8, !dbg !1561, !tbaa !1343
  %124 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %123) #20, !dbg !1561
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %122, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i64 0, i64 0), i8* %124) #20, !dbg !1561
  unreachable, !dbg !1561

125:                                              ; preds = %115
  call void @fadvise(%struct._IO_FILE* nonnull %116, i32 2) #20, !dbg !1562
  %126 = load i1, i1* @delim, align 1, !dbg !1563
  %127 = select i1 %126, i8 0, i8 10, !dbg !1563
  %128 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* nonnull %87, %struct._IO_FILE* nonnull %116, i8 signext %127) #20, !dbg !1564
  call void @llvm.dbg.value(metadata %struct.linebuffer* undef, metadata !1405, metadata !DIExpression()) #20, !dbg !1541
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %116, metadata !1565, metadata !DIExpression()) #20, !dbg !1571
  %129 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %116, i64 0, i32 0, !dbg !1574
  %130 = load i32, i32* %129, align 8, !dbg !1574, !tbaa !1575
  %131 = and i32 %130, 32, !dbg !1574
  %132 = icmp eq i32 %131, 0, !dbg !1578
  call void @llvm.dbg.value(metadata i64 0, metadata !1422, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #20, !dbg !1541
  br i1 %132, label %98, label %133, !dbg !1579

133:                                              ; preds = %337, %125
  %134 = phi i64 [ 0, %125 ], [ 1, %337 ], !dbg !1560
  %135 = getelementptr inbounds i8*, i8** %84, i64 %134, !dbg !1554
  %136 = tail call i32* @__errno_location() #25, !dbg !1580
  %137 = load i32, i32* %136, align 4, !dbg !1580, !tbaa !1512
  %138 = load i8*, i8** %135, align 8, !dbg !1580, !tbaa !1343
  %139 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %138) #20, !dbg !1580
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %137, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i64 0, i64 0), i8* %139) #20, !dbg !1580
  unreachable, !dbg !1580

140:                                              ; preds = %317, %345
  %141 = phi i64 [ 0, %345 ], [ %321, %317 ], !dbg !1581
  %142 = phi i64 [ 0, %345 ], [ %322, %317 ], !dbg !1541
  %143 = phi i64 [ 0, %345 ], [ %323, %317 ], !dbg !1581
  call void @llvm.dbg.value(metadata i64 %141, metadata !1419, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #20, !dbg !1541
  call void @llvm.dbg.value(metadata i64 %142, metadata !1419, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)) #20, !dbg !1541
  call void @llvm.dbg.value(metadata i64 %143, metadata !1419, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #20, !dbg !1541
  call void @llvm.dbg.value(metadata i64 0, metadata !1422, metadata !DIExpression()) #20, !dbg !1541
  %144 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %116) #20, !dbg !1582
  %145 = icmp eq i32 %144, 0, !dbg !1586
  call void @llvm.dbg.value(metadata i64 0, metadata !1422, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #20, !dbg !1541
  br i1 %145, label %256, label %259, !dbg !1587

146:                                              ; preds = %345, %317
  %147 = phi %struct.linebuffer* [ %324, %317 ], [ %340, %345 ]
  %148 = phi %struct.linebuffer* [ %320, %317 ], [ %128, %345 ]
  %149 = phi i32 [ %325, %317 ], [ 0, %345 ]
  %150 = phi i32 [ %326, %317 ], [ 0, %345 ]
  %151 = phi i32 [ %319, %317 ], [ 0, %345 ]
  %152 = phi i32 [ %318, %317 ], [ 0, %345 ]
  %153 = phi i64 [ %323, %317 ], [ 0, %345 ]
  %154 = phi i64 [ %322, %317 ], [ 0, %345 ]
  %155 = phi i64 [ %321, %317 ], [ 0, %345 ]
  call void @llvm.dbg.value(metadata i64 %153, metadata !1419, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #20, !dbg !1541
  call void @llvm.dbg.value(metadata i64 %154, metadata !1419, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)) #20, !dbg !1541
  call void @llvm.dbg.value(metadata i64 %155, metadata !1419, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #20, !dbg !1541
  call void @llvm.dbg.declare(metadata [2 x i8]* undef, metadata !1426, metadata !DIExpression()) #20, !dbg !1588
  %156 = icmp eq %struct.linebuffer* %148, null, !dbg !1589
  br i1 %156, label %157, label %158, !dbg !1590

157:                                              ; preds = %146
  store i1 true, i1* @seen_unpairable, align 1, !dbg !1591
  br label %212, !dbg !1594

158:                                              ; preds = %146
  %159 = icmp eq %struct.linebuffer* %147, null, !dbg !1595
  br i1 %159, label %198, label %160, !dbg !1596

160:                                              ; preds = %158
  %161 = load i8, i8* @hard_LC_COLLATE, align 1, !dbg !1597, !tbaa !1456, !range !1598
  %162 = icmp eq i8 %161, 0, !dbg !1597
  br i1 %162, label %175, label %163, !dbg !1599

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %148, i64 0, i32 2, !dbg !1600
  %165 = load i8*, i8** %164, align 8, !dbg !1600, !tbaa !1601
  %166 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %148, i64 0, i32 1, !dbg !1603
  %167 = load i64, i64* %166, align 8, !dbg !1603, !tbaa !1604
  %168 = add i64 %167, -1, !dbg !1605
  %169 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %147, i64 0, i32 2, !dbg !1606
  %170 = load i8*, i8** %169, align 8, !dbg !1606, !tbaa !1601
  %171 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %147, i64 0, i32 1, !dbg !1607
  %172 = load i64, i64* %171, align 8, !dbg !1607, !tbaa !1604
  %173 = add i64 %172, -1, !dbg !1608
  %174 = call i32 @xmemcoll(i8* %165, i64 %168, i8* %170, i64 %173) #20, !dbg !1609
  call void @llvm.dbg.value(metadata i32 %174, metadata !1424, metadata !DIExpression()) #20, !dbg !1610
  br label %192, !dbg !1611

175:                                              ; preds = %160
  %176 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %148, i64 0, i32 1, !dbg !1612
  %177 = load i64, i64* %176, align 8, !dbg !1612, !tbaa !1604
  %178 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %147, i64 0, i32 1, !dbg !1612
  %179 = load i64, i64* %178, align 8, !dbg !1612, !tbaa !1604
  %180 = icmp ult i64 %177, %179, !dbg !1612
  %181 = select i1 %180, i64 %177, i64 %179, !dbg !1612
  %182 = add i64 %181, -1, !dbg !1613
  call void @llvm.dbg.value(metadata i64 %182, metadata !1427, metadata !DIExpression()) #20, !dbg !1614
  %183 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %148, i64 0, i32 2, !dbg !1615
  %184 = load i8*, i8** %183, align 8, !dbg !1615, !tbaa !1601
  %185 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %147, i64 0, i32 2, !dbg !1616
  %186 = load i8*, i8** %185, align 8, !dbg !1616, !tbaa !1601
  %187 = call i32 @memcmp(i8* %184, i8* %186, i64 %182) #22, !dbg !1617
  call void @llvm.dbg.value(metadata i32 %187, metadata !1424, metadata !DIExpression()) #20, !dbg !1610
  %188 = icmp eq i32 %187, 0, !dbg !1618
  br i1 %188, label %189, label %199, !dbg !1620

189:                                              ; preds = %175
  %190 = icmp ne i64 %177, %179, !dbg !1621
  %191 = zext i1 %190 to i32, !dbg !1621
  br i1 %180, label %198, label %192

192:                                              ; preds = %189, %163
  %193 = phi i32 [ %174, %163 ], [ %191, %189 ], !dbg !1622
  call void @llvm.dbg.value(metadata i32 %193, metadata !1424, metadata !DIExpression()) #20, !dbg !1610
  %194 = icmp eq i32 %193, 0, !dbg !1623
  br i1 %194, label %195, label %199, !dbg !1624

195:                                              ; preds = %192
  %196 = add i64 %154, 1, !dbg !1625
  call void @llvm.dbg.value(metadata i64 %196, metadata !1419, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)) #20, !dbg !1541
  %197 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1627, !tbaa !1343
  call fastcc void @writeline(%struct.linebuffer* nonnull %147, %struct._IO_FILE* %197, i32 3) #20, !dbg !1628
  br label %215, !dbg !1629

198:                                              ; preds = %189, %158
  store i1 true, i1* @seen_unpairable, align 1, !dbg !1591
  br label %202, !dbg !1594

199:                                              ; preds = %192, %175
  %200 = phi i32 [ %193, %192 ], [ %187, %175 ]
  store i1 true, i1* @seen_unpairable, align 1, !dbg !1591
  %201 = icmp slt i32 %200, 1, !dbg !1630
  br i1 %201, label %202, label %212, !dbg !1594

202:                                              ; preds = %199, %198
  %203 = add i64 %153, 1, !dbg !1632
  call void @llvm.dbg.value(metadata i64 %203, metadata !1419, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #20, !dbg !1541
  call void @llvm.dbg.value(metadata %struct.linebuffer* %148, metadata !1634, metadata !DIExpression()) #20, !dbg !1663
  call void @llvm.dbg.value(metadata %struct._IO_FILE* undef, metadata !1641, metadata !DIExpression()) #20, !dbg !1663
  call void @llvm.dbg.value(metadata i32 1, metadata !1642, metadata !DIExpression()) #20, !dbg !1663
  %204 = load i1, i1* @only_file_1, align 1, !dbg !1665
  br i1 %204, label %205, label %215, !dbg !1667

205:                                              ; preds = %202
  %206 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1668, !tbaa !1343
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %206, metadata !1641, metadata !DIExpression()) #20, !dbg !1663
  %207 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %148, i64 0, i32 1, !dbg !1669
  %208 = load i64, i64* %207, align 8, !dbg !1669, !tbaa !1604
  %209 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %148, i64 0, i32 2, !dbg !1669
  %210 = load i8*, i8** %209, align 8, !dbg !1669, !tbaa !1601
  %211 = call i64 @fwrite_unlocked(i8* %210, i64 1, i64 %208, %struct._IO_FILE* %206) #20, !dbg !1669
  br label %215, !dbg !1669

212:                                              ; preds = %199, %157
  %213 = add i64 %155, 1, !dbg !1670
  call void @llvm.dbg.value(metadata i64 %213, metadata !1419, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #20, !dbg !1541
  %214 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1672, !tbaa !1343
  call fastcc void @writeline(%struct.linebuffer* %147, %struct._IO_FILE* %214, i32 2) #20, !dbg !1673
  br label %282, !dbg !1629

215:                                              ; preds = %205, %202, %195
  %216 = phi i8 [ 0, %202 ], [ 0, %205 ], [ 1, %195 ]
  %217 = phi i64 [ %154, %202 ], [ %154, %205 ], [ %196, %195 ]
  %218 = phi i64 [ %203, %202 ], [ %203, %205 ], [ %153, %195 ]
  call void @llvm.dbg.value(metadata i64 0, metadata !1422, metadata !DIExpression()) #20, !dbg !1541
  call void @llvm.dbg.value(metadata i32 undef, metadata !1410, metadata !DIExpression()) #20, !dbg !1541
  call void @llvm.dbg.value(metadata i32 undef, metadata !1410, metadata !DIExpression()) #20, !dbg !1541
  %219 = add nsw i32 %151, 1, !dbg !1674
  %220 = and i32 %219, 3, !dbg !1679
  call void @llvm.dbg.value(metadata i32 undef, metadata !1410, metadata !DIExpression()) #20, !dbg !1541
  %221 = zext i32 %220 to i64, !dbg !1680
  %222 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 0, i64 %221, !dbg !1680
  %223 = load %struct.linebuffer*, %struct.linebuffer** %222, align 8, !dbg !1680, !tbaa !1343
  %224 = load i1, i1* @delim, align 1, !dbg !1681
  %225 = select i1 %224, i8 0, i8 10, !dbg !1681
  %226 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %223, %struct._IO_FILE* nonnull %116, i8 signext %225) #20, !dbg !1682
  call void @llvm.dbg.value(metadata %struct.linebuffer* undef, metadata !1405, metadata !DIExpression()) #20, !dbg !1541
  %227 = icmp eq %struct.linebuffer* %226, null, !dbg !1683
  br i1 %227, label %232, label %228, !dbg !1685

228:                                              ; preds = %215
  %229 = sext i32 %151 to i64, !dbg !1686
  %230 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 0, i64 %229, !dbg !1686
  %231 = load %struct.linebuffer*, %struct.linebuffer** %230, align 8, !dbg !1686, !tbaa !1343
  call fastcc void @check_order(%struct.linebuffer* %231, %struct.linebuffer* nonnull %226, i32 1) #20, !dbg !1687
  br label %243, !dbg !1687

232:                                              ; preds = %215
  %233 = sext i32 %152 to i64, !dbg !1688
  %234 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 0, i64 %233, !dbg !1688
  %235 = load %struct.linebuffer*, %struct.linebuffer** %234, align 8, !dbg !1688, !tbaa !1343
  %236 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %235, i64 0, i32 2, !dbg !1690
  %237 = load i8*, i8** %236, align 8, !dbg !1690, !tbaa !1601
  %238 = icmp eq i8* %237, null, !dbg !1688
  br i1 %238, label %243, label %239, !dbg !1691

239:                                              ; preds = %232
  %240 = sext i32 %151 to i64, !dbg !1692
  %241 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 0, i64 %240, !dbg !1692
  %242 = load %struct.linebuffer*, %struct.linebuffer** %241, align 8, !dbg !1692, !tbaa !1343
  call fastcc void @check_order(%struct.linebuffer* %235, %struct.linebuffer* %242, i32 1) #20, !dbg !1693
  br label %243, !dbg !1693

243:                                              ; preds = %239, %232, %228
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %116, metadata !1565, metadata !DIExpression()) #20, !dbg !1694
  %244 = load i32, i32* %129, align 8, !dbg !1697, !tbaa !1575
  %245 = and i32 %244, 32, !dbg !1697
  %246 = icmp eq i32 %245, 0, !dbg !1698
  br i1 %246, label %254, label %247, !dbg !1699

247:                                              ; preds = %313, %243
  %248 = phi i64 [ 0, %243 ], [ 1, %313 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !1422, metadata !DIExpression()) #20, !dbg !1541
  %249 = tail call i32* @__errno_location() #25, !dbg !1700
  %250 = load i32, i32* %249, align 4, !dbg !1700, !tbaa !1512
  %251 = getelementptr inbounds i8*, i8** %84, i64 %248, !dbg !1700
  %252 = load i8*, i8** %251, align 8, !dbg !1700, !tbaa !1343
  %253 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %252) #20, !dbg !1700
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %250, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i64 0, i64 0), i8* %253) #20, !dbg !1700
  unreachable, !dbg !1700

254:                                              ; preds = %243
  call void @llvm.dbg.value(metadata i64 1, metadata !1422, metadata !DIExpression()) #20, !dbg !1541
  %255 = icmp eq i8 %216, 0, !dbg !1701
  br i1 %255, label %317, label %282, !dbg !1702

256:                                              ; preds = %140
  call void @llvm.dbg.value(metadata i64 1, metadata !1422, metadata !DIExpression()) #20, !dbg !1541
  %257 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %335) #20, !dbg !1582
  %258 = icmp eq i32 %257, 0, !dbg !1586
  call void @llvm.dbg.value(metadata i64 1, metadata !1422, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #20, !dbg !1541
  br i1 %258, label %280, label %259, !dbg !1587

259:                                              ; preds = %256, %140
  %260 = phi i64 [ 0, %140 ], [ 1, %256 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !1422, metadata !DIExpression()) #20, !dbg !1541
  %261 = tail call i32* @__errno_location() #25, !dbg !1703
  %262 = load i32, i32* %261, align 4, !dbg !1703, !tbaa !1512
  %263 = getelementptr inbounds i8*, i8** %84, i64 %260, !dbg !1703
  %264 = load i8*, i8** %263, align 8, !dbg !1703, !tbaa !1343
  %265 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %264) #20, !dbg !1703
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %262, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i64 0, i64 0), i8* %265) #20, !dbg !1703
  unreachable, !dbg !1703

266:                                              ; preds = %280
  %267 = getelementptr inbounds [21 x i8], [21 x i8]* %5, i64 0, i64 0, !dbg !1704
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %267) #20, !dbg !1704
  %268 = getelementptr inbounds [21 x i8], [21 x i8]* %6, i64 0, i64 0, !dbg !1705
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %268) #20, !dbg !1705
  %269 = getelementptr inbounds [21 x i8], [21 x i8]* %7, i64 0, i64 0, !dbg !1706
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %269) #20, !dbg !1706
  %270 = call i8* @umaxtostr(i64 %143, i8* nonnull %267) #20, !dbg !1707
  %271 = load i8*, i8** @col_sep, align 8, !dbg !1707, !tbaa !1343
  %272 = call i8* @umaxtostr(i64 %141, i8* nonnull %268) #20, !dbg !1707
  %273 = load i8*, i8** @col_sep, align 8, !dbg !1707, !tbaa !1343
  %274 = call i8* @umaxtostr(i64 %142, i8* nonnull %269) #20, !dbg !1707
  %275 = load i8*, i8** @col_sep, align 8, !dbg !1707, !tbaa !1343
  %276 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i64 0, i64 0), i32 5) #20, !dbg !1707
  %277 = load i1, i1* @delim, align 1, !dbg !1707
  %278 = select i1 %277, i32 0, i32 10, !dbg !1707
  %279 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.53, i64 0, i64 0), i8* %270, i8* %271, i8* %272, i8* %273, i8* %274, i8* %275, i8* %276, i32 %278) #20, !dbg !1707
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %269) #20, !dbg !1708
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %268) #20, !dbg !1708
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %267) #20, !dbg !1708
  br label %349, !dbg !1709

280:                                              ; preds = %256
  call void @llvm.dbg.value(metadata i64 2, metadata !1422, metadata !DIExpression()) #20, !dbg !1541
  %281 = load i1, i1* @total_option, align 1, !dbg !1710
  br i1 %281, label %266, label %349, !dbg !1711

282:                                              ; preds = %254, %212
  %283 = phi i32 [ %151, %254 ], [ %152, %212 ]
  %284 = phi i32 [ %220, %254 ], [ %151, %212 ]
  %285 = phi %struct.linebuffer* [ %226, %254 ], [ %148, %212 ]
  %286 = phi i64 [ %155, %254 ], [ %213, %212 ]
  %287 = phi i64 [ %217, %254 ], [ %154, %212 ]
  %288 = phi i64 [ %218, %254 ], [ %153, %212 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !1410, metadata !DIExpression()) #20, !dbg !1541
  call void @llvm.dbg.value(metadata i32 undef, metadata !1410, metadata !DIExpression()) #20, !dbg !1541
  %289 = add nsw i32 %149, 1, !dbg !1674
  %290 = and i32 %289, 3, !dbg !1679
  call void @llvm.dbg.value(metadata i32 undef, metadata !1410, metadata !DIExpression()) #20, !dbg !1541
  %291 = zext i32 %290 to i64, !dbg !1680
  %292 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 1, i64 %291, !dbg !1680
  %293 = load %struct.linebuffer*, %struct.linebuffer** %292, align 8, !dbg !1680, !tbaa !1343
  %294 = load i1, i1* @delim, align 1, !dbg !1681
  %295 = select i1 %294, i8 0, i8 10, !dbg !1681
  %296 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %293, %struct._IO_FILE* nonnull %335, i8 signext %295) #20, !dbg !1682
  call void @llvm.dbg.value(metadata %struct.linebuffer* undef, metadata !1405, metadata !DIExpression()) #20, !dbg !1541
  %297 = icmp eq %struct.linebuffer* %296, null, !dbg !1683
  br i1 %297, label %302, label %298, !dbg !1685

298:                                              ; preds = %282
  %299 = sext i32 %149 to i64, !dbg !1686
  %300 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 1, i64 %299, !dbg !1686
  %301 = load %struct.linebuffer*, %struct.linebuffer** %300, align 8, !dbg !1686, !tbaa !1343
  call fastcc void @check_order(%struct.linebuffer* %301, %struct.linebuffer* nonnull %296, i32 2) #20, !dbg !1687
  br label %313, !dbg !1687

302:                                              ; preds = %282
  %303 = sext i32 %150 to i64, !dbg !1688
  %304 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 1, i64 %303, !dbg !1688
  %305 = load %struct.linebuffer*, %struct.linebuffer** %304, align 8, !dbg !1688, !tbaa !1343
  %306 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %305, i64 0, i32 2, !dbg !1690
  %307 = load i8*, i8** %306, align 8, !dbg !1690, !tbaa !1601
  %308 = icmp eq i8* %307, null, !dbg !1688
  br i1 %308, label %313, label %309, !dbg !1691

309:                                              ; preds = %302
  %310 = sext i32 %149 to i64, !dbg !1692
  %311 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 1, i64 %310, !dbg !1692
  %312 = load %struct.linebuffer*, %struct.linebuffer** %311, align 8, !dbg !1692, !tbaa !1343
  call fastcc void @check_order(%struct.linebuffer* %305, %struct.linebuffer* %312, i32 2) #20, !dbg !1693
  br label %313, !dbg !1693

313:                                              ; preds = %309, %302, %298
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %335, metadata !1565, metadata !DIExpression()) #20, !dbg !1694
  %314 = load i32, i32* %341, align 8, !dbg !1697, !tbaa !1575
  %315 = and i32 %314, 32, !dbg !1697
  %316 = icmp eq i32 %315, 0, !dbg !1698
  br i1 %316, label %317, label %247, !dbg !1699

317:                                              ; preds = %313, %254
  %318 = phi i32 [ %151, %254 ], [ %283, %313 ]
  %319 = phi i32 [ %220, %254 ], [ %284, %313 ]
  %320 = phi %struct.linebuffer* [ %226, %254 ], [ %285, %313 ]
  %321 = phi i64 [ %155, %254 ], [ %286, %313 ]
  %322 = phi i64 [ %217, %254 ], [ %287, %313 ]
  %323 = phi i64 [ %218, %254 ], [ %288, %313 ]
  %324 = phi %struct.linebuffer* [ %147, %254 ], [ %296, %313 ], !dbg !1712
  %325 = phi i32 [ %149, %254 ], [ %290, %313 ]
  %326 = phi i32 [ %150, %254 ], [ %149, %313 ]
  call void @llvm.dbg.value(metadata i64 2, metadata !1422, metadata !DIExpression()) #20, !dbg !1541
  call void @llvm.dbg.value(metadata i64 %155, metadata !1419, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #20, !dbg !1541
  %327 = icmp ne %struct.linebuffer* %320, null, !dbg !1713
  %328 = icmp ne %struct.linebuffer* %324, null, !dbg !1712
  %329 = or i1 %327, %328, !dbg !1712
  br i1 %329, label %146, label %140, !dbg !1714, !llvm.loop !1715

330:                                              ; preds = %98
  %331 = call %struct._IO_FILE* @fopen_safer(i8* %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0)) #20, !dbg !1556
  br label %334, !dbg !1554

332:                                              ; preds = %98
  %333 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1555, !tbaa !1343
  br label %334, !dbg !1554

334:                                              ; preds = %332, %330
  %335 = phi %struct._IO_FILE* [ %333, %332 ], [ %331, %330 ], !dbg !1554
  call void @llvm.dbg.value(metadata %struct._IO_FILE* undef, metadata !1414, metadata !DIExpression()) #20, !dbg !1541
  %336 = icmp eq %struct._IO_FILE* %335, null, !dbg !1557
  br i1 %336, label %118, label %337, !dbg !1559

337:                                              ; preds = %334
  call void @fadvise(%struct._IO_FILE* nonnull %335, i32 2) #20, !dbg !1562
  %338 = load i1, i1* @delim, align 1, !dbg !1563
  %339 = select i1 %338, i8 0, i8 10, !dbg !1563
  %340 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* nonnull %99, %struct._IO_FILE* nonnull %335, i8 signext %339) #20, !dbg !1564
  call void @llvm.dbg.value(metadata %struct.linebuffer* undef, metadata !1405, metadata !DIExpression()) #20, !dbg !1541
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %335, metadata !1565, metadata !DIExpression()) #20, !dbg !1571
  %341 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %335, i64 0, i32 0, !dbg !1574
  %342 = load i32, i32* %341, align 8, !dbg !1574, !tbaa !1575
  %343 = and i32 %342, 32, !dbg !1574
  %344 = icmp eq i32 %343, 0, !dbg !1578
  call void @llvm.dbg.value(metadata i64 1, metadata !1422, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #20, !dbg !1541
  br i1 %344, label %345, label %133, !dbg !1579

345:                                              ; preds = %337
  call void @llvm.dbg.value(metadata i64 2, metadata !1422, metadata !DIExpression()) #20, !dbg !1541
  call void @llvm.dbg.value(metadata i64 0, metadata !1419, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #20, !dbg !1541
  call void @llvm.dbg.value(metadata i64 0, metadata !1419, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)) #20, !dbg !1541
  call void @llvm.dbg.value(metadata i64 0, metadata !1419, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #20, !dbg !1541
  %346 = icmp ne %struct.linebuffer* %128, null, !dbg !1713
  %347 = icmp ne %struct.linebuffer* %340, null, !dbg !1712
  %348 = or i1 %346, %347, !dbg !1712
  br i1 %348, label %146, label %140, !dbg !1714

349:                                              ; preds = %266, %280
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %86) #20, !dbg !1717
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %85) #20, !dbg !1717
  %350 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 0), align 1, !dbg !1718, !tbaa !1456, !range !1598
  %351 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 1), align 1, !dbg !1720
  %352 = or i8 %351, %350, !dbg !1721
  %353 = icmp eq i8 %352, 0, !dbg !1721
  br i1 %353, label %356, label %354, !dbg !1721

354:                                              ; preds = %349
  %355 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i64 0, i64 0), i32 5) #20, !dbg !1722
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %355) #20, !dbg !1722
  unreachable, !dbg !1722

356:                                              ; preds = %349
  ret i32 0, !dbg !1723
}

; Function Attrs: nounwind
declare !dbg !114 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !117 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !125 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !132 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !147 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #9

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #10

; Function Attrs: nofree nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @writeline(%struct.linebuffer* nocapture readonly %0, %struct._IO_FILE* %1, i32 %2) unnamed_addr #8 !dbg !1635 {
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !1634, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !1641, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata i32 %2, metadata !1642, metadata !DIExpression()), !dbg !1724
  switch i32 %2, label %28 [
    i32 1, label %4
    i32 2, label %6
    i32 3, label %14
  ], !dbg !1725

4:                                                ; preds = %3
  %5 = load i1, i1* @only_file_1, align 1, !dbg !1726
  br i1 %5, label %28, label %34, !dbg !1727

6:                                                ; preds = %3
  %7 = load i1, i1* @only_file_2, align 1, !dbg !1728
  br i1 %7, label %8, label %34, !dbg !1730

8:                                                ; preds = %6
  %9 = load i1, i1* @only_file_1, align 1, !dbg !1731
  br i1 %9, label %10, label %28, !dbg !1732

10:                                               ; preds = %8
  %11 = load i64, i64* @col_sep_len, align 8, !dbg !1733, !tbaa !1485
  %12 = load i8*, i8** @col_sep, align 8, !dbg !1733, !tbaa !1343
  %13 = tail call i64 @fwrite_unlocked(i8* %12, i64 1, i64 %11, %struct._IO_FILE* %1), !dbg !1733
  br label %28, !dbg !1733

14:                                               ; preds = %3
  %15 = load i1, i1* @both, align 1, !dbg !1734
  br i1 %15, label %16, label %34, !dbg !1736

16:                                               ; preds = %14
  %17 = load i1, i1* @only_file_1, align 1, !dbg !1737
  br i1 %17, label %18, label %22, !dbg !1738

18:                                               ; preds = %16
  %19 = load i64, i64* @col_sep_len, align 8, !dbg !1739, !tbaa !1485
  %20 = load i8*, i8** @col_sep, align 8, !dbg !1739, !tbaa !1343
  %21 = tail call i64 @fwrite_unlocked(i8* %20, i64 1, i64 %19, %struct._IO_FILE* %1), !dbg !1739
  br label %22, !dbg !1739

22:                                               ; preds = %18, %16
  %23 = load i1, i1* @only_file_2, align 1, !dbg !1740
  br i1 %23, label %24, label %28, !dbg !1741

24:                                               ; preds = %22
  %25 = load i64, i64* @col_sep_len, align 8, !dbg !1742, !tbaa !1485
  %26 = load i8*, i8** @col_sep, align 8, !dbg !1742, !tbaa !1343
  %27 = tail call i64 @fwrite_unlocked(i8* %26, i64 1, i64 %25, %struct._IO_FILE* %1), !dbg !1742
  br label %28, !dbg !1742

28:                                               ; preds = %22, %24, %8, %10, %4, %3
  %29 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 1, !dbg !1743
  %30 = load i64, i64* %29, align 8, !dbg !1743, !tbaa !1604
  %31 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !1743
  %32 = load i8*, i8** %31, align 8, !dbg !1743, !tbaa !1601
  %33 = tail call i64 @fwrite_unlocked(i8* %32, i64 1, i64 %30, %struct._IO_FILE* %1), !dbg !1743
  br label %34, !dbg !1743

34:                                               ; preds = %28, %14, %6, %4
  ret void, !dbg !1744
}

; Function Attrs: nofree nounwind
declare !dbg !194 i64 @fwrite_unlocked(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @check_order(%struct.linebuffer* nocapture readonly %0, %struct.linebuffer* nocapture readonly %1, i32 %2) unnamed_addr #8 !dbg !1745 {
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !1749, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata %struct.linebuffer* %1, metadata !1750, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i32 %2, metadata !1751, metadata !DIExpression()), !dbg !1757
  %4 = load i32, i32* @check_input_order, align 4, !dbg !1758, !tbaa !1466
  switch i32 %4, label %5 [
    i32 2, label %38
    i32 1, label %7
  ], !dbg !1759

5:                                                ; preds = %3
  %6 = load i1, i1* @seen_unpairable, align 1, !dbg !1760
  br i1 %6, label %7, label %38, !dbg !1761

7:                                                ; preds = %3, %5
  %8 = add nsw i32 %2, -1, !dbg !1762
  %9 = sext i32 %8 to i64, !dbg !1763
  %10 = getelementptr inbounds [2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 %9, !dbg !1763
  %11 = load i8, i8* %10, align 1, !dbg !1763, !tbaa !1456, !range !1598
  %12 = icmp eq i8 %11, 0, !dbg !1763
  br i1 %12, label %13, label %38, !dbg !1764

13:                                               ; preds = %7
  %14 = load i8, i8* @hard_LC_COLLATE, align 1, !dbg !1765, !tbaa !1456, !range !1598
  %15 = icmp eq i8 %14, 0, !dbg !1765
  %16 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !1767
  %17 = load i8*, i8** %16, align 8, !dbg !1767, !tbaa !1601
  %18 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 1, !dbg !1767
  %19 = load i64, i64* %18, align 8, !dbg !1767, !tbaa !1604
  %20 = add i64 %19, -1, !dbg !1767
  %21 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %1, i64 0, i32 2, !dbg !1767
  %22 = load i8*, i8** %21, align 8, !dbg !1767, !tbaa !1601
  %23 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %1, i64 0, i32 1, !dbg !1767
  %24 = load i64, i64* %23, align 8, !dbg !1767, !tbaa !1604
  %25 = add i64 %24, -1, !dbg !1767
  br i1 %15, label %28, label %26, !dbg !1768

26:                                               ; preds = %13
  %27 = tail call i32 @xmemcoll(i8* %17, i64 %20, i8* %22, i64 %25) #20, !dbg !1769
  call void @llvm.dbg.value(metadata i32 %27, metadata !1752, metadata !DIExpression()), !dbg !1770
  br label %30, !dbg !1771

28:                                               ; preds = %13
  %29 = tail call i32 @memcmp2(i8* %17, i64 %20, i8* %22, i64 %25) #22, !dbg !1772
  call void @llvm.dbg.value(metadata i32 %29, metadata !1752, metadata !DIExpression()), !dbg !1770
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ], !dbg !1767
  call void @llvm.dbg.value(metadata i32 %31, metadata !1752, metadata !DIExpression()), !dbg !1770
  %32 = icmp sgt i32 %31, 0, !dbg !1773
  br i1 %32, label %33, label %38, !dbg !1775

33:                                               ; preds = %30
  %34 = load i32, i32* @check_input_order, align 4, !dbg !1776, !tbaa !1466
  %35 = icmp eq i32 %34, 1, !dbg !1778
  %36 = zext i1 %35 to i32, !dbg !1776
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.54, i64 0, i64 0), i32 5) #20, !dbg !1779
  tail call void (i32, i32, i8*, ...) @error(i32 %36, i32 0, i8* %37, i32 %2) #20, !dbg !1780
  store i8 1, i8* %10, align 1, !dbg !1781, !tbaa !1456
  br label %38, !dbg !1782

38:                                               ; preds = %30, %33, %3, %7, %5
  ret void, !dbg !1783
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #11 !dbg !1784 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1786, metadata !DIExpression()), !dbg !1787
  store i8* %0, i8** @file_name, align 8, !dbg !1788, !tbaa !1343
  ret void, !dbg !1789
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #11 !dbg !1790 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1794, metadata !DIExpression()), !dbg !1795
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1796, !tbaa !1456
  ret void, !dbg !1797
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1798 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1803, !tbaa !1343
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #20, !dbg !1804
  %3 = icmp eq i32 %2, 0, !dbg !1805
  br i1 %3, label %22, label %4, !dbg !1806

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1807, !tbaa !1456, !range !1598
  %6 = icmp eq i8 %5, 0, !dbg !1807
  br i1 %6, label %11, label %7, !dbg !1808

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #25, !dbg !1809
  %9 = load i32, i32* %8, align 4, !dbg !1809, !tbaa !1512
  %10 = icmp eq i32 %9, 32, !dbg !1810
  br i1 %10, label %22, label %11, !dbg !1811

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i64 0, i64 0), i32 5) #20, !dbg !1812
  call void @llvm.dbg.value(metadata i8* %12, metadata !1800, metadata !DIExpression()), !dbg !1813
  %13 = load i8*, i8** @file_name, align 8, !dbg !1814, !tbaa !1343
  %14 = icmp eq i8* %13, null, !dbg !1814
  %15 = tail call i32* @__errno_location() #25, !dbg !1816
  %16 = load i32, i32* %15, align 4, !dbg !1816, !tbaa !1512
  br i1 %14, label %19, label %17, !dbg !1817

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #20, !dbg !1818
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.59, i64 0, i64 0), i8* %18, i8* %12) #20, !dbg !1819
  br label %20, !dbg !1819

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.60, i64 0, i64 0), i8* %12) #20, !dbg !1820
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1821, !tbaa !1512
  tail call void @_exit(i32 %21) #23, !dbg !1822
  unreachable, !dbg !1822

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1823, !tbaa !1343
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #20, !dbg !1825
  %25 = icmp eq i32 %24, 0, !dbg !1826
  br i1 %25, label %28, label %26, !dbg !1827

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1828, !tbaa !1512
  tail call void @_exit(i32 %27) #23, !dbg !1829
  unreachable, !dbg !1829

28:                                               ; preds = %22
  ret void, !dbg !1830
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32 %0, i64 %1, i64 %2, i32 %3) local_unnamed_addr #8 !dbg !1831 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1837, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i64 %1, metadata !1838, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i64 %2, metadata !1839, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %3, metadata !1840, metadata !DIExpression()), !dbg !1843
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #20, !dbg !1844
  call void @llvm.dbg.value(metadata i32 %5, metadata !1841, metadata !DIExpression()), !dbg !1845
  ret void, !dbg !1846
}

; Function Attrs: nounwind
declare !dbg !498 i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE* %0, i32 %1) local_unnamed_addr #8 !dbg !1847 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1853, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i32 %1, metadata !1854, metadata !DIExpression()), !dbg !1855
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1856
  br i1 %3, label %7, label %4, !dbg !1858

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #20, !dbg !1859
  call void @llvm.dbg.value(metadata i32 %5, metadata !1837, metadata !DIExpression()) #20, !dbg !1860
  call void @llvm.dbg.value(metadata i64 0, metadata !1838, metadata !DIExpression()) #20, !dbg !1860
  call void @llvm.dbg.value(metadata i64 0, metadata !1839, metadata !DIExpression()) #20, !dbg !1860
  call void @llvm.dbg.value(metadata i32 %1, metadata !1840, metadata !DIExpression()) #20, !dbg !1860
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #20, !dbg !1862
  call void @llvm.dbg.value(metadata i32 %6, metadata !1841, metadata !DIExpression()) #20, !dbg !1863
  br label %7, !dbg !1864

7:                                                ; preds = %2, %4
  ret void, !dbg !1865
}

; Function Attrs: nofree nounwind
declare !dbg !501 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct._IO_FILE* @fopen_safer(i8* nocapture readonly %0, i8* nocapture readonly %1) local_unnamed_addr #8 !dbg !1866 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1872, metadata !DIExpression()), !dbg !1887
  call void @llvm.dbg.value(metadata i8* %1, metadata !1873, metadata !DIExpression()), !dbg !1887
  %3 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* %1), !dbg !1888
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %3, metadata !1874, metadata !DIExpression()), !dbg !1887
  %4 = icmp eq %struct._IO_FILE* %3, null, !dbg !1889
  br i1 %4, label %25, label %5, !dbg !1890

5:                                                ; preds = %2
  %6 = tail call i32 @fileno(%struct._IO_FILE* nonnull %3) #20, !dbg !1891
  call void @llvm.dbg.value(metadata i32 %6, metadata !1875, metadata !DIExpression()), !dbg !1892
  %7 = icmp ult i32 %6, 3, !dbg !1893
  br i1 %7, label %8, label %25, !dbg !1893

8:                                                ; preds = %5
  %9 = tail call i32 @dup_safer(i32 %6) #20, !dbg !1894
  call void @llvm.dbg.value(metadata i32 %9, metadata !1878, metadata !DIExpression()), !dbg !1895
  %10 = icmp slt i32 %9, 0, !dbg !1896
  br i1 %10, label %11, label %15, !dbg !1897

11:                                               ; preds = %8
  %12 = tail call i32* @__errno_location() #25, !dbg !1898
  %13 = load i32, i32* %12, align 4, !dbg !1898, !tbaa !1512
  call void @llvm.dbg.value(metadata i32 %13, metadata !1881, metadata !DIExpression()), !dbg !1899
  %14 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #20, !dbg !1900
  store i32 %13, i32* %12, align 4, !dbg !1901, !tbaa !1512
  br label %25

15:                                               ; preds = %8
  %16 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #20, !dbg !1902
  %17 = icmp eq i32 %16, 0, !dbg !1903
  br i1 %17, label %18, label %21, !dbg !1904

18:                                               ; preds = %15
  %19 = tail call %struct._IO_FILE* @fdopen(i32 %9, i8* %1) #20, !dbg !1905
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %19, metadata !1874, metadata !DIExpression()), !dbg !1887
  %20 = icmp eq %struct._IO_FILE* %19, null, !dbg !1906
  br i1 %20, label %21, label %25, !dbg !1907

21:                                               ; preds = %18, %15
  call void @llvm.dbg.value(metadata %struct._IO_FILE* undef, metadata !1874, metadata !DIExpression()), !dbg !1887
  %22 = tail call i32* @__errno_location() #25, !dbg !1908
  %23 = load i32, i32* %22, align 4, !dbg !1908, !tbaa !1512
  call void @llvm.dbg.value(metadata i32 %23, metadata !1884, metadata !DIExpression()), !dbg !1909
  %24 = tail call i32 @close(i32 %9) #20, !dbg !1910
  store i32 %23, i32* %22, align 4, !dbg !1911, !tbaa !1512
  br label %25

25:                                               ; preds = %5, %18, %2, %21, %11
  %26 = phi %struct._IO_FILE* [ null, %11 ], [ null, %21 ], [ null, %2 ], [ %19, %18 ], [ %3, %5 ], !dbg !1887
  ret %struct._IO_FILE* %26, !dbg !1912
}

; Function Attrs: nofree nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !577 noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #4

declare !dbg !479 i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !1913 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1915, metadata !DIExpression()), !dbg !1920
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !1921
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #20, !dbg !1921
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !1916, metadata !DIExpression()), !dbg !1922
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #20, !dbg !1923
  %5 = icmp eq i32 %4, 0, !dbg !1923
  br i1 %5, label %6, label %13, !dbg !1925

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !1926
  %8 = load i16, i16* %7, align 16, !dbg !1926
  %9 = icmp eq i16 %8, 67, !dbg !1926
  br i1 %9, label %13, label %10, !dbg !1927

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.69, i64 0, i64 0), i64 6), !dbg !1928
  %12 = icmp ne i32 %11, 0, !dbg !1929
  br label %13, !dbg !1927

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !1920
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #20, !dbg !1930
  ret i1 %14, !dbg !1930
}

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #13

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local nonnull i8* @umaxtostr(i64 %0, i8* %1) local_unnamed_addr #11 !dbg !1931 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1936, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i8* %1, metadata !1937, metadata !DIExpression()), !dbg !1939
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !1940
  call void @llvm.dbg.value(metadata i8* %3, metadata !1938, metadata !DIExpression()), !dbg !1939
  store i8 0, i8* %3, align 1, !dbg !1941, !tbaa !1466
  br label %4, !dbg !1942

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %0, %2 ], [ %11, %4 ]
  %6 = phi i8* [ %3, %2 ], [ %10, %4 ], !dbg !1939
  call void @llvm.dbg.value(metadata i8* %6, metadata !1938, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %5, metadata !1936, metadata !DIExpression()), !dbg !1939
  %7 = urem i64 %5, 10, !dbg !1943
  %8 = trunc i64 %7 to i8, !dbg !1946
  %9 = or i8 %8, 48, !dbg !1946
  %10 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !1947
  call void @llvm.dbg.value(metadata i8* %10, metadata !1938, metadata !DIExpression()), !dbg !1939
  store i8 %9, i8* %10, align 1, !dbg !1948, !tbaa !1466
  %11 = udiv i64 %5, 10, !dbg !1949
  call void @llvm.dbg.value(metadata i64 %11, metadata !1936, metadata !DIExpression()), !dbg !1939
  %12 = icmp ugt i64 %5, 9, !dbg !1950
  br i1 %12, label %4, label %13, !dbg !1951, !llvm.loop !1952

13:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i8* %10, metadata !1938, metadata !DIExpression()), !dbg !1939
  ret i8* %10, !dbg !1955
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local void @initbuffer(%struct.linebuffer* %0) local_unnamed_addr #14 !dbg !1956 {
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !1960, metadata !DIExpression()), !dbg !1961
  %2 = bitcast %struct.linebuffer* %0 to i8*, !dbg !1962
  call void @llvm.dbg.value(metadata i8* %2, metadata !1963, metadata !DIExpression()) #20, !dbg !1971
  call void @llvm.dbg.value(metadata i32 0, metadata !1969, metadata !DIExpression()) #20, !dbg !1971
  call void @llvm.dbg.value(metadata i64 24, metadata !1970, metadata !DIExpression()) #20, !dbg !1971
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 dereferenceable(24) %2, i8 0, i64 24, i1 false) #20, !dbg !1973
  ret void, !dbg !1974
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.linebuffer* @readlinebuffer(%struct.linebuffer* %0, %struct._IO_FILE* %1) local_unnamed_addr #8 !dbg !1975 {
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !1981, metadata !DIExpression()), !dbg !1983
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !1982, metadata !DIExpression()), !dbg !1983
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !1984, metadata !DIExpression()) #20, !dbg !1999
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !1989, metadata !DIExpression()) #20, !dbg !1999
  call void @llvm.dbg.value(metadata i8 10, metadata !1990, metadata !DIExpression()) #20, !dbg !1999
  %3 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !2001
  %4 = load i8*, i8** %3, align 8, !dbg !2001, !tbaa !1601
  call void @llvm.dbg.value(metadata i8* %4, metadata !1992, metadata !DIExpression()) #20, !dbg !1999
  call void @llvm.dbg.value(metadata i8* %4, metadata !1993, metadata !DIExpression()) #20, !dbg !1999
  %5 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 0, !dbg !2002
  call void @llvm.dbg.value(metadata i8* undef, metadata !1994, metadata !DIExpression()) #20, !dbg !1999
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !2003, metadata !DIExpression()) #20, !dbg !2008
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 0, !dbg !2011
  %7 = load i32, i32* %6, align 8, !dbg !2011, !tbaa !1575
  %8 = and i32 %7, 16, !dbg !2011
  %9 = icmp eq i32 %8, 0, !dbg !2012
  br i1 %9, label %10, label %62, !dbg !2013

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8, !dbg !2002, !tbaa !2014
  %12 = getelementptr inbounds i8, i8* %4, i64 %11, !dbg !2015
  call void @llvm.dbg.value(metadata i8* %12, metadata !1994, metadata !DIExpression()) #20, !dbg !1999
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 1, !dbg !2016
  %14 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 2, !dbg !2016
  br label %15, !dbg !2021

15:                                               ; preds = %48, %10
  %16 = phi i8* [ %49, %48 ], [ %4, %10 ], !dbg !1999
  %17 = phi i8* [ %53, %48 ], [ %4, %10 ], !dbg !1999
  %18 = phi i8* [ %51, %48 ], [ %12, %10 ], !dbg !1999
  call void @llvm.dbg.value(metadata i8* %18, metadata !1994, metadata !DIExpression()) #20, !dbg !1999
  call void @llvm.dbg.value(metadata i8* %17, metadata !1993, metadata !DIExpression()) #20, !dbg !1999
  call void @llvm.dbg.value(metadata i8* %16, metadata !1992, metadata !DIExpression()) #20, !dbg !1999
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !2019, metadata !DIExpression()) #20, !dbg !2016
  %19 = load i8*, i8** %13, align 8, !dbg !2022, !tbaa !2023
  %20 = load i8*, i8** %14, align 8, !dbg !2022, !tbaa !2024
  %21 = icmp ult i8* %19, %20, !dbg !2022
  br i1 %21, label %22, label %26, !dbg !2022, !prof !2025, !misexpect !2026

22:                                               ; preds = %15
  %23 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !2022
  store i8* %23, i8** %13, align 8, !dbg !2022, !tbaa !2023
  %24 = load i8, i8* %19, align 1, !dbg !2022, !tbaa !1466
  %25 = zext i8 %24 to i32, !dbg !2022
  call void @llvm.dbg.value(metadata i32 %27, metadata !1991, metadata !DIExpression()) #20, !dbg !1999
  br label %39, !dbg !2027

26:                                               ; preds = %15
  %27 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %1) #20, !dbg !2022
  call void @llvm.dbg.value(metadata i32 %27, metadata !1991, metadata !DIExpression()) #20, !dbg !1999
  %28 = icmp eq i32 %27, -1, !dbg !2028
  br i1 %28, label %29, label %39, !dbg !2027

29:                                               ; preds = %26
  %30 = icmp eq i8* %17, %16, !dbg !2030
  br i1 %30, label %62, label %31, !dbg !2033

31:                                               ; preds = %29
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !2034, metadata !DIExpression()) #20, !dbg !2037
  %32 = load i32, i32* %6, align 8, !dbg !2039, !tbaa !1575
  %33 = and i32 %32, 32, !dbg !2039
  %34 = icmp eq i32 %33, 0, !dbg !2040
  br i1 %34, label %35, label %62, !dbg !2041

35:                                               ; preds = %31
  %36 = getelementptr inbounds i8, i8* %17, i64 -1, !dbg !2042
  %37 = load i8, i8* %36, align 1, !dbg !2042, !tbaa !1466
  %38 = icmp eq i8 %37, 10, !dbg !2044
  br i1 %38, label %55, label %39, !dbg !2045

39:                                               ; preds = %35, %26, %22
  %40 = phi i32 [ %27, %26 ], [ %25, %22 ], [ 10, %35 ], !dbg !2046
  call void @llvm.dbg.value(metadata i32 %40, metadata !1991, metadata !DIExpression()) #20, !dbg !1999
  %41 = icmp eq i8* %17, %18, !dbg !2047
  br i1 %41, label %42, label %48, !dbg !2048

42:                                               ; preds = %39
  %43 = load i64, i64* %5, align 8, !dbg !2049, !tbaa !2014
  call void @llvm.dbg.value(metadata i64 %43, metadata !1995, metadata !DIExpression()) #20, !dbg !2050
  %44 = tail call i8* @x2realloc(i8* %16, i64* nonnull %5) #20, !dbg !2051
  call void @llvm.dbg.value(metadata i8* %44, metadata !1992, metadata !DIExpression()) #20, !dbg !1999
  %45 = getelementptr inbounds i8, i8* %44, i64 %43, !dbg !2052
  call void @llvm.dbg.value(metadata i8* %45, metadata !1993, metadata !DIExpression()) #20, !dbg !1999
  store i8* %44, i8** %3, align 8, !dbg !2053, !tbaa !1601
  %46 = load i64, i64* %5, align 8, !dbg !2054, !tbaa !2014
  %47 = getelementptr inbounds i8, i8* %44, i64 %46, !dbg !2055
  call void @llvm.dbg.value(metadata i8* %47, metadata !1994, metadata !DIExpression()) #20, !dbg !1999
  br label %48, !dbg !2056

48:                                               ; preds = %42, %39
  %49 = phi i8* [ %44, %42 ], [ %16, %39 ], !dbg !1999
  %50 = phi i8* [ %45, %42 ], [ %17, %39 ], !dbg !1999
  %51 = phi i8* [ %47, %42 ], [ %18, %39 ], !dbg !1999
  call void @llvm.dbg.value(metadata i8* %51, metadata !1994, metadata !DIExpression()) #20, !dbg !1999
  call void @llvm.dbg.value(metadata i8* %50, metadata !1993, metadata !DIExpression()) #20, !dbg !1999
  call void @llvm.dbg.value(metadata i8* %49, metadata !1992, metadata !DIExpression()) #20, !dbg !1999
  %52 = trunc i32 %40 to i8, !dbg !2057
  %53 = getelementptr inbounds i8, i8* %50, i64 1, !dbg !2058
  call void @llvm.dbg.value(metadata i8* %53, metadata !1993, metadata !DIExpression()) #20, !dbg !1999
  store i8 %52, i8* %50, align 1, !dbg !2059, !tbaa !1466
  %54 = icmp eq i32 %40, 10, !dbg !2060
  br i1 %54, label %55, label %15, !dbg !2061, !llvm.loop !2062

55:                                               ; preds = %48, %35
  %56 = phi i8* [ %16, %35 ], [ %49, %48 ], !dbg !1999
  %57 = phi i8* [ %17, %35 ], [ %53, %48 ], !dbg !1999
  call void @llvm.dbg.value(metadata i8* %57, metadata !1993, metadata !DIExpression()) #20, !dbg !1999
  call void @llvm.dbg.value(metadata i8* %56, metadata !1992, metadata !DIExpression()) #20, !dbg !1999
  %58 = ptrtoint i8* %57 to i64, !dbg !2064
  %59 = ptrtoint i8* %56 to i64, !dbg !2064
  %60 = sub i64 %58, %59, !dbg !2064
  %61 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 1, !dbg !2065
  store i64 %60, i64* %61, align 8, !dbg !2066, !tbaa !1604
  br label %62, !dbg !2067

62:                                               ; preds = %29, %31, %2, %55
  %63 = phi %struct.linebuffer* [ %0, %55 ], [ null, %2 ], [ null, %31 ], [ null, %29 ], !dbg !1999
  ret %struct.linebuffer* %63, !dbg !2068
}

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %0, %struct._IO_FILE* %1, i8 signext %2) local_unnamed_addr #8 !dbg !1985 {
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !1984, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !1989, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i8 %2, metadata !1990, metadata !DIExpression()), !dbg !2069
  %4 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !2070
  %5 = load i8*, i8** %4, align 8, !dbg !2070, !tbaa !1601
  call void @llvm.dbg.value(metadata i8* %5, metadata !1992, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i8* %5, metadata !1993, metadata !DIExpression()), !dbg !2069
  %6 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 0, !dbg !2071
  call void @llvm.dbg.value(metadata i8* undef, metadata !1994, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !2003, metadata !DIExpression()), !dbg !2072
  %7 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 0, !dbg !2074
  %8 = load i32, i32* %7, align 8, !dbg !2074, !tbaa !1575
  %9 = and i32 %8, 16, !dbg !2074
  %10 = icmp eq i32 %9, 0, !dbg !2075
  br i1 %10, label %11, label %64, !dbg !2076

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8, !dbg !2071, !tbaa !2014
  %13 = getelementptr inbounds i8, i8* %5, i64 %12, !dbg !2077
  call void @llvm.dbg.value(metadata i8* %13, metadata !1994, metadata !DIExpression()), !dbg !2069
  %14 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 1, !dbg !2078
  %15 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 2, !dbg !2078
  %16 = sext i8 %2 to i32, !dbg !2080
  br label %17, !dbg !2081

17:                                               ; preds = %11, %50
  %18 = phi i8* [ %51, %50 ], [ %5, %11 ], !dbg !2069
  %19 = phi i8* [ %55, %50 ], [ %5, %11 ], !dbg !2069
  %20 = phi i8* [ %53, %50 ], [ %13, %11 ], !dbg !2069
  call void @llvm.dbg.value(metadata i8* %20, metadata !1994, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i8* %19, metadata !1993, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i8* %18, metadata !1992, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !2019, metadata !DIExpression()) #20, !dbg !2078
  %21 = load i8*, i8** %14, align 8, !dbg !2082, !tbaa !2023
  %22 = load i8*, i8** %15, align 8, !dbg !2082, !tbaa !2024
  %23 = icmp ult i8* %21, %22, !dbg !2082
  br i1 %23, label %24, label %28, !dbg !2082, !prof !2025, !misexpect !2026

24:                                               ; preds = %17
  %25 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !2082
  store i8* %25, i8** %14, align 8, !dbg !2082, !tbaa !2023
  %26 = load i8, i8* %21, align 1, !dbg !2082, !tbaa !1466
  %27 = zext i8 %26 to i32, !dbg !2082
  call void @llvm.dbg.value(metadata i32 %29, metadata !1991, metadata !DIExpression()), !dbg !2069
  br label %41, !dbg !2083

28:                                               ; preds = %17
  %29 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %1) #20, !dbg !2082
  call void @llvm.dbg.value(metadata i32 %29, metadata !1991, metadata !DIExpression()), !dbg !2069
  %30 = icmp eq i32 %29, -1, !dbg !2084
  br i1 %30, label %31, label %41, !dbg !2083

31:                                               ; preds = %28
  %32 = icmp eq i8* %19, %18, !dbg !2085
  br i1 %32, label %64, label %33, !dbg !2086

33:                                               ; preds = %31
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !2034, metadata !DIExpression()), !dbg !2087
  %34 = load i32, i32* %7, align 8, !dbg !2089, !tbaa !1575
  %35 = and i32 %34, 32, !dbg !2089
  %36 = icmp eq i32 %35, 0, !dbg !2090
  br i1 %36, label %37, label %64, !dbg !2091

37:                                               ; preds = %33
  %38 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !2092
  %39 = load i8, i8* %38, align 1, !dbg !2092, !tbaa !1466
  %40 = icmp eq i8 %39, %2, !dbg !2093
  br i1 %40, label %57, label %41, !dbg !2094

41:                                               ; preds = %37, %24, %28
  %42 = phi i32 [ %29, %28 ], [ %27, %24 ], [ %16, %37 ], !dbg !2095
  call void @llvm.dbg.value(metadata i32 %42, metadata !1991, metadata !DIExpression()), !dbg !2069
  %43 = icmp eq i8* %19, %20, !dbg !2096
  br i1 %43, label %44, label %50, !dbg !2097

44:                                               ; preds = %41
  %45 = load i64, i64* %6, align 8, !dbg !2098, !tbaa !2014
  call void @llvm.dbg.value(metadata i64 %45, metadata !1995, metadata !DIExpression()), !dbg !2099
  %46 = tail call i8* @x2realloc(i8* %18, i64* nonnull %6) #20, !dbg !2100
  call void @llvm.dbg.value(metadata i8* %46, metadata !1992, metadata !DIExpression()), !dbg !2069
  %47 = getelementptr inbounds i8, i8* %46, i64 %45, !dbg !2101
  call void @llvm.dbg.value(metadata i8* %47, metadata !1993, metadata !DIExpression()), !dbg !2069
  store i8* %46, i8** %4, align 8, !dbg !2102, !tbaa !1601
  %48 = load i64, i64* %6, align 8, !dbg !2103, !tbaa !2014
  %49 = getelementptr inbounds i8, i8* %46, i64 %48, !dbg !2104
  call void @llvm.dbg.value(metadata i8* %49, metadata !1994, metadata !DIExpression()), !dbg !2069
  br label %50, !dbg !2105

50:                                               ; preds = %44, %41
  %51 = phi i8* [ %46, %44 ], [ %18, %41 ], !dbg !2069
  %52 = phi i8* [ %47, %44 ], [ %19, %41 ], !dbg !2069
  %53 = phi i8* [ %49, %44 ], [ %20, %41 ], !dbg !2069
  call void @llvm.dbg.value(metadata i8* %53, metadata !1994, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i8* %52, metadata !1993, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i8* %51, metadata !1992, metadata !DIExpression()), !dbg !2069
  %54 = trunc i32 %42 to i8, !dbg !2106
  %55 = getelementptr inbounds i8, i8* %52, i64 1, !dbg !2107
  call void @llvm.dbg.value(metadata i8* %55, metadata !1993, metadata !DIExpression()), !dbg !2069
  store i8 %54, i8* %52, align 1, !dbg !2108, !tbaa !1466
  %56 = icmp eq i32 %42, %16, !dbg !2109
  br i1 %56, label %57, label %17, !dbg !2110, !llvm.loop !2111

57:                                               ; preds = %50, %37
  %58 = phi i8* [ %18, %37 ], [ %51, %50 ], !dbg !2069
  %59 = phi i8* [ %19, %37 ], [ %55, %50 ], !dbg !2069
  call void @llvm.dbg.value(metadata i8* %59, metadata !1993, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i8* %58, metadata !1992, metadata !DIExpression()), !dbg !2069
  %60 = ptrtoint i8* %59 to i64, !dbg !2113
  %61 = ptrtoint i8* %58 to i64, !dbg !2113
  %62 = sub i64 %60, %61, !dbg !2113
  %63 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 1, !dbg !2114
  store i64 %62, i64* %63, align 8, !dbg !2115, !tbaa !1604
  br label %64, !dbg !2116

64:                                               ; preds = %31, %33, %3, %57
  %65 = phi %struct.linebuffer* [ %0, %57 ], [ null, %3 ], [ null, %33 ], [ null, %31 ], !dbg !2069
  ret %struct.linebuffer* %65, !dbg !2117
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @freebuffer(%struct.linebuffer* nocapture readonly %0) local_unnamed_addr #8 !dbg !2118 {
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !2120, metadata !DIExpression()), !dbg !2121
  %2 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !2122
  %3 = load i8*, i8** %2, align 8, !dbg !2122, !tbaa !1601
  tail call void @free(i8* %3) #20, !dbg !2123
  ret void, !dbg !2124
}

; Function Attrs: nounwind
declare !dbg !380 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @memcmp2(i8* nocapture readonly %0, i64 %1, i8* nocapture readonly %2, i64 %3) local_unnamed_addr #15 !dbg !2125 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2129, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %1, metadata !2130, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %2, metadata !2131, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %3, metadata !2132, metadata !DIExpression()), !dbg !2134
  %5 = icmp ugt i64 %1, %3, !dbg !2135
  %6 = select i1 %5, i64 %3, i64 %1, !dbg !2136
  %7 = tail call i32 @memcmp(i8* %0, i8* %2, i64 %6) #22, !dbg !2137
  call void @llvm.dbg.value(metadata i32 %7, metadata !2133, metadata !DIExpression()), !dbg !2134
  %8 = icmp eq i32 %7, 0, !dbg !2138
  br i1 %8, label %9, label %13, !dbg !2140

9:                                                ; preds = %4
  %10 = icmp ult i64 %1, %3, !dbg !2141
  br i1 %10, label %13, label %11, !dbg !2144

11:                                               ; preds = %9
  %12 = zext i1 %5 to i32, !dbg !2145
  ret i32 %12, !dbg !2145

13:                                               ; preds = %9, %4
  %14 = phi i32 [ %7, %4 ], [ -1, %9 ], !dbg !2134
  call void @llvm.dbg.value(metadata i32 %14, metadata !2133, metadata !DIExpression()), !dbg !2134
  ret i32 %14, !dbg !2146
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !2147 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2149, metadata !DIExpression()), !dbg !2152
  %2 = icmp eq i8* %0, null, !dbg !2153
  br i1 %2, label %3, label %6, !dbg !2155

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2156, !tbaa !1343
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.82, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #26, !dbg !2158
  tail call void @abort() #23, !dbg !2159
  unreachable, !dbg !2159

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #22, !dbg !2160
  call void @llvm.dbg.value(metadata i8* %7, metadata !2150, metadata !DIExpression()), !dbg !2152
  %8 = icmp eq i8* %7, null, !dbg !2161
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2162
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2162
  call void @llvm.dbg.value(metadata i8* %10, metadata !2151, metadata !DIExpression()), !dbg !2152
  %11 = ptrtoint i8* %10 to i64, !dbg !2163
  %12 = ptrtoint i8* %0 to i64, !dbg !2163
  %13 = sub i64 %11, %12, !dbg !2163
  %14 = icmp sgt i64 %13, 6, !dbg !2165
  br i1 %14, label %15, label %24, !dbg !2166

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2167
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.83, i64 0, i64 0), i64 7) #22, !dbg !2168
  %18 = icmp eq i32 %17, 0, !dbg !2169
  br i1 %18, label %19, label %24, !dbg !2170

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !2149, metadata !DIExpression()), !dbg !2152
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.84, i64 0, i64 0), i64 3) #22, !dbg !2171
  %21 = icmp eq i32 %20, 0, !dbg !2174
  br i1 %21, label %22, label %24, !dbg !2175

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2176
  call void @llvm.dbg.value(metadata i8* %23, metadata !2149, metadata !DIExpression()), !dbg !2152
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2178, !tbaa !1343
  br label %24, !dbg !2179

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !2149, metadata !DIExpression()), !dbg !2152
  store i8* %25, i8** @program_name, align 8, !dbg !2180, !tbaa !1343
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2181, !tbaa !1343
  ret void, !dbg !2182
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #16

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !2183 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2188, metadata !DIExpression()), !dbg !2191
  %2 = tail call i32* @__errno_location() #25, !dbg !2192
  %3 = load i32, i32* %2, align 4, !dbg !2192, !tbaa !1512
  call void @llvm.dbg.value(metadata i32 %3, metadata !2189, metadata !DIExpression()), !dbg !2191
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2193
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2193
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2193
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #20, !dbg !2194
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2194
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2190, metadata !DIExpression()), !dbg !2191
  store i32 %3, i32* %2, align 4, !dbg !2195, !tbaa !1512
  ret %struct.quoting_options* %8, !dbg !2196
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #17 !dbg !2197 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2201, metadata !DIExpression()), !dbg !2202
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2203
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2203
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2204
  %5 = load i32, i32* %4, align 8, !dbg !2204, !tbaa !2205
  ret i32 %5, !dbg !2207
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #11 !dbg !2208 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2212, metadata !DIExpression()), !dbg !2214
  call void @llvm.dbg.value(metadata i32 %1, metadata !2213, metadata !DIExpression()), !dbg !2214
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2215
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2215
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2216
  store i32 %1, i32* %5, align 8, !dbg !2217, !tbaa !2205
  ret void, !dbg !2218
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #18 !dbg !2219 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2223, metadata !DIExpression()), !dbg !2231
  call void @llvm.dbg.value(metadata i8 %1, metadata !2224, metadata !DIExpression()), !dbg !2231
  call void @llvm.dbg.value(metadata i32 %2, metadata !2225, metadata !DIExpression()), !dbg !2231
  call void @llvm.dbg.value(metadata i8 %1, metadata !2226, metadata !DIExpression()), !dbg !2231
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2232
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2232
  %6 = lshr i8 %1, 5, !dbg !2233
  %7 = zext i8 %6 to i64, !dbg !2233
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2234
  call void @llvm.dbg.value(metadata i32* %8, metadata !2227, metadata !DIExpression()), !dbg !2231
  %9 = and i8 %1, 31, !dbg !2235
  %10 = zext i8 %9 to i32, !dbg !2235
  call void @llvm.dbg.value(metadata i32 %10, metadata !2229, metadata !DIExpression()), !dbg !2231
  %11 = load i32, i32* %8, align 4, !dbg !2236, !tbaa !1512
  %12 = lshr i32 %11, %10, !dbg !2237
  %13 = and i32 %12, 1, !dbg !2238
  call void @llvm.dbg.value(metadata i32 %13, metadata !2230, metadata !DIExpression()), !dbg !2231
  %14 = and i32 %2, 1, !dbg !2239
  %15 = xor i32 %13, %14, !dbg !2240
  %16 = shl i32 %15, %10, !dbg !2241
  %17 = xor i32 %16, %11, !dbg !2242
  store i32 %17, i32* %8, align 4, !dbg !2242, !tbaa !1512
  ret i32 %13, !dbg !2243
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #18 !dbg !2244 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2248, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i32 %1, metadata !2249, metadata !DIExpression()), !dbg !2251
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2252
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2254
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2248, metadata !DIExpression()), !dbg !2251
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2255
  %6 = load i32, i32* %5, align 4, !dbg !2255, !tbaa !2256
  call void @llvm.dbg.value(metadata i32 %6, metadata !2250, metadata !DIExpression()), !dbg !2251
  store i32 %1, i32* %5, align 4, !dbg !2257, !tbaa !2256
  ret i32 %6, !dbg !2258
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2259 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2263, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i8* %1, metadata !2264, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i8* %2, metadata !2265, metadata !DIExpression()), !dbg !2266
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2267
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2269
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2263, metadata !DIExpression()), !dbg !2266
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2270
  store i32 10, i32* %6, align 8, !dbg !2271, !tbaa !2205
  %7 = icmp ne i8* %1, null, !dbg !2272
  %8 = icmp ne i8* %2, null, !dbg !2274
  %9 = and i1 %7, %8, !dbg !2275
  br i1 %9, label %11, label %10, !dbg !2275

10:                                               ; preds = %3
  tail call void @abort() #23, !dbg !2276
  unreachable, !dbg !2276

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2277
  store i8* %1, i8** %12, align 8, !dbg !2278, !tbaa !2279
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2280
  store i8* %2, i8** %13, align 8, !dbg !2281, !tbaa !2282
  ret void, !dbg !2283
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !2284 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2288, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata i64 %1, metadata !2289, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata i8* %2, metadata !2290, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata i64 %3, metadata !2291, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2292, metadata !DIExpression()), !dbg !2296
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2297
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2297
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2293, metadata !DIExpression()), !dbg !2296
  %8 = tail call i32* @__errno_location() #25, !dbg !2298
  %9 = load i32, i32* %8, align 4, !dbg !2298, !tbaa !1512
  call void @llvm.dbg.value(metadata i32 %9, metadata !2294, metadata !DIExpression()), !dbg !2296
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2299
  %11 = load i32, i32* %10, align 8, !dbg !2299, !tbaa !2205
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2300
  %13 = load i32, i32* %12, align 4, !dbg !2300, !tbaa !2256
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2301
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2302
  %16 = load i8*, i8** %15, align 8, !dbg !2302, !tbaa !2279
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2303
  %18 = load i8*, i8** %17, align 8, !dbg !2303, !tbaa !2282
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2304
  call void @llvm.dbg.value(metadata i64 %19, metadata !2295, metadata !DIExpression()), !dbg !2296
  store i32 %9, i32* %8, align 4, !dbg !2305, !tbaa !1512
  ret i64 %19, !dbg !2306
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !2307 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2313, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %1, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %2, metadata !2315, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %3, metadata !2316, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i32 %4, metadata !2317, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i32 %5, metadata !2318, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i32* %6, metadata !2319, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %7, metadata !2320, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %8, metadata !2321, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 0, metadata !2323, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 0, metadata !2324, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* null, metadata !2325, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 0, metadata !2326, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 0, metadata !2327, metadata !DIExpression()), !dbg !2371
  %13 = tail call i64 @__ctype_get_mb_cur_max() #20, !dbg !2372
  %14 = icmp eq i64 %13, 1, !dbg !2373
  call void @llvm.dbg.value(metadata i1 %14, metadata !2328, metadata !DIExpression()), !dbg !2371
  %15 = lshr i32 %5, 1, !dbg !2374
  %16 = trunc i32 %15 to i8, !dbg !2374
  %17 = and i8 %16, 1, !dbg !2374
  call void @llvm.dbg.value(metadata i8 %17, metadata !2329, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 0, metadata !2330, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 0, metadata !2331, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 1, metadata !2332, metadata !DIExpression()), !dbg !2371
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !2375
  %19 = and i32 %5, 4, !dbg !2377
  %20 = icmp eq i32 %19, 0, !dbg !2377
  %21 = and i32 %5, 1, !dbg !2380
  %22 = icmp eq i32 %21, 0, !dbg !2380
  %23 = bitcast i64* %10 to i8*, !dbg !2383
  %24 = bitcast i32* %12 to i8*, !dbg !2384
  %25 = icmp eq i32* %6, null, !dbg !2385
  br label %26, !dbg !2387

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !2388
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !2389
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !2390
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !2391
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !2371
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !2392
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !2393
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !2394
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %38, metadata !2332, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %37, metadata !2331, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %36, metadata !2330, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %35, metadata !2329, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %34, metadata !2316, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %33, metadata !2327, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %32, metadata !2326, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %31, metadata !2325, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %30, metadata !2324, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 0, metadata !2323, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %29, metadata !2321, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %28, metadata !2320, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i32 %27, metadata !2317, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.label(metadata !2365), !dbg !2395
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
  ], !dbg !2396

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !2317, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 1, metadata !2329, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %35, metadata !2329, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i32 5, metadata !2317, metadata !DIExpression()), !dbg !2371
  br label %92, !dbg !2397

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2329, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i32 5, metadata !2317, metadata !DIExpression()), !dbg !2371
  %42 = and i8 %35, 1, !dbg !2399
  %43 = icmp eq i8 %42, 0, !dbg !2399
  br i1 %43, label %44, label %92, !dbg !2397

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !2401
  br i1 %45, label %92, label %46, !dbg !2404

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !2401, !tbaa !1466
  br label %92, !dbg !2401

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.95, i64 0, i64 0), i32 %27), !dbg !2405
  call void @llvm.dbg.value(metadata i8* %48, metadata !2320, metadata !DIExpression()), !dbg !2371
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.96, i64 0, i64 0), i32 %27), !dbg !2409
  call void @llvm.dbg.value(metadata i8* %49, metadata !2321, metadata !DIExpression()), !dbg !2371
  br label %50, !dbg !2410

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !2321, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %51, metadata !2320, metadata !DIExpression()), !dbg !2371
  %53 = and i8 %35, 1, !dbg !2411
  %54 = icmp eq i8 %53, 0, !dbg !2411
  br i1 %54, label %55, label %70, !dbg !2413

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !2325, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 0, metadata !2323, metadata !DIExpression()), !dbg !2371
  %56 = load i8, i8* %51, align 1, !dbg !2414, !tbaa !1466
  %57 = icmp eq i8 %56, 0, !dbg !2417
  br i1 %57, label %70, label %58, !dbg !2417

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !2325, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %61, metadata !2323, metadata !DIExpression()), !dbg !2371
  %62 = icmp ult i64 %61, %39, !dbg !2418
  br i1 %62, label %63, label %65, !dbg !2421

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !2418
  store i8 %59, i8* %64, align 1, !dbg !2418, !tbaa !1466
  br label %65, !dbg !2418

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !2421
  call void @llvm.dbg.value(metadata i64 %66, metadata !2323, metadata !DIExpression()), !dbg !2371
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2422
  call void @llvm.dbg.value(metadata i8* %67, metadata !2325, metadata !DIExpression()), !dbg !2371
  %68 = load i8, i8* %67, align 1, !dbg !2414, !tbaa !1466
  %69 = icmp eq i8 %68, 0, !dbg !2417
  br i1 %69, label %70, label %58, !dbg !2417, !llvm.loop !2423

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !2425
  call void @llvm.dbg.value(metadata i64 %71, metadata !2323, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 1, metadata !2327, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %52, metadata !2325, metadata !DIExpression()), !dbg !2371
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #22, !dbg !2426
  call void @llvm.dbg.value(metadata i64 %72, metadata !2326, metadata !DIExpression()), !dbg !2371
  br label %92, !dbg !2427

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !2327, metadata !DIExpression()), !dbg !2371
  br label %74, !dbg !2428

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !2371
  call void @llvm.dbg.value(metadata i8 %75, metadata !2327, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 1, metadata !2329, metadata !DIExpression()), !dbg !2371
  br label %76, !dbg !2429

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !2391
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !2371
  call void @llvm.dbg.value(metadata i8 %78, metadata !2329, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %77, metadata !2327, metadata !DIExpression()), !dbg !2371
  %79 = and i8 %78, 1, !dbg !2430
  %80 = icmp eq i8 %79, 0, !dbg !2430
  %81 = select i1 %80, i8 1, i8 %77, !dbg !2432
  br label %82, !dbg !2432

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !2371
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !2374
  call void @llvm.dbg.value(metadata i8 %84, metadata !2329, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %83, metadata !2327, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i32 2, metadata !2317, metadata !DIExpression()), !dbg !2371
  %85 = and i8 %84, 1, !dbg !2433
  %86 = icmp eq i8 %85, 0, !dbg !2433
  br i1 %86, label %87, label %92, !dbg !2435

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !2436
  br i1 %88, label %92, label %89, !dbg !2439

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !2436, !tbaa !1466
  br label %92, !dbg !2436

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !2329, metadata !DIExpression()), !dbg !2371
  br label %92, !dbg !2440

91:                                               ; preds = %26
  call void @abort() #23, !dbg !2441
  unreachable, !dbg !2441

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !2425
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.97, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.97, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.97, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.96, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.96, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.96, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.97, i64 0, i64 0), %40 ], !dbg !2371
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !2371
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !2371
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !2371
  call void @llvm.dbg.value(metadata i8 %100, metadata !2329, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %99, metadata !2327, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %98, metadata !2326, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %97, metadata !2325, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %96, metadata !2323, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %95, metadata !2321, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %94, metadata !2320, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i32 %93, metadata !2317, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 0, metadata !2322, metadata !DIExpression()), !dbg !2371
  %101 = and i8 %99, 1, !dbg !2442
  %102 = icmp ne i8 %101, 0, !dbg !2442
  %103 = icmp ne i32 %93, 2, !dbg !2442
  %104 = and i1 %103, %102, !dbg !2442
  %105 = icmp ne i64 %98, 0, !dbg !2442
  %106 = and i1 %105, %104, !dbg !2442
  %107 = icmp ugt i64 %98, 1, !dbg !2442
  %108 = and i8 %100, 1, !dbg !2444
  %109 = icmp eq i8 %108, 0, !dbg !2444
  %110 = icmp eq i32 %93, 2, !dbg !2447
  %111 = or i1 %103, %109, !dbg !2449
  %112 = icmp ne i8 %108, 0, !dbg !2451
  %113 = and i1 %110, %112, !dbg !2451
  %114 = xor i1 %102, true, !dbg !2452
  %115 = xor i1 %104, true, !dbg !2385
  %116 = and i1 %109, %115, !dbg !2385
  %117 = or i1 %25, %116, !dbg !2385
  %118 = and i8 %99, %100, !dbg !2453
  %119 = and i8 %118, 1, !dbg !2453
  %120 = icmp ne i8 %119, 0, !dbg !2453
  %121 = and i1 %120, %105, !dbg !2453
  br label %122, !dbg !2455

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !2456
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !2425
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !2388
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !2392
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !2393
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !2394
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %129, metadata !2332, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %128, metadata !2331, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %127, metadata !2330, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %126, metadata !2316, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %125, metadata !2324, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %124, metadata !2323, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %123, metadata !2322, metadata !DIExpression()), !dbg !2371
  %131 = icmp eq i64 %126, -1, !dbg !2457
  br i1 %131, label %132, label %136, !dbg !2458

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2459
  %134 = load i8, i8* %133, align 1, !dbg !2459, !tbaa !1466
  %135 = icmp eq i8 %134, 0, !dbg !2460
  br i1 %135, label %581, label %138, !dbg !2461

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !2462
  br i1 %137, label %581, label %138, !dbg !2461

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !2338, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 0, metadata !2339, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 0, metadata !2340, metadata !DIExpression()), !dbg !2463
  br i1 %106, label %139, label %154, !dbg !2464

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !2465
  %141 = and i1 %107, %131, !dbg !2466
  br i1 %141, label %142, label %144, !dbg !2466

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #22, !dbg !2467
  call void @llvm.dbg.value(metadata i64 %143, metadata !2316, metadata !DIExpression()), !dbg !2371
  br label %144, !dbg !2468

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !2316, metadata !DIExpression()), !dbg !2371
  %146 = icmp ugt i64 %140, %145, !dbg !2469
  br i1 %146, label %154, label %147, !dbg !2470

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2471
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !2472
  %150 = icmp ne i32 %149, 0, !dbg !2473
  %151 = or i1 %150, %109, !dbg !2474
  %152 = xor i1 %150, true, !dbg !2474
  %153 = zext i1 %152 to i8, !dbg !2474
  br i1 %151, label %154, label %639, !dbg !2474

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !2463
  call void @llvm.dbg.value(metadata i8 %156, metadata !2338, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i64 %155, metadata !2316, metadata !DIExpression()), !dbg !2371
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2475
  %158 = load i8, i8* %157, align 1, !dbg !2475, !tbaa !1466
  call void @llvm.dbg.value(metadata i8 %158, metadata !2333, metadata !DIExpression()), !dbg !2463
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
  ], !dbg !2476

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !2477

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !2478

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !2339, metadata !DIExpression()), !dbg !2463
  %162 = and i8 %127, 1, !dbg !2481
  %163 = icmp eq i8 %162, 0, !dbg !2481
  %164 = and i1 %110, %163, !dbg !2481
  br i1 %164, label %165, label %181, !dbg !2481

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !2483
  br i1 %166, label %167, label %169, !dbg !2487

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2483
  store i8 39, i8* %168, align 1, !dbg !2483, !tbaa !1466
  br label %169, !dbg !2483

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !2487
  call void @llvm.dbg.value(metadata i64 %170, metadata !2323, metadata !DIExpression()), !dbg !2371
  %171 = icmp ult i64 %170, %130, !dbg !2488
  br i1 %171, label %172, label %174, !dbg !2491

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2488
  store i8 36, i8* %173, align 1, !dbg !2488, !tbaa !1466
  br label %174, !dbg !2488

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !2491
  call void @llvm.dbg.value(metadata i64 %175, metadata !2323, metadata !DIExpression()), !dbg !2371
  %176 = icmp ult i64 %175, %130, !dbg !2492
  br i1 %176, label %177, label %179, !dbg !2495

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2492
  store i8 39, i8* %178, align 1, !dbg !2492, !tbaa !1466
  br label %179, !dbg !2492

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !2495
  call void @llvm.dbg.value(metadata i64 %180, metadata !2323, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 1, metadata !2330, metadata !DIExpression()), !dbg !2371
  br label %181, !dbg !2496

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !2371
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !2371
  call void @llvm.dbg.value(metadata i8 %183, metadata !2330, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %182, metadata !2323, metadata !DIExpression()), !dbg !2371
  %184 = icmp ult i64 %182, %130, !dbg !2497
  br i1 %184, label %185, label %187, !dbg !2500

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2497
  store i8 92, i8* %186, align 1, !dbg !2497, !tbaa !1466
  br label %187, !dbg !2497

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2500
  call void @llvm.dbg.value(metadata i64 %188, metadata !2323, metadata !DIExpression()), !dbg !2371
  br i1 %103, label %189, label %463, !dbg !2501

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !2503
  %191 = icmp ult i64 %190, %155, !dbg !2504
  br i1 %191, label %192, label %463, !dbg !2505

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !2506
  %194 = load i8, i8* %193, align 1, !dbg !2506, !tbaa !1466
  %195 = add i8 %194, -48, !dbg !2507
  %196 = icmp ult i8 %195, 10, !dbg !2507
  br i1 %196, label %197, label %463, !dbg !2507

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !2508
  br i1 %198, label %199, label %201, !dbg !2512

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2508
  store i8 48, i8* %200, align 1, !dbg !2508, !tbaa !1466
  br label %201, !dbg !2508

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2512
  call void @llvm.dbg.value(metadata i64 %202, metadata !2323, metadata !DIExpression()), !dbg !2371
  %203 = icmp ult i64 %202, %130, !dbg !2513
  br i1 %203, label %204, label %206, !dbg !2516

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2513
  store i8 48, i8* %205, align 1, !dbg !2513, !tbaa !1466
  br label %206, !dbg !2513

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2516
  call void @llvm.dbg.value(metadata i64 %207, metadata !2323, metadata !DIExpression()), !dbg !2371
  br label %463, !dbg !2517

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !2518

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2519

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !2520

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !2521

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !2522
  %214 = icmp ult i64 %213, %155, !dbg !2523
  br i1 %214, label %215, label %463, !dbg !2524

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !2525
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2526
  %218 = load i8, i8* %217, align 1, !dbg !2526, !tbaa !1466
  %219 = icmp eq i8 %218, 63, !dbg !2527
  br i1 %219, label %220, label %463, !dbg !2528

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2529
  %222 = load i8, i8* %221, align 1, !dbg !2529, !tbaa !1466
  %223 = sext i8 %222 to i32, !dbg !2529
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
  ], !dbg !2530

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !2531

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !2333, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i64 %213, metadata !2322, metadata !DIExpression()), !dbg !2371
  %226 = icmp ult i64 %124, %130, !dbg !2533
  br i1 %226, label %227, label %229, !dbg !2536

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2533
  store i8 63, i8* %228, align 1, !dbg !2533, !tbaa !1466
  br label %229, !dbg !2533

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2536
  call void @llvm.dbg.value(metadata i64 %230, metadata !2323, metadata !DIExpression()), !dbg !2371
  %231 = icmp ult i64 %230, %130, !dbg !2537
  br i1 %231, label %232, label %234, !dbg !2540

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2537
  store i8 34, i8* %233, align 1, !dbg !2537, !tbaa !1466
  br label %234, !dbg !2537

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2540
  call void @llvm.dbg.value(metadata i64 %235, metadata !2323, metadata !DIExpression()), !dbg !2371
  %236 = icmp ult i64 %235, %130, !dbg !2541
  br i1 %236, label %237, label %239, !dbg !2544

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2541
  store i8 34, i8* %238, align 1, !dbg !2541, !tbaa !1466
  br label %239, !dbg !2541

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2544
  call void @llvm.dbg.value(metadata i64 %240, metadata !2323, metadata !DIExpression()), !dbg !2371
  %241 = icmp ult i64 %240, %130, !dbg !2545
  br i1 %241, label %242, label %244, !dbg !2548

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2545
  store i8 63, i8* %243, align 1, !dbg !2545, !tbaa !1466
  br label %244, !dbg !2545

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2548
  call void @llvm.dbg.value(metadata i64 %245, metadata !2323, metadata !DIExpression()), !dbg !2371
  br label %463, !dbg !2549

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !2337, metadata !DIExpression()), !dbg !2463
  br label %256, !dbg !2550

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !2337, metadata !DIExpression()), !dbg !2463
  br label %256, !dbg !2551

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !2337, metadata !DIExpression()), !dbg !2463
  br label %254, !dbg !2552

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !2337, metadata !DIExpression()), !dbg !2463
  br label %254, !dbg !2553

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !2337, metadata !DIExpression()), !dbg !2463
  br label %256, !dbg !2554

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !2337, metadata !DIExpression()), !dbg !2463
  br i1 %110, label %252, label %253, !dbg !2555

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !2556

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !2559

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !2560
  call void @llvm.dbg.value(metadata i8 %255, metadata !2337, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.label(metadata !2366), !dbg !2561
  br i1 %111, label %256, label %625, !dbg !2562

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !2560
  call void @llvm.dbg.value(metadata i8 %257, metadata !2337, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.label(metadata !2367), !dbg !2564
  br i1 %102, label %488, label %463, !dbg !2565

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2566

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2567, !tbaa !1466
  %261 = icmp eq i8 %260, 0, !dbg !2568
  br i1 %261, label %262, label %463, !dbg !2569

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !2570
  br i1 %263, label %264, label %463, !dbg !2572

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2340, metadata !DIExpression()), !dbg !2463
  br label %265, !dbg !2573

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !2463
  call void @llvm.dbg.value(metadata i8 %266, metadata !2340, metadata !DIExpression()), !dbg !2463
  br i1 %111, label %463, label %625, !dbg !2574

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2331, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 1, metadata !2340, metadata !DIExpression()), !dbg !2463
  br i1 %110, label %268, label %463, !dbg !2575

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !2576

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !2578
  %271 = icmp ne i64 %125, 0, !dbg !2580
  %272 = or i1 %271, %270, !dbg !2581
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !2581
  %274 = select i1 %272, i64 %130, i64 0, !dbg !2581
  call void @llvm.dbg.value(metadata i64 %274, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %273, metadata !2324, metadata !DIExpression()), !dbg !2371
  %275 = icmp ult i64 %124, %274, !dbg !2582
  br i1 %275, label %276, label %278, !dbg !2585

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2582
  store i8 39, i8* %277, align 1, !dbg !2582, !tbaa !1466
  br label %278, !dbg !2582

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !2585
  call void @llvm.dbg.value(metadata i64 %279, metadata !2323, metadata !DIExpression()), !dbg !2371
  %280 = icmp ult i64 %279, %274, !dbg !2586
  br i1 %280, label %281, label %283, !dbg !2589

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2586
  store i8 92, i8* %282, align 1, !dbg !2586, !tbaa !1466
  br label %283, !dbg !2586

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !2589
  call void @llvm.dbg.value(metadata i64 %284, metadata !2323, metadata !DIExpression()), !dbg !2371
  %285 = icmp ult i64 %284, %274, !dbg !2590
  br i1 %285, label %286, label %288, !dbg !2593

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2590
  store i8 39, i8* %287, align 1, !dbg !2590, !tbaa !1466
  br label %288, !dbg !2590

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !2593
  call void @llvm.dbg.value(metadata i64 %289, metadata !2323, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 0, metadata !2330, metadata !DIExpression()), !dbg !2371
  br label %463, !dbg !2594

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !2595

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !2341, metadata !DIExpression()), !dbg !2596
  %292 = tail call i16** @__ctype_b_loc() #25, !dbg !2597
  %293 = load i16*, i16** %292, align 8, !dbg !2597, !tbaa !1343
  %294 = zext i8 %158 to i64, !dbg !2597
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2597
  %296 = load i16, i16* %295, align 2, !dbg !2597, !tbaa !2599
  %297 = lshr i16 %296, 14, !dbg !2600
  %298 = trunc i16 %297 to i8, !dbg !2600
  %299 = and i8 %298, 1, !dbg !2600
  call void @llvm.dbg.value(metadata i8 %299, metadata !2344, metadata !DIExpression()), !dbg !2596
  br label %355, !dbg !2601

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #20, !dbg !2602
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !2345, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8* %23, metadata !2604, metadata !DIExpression()) #20, !dbg !2609
  call void @llvm.dbg.value(metadata i32 0, metadata !2607, metadata !DIExpression()) #20, !dbg !2609
  call void @llvm.dbg.value(metadata i64 8, metadata !2608, metadata !DIExpression()) #20, !dbg !2609
  store i64 0, i64* %10, align 8, !dbg !2611
  call void @llvm.dbg.value(metadata i64 0, metadata !2341, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i8 1, metadata !2344, metadata !DIExpression()), !dbg !2596
  %301 = icmp eq i64 %155, -1, !dbg !2612
  br i1 %301, label %302, label %304, !dbg !2614

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #22, !dbg !2615
  call void @llvm.dbg.value(metadata i64 %303, metadata !2316, metadata !DIExpression()), !dbg !2371
  br label %304, !dbg !2616

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !2463
  call void @llvm.dbg.value(metadata i64 %305, metadata !2316, metadata !DIExpression()), !dbg !2371
  br label %306, !dbg !2617

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !2618
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !2619
  call void @llvm.dbg.value(metadata i8 %308, metadata !2344, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i64 %307, metadata !2341, metadata !DIExpression()), !dbg !2596
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #20, !dbg !2620
  %309 = add i64 %307, %123, !dbg !2621
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !2622
  %311 = sub i64 %305, %309, !dbg !2623
  call void @llvm.dbg.value(metadata i32* %12, metadata !2351, metadata !DIExpression(DW_OP_deref)), !dbg !2384
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #20, !dbg !2624
  call void @llvm.dbg.value(metadata i64 %312, metadata !2354, metadata !DIExpression()), !dbg !2384
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !2625

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2341, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i64 %307, metadata !2341, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i64 %307, metadata !2341, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i64 %307, metadata !2341, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i64 %307, metadata !2341, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i64 %307, metadata !2341, metadata !DIExpression()), !dbg !2596
  %314 = icmp ugt i64 %305, %309, !dbg !2626
  br i1 %314, label %315, label %340, !dbg !2628

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !2629
  br label %317, !dbg !2629

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !2341, metadata !DIExpression()), !dbg !2596
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !2630
  %321 = load i8, i8* %320, align 1, !dbg !2630, !tbaa !1466
  %322 = icmp eq i8 %321, 0, !dbg !2628
  br i1 %322, label %340, label %323, !dbg !2629

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !2631
  call void @llvm.dbg.value(metadata i64 %324, metadata !2341, metadata !DIExpression()), !dbg !2596
  %325 = add i64 %324, %123, !dbg !2632
  %326 = icmp ult i64 %325, %305, !dbg !2626
  br i1 %326, label %317, label %340, !dbg !2628, !llvm.loop !2633

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !2634
  %329 = and i1 %113, %328, !dbg !2637
  call void @llvm.dbg.value(metadata i64 1, metadata !2355, metadata !DIExpression()), !dbg !2638
  br i1 %329, label %330, label %343, !dbg !2637

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !2355, metadata !DIExpression()), !dbg !2638
  %332 = add i64 %331, %309, !dbg !2639
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !2640
  %334 = load i8, i8* %333, align 1, !dbg !2640, !tbaa !1466
  %335 = sext i8 %334 to i32, !dbg !2640
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !2641

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !2642
  call void @llvm.dbg.value(metadata i64 %337, metadata !2355, metadata !DIExpression()), !dbg !2638
  %338 = icmp eq i64 %337, %312, !dbg !2634
  br i1 %338, label %343, label %330, !dbg !2643, !llvm.loop !2644

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2341, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i8 %308, metadata !2344, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i64 %307, metadata !2341, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i8 %308, metadata !2344, metadata !DIExpression()), !dbg !2596
  br label %340, !dbg !2646

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #20, !dbg !2646
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !2647, !tbaa !1512
  call void @llvm.dbg.value(metadata i32 %344, metadata !2351, metadata !DIExpression()), !dbg !2384
  %345 = call i32 @iswprint(i32 %344) #20, !dbg !2649
  %346 = icmp eq i32 %345, 0, !dbg !2649
  %347 = select i1 %346, i8 0, i8 %308, !dbg !2650
  call void @llvm.dbg.value(metadata i8 %347, metadata !2344, metadata !DIExpression()), !dbg !2596
  %348 = add i64 %312, %307, !dbg !2651
  call void @llvm.dbg.value(metadata i64 %348, metadata !2341, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i8 %347, metadata !2344, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i64 %348, metadata !2341, metadata !DIExpression()), !dbg !2596
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #20, !dbg !2646
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #22, !dbg !2652
  %350 = icmp eq i32 %349, 0, !dbg !2653
  br i1 %350, label %306, label %351, !dbg !2654, !llvm.loop !2655

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #20, !dbg !2657
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !2320, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %94, metadata !2320, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %94, metadata !2320, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %94, metadata !2320, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %94, metadata !2320, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %95, metadata !2321, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %95, metadata !2321, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %95, metadata !2321, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %95, metadata !2321, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %95, metadata !2321, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %130, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %130, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %130, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %130, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %130, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %305, metadata !2316, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %305, metadata !2316, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %305, metadata !2316, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %305, metadata !2316, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %305, metadata !2316, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %94, metadata !2320, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %94, metadata !2320, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %94, metadata !2320, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %94, metadata !2320, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %94, metadata !2320, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %95, metadata !2321, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %95, metadata !2321, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %95, metadata !2321, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %95, metadata !2321, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %95, metadata !2321, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %130, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %130, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %130, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %130, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %130, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %305, metadata !2316, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %305, metadata !2316, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %305, metadata !2316, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %305, metadata !2316, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %305, metadata !2316, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %94, metadata !2320, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %94, metadata !2320, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %94, metadata !2320, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %94, metadata !2320, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %94, metadata !2320, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %95, metadata !2321, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %95, metadata !2321, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %95, metadata !2321, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %95, metadata !2321, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %95, metadata !2321, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %130, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %130, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %130, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %130, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %130, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %305, metadata !2316, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %305, metadata !2316, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %305, metadata !2316, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %305, metadata !2316, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %305, metadata !2316, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %94, metadata !2320, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %94, metadata !2320, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %94, metadata !2320, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %94, metadata !2320, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %94, metadata !2320, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %95, metadata !2321, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %95, metadata !2321, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %95, metadata !2321, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %95, metadata !2321, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %95, metadata !2321, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %130, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %130, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %130, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %130, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %130, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %305, metadata !2316, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %305, metadata !2316, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %305, metadata !2316, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %305, metadata !2316, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %305, metadata !2316, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i32 2, metadata !2317, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i32 2, metadata !2317, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i32 2, metadata !2317, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i32 2, metadata !2317, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i32 2, metadata !2317, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %94, metadata !2320, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %94, metadata !2320, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %94, metadata !2320, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %94, metadata !2320, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %94, metadata !2320, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %95, metadata !2321, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %95, metadata !2321, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %95, metadata !2321, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %95, metadata !2321, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %95, metadata !2321, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %99, metadata !2327, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %99, metadata !2327, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %99, metadata !2327, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %99, metadata !2327, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %99, metadata !2327, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %130, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %130, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %130, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %130, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %130, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %305, metadata !2316, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %305, metadata !2316, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %305, metadata !2316, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %305, metadata !2316, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %305, metadata !2316, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i32 2, metadata !2317, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i32 2, metadata !2317, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i32 2, metadata !2317, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i32 2, metadata !2317, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i32 2, metadata !2317, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %94, metadata !2320, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %94, metadata !2320, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %94, metadata !2320, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %94, metadata !2320, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %94, metadata !2320, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %95, metadata !2321, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %95, metadata !2321, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %95, metadata !2321, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %95, metadata !2321, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %95, metadata !2321, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %99, metadata !2327, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %99, metadata !2327, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %99, metadata !2327, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %99, metadata !2327, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %99, metadata !2327, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %130, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %130, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %130, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %130, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %130, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %305, metadata !2316, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %305, metadata !2316, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %305, metadata !2316, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %305, metadata !2316, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %305, metadata !2316, metadata !DIExpression()), !dbg !2371
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #20, !dbg !2646
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #20, !dbg !2657
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !2463
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !2658
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !2658
  call void @llvm.dbg.value(metadata i8 %358, metadata !2344, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i64 %357, metadata !2341, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i64 %356, metadata !2316, metadata !DIExpression()), !dbg !2371
  %359 = and i8 %358, 1, !dbg !2659
  %360 = icmp ne i8 %359, 0, !dbg !2659
  call void @llvm.dbg.value(metadata i8 %359, metadata !2340, metadata !DIExpression()), !dbg !2463
  %361 = icmp ult i64 %357, 2, !dbg !2660
  %362 = or i1 %360, %114, !dbg !2661
  %363 = and i1 %361, %362, !dbg !2662
  br i1 %363, label %463, label %364, !dbg !2662

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !2663
  call void @llvm.dbg.value(metadata i64 %365, metadata !2362, metadata !DIExpression()), !dbg !2664
  br label %366, !dbg !2665

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !2456
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !2371
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !2392
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !2463
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !2463
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !2666
  call void @llvm.dbg.value(metadata i8 %372, metadata !2339, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 %371, metadata !2338, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 %370, metadata !2333, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 %369, metadata !2330, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %368, metadata !2323, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %367, metadata !2322, metadata !DIExpression()), !dbg !2371
  br i1 %362, label %419, label %373, !dbg !2667

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !2672

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !2339, metadata !DIExpression()), !dbg !2463
  %375 = and i8 %369, 1, !dbg !2675
  %376 = icmp eq i8 %375, 0, !dbg !2675
  %377 = and i1 %110, %376, !dbg !2675
  br i1 %377, label %378, label %394, !dbg !2675

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !2677
  br i1 %379, label %380, label %382, !dbg !2681

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2677
  store i8 39, i8* %381, align 1, !dbg !2677, !tbaa !1466
  br label %382, !dbg !2677

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !2681
  call void @llvm.dbg.value(metadata i64 %383, metadata !2323, metadata !DIExpression()), !dbg !2371
  %384 = icmp ult i64 %383, %130, !dbg !2682
  br i1 %384, label %385, label %387, !dbg !2685

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2682
  store i8 36, i8* %386, align 1, !dbg !2682, !tbaa !1466
  br label %387, !dbg !2682

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !2685
  call void @llvm.dbg.value(metadata i64 %388, metadata !2323, metadata !DIExpression()), !dbg !2371
  %389 = icmp ult i64 %388, %130, !dbg !2686
  br i1 %389, label %390, label %392, !dbg !2689

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !2686
  store i8 39, i8* %391, align 1, !dbg !2686, !tbaa !1466
  br label %392, !dbg !2686

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !2689
  call void @llvm.dbg.value(metadata i64 %393, metadata !2323, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 1, metadata !2330, metadata !DIExpression()), !dbg !2371
  br label %394, !dbg !2690

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !2371
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !2371
  call void @llvm.dbg.value(metadata i8 %396, metadata !2330, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %395, metadata !2323, metadata !DIExpression()), !dbg !2371
  %397 = icmp ult i64 %395, %130, !dbg !2691
  br i1 %397, label %398, label %400, !dbg !2694

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2691
  store i8 92, i8* %399, align 1, !dbg !2691, !tbaa !1466
  br label %400, !dbg !2691

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !2694
  call void @llvm.dbg.value(metadata i64 %401, metadata !2323, metadata !DIExpression()), !dbg !2371
  %402 = icmp ult i64 %401, %130, !dbg !2695
  br i1 %402, label %403, label %407, !dbg !2698

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !2695
  %405 = or i8 %404, 48, !dbg !2695
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2695
  store i8 %405, i8* %406, align 1, !dbg !2695, !tbaa !1466
  br label %407, !dbg !2695

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !2698
  call void @llvm.dbg.value(metadata i64 %408, metadata !2323, metadata !DIExpression()), !dbg !2371
  %409 = icmp ult i64 %408, %130, !dbg !2699
  br i1 %409, label %410, label %415, !dbg !2702

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !2699
  %412 = and i8 %411, 7, !dbg !2699
  %413 = or i8 %412, 48, !dbg !2699
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2699
  store i8 %413, i8* %414, align 1, !dbg !2699, !tbaa !1466
  br label %415, !dbg !2699

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !2702
  call void @llvm.dbg.value(metadata i64 %416, metadata !2323, metadata !DIExpression()), !dbg !2371
  %417 = and i8 %370, 7, !dbg !2703
  %418 = or i8 %417, 48, !dbg !2704
  call void @llvm.dbg.value(metadata i8 %418, metadata !2333, metadata !DIExpression()), !dbg !2463
  br label %428, !dbg !2705

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !2706
  %421 = icmp eq i8 %420, 0, !dbg !2706
  br i1 %421, label %428, label %422, !dbg !2708

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !2709
  br i1 %423, label %424, label %426, !dbg !2713

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2709
  store i8 92, i8* %425, align 1, !dbg !2709, !tbaa !1466
  br label %426, !dbg !2709

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !2713
  call void @llvm.dbg.value(metadata i64 %427, metadata !2323, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 0, metadata !2338, metadata !DIExpression()), !dbg !2463
  br label %428, !dbg !2714

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !2371
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !2392
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !2463
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !2463
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !2463
  call void @llvm.dbg.value(metadata i8 %433, metadata !2339, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 %432, metadata !2338, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 %431, metadata !2333, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 %430, metadata !2330, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %429, metadata !2323, metadata !DIExpression()), !dbg !2371
  %434 = add i64 %367, 1, !dbg !2715
  %435 = icmp ugt i64 %365, %434, !dbg !2717
  br i1 %435, label %436, label %526, !dbg !2718

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !2719
  %438 = icmp ne i8 %437, 0, !dbg !2719
  %439 = and i8 %433, 1, !dbg !2719
  %440 = icmp eq i8 %439, 0, !dbg !2719
  %441 = and i1 %438, %440, !dbg !2719
  br i1 %441, label %442, label %453, !dbg !2719

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !2722
  br i1 %443, label %444, label %446, !dbg !2726

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !2722
  store i8 39, i8* %445, align 1, !dbg !2722, !tbaa !1466
  br label %446, !dbg !2722

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !2726
  call void @llvm.dbg.value(metadata i64 %447, metadata !2323, metadata !DIExpression()), !dbg !2371
  %448 = icmp ult i64 %447, %130, !dbg !2727
  br i1 %448, label %449, label %451, !dbg !2730

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !2727
  store i8 39, i8* %450, align 1, !dbg !2727, !tbaa !1466
  br label %451, !dbg !2727

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !2730
  call void @llvm.dbg.value(metadata i64 %452, metadata !2323, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 0, metadata !2330, metadata !DIExpression()), !dbg !2371
  br label %453, !dbg !2731

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !2732
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !2371
  call void @llvm.dbg.value(metadata i8 %455, metadata !2330, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %454, metadata !2323, metadata !DIExpression()), !dbg !2371
  %456 = icmp ult i64 %454, %130, !dbg !2733
  br i1 %456, label %457, label %459, !dbg !2736

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2733
  store i8 %431, i8* %458, align 1, !dbg !2733, !tbaa !1466
  br label %459, !dbg !2733

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !2736
  call void @llvm.dbg.value(metadata i64 %460, metadata !2323, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %434, metadata !2322, metadata !DIExpression()), !dbg !2371
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !2737
  %462 = load i8, i8* %461, align 1, !dbg !2737, !tbaa !1466
  call void @llvm.dbg.value(metadata i8 %462, metadata !2333, metadata !DIExpression()), !dbg !2463
  br label %366, !dbg !2738, !llvm.loop !2739

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !2456
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !2371
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !2388
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !2742
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !2371
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !2371
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !2463
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !2463
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !2463
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %472, metadata !2340, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 %471, metadata !2339, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 %156, metadata !2338, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 %470, metadata !2333, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 %469, metadata !2331, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %468, metadata !2330, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %467, metadata !2316, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %466, metadata !2324, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %465, metadata !2323, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %464, metadata !2322, metadata !DIExpression()), !dbg !2371
  br i1 %117, label %486, label %474, !dbg !2743

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !2744
  %476 = zext i8 %475 to i64, !dbg !2744
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !2745
  %478 = load i32, i32* %477, align 4, !dbg !2745, !tbaa !1512
  %479 = and i8 %470, 31, !dbg !2746
  %480 = zext i8 %479 to i32, !dbg !2746
  %481 = shl nuw i32 1, %480, !dbg !2747
  %482 = and i32 %478, %481, !dbg !2747
  %483 = icmp eq i32 %482, 0, !dbg !2747
  %484 = icmp eq i8 %156, 0, !dbg !2748
  %485 = and i1 %484, %483, !dbg !2749
  br i1 %485, label %526, label %488, !dbg !2749

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !2748
  br i1 %487, label %526, label %488, !dbg !2750

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !2751
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !2371
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !2388
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !2742
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !2392
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !2393
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !2463
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !2463
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %496, metadata !2340, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 %495, metadata !2333, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 %494, metadata !2331, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %493, metadata !2330, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %492, metadata !2316, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %491, metadata !2324, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %490, metadata !2323, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %489, metadata !2322, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.label(metadata !2368), !dbg !2752
  br i1 %109, label %498, label %629, !dbg !2753

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !2339, metadata !DIExpression()), !dbg !2463
  %499 = and i8 %493, 1, !dbg !2755
  %500 = icmp eq i8 %499, 0, !dbg !2755
  %501 = and i1 %110, %500, !dbg !2755
  br i1 %501, label %502, label %518, !dbg !2755

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !2757
  br i1 %503, label %504, label %506, !dbg !2761

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !2757
  store i8 39, i8* %505, align 1, !dbg !2757, !tbaa !1466
  br label %506, !dbg !2757

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !2761
  call void @llvm.dbg.value(metadata i64 %507, metadata !2323, metadata !DIExpression()), !dbg !2371
  %508 = icmp ult i64 %507, %497, !dbg !2762
  br i1 %508, label %509, label %511, !dbg !2765

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !2762
  store i8 36, i8* %510, align 1, !dbg !2762, !tbaa !1466
  br label %511, !dbg !2762

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !2765
  call void @llvm.dbg.value(metadata i64 %512, metadata !2323, metadata !DIExpression()), !dbg !2371
  %513 = icmp ult i64 %512, %497, !dbg !2766
  br i1 %513, label %514, label %516, !dbg !2769

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2766
  store i8 39, i8* %515, align 1, !dbg !2766, !tbaa !1466
  br label %516, !dbg !2766

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !2769
  call void @llvm.dbg.value(metadata i64 %517, metadata !2323, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 1, metadata !2330, metadata !DIExpression()), !dbg !2371
  br label %518, !dbg !2770

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !2463
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !2371
  call void @llvm.dbg.value(metadata i8 %520, metadata !2330, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %519, metadata !2323, metadata !DIExpression()), !dbg !2371
  %521 = icmp ult i64 %519, %497, !dbg !2771
  br i1 %521, label %522, label %524, !dbg !2774

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2771
  store i8 92, i8* %523, align 1, !dbg !2771, !tbaa !1466
  br label %524, !dbg !2771

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !2774
  call void @llvm.dbg.value(metadata i64 %525, metadata !2323, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %536, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %535, metadata !2340, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 %534, metadata !2339, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 %533, metadata !2333, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 %532, metadata !2331, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %531, metadata !2330, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %530, metadata !2316, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %529, metadata !2324, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %528, metadata !2323, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %527, metadata !2322, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.label(metadata !2369), !dbg !2775
  br label %553, !dbg !2776

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !2751
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !2371
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !2388
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !2742
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !2392
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !2393
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !2779
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !2463
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !2463
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %535, metadata !2340, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 %534, metadata !2339, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 %533, metadata !2333, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 %532, metadata !2331, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %531, metadata !2330, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %530, metadata !2316, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %529, metadata !2324, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %528, metadata !2323, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %527, metadata !2322, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.label(metadata !2369), !dbg !2775
  %537 = and i8 %531, 1, !dbg !2776
  %538 = icmp ne i8 %537, 0, !dbg !2776
  %539 = and i8 %534, 1, !dbg !2776
  %540 = icmp eq i8 %539, 0, !dbg !2776
  %541 = and i1 %538, %540, !dbg !2776
  br i1 %541, label %542, label %553, !dbg !2776

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !2780
  br i1 %543, label %544, label %546, !dbg !2784

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2780
  store i8 39, i8* %545, align 1, !dbg !2780, !tbaa !1466
  br label %546, !dbg !2780

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !2784
  call void @llvm.dbg.value(metadata i64 %547, metadata !2323, metadata !DIExpression()), !dbg !2371
  %548 = icmp ult i64 %547, %536, !dbg !2785
  br i1 %548, label %549, label %551, !dbg !2788

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !2785
  store i8 39, i8* %550, align 1, !dbg !2785, !tbaa !1466
  br label %551, !dbg !2785

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !2788
  call void @llvm.dbg.value(metadata i64 %552, metadata !2323, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 0, metadata !2330, metadata !DIExpression()), !dbg !2371
  br label %553, !dbg !2789

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !2463
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !2371
  call void @llvm.dbg.value(metadata i8 %562, metadata !2330, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %561, metadata !2323, metadata !DIExpression()), !dbg !2371
  %563 = icmp ult i64 %561, %554, !dbg !2790
  br i1 %563, label %564, label %566, !dbg !2793

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !2790
  store i8 %556, i8* %565, align 1, !dbg !2790, !tbaa !1466
  br label %566, !dbg !2790

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2793
  call void @llvm.dbg.value(metadata i64 %567, metadata !2323, metadata !DIExpression()), !dbg !2371
  %568 = and i8 %555, 1, !dbg !2794
  %569 = icmp eq i8 %568, 0, !dbg !2794
  %570 = select i1 %569, i8 0, i8 %129, !dbg !2796
  call void @llvm.dbg.value(metadata i8 %570, metadata !2332, metadata !DIExpression()), !dbg !2371
  br label %571, !dbg !2797

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !2751
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !2371
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !2388
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !2742
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !2392
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !2371
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !2394
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %578, metadata !2332, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %577, metadata !2331, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %576, metadata !2330, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %575, metadata !2316, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %574, metadata !2324, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %573, metadata !2323, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %572, metadata !2322, metadata !DIExpression()), !dbg !2371
  %580 = add i64 %572, 1, !dbg !2798
  call void @llvm.dbg.value(metadata i64 %580, metadata !2322, metadata !DIExpression()), !dbg !2371
  br label %122, !dbg !2799, !llvm.loop !2800

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !2323, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %124, metadata !2323, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %125, metadata !2324, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %125, metadata !2324, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %127, metadata !2330, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %127, metadata !2330, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %128, metadata !2331, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %128, metadata !2331, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %129, metadata !2332, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %129, metadata !2332, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %130, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %130, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %124, metadata !2323, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %124, metadata !2323, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %125, metadata !2324, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %125, metadata !2324, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %127, metadata !2330, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %127, metadata !2330, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %128, metadata !2331, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %128, metadata !2331, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %129, metadata !2332, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %129, metadata !2332, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %130, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %130, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %124, metadata !2323, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %124, metadata !2323, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %125, metadata !2324, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %125, metadata !2324, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %127, metadata !2330, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %127, metadata !2330, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %128, metadata !2331, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %128, metadata !2331, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %129, metadata !2332, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %129, metadata !2332, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %130, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %130, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %124, metadata !2323, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %124, metadata !2323, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %125, metadata !2324, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %125, metadata !2324, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %127, metadata !2330, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %127, metadata !2330, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %128, metadata !2331, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %128, metadata !2331, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %129, metadata !2332, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %129, metadata !2332, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %130, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %130, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %124, metadata !2323, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %124, metadata !2323, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %125, metadata !2324, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %125, metadata !2324, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %582, metadata !2316, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %582, metadata !2316, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %127, metadata !2330, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %127, metadata !2330, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %128, metadata !2331, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %128, metadata !2331, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %129, metadata !2332, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %129, metadata !2332, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %130, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %130, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %124, metadata !2323, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %124, metadata !2323, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %125, metadata !2324, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %125, metadata !2324, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %582, metadata !2316, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %582, metadata !2316, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %127, metadata !2330, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %127, metadata !2330, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %128, metadata !2331, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %128, metadata !2331, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %129, metadata !2332, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %129, metadata !2332, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %130, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %130, metadata !2314, metadata !DIExpression()), !dbg !2371
  %583 = icmp eq i64 %124, 0, !dbg !2802
  %584 = and i1 %110, %583, !dbg !2804
  %585 = xor i1 %584, true, !dbg !2804
  %586 = or i1 %109, %585, !dbg !2804
  br i1 %586, label %587, label %629, !dbg !2804

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !2805
  %589 = xor i1 %588, true, !dbg !2805
  %590 = and i8 %128, 1, !dbg !2807
  %591 = icmp eq i8 %590, 0, !dbg !2807
  %592 = or i1 %591, %589, !dbg !2805
  br i1 %592, label %602, label %593, !dbg !2805

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !2808
  %595 = icmp eq i8 %594, 0, !dbg !2808
  br i1 %595, label %598, label %596, !dbg !2811

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !2316, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %94, metadata !2320, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %95, metadata !2321, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %125, metadata !2324, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %582, metadata !2316, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %94, metadata !2320, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %95, metadata !2321, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %125, metadata !2324, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %582, metadata !2316, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %94, metadata !2320, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %95, metadata !2321, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %125, metadata !2324, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %582, metadata !2316, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %94, metadata !2320, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %95, metadata !2321, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %125, metadata !2324, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %94, metadata !2320, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %95, metadata !2321, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %125, metadata !2324, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %582, metadata !2316, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %94, metadata !2320, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %95, metadata !2321, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %125, metadata !2324, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %582, metadata !2316, metadata !DIExpression()), !dbg !2371
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2812
  br label %645, !dbg !2813

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !2814
  %600 = icmp ne i64 %125, 0, !dbg !2816
  %601 = and i1 %600, %599, !dbg !2817
  br i1 %601, label %26, label %602, !dbg !2817

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !2325, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %97, metadata !2325, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %124, metadata !2323, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %124, metadata !2323, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %130, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %130, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %97, metadata !2325, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %97, metadata !2325, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %124, metadata !2323, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %124, metadata !2323, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %130, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %130, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %97, metadata !2325, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %97, metadata !2325, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %124, metadata !2323, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %124, metadata !2323, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %130, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %130, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %97, metadata !2325, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %97, metadata !2325, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %124, metadata !2323, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %124, metadata !2323, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %130, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %130, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %97, metadata !2325, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %97, metadata !2325, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %124, metadata !2323, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %124, metadata !2323, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %130, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %130, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %97, metadata !2325, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %97, metadata !2325, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %124, metadata !2323, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %124, metadata !2323, metadata !DIExpression()), !dbg !2371
  %603 = icmp ne i8* %97, null, !dbg !2818
  %604 = and i1 %603, %109, !dbg !2820
  br i1 %604, label %605, label %620, !dbg !2820

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !2325, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %124, metadata !2323, metadata !DIExpression()), !dbg !2371
  %606 = load i8, i8* %97, align 1, !dbg !2821, !tbaa !1466
  %607 = icmp eq i8 %606, 0, !dbg !2824
  br i1 %607, label %620, label %608, !dbg !2824

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !2325, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %611, metadata !2323, metadata !DIExpression()), !dbg !2371
  %612 = icmp ult i64 %611, %130, !dbg !2825
  br i1 %612, label %613, label %615, !dbg !2828

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !2825
  store i8 %609, i8* %614, align 1, !dbg !2825, !tbaa !1466
  br label %615, !dbg !2825

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !2828
  call void @llvm.dbg.value(metadata i64 %616, metadata !2323, metadata !DIExpression()), !dbg !2371
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !2829
  call void @llvm.dbg.value(metadata i8* %617, metadata !2325, metadata !DIExpression()), !dbg !2371
  %618 = load i8, i8* %617, align 1, !dbg !2821, !tbaa !1466
  %619 = icmp eq i8 %618, 0, !dbg !2824
  br i1 %619, label %620, label %608, !dbg !2824, !llvm.loop !2830

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !2425
  call void @llvm.dbg.value(metadata i64 %621, metadata !2323, metadata !DIExpression()), !dbg !2371
  %622 = icmp ult i64 %621, %130, !dbg !2832
  br i1 %622, label %623, label %645, !dbg !2834

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2835
  store i8 0, i8* %624, align 1, !dbg !2836, !tbaa !1466
  br label %645, !dbg !2835

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %630, metadata !2316, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.label(metadata !2370), !dbg !2837
  %627 = icmp eq i8 %101, 0, !dbg !2838
  %628 = select i1 %627, i32 2, i32 4, !dbg !2838
  br label %635, !dbg !2838

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2314, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %630, metadata !2316, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.label(metadata !2370), !dbg !2837
  %632 = icmp eq i32 %93, 2, !dbg !2840
  %633 = icmp eq i8 %101, 0, !dbg !2838
  %634 = select i1 %633, i32 2, i32 4, !dbg !2838
  br i1 %632, label %635, label %639, !dbg !2838

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !2838

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !2317, metadata !DIExpression()), !dbg !2371
  %643 = and i32 %5, -3, !dbg !2841
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !2842
  br label %645, !dbg !2843

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !2844
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2845 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2849, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i32 %1, metadata !2850, metadata !DIExpression()), !dbg !2853
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #20, !dbg !2854
  call void @llvm.dbg.value(metadata i8* %3, metadata !2851, metadata !DIExpression()), !dbg !2853
  %4 = icmp eq i8* %3, %0, !dbg !2855
  br i1 %4, label %5, label %71, !dbg !2857

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #20, !dbg !2858
  call void @llvm.dbg.value(metadata i8* %6, metadata !2852, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i8* %6, metadata !2859, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8* undef, metadata !2865, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8 85, metadata !2866, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8 84, metadata !2867, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8 70, metadata !2868, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8 45, metadata !2869, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8 56, metadata !2870, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8 0, metadata !2871, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8 0, metadata !2872, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8 0, metadata !2873, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8 0, metadata !2874, metadata !DIExpression()), !dbg !2875
  %7 = load i8, i8* %6, align 1, !dbg !2878, !tbaa !1466
  %8 = and i8 %7, -33, !dbg !2878
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2878

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2880, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i8* undef, metadata !2885, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i8 84, metadata !2886, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i8 70, metadata !2887, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i8 45, metadata !2888, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i8 56, metadata !2889, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i8 0, metadata !2890, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i8 0, metadata !2891, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i8 0, metadata !2892, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i8 0, metadata !2893, metadata !DIExpression()), !dbg !2894
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2898
  %11 = load i8, i8* %10, align 1, !dbg !2898, !tbaa !1466
  %12 = and i8 %11, -33, !dbg !2898
  %13 = icmp eq i8 %12, 84, !dbg !2898
  br i1 %13, label %14, label %68, !dbg !2898

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2900, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata i8* undef, metadata !2905, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata i8 70, metadata !2906, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata i8 45, metadata !2907, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata i8 56, metadata !2908, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata i8 0, metadata !2909, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata i8 0, metadata !2910, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata i8 0, metadata !2911, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata i8 0, metadata !2912, metadata !DIExpression()), !dbg !2913
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2917
  %16 = load i8, i8* %15, align 1, !dbg !2917, !tbaa !1466
  %17 = and i8 %16, -33, !dbg !2917
  %18 = icmp eq i8 %17, 70, !dbg !2917
  br i1 %18, label %19, label %68, !dbg !2917

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2919, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i8* undef, metadata !2924, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i8 45, metadata !2925, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i8 56, metadata !2926, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i8 0, metadata !2927, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i8 0, metadata !2928, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i8 0, metadata !2929, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i8 0, metadata !2930, metadata !DIExpression()), !dbg !2931
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2935
  %21 = load i8, i8* %20, align 1, !dbg !2935, !tbaa !1466
  %22 = icmp eq i8 %21, 45, !dbg !2935
  br i1 %22, label %23, label %68, !dbg !2937

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2938, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata i8* undef, metadata !2943, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata i8 56, metadata !2944, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata i8 0, metadata !2945, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata i8 0, metadata !2946, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata i8 0, metadata !2947, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata i8 0, metadata !2948, metadata !DIExpression()), !dbg !2949
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2953
  %25 = load i8, i8* %24, align 1, !dbg !2953, !tbaa !1466
  %26 = icmp eq i8 %25, 56, !dbg !2953
  br i1 %26, label %27, label %68, !dbg !2955

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2956, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i8* undef, metadata !2961, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i8 0, metadata !2962, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i8 0, metadata !2963, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i8 0, metadata !2964, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i8 0, metadata !2965, metadata !DIExpression()), !dbg !2966
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2970
  %29 = load i8, i8* %28, align 1, !dbg !2970, !tbaa !1466
  %30 = icmp eq i8 %29, 0, !dbg !2970
  br i1 %30, label %31, label %68, !dbg !2972

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2973, !tbaa !1466
  %33 = icmp eq i8 %32, 96, !dbg !2974
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.98, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.99, i64 0, i64 0), !dbg !2973
  br label %71, !dbg !2975

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2880, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i8* undef, metadata !2885, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i8 66, metadata !2886, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i8 49, metadata !2887, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i8 56, metadata !2888, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i8 48, metadata !2889, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i8 51, metadata !2890, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i8 48, metadata !2891, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i8 0, metadata !2892, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i8 0, metadata !2893, metadata !DIExpression()), !dbg !2976
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2980
  %37 = load i8, i8* %36, align 1, !dbg !2980, !tbaa !1466
  %38 = and i8 %37, -33, !dbg !2980
  %39 = icmp eq i8 %38, 66, !dbg !2980
  br i1 %39, label %40, label %68, !dbg !2980

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2900, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* undef, metadata !2905, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 49, metadata !2906, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 56, metadata !2907, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 48, metadata !2908, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 51, metadata !2909, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 48, metadata !2910, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 0, metadata !2911, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 0, metadata !2912, metadata !DIExpression()), !dbg !2981
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2983
  %42 = load i8, i8* %41, align 1, !dbg !2983, !tbaa !1466
  %43 = icmp eq i8 %42, 49, !dbg !2983
  br i1 %43, label %44, label %68, !dbg !2984

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2919, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i8* undef, metadata !2924, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i8 56, metadata !2925, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i8 48, metadata !2926, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i8 51, metadata !2927, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i8 48, metadata !2928, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i8 0, metadata !2929, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i8 0, metadata !2930, metadata !DIExpression()), !dbg !2985
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2987
  %46 = load i8, i8* %45, align 1, !dbg !2987, !tbaa !1466
  %47 = icmp eq i8 %46, 56, !dbg !2987
  br i1 %47, label %48, label %68, !dbg !2988

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2938, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.value(metadata i8* undef, metadata !2943, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.value(metadata i8 48, metadata !2944, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.value(metadata i8 51, metadata !2945, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.value(metadata i8 48, metadata !2946, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.value(metadata i8 0, metadata !2947, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.value(metadata i8 0, metadata !2948, metadata !DIExpression()), !dbg !2989
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2991
  %50 = load i8, i8* %49, align 1, !dbg !2991, !tbaa !1466
  %51 = icmp eq i8 %50, 48, !dbg !2991
  br i1 %51, label %52, label %68, !dbg !2992

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2956, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.value(metadata i8* undef, metadata !2961, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.value(metadata i8 51, metadata !2962, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.value(metadata i8 48, metadata !2963, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.value(metadata i8 0, metadata !2964, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.value(metadata i8 0, metadata !2965, metadata !DIExpression()), !dbg !2993
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2995
  %54 = load i8, i8* %53, align 1, !dbg !2995, !tbaa !1466
  %55 = icmp eq i8 %54, 51, !dbg !2995
  br i1 %55, label %56, label %68, !dbg !2996

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2997, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i8* undef, metadata !3002, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i8 48, metadata !3003, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i8 0, metadata !3004, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i8 0, metadata !3005, metadata !DIExpression()), !dbg !3006
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !3010
  %58 = load i8, i8* %57, align 1, !dbg !3010, !tbaa !1466
  %59 = icmp eq i8 %58, 48, !dbg !3010
  br i1 %59, label %60, label %68, !dbg !3012

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !3013, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata i8* undef, metadata !3018, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata i8 0, metadata !3019, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata i8 0, metadata !3020, metadata !DIExpression()), !dbg !3021
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !3025
  %62 = load i8, i8* %61, align 1, !dbg !3025, !tbaa !1466
  %63 = icmp eq i8 %62, 0, !dbg !3025
  br i1 %63, label %64, label %68, !dbg !3027

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !3028, !tbaa !1466
  %66 = icmp eq i8 %65, 96, !dbg !3029
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.100, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.101, i64 0, i64 0), !dbg !3028
  br label %71, !dbg !3030

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !3031
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.97, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.96, i64 0, i64 0), !dbg !3032
  br label %71, !dbg !3033

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2853
  ret i8* %72, !dbg !3034
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: nounwind
declare !dbg !403 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !407 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !3035 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3039, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i64 %1, metadata !3040, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3041, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i8* %0, metadata !3043, metadata !DIExpression()) #20, !dbg !3056
  call void @llvm.dbg.value(metadata i64 %1, metadata !3048, metadata !DIExpression()) #20, !dbg !3056
  call void @llvm.dbg.value(metadata i64* null, metadata !3049, metadata !DIExpression()) #20, !dbg !3056
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3050, metadata !DIExpression()) #20, !dbg !3056
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3058
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3058
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3051, metadata !DIExpression()) #20, !dbg !3056
  %6 = tail call i32* @__errno_location() #25, !dbg !3059
  %7 = load i32, i32* %6, align 4, !dbg !3059, !tbaa !1512
  call void @llvm.dbg.value(metadata i32 %7, metadata !3052, metadata !DIExpression()) #20, !dbg !3056
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3060
  %9 = load i32, i32* %8, align 4, !dbg !3060, !tbaa !2256
  %10 = or i32 %9, 1, !dbg !3061
  call void @llvm.dbg.value(metadata i32 %10, metadata !3053, metadata !DIExpression()) #20, !dbg !3056
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3062
  %12 = load i32, i32* %11, align 8, !dbg !3062, !tbaa !2205
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3063
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3064
  %15 = load i8*, i8** %14, align 8, !dbg !3064, !tbaa !2279
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3065
  %17 = load i8*, i8** %16, align 8, !dbg !3065, !tbaa !2282
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #20, !dbg !3066
  %19 = add i64 %18, 1, !dbg !3067
  call void @llvm.dbg.value(metadata i64 %19, metadata !3054, metadata !DIExpression()) #20, !dbg !3056
  call void @llvm.dbg.value(metadata i64 %19, metadata !3068, metadata !DIExpression()) #20, !dbg !3073
  %20 = tail call noalias i8* @xmalloc(i64 %19) #20, !dbg !3075
  call void @llvm.dbg.value(metadata i8* %20, metadata !3055, metadata !DIExpression()) #20, !dbg !3056
  %21 = load i32, i32* %11, align 8, !dbg !3076, !tbaa !2205
  %22 = load i8*, i8** %14, align 8, !dbg !3077, !tbaa !2279
  %23 = load i8*, i8** %16, align 8, !dbg !3078, !tbaa !2282
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #20, !dbg !3079
  store i32 %7, i32* %6, align 4, !dbg !3080, !tbaa !1512
  ret i8* %20, !dbg !3081
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !3044 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3043, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata i64 %1, metadata !3048, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata i64* %2, metadata !3049, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3050, metadata !DIExpression()), !dbg !3082
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3083
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3083
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3051, metadata !DIExpression()), !dbg !3082
  %7 = tail call i32* @__errno_location() #25, !dbg !3084
  %8 = load i32, i32* %7, align 4, !dbg !3084, !tbaa !1512
  call void @llvm.dbg.value(metadata i32 %8, metadata !3052, metadata !DIExpression()), !dbg !3082
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3085
  %10 = load i32, i32* %9, align 4, !dbg !3085, !tbaa !2256
  %11 = icmp ne i64* %2, null, !dbg !3086
  %12 = xor i1 %11, true, !dbg !3086
  %13 = zext i1 %12 to i32, !dbg !3086
  %14 = or i32 %10, %13, !dbg !3087
  call void @llvm.dbg.value(metadata i32 %14, metadata !3053, metadata !DIExpression()), !dbg !3082
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3088
  %16 = load i32, i32* %15, align 8, !dbg !3088, !tbaa !2205
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3089
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3090
  %19 = load i8*, i8** %18, align 8, !dbg !3090, !tbaa !2279
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3091
  %21 = load i8*, i8** %20, align 8, !dbg !3091, !tbaa !2282
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !3092
  %23 = add i64 %22, 1, !dbg !3093
  call void @llvm.dbg.value(metadata i64 %23, metadata !3054, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata i64 %23, metadata !3068, metadata !DIExpression()) #20, !dbg !3094
  %24 = tail call noalias i8* @xmalloc(i64 %23) #20, !dbg !3096
  call void @llvm.dbg.value(metadata i8* %24, metadata !3055, metadata !DIExpression()), !dbg !3082
  %25 = load i32, i32* %15, align 8, !dbg !3097, !tbaa !2205
  %26 = load i8*, i8** %18, align 8, !dbg !3098, !tbaa !2279
  %27 = load i8*, i8** %20, align 8, !dbg !3099, !tbaa !2282
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !3100
  store i32 %8, i32* %7, align 4, !dbg !3101, !tbaa !1512
  br i1 %11, label %29, label %30, !dbg !3102

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3103, !tbaa !1485
  br label %30, !dbg !3105

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !3106
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !3107 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3111, !tbaa !1343
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3109, metadata !DIExpression()), !dbg !3112
  call void @llvm.dbg.value(metadata i32 1, metadata !3110, metadata !DIExpression()), !dbg !3112
  %2 = load i32, i32* @nslots, align 4, !dbg !3113, !tbaa !1512
  %3 = icmp sgt i32 %2, 1, !dbg !3116
  br i1 %3, label %4, label %12, !dbg !3117

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !3110, metadata !DIExpression()), !dbg !3112
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !3118
  %7 = load i8*, i8** %6, align 8, !dbg !3118, !tbaa !3119
  tail call void @free(i8* %7) #20, !dbg !3121
  %8 = add nuw nsw i64 %5, 1, !dbg !3122
  call void @llvm.dbg.value(metadata i64 %8, metadata !3110, metadata !DIExpression()), !dbg !3112
  %9 = load i32, i32* @nslots, align 4, !dbg !3113, !tbaa !1512
  %10 = sext i32 %9 to i64, !dbg !3116
  %11 = icmp slt i64 %8, %10, !dbg !3116
  br i1 %11, label %4, label %12, !dbg !3117, !llvm.loop !3123

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3125
  %14 = load i8*, i8** %13, align 8, !dbg !3125, !tbaa !3119
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3127
  br i1 %15, label %17, label %16, !dbg !3128

16:                                               ; preds = %12
  tail call void @free(i8* %14) #20, !dbg !3129
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3131, !tbaa !3132
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3133, !tbaa !3119
  br label %17, !dbg !3134

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3135
  br i1 %18, label %21, label %19, !dbg !3137

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3138
  tail call void @free(i8* %20) #20, !dbg !3140
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3141, !tbaa !1343
  br label %21, !dbg !3142

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !3143, !tbaa !1512
  ret void, !dbg !3144
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3145 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3147, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata i8* %1, metadata !3148, metadata !DIExpression()), !dbg !3149
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3150
  ret i8* %3, !dbg !3151
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !3152 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3156, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata i8* %1, metadata !3157, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata i64 %2, metadata !3158, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3159, metadata !DIExpression()), !dbg !3171
  %5 = tail call i32* @__errno_location() #25, !dbg !3172
  %6 = load i32, i32* %5, align 4, !dbg !3172, !tbaa !1512
  call void @llvm.dbg.value(metadata i32 %6, metadata !3160, metadata !DIExpression()), !dbg !3171
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3173, !tbaa !1343
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !3161, metadata !DIExpression()), !dbg !3171
  %8 = icmp slt i32 %0, 0, !dbg !3174
  br i1 %8, label %9, label %10, !dbg !3176

9:                                                ; preds = %4
  tail call void @abort() #23, !dbg !3177
  unreachable, !dbg !3177

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3178, !tbaa !1512
  %12 = icmp sgt i32 %11, %0, !dbg !3179
  br i1 %12, label %34, label %13, !dbg !3180

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3181
  call void @llvm.dbg.value(metadata i1 %14, metadata !3162, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !3165, metadata !DIExpression()), !dbg !3182
  %15 = icmp eq i32 %0, 2147483647, !dbg !3183
  br i1 %15, label %16, label %17, !dbg !3185

16:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !3186
  unreachable, !dbg !3186

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !3187
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3187
  %20 = add nuw nsw i32 %0, 1, !dbg !3188
  %21 = sext i32 %20 to i64, !dbg !3189
  %22 = shl nuw nsw i64 %21, 4, !dbg !3190
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #20, !dbg !3191
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3191
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3161, metadata !DIExpression()), !dbg !3171
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3192, !tbaa !1343
  br i1 %14, label %25, label %26, !dbg !3193

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3194, !tbaa.struct !3196
  br label %26, !dbg !3197

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3198, !tbaa !1512
  %28 = sext i32 %27 to i64, !dbg !3199
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3199
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3200
  %31 = sub nsw i32 %20, %27, !dbg !3201
  %32 = sext i32 %31 to i64, !dbg !3202
  %33 = shl nsw i64 %32, 4, !dbg !3203
  call void @llvm.dbg.value(metadata i8* %30, metadata !2604, metadata !DIExpression()) #20, !dbg !3204
  call void @llvm.dbg.value(metadata i32 0, metadata !2607, metadata !DIExpression()) #20, !dbg !3204
  call void @llvm.dbg.value(metadata i64 %33, metadata !2608, metadata !DIExpression()) #20, !dbg !3204
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #20, !dbg !3206
  store i32 %20, i32* @nslots, align 4, !dbg !3207, !tbaa !1512
  br label %34, !dbg !3208

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !3171
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !3161, metadata !DIExpression()), !dbg !3171
  %36 = zext i32 %0 to i64, !dbg !3209
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3210
  %38 = load i64, i64* %37, align 8, !dbg !3210, !tbaa !3132
  call void @llvm.dbg.value(metadata i64 %38, metadata !3166, metadata !DIExpression()), !dbg !3211
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3212
  %40 = load i8*, i8** %39, align 8, !dbg !3212, !tbaa !3119
  call void @llvm.dbg.value(metadata i8* %40, metadata !3168, metadata !DIExpression()), !dbg !3211
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3213
  %42 = load i32, i32* %41, align 4, !dbg !3213, !tbaa !2256
  %43 = or i32 %42, 1, !dbg !3214
  call void @llvm.dbg.value(metadata i32 %43, metadata !3169, metadata !DIExpression()), !dbg !3211
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3215
  %45 = load i32, i32* %44, align 8, !dbg !3215, !tbaa !2205
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3216
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3217
  %48 = load i8*, i8** %47, align 8, !dbg !3217, !tbaa !2279
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3218
  %50 = load i8*, i8** %49, align 8, !dbg !3218, !tbaa !2282
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %51, metadata !3170, metadata !DIExpression()), !dbg !3211
  %52 = icmp ugt i64 %38, %51, !dbg !3220
  br i1 %52, label %63, label %53, !dbg !3222

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !3223
  call void @llvm.dbg.value(metadata i64 %54, metadata !3166, metadata !DIExpression()), !dbg !3211
  store i64 %54, i64* %37, align 8, !dbg !3225, !tbaa !3132
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3226
  br i1 %55, label %57, label %56, !dbg !3228

56:                                               ; preds = %53
  tail call void @free(i8* %40) #20, !dbg !3229
  br label %57, !dbg !3229

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !3068, metadata !DIExpression()) #20, !dbg !3230
  %58 = tail call noalias i8* @xmalloc(i64 %54) #20, !dbg !3232
  call void @llvm.dbg.value(metadata i8* %58, metadata !3168, metadata !DIExpression()), !dbg !3211
  store i8* %58, i8** %39, align 8, !dbg !3233, !tbaa !3119
  %59 = load i32, i32* %44, align 8, !dbg !3234, !tbaa !2205
  %60 = load i8*, i8** %47, align 8, !dbg !3235, !tbaa !2279
  %61 = load i8*, i8** %49, align 8, !dbg !3236, !tbaa !2282
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3237
  br label %63, !dbg !3238

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3211
  call void @llvm.dbg.value(metadata i8* %64, metadata !3168, metadata !DIExpression()), !dbg !3211
  store i32 %6, i32* %5, align 4, !dbg !3239, !tbaa !1512
  ret i8* %64, !dbg !3240
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3241 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3245, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata i8* %1, metadata !3246, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata i64 %2, metadata !3247, metadata !DIExpression()), !dbg !3248
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3249
  ret i8* %4, !dbg !3250
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !3251 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3253, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i32 0, metadata !3147, metadata !DIExpression()) #20, !dbg !3255
  call void @llvm.dbg.value(metadata i8* %0, metadata !3148, metadata !DIExpression()) #20, !dbg !3255
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #20, !dbg !3257
  ret i8* %2, !dbg !3258
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3259 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3263, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i64 %1, metadata !3264, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i32 0, metadata !3245, metadata !DIExpression()) #20, !dbg !3266
  call void @llvm.dbg.value(metadata i8* %0, metadata !3246, metadata !DIExpression()) #20, !dbg !3266
  call void @llvm.dbg.value(metadata i64 %1, metadata !3247, metadata !DIExpression()) #20, !dbg !3266
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #20, !dbg !3268
  ret i8* %3, !dbg !3269
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3270 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3272, metadata !DIExpression()), !dbg !3276
  call void @llvm.dbg.value(metadata i32 %1, metadata !3273, metadata !DIExpression()), !dbg !3276
  call void @llvm.dbg.value(metadata i8* %2, metadata !3274, metadata !DIExpression()), !dbg !3276
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3277
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3277
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3275, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.value(metadata i32 %1, metadata !3279, metadata !DIExpression()) #20, !dbg !3285
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3284, metadata !DIExpression()) #20, !dbg !3287
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #20, !dbg !3287, !alias.scope !3288
  %6 = icmp eq i32 %1, 10, !dbg !3291
  br i1 %6, label %7, label %8, !dbg !3293

7:                                                ; preds = %3
  tail call void @abort() #23, !dbg !3294, !noalias !3288
  unreachable, !dbg !3294

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3295
  store i32 %1, i32* %9, align 8, !dbg !3296, !tbaa !2205, !alias.scope !3288
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3297
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3298
  ret i8* %10, !dbg !3299
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3300 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3304, metadata !DIExpression()), !dbg !3309
  call void @llvm.dbg.value(metadata i32 %1, metadata !3305, metadata !DIExpression()), !dbg !3309
  call void @llvm.dbg.value(metadata i8* %2, metadata !3306, metadata !DIExpression()), !dbg !3309
  call void @llvm.dbg.value(metadata i64 %3, metadata !3307, metadata !DIExpression()), !dbg !3309
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3310
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3310
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3308, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.value(metadata i32 %1, metadata !3279, metadata !DIExpression()) #20, !dbg !3312
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3284, metadata !DIExpression()) #20, !dbg !3314
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #20, !dbg !3314, !alias.scope !3315
  %7 = icmp eq i32 %1, 10, !dbg !3318
  br i1 %7, label %8, label %9, !dbg !3319

8:                                                ; preds = %4
  tail call void @abort() #23, !dbg !3320, !noalias !3315
  unreachable, !dbg !3320

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3321
  store i32 %1, i32* %10, align 8, !dbg !3322, !tbaa !2205, !alias.scope !3315
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3323
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3324
  ret i8* %11, !dbg !3325
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3326 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3284, metadata !DIExpression()), !dbg !3332
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3275, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.value(metadata i32 %0, metadata !3330, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata i8* %1, metadata !3331, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata i32 0, metadata !3272, metadata !DIExpression()) #20, !dbg !3337
  call void @llvm.dbg.value(metadata i32 %0, metadata !3273, metadata !DIExpression()) #20, !dbg !3337
  call void @llvm.dbg.value(metadata i8* %1, metadata !3274, metadata !DIExpression()) #20, !dbg !3337
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3338
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3338
  call void @llvm.dbg.value(metadata i32 %0, metadata !3279, metadata !DIExpression()) #20, !dbg !3339
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #20, !dbg !3332, !alias.scope !3340
  %5 = icmp eq i32 %0, 10, !dbg !3343
  br i1 %5, label %6, label %7, !dbg !3344

6:                                                ; preds = %2
  tail call void @abort() #23, !dbg !3345, !noalias !3340
  unreachable, !dbg !3345

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3346
  store i32 %0, i32* %8, align 8, !dbg !3347, !tbaa !2205, !alias.scope !3340
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #20, !dbg !3348
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3349
  ret i8* %9, !dbg !3350
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3351 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3284, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3308, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata i32 %0, metadata !3355, metadata !DIExpression()), !dbg !3362
  call void @llvm.dbg.value(metadata i8* %1, metadata !3356, metadata !DIExpression()), !dbg !3362
  call void @llvm.dbg.value(metadata i64 %2, metadata !3357, metadata !DIExpression()), !dbg !3362
  call void @llvm.dbg.value(metadata i32 0, metadata !3304, metadata !DIExpression()) #20, !dbg !3363
  call void @llvm.dbg.value(metadata i32 %0, metadata !3305, metadata !DIExpression()) #20, !dbg !3363
  call void @llvm.dbg.value(metadata i8* %1, metadata !3306, metadata !DIExpression()) #20, !dbg !3363
  call void @llvm.dbg.value(metadata i64 %2, metadata !3307, metadata !DIExpression()) #20, !dbg !3363
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3364
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3364
  call void @llvm.dbg.value(metadata i32 %0, metadata !3279, metadata !DIExpression()) #20, !dbg !3365
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #20, !dbg !3358, !alias.scope !3366
  %6 = icmp eq i32 %0, 10, !dbg !3369
  br i1 %6, label %7, label %8, !dbg !3370

7:                                                ; preds = %3
  tail call void @abort() #23, !dbg !3371, !noalias !3366
  unreachable, !dbg !3371

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3372
  store i32 %0, i32* %9, align 8, !dbg !3373, !tbaa !2205, !alias.scope !3366
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #20, !dbg !3374
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3375
  ret i8* %10, !dbg !3376
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !3377 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3381, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata i64 %1, metadata !3382, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata i8 %2, metadata !3383, metadata !DIExpression()), !dbg !3385
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3386
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3386
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3384, metadata !DIExpression()), !dbg !3387
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3388, !tbaa.struct !3389
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2223, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata i8 %2, metadata !2224, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata i32 1, metadata !2225, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata i8 %2, metadata !2226, metadata !DIExpression()), !dbg !3390
  %6 = lshr i8 %2, 5, !dbg !3392
  %7 = zext i8 %6 to i64, !dbg !3392
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3393
  call void @llvm.dbg.value(metadata i32* %8, metadata !2227, metadata !DIExpression()), !dbg !3390
  %9 = and i8 %2, 31, !dbg !3394
  %10 = zext i8 %9 to i32, !dbg !3394
  call void @llvm.dbg.value(metadata i32 %10, metadata !2229, metadata !DIExpression()), !dbg !3390
  %11 = load i32, i32* %8, align 4, !dbg !3395, !tbaa !1512
  %12 = lshr i32 %11, %10, !dbg !3396
  %13 = and i32 %12, 1, !dbg !3397
  call void @llvm.dbg.value(metadata i32 %13, metadata !2230, metadata !DIExpression()), !dbg !3390
  %14 = xor i32 %13, 1, !dbg !3398
  %15 = shl i32 %14, %10, !dbg !3399
  %16 = xor i32 %15, %11, !dbg !3400
  store i32 %16, i32* %8, align 4, !dbg !3400, !tbaa !1512
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3401
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3402
  ret i8* %17, !dbg !3403
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !3404 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3384, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata i8* %0, metadata !3408, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata i8 %1, metadata !3409, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata i8* %0, metadata !3381, metadata !DIExpression()) #20, !dbg !3413
  call void @llvm.dbg.value(metadata i64 -1, metadata !3382, metadata !DIExpression()) #20, !dbg !3413
  call void @llvm.dbg.value(metadata i8 %1, metadata !3383, metadata !DIExpression()) #20, !dbg !3413
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3414
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3414
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3415, !tbaa.struct !3389
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2223, metadata !DIExpression()) #20, !dbg !3416
  call void @llvm.dbg.value(metadata i8 %1, metadata !2224, metadata !DIExpression()) #20, !dbg !3416
  call void @llvm.dbg.value(metadata i32 1, metadata !2225, metadata !DIExpression()) #20, !dbg !3416
  call void @llvm.dbg.value(metadata i8 %1, metadata !2226, metadata !DIExpression()) #20, !dbg !3416
  %5 = lshr i8 %1, 5, !dbg !3418
  %6 = zext i8 %5 to i64, !dbg !3418
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3419
  call void @llvm.dbg.value(metadata i32* %7, metadata !2227, metadata !DIExpression()) #20, !dbg !3416
  %8 = and i8 %1, 31, !dbg !3420
  %9 = zext i8 %8 to i32, !dbg !3420
  call void @llvm.dbg.value(metadata i32 %9, metadata !2229, metadata !DIExpression()) #20, !dbg !3416
  %10 = load i32, i32* %7, align 4, !dbg !3421, !tbaa !1512
  %11 = lshr i32 %10, %9, !dbg !3422
  %12 = and i32 %11, 1, !dbg !3423
  call void @llvm.dbg.value(metadata i32 %12, metadata !2230, metadata !DIExpression()) #20, !dbg !3416
  %13 = xor i32 %12, 1, !dbg !3424
  %14 = shl i32 %13, %9, !dbg !3425
  %15 = xor i32 %14, %10, !dbg !3426
  store i32 %15, i32* %7, align 4, !dbg !3426, !tbaa !1512
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #20, !dbg !3427
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3428
  ret i8* %16, !dbg !3429
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !3430 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3384, metadata !DIExpression()), !dbg !3433
  call void @llvm.dbg.value(metadata i8* %0, metadata !3432, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata i8* %0, metadata !3408, metadata !DIExpression()) #20, !dbg !3437
  call void @llvm.dbg.value(metadata i8 58, metadata !3409, metadata !DIExpression()) #20, !dbg !3437
  call void @llvm.dbg.value(metadata i8* %0, metadata !3381, metadata !DIExpression()) #20, !dbg !3438
  call void @llvm.dbg.value(metadata i64 -1, metadata !3382, metadata !DIExpression()) #20, !dbg !3438
  call void @llvm.dbg.value(metadata i8 58, metadata !3383, metadata !DIExpression()) #20, !dbg !3438
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3439
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #20, !dbg !3439
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3440, !tbaa.struct !3389
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2223, metadata !DIExpression()) #20, !dbg !3441
  call void @llvm.dbg.value(metadata i8 58, metadata !2224, metadata !DIExpression()) #20, !dbg !3441
  call void @llvm.dbg.value(metadata i32 1, metadata !2225, metadata !DIExpression()) #20, !dbg !3441
  call void @llvm.dbg.value(metadata i8 58, metadata !2226, metadata !DIExpression()) #20, !dbg !3441
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3443
  call void @llvm.dbg.value(metadata i32* %4, metadata !2227, metadata !DIExpression()) #20, !dbg !3441
  call void @llvm.dbg.value(metadata i32 26, metadata !2229, metadata !DIExpression()) #20, !dbg !3441
  %5 = load i32, i32* %4, align 4, !dbg !3444, !tbaa !1512
  call void @llvm.dbg.value(metadata i32 %5, metadata !2230, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #20, !dbg !3441
  %6 = or i32 %5, 67108864, !dbg !3445
  store i32 %6, i32* %4, align 4, !dbg !3445, !tbaa !1512
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #20, !dbg !3446
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #20, !dbg !3447
  ret i8* %7, !dbg !3448
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3449 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3384, metadata !DIExpression()), !dbg !3453
  call void @llvm.dbg.value(metadata i8* %0, metadata !3451, metadata !DIExpression()), !dbg !3455
  call void @llvm.dbg.value(metadata i64 %1, metadata !3452, metadata !DIExpression()), !dbg !3455
  call void @llvm.dbg.value(metadata i8* %0, metadata !3381, metadata !DIExpression()) #20, !dbg !3456
  call void @llvm.dbg.value(metadata i64 %1, metadata !3382, metadata !DIExpression()) #20, !dbg !3456
  call void @llvm.dbg.value(metadata i8 58, metadata !3383, metadata !DIExpression()) #20, !dbg !3456
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3457
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3457
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3458, !tbaa.struct !3389
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2223, metadata !DIExpression()) #20, !dbg !3459
  call void @llvm.dbg.value(metadata i8 58, metadata !2224, metadata !DIExpression()) #20, !dbg !3459
  call void @llvm.dbg.value(metadata i32 1, metadata !2225, metadata !DIExpression()) #20, !dbg !3459
  call void @llvm.dbg.value(metadata i8 58, metadata !2226, metadata !DIExpression()) #20, !dbg !3459
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3461
  call void @llvm.dbg.value(metadata i32* %5, metadata !2227, metadata !DIExpression()) #20, !dbg !3459
  call void @llvm.dbg.value(metadata i32 26, metadata !2229, metadata !DIExpression()) #20, !dbg !3459
  %6 = load i32, i32* %5, align 4, !dbg !3462, !tbaa !1512
  call void @llvm.dbg.value(metadata i32 %6, metadata !2230, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #20, !dbg !3459
  %7 = or i32 %6, 67108864, !dbg !3463
  store i32 %7, i32* %5, align 4, !dbg !3463, !tbaa !1512
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #20, !dbg !3464
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3465
  ret i8* %8, !dbg !3466
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3467 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3284, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3473
  call void @llvm.dbg.value(metadata i32 %0, metadata !3469, metadata !DIExpression()), !dbg !3475
  call void @llvm.dbg.value(metadata i32 %1, metadata !3470, metadata !DIExpression()), !dbg !3475
  call void @llvm.dbg.value(metadata i8* %2, metadata !3471, metadata !DIExpression()), !dbg !3475
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3476
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3476
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3472, metadata !DIExpression()), !dbg !3477
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3478
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3478
  call void @llvm.dbg.value(metadata i32 %1, metadata !3279, metadata !DIExpression()) #20, !dbg !3479
  call void @llvm.dbg.value(metadata i32 0, metadata !3284, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3479
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !3473, !alias.scope !3480
  %8 = icmp eq i32 %1, 10, !dbg !3483
  br i1 %8, label %9, label %10, !dbg !3484

9:                                                ; preds = %3
  tail call void @abort() #23, !dbg !3485, !noalias !3480
  unreachable, !dbg !3485

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3284, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3479
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3478
  store i32 %1, i32* %11, align 8, !dbg !3478, !tbaa.struct !3389
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3478
  %13 = bitcast i32* %12 to i8*, !dbg !3478
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !3478, !tbaa.struct !3389
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3478
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2223, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata i8 58, metadata !2224, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata i32 1, metadata !2225, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata i8 58, metadata !2226, metadata !DIExpression()), !dbg !3486
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3488
  call void @llvm.dbg.value(metadata i32* %14, metadata !2227, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata i32 26, metadata !2229, metadata !DIExpression()), !dbg !3486
  %15 = load i32, i32* %14, align 4, !dbg !3489, !tbaa !1512
  call void @llvm.dbg.value(metadata i32 %15, metadata !2230, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3486
  %16 = or i32 %15, 67108864, !dbg !3490
  store i32 %16, i32* %14, align 4, !dbg !3490, !tbaa !1512
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3491
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3492
  ret i8* %17, !dbg !3493
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3494 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3502, metadata !DIExpression()), !dbg !3512
  call void @llvm.dbg.value(metadata i32 %0, metadata !3498, metadata !DIExpression()), !dbg !3514
  call void @llvm.dbg.value(metadata i8* %1, metadata !3499, metadata !DIExpression()), !dbg !3514
  call void @llvm.dbg.value(metadata i8* %2, metadata !3500, metadata !DIExpression()), !dbg !3514
  call void @llvm.dbg.value(metadata i8* %3, metadata !3501, metadata !DIExpression()), !dbg !3514
  call void @llvm.dbg.value(metadata i32 %0, metadata !3507, metadata !DIExpression()) #20, !dbg !3515
  call void @llvm.dbg.value(metadata i8* %1, metadata !3508, metadata !DIExpression()) #20, !dbg !3515
  call void @llvm.dbg.value(metadata i8* %2, metadata !3509, metadata !DIExpression()) #20, !dbg !3515
  call void @llvm.dbg.value(metadata i8* %3, metadata !3510, metadata !DIExpression()) #20, !dbg !3515
  call void @llvm.dbg.value(metadata i64 -1, metadata !3511, metadata !DIExpression()) #20, !dbg !3515
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3516
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3516
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3517, !tbaa.struct !3389
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2263, metadata !DIExpression()) #20, !dbg !3518
  call void @llvm.dbg.value(metadata i8* %1, metadata !2264, metadata !DIExpression()) #20, !dbg !3518
  call void @llvm.dbg.value(metadata i8* %2, metadata !2265, metadata !DIExpression()) #20, !dbg !3518
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2263, metadata !DIExpression()) #20, !dbg !3518
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3520
  store i32 10, i32* %7, align 8, !dbg !3521, !tbaa !2205
  %8 = icmp ne i8* %1, null, !dbg !3522
  %9 = icmp ne i8* %2, null, !dbg !3523
  %10 = and i1 %8, %9, !dbg !3524
  br i1 %10, label %12, label %11, !dbg !3524

11:                                               ; preds = %4
  tail call void @abort() #23, !dbg !3525
  unreachable, !dbg !3525

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3526
  store i8* %1, i8** %13, align 8, !dbg !3527, !tbaa !2279
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3528
  store i8* %2, i8** %14, align 8, !dbg !3529, !tbaa !2282
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #20, !dbg !3530
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3531
  ret i8* %15, !dbg !3532
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !3503 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3507, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i8* %1, metadata !3508, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i8* %2, metadata !3509, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i8* %3, metadata !3510, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i64 %4, metadata !3511, metadata !DIExpression()), !dbg !3533
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3534
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #20, !dbg !3534
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3502, metadata !DIExpression()), !dbg !3535
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3536, !tbaa.struct !3389
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2263, metadata !DIExpression()) #20, !dbg !3537
  call void @llvm.dbg.value(metadata i8* %1, metadata !2264, metadata !DIExpression()) #20, !dbg !3537
  call void @llvm.dbg.value(metadata i8* %2, metadata !2265, metadata !DIExpression()) #20, !dbg !3537
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2263, metadata !DIExpression()) #20, !dbg !3537
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3539
  store i32 10, i32* %8, align 8, !dbg !3540, !tbaa !2205
  %9 = icmp ne i8* %1, null, !dbg !3541
  %10 = icmp ne i8* %2, null, !dbg !3542
  %11 = and i1 %9, %10, !dbg !3543
  br i1 %11, label %13, label %12, !dbg !3543

12:                                               ; preds = %5
  tail call void @abort() #23, !dbg !3544
  unreachable, !dbg !3544

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3545
  store i8* %1, i8** %14, align 8, !dbg !3546, !tbaa !2279
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3547
  store i8* %2, i8** %15, align 8, !dbg !3548, !tbaa !2282
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3549
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #20, !dbg !3550
  ret i8* %16, !dbg !3551
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3552 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3502, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata i8* %0, metadata !3556, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i8* %1, metadata !3557, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i8* %2, metadata !3558, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i32 0, metadata !3498, metadata !DIExpression()) #20, !dbg !3563
  call void @llvm.dbg.value(metadata i8* %0, metadata !3499, metadata !DIExpression()) #20, !dbg !3563
  call void @llvm.dbg.value(metadata i8* %1, metadata !3500, metadata !DIExpression()) #20, !dbg !3563
  call void @llvm.dbg.value(metadata i8* %2, metadata !3501, metadata !DIExpression()) #20, !dbg !3563
  call void @llvm.dbg.value(metadata i32 0, metadata !3507, metadata !DIExpression()) #20, !dbg !3564
  call void @llvm.dbg.value(metadata i8* %0, metadata !3508, metadata !DIExpression()) #20, !dbg !3564
  call void @llvm.dbg.value(metadata i8* %1, metadata !3509, metadata !DIExpression()) #20, !dbg !3564
  call void @llvm.dbg.value(metadata i8* %2, metadata !3510, metadata !DIExpression()) #20, !dbg !3564
  call void @llvm.dbg.value(metadata i64 -1, metadata !3511, metadata !DIExpression()) #20, !dbg !3564
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3565
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3565
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3566, !tbaa.struct !3389
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2263, metadata !DIExpression()) #20, !dbg !3567
  call void @llvm.dbg.value(metadata i8* %0, metadata !2264, metadata !DIExpression()) #20, !dbg !3567
  call void @llvm.dbg.value(metadata i8* %1, metadata !2265, metadata !DIExpression()) #20, !dbg !3567
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2263, metadata !DIExpression()) #20, !dbg !3567
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3569
  store i32 10, i32* %6, align 8, !dbg !3570, !tbaa !2205
  %7 = icmp ne i8* %0, null, !dbg !3571
  %8 = icmp ne i8* %1, null, !dbg !3572
  %9 = and i1 %7, %8, !dbg !3573
  br i1 %9, label %11, label %10, !dbg !3573

10:                                               ; preds = %3
  tail call void @abort() #23, !dbg !3574
  unreachable, !dbg !3574

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3575
  store i8* %0, i8** %12, align 8, !dbg !3576, !tbaa !2279
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3577
  store i8* %1, i8** %13, align 8, !dbg !3578, !tbaa !2282
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #20, !dbg !3579
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3580
  ret i8* %14, !dbg !3581
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3582 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3502, metadata !DIExpression()), !dbg !3590
  call void @llvm.dbg.value(metadata i8* %0, metadata !3586, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i8* %1, metadata !3587, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i8* %2, metadata !3588, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i64 %3, metadata !3589, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i32 0, metadata !3507, metadata !DIExpression()) #20, !dbg !3593
  call void @llvm.dbg.value(metadata i8* %0, metadata !3508, metadata !DIExpression()) #20, !dbg !3593
  call void @llvm.dbg.value(metadata i8* %1, metadata !3509, metadata !DIExpression()) #20, !dbg !3593
  call void @llvm.dbg.value(metadata i8* %2, metadata !3510, metadata !DIExpression()) #20, !dbg !3593
  call void @llvm.dbg.value(metadata i64 %3, metadata !3511, metadata !DIExpression()) #20, !dbg !3593
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3594
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3594
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3595, !tbaa.struct !3389
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2263, metadata !DIExpression()) #20, !dbg !3596
  call void @llvm.dbg.value(metadata i8* %0, metadata !2264, metadata !DIExpression()) #20, !dbg !3596
  call void @llvm.dbg.value(metadata i8* %1, metadata !2265, metadata !DIExpression()) #20, !dbg !3596
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2263, metadata !DIExpression()) #20, !dbg !3596
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3598
  store i32 10, i32* %7, align 8, !dbg !3599, !tbaa !2205
  %8 = icmp ne i8* %0, null, !dbg !3600
  %9 = icmp ne i8* %1, null, !dbg !3601
  %10 = and i1 %8, %9, !dbg !3602
  br i1 %10, label %12, label %11, !dbg !3602

11:                                               ; preds = %4
  tail call void @abort() #23, !dbg !3603
  unreachable, !dbg !3603

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3604
  store i8* %0, i8** %13, align 8, !dbg !3605, !tbaa !2279
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3606
  store i8* %1, i8** %14, align 8, !dbg !3607, !tbaa !2282
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #20, !dbg !3608
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3609
  ret i8* %15, !dbg !3610
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3611 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3615, metadata !DIExpression()), !dbg !3618
  call void @llvm.dbg.value(metadata i8* %1, metadata !3616, metadata !DIExpression()), !dbg !3618
  call void @llvm.dbg.value(metadata i64 %2, metadata !3617, metadata !DIExpression()), !dbg !3618
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3619
  ret i8* %4, !dbg !3620
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3621 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3625, metadata !DIExpression()), !dbg !3627
  call void @llvm.dbg.value(metadata i64 %1, metadata !3626, metadata !DIExpression()), !dbg !3627
  call void @llvm.dbg.value(metadata i32 0, metadata !3615, metadata !DIExpression()) #20, !dbg !3628
  call void @llvm.dbg.value(metadata i8* %0, metadata !3616, metadata !DIExpression()) #20, !dbg !3628
  call void @llvm.dbg.value(metadata i64 %1, metadata !3617, metadata !DIExpression()) #20, !dbg !3628
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #20, !dbg !3630
  ret i8* %3, !dbg !3631
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3632 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3636, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata i8* %1, metadata !3637, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata i32 %0, metadata !3615, metadata !DIExpression()) #20, !dbg !3639
  call void @llvm.dbg.value(metadata i8* %1, metadata !3616, metadata !DIExpression()) #20, !dbg !3639
  call void @llvm.dbg.value(metadata i64 -1, metadata !3617, metadata !DIExpression()) #20, !dbg !3639
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #20, !dbg !3641
  ret i8* %3, !dbg !3642
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3643 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3645, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i32 0, metadata !3636, metadata !DIExpression()) #20, !dbg !3647
  call void @llvm.dbg.value(metadata i8* %0, metadata !3637, metadata !DIExpression()) #20, !dbg !3647
  call void @llvm.dbg.value(metadata i32 0, metadata !3615, metadata !DIExpression()) #20, !dbg !3649
  call void @llvm.dbg.value(metadata i8* %0, metadata !3616, metadata !DIExpression()) #20, !dbg !3649
  call void @llvm.dbg.value(metadata i64 -1, metadata !3617, metadata !DIExpression()) #20, !dbg !3649
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #20, !dbg !3651
  ret i8* %2, !dbg !3652
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3653 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3657, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i8* %1, metadata !3658, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i64 %2, metadata !3659, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i32 %0, metadata !3661, metadata !DIExpression()) #20, !dbg !3670
  call void @llvm.dbg.value(metadata i8* %1, metadata !3664, metadata !DIExpression()) #20, !dbg !3670
  call void @llvm.dbg.value(metadata i64 %2, metadata !3665, metadata !DIExpression()) #20, !dbg !3670
  call void @llvm.dbg.value(metadata i32 %0, metadata !3672, metadata !DIExpression()) #20, !dbg !3678
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #20, !dbg !3680
  call void @llvm.dbg.value(metadata i8* %4, metadata !3677, metadata !DIExpression()) #20, !dbg !3678
  call void @llvm.dbg.value(metadata i8* %4, metadata !3666, metadata !DIExpression()) #20, !dbg !3670
  %5 = icmp eq i8* %4, null, !dbg !3681
  br i1 %5, label %6, label %9, !dbg !3682

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3683
  br i1 %7, label %19, label %8, !dbg !3686

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3687, !tbaa !1466
  br label %19, !dbg !3688

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #22, !dbg !3689
  call void @llvm.dbg.value(metadata i64 %10, metadata !3667, metadata !DIExpression()) #20, !dbg !3690
  %11 = icmp ult i64 %10, %2, !dbg !3691
  br i1 %11, label %12, label %14, !dbg !3693

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3694
  call void @llvm.dbg.value(metadata i8* %1, metadata !3696, metadata !DIExpression()) #20, !dbg !3705
  call void @llvm.dbg.value(metadata i8* %4, metadata !3703, metadata !DIExpression()) #20, !dbg !3705
  call void @llvm.dbg.value(metadata i64 %13, metadata !3704, metadata !DIExpression()) #20, !dbg !3705
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #20, !dbg !3707
  br label %19, !dbg !3708

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3709
  br i1 %15, label %19, label %16, !dbg !3712

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3713
  call void @llvm.dbg.value(metadata i8* %1, metadata !3696, metadata !DIExpression()) #20, !dbg !3715
  call void @llvm.dbg.value(metadata i8* %4, metadata !3703, metadata !DIExpression()) #20, !dbg !3715
  call void @llvm.dbg.value(metadata i64 %17, metadata !3704, metadata !DIExpression()) #20, !dbg !3715
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #20, !dbg !3717
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3718
  store i8 0, i8* %18, align 1, !dbg !3719, !tbaa !1466
  br label %19, !dbg !3720

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !3721
  ret i32 %20, !dbg !3722
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3723 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3725, metadata !DIExpression()), !dbg !3726
  call void @llvm.dbg.value(metadata i32 %0, metadata !3672, metadata !DIExpression()) #20, !dbg !3727
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #20, !dbg !3729
  call void @llvm.dbg.value(metadata i8* %2, metadata !3677, metadata !DIExpression()) #20, !dbg !3727
  ret i8* %2, !dbg !3730
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @dup_safer(i32 %0) local_unnamed_addr #8 !dbg !3731 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3733, metadata !DIExpression()), !dbg !3734
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 3) #20, !dbg !3735
  ret i32 %2, !dbg !3736
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3737 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3744, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata i8* %1, metadata !3745, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata i8* %2, metadata !3746, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata i8* %3, metadata !3747, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata i8** %4, metadata !3748, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata i64 %5, metadata !3749, metadata !DIExpression()), !dbg !3750
  %7 = icmp eq i8* %1, null, !dbg !3751
  br i1 %7, label %10, label %8, !dbg !3753

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.112, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #20, !dbg !3754
  br label %12, !dbg !3754

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.113, i64 0, i64 0), i8* %2, i8* %3) #20, !dbg !3755
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.114, i64 0, i64 0), i32 5) #20, !dbg !3756
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #20, !dbg !3756
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.115, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3757
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.116, i64 0, i64 0), i32 5) #20, !dbg !3758
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.117, i64 0, i64 0)) #20, !dbg !3758
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.115, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3759
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
  ], !dbg !3760

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.118, i64 0, i64 0), i32 5) #20, !dbg !3761
  %21 = load i8*, i8** %4, align 8, !dbg !3761, !tbaa !1343
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #20, !dbg !3761
  br label %147, !dbg !3763

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.119, i64 0, i64 0), i32 5) #20, !dbg !3764
  %25 = load i8*, i8** %4, align 8, !dbg !3764, !tbaa !1343
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3764
  %27 = load i8*, i8** %26, align 8, !dbg !3764, !tbaa !1343
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #20, !dbg !3764
  br label %147, !dbg !3765

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.120, i64 0, i64 0), i32 5) #20, !dbg !3766
  %31 = load i8*, i8** %4, align 8, !dbg !3766, !tbaa !1343
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3766
  %33 = load i8*, i8** %32, align 8, !dbg !3766, !tbaa !1343
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3766
  %35 = load i8*, i8** %34, align 8, !dbg !3766, !tbaa !1343
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #20, !dbg !3766
  br label %147, !dbg !3767

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.121, i64 0, i64 0), i32 5) #20, !dbg !3768
  %39 = load i8*, i8** %4, align 8, !dbg !3768, !tbaa !1343
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3768
  %41 = load i8*, i8** %40, align 8, !dbg !3768, !tbaa !1343
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3768
  %43 = load i8*, i8** %42, align 8, !dbg !3768, !tbaa !1343
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3768
  %45 = load i8*, i8** %44, align 8, !dbg !3768, !tbaa !1343
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #20, !dbg !3768
  br label %147, !dbg !3769

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.122, i64 0, i64 0), i32 5) #20, !dbg !3770
  %49 = load i8*, i8** %4, align 8, !dbg !3770, !tbaa !1343
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3770
  %51 = load i8*, i8** %50, align 8, !dbg !3770, !tbaa !1343
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3770
  %53 = load i8*, i8** %52, align 8, !dbg !3770, !tbaa !1343
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3770
  %55 = load i8*, i8** %54, align 8, !dbg !3770, !tbaa !1343
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3770
  %57 = load i8*, i8** %56, align 8, !dbg !3770, !tbaa !1343
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #20, !dbg !3770
  br label %147, !dbg !3771

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.123, i64 0, i64 0), i32 5) #20, !dbg !3772
  %61 = load i8*, i8** %4, align 8, !dbg !3772, !tbaa !1343
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3772
  %63 = load i8*, i8** %62, align 8, !dbg !3772, !tbaa !1343
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3772
  %65 = load i8*, i8** %64, align 8, !dbg !3772, !tbaa !1343
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3772
  %67 = load i8*, i8** %66, align 8, !dbg !3772, !tbaa !1343
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3772
  %69 = load i8*, i8** %68, align 8, !dbg !3772, !tbaa !1343
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3772
  %71 = load i8*, i8** %70, align 8, !dbg !3772, !tbaa !1343
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #20, !dbg !3772
  br label %147, !dbg !3773

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.124, i64 0, i64 0), i32 5) #20, !dbg !3774
  %75 = load i8*, i8** %4, align 8, !dbg !3774, !tbaa !1343
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3774
  %77 = load i8*, i8** %76, align 8, !dbg !3774, !tbaa !1343
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3774
  %79 = load i8*, i8** %78, align 8, !dbg !3774, !tbaa !1343
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3774
  %81 = load i8*, i8** %80, align 8, !dbg !3774, !tbaa !1343
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3774
  %83 = load i8*, i8** %82, align 8, !dbg !3774, !tbaa !1343
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3774
  %85 = load i8*, i8** %84, align 8, !dbg !3774, !tbaa !1343
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3774
  %87 = load i8*, i8** %86, align 8, !dbg !3774, !tbaa !1343
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #20, !dbg !3774
  br label %147, !dbg !3775

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.125, i64 0, i64 0), i32 5) #20, !dbg !3776
  %91 = load i8*, i8** %4, align 8, !dbg !3776, !tbaa !1343
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3776
  %93 = load i8*, i8** %92, align 8, !dbg !3776, !tbaa !1343
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3776
  %95 = load i8*, i8** %94, align 8, !dbg !3776, !tbaa !1343
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3776
  %97 = load i8*, i8** %96, align 8, !dbg !3776, !tbaa !1343
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3776
  %99 = load i8*, i8** %98, align 8, !dbg !3776, !tbaa !1343
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3776
  %101 = load i8*, i8** %100, align 8, !dbg !3776, !tbaa !1343
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3776
  %103 = load i8*, i8** %102, align 8, !dbg !3776, !tbaa !1343
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3776
  %105 = load i8*, i8** %104, align 8, !dbg !3776, !tbaa !1343
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #20, !dbg !3776
  br label %147, !dbg !3777

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.126, i64 0, i64 0), i32 5) #20, !dbg !3778
  %109 = load i8*, i8** %4, align 8, !dbg !3778, !tbaa !1343
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3778
  %111 = load i8*, i8** %110, align 8, !dbg !3778, !tbaa !1343
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3778
  %113 = load i8*, i8** %112, align 8, !dbg !3778, !tbaa !1343
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3778
  %115 = load i8*, i8** %114, align 8, !dbg !3778, !tbaa !1343
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3778
  %117 = load i8*, i8** %116, align 8, !dbg !3778, !tbaa !1343
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3778
  %119 = load i8*, i8** %118, align 8, !dbg !3778, !tbaa !1343
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3778
  %121 = load i8*, i8** %120, align 8, !dbg !3778, !tbaa !1343
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3778
  %123 = load i8*, i8** %122, align 8, !dbg !3778, !tbaa !1343
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3778
  %125 = load i8*, i8** %124, align 8, !dbg !3778, !tbaa !1343
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #20, !dbg !3778
  br label %147, !dbg !3779

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.127, i64 0, i64 0), i32 5) #20, !dbg !3780
  %129 = load i8*, i8** %4, align 8, !dbg !3780, !tbaa !1343
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3780
  %131 = load i8*, i8** %130, align 8, !dbg !3780, !tbaa !1343
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3780
  %133 = load i8*, i8** %132, align 8, !dbg !3780, !tbaa !1343
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3780
  %135 = load i8*, i8** %134, align 8, !dbg !3780, !tbaa !1343
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3780
  %137 = load i8*, i8** %136, align 8, !dbg !3780, !tbaa !1343
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3780
  %139 = load i8*, i8** %138, align 8, !dbg !3780, !tbaa !1343
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3780
  %141 = load i8*, i8** %140, align 8, !dbg !3780, !tbaa !1343
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3780
  %143 = load i8*, i8** %142, align 8, !dbg !3780, !tbaa !1343
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3780
  %145 = load i8*, i8** %144, align 8, !dbg !3780, !tbaa !1343
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #20, !dbg !3780
  br label %147, !dbg !3781

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3782
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3783 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3787, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata i8* %1, metadata !3788, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata i8* %2, metadata !3789, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata i8* %3, metadata !3790, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata i8** %4, metadata !3791, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata i64 0, metadata !3792, metadata !DIExpression()), !dbg !3793
  br label %6, !dbg !3794

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3796
  call void @llvm.dbg.value(metadata i64 %7, metadata !3792, metadata !DIExpression()), !dbg !3793
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3797
  %9 = load i8*, i8** %8, align 8, !dbg !3797, !tbaa !1343
  %10 = icmp eq i8* %9, null, !dbg !3799
  %11 = add i64 %7, 1, !dbg !3800
  call void @llvm.dbg.value(metadata i64 %11, metadata !3792, metadata !DIExpression()), !dbg !3793
  br i1 %10, label %12, label %6, !dbg !3799, !llvm.loop !3801

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3792, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata i64 %7, metadata !3792, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata i64 %7, metadata !3792, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata i64 %7, metadata !3792, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata i64 %7, metadata !3792, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata i64 %7, metadata !3792, metadata !DIExpression()), !dbg !3793
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3803
  ret void, !dbg !3804
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3805 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3816, metadata !DIExpression()), !dbg !3824
  call void @llvm.dbg.value(metadata i8* %1, metadata !3817, metadata !DIExpression()), !dbg !3824
  call void @llvm.dbg.value(metadata i8* %2, metadata !3818, metadata !DIExpression()), !dbg !3824
  call void @llvm.dbg.value(metadata i8* %3, metadata !3819, metadata !DIExpression()), !dbg !3824
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3820, metadata !DIExpression()), !dbg !3824
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3825
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #20, !dbg !3825
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3822, metadata !DIExpression()), !dbg !3826
  call void @llvm.dbg.value(metadata i64 0, metadata !3821, metadata !DIExpression()), !dbg !3824
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !3827
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !3827
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !3827
  %11 = load i32, i32* %8, align 8, !dbg !3830
  %12 = icmp ult i32 %11, 41, !dbg !3830
  br i1 %12, label %13, label %18, !dbg !3830

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3830
  %15 = zext i32 %11 to i64, !dbg !3830
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3830
  %17 = add nuw nsw i32 %11, 8, !dbg !3830
  store i32 %17, i32* %8, align 8, !dbg !3830
  br label %21, !dbg !3830

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3830
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3830
  store i8* %20, i8** %9, align 8, !dbg !3830
  br label %21, !dbg !3830

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3830
  %25 = load i8*, i8** %24, align 8, !dbg !3830
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3831
  store i8* %25, i8** %26, align 16, !dbg !3832, !tbaa !1343
  %27 = icmp eq i8* %25, null, !dbg !3833
  br i1 %27, label %30, label %28, !dbg !3834

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3821, metadata !DIExpression()), !dbg !3824
  %29 = icmp ult i32 %22, 41, !dbg !3830
  br i1 %29, label %35, label %32, !dbg !3830

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3835
  call void @llvm.dbg.value(metadata i64 %31, metadata !3821, metadata !DIExpression()), !dbg !3824
  call void @llvm.dbg.value(metadata i64 %31, metadata !3821, metadata !DIExpression()), !dbg !3824
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3836
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #20, !dbg !3837
  ret void, !dbg !3837

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3830
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3830
  store i8* %34, i8** %9, align 8, !dbg !3830
  br label %40, !dbg !3830

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3830
  %37 = zext i32 %22 to i64, !dbg !3830
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3830
  %39 = add nuw nsw i32 %22, 8, !dbg !3830
  store i32 %39, i32* %8, align 8, !dbg !3830
  br label %40, !dbg !3830

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3830
  %44 = load i8*, i8** %43, align 8, !dbg !3830
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3831
  store i8* %44, i8** %45, align 8, !dbg !3832, !tbaa !1343
  %46 = icmp eq i8* %44, null, !dbg !3833
  br i1 %46, label %30, label %47, !dbg !3834

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3821, metadata !DIExpression()), !dbg !3824
  %48 = icmp ult i32 %41, 41, !dbg !3830
  br i1 %48, label %52, label %49, !dbg !3830

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3830
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3830
  store i8* %51, i8** %9, align 8, !dbg !3830
  br label %57, !dbg !3830

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3830
  %54 = zext i32 %41 to i64, !dbg !3830
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3830
  %56 = add nuw nsw i32 %41, 8, !dbg !3830
  store i32 %56, i32* %8, align 8, !dbg !3830
  br label %57, !dbg !3830

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3830
  %61 = load i8*, i8** %60, align 8, !dbg !3830
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3831
  store i8* %61, i8** %62, align 16, !dbg !3832, !tbaa !1343
  %63 = icmp eq i8* %61, null, !dbg !3833
  br i1 %63, label %30, label %64, !dbg !3834

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3821, metadata !DIExpression()), !dbg !3824
  %65 = icmp ult i32 %58, 41, !dbg !3830
  br i1 %65, label %69, label %66, !dbg !3830

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3830
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3830
  store i8* %68, i8** %9, align 8, !dbg !3830
  br label %74, !dbg !3830

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3830
  %71 = zext i32 %58 to i64, !dbg !3830
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3830
  %73 = add nuw nsw i32 %58, 8, !dbg !3830
  store i32 %73, i32* %8, align 8, !dbg !3830
  br label %74, !dbg !3830

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3830
  %78 = load i8*, i8** %77, align 8, !dbg !3830
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3831
  store i8* %78, i8** %79, align 8, !dbg !3832, !tbaa !1343
  %80 = icmp eq i8* %78, null, !dbg !3833
  br i1 %80, label %30, label %81, !dbg !3834

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3821, metadata !DIExpression()), !dbg !3824
  %82 = icmp ult i32 %75, 41, !dbg !3830
  br i1 %82, label %86, label %83, !dbg !3830

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3830
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3830
  store i8* %85, i8** %9, align 8, !dbg !3830
  br label %91, !dbg !3830

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3830
  %88 = zext i32 %75 to i64, !dbg !3830
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3830
  %90 = add nuw nsw i32 %75, 8, !dbg !3830
  store i32 %90, i32* %8, align 8, !dbg !3830
  br label %91, !dbg !3830

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3830
  %95 = load i8*, i8** %94, align 8, !dbg !3830
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3831
  store i8* %95, i8** %96, align 16, !dbg !3832, !tbaa !1343
  %97 = icmp eq i8* %95, null, !dbg !3833
  br i1 %97, label %30, label %98, !dbg !3834

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3821, metadata !DIExpression()), !dbg !3824
  %99 = icmp ult i32 %92, 41, !dbg !3830
  br i1 %99, label %103, label %100, !dbg !3830

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3830
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3830
  store i8* %102, i8** %9, align 8, !dbg !3830
  br label %108, !dbg !3830

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3830
  %105 = zext i32 %92 to i64, !dbg !3830
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3830
  %107 = add nuw nsw i32 %92, 8, !dbg !3830
  store i32 %107, i32* %8, align 8, !dbg !3830
  br label %108, !dbg !3830

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3830
  %111 = load i8*, i8** %110, align 8, !dbg !3830
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3831
  store i8* %111, i8** %112, align 8, !dbg !3832, !tbaa !1343
  %113 = icmp eq i8* %111, null, !dbg !3833
  br i1 %113, label %30, label %114, !dbg !3834

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3821, metadata !DIExpression()), !dbg !3824
  %115 = load i8*, i8** %9, align 8, !dbg !3830
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3830
  store i8* %116, i8** %9, align 8, !dbg !3830
  %117 = bitcast i8* %115 to i8**, !dbg !3830
  %118 = load i8*, i8** %117, align 8, !dbg !3830
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3831
  store i8* %118, i8** %119, align 16, !dbg !3832, !tbaa !1343
  %120 = icmp eq i8* %118, null, !dbg !3833
  br i1 %120, label %30, label %121, !dbg !3834

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3821, metadata !DIExpression()), !dbg !3824
  %122 = load i8*, i8** %9, align 8, !dbg !3830
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3830
  store i8* %123, i8** %9, align 8, !dbg !3830
  %124 = bitcast i8* %122 to i8**, !dbg !3830
  %125 = load i8*, i8** %124, align 8, !dbg !3830
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3831
  store i8* %125, i8** %126, align 8, !dbg !3832, !tbaa !1343
  %127 = icmp eq i8* %125, null, !dbg !3833
  br i1 %127, label %30, label %128, !dbg !3834

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3821, metadata !DIExpression()), !dbg !3824
  %129 = load i8*, i8** %9, align 8, !dbg !3830
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3830
  store i8* %130, i8** %9, align 8, !dbg !3830
  %131 = bitcast i8* %129 to i8**, !dbg !3830
  %132 = load i8*, i8** %131, align 8, !dbg !3830
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3831
  store i8* %132, i8** %133, align 16, !dbg !3832, !tbaa !1343
  %134 = icmp eq i8* %132, null, !dbg !3833
  br i1 %134, label %30, label %135, !dbg !3834

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3821, metadata !DIExpression()), !dbg !3824
  %136 = load i8*, i8** %9, align 8, !dbg !3830
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3830
  store i8* %137, i8** %9, align 8, !dbg !3830
  %138 = bitcast i8* %136 to i8**, !dbg !3830
  %139 = load i8*, i8** %138, align 8, !dbg !3830
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3831
  store i8* %139, i8** %140, align 8, !dbg !3832, !tbaa !1343
  %141 = icmp eq i8* %139, null, !dbg !3833
  %142 = select i1 %141, i64 9, i64 10, !dbg !3834
  br label %30, !dbg !3834
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3838 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3842, metadata !DIExpression()), !dbg !3852
  call void @llvm.dbg.value(metadata i8* %1, metadata !3843, metadata !DIExpression()), !dbg !3852
  call void @llvm.dbg.value(metadata i8* %2, metadata !3844, metadata !DIExpression()), !dbg !3852
  call void @llvm.dbg.value(metadata i8* %3, metadata !3845, metadata !DIExpression()), !dbg !3852
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3853
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #20, !dbg !3853
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3846, metadata !DIExpression()), !dbg !3854
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3855
  call void @llvm.va_start(i8* nonnull %6), !dbg !3855
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3856
  call void @llvm.va_end(i8* nonnull %6), !dbg !3857
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #20, !dbg !3858
  ret void, !dbg !3858
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #20

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3859 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3860, !tbaa !1343
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.115, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3860
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.130, i64 0, i64 0), i32 5) #20, !dbg !3861
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.131, i64 0, i64 0)) #20, !dbg !3861
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.132, i64 0, i64 0), i32 5) #20, !dbg !3862
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.133, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.134, i64 0, i64 0)) #20, !dbg !3862
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.135, i64 0, i64 0), i32 5) #20, !dbg !3863
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.136, i64 0, i64 0)) #20, !dbg !3863
  ret void, !dbg !3864
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #21 !dbg !3865 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3869, metadata !DIExpression()), !dbg !3871
  call void @llvm.dbg.value(metadata i64 %1, metadata !3870, metadata !DIExpression()), !dbg !3871
  %3 = udiv i64 9223372036854775807, %1, !dbg !3872
  %4 = icmp ult i64 %3, %0, !dbg !3872
  br i1 %4, label %5, label %6, !dbg !3874

5:                                                ; preds = %2
  tail call void @xalloc_die() #23, !dbg !3875
  unreachable, !dbg !3875

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3876
  call void @llvm.dbg.value(metadata i64 %7, metadata !3877, metadata !DIExpression()) #20, !dbg !3883
  %8 = tail call noalias i8* @malloc(i64 %7) #20, !dbg !3885
  call void @llvm.dbg.value(metadata i8* %8, metadata !3882, metadata !DIExpression()) #20, !dbg !3883
  %9 = icmp eq i8* %8, null, !dbg !3886
  %10 = icmp ne i64 %7, 0, !dbg !3888
  %11 = and i1 %10, %9, !dbg !3889
  br i1 %11, label %12, label %13, !dbg !3889

12:                                               ; preds = %6
  tail call void @xalloc_die() #23, !dbg !3890
  unreachable, !dbg !3890

13:                                               ; preds = %6
  ret i8* %8, !dbg !3891
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3878 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3877, metadata !DIExpression()), !dbg !3892
  %2 = tail call noalias i8* @malloc(i64 %0) #20, !dbg !3893
  call void @llvm.dbg.value(metadata i8* %2, metadata !3882, metadata !DIExpression()), !dbg !3892
  %3 = icmp eq i8* %2, null, !dbg !3894
  %4 = icmp ne i64 %0, 0, !dbg !3895
  %5 = and i1 %4, %3, !dbg !3896
  br i1 %5, label %6, label %7, !dbg !3896

6:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !3897
  unreachable, !dbg !3897

7:                                                ; preds = %1
  ret i8* %2, !dbg !3898
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #21 !dbg !3899 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3903, metadata !DIExpression()), !dbg !3906
  call void @llvm.dbg.value(metadata i64 %1, metadata !3904, metadata !DIExpression()), !dbg !3906
  call void @llvm.dbg.value(metadata i64 %2, metadata !3905, metadata !DIExpression()), !dbg !3906
  %4 = udiv i64 9223372036854775807, %2, !dbg !3907
  %5 = icmp ult i64 %4, %1, !dbg !3907
  br i1 %5, label %6, label %7, !dbg !3909

6:                                                ; preds = %3
  tail call void @xalloc_die() #23, !dbg !3910
  unreachable, !dbg !3910

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3911
  call void @llvm.dbg.value(metadata i8* %0, metadata !3912, metadata !DIExpression()) #20, !dbg !3918
  call void @llvm.dbg.value(metadata i64 %8, metadata !3917, metadata !DIExpression()) #20, !dbg !3918
  %9 = icmp eq i64 %8, 0, !dbg !3920
  %10 = icmp ne i8* %0, null, !dbg !3922
  %11 = and i1 %10, %9, !dbg !3923
  br i1 %11, label %12, label %13, !dbg !3923

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #20, !dbg !3924
  br label %19, !dbg !3926

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #20, !dbg !3927
  call void @llvm.dbg.value(metadata i8* %14, metadata !3912, metadata !DIExpression()) #20, !dbg !3918
  %15 = icmp eq i8* %14, null, !dbg !3928
  %16 = icmp ne i64 %8, 0, !dbg !3930
  %17 = and i1 %16, %15, !dbg !3931
  br i1 %17, label %18, label %19, !dbg !3931

18:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !3932
  unreachable, !dbg !3932

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3918
  ret i8* %20, !dbg !3933
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3913 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3912, metadata !DIExpression()), !dbg !3934
  call void @llvm.dbg.value(metadata i64 %1, metadata !3917, metadata !DIExpression()), !dbg !3934
  %3 = icmp eq i64 %1, 0, !dbg !3935
  %4 = icmp ne i8* %0, null, !dbg !3936
  %5 = and i1 %4, %3, !dbg !3937
  br i1 %5, label %6, label %7, !dbg !3937

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #20, !dbg !3938
  br label %13, !dbg !3939

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #20, !dbg !3940
  call void @llvm.dbg.value(metadata i8* %8, metadata !3912, metadata !DIExpression()), !dbg !3934
  %9 = icmp eq i8* %8, null, !dbg !3941
  %10 = icmp ne i64 %1, 0, !dbg !3942
  %11 = and i1 %10, %9, !dbg !3943
  br i1 %11, label %12, label %13, !dbg !3943

12:                                               ; preds = %7
  tail call void @xalloc_die() #23, !dbg !3944
  unreachable, !dbg !3944

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3934
  ret i8* %14, !dbg !3945
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #21 !dbg !697 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !702, metadata !DIExpression()), !dbg !3946
  call void @llvm.dbg.value(metadata i64* %1, metadata !703, metadata !DIExpression()), !dbg !3946
  call void @llvm.dbg.value(metadata i64 %2, metadata !704, metadata !DIExpression()), !dbg !3946
  %4 = load i64, i64* %1, align 8, !dbg !3947, !tbaa !1485
  call void @llvm.dbg.value(metadata i64 %4, metadata !705, metadata !DIExpression()), !dbg !3946
  %5 = icmp eq i8* %0, null, !dbg !3948
  br i1 %5, label %6, label %20, !dbg !3950

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3951
  br i1 %7, label %8, label %13, !dbg !3954

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3955
  call void @llvm.dbg.value(metadata i64 %9, metadata !705, metadata !DIExpression()), !dbg !3946
  %10 = icmp ugt i64 %2, 128, !dbg !3957
  %11 = zext i1 %10 to i64, !dbg !3957
  %12 = add nuw nsw i64 %9, %11, !dbg !3958
  call void @llvm.dbg.value(metadata i64 %12, metadata !705, metadata !DIExpression()), !dbg !3946
  br label %13, !dbg !3959

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3946
  call void @llvm.dbg.value(metadata i64 %14, metadata !705, metadata !DIExpression()), !dbg !3946
  %15 = udiv i64 9223372036854775807, %2, !dbg !3960
  %16 = icmp ult i64 %15, %14, !dbg !3960
  br i1 %16, label %19, label %17, !dbg !3962

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !705, metadata !DIExpression()), !dbg !3946
  store i64 %14, i64* %1, align 8, !dbg !3963, !tbaa !1485
  %18 = mul i64 %14, %2, !dbg !3964
  call void @llvm.dbg.value(metadata i8* %0, metadata !3912, metadata !DIExpression()) #20, !dbg !3965
  call void @llvm.dbg.value(metadata i64 %28, metadata !3917, metadata !DIExpression()) #20, !dbg !3965
  br label %31, !dbg !3967

19:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !3968
  unreachable, !dbg !3968

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3969
  %22 = icmp ugt i64 %21, %4, !dbg !3972
  br i1 %22, label %24, label %23, !dbg !3973

23:                                               ; preds = %20
  tail call void @xalloc_die() #23, !dbg !3974
  unreachable, !dbg !3974

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3975
  %26 = add nuw i64 %4, 1, !dbg !3976
  %27 = add i64 %26, %25, !dbg !3977
  call void @llvm.dbg.value(metadata i64 %27, metadata !705, metadata !DIExpression()), !dbg !3946
  call void @llvm.dbg.value(metadata i64 %27, metadata !705, metadata !DIExpression()), !dbg !3946
  store i64 %27, i64* %1, align 8, !dbg !3963, !tbaa !1485
  %28 = mul i64 %27, %2, !dbg !3964
  call void @llvm.dbg.value(metadata i8* %0, metadata !3912, metadata !DIExpression()) #20, !dbg !3965
  call void @llvm.dbg.value(metadata i64 %28, metadata !3917, metadata !DIExpression()) #20, !dbg !3965
  %29 = icmp eq i64 %28, 0, !dbg !3978
  br i1 %29, label %30, label %31, !dbg !3967

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #20, !dbg !3979
  br label %38, !dbg !3980

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #20, !dbg !3981
  call void @llvm.dbg.value(metadata i8* %33, metadata !3912, metadata !DIExpression()) #20, !dbg !3965
  %34 = icmp eq i8* %33, null, !dbg !3982
  %35 = icmp ne i64 %32, 0, !dbg !3983
  %36 = and i1 %35, %34, !dbg !3984
  br i1 %36, label %37, label %38, !dbg !3984

37:                                               ; preds = %31
  tail call void @xalloc_die() #23, !dbg !3985
  unreachable, !dbg !3985

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3965
  ret i8* %39, !dbg !3986
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #21 !dbg !3987 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3989, metadata !DIExpression()), !dbg !3990
  call void @llvm.dbg.value(metadata i64 %0, metadata !3877, metadata !DIExpression()) #20, !dbg !3991
  %2 = tail call noalias i8* @malloc(i64 %0) #20, !dbg !3993
  call void @llvm.dbg.value(metadata i8* %2, metadata !3882, metadata !DIExpression()) #20, !dbg !3991
  %3 = icmp eq i8* %2, null, !dbg !3994
  %4 = icmp ne i64 %0, 0, !dbg !3995
  %5 = and i1 %4, %3, !dbg !3996
  br i1 %5, label %6, label %7, !dbg !3996

6:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !3997
  unreachable, !dbg !3997

7:                                                ; preds = %1
  ret i8* %2, !dbg !3998
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3999 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4003, metadata !DIExpression()), !dbg !4005
  call void @llvm.dbg.value(metadata i64* %1, metadata !4004, metadata !DIExpression()), !dbg !4005
  call void @llvm.dbg.value(metadata i8* %0, metadata !702, metadata !DIExpression()) #20, !dbg !4006
  call void @llvm.dbg.value(metadata i64* %1, metadata !703, metadata !DIExpression()) #20, !dbg !4006
  call void @llvm.dbg.value(metadata i64 1, metadata !704, metadata !DIExpression()) #20, !dbg !4006
  %3 = load i64, i64* %1, align 8, !dbg !4008, !tbaa !1485
  call void @llvm.dbg.value(metadata i64 %3, metadata !705, metadata !DIExpression()) #20, !dbg !4006
  %4 = icmp eq i8* %0, null, !dbg !4009
  br i1 %4, label %5, label %12, !dbg !4010

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4011
  br i1 %6, label %9, label %7, !dbg !4012

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !705, metadata !DIExpression()) #20, !dbg !4006
  %8 = icmp slt i64 %3, 0, !dbg !4013
  br i1 %8, label %11, label %9, !dbg !4014

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !705, metadata !DIExpression()) #20, !dbg !4006
  store i64 %10, i64* %1, align 8, !dbg !4015, !tbaa !1485
  call void @llvm.dbg.value(metadata i8* %0, metadata !3912, metadata !DIExpression()) #20, !dbg !4016
  call void @llvm.dbg.value(metadata i64 %18, metadata !3917, metadata !DIExpression()) #20, !dbg !4016
  br label %21, !dbg !4018

11:                                               ; preds = %7
  tail call void @xalloc_die() #23, !dbg !4019
  unreachable, !dbg !4019

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !4020
  br i1 %13, label %15, label %14, !dbg !4021

14:                                               ; preds = %12
  tail call void @xalloc_die() #23, !dbg !4022
  unreachable, !dbg !4022

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !4023
  %17 = add nuw nsw i64 %3, 1, !dbg !4024
  %18 = add nuw nsw i64 %17, %16, !dbg !4025
  call void @llvm.dbg.value(metadata i64 %18, metadata !705, metadata !DIExpression()) #20, !dbg !4006
  call void @llvm.dbg.value(metadata i64 %18, metadata !705, metadata !DIExpression()) #20, !dbg !4006
  store i64 %18, i64* %1, align 8, !dbg !4015, !tbaa !1485
  call void @llvm.dbg.value(metadata i8* %0, metadata !3912, metadata !DIExpression()) #20, !dbg !4016
  call void @llvm.dbg.value(metadata i64 %18, metadata !3917, metadata !DIExpression()) #20, !dbg !4016
  %19 = icmp eq i64 %18, 0, !dbg !4026
  br i1 %19, label %20, label %21, !dbg !4018

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #20, !dbg !4027
  br label %28, !dbg !4028

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #20, !dbg !4029
  call void @llvm.dbg.value(metadata i8* %23, metadata !3912, metadata !DIExpression()) #20, !dbg !4016
  %24 = icmp eq i8* %23, null, !dbg !4030
  %25 = icmp ne i64 %22, 0, !dbg !4031
  %26 = and i1 %25, %24, !dbg !4032
  br i1 %26, label %27, label %28, !dbg !4032

27:                                               ; preds = %21
  tail call void @xalloc_die() #23, !dbg !4033
  unreachable, !dbg !4033

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !4016
  ret i8* %29, !dbg !4034
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !4035 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4037, metadata !DIExpression()), !dbg !4038
  call void @llvm.dbg.value(metadata i64 %0, metadata !4039, metadata !DIExpression()) #20, !dbg !4044
  call void @llvm.dbg.value(metadata i64 1, metadata !4042, metadata !DIExpression()) #20, !dbg !4044
  %2 = icmp slt i64 %0, 0, !dbg !4046
  br i1 %2, label %6, label %3, !dbg !4048

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #20, !dbg !4049
  call void @llvm.dbg.value(metadata i8* %4, metadata !4043, metadata !DIExpression()) #20, !dbg !4044
  %5 = icmp eq i8* %4, null, !dbg !4050
  br i1 %5, label %6, label %7, !dbg !4051

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #23, !dbg !4052
  unreachable, !dbg !4052

7:                                                ; preds = %3
  ret i8* %4, !dbg !4053
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !4040 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4039, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.value(metadata i64 %1, metadata !4042, metadata !DIExpression()), !dbg !4054
  %3 = udiv i64 9223372036854775807, %1, !dbg !4055
  %4 = icmp ult i64 %3, %0, !dbg !4055
  br i1 %4, label %8, label %5, !dbg !4056

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #20, !dbg !4057
  call void @llvm.dbg.value(metadata i8* %6, metadata !4043, metadata !DIExpression()), !dbg !4054
  %7 = icmp eq i8* %6, null, !dbg !4058
  br i1 %7, label %8, label %9, !dbg !4059

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #23, !dbg !4060
  unreachable, !dbg !4060

9:                                                ; preds = %5
  ret i8* %6, !dbg !4061
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4062 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4066, metadata !DIExpression()), !dbg !4068
  call void @llvm.dbg.value(metadata i64 %1, metadata !4067, metadata !DIExpression()), !dbg !4068
  call void @llvm.dbg.value(metadata i64 %1, metadata !3877, metadata !DIExpression()) #20, !dbg !4069
  %3 = tail call noalias i8* @malloc(i64 %1) #20, !dbg !4071
  call void @llvm.dbg.value(metadata i8* %3, metadata !3882, metadata !DIExpression()) #20, !dbg !4069
  %4 = icmp eq i8* %3, null, !dbg !4072
  %5 = icmp ne i64 %1, 0, !dbg !4073
  %6 = and i1 %5, %4, !dbg !4074
  br i1 %6, label %7, label %8, !dbg !4074

7:                                                ; preds = %2
  tail call void @xalloc_die() #23, !dbg !4075
  unreachable, !dbg !4075

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4076, metadata !DIExpression()) #20, !dbg !4081
  call void @llvm.dbg.value(metadata i8* %0, metadata !4079, metadata !DIExpression()) #20, !dbg !4081
  call void @llvm.dbg.value(metadata i64 %1, metadata !4080, metadata !DIExpression()) #20, !dbg !4081
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #20, !dbg !4083
  ret i8* %3, !dbg !4084
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !4085 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4087, metadata !DIExpression()), !dbg !4088
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #22, !dbg !4089
  %3 = add i64 %2, 1, !dbg !4090
  call void @llvm.dbg.value(metadata i8* %0, metadata !4066, metadata !DIExpression()) #20, !dbg !4091
  call void @llvm.dbg.value(metadata i64 %3, metadata !4067, metadata !DIExpression()) #20, !dbg !4091
  call void @llvm.dbg.value(metadata i64 %3, metadata !3877, metadata !DIExpression()) #20, !dbg !4093
  %4 = tail call noalias i8* @malloc(i64 %3) #20, !dbg !4095
  call void @llvm.dbg.value(metadata i8* %4, metadata !3882, metadata !DIExpression()) #20, !dbg !4093
  %5 = icmp eq i8* %4, null, !dbg !4096
  %6 = icmp ne i64 %3, 0, !dbg !4097
  %7 = and i1 %6, %5, !dbg !4098
  br i1 %7, label %8, label %9, !dbg !4098

8:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !4099
  unreachable, !dbg !4099

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !4076, metadata !DIExpression()) #20, !dbg !4100
  call void @llvm.dbg.value(metadata i8* %0, metadata !4079, metadata !DIExpression()) #20, !dbg !4100
  call void @llvm.dbg.value(metadata i64 %3, metadata !4080, metadata !DIExpression()) #20, !dbg !4100
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #20, !dbg !4102
  ret i8* %4, !dbg !4103
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4104 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4105, !tbaa !1512
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.149, i64 0, i64 0), i32 5) #20, !dbg !4106
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.150, i64 0, i64 0), i8* %2) #20, !dbg !4107
  tail call void @abort() #23, !dbg !4108
  unreachable, !dbg !4108
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xmemcoll(i8* %0, i64 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !4109 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4113, metadata !DIExpression()), !dbg !4119
  call void @llvm.dbg.value(metadata i64 %1, metadata !4114, metadata !DIExpression()), !dbg !4119
  call void @llvm.dbg.value(metadata i8* %2, metadata !4115, metadata !DIExpression()), !dbg !4119
  call void @llvm.dbg.value(metadata i64 %3, metadata !4116, metadata !DIExpression()), !dbg !4119
  %5 = tail call i32 @memcoll(i8* %0, i64 %1, i8* %2, i64 %3) #20, !dbg !4120
  call void @llvm.dbg.value(metadata i32 %5, metadata !4117, metadata !DIExpression()), !dbg !4119
  %6 = tail call i32* @__errno_location() #25, !dbg !4121
  %7 = load i32, i32* %6, align 4, !dbg !4121, !tbaa !1512
  call void @llvm.dbg.value(metadata i32 %7, metadata !4118, metadata !DIExpression()), !dbg !4119
  %8 = icmp eq i32 %7, 0, !dbg !4122
  br i1 %8, label %16, label %9, !dbg !4124

9:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i32 %7, metadata !4125, metadata !DIExpression()) #20, !dbg !4134
  call void @llvm.dbg.value(metadata i8* %0, metadata !4130, metadata !DIExpression()) #20, !dbg !4134
  call void @llvm.dbg.value(metadata i64 %1, metadata !4131, metadata !DIExpression()) #20, !dbg !4134
  call void @llvm.dbg.value(metadata i8* %2, metadata !4132, metadata !DIExpression()) #20, !dbg !4134
  call void @llvm.dbg.value(metadata i64 %3, metadata !4133, metadata !DIExpression()) #20, !dbg !4134
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.153, i64 0, i64 0), i32 5) #20, !dbg !4136
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %7, i8* %10) #20, !dbg !4137
  %11 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1.154, i64 0, i64 0), i32 5) #20, !dbg !4138
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %11) #20, !dbg !4139
  %12 = load volatile i32, i32* @exit_failure, align 4, !dbg !4140, !tbaa !1512
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2.155, i64 0, i64 0), i32 5) #20, !dbg !4141
  %14 = tail call i8* @quotearg_n_style_mem(i32 0, i32 8, i8* %0, i64 %1) #20, !dbg !4142
  %15 = tail call i8* @quotearg_n_style_mem(i32 1, i32 8, i8* %2, i64 %3) #20, !dbg !4143
  tail call void (i32, i32, i8*, ...) @error(i32 %12, i32 0, i8* %13, i8* %14, i8* %15) #20, !dbg !4144
  br label %16, !dbg !4145

16:                                               ; preds = %4, %9
  ret i32 %5, !dbg !4146
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xmemcoll0(i8* %0, i64 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !4147 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4149, metadata !DIExpression()), !dbg !4155
  call void @llvm.dbg.value(metadata i64 %1, metadata !4150, metadata !DIExpression()), !dbg !4155
  call void @llvm.dbg.value(metadata i8* %2, metadata !4151, metadata !DIExpression()), !dbg !4155
  call void @llvm.dbg.value(metadata i64 %3, metadata !4152, metadata !DIExpression()), !dbg !4155
  %5 = tail call i32 @memcoll0(i8* %0, i64 %1, i8* %2, i64 %3) #20, !dbg !4156
  call void @llvm.dbg.value(metadata i32 %5, metadata !4153, metadata !DIExpression()), !dbg !4155
  %6 = tail call i32* @__errno_location() #25, !dbg !4157
  %7 = load i32, i32* %6, align 4, !dbg !4157, !tbaa !1512
  call void @llvm.dbg.value(metadata i32 %7, metadata !4154, metadata !DIExpression()), !dbg !4155
  %8 = icmp eq i32 %7, 0, !dbg !4158
  br i1 %8, label %18, label %9, !dbg !4160

9:                                                ; preds = %4
  %10 = add i64 %1, -1, !dbg !4161
  %11 = add i64 %3, -1, !dbg !4162
  call void @llvm.dbg.value(metadata i32 %7, metadata !4125, metadata !DIExpression()) #20, !dbg !4163
  call void @llvm.dbg.value(metadata i8* %0, metadata !4130, metadata !DIExpression()) #20, !dbg !4163
  call void @llvm.dbg.value(metadata i64 %10, metadata !4131, metadata !DIExpression()) #20, !dbg !4163
  call void @llvm.dbg.value(metadata i8* %2, metadata !4132, metadata !DIExpression()) #20, !dbg !4163
  call void @llvm.dbg.value(metadata i64 %11, metadata !4133, metadata !DIExpression()) #20, !dbg !4163
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.153, i64 0, i64 0), i32 5) #20, !dbg !4165
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %7, i8* %12) #20, !dbg !4166
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1.154, i64 0, i64 0), i32 5) #20, !dbg !4167
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %13) #20, !dbg !4168
  %14 = load volatile i32, i32* @exit_failure, align 4, !dbg !4169, !tbaa !1512
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2.155, i64 0, i64 0), i32 5) #20, !dbg !4170
  %16 = tail call i8* @quotearg_n_style_mem(i32 0, i32 8, i8* %0, i64 %10) #20, !dbg !4171
  %17 = tail call i8* @quotearg_n_style_mem(i32 1, i32 8, i8* %2, i64 %11) #20, !dbg !4172
  tail call void (i32, i32, i8*, ...) @error(i32 %14, i32 0, i8* %15, i8* %16, i8* %17) #20, !dbg !4173
  br label %18, !dbg !4174

18:                                               ; preds = %4, %9
  ret i32 %5, !dbg !4175
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #14 !dbg !4176 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4178, metadata !DIExpression()), !dbg !4184
  call void @llvm.dbg.value(metadata i64 %1, metadata !4179, metadata !DIExpression()), !dbg !4184
  %3 = icmp eq i64 %0, 0, !dbg !4185
  %4 = icmp eq i64 %1, 0, !dbg !4186
  %5 = or i1 %3, %4, !dbg !4187
  br i1 %5, label %11, label %6, !dbg !4187

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !4181, metadata !DIExpression()), !dbg !4188
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !4189
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !4189
  br i1 %8, label %9, label %11, !dbg !4191

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #25, !dbg !4192
  store i32 12, i32* %10, align 4, !dbg !4194, !tbaa !1512
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !4178, metadata !DIExpression()), !dbg !4184
  call void @llvm.dbg.value(metadata i64 %12, metadata !4179, metadata !DIExpression()), !dbg !4184
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #20, !dbg !4195
  call void @llvm.dbg.value(metadata i8* %14, metadata !4180, metadata !DIExpression()), !dbg !4184
  br label %15, !dbg !4196

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !4184
  ret i8* %16, !dbg !4197
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !4198 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4204, metadata !DIExpression()), !dbg !4208
  call void @llvm.dbg.value(metadata i32 0, metadata !4205, metadata !DIExpression()), !dbg !4208
  call void @llvm.dbg.value(metadata i32 0, metadata !4207, metadata !DIExpression()), !dbg !4208
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #20, !dbg !4209
  call void @llvm.dbg.value(metadata i32 %2, metadata !4206, metadata !DIExpression()), !dbg !4208
  %3 = icmp slt i32 %2, 0, !dbg !4210
  br i1 %3, label %4, label %6, !dbg !4212

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4213
  br label %24, !dbg !4214

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #20, !dbg !4215
  %8 = icmp eq i32 %7, 0, !dbg !4215
  br i1 %8, label %13, label %9, !dbg !4217

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #20, !dbg !4218
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #20, !dbg !4219
  %12 = icmp eq i64 %11, -1, !dbg !4220
  br i1 %12, label %16, label %13, !dbg !4221

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #20, !dbg !4222
  %15 = icmp eq i32 %14, 0, !dbg !4222
  br i1 %15, label %16, label %18, !dbg !4223

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4205, metadata !DIExpression()), !dbg !4208
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4224
  call void @llvm.dbg.value(metadata i32 %21, metadata !4207, metadata !DIExpression()), !dbg !4208
  br label %24, !dbg !4225

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #25, !dbg !4226
  %20 = load i32, i32* %19, align 4, !dbg !4226, !tbaa !1512
  call void @llvm.dbg.value(metadata i32 %20, metadata !4205, metadata !DIExpression()), !dbg !4208
  call void @llvm.dbg.value(metadata i32 %20, metadata !4205, metadata !DIExpression()), !dbg !4208
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4224
  call void @llvm.dbg.value(metadata i32 %21, metadata !4207, metadata !DIExpression()), !dbg !4208
  %22 = icmp eq i32 %20, 0, !dbg !4227
  br i1 %22, label %24, label %23, !dbg !4225

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4229, !tbaa !1512
  call void @llvm.dbg.value(metadata i32 -1, metadata !4207, metadata !DIExpression()), !dbg !4208
  br label %24, !dbg !4231

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4208
  ret i32 %25, !dbg !4232
}

; Function Attrs: nofree nounwind
declare !dbg !768 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !769 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fcntl(i32 %0, i32 %1, ...) local_unnamed_addr #8 !dbg !4233 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4235, metadata !DIExpression()), !dbg !4259
  call void @llvm.dbg.value(metadata i32 %1, metadata !4236, metadata !DIExpression()), !dbg !4259
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !4260
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #20, !dbg !4260
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !4237, metadata !DIExpression()), !dbg !4261
  call void @llvm.dbg.value(metadata i32 -1, metadata !4247, metadata !DIExpression()), !dbg !4259
  call void @llvm.va_start(i8* nonnull %4), !dbg !4262
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
  ], !dbg !4263

5:                                                ; preds = %2
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !4264
  %7 = load i32, i32* %6, align 16, !dbg !4264
  %8 = icmp ult i32 %7, 41, !dbg !4264
  br i1 %8, label %9, label %15, !dbg !4264

9:                                                ; preds = %5
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !4264
  %11 = load i8*, i8** %10, align 16, !dbg !4264
  %12 = zext i32 %7 to i64, !dbg !4264
  %13 = getelementptr i8, i8* %11, i64 %12, !dbg !4264
  %14 = add nuw nsw i32 %7, 8, !dbg !4264
  store i32 %14, i32* %6, align 16, !dbg !4264
  br label %19, !dbg !4264

15:                                               ; preds = %5
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !4264
  %17 = load i8*, i8** %16, align 8, !dbg !4264
  %18 = getelementptr i8, i8* %17, i64 8, !dbg !4264
  store i8* %18, i8** %16, align 8, !dbg !4264
  br label %19, !dbg !4264

19:                                               ; preds = %15, %9
  %20 = phi i8* [ %13, %9 ], [ %17, %15 ]
  %21 = bitcast i8* %20 to i32*, !dbg !4264
  %22 = load i32, i32* %21, align 4, !dbg !4264
  call void @llvm.dbg.value(metadata i32 %22, metadata !4248, metadata !DIExpression()), !dbg !4265
  call void @llvm.dbg.value(metadata i32 %0, metadata !4266, metadata !DIExpression()) #20, !dbg !4271
  call void @llvm.dbg.value(metadata i32 %22, metadata !4269, metadata !DIExpression()) #20, !dbg !4271
  %23 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 0, i32 %22) #20, !dbg !4273
  call void @llvm.dbg.value(metadata i32 %23, metadata !4270, metadata !DIExpression()) #20, !dbg !4271
  call void @llvm.dbg.value(metadata i32 %23, metadata !4247, metadata !DIExpression()), !dbg !4259
  br label %116

24:                                               ; preds = %2
  %25 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !4274
  %26 = load i32, i32* %25, align 16, !dbg !4274
  %27 = icmp ult i32 %26, 41, !dbg !4274
  br i1 %27, label %28, label %34, !dbg !4274

28:                                               ; preds = %24
  %29 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !4274
  %30 = load i8*, i8** %29, align 16, !dbg !4274
  %31 = zext i32 %26 to i64, !dbg !4274
  %32 = getelementptr i8, i8* %30, i64 %31, !dbg !4274
  %33 = add nuw nsw i32 %26, 8, !dbg !4274
  store i32 %33, i32* %25, align 16, !dbg !4274
  br label %38, !dbg !4274

34:                                               ; preds = %24
  %35 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !4274
  %36 = load i8*, i8** %35, align 8, !dbg !4274
  %37 = getelementptr i8, i8* %36, i64 8, !dbg !4274
  store i8* %37, i8** %35, align 8, !dbg !4274
  br label %38, !dbg !4274

38:                                               ; preds = %34, %28
  %39 = phi i8* [ %32, %28 ], [ %36, %34 ]
  %40 = bitcast i8* %39 to i32*, !dbg !4274
  %41 = load i32, i32* %40, align 4, !dbg !4274
  call void @llvm.dbg.value(metadata i32 %41, metadata !4251, metadata !DIExpression()), !dbg !4275
  call void @llvm.dbg.value(metadata i32 %0, metadata !485, metadata !DIExpression()) #20, !dbg !4276
  call void @llvm.dbg.value(metadata i32 %41, metadata !486, metadata !DIExpression()) #20, !dbg !4276
  %42 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4278, !tbaa !1512
  %43 = icmp sgt i32 %42, -1, !dbg !4280
  br i1 %43, label %44, label %56, !dbg !4281

44:                                               ; preds = %38
  %45 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %41) #20, !dbg !4282
  call void @llvm.dbg.value(metadata i32 %45, metadata !487, metadata !DIExpression()) #20, !dbg !4276
  %46 = icmp sgt i32 %45, -1, !dbg !4284
  br i1 %46, label %51, label %47, !dbg !4286

47:                                               ; preds = %44
  %48 = tail call i32* @__errno_location() #25, !dbg !4287
  %49 = load i32, i32* %48, align 4, !dbg !4287, !tbaa !1512
  %50 = icmp eq i32 %49, 22, !dbg !4288
  br i1 %50, label %52, label %51, !dbg !4289

51:                                               ; preds = %47, %44
  store i32 1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4290, !tbaa !1512
  call void @llvm.dbg.value(metadata i32 %62, metadata !487, metadata !DIExpression()) #20, !dbg !4276
  br label %116, !dbg !4292

52:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 %0, metadata !4266, metadata !DIExpression()) #20, !dbg !4293
  call void @llvm.dbg.value(metadata i32 %41, metadata !4269, metadata !DIExpression()) #20, !dbg !4293
  %53 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 0, i32 %41) #20, !dbg !4296
  call void @llvm.dbg.value(metadata i32 %53, metadata !4270, metadata !DIExpression()) #20, !dbg !4293
  call void @llvm.dbg.value(metadata i32 %53, metadata !487, metadata !DIExpression()) #20, !dbg !4276
  %54 = icmp sgt i32 %53, -1, !dbg !4297
  br i1 %54, label %55, label %116, !dbg !4299

55:                                               ; preds = %52
  store i32 -1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4300, !tbaa !1512
  br label %60, !dbg !4301

56:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i32 %0, metadata !4266, metadata !DIExpression()) #20, !dbg !4302
  call void @llvm.dbg.value(metadata i32 %41, metadata !4269, metadata !DIExpression()) #20, !dbg !4302
  %57 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 0, i32 %41) #20, !dbg !4304
  call void @llvm.dbg.value(metadata i32 %57, metadata !4270, metadata !DIExpression()) #20, !dbg !4302
  call void @llvm.dbg.value(metadata i32 %57, metadata !487, metadata !DIExpression()) #20, !dbg !4276
  %58 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4305
  %59 = icmp eq i32 %58, -1
  br label %60

60:                                               ; preds = %56, %55
  %61 = phi i1 [ true, %55 ], [ %59, %56 ]
  %62 = phi i32 [ %53, %55 ], [ %57, %56 ], !dbg !4306
  call void @llvm.dbg.value(metadata i32 %62, metadata !487, metadata !DIExpression()) #20, !dbg !4276
  %63 = icmp sgt i32 %62, -1, !dbg !4307
  %64 = and i1 %61, %63, !dbg !4292
  br i1 %64, label %65, label %116, !dbg !4292

65:                                               ; preds = %60
  %66 = call i32 (i32, i32, ...) @fcntl(i32 %62, i32 1) #20, !dbg !4308
  call void @llvm.dbg.value(metadata i32 %66, metadata !488, metadata !DIExpression()) #20, !dbg !4309
  %67 = icmp slt i32 %66, 0, !dbg !4310
  br i1 %67, label %72, label %68, !dbg !4311

68:                                               ; preds = %65
  %69 = or i32 %66, 1, !dbg !4312
  %70 = call i32 (i32, i32, ...) @fcntl(i32 %62, i32 2, i32 %69) #20, !dbg !4313
  %71 = icmp eq i32 %70, -1, !dbg !4314
  br i1 %71, label %72, label %116, !dbg !4315

72:                                               ; preds = %68, %65
  %73 = tail call i32* @__errno_location() #25, !dbg !4316
  %74 = load i32, i32* %73, align 4, !dbg !4316, !tbaa !1512
  call void @llvm.dbg.value(metadata i32 %74, metadata !491, metadata !DIExpression()) #20, !dbg !4317
  %75 = call i32 @close(i32 %62) #20, !dbg !4318
  store i32 %74, i32* %73, align 4, !dbg !4319, !tbaa !1512
  call void @llvm.dbg.value(metadata i32 -1, metadata !487, metadata !DIExpression()) #20, !dbg !4276
  br label %116, !dbg !4320

76:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %77 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1) #20, !dbg !4321
  call void @llvm.dbg.value(metadata i32 %77, metadata !4247, metadata !DIExpression()), !dbg !4259
  br label %116, !dbg !4322

78:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %79 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !4323
  %80 = load i32, i32* %79, align 16, !dbg !4323
  %81 = icmp ult i32 %80, 41, !dbg !4323
  br i1 %81, label %82, label %88, !dbg !4323

82:                                               ; preds = %78
  %83 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !4323
  %84 = load i8*, i8** %83, align 16, !dbg !4323
  %85 = zext i32 %80 to i64, !dbg !4323
  %86 = getelementptr i8, i8* %84, i64 %85, !dbg !4323
  %87 = add nuw nsw i32 %80, 8, !dbg !4323
  store i32 %87, i32* %79, align 16, !dbg !4323
  br label %92, !dbg !4323

88:                                               ; preds = %78
  %89 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !4323
  %90 = load i8*, i8** %89, align 8, !dbg !4323
  %91 = getelementptr i8, i8* %90, i64 8, !dbg !4323
  store i8* %91, i8** %89, align 8, !dbg !4323
  br label %92, !dbg !4323

92:                                               ; preds = %88, %82
  %93 = phi i8* [ %86, %82 ], [ %90, %88 ]
  %94 = bitcast i8* %93 to i32*, !dbg !4323
  %95 = load i32, i32* %94, align 4, !dbg !4323
  call void @llvm.dbg.value(metadata i32 %95, metadata !4253, metadata !DIExpression()), !dbg !4324
  %96 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i32 %95) #20, !dbg !4325
  call void @llvm.dbg.value(metadata i32 %96, metadata !4247, metadata !DIExpression()), !dbg !4259
  br label %116, !dbg !4326

97:                                               ; preds = %2
  %98 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !4327
  %99 = load i32, i32* %98, align 16, !dbg !4327
  %100 = icmp ult i32 %99, 41, !dbg !4327
  br i1 %100, label %101, label %107, !dbg !4327

101:                                              ; preds = %97
  %102 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !4327
  %103 = load i8*, i8** %102, align 16, !dbg !4327
  %104 = zext i32 %99 to i64, !dbg !4327
  %105 = getelementptr i8, i8* %103, i64 %104, !dbg !4327
  %106 = add nuw nsw i32 %99, 8, !dbg !4327
  store i32 %106, i32* %98, align 16, !dbg !4327
  br label %111, !dbg !4327

107:                                              ; preds = %97
  %108 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !4327
  %109 = load i8*, i8** %108, align 8, !dbg !4327
  %110 = getelementptr i8, i8* %109, i64 8, !dbg !4327
  store i8* %110, i8** %108, align 8, !dbg !4327
  br label %111, !dbg !4327

111:                                              ; preds = %107, %101
  %112 = phi i8* [ %105, %101 ], [ %109, %107 ]
  %113 = bitcast i8* %112 to i8**, !dbg !4327
  %114 = load i8*, i8** %113, align 8, !dbg !4327
  call void @llvm.dbg.value(metadata i8* %114, metadata !4257, metadata !DIExpression()), !dbg !4328
  %115 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %114) #20, !dbg !4329
  call void @llvm.dbg.value(metadata i32 %115, metadata !4247, metadata !DIExpression()), !dbg !4259
  br label %116, !dbg !4330

116:                                              ; preds = %72, %68, %60, %52, %51, %76, %92, %111, %19
  %117 = phi i32 [ %115, %111 ], [ %96, %92 ], [ %77, %76 ], [ %23, %19 ], [ %62, %60 ], [ -1, %72 ], [ %62, %68 ], [ %53, %52 ], [ %45, %51 ], !dbg !4331
  call void @llvm.dbg.value(metadata i32 %117, metadata !4247, metadata !DIExpression()), !dbg !4259
  call void @llvm.va_end(i8* nonnull %4), !dbg !4332
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #20, !dbg !4333
  ret i32 %117, !dbg !4334
}

declare !dbg !475 i32 @fcntl(i32, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4335 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4341, metadata !DIExpression()), !dbg !4342
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4343
  br i1 %2, label %6, label %3, !dbg !4345

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #20, !dbg !4346
  %5 = icmp eq i32 %4, 0, !dbg !4346
  br i1 %5, label %6, label %8, !dbg !4347

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4348
  br label %17, !dbg !4349

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4350, metadata !DIExpression()) #20, !dbg !4355
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4357
  %10 = load i32, i32* %9, align 8, !dbg !4357, !tbaa !1575
  %11 = and i32 %10, 256, !dbg !4359
  %12 = icmp eq i32 %11, 0, !dbg !4359
  br i1 %12, label %15, label %13, !dbg !4360

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #20, !dbg !4361
  br label %15, !dbg !4361

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4362
  br label %17, !dbg !4363

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4342
  ret i32 %18, !dbg !4364
}

; Function Attrs: nofree nounwind
declare !dbg !776 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4365 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4371, metadata !DIExpression()), !dbg !4377
  call void @llvm.dbg.value(metadata i64 %1, metadata !4372, metadata !DIExpression()), !dbg !4377
  call void @llvm.dbg.value(metadata i32 %2, metadata !4373, metadata !DIExpression()), !dbg !4377
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4378
  %5 = load i8*, i8** %4, align 8, !dbg !4378, !tbaa !2024
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4379
  %7 = load i8*, i8** %6, align 8, !dbg !4379, !tbaa !2023
  %8 = icmp eq i8* %5, %7, !dbg !4380
  br i1 %8, label %9, label %28, !dbg !4381

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4382
  %11 = load i8*, i8** %10, align 8, !dbg !4382, !tbaa !4383
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4384
  %13 = load i8*, i8** %12, align 8, !dbg !4384, !tbaa !4385
  %14 = icmp eq i8* %11, %13, !dbg !4386
  br i1 %14, label %15, label %28, !dbg !4387

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4388
  %17 = load i8*, i8** %16, align 8, !dbg !4388, !tbaa !4389
  %18 = icmp eq i8* %17, null, !dbg !4390
  br i1 %18, label %19, label %28, !dbg !4391

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #20, !dbg !4392
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #20, !dbg !4393
  call void @llvm.dbg.value(metadata i64 %21, metadata !4374, metadata !DIExpression()), !dbg !4394
  %22 = icmp eq i64 %21, -1, !dbg !4395
  br i1 %22, label %30, label %23, !dbg !4397

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4398
  %25 = load i32, i32* %24, align 8, !dbg !4399, !tbaa !1575
  %26 = and i32 %25, -17, !dbg !4399
  store i32 %26, i32* %24, align 8, !dbg !4399, !tbaa !1575
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4400
  store i64 %21, i64* %27, align 8, !dbg !4401, !tbaa !4402
  br label %30, !dbg !4403

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4404
  br label %30, !dbg !4405

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4377
  ret i32 %31, !dbg !4406
}

; Function Attrs: nofree nounwind
declare !dbg !852 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !4407 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4415, metadata !DIExpression()), !dbg !4424
  call void @llvm.dbg.value(metadata i8* %1, metadata !4416, metadata !DIExpression()), !dbg !4424
  call void @llvm.dbg.value(metadata i64 %2, metadata !4417, metadata !DIExpression()), !dbg !4424
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4418, metadata !DIExpression()), !dbg !4424
  %6 = bitcast i32* %5 to i8*, !dbg !4425
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #20, !dbg !4425
  %7 = icmp eq i32* %0, null, !dbg !4426
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4428
  call void @llvm.dbg.value(metadata i32* %8, metadata !4415, metadata !DIExpression()), !dbg !4424
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #20, !dbg !4429
  call void @llvm.dbg.value(metadata i64 %9, metadata !4419, metadata !DIExpression()), !dbg !4424
  %10 = icmp ugt i64 %9, -3, !dbg !4430
  %11 = icmp ne i64 %2, 0, !dbg !4431
  %12 = and i1 %11, %10, !dbg !4432
  br i1 %12, label %13, label %18, !dbg !4432

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #20, !dbg !4433
  br i1 %14, label %18, label %15, !dbg !4434

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4435, !tbaa !1466
  call void @llvm.dbg.value(metadata i8 %16, metadata !4421, metadata !DIExpression()), !dbg !4436
  %17 = zext i8 %16 to i32, !dbg !4437
  store i32 %17, i32* %8, align 4, !dbg !4438, !tbaa !1512
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4424
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #20, !dbg !4439
  ret i64 %19, !dbg !4439
}

; Function Attrs: nounwind
declare !dbg !858 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4440 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4446, metadata !DIExpression()), !dbg !4451
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #20, !dbg !4452
  call void @llvm.dbg.value(metadata i1 undef, metadata !4447, metadata !DIExpression()), !dbg !4451
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4453, metadata !DIExpression()), !dbg !4456
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4458
  %4 = load i32, i32* %3, align 8, !dbg !4458, !tbaa !1575
  %5 = and i32 %4, 32, !dbg !4458
  %6 = icmp eq i32 %5, 0, !dbg !4459
  call void @llvm.dbg.value(metadata i1 %6, metadata !4449, metadata !DIExpression()), !dbg !4451
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #20, !dbg !4460
  %8 = icmp ne i32 %7, 0, !dbg !4461
  call void @llvm.dbg.value(metadata i1 %8, metadata !4450, metadata !DIExpression()), !dbg !4451
  br i1 %6, label %9, label %19, !dbg !4462

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4464
  call void @llvm.dbg.value(metadata i1 %10, metadata !4447, metadata !DIExpression()), !dbg !4451
  %11 = xor i1 %8, true, !dbg !4465
  %12 = or i1 %10, %11, !dbg !4465
  %13 = sext i1 %8 to i32, !dbg !4465
  br i1 %12, label %22, label %14, !dbg !4465

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #25, !dbg !4466
  %16 = load i32, i32* %15, align 4, !dbg !4466, !tbaa !1512
  %17 = icmp ne i32 %16, 9, !dbg !4467
  %18 = sext i1 %17 to i32, !dbg !4468
  br label %22, !dbg !4468

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4469

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #25, !dbg !4471
  store i32 0, i32* %21, align 4, !dbg !4473, !tbaa !1512
  br label %22, !dbg !4471

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4451
  ret i32 %23, !dbg !4474
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !4475 {
  %1 = tail call i8* @nl_langinfo(i32 14) #20, !dbg !4478
  call void @llvm.dbg.value(metadata i8* %1, metadata !4477, metadata !DIExpression()), !dbg !4479
  %2 = icmp eq i8* %1, null, !dbg !4480
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.172, i64 0, i64 0), i8* %1, !dbg !4482
  call void @llvm.dbg.value(metadata i8* %3, metadata !4477, metadata !DIExpression()), !dbg !4479
  %4 = load i8, i8* %3, align 1, !dbg !4483, !tbaa !1466
  %5 = icmp eq i8 %4, 0, !dbg !4487
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.173, i64 0, i64 0), i8* %3, !dbg !4488
  call void @llvm.dbg.value(metadata i8* %6, metadata !4477, metadata !DIExpression()), !dbg !4479
  ret i8* %6, !dbg !4489
}

; Function Attrs: nounwind
declare !dbg !1298 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local i32 @memcoll(i8* nocapture %0, i64 %1, i8* nocapture %2, i64 %3) local_unnamed_addr #14 !dbg !4490 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4492, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i64 %1, metadata !4493, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i8* %2, metadata !4494, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i64 %3, metadata !4495, metadata !DIExpression()), !dbg !4501
  %5 = icmp eq i64 %1, %3, !dbg !4502
  br i1 %5, label %6, label %11, !dbg !4503

6:                                                ; preds = %4
  %7 = tail call i32 @bcmp(i8* %0, i8* %2, i64 %1), !dbg !4504
  %8 = icmp eq i32 %7, 0, !dbg !4505
  br i1 %8, label %9, label %11, !dbg !4506

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #25, !dbg !4507
  store i32 0, i32* %10, align 4, !dbg !4509, !tbaa !1512
  call void @llvm.dbg.value(metadata i32 0, metadata !4496, metadata !DIExpression()), !dbg !4501
  br label %43, !dbg !4510

11:                                               ; preds = %6, %4
  %12 = getelementptr inbounds i8, i8* %0, i64 %1, !dbg !4511
  %13 = load i8, i8* %12, align 1, !dbg !4511, !tbaa !1466
  call void @llvm.dbg.value(metadata i8 %13, metadata !4497, metadata !DIExpression()), !dbg !4512
  %14 = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !4513
  %15 = load i8, i8* %14, align 1, !dbg !4513, !tbaa !1466
  call void @llvm.dbg.value(metadata i8 %15, metadata !4500, metadata !DIExpression()), !dbg !4512
  store i8 0, i8* %12, align 1, !dbg !4514, !tbaa !1466
  store i8 0, i8* %14, align 1, !dbg !4515, !tbaa !1466
  %16 = add i64 %1, 1, !dbg !4516
  %17 = add i64 %3, 1, !dbg !4517
  call void @llvm.dbg.value(metadata i8* %0, metadata !4518, metadata !DIExpression()) #20, !dbg !4528
  call void @llvm.dbg.value(metadata i64 %16, metadata !4521, metadata !DIExpression()) #20, !dbg !4528
  call void @llvm.dbg.value(metadata i8* %2, metadata !4522, metadata !DIExpression()) #20, !dbg !4528
  call void @llvm.dbg.value(metadata i64 %17, metadata !4523, metadata !DIExpression()) #20, !dbg !4528
  %18 = tail call i32* @__errno_location() #25, !dbg !4528
  br label %19, !dbg !4530

19:                                               ; preds = %37, %11
  %20 = phi i8* [ %2, %11 ], [ %38, %37 ]
  %21 = phi i64 [ %17, %11 ], [ %32, %37 ]
  %22 = phi i64 [ %16, %11 ], [ %31, %37 ]
  %23 = phi i8* [ %0, %11 ], [ %39, %37 ]
  call void @llvm.dbg.value(metadata i8* %23, metadata !4518, metadata !DIExpression()) #20, !dbg !4528
  call void @llvm.dbg.value(metadata i64 %22, metadata !4521, metadata !DIExpression()) #20, !dbg !4528
  call void @llvm.dbg.value(metadata i64 %21, metadata !4523, metadata !DIExpression()) #20, !dbg !4528
  call void @llvm.dbg.value(metadata i8* %20, metadata !4522, metadata !DIExpression()) #20, !dbg !4528
  store i32 0, i32* %18, align 4, !dbg !4531, !tbaa !1512
  %24 = tail call i32 @strcoll(i8* %23, i8* %20) #22, !dbg !4532
  call void @llvm.dbg.value(metadata i32 %24, metadata !4524, metadata !DIExpression()) #20, !dbg !4528
  %25 = icmp eq i32 %24, 0, !dbg !4533
  br i1 %25, label %26, label %41, !dbg !4530

26:                                               ; preds = %19
  %27 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %23) #22, !dbg !4534
  %28 = add i64 %27, 1, !dbg !4535
  call void @llvm.dbg.value(metadata i64 %28, metadata !4525, metadata !DIExpression()) #20, !dbg !4536
  %29 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %20) #22, !dbg !4537
  %30 = add i64 %29, 1, !dbg !4538
  call void @llvm.dbg.value(metadata i64 %30, metadata !4527, metadata !DIExpression()) #20, !dbg !4536
  call void @llvm.dbg.value(metadata i8* undef, metadata !4518, metadata !DIExpression()) #20, !dbg !4528
  call void @llvm.dbg.value(metadata i8* undef, metadata !4522, metadata !DIExpression()) #20, !dbg !4528
  %31 = sub i64 %22, %28, !dbg !4539
  call void @llvm.dbg.value(metadata i64 %31, metadata !4521, metadata !DIExpression()) #20, !dbg !4528
  %32 = sub i64 %21, %30, !dbg !4540
  call void @llvm.dbg.value(metadata i64 %32, metadata !4523, metadata !DIExpression()) #20, !dbg !4528
  %33 = icmp eq i64 %31, 0, !dbg !4541
  br i1 %33, label %34, label %37, !dbg !4543

34:                                               ; preds = %26
  %35 = icmp ne i64 %32, 0, !dbg !4544
  %36 = sext i1 %35 to i32, !dbg !4545
  br label %41

37:                                               ; preds = %26
  %38 = getelementptr inbounds i8, i8* %20, i64 %30, !dbg !4546
  call void @llvm.dbg.value(metadata i8* %38, metadata !4522, metadata !DIExpression()) #20, !dbg !4528
  %39 = getelementptr inbounds i8, i8* %23, i64 %28, !dbg !4547
  call void @llvm.dbg.value(metadata i8* %39, metadata !4518, metadata !DIExpression()) #20, !dbg !4528
  %40 = icmp eq i64 %32, 0, !dbg !4548
  br i1 %40, label %41, label %19, !llvm.loop !4550

41:                                               ; preds = %19, %37, %34
  %42 = phi i32 [ %36, %34 ], [ 1, %37 ], [ %24, %19 ], !dbg !4528
  call void @llvm.dbg.value(metadata i32 %42, metadata !4496, metadata !DIExpression()), !dbg !4501
  store i8 %13, i8* %12, align 1, !dbg !4552, !tbaa !1466
  store i8 %15, i8* %14, align 1, !dbg !4553, !tbaa !1466
  br label %43

43:                                               ; preds = %41, %9
  %44 = phi i32 [ 0, %9 ], [ %42, %41 ], !dbg !4554
  call void @llvm.dbg.value(metadata i32 %44, metadata !4496, metadata !DIExpression()), !dbg !4501
  ret i32 %44, !dbg !4555
}

; Function Attrs: nofree nounwind readonly
declare !dbg !1304 i32 @strcoll(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local i32 @memcoll0(i8* nocapture readonly %0, i64 %1, i8* nocapture readonly %2, i64 %3) local_unnamed_addr #14 !dbg !4556 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4558, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.value(metadata i64 %1, metadata !4559, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.value(metadata i8* %2, metadata !4560, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.value(metadata i64 %3, metadata !4561, metadata !DIExpression()), !dbg !4562
  %5 = icmp eq i64 %1, %3, !dbg !4563
  br i1 %5, label %6, label %11, !dbg !4565

6:                                                ; preds = %4
  %7 = tail call i32 @bcmp(i8* %0, i8* %2, i64 %1), !dbg !4566
  %8 = icmp eq i32 %7, 0, !dbg !4567
  br i1 %8, label %9, label %11, !dbg !4568

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #25, !dbg !4569
  store i32 0, i32* %10, align 4, !dbg !4571, !tbaa !1512
  br label %35, !dbg !4572

11:                                               ; preds = %6, %4
  call void @llvm.dbg.value(metadata i8* %0, metadata !4518, metadata !DIExpression()) #20, !dbg !4573
  call void @llvm.dbg.value(metadata i64 %1, metadata !4521, metadata !DIExpression()) #20, !dbg !4573
  call void @llvm.dbg.value(metadata i8* %2, metadata !4522, metadata !DIExpression()) #20, !dbg !4573
  call void @llvm.dbg.value(metadata i64 %3, metadata !4523, metadata !DIExpression()) #20, !dbg !4573
  %12 = tail call i32* @__errno_location() #25, !dbg !4573
  br label %13, !dbg !4575

13:                                               ; preds = %31, %11
  %14 = phi i8* [ %2, %11 ], [ %32, %31 ]
  %15 = phi i64 [ %3, %11 ], [ %26, %31 ]
  %16 = phi i64 [ %1, %11 ], [ %25, %31 ]
  %17 = phi i8* [ %0, %11 ], [ %33, %31 ]
  call void @llvm.dbg.value(metadata i8* %17, metadata !4518, metadata !DIExpression()) #20, !dbg !4573
  call void @llvm.dbg.value(metadata i64 %16, metadata !4521, metadata !DIExpression()) #20, !dbg !4573
  call void @llvm.dbg.value(metadata i64 %15, metadata !4523, metadata !DIExpression()) #20, !dbg !4573
  call void @llvm.dbg.value(metadata i8* %14, metadata !4522, metadata !DIExpression()) #20, !dbg !4573
  store i32 0, i32* %12, align 4, !dbg !4576, !tbaa !1512
  %18 = tail call i32 @strcoll(i8* %17, i8* %14) #22, !dbg !4577
  call void @llvm.dbg.value(metadata i32 %18, metadata !4524, metadata !DIExpression()) #20, !dbg !4573
  %19 = icmp eq i32 %18, 0, !dbg !4578
  br i1 %19, label %20, label %35, !dbg !4575

20:                                               ; preds = %13
  %21 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %17) #22, !dbg !4579
  %22 = add i64 %21, 1, !dbg !4580
  call void @llvm.dbg.value(metadata i64 %22, metadata !4525, metadata !DIExpression()) #20, !dbg !4581
  %23 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %14) #22, !dbg !4582
  %24 = add i64 %23, 1, !dbg !4583
  call void @llvm.dbg.value(metadata i64 %24, metadata !4527, metadata !DIExpression()) #20, !dbg !4581
  call void @llvm.dbg.value(metadata i8* undef, metadata !4518, metadata !DIExpression()) #20, !dbg !4573
  call void @llvm.dbg.value(metadata i8* undef, metadata !4522, metadata !DIExpression()) #20, !dbg !4573
  %25 = sub i64 %16, %22, !dbg !4584
  call void @llvm.dbg.value(metadata i64 %25, metadata !4521, metadata !DIExpression()) #20, !dbg !4573
  %26 = sub i64 %15, %24, !dbg !4585
  call void @llvm.dbg.value(metadata i64 %26, metadata !4523, metadata !DIExpression()) #20, !dbg !4573
  %27 = icmp eq i64 %25, 0, !dbg !4586
  br i1 %27, label %28, label %31, !dbg !4587

28:                                               ; preds = %20
  %29 = icmp ne i64 %26, 0, !dbg !4588
  %30 = sext i1 %29 to i32, !dbg !4589
  br label %35

31:                                               ; preds = %20
  %32 = getelementptr inbounds i8, i8* %14, i64 %24, !dbg !4590
  call void @llvm.dbg.value(metadata i8* %32, metadata !4522, metadata !DIExpression()) #20, !dbg !4573
  %33 = getelementptr inbounds i8, i8* %17, i64 %22, !dbg !4591
  call void @llvm.dbg.value(metadata i8* %33, metadata !4518, metadata !DIExpression()) #20, !dbg !4573
  %34 = icmp eq i64 %26, 0, !dbg !4592
  br i1 %34, label %35, label %13, !llvm.loop !4593

35:                                               ; preds = %31, %13, %28, %9
  %36 = phi i32 [ 0, %9 ], [ %30, %28 ], [ 1, %31 ], [ %18, %13 ], !dbg !4595
  ret i32 %36, !dbg !4596
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
attributes #9 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nofree norecurse nounwind sspstrong uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nofree nounwind readonly }
attributes #14 = { nofree nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { nofree nounwind }
attributes #17 = { norecurse nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { nofree norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { nounwind }
attributes #21 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #22 = { nounwind readonly }
attributes #23 = { noreturn nounwind }
attributes #24 = { noreturn }
attributes #25 = { nounwind readnone }
attributes #26 = { cold }

!llvm.dbg.cu = !{!2, !241, !246, !291, !494, !536, !580, !587, !593, !641, !297, !338, !643, !646, !651, !461, !693, !714, !717, !727, !730, !473, !773, !814, !855, !870, !908, !1301}
!llvm.ident = !{!1306, !1306, !1306, !1306, !1306, !1306, !1306, !1306, !1306, !1306, !1306, !1306, !1306, !1306, !1306, !1306, !1306, !1306, !1306, !1306, !1306, !1306, !1306, !1306, !1306, !1306, !1306, !1306}
!llvm.module.flags = !{!1307, !1308, !1309, !1310, !1311}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "hard_LC_COLLATE", scope: !2, file: !3, line: 46, type: !124, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !34, globals: !204, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/comm.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5, !11, !25}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 70, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10}
!8 = !DIEnumerator(name: "CHECK_ORDER_DEFAULT", value: 0, isUnsigned: true)
!9 = !DIEnumerator(name: "CHECK_ORDER_ENABLED", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "CHECK_ORDER_DISABLED", value: 2, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !12, line: 32, baseType: !6, size: 32, elements: !13)
!12 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24}
!14 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!15 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!16 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!17 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!18 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!19 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!20 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!21 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!22 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!23 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!24 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !26, line: 45, baseType: !6, size: 32, elements: !27)
!26 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!27 = !{!28, !29, !30, !31, !32, !33}
!28 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0, isUnsigned: true)
!29 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2, isUnsigned: true)
!30 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5, isUnsigned: true)
!31 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4, isUnsigned: true)
!32 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3, isUnsigned: true)
!33 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1, isUnsigned: true)
!34 = !{!35, !45, !106, !110, !114, !117, !120, !125, !132, !147, !39, !96, !151, !155, !159, !169, !173, !176, !179, !182, !186, !190, !98, !41, !194, !199, !200}
!35 = !DISubprogram(name: "dcgettext", scope: !36, file: !36, line: 51, type: !37, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!36 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!37 = !DISubroutineType(types: !38)
!38 = !{!39, !41, !41, !43}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!43 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!44 = !{}
!45 = !DISubprogram(name: "fputs_unlocked", scope: !46, file: !46, line: 662, type: !47, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!46 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!47 = !DISubroutineType(types: !48)
!48 = !{!43, !41, !49}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !51, line: 49, size: 1728, elements: !52)
!51 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!52 = !{!53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !68, !69, !70, !71, !75, !77, !79, !83, !86, !88, !91, !94, !95, !97, !101, !102}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !50, file: !51, line: 51, baseType: !43, size: 32)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !50, file: !51, line: 54, baseType: !39, size: 64, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !50, file: !51, line: 55, baseType: !39, size: 64, offset: 128)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !50, file: !51, line: 56, baseType: !39, size: 64, offset: 192)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !50, file: !51, line: 57, baseType: !39, size: 64, offset: 256)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !50, file: !51, line: 58, baseType: !39, size: 64, offset: 320)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !50, file: !51, line: 59, baseType: !39, size: 64, offset: 384)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !50, file: !51, line: 60, baseType: !39, size: 64, offset: 448)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !50, file: !51, line: 61, baseType: !39, size: 64, offset: 512)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !50, file: !51, line: 64, baseType: !39, size: 64, offset: 576)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !50, file: !51, line: 65, baseType: !39, size: 64, offset: 640)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !50, file: !51, line: 66, baseType: !39, size: 64, offset: 704)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !50, file: !51, line: 68, baseType: !66, size: 64, offset: 768)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !51, line: 36, flags: DIFlagFwdDecl)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !50, file: !51, line: 70, baseType: !49, size: 64, offset: 832)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !50, file: !51, line: 72, baseType: !43, size: 32, offset: 896)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !50, file: !51, line: 73, baseType: !43, size: 32, offset: 928)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !50, file: !51, line: 74, baseType: !72, size: 64, offset: 960)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !73, line: 152, baseType: !74)
!73 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!74 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !50, file: !51, line: 77, baseType: !76, size: 16, offset: 1024)
!76 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !50, file: !51, line: 78, baseType: !78, size: 8, offset: 1040)
!78 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !50, file: !51, line: 79, baseType: !80, size: 8, offset: 1048)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 8, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 1)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !50, file: !51, line: 81, baseType: !84, size: 64, offset: 1088)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !51, line: 43, baseType: null)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !50, file: !51, line: 89, baseType: !87, size: 64, offset: 1152)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !73, line: 153, baseType: !74)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !50, file: !51, line: 91, baseType: !89, size: 64, offset: 1216)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !51, line: 37, flags: DIFlagFwdDecl)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !50, file: !51, line: 92, baseType: !92, size: 64, offset: 1280)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !51, line: 38, flags: DIFlagFwdDecl)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !50, file: !51, line: 93, baseType: !49, size: 64, offset: 1344)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !50, file: !51, line: 94, baseType: !96, size: 64, offset: 1408)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !50, file: !51, line: 95, baseType: !98, size: 64, offset: 1472)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !99, line: 46, baseType: !100)
!99 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stddef.h", directory: "")
!100 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !50, file: !51, line: 96, baseType: !43, size: 32, offset: 1536)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !50, file: !51, line: 98, baseType: !103, size: 160, offset: 1568)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 160, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 20)
!106 = !DISubprogram(name: "set_program_name", scope: !107, file: !107, line: 37, type: !108, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!107 = !DIFile(filename: "./lib/progname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!108 = !DISubroutineType(types: !109)
!109 = !{null, !41}
!110 = !DISubprogram(name: "setlocale", scope: !111, file: !111, line: 122, type: !112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!111 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!112 = !DISubroutineType(types: !113)
!113 = !{!39, !43, !41}
!114 = !DISubprogram(name: "bindtextdomain", scope: !36, file: !36, line: 86, type: !115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!115 = !DISubroutineType(types: !116)
!116 = !{!39, !41, !41}
!117 = !DISubprogram(name: "textdomain", scope: !36, file: !36, line: 82, type: !118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!118 = !DISubroutineType(types: !119)
!119 = !{!39, !41}
!120 = !DISubprogram(name: "hard_locale", scope: !121, file: !121, line: 26, type: !122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!121 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!122 = !DISubroutineType(types: !123)
!123 = !{!124, !43}
!124 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!125 = !DISubprogram(name: "atexit", scope: !126, file: !126, line: 595, type: !127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!126 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!127 = !DISubroutineType(types: !128)
!128 = !{!43, !129}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{null}
!132 = !DISubprogram(name: "getopt_long", scope: !133, file: !133, line: 66, type: !134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!133 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!134 = !DISubroutineType(types: !135)
!135 = !{!43, !43, !136, !41, !138, !145}
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !133, line: 50, size: 256, elements: !141)
!141 = !{!142, !143, !144, !146}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !140, file: !133, line: 52, baseType: !41, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !140, file: !133, line: 55, baseType: !43, size: 32, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !140, file: !133, line: 56, baseType: !145, size: 64, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !140, file: !133, line: 57, baseType: !43, size: 32, offset: 192)
!147 = !DISubprogram(name: "error", scope: !148, file: !148, line: 52, type: !149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!148 = !DIFile(filename: "./lib/error.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!149 = !DISubroutineType(types: !150)
!150 = !{null, !43, !43, !41, null}
!151 = !DISubprogram(name: "version_etc", scope: !152, file: !152, line: 69, type: !153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!152 = !DIFile(filename: "./lib/version-etc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!153 = !DISubroutineType(types: !154)
!154 = !{null, !49, !41, !41, !41, null}
!155 = !DISubprogram(name: "quote", scope: !156, file: !156, line: 44, type: !157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!156 = !DIFile(filename: "./lib/quote.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!157 = !DISubroutineType(types: !158)
!158 = !{!41, !41}
!159 = !DISubprogram(name: "initbuffer", scope: !160, file: !160, line: 34, type: !161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!160 = !DIFile(filename: "./lib/linebuffer.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!161 = !DISubroutineType(types: !162)
!162 = !{null, !163}
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !160, line: 26, size: 192, elements: !165)
!165 = !{!166, !167, !168}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !164, file: !160, line: 28, baseType: !98, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !164, file: !160, line: 29, baseType: !98, size: 64, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !164, file: !160, line: 30, baseType: !39, size: 64, offset: 128)
!169 = !DISubprogram(name: "fopen_safer", scope: !170, file: !170, line: 23, type: !171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!170 = !DIFile(filename: "./lib/stdio-safer.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!171 = !DISubroutineType(types: !172)
!172 = !{!49, !41, !41}
!173 = !DISubprogram(name: "quotearg_n_style_colon", scope: !12, file: !12, line: 397, type: !174, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!174 = !DISubroutineType(types: !175)
!175 = !{!39, !43, !11, !41}
!176 = !DISubprogram(name: "fadvise", scope: !26, file: !26, line: 72, type: !177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!177 = !DISubroutineType(types: !178)
!178 = !{null, !49, !25}
!179 = !DISubprogram(name: "readlinebuffer_delim", scope: !160, file: !160, line: 41, type: !180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!180 = !DISubroutineType(types: !181)
!181 = !{!163, !163, !49, !40}
!182 = !DISubprogram(name: "xmemcoll", scope: !183, file: !183, line: 2, type: !184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!183 = !DIFile(filename: "./lib/xmemcoll.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!184 = !DISubroutineType(types: !185)
!185 = !{!43, !39, !100, !39, !100}
!186 = !DISubprogram(name: "rpl_fclose", scope: !187, file: !187, line: 672, type: !188, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!187 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!188 = !DISubroutineType(types: !189)
!189 = !{!43, !49}
!190 = !DISubprogram(name: "umaxtostr", scope: !191, file: !191, line: 46, type: !192, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!191 = !DIFile(filename: "./lib/inttostr.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!192 = !DISubroutineType(types: !193)
!193 = !{!39, !100, !39}
!194 = !DISubprogram(name: "fwrite_unlocked", scope: !46, file: !46, line: 675, type: !195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!195 = !DISubroutineType(types: !196)
!196 = !{!100, !197, !100, !100, !49}
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!199 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!200 = !DISubprogram(name: "memcmp2", scope: !201, file: !201, line: 32, type: !202, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!201 = !DIFile(filename: "./lib/memcmp2.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!202 = !DISubroutineType(types: !203)
!203 = !{!43, !41, !100, !41, !100}
!204 = !{!0, !205, !207, !209, !211, !213, !218, !220, !222, !227, !229, !231}
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(name: "only_file_1", scope: !2, file: !3, line: 49, type: !124, isLocal: true, isDefinition: true)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(name: "only_file_2", scope: !2, file: !3, line: 52, type: !124, isLocal: true, isDefinition: true)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(name: "both", scope: !2, file: !3, line: 55, type: !124, isLocal: true, isDefinition: true)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(name: "seen_unpairable", scope: !2, file: !3, line: 58, type: !124, isLocal: true, isDefinition: true)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(name: "issued_disorder_warning", scope: !2, file: !3, line: 61, type: !215, isLocal: true, isDefinition: true)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 16, elements: !216)
!216 = !{!217}
!217 = !DISubrange(count: 2)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(name: "total_option", scope: !2, file: !3, line: 67, type: !124, isLocal: true, isDefinition: true)
!220 = !DIGlobalVariableExpression(var: !221, expr: !DIExpression())
!221 = distinct !DIGlobalVariable(name: "check_input_order", scope: !2, file: !3, line: 75, type: !5, isLocal: true, isDefinition: true)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 92, type: !224, isLocal: true, isDefinition: true)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 2048, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 8)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(name: "delim", scope: !2, file: !3, line: 64, type: !199, isLocal: true, isDefinition: true)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(name: "col_sep_len", scope: !2, file: !3, line: 80, type: !98, isLocal: true, isDefinition: true)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(name: "col_sep", scope: !2, file: !3, line: 79, type: !41, isLocal: true, isDefinition: true)
!233 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!234 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!235 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!236 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!237 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!238 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551606, DW_OP_mul, DW_OP_constu, 10, DW_OP_plus, DW_OP_stack_value))
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(name: "Version", scope: !241, file: !242, line: 2, type: !41, isLocal: false, isDefinition: true)
!241 = distinct !DICompileUnit(language: DW_LANG_C99, file: !242, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !44, globals: !243, splitDebugInlining: false, nameTableKind: None)
!242 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!243 = !{!239}
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(name: "file_name", scope: !246, file: !247, line: 46, type: !41, isLocal: true, isDefinition: true)
!246 = distinct !DICompileUnit(language: DW_LANG_C99, file: !247, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !44, retainedTypes: !248, globals: !286, splitDebugInlining: false, nameTableKind: None)
!247 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!248 = !{!249, !35, !285, !147}
!249 = !DISubprogram(name: "close_stream", scope: !250, file: !250, line: 2, type: !251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!250 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!251 = !DISubroutineType(types: !252)
!252 = !{!43, !253}
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !51, line: 49, size: 1728, elements: !255)
!255 = !{!256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !254, file: !51, line: 51, baseType: !43, size: 32)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !254, file: !51, line: 54, baseType: !39, size: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !254, file: !51, line: 55, baseType: !39, size: 64, offset: 128)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !254, file: !51, line: 56, baseType: !39, size: 64, offset: 192)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !254, file: !51, line: 57, baseType: !39, size: 64, offset: 256)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !254, file: !51, line: 58, baseType: !39, size: 64, offset: 320)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !254, file: !51, line: 59, baseType: !39, size: 64, offset: 384)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !254, file: !51, line: 60, baseType: !39, size: 64, offset: 448)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !254, file: !51, line: 61, baseType: !39, size: 64, offset: 512)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !254, file: !51, line: 64, baseType: !39, size: 64, offset: 576)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !254, file: !51, line: 65, baseType: !39, size: 64, offset: 640)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !254, file: !51, line: 66, baseType: !39, size: 64, offset: 704)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !254, file: !51, line: 68, baseType: !66, size: 64, offset: 768)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !254, file: !51, line: 70, baseType: !253, size: 64, offset: 832)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !254, file: !51, line: 72, baseType: !43, size: 32, offset: 896)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !254, file: !51, line: 73, baseType: !43, size: 32, offset: 928)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !254, file: !51, line: 74, baseType: !72, size: 64, offset: 960)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !254, file: !51, line: 77, baseType: !76, size: 16, offset: 1024)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !254, file: !51, line: 78, baseType: !78, size: 8, offset: 1040)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !254, file: !51, line: 79, baseType: !80, size: 8, offset: 1048)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !254, file: !51, line: 81, baseType: !84, size: 64, offset: 1088)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !254, file: !51, line: 89, baseType: !87, size: 64, offset: 1152)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !254, file: !51, line: 91, baseType: !89, size: 64, offset: 1216)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !254, file: !51, line: 92, baseType: !92, size: 64, offset: 1280)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !254, file: !51, line: 93, baseType: !253, size: 64, offset: 1344)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !254, file: !51, line: 94, baseType: !96, size: 64, offset: 1408)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !254, file: !51, line: 95, baseType: !98, size: 64, offset: 1472)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !254, file: !51, line: 96, baseType: !43, size: 32, offset: 1536)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !254, file: !51, line: 98, baseType: !103, size: 160, offset: 1568)
!285 = !DISubprogram(name: "quotearg_colon", scope: !12, file: !12, line: 391, type: !118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!286 = !{!244, !287}
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !246, file: !247, line: 56, type: !124, isLocal: true, isDefinition: true)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(name: "exit_failure", scope: !291, file: !292, line: 24, type: !294, isLocal: false, isDefinition: true)
!291 = distinct !DICompileUnit(language: DW_LANG_C99, file: !292, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !44, globals: !293, splitDebugInlining: false, nameTableKind: None)
!292 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!293 = !{!289}
!294 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !43)
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(name: "program_name", scope: !297, file: !298, line: 33, type: !41, isLocal: false, isDefinition: true)
!297 = distinct !DICompileUnit(language: DW_LANG_C99, file: !298, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !44, retainedTypes: !299, globals: !335, splitDebugInlining: false, nameTableKind: None)
!298 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!299 = !{!96, !300, !39}
!300 = !DISubprogram(name: "fputs", scope: !46, file: !46, line: 626, type: !301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!301 = !DISubroutineType(types: !302)
!302 = !{!43, !41, !303}
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !51, line: 49, size: 1728, elements: !305)
!305 = !{!306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !304, file: !51, line: 51, baseType: !43, size: 32)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !304, file: !51, line: 54, baseType: !39, size: 64, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !304, file: !51, line: 55, baseType: !39, size: 64, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !304, file: !51, line: 56, baseType: !39, size: 64, offset: 192)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !304, file: !51, line: 57, baseType: !39, size: 64, offset: 256)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !304, file: !51, line: 58, baseType: !39, size: 64, offset: 320)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !304, file: !51, line: 59, baseType: !39, size: 64, offset: 384)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !304, file: !51, line: 60, baseType: !39, size: 64, offset: 448)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !304, file: !51, line: 61, baseType: !39, size: 64, offset: 512)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !304, file: !51, line: 64, baseType: !39, size: 64, offset: 576)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !304, file: !51, line: 65, baseType: !39, size: 64, offset: 640)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !304, file: !51, line: 66, baseType: !39, size: 64, offset: 704)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !304, file: !51, line: 68, baseType: !66, size: 64, offset: 768)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !304, file: !51, line: 70, baseType: !303, size: 64, offset: 832)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !304, file: !51, line: 72, baseType: !43, size: 32, offset: 896)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !304, file: !51, line: 73, baseType: !43, size: 32, offset: 928)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !304, file: !51, line: 74, baseType: !72, size: 64, offset: 960)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !304, file: !51, line: 77, baseType: !76, size: 16, offset: 1024)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !304, file: !51, line: 78, baseType: !78, size: 8, offset: 1040)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !304, file: !51, line: 79, baseType: !80, size: 8, offset: 1048)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !304, file: !51, line: 81, baseType: !84, size: 64, offset: 1088)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !304, file: !51, line: 89, baseType: !87, size: 64, offset: 1152)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !304, file: !51, line: 91, baseType: !89, size: 64, offset: 1216)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !304, file: !51, line: 92, baseType: !92, size: 64, offset: 1280)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !304, file: !51, line: 93, baseType: !303, size: 64, offset: 1344)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !304, file: !51, line: 94, baseType: !96, size: 64, offset: 1408)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !304, file: !51, line: 95, baseType: !98, size: 64, offset: 1472)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !304, file: !51, line: 96, baseType: !43, size: 32, offset: 1536)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !304, file: !51, line: 98, baseType: !103, size: 160, offset: 1568)
!335 = !{!295}
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !338, file: !339, line: 85, type: !455, isLocal: false, isDefinition: true)
!338 = distinct !DICompileUnit(language: DW_LANG_C99, file: !339, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !340, retainedTypes: !361, globals: !428, splitDebugInlining: false, nameTableKind: None)
!339 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!340 = !{!11, !341, !346}
!341 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !12, line: 242, baseType: !6, size: 32, elements: !342)
!342 = !{!343, !344, !345}
!343 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!344 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!345 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!346 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !347, line: 46, baseType: !6, size: 32, elements: !348)
!347 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!348 = !{!349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360}
!349 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!350 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!351 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!352 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!353 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!354 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!355 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!356 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!357 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!358 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!359 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!360 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!361 = !{!362, !366, !380, !383, !43, !76, !386, !98, !403, !407, !35, !413, !417, !39, !421, !424, !425}
!362 = !DISubprogram(name: "xmemdup", scope: !363, file: !363, line: 62, type: !364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!363 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!364 = !DISubroutineType(types: !365)
!365 = !{!96, !197, !100}
!366 = !DISubprogram(name: "quotearg_alloc_mem", scope: !12, file: !12, line: 342, type: !367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!367 = !DISubroutineType(types: !368)
!368 = !{!39, !41, !100, !369, !370}
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !372)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !339, line: 65, size: 448, elements: !373)
!373 = !{!374, !375, !376, !378, !379}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !372, file: !339, line: 68, baseType: !11, size: 32)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !372, file: !339, line: 71, baseType: !43, size: 32, offset: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !372, file: !339, line: 75, baseType: !377, size: 256, offset: 64)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !225)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !372, file: !339, line: 78, baseType: !41, size: 64, offset: 320)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !372, file: !339, line: 81, baseType: !41, size: 64, offset: 384)
!380 = !DISubprogram(name: "free", scope: !126, file: !126, line: 565, type: !381, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!381 = !DISubroutineType(types: !382)
!382 = !{null, !96}
!383 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !12, file: !12, line: 408, type: !384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!384 = !DISubroutineType(types: !385)
!385 = !{!39, !43, !41, !41, !41, !100}
!386 = !DISubprogram(name: "rpl_mbrtowc", scope: !387, file: !387, line: 717, type: !388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!387 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!388 = !DISubroutineType(types: !389)
!389 = !{!100, !145, !41, !100, !390}
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !392, line: 13, size: 64, elements: !393)
!392 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!393 = !{!394, !395}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !391, file: !392, line: 15, baseType: !43, size: 32)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !391, file: !392, line: 20, baseType: !396, size: 32, offset: 32)
!396 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !391, file: !392, line: 16, size: 32, elements: !397)
!397 = !{!398, !399}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !396, file: !392, line: 18, baseType: !6, size: 32)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !396, file: !392, line: 19, baseType: !400, size: 32)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 32, elements: !401)
!401 = !{!402}
!402 = !DISubrange(count: 4)
!403 = !DISubprogram(name: "iswprint", scope: !404, file: !404, line: 120, type: !405, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!404 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!405 = !DISubroutineType(types: !406)
!406 = !{!43, !6}
!407 = !DISubprogram(name: "mbsinit", scope: !408, file: !408, line: 292, type: !409, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!408 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!409 = !DISubroutineType(types: !410)
!410 = !{!43, !411}
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !391)
!413 = !DISubprogram(name: "locale_charset", scope: !414, file: !414, line: 35, type: !415, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!414 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!415 = !DISubroutineType(types: !416)
!416 = !{!41}
!417 = !DISubprogram(name: "c_strcasecmp", scope: !418, file: !418, line: 42, type: !419, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!418 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!419 = !DISubroutineType(types: !420)
!420 = !{!43, !41, !41}
!421 = !DISubprogram(name: "xmalloc", scope: !363, file: !363, line: 53, type: !422, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!422 = !DISubroutineType(types: !423)
!423 = !{!96, !100}
!424 = !DISubprogram(name: "xalloc_die", scope: !363, file: !363, line: 51, type: !130, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !44)
!425 = !DISubprogram(name: "xrealloc", scope: !363, file: !363, line: 59, type: !426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!426 = !DISubroutineType(types: !427)
!427 = !{!96, !96, !100}
!428 = !{!336, !429, !435, !437, !439, !444, !451, !453}
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !338, file: !339, line: 101, type: !431, isLocal: false, isDefinition: true)
!431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !432, size: 320, elements: !433)
!432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!433 = !{!434}
!434 = !DISubrange(count: 10)
!435 = !DIGlobalVariableExpression(var: !436, expr: !DIExpression())
!436 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !338, file: !339, line: 1052, type: !372, isLocal: false, isDefinition: true)
!437 = !DIGlobalVariableExpression(var: !438, expr: !DIExpression())
!438 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !338, file: !339, line: 116, type: !372, isLocal: true, isDefinition: true)
!439 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression())
!440 = distinct !DIGlobalVariable(name: "slot0", scope: !338, file: !339, line: 842, type: !441, isLocal: true, isDefinition: true)
!441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 2048, elements: !442)
!442 = !{!443}
!443 = !DISubrange(count: 256)
!444 = !DIGlobalVariableExpression(var: !445, expr: !DIExpression())
!445 = distinct !DIGlobalVariable(name: "slotvec", scope: !338, file: !339, line: 845, type: !446, isLocal: true, isDefinition: true)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !339, line: 834, size: 128, elements: !448)
!448 = !{!449, !450}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !447, file: !339, line: 836, baseType: !98, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !447, file: !339, line: 837, baseType: !39, size: 64, offset: 64)
!451 = !DIGlobalVariableExpression(var: !452, expr: !DIExpression())
!452 = distinct !DIGlobalVariable(name: "nslots", scope: !338, file: !339, line: 843, type: !43, isLocal: true, isDefinition: true)
!453 = !DIGlobalVariableExpression(var: !454, expr: !DIExpression())
!454 = distinct !DIGlobalVariable(name: "slotvec0", scope: !338, file: !339, line: 844, type: !447, isLocal: true, isDefinition: true)
!455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !456, size: 704, elements: !457)
!456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!457 = !{!458}
!458 = !DISubrange(count: 11)
!459 = !DIGlobalVariableExpression(var: !460, expr: !DIExpression())
!460 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !461, file: !462, line: 26, type: !464, isLocal: false, isDefinition: true)
!461 = distinct !DICompileUnit(language: DW_LANG_C99, file: !462, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !44, globals: !463, splitDebugInlining: false, nameTableKind: None)
!462 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!463 = !{!459}
!464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 376, elements: !465)
!465 = !{!466}
!466 = !DISubrange(count: 47)
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !469, file: !470, line: 507, type: !43, isLocal: true, isDefinition: true)
!469 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !470, file: !470, line: 488, type: !471, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !484)
!470 = !DIFile(filename: "lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!471 = !DISubroutineType(types: !472)
!472 = !{!43, !43, !43}
!473 = distinct !DICompileUnit(language: DW_LANG_C99, file: !470, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !44, retainedTypes: !474, globals: !483, splitDebugInlining: false, nameTableKind: None)
!474 = !{!475, !479}
!475 = !DISubprogram(name: "fcntl", scope: !476, file: !476, line: 176, type: !477, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!476 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!477 = !DISubroutineType(types: !478)
!478 = !{!43, !43, !43, null}
!479 = !DISubprogram(name: "close", scope: !480, file: !480, line: 353, type: !481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!480 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!481 = !DISubroutineType(types: !482)
!482 = !{!43, !43}
!483 = !{!467}
!484 = !{!485, !486, !487, !488, !491}
!485 = !DILocalVariable(name: "fd", arg: 1, scope: !469, file: !470, line: 488, type: !43)
!486 = !DILocalVariable(name: "target", arg: 2, scope: !469, file: !470, line: 488, type: !43)
!487 = !DILocalVariable(name: "result", scope: !469, file: !470, line: 490, type: !43)
!488 = !DILocalVariable(name: "flags", scope: !489, file: !470, line: 531, type: !43)
!489 = distinct !DILexicalBlock(scope: !490, file: !470, line: 530, column: 5)
!490 = distinct !DILexicalBlock(scope: !469, file: !470, line: 529, column: 7)
!491 = !DILocalVariable(name: "saved_errno", scope: !492, file: !470, line: 534, type: !43)
!492 = distinct !DILexicalBlock(scope: !493, file: !470, line: 533, column: 9)
!493 = distinct !DILexicalBlock(scope: !489, file: !470, line: 532, column: 11)
!494 = distinct !DICompileUnit(language: DW_LANG_C99, file: !495, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !496, retainedTypes: !497, splitDebugInlining: false, nameTableKind: None)
!495 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!496 = !{!25}
!497 = !{!498, !501}
!498 = !DISubprogram(name: "posix_fadvise", scope: !476, file: !476, line: 288, type: !499, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!499 = !DISubroutineType(types: !500)
!500 = !{!43, !43, !74, !74, !43}
!501 = !DISubprogram(name: "fileno", scope: !46, file: !46, line: 786, type: !502, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!502 = !DISubroutineType(types: !503)
!503 = !{!43, !504}
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !51, line: 49, size: 1728, elements: !506)
!506 = !{!507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !505, file: !51, line: 51, baseType: !43, size: 32)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !505, file: !51, line: 54, baseType: !39, size: 64, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !505, file: !51, line: 55, baseType: !39, size: 64, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !505, file: !51, line: 56, baseType: !39, size: 64, offset: 192)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !505, file: !51, line: 57, baseType: !39, size: 64, offset: 256)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !505, file: !51, line: 58, baseType: !39, size: 64, offset: 320)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !505, file: !51, line: 59, baseType: !39, size: 64, offset: 384)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !505, file: !51, line: 60, baseType: !39, size: 64, offset: 448)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !505, file: !51, line: 61, baseType: !39, size: 64, offset: 512)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !505, file: !51, line: 64, baseType: !39, size: 64, offset: 576)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !505, file: !51, line: 65, baseType: !39, size: 64, offset: 640)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !505, file: !51, line: 66, baseType: !39, size: 64, offset: 704)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !505, file: !51, line: 68, baseType: !66, size: 64, offset: 768)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !505, file: !51, line: 70, baseType: !504, size: 64, offset: 832)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !505, file: !51, line: 72, baseType: !43, size: 32, offset: 896)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !505, file: !51, line: 73, baseType: !43, size: 32, offset: 928)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !505, file: !51, line: 74, baseType: !72, size: 64, offset: 960)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !505, file: !51, line: 77, baseType: !76, size: 16, offset: 1024)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !505, file: !51, line: 78, baseType: !78, size: 8, offset: 1040)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !505, file: !51, line: 79, baseType: !80, size: 8, offset: 1048)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !505, file: !51, line: 81, baseType: !84, size: 64, offset: 1088)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !505, file: !51, line: 89, baseType: !87, size: 64, offset: 1152)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !505, file: !51, line: 91, baseType: !89, size: 64, offset: 1216)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !505, file: !51, line: 92, baseType: !92, size: 64, offset: 1280)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !505, file: !51, line: 93, baseType: !504, size: 64, offset: 1344)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !505, file: !51, line: 94, baseType: !96, size: 64, offset: 1408)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !505, file: !51, line: 95, baseType: !98, size: 64, offset: 1472)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !505, file: !51, line: 96, baseType: !43, size: 32, offset: 1536)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !505, file: !51, line: 98, baseType: !103, size: 160, offset: 1568)
!536 = distinct !DICompileUnit(language: DW_LANG_C99, file: !537, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !44, retainedTypes: !538, splitDebugInlining: false, nameTableKind: None)
!537 = !DIFile(filename: "lib/fopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!538 = !{!539, !574, !576, !577, !479}
!539 = !DISubprogram(name: "fileno", scope: !46, file: !46, line: 786, type: !540, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!540 = !DISubroutineType(types: !541)
!541 = !{!43, !542}
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !51, line: 49, size: 1728, elements: !544)
!544 = !{!545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !543, file: !51, line: 51, baseType: !43, size: 32)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !543, file: !51, line: 54, baseType: !39, size: 64, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !543, file: !51, line: 55, baseType: !39, size: 64, offset: 128)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !543, file: !51, line: 56, baseType: !39, size: 64, offset: 192)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !543, file: !51, line: 57, baseType: !39, size: 64, offset: 256)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !543, file: !51, line: 58, baseType: !39, size: 64, offset: 320)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !543, file: !51, line: 59, baseType: !39, size: 64, offset: 384)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !543, file: !51, line: 60, baseType: !39, size: 64, offset: 448)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !543, file: !51, line: 61, baseType: !39, size: 64, offset: 512)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !543, file: !51, line: 64, baseType: !39, size: 64, offset: 576)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !543, file: !51, line: 65, baseType: !39, size: 64, offset: 640)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !543, file: !51, line: 66, baseType: !39, size: 64, offset: 704)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !543, file: !51, line: 68, baseType: !66, size: 64, offset: 768)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !543, file: !51, line: 70, baseType: !542, size: 64, offset: 832)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !543, file: !51, line: 72, baseType: !43, size: 32, offset: 896)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !543, file: !51, line: 73, baseType: !43, size: 32, offset: 928)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !543, file: !51, line: 74, baseType: !72, size: 64, offset: 960)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !543, file: !51, line: 77, baseType: !76, size: 16, offset: 1024)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !543, file: !51, line: 78, baseType: !78, size: 8, offset: 1040)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !543, file: !51, line: 79, baseType: !80, size: 8, offset: 1048)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !543, file: !51, line: 81, baseType: !84, size: 64, offset: 1088)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !543, file: !51, line: 89, baseType: !87, size: 64, offset: 1152)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !543, file: !51, line: 91, baseType: !89, size: 64, offset: 1216)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !543, file: !51, line: 92, baseType: !92, size: 64, offset: 1280)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !543, file: !51, line: 93, baseType: !542, size: 64, offset: 1344)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !543, file: !51, line: 94, baseType: !96, size: 64, offset: 1408)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !543, file: !51, line: 95, baseType: !98, size: 64, offset: 1472)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !543, file: !51, line: 96, baseType: !43, size: 32, offset: 1536)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !543, file: !51, line: 98, baseType: !103, size: 160, offset: 1568)
!574 = !DISubprogram(name: "dup_safer", scope: !575, file: !575, line: 20, type: !481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!575 = !DIFile(filename: "./lib/unistd-safer.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!576 = !DISubprogram(name: "rpl_fclose", scope: !187, file: !187, line: 672, type: !540, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!577 = !DISubprogram(name: "fdopen", scope: !46, file: !46, line: 279, type: !578, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!578 = !DISubroutineType(types: !579)
!579 = !{!542, !43, !41}
!580 = distinct !DICompileUnit(language: DW_LANG_C99, file: !581, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !44, retainedTypes: !582, splitDebugInlining: false, nameTableKind: None)
!581 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!582 = !{!583}
!583 = !DISubprogram(name: "setlocale_null_r", scope: !584, file: !584, line: 64, type: !585, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!584 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!585 = !DISubroutineType(types: !586)
!586 = !{!43, !43, !39, !100}
!587 = distinct !DICompileUnit(language: DW_LANG_C99, file: !588, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !44, retainedTypes: !589, splitDebugInlining: false, nameTableKind: None)
!588 = !DIFile(filename: "lib/umaxtostr.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!589 = !{!590}
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !591, line: 102, baseType: !592)
!591 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !73, line: 73, baseType: !100)
!593 = distinct !DICompileUnit(language: DW_LANG_C99, file: !594, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !44, retainedTypes: !595, splitDebugInlining: false, nameTableKind: None)
!594 = !DIFile(filename: "lib/linebuffer.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!595 = !{!596, !637, !380, !640}
!596 = !DISubprogram(name: "readlinebuffer_delim", scope: !160, file: !160, line: 41, type: !597, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!597 = !DISubroutineType(types: !598)
!598 = !{!599, !599, !605, !40}
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !160, line: 26, size: 192, elements: !601)
!601 = !{!602, !603, !604}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !600, file: !160, line: 28, baseType: !98, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !600, file: !160, line: 29, baseType: !98, size: 64, offset: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !600, file: !160, line: 30, baseType: !39, size: 64, offset: 128)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !51, line: 49, size: 1728, elements: !607)
!607 = !{!608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !606, file: !51, line: 51, baseType: !43, size: 32)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !606, file: !51, line: 54, baseType: !39, size: 64, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !606, file: !51, line: 55, baseType: !39, size: 64, offset: 128)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !606, file: !51, line: 56, baseType: !39, size: 64, offset: 192)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !606, file: !51, line: 57, baseType: !39, size: 64, offset: 256)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !606, file: !51, line: 58, baseType: !39, size: 64, offset: 320)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !606, file: !51, line: 59, baseType: !39, size: 64, offset: 384)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !606, file: !51, line: 60, baseType: !39, size: 64, offset: 448)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !606, file: !51, line: 61, baseType: !39, size: 64, offset: 512)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !606, file: !51, line: 64, baseType: !39, size: 64, offset: 576)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !606, file: !51, line: 65, baseType: !39, size: 64, offset: 640)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !606, file: !51, line: 66, baseType: !39, size: 64, offset: 704)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !606, file: !51, line: 68, baseType: !66, size: 64, offset: 768)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !606, file: !51, line: 70, baseType: !605, size: 64, offset: 832)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !606, file: !51, line: 72, baseType: !43, size: 32, offset: 896)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !606, file: !51, line: 73, baseType: !43, size: 32, offset: 928)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !606, file: !51, line: 74, baseType: !72, size: 64, offset: 960)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !606, file: !51, line: 77, baseType: !76, size: 16, offset: 1024)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !606, file: !51, line: 78, baseType: !78, size: 8, offset: 1040)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !606, file: !51, line: 79, baseType: !80, size: 8, offset: 1048)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !606, file: !51, line: 81, baseType: !84, size: 64, offset: 1088)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !606, file: !51, line: 89, baseType: !87, size: 64, offset: 1152)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !606, file: !51, line: 91, baseType: !89, size: 64, offset: 1216)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !606, file: !51, line: 92, baseType: !92, size: 64, offset: 1280)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !606, file: !51, line: 93, baseType: !605, size: 64, offset: 1344)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !606, file: !51, line: 94, baseType: !96, size: 64, offset: 1408)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !606, file: !51, line: 95, baseType: !98, size: 64, offset: 1472)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !606, file: !51, line: 96, baseType: !43, size: 32, offset: 1536)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !606, file: !51, line: 98, baseType: !103, size: 160, offset: 1568)
!637 = !DISubprogram(name: "x2realloc", scope: !363, file: !363, line: 61, type: !638, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!638 = !DISubroutineType(types: !639)
!639 = !{!96, !96, !369}
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!641 = distinct !DICompileUnit(language: DW_LANG_C99, file: !642, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !44, splitDebugInlining: false, nameTableKind: None)
!642 = !DIFile(filename: "lib/memcmp2.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!643 = distinct !DICompileUnit(language: DW_LANG_C99, file: !644, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !44, retainedTypes: !645, splitDebugInlining: false, nameTableKind: None)
!644 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!645 = !{!96, !110}
!646 = distinct !DICompileUnit(language: DW_LANG_C99, file: !647, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !44, retainedTypes: !648, splitDebugInlining: false, nameTableKind: None)
!647 = !DIFile(filename: "lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!648 = !{!649}
!649 = !DISubprogram(name: "rpl_fcntl", scope: !650, file: !650, line: 588, type: !477, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!650 = !DIFile(filename: "./lib/fcntl.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!651 = distinct !DICompileUnit(language: DW_LANG_C99, file: !652, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !653, retainedTypes: !657, splitDebugInlining: false, nameTableKind: None)
!652 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!653 = !{!654}
!654 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !652, line: 40, baseType: !6, size: 32, elements: !655)
!655 = !{!656}
!656 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!657 = !{!35, !658, !96}
!658 = !DISubprogram(name: "fputs_unlocked", scope: !46, file: !46, line: 662, type: !659, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!659 = !DISubroutineType(types: !660)
!660 = !{!43, !41, !661}
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !51, line: 49, size: 1728, elements: !663)
!663 = !{!664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !662, file: !51, line: 51, baseType: !43, size: 32)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !662, file: !51, line: 54, baseType: !39, size: 64, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !662, file: !51, line: 55, baseType: !39, size: 64, offset: 128)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !662, file: !51, line: 56, baseType: !39, size: 64, offset: 192)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !662, file: !51, line: 57, baseType: !39, size: 64, offset: 256)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !662, file: !51, line: 58, baseType: !39, size: 64, offset: 320)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !662, file: !51, line: 59, baseType: !39, size: 64, offset: 384)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !662, file: !51, line: 60, baseType: !39, size: 64, offset: 448)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !662, file: !51, line: 61, baseType: !39, size: 64, offset: 512)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !662, file: !51, line: 64, baseType: !39, size: 64, offset: 576)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !662, file: !51, line: 65, baseType: !39, size: 64, offset: 640)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !662, file: !51, line: 66, baseType: !39, size: 64, offset: 704)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !662, file: !51, line: 68, baseType: !66, size: 64, offset: 768)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !662, file: !51, line: 70, baseType: !661, size: 64, offset: 832)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !662, file: !51, line: 72, baseType: !43, size: 32, offset: 896)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !662, file: !51, line: 73, baseType: !43, size: 32, offset: 928)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !662, file: !51, line: 74, baseType: !72, size: 64, offset: 960)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !662, file: !51, line: 77, baseType: !76, size: 16, offset: 1024)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !662, file: !51, line: 78, baseType: !78, size: 8, offset: 1040)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !662, file: !51, line: 79, baseType: !80, size: 8, offset: 1048)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !662, file: !51, line: 81, baseType: !84, size: 64, offset: 1088)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !662, file: !51, line: 89, baseType: !87, size: 64, offset: 1152)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !662, file: !51, line: 91, baseType: !89, size: 64, offset: 1216)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !662, file: !51, line: 92, baseType: !92, size: 64, offset: 1280)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !662, file: !51, line: 93, baseType: !661, size: 64, offset: 1344)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !662, file: !51, line: 94, baseType: !96, size: 64, offset: 1408)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !662, file: !51, line: 95, baseType: !98, size: 64, offset: 1472)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !662, file: !51, line: 96, baseType: !43, size: 32, offset: 1536)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !662, file: !51, line: 98, baseType: !103, size: 160, offset: 1568)
!693 = distinct !DICompileUnit(language: DW_LANG_C99, file: !694, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !695, retainedTypes: !708, splitDebugInlining: false, nameTableKind: None)
!694 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!695 = !{!696}
!696 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !697, file: !363, line: 186, baseType: !6, size: 32, elements: !706)
!697 = distinct !DISubprogram(name: "x2nrealloc", scope: !363, file: !363, line: 174, type: !698, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !701)
!698 = !DISubroutineType(types: !699)
!699 = !{!96, !96, !700, !98}
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!701 = !{!702, !703, !704, !705}
!702 = !DILocalVariable(name: "p", arg: 1, scope: !697, file: !363, line: 174, type: !96)
!703 = !DILocalVariable(name: "pn", arg: 2, scope: !697, file: !363, line: 174, type: !700)
!704 = !DILocalVariable(name: "s", arg: 3, scope: !697, file: !363, line: 174, type: !98)
!705 = !DILocalVariable(name: "n", scope: !697, file: !363, line: 176, type: !98)
!706 = !{!707}
!707 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!708 = !{!98, !424, !421, !425, !39, !380, !96, !709, !712}
!709 = !DISubprogram(name: "xcalloc", scope: !363, file: !363, line: 57, type: !710, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!710 = !DISubroutineType(types: !711)
!711 = !{!96, !100, !100}
!712 = !DISubprogram(name: "rpl_calloc", scope: !713, file: !713, line: 688, type: !710, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!713 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!714 = distinct !DICompileUnit(language: DW_LANG_C99, file: !715, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !44, retainedTypes: !716, splitDebugInlining: false, nameTableKind: None)
!715 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!716 = !{!35, !147}
!717 = distinct !DICompileUnit(language: DW_LANG_C99, file: !718, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !719, retainedTypes: !720, splitDebugInlining: false, nameTableKind: None)
!718 = !DIFile(filename: "lib/xmemcoll.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!719 = !{!11}
!720 = !{!721, !723, !35, !147, !724}
!721 = !DISubprogram(name: "memcoll", scope: !722, file: !722, line: 25, type: !184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!722 = !DIFile(filename: "./lib/memcoll.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!723 = !DISubprogram(name: "memcoll0", scope: !722, file: !722, line: 26, type: !202, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!724 = !DISubprogram(name: "quotearg_n_style_mem", scope: !12, file: !12, line: 373, type: !725, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!725 = !DISubroutineType(types: !726)
!726 = !{!39, !43, !11, !41, !100}
!727 = distinct !DICompileUnit(language: DW_LANG_C99, file: !728, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !44, retainedTypes: !729, splitDebugInlining: false, nameTableKind: None)
!728 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!729 = !{!96}
!730 = distinct !DICompileUnit(language: DW_LANG_C99, file: !731, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !44, retainedTypes: !732, splitDebugInlining: false, nameTableKind: None)
!731 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!732 = !{!733, !768, !769, !772}
!733 = !DISubprogram(name: "fileno", scope: !46, file: !46, line: 786, type: !734, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!734 = !DISubroutineType(types: !735)
!735 = !{!43, !736}
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !51, line: 49, size: 1728, elements: !738)
!738 = !{!739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !737, file: !51, line: 51, baseType: !43, size: 32)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !737, file: !51, line: 54, baseType: !39, size: 64, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !737, file: !51, line: 55, baseType: !39, size: 64, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !737, file: !51, line: 56, baseType: !39, size: 64, offset: 192)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !737, file: !51, line: 57, baseType: !39, size: 64, offset: 256)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !737, file: !51, line: 58, baseType: !39, size: 64, offset: 320)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !737, file: !51, line: 59, baseType: !39, size: 64, offset: 384)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !737, file: !51, line: 60, baseType: !39, size: 64, offset: 448)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !737, file: !51, line: 61, baseType: !39, size: 64, offset: 512)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !737, file: !51, line: 64, baseType: !39, size: 64, offset: 576)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !737, file: !51, line: 65, baseType: !39, size: 64, offset: 640)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !737, file: !51, line: 66, baseType: !39, size: 64, offset: 704)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !737, file: !51, line: 68, baseType: !66, size: 64, offset: 768)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !737, file: !51, line: 70, baseType: !736, size: 64, offset: 832)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !737, file: !51, line: 72, baseType: !43, size: 32, offset: 896)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !737, file: !51, line: 73, baseType: !43, size: 32, offset: 928)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !737, file: !51, line: 74, baseType: !72, size: 64, offset: 960)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !737, file: !51, line: 77, baseType: !76, size: 16, offset: 1024)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !737, file: !51, line: 78, baseType: !78, size: 8, offset: 1040)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !737, file: !51, line: 79, baseType: !80, size: 8, offset: 1048)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !737, file: !51, line: 81, baseType: !84, size: 64, offset: 1088)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !737, file: !51, line: 89, baseType: !87, size: 64, offset: 1152)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !737, file: !51, line: 91, baseType: !89, size: 64, offset: 1216)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !737, file: !51, line: 92, baseType: !92, size: 64, offset: 1280)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !737, file: !51, line: 93, baseType: !736, size: 64, offset: 1344)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !737, file: !51, line: 94, baseType: !96, size: 64, offset: 1408)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !737, file: !51, line: 95, baseType: !98, size: 64, offset: 1472)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !737, file: !51, line: 96, baseType: !43, size: 32, offset: 1536)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !737, file: !51, line: 98, baseType: !103, size: 160, offset: 1568)
!768 = !DISubprogram(name: "fclose", scope: !46, file: !46, line: 213, type: !734, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!769 = !DISubprogram(name: "lseek", scope: !480, file: !480, line: 334, type: !770, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!770 = !DISubroutineType(types: !771)
!771 = !{!74, !43, !74, !43}
!772 = !DISubprogram(name: "rpl_fflush", scope: !187, file: !187, line: 718, type: !734, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!773 = distinct !DICompileUnit(language: DW_LANG_C99, file: !774, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !44, retainedTypes: !775, splitDebugInlining: false, nameTableKind: None)
!774 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!775 = !{!96, !776, !811}
!776 = !DISubprogram(name: "fflush", scope: !46, file: !46, line: 218, type: !777, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!777 = !DISubroutineType(types: !778)
!778 = !{!43, !779}
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !51, line: 49, size: 1728, elements: !781)
!781 = !{!782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !780, file: !51, line: 51, baseType: !43, size: 32)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !780, file: !51, line: 54, baseType: !39, size: 64, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !780, file: !51, line: 55, baseType: !39, size: 64, offset: 128)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !780, file: !51, line: 56, baseType: !39, size: 64, offset: 192)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !780, file: !51, line: 57, baseType: !39, size: 64, offset: 256)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !780, file: !51, line: 58, baseType: !39, size: 64, offset: 320)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !780, file: !51, line: 59, baseType: !39, size: 64, offset: 384)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !780, file: !51, line: 60, baseType: !39, size: 64, offset: 448)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !780, file: !51, line: 61, baseType: !39, size: 64, offset: 512)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !780, file: !51, line: 64, baseType: !39, size: 64, offset: 576)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !780, file: !51, line: 65, baseType: !39, size: 64, offset: 640)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !780, file: !51, line: 66, baseType: !39, size: 64, offset: 704)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !780, file: !51, line: 68, baseType: !66, size: 64, offset: 768)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !780, file: !51, line: 70, baseType: !779, size: 64, offset: 832)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !780, file: !51, line: 72, baseType: !43, size: 32, offset: 896)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !780, file: !51, line: 73, baseType: !43, size: 32, offset: 928)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !780, file: !51, line: 74, baseType: !72, size: 64, offset: 960)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !780, file: !51, line: 77, baseType: !76, size: 16, offset: 1024)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !780, file: !51, line: 78, baseType: !78, size: 8, offset: 1040)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !780, file: !51, line: 79, baseType: !80, size: 8, offset: 1048)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !780, file: !51, line: 81, baseType: !84, size: 64, offset: 1088)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !780, file: !51, line: 89, baseType: !87, size: 64, offset: 1152)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !780, file: !51, line: 91, baseType: !89, size: 64, offset: 1216)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !780, file: !51, line: 92, baseType: !92, size: 64, offset: 1280)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !780, file: !51, line: 93, baseType: !779, size: 64, offset: 1344)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !780, file: !51, line: 94, baseType: !96, size: 64, offset: 1408)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !780, file: !51, line: 95, baseType: !98, size: 64, offset: 1472)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !780, file: !51, line: 96, baseType: !43, size: 32, offset: 1536)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !780, file: !51, line: 98, baseType: !103, size: 160, offset: 1568)
!811 = !DISubprogram(name: "rpl_fseeko", scope: !187, file: !187, line: 1034, type: !812, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!812 = !DISubroutineType(types: !813)
!813 = !{!43, !779, !74, !43}
!814 = distinct !DICompileUnit(language: DW_LANG_C99, file: !815, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !44, retainedTypes: !816, splitDebugInlining: false, nameTableKind: None)
!815 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!816 = !{!96, !817, !769, !852}
!817 = !DISubprogram(name: "fileno", scope: !46, file: !46, line: 786, type: !818, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!818 = !DISubroutineType(types: !819)
!819 = !{!43, !820}
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !51, line: 49, size: 1728, elements: !822)
!822 = !{!823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !821, file: !51, line: 51, baseType: !43, size: 32)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !821, file: !51, line: 54, baseType: !39, size: 64, offset: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !821, file: !51, line: 55, baseType: !39, size: 64, offset: 128)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !821, file: !51, line: 56, baseType: !39, size: 64, offset: 192)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !821, file: !51, line: 57, baseType: !39, size: 64, offset: 256)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !821, file: !51, line: 58, baseType: !39, size: 64, offset: 320)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !821, file: !51, line: 59, baseType: !39, size: 64, offset: 384)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !821, file: !51, line: 60, baseType: !39, size: 64, offset: 448)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !821, file: !51, line: 61, baseType: !39, size: 64, offset: 512)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !821, file: !51, line: 64, baseType: !39, size: 64, offset: 576)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !821, file: !51, line: 65, baseType: !39, size: 64, offset: 640)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !821, file: !51, line: 66, baseType: !39, size: 64, offset: 704)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !821, file: !51, line: 68, baseType: !66, size: 64, offset: 768)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !821, file: !51, line: 70, baseType: !820, size: 64, offset: 832)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !821, file: !51, line: 72, baseType: !43, size: 32, offset: 896)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !821, file: !51, line: 73, baseType: !43, size: 32, offset: 928)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !821, file: !51, line: 74, baseType: !72, size: 64, offset: 960)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !821, file: !51, line: 77, baseType: !76, size: 16, offset: 1024)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !821, file: !51, line: 78, baseType: !78, size: 8, offset: 1040)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !821, file: !51, line: 79, baseType: !80, size: 8, offset: 1048)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !821, file: !51, line: 81, baseType: !84, size: 64, offset: 1088)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !821, file: !51, line: 89, baseType: !87, size: 64, offset: 1152)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !821, file: !51, line: 91, baseType: !89, size: 64, offset: 1216)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !821, file: !51, line: 92, baseType: !92, size: 64, offset: 1280)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !821, file: !51, line: 93, baseType: !820, size: 64, offset: 1344)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !821, file: !51, line: 94, baseType: !96, size: 64, offset: 1408)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !821, file: !51, line: 95, baseType: !98, size: 64, offset: 1472)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !821, file: !51, line: 96, baseType: !43, size: 32, offset: 1536)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !821, file: !51, line: 98, baseType: !103, size: 160, offset: 1568)
!852 = !DISubprogram(name: "fseeko", scope: !46, file: !46, line: 707, type: !853, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!853 = !DISubroutineType(types: !854)
!854 = !{!43, !820, !74, !43}
!855 = distinct !DICompileUnit(language: DW_LANG_C99, file: !856, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !44, retainedTypes: !857, splitDebugInlining: false, nameTableKind: None)
!856 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!857 = !{!858, !98, !120}
!858 = !DISubprogram(name: "mbrtowc", scope: !408, file: !408, line: 296, type: !859, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!859 = !DISubroutineType(types: !860)
!860 = !{!100, !145, !41, !100, !861}
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !392, line: 13, size: 64, elements: !863)
!863 = !{!864, !865}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !862, file: !392, line: 15, baseType: !43, size: 32)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !862, file: !392, line: 20, baseType: !866, size: 32, offset: 32)
!866 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !862, file: !392, line: 16, size: 32, elements: !867)
!867 = !{!868, !869}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !866, file: !392, line: 18, baseType: !6, size: 32)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !866, file: !392, line: 19, baseType: !400, size: 32)
!870 = distinct !DICompileUnit(language: DW_LANG_C99, file: !871, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !44, retainedTypes: !872, splitDebugInlining: false, nameTableKind: None)
!871 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!872 = !{!873}
!873 = !DISubprogram(name: "rpl_fclose", scope: !187, file: !187, line: 672, type: !874, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!874 = !DISubroutineType(types: !875)
!875 = !{!43, !876}
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !51, line: 49, size: 1728, elements: !878)
!878 = !{!879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !877, file: !51, line: 51, baseType: !43, size: 32)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !877, file: !51, line: 54, baseType: !39, size: 64, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !877, file: !51, line: 55, baseType: !39, size: 64, offset: 128)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !877, file: !51, line: 56, baseType: !39, size: 64, offset: 192)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !877, file: !51, line: 57, baseType: !39, size: 64, offset: 256)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !877, file: !51, line: 58, baseType: !39, size: 64, offset: 320)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !877, file: !51, line: 59, baseType: !39, size: 64, offset: 384)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !877, file: !51, line: 60, baseType: !39, size: 64, offset: 448)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !877, file: !51, line: 61, baseType: !39, size: 64, offset: 512)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !877, file: !51, line: 64, baseType: !39, size: 64, offset: 576)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !877, file: !51, line: 65, baseType: !39, size: 64, offset: 640)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !877, file: !51, line: 66, baseType: !39, size: 64, offset: 704)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !877, file: !51, line: 68, baseType: !66, size: 64, offset: 768)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !877, file: !51, line: 70, baseType: !876, size: 64, offset: 832)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !877, file: !51, line: 72, baseType: !43, size: 32, offset: 896)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !877, file: !51, line: 73, baseType: !43, size: 32, offset: 928)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !877, file: !51, line: 74, baseType: !72, size: 64, offset: 960)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !877, file: !51, line: 77, baseType: !76, size: 16, offset: 1024)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !877, file: !51, line: 78, baseType: !78, size: 8, offset: 1040)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !877, file: !51, line: 79, baseType: !80, size: 8, offset: 1048)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !877, file: !51, line: 81, baseType: !84, size: 64, offset: 1088)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !877, file: !51, line: 89, baseType: !87, size: 64, offset: 1152)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !877, file: !51, line: 91, baseType: !89, size: 64, offset: 1216)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !877, file: !51, line: 92, baseType: !92, size: 64, offset: 1280)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !877, file: !51, line: 93, baseType: !876, size: 64, offset: 1344)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !877, file: !51, line: 94, baseType: !96, size: 64, offset: 1408)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !877, file: !51, line: 95, baseType: !98, size: 64, offset: 1472)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !877, file: !51, line: 96, baseType: !43, size: 32, offset: 1536)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !877, file: !51, line: 98, baseType: !103, size: 160, offset: 1568)
!908 = distinct !DICompileUnit(language: DW_LANG_C99, file: !909, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !910, retainedTypes: !1297, splitDebugInlining: false, nameTableKind: None)
!909 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!910 = !{!911}
!911 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !912, line: 41, baseType: !6, size: 32, elements: !913)
!912 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!913 = !{!914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296}
!914 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!915 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!916 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!917 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!918 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!919 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!920 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!921 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!922 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!923 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!924 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!925 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!926 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!927 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!928 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!929 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!930 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!931 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!932 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!933 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!934 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!935 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!936 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!937 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!938 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!939 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!940 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!941 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!942 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!943 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!944 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!945 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!946 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!947 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!948 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!949 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!950 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!951 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!952 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!953 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!954 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!955 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!956 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!957 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!958 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!959 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!960 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!961 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!962 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!963 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!964 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!965 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!966 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!967 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!968 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!969 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!970 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!971 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!972 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!973 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!974 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!975 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!976 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!977 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!978 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!979 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!980 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!981 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!982 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!983 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!984 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!985 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!986 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!987 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!988 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!989 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!990 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!991 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!992 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!993 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!994 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!995 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!996 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!997 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!998 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!999 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!1000 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!1001 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!1002 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!1003 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!1004 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!1005 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!1006 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!1007 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!1008 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!1009 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!1010 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!1011 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!1012 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!1013 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!1014 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!1015 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!1016 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!1017 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!1018 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!1019 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!1020 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!1021 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!1022 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!1023 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!1024 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!1025 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!1026 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!1027 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!1028 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!1029 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!1030 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!1031 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!1032 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!1033 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!1034 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!1035 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!1036 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!1037 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!1038 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!1039 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!1040 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!1041 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!1042 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!1043 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!1044 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!1045 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!1046 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!1047 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!1048 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!1049 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!1050 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!1051 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!1052 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!1053 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!1054 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!1055 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!1056 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!1057 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!1058 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!1059 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!1060 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!1061 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!1062 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!1063 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!1064 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!1065 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!1066 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!1067 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!1068 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!1069 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!1070 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!1071 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!1072 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!1073 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!1074 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!1075 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!1076 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!1077 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!1078 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!1079 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!1080 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!1081 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!1082 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!1083 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!1084 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!1085 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!1086 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!1087 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!1088 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!1089 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!1090 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!1091 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!1092 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!1093 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!1094 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!1095 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!1096 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!1097 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!1098 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!1099 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!1100 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!1101 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!1102 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!1103 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!1104 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!1105 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!1106 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!1107 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!1108 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!1109 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!1110 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!1111 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!1112 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!1113 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!1114 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!1115 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!1116 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!1117 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!1118 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!1119 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!1120 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!1121 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!1122 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!1123 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!1124 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!1125 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!1126 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!1127 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!1128 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!1129 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!1130 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!1131 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!1132 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!1133 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!1134 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!1135 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!1136 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!1137 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!1138 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!1139 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!1140 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!1141 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!1142 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!1143 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!1144 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!1145 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!1146 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!1147 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!1148 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!1149 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!1150 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!1151 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!1152 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!1153 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!1154 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!1155 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!1156 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!1157 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!1158 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!1159 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!1160 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!1161 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!1162 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!1163 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!1164 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!1165 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!1166 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!1167 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!1168 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!1169 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!1170 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!1171 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!1172 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!1173 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!1174 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!1175 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!1176 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!1177 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!1178 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!1179 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!1180 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!1181 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!1182 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!1183 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!1184 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!1185 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!1186 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!1187 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!1188 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!1189 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!1190 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!1191 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!1192 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!1193 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!1194 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!1195 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!1196 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!1197 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!1198 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!1199 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!1200 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!1201 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!1202 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!1203 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!1204 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!1205 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!1206 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!1207 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!1208 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!1209 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!1210 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!1211 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!1212 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!1213 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!1214 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!1215 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!1216 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!1217 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!1218 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!1219 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!1220 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!1221 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!1222 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!1223 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!1224 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!1225 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!1226 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!1227 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!1228 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!1229 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!1230 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!1231 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!1232 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!1233 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!1234 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!1235 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!1236 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!1237 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!1238 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!1239 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!1240 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!1241 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!1242 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!1243 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!1244 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!1245 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!1246 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!1247 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!1248 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!1249 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!1250 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!1251 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!1252 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!1253 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!1254 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!1255 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!1256 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!1257 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!1258 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!1259 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!1260 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!1261 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!1262 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!1263 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!1264 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!1265 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!1266 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!1267 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!1268 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!1269 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!1270 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!1271 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!1272 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!1273 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!1274 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!1275 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!1276 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!1277 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!1278 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!1279 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!1280 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!1281 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!1282 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!1283 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!1284 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!1285 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!1286 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!1287 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!1288 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!1289 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!1290 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!1291 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!1292 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!1293 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!1294 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!1295 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!1296 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!1297 = !{!1298, !96}
!1298 = !DISubprogram(name: "nl_langinfo", scope: !912, file: !912, line: 661, type: !1299, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!39, !43}
!1301 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1302, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !44, retainedTypes: !1303, splitDebugInlining: false, nameTableKind: None)
!1302 = !DIFile(filename: "lib/memcoll.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1303 = !{!1304}
!1304 = !DISubprogram(name: "strcoll", scope: !1305, file: !1305, line: 144, type: !419, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!1305 = !DIFile(filename: "/usr/include/string.h", directory: "")
!1306 = !{!"clang version 10.0.0 "}
!1307 = !{i32 7, !"Dwarf Version", i32 4}
!1308 = !{i32 2, !"Debug Info Version", i32 3}
!1309 = !{i32 1, !"wchar_size", i32 4}
!1310 = !{i32 7, !"PIC Level", i32 2}
!1311 = !{i32 7, !"PIE Level", i32 2}
!1312 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 106, type: !1313, scopeLine: 107, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1315)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{null, !43}
!1315 = !{!1316}
!1316 = !DILocalVariable(name: "status", arg: 1, scope: !1312, file: !3, line: 106, type: !43)
!1317 = !DILocalVariable(name: "infomap", scope: !1318, file: !1319, line: 636, type: !1331)
!1318 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1319, file: !1319, line: 634, type: !108, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1320)
!1319 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1320 = !{!1321, !1317, !1322, !1323, !1330}
!1321 = !DILocalVariable(name: "program", arg: 1, scope: !1318, file: !1319, line: 634, type: !41)
!1322 = !DILocalVariable(name: "node", scope: !1318, file: !1319, line: 646, type: !41)
!1323 = !DILocalVariable(name: "map_prog", scope: !1318, file: !1319, line: 647, type: !1324)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1326)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1318, file: !1319, line: 636, size: 128, elements: !1327)
!1327 = !{!1328, !1329}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1326, file: !1319, line: 636, baseType: !41, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1326, file: !1319, line: 636, baseType: !41, size: 64, offset: 64)
!1330 = !DILocalVariable(name: "lc_messages", scope: !1318, file: !1319, line: 659, type: !41)
!1331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1325, size: 896, elements: !1332)
!1332 = !{!1333}
!1333 = !DISubrange(count: 7)
!1334 = !DILocation(line: 636, column: 67, scope: !1318, inlinedAt: !1335)
!1335 = distinct !DILocation(line: 163, column: 7, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 111, column: 5)
!1337 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 108, column: 7)
!1338 = !DILocation(line: 0, scope: !1312)
!1339 = !DILocation(line: 108, column: 14, scope: !1337)
!1340 = !DILocation(line: 108, column: 7, scope: !1312)
!1341 = !DILocation(line: 109, column: 5, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 109, column: 5)
!1343 = !{!1344, !1344, i64 0}
!1344 = !{!"any pointer", !1345, i64 0}
!1345 = !{!"omnipotent char", !1346, i64 0}
!1346 = !{!"Simple C/C++ TBAA"}
!1347 = !DILocation(line: 112, column: 7, scope: !1336)
!1348 = !DILocation(line: 116, column: 7, scope: !1336)
!1349 = !DILocation(line: 119, column: 7, scope: !1336)
!1350 = !DILocation(line: 123, column: 7, scope: !1336)
!1351 = !DILocation(line: 129, column: 7, scope: !1336)
!1352 = !DILocation(line: 135, column: 7, scope: !1336)
!1353 = !DILocation(line: 141, column: 7, scope: !1336)
!1354 = !DILocation(line: 144, column: 7, scope: !1336)
!1355 = !DILocation(line: 147, column: 7, scope: !1336)
!1356 = !DILocation(line: 150, column: 7, scope: !1336)
!1357 = !DILocation(line: 151, column: 7, scope: !1336)
!1358 = !DILocation(line: 152, column: 7, scope: !1336)
!1359 = !DILocation(line: 156, column: 7, scope: !1336)
!1360 = !DILocation(line: 0, scope: !1318, inlinedAt: !1335)
!1361 = !DILocation(line: 636, column: 3, scope: !1318, inlinedAt: !1335)
!1362 = !DILocation(line: 647, column: 36, scope: !1318, inlinedAt: !1335)
!1363 = !DILocation(line: 649, column: 3, scope: !1318, inlinedAt: !1335)
!1364 = !DILocation(line: 649, column: 33, scope: !1318, inlinedAt: !1335)
!1365 = !DILocation(line: 650, column: 13, scope: !1318, inlinedAt: !1335)
!1366 = !DILocation(line: 649, column: 20, scope: !1318, inlinedAt: !1335)
!1367 = !{!1368, !1344, i64 0}
!1368 = !{!"infomap", !1344, i64 0, !1344, i64 8}
!1369 = !DILocation(line: 649, column: 10, scope: !1318, inlinedAt: !1335)
!1370 = !DILocation(line: 649, column: 28, scope: !1318, inlinedAt: !1335)
!1371 = distinct !{!1371, !1363, !1365}
!1372 = !DILocation(line: 652, column: 17, scope: !1373, inlinedAt: !1335)
!1373 = distinct !DILexicalBlock(scope: !1318, file: !1319, line: 652, column: 7)
!1374 = !{!1368, !1344, i64 8}
!1375 = !DILocation(line: 652, column: 7, scope: !1373, inlinedAt: !1335)
!1376 = !DILocation(line: 652, column: 7, scope: !1318, inlinedAt: !1335)
!1377 = !DILocation(line: 655, column: 3, scope: !1318, inlinedAt: !1335)
!1378 = !DILocation(line: 659, column: 29, scope: !1318, inlinedAt: !1335)
!1379 = !DILocation(line: 660, column: 7, scope: !1380, inlinedAt: !1335)
!1380 = distinct !DILexicalBlock(scope: !1318, file: !1319, line: 660, column: 7)
!1381 = !DILocation(line: 660, column: 19, scope: !1380, inlinedAt: !1335)
!1382 = !DILocation(line: 660, column: 22, scope: !1380, inlinedAt: !1335)
!1383 = !DILocation(line: 660, column: 7, scope: !1318, inlinedAt: !1335)
!1384 = !DILocation(line: 666, column: 7, scope: !1385, inlinedAt: !1335)
!1385 = distinct !DILexicalBlock(scope: !1380, file: !1319, line: 661, column: 5)
!1386 = !DILocation(line: 668, column: 5, scope: !1385, inlinedAt: !1335)
!1387 = !DILocation(line: 669, column: 3, scope: !1318, inlinedAt: !1335)
!1388 = !DILocation(line: 671, column: 3, scope: !1318, inlinedAt: !1335)
!1389 = !DILocation(line: 673, column: 1, scope: !1318, inlinedAt: !1335)
!1390 = !DILocation(line: 165, column: 3, scope: !1312)
!1391 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 407, type: !1392, scopeLine: 408, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1395)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!43, !43, !1394}
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!1395 = !{!1396, !1397, !1398}
!1396 = !DILocalVariable(name: "argc", arg: 1, scope: !1391, file: !3, line: 407, type: !43)
!1397 = !DILocalVariable(name: "argv", arg: 2, scope: !1391, file: !3, line: 407, type: !1394)
!1398 = !DILocalVariable(name: "c", scope: !1391, file: !3, line: 409, type: !43)
!1399 = !DILocalVariable(name: "lba", scope: !1400, file: !3, line: 257, type: !1441)
!1400 = distinct !DISubprogram(name: "compare_files", scope: !3, file: !3, line: 254, type: !1401, scopeLine: 255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1403)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{null, !1394}
!1403 = !{!1404, !1399, !1405, !1407, !1410, !1414, !1419, !1422, !1423, !1424, !1426, !1427, !1433, !1439, !1440}
!1404 = !DILocalVariable(name: "infiles", arg: 1, scope: !1400, file: !3, line: 254, type: !1394)
!1405 = !DILocalVariable(name: "thisline", scope: !1400, file: !3, line: 261, type: !1406)
!1406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 128, elements: !216)
!1407 = !DILocalVariable(name: "all_line", scope: !1400, file: !3, line: 266, type: !1408)
!1408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 512, elements: !1409)
!1409 = !{!217, !402}
!1410 = !DILocalVariable(name: "alt", scope: !1400, file: !3, line: 269, type: !1411)
!1411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 192, elements: !1412)
!1412 = !{!217, !1413}
!1413 = !DISubrange(count: 3)
!1414 = !DILocalVariable(name: "streams", scope: !1400, file: !3, line: 272, type: !1415)
!1415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1416, size: 128, elements: !216)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1418, line: 7, baseType: !50)
!1418 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!1419 = !DILocalVariable(name: "total", scope: !1400, file: !3, line: 275, type: !1420)
!1420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !590, size: 192, elements: !1421)
!1421 = !{!1413}
!1422 = !DILocalVariable(name: "i", scope: !1400, file: !3, line: 277, type: !43)
!1423 = !DILocalVariable(name: "j", scope: !1400, file: !3, line: 277, type: !43)
!1424 = !DILocalVariable(name: "order", scope: !1425, file: !3, line: 304, type: !43)
!1425 = distinct !DILexicalBlock(scope: !1400, file: !3, line: 303, column: 5)
!1426 = !DILocalVariable(name: "fill_up", scope: !1425, file: !3, line: 305, type: !215)
!1427 = !DILocalVariable(name: "len", scope: !1428, file: !3, line: 320, type: !98)
!1428 = distinct !DILexicalBlock(scope: !1429, file: !3, line: 319, column: 13)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 315, column: 15)
!1430 = distinct !DILexicalBlock(scope: !1431, file: !3, line: 314, column: 9)
!1431 = distinct !DILexicalBlock(scope: !1432, file: !3, line: 311, column: 16)
!1432 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 309, column: 11)
!1433 = !DILocalVariable(name: "buf1", scope: !1434, file: !3, line: 395, type: !1436)
!1434 = distinct !DILexicalBlock(scope: !1435, file: !3, line: 393, column: 5)
!1435 = distinct !DILexicalBlock(scope: !1400, file: !3, line: 392, column: 7)
!1436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 168, elements: !1437)
!1437 = !{!1438}
!1438 = !DISubrange(count: 21)
!1439 = !DILocalVariable(name: "buf2", scope: !1434, file: !3, line: 396, type: !1436)
!1440 = !DILocalVariable(name: "buf3", scope: !1434, file: !3, line: 397, type: !1436)
!1441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 1536, elements: !1409)
!1442 = !DILocation(line: 257, column: 21, scope: !1400, inlinedAt: !1443)
!1443 = distinct !DILocation(line: 493, column: 3, scope: !1391)
!1444 = !DILocation(line: 266, column: 22, scope: !1400, inlinedAt: !1443)
!1445 = !DILocation(line: 395, column: 12, scope: !1434, inlinedAt: !1443)
!1446 = !DILocation(line: 396, column: 12, scope: !1434, inlinedAt: !1443)
!1447 = !DILocation(line: 397, column: 12, scope: !1434, inlinedAt: !1443)
!1448 = !DILocation(line: 0, scope: !1391)
!1449 = !DILocation(line: 412, column: 21, scope: !1391)
!1450 = !DILocation(line: 412, column: 3, scope: !1391)
!1451 = !DILocation(line: 413, column: 3, scope: !1391)
!1452 = !DILocation(line: 414, column: 3, scope: !1391)
!1453 = !DILocation(line: 415, column: 3, scope: !1391)
!1454 = !DILocation(line: 416, column: 21, scope: !1391)
!1455 = !DILocation(line: 416, column: 19, scope: !1391)
!1456 = !{!1457, !1457, i64 0}
!1457 = !{!"_Bool", !1345, i64 0}
!1458 = !DILocation(line: 418, column: 3, scope: !1391)
!1459 = !DILocation(line: 420, column: 15, scope: !1391)
!1460 = !DILocation(line: 421, column: 15, scope: !1391)
!1461 = !DILocation(line: 422, column: 8, scope: !1391)
!1462 = !DILocation(line: 424, column: 19, scope: !1391)
!1463 = !DILocation(line: 425, column: 59, scope: !1391)
!1464 = !DILocation(line: 425, column: 30, scope: !1391)
!1465 = !DILocation(line: 426, column: 21, scope: !1391)
!1466 = !{!1345, !1345, i64 0}
!1467 = !DILocation(line: 427, column: 16, scope: !1391)
!1468 = !DILocation(line: 429, column: 3, scope: !1391)
!1469 = !DILocation(line: 429, column: 15, scope: !1391)
!1470 = !DILocation(line: 433, column: 21, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1391, file: !3, line: 431, column: 7)
!1472 = !DILocation(line: 434, column: 9, scope: !1471)
!1473 = !DILocation(line: 437, column: 21, scope: !1471)
!1474 = !DILocation(line: 438, column: 9, scope: !1471)
!1475 = !DILocation(line: 441, column: 14, scope: !1471)
!1476 = !DILocation(line: 442, column: 9, scope: !1471)
!1477 = !DILocation(line: 445, column: 15, scope: !1471)
!1478 = !DILocation(line: 446, column: 9, scope: !1471)
!1479 = !DILocation(line: 449, column: 27, scope: !1471)
!1480 = !DILocation(line: 450, column: 9, scope: !1471)
!1481 = !DILocation(line: 453, column: 27, scope: !1471)
!1482 = !DILocation(line: 454, column: 9, scope: !1471)
!1483 = !DILocation(line: 457, column: 13, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 457, column: 13)
!1485 = !{!1486, !1486, i64 0}
!1486 = !{!"long", !1345, i64 0}
!1487 = !DILocation(line: 457, column: 25, scope: !1484)
!1488 = !DILocation(line: 459, column: 19, scope: !1471)
!1489 = !DILocation(line: 457, column: 29, scope: !1484)
!1490 = !DILocation(line: 457, column: 13, scope: !1471)
!1491 = !DILocation(line: 458, column: 11, scope: !1484)
!1492 = !DILocation(line: 459, column: 17, scope: !1471)
!1493 = !DILocation(line: 460, column: 24, scope: !1471)
!1494 = !DILocation(line: 460, column: 23, scope: !1471)
!1495 = !DILocation(line: 460, column: 33, scope: !1471)
!1496 = !DILocation(line: 460, column: 21, scope: !1471)
!1497 = !DILocation(line: 461, column: 9, scope: !1471)
!1498 = !DILocation(line: 464, column: 22, scope: !1471)
!1499 = !DILocation(line: 465, column: 9, scope: !1471)
!1500 = distinct !{!1500, !1468, !1501}
!1501 = !DILocation(line: 473, column: 7, scope: !1391)
!1502 = !DILocation(line: 467, column: 7, scope: !1471)
!1503 = !DILocation(line: 469, column: 7, scope: !1471)
!1504 = !DILocation(line: 472, column: 9, scope: !1471)
!1505 = !DILocation(line: 475, column: 9, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1391, file: !3, line: 475, column: 7)
!1507 = !DILocation(line: 475, column: 7, scope: !1391)
!1508 = !DILocation(line: 476, column: 17, scope: !1506)
!1509 = !DILocation(line: 476, column: 5, scope: !1506)
!1510 = !DILocation(line: 478, column: 14, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1391, file: !3, line: 478, column: 7)
!1512 = !{!1513, !1513, i64 0}
!1513 = !{!"int", !1345, i64 0}
!1514 = !DILocation(line: 478, column: 12, scope: !1511)
!1515 = !DILocation(line: 478, column: 21, scope: !1511)
!1516 = !DILocation(line: 478, column: 7, scope: !1391)
!1517 = !DILocation(line: 480, column: 16, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !3, line: 480, column: 11)
!1519 = distinct !DILexicalBlock(scope: !1511, file: !3, line: 479, column: 5)
!1520 = !DILocation(line: 480, column: 11, scope: !1519)
!1521 = !DILocation(line: 481, column: 22, scope: !1518)
!1522 = !DILocation(line: 481, column: 9, scope: !1518)
!1523 = !DILocation(line: 483, column: 22, scope: !1518)
!1524 = !DILocation(line: 483, column: 70, scope: !1518)
!1525 = !DILocation(line: 483, column: 60, scope: !1518)
!1526 = !DILocation(line: 483, column: 53, scope: !1518)
!1527 = !DILocation(line: 483, column: 9, scope: !1518)
!1528 = !DILocation(line: 484, column: 7, scope: !1519)
!1529 = !DILocation(line: 487, column: 9, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1391, file: !3, line: 487, column: 7)
!1531 = !DILocation(line: 487, column: 7, scope: !1391)
!1532 = !DILocation(line: 489, column: 20, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 488, column: 5)
!1534 = !DILocation(line: 489, column: 55, scope: !1533)
!1535 = !DILocation(line: 489, column: 62, scope: !1533)
!1536 = !DILocation(line: 489, column: 50, scope: !1533)
!1537 = !DILocation(line: 489, column: 43, scope: !1533)
!1538 = !DILocation(line: 489, column: 7, scope: !1533)
!1539 = !DILocation(line: 490, column: 7, scope: !1533)
!1540 = !DILocation(line: 493, column: 23, scope: !1391)
!1541 = !DILocation(line: 0, scope: !1400, inlinedAt: !1443)
!1542 = !DILocation(line: 257, column: 3, scope: !1400, inlinedAt: !1443)
!1543 = !DILocation(line: 266, column: 3, scope: !1400, inlinedAt: !1443)
!1544 = !DILocation(line: 284, column: 24, scope: !1545, inlinedAt: !1443)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 283, column: 9)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !3, line: 282, column: 7)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 282, column: 7)
!1548 = distinct !DILexicalBlock(scope: !1549, file: !3, line: 281, column: 5)
!1549 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 280, column: 3)
!1550 = distinct !DILexicalBlock(scope: !1400, file: !3, line: 280, column: 3)
!1551 = !DILocation(line: 284, column: 11, scope: !1545, inlinedAt: !1443)
!1552 = !DILocation(line: 285, column: 11, scope: !1545, inlinedAt: !1443)
!1553 = !DILocation(line: 285, column: 26, scope: !1545, inlinedAt: !1443)
!1554 = !DILocation(line: 290, column: 21, scope: !1548, inlinedAt: !1443)
!1555 = !DILocation(line: 290, column: 47, scope: !1548, inlinedAt: !1443)
!1556 = !DILocation(line: 290, column: 55, scope: !1548, inlinedAt: !1443)
!1557 = !DILocation(line: 291, column: 12, scope: !1558, inlinedAt: !1443)
!1558 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 291, column: 11)
!1559 = !DILocation(line: 291, column: 11, scope: !1548, inlinedAt: !1443)
!1560 = !DILocation(line: 0, scope: !1548, inlinedAt: !1443)
!1561 = !DILocation(line: 292, column: 9, scope: !1558, inlinedAt: !1443)
!1562 = !DILocation(line: 294, column: 7, scope: !1548, inlinedAt: !1443)
!1563 = !DILocation(line: 297, column: 43, scope: !1548, inlinedAt: !1443)
!1564 = !DILocation(line: 296, column: 21, scope: !1548, inlinedAt: !1443)
!1565 = !DILocalVariable(name: "__stream", arg: 1, scope: !1566, file: !1567, line: 135, type: !1416)
!1566 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1567, file: !1567, line: 135, type: !1568, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1570)
!1567 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!43, !1416}
!1570 = !{!1565}
!1571 = !DILocation(line: 0, scope: !1566, inlinedAt: !1572)
!1572 = distinct !DILocation(line: 298, column: 11, scope: !1573, inlinedAt: !1443)
!1573 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 298, column: 11)
!1574 = !DILocation(line: 137, column: 10, scope: !1566, inlinedAt: !1572)
!1575 = !{!1576, !1513, i64 0}
!1576 = !{!"_IO_FILE", !1513, i64 0, !1344, i64 8, !1344, i64 16, !1344, i64 24, !1344, i64 32, !1344, i64 40, !1344, i64 48, !1344, i64 56, !1344, i64 64, !1344, i64 72, !1344, i64 80, !1344, i64 88, !1344, i64 96, !1344, i64 104, !1513, i64 112, !1513, i64 116, !1486, i64 120, !1577, i64 128, !1345, i64 130, !1345, i64 131, !1344, i64 136, !1486, i64 144, !1344, i64 152, !1344, i64 160, !1344, i64 168, !1344, i64 176, !1486, i64 184, !1513, i64 192, !1345, i64 196}
!1577 = !{!"short", !1345, i64 0}
!1578 = !DILocation(line: 298, column: 11, scope: !1573, inlinedAt: !1443)
!1579 = !DILocation(line: 298, column: 11, scope: !1548, inlinedAt: !1443)
!1580 = !DILocation(line: 299, column: 9, scope: !1573, inlinedAt: !1443)
!1581 = !DILocation(line: 275, column: 13, scope: !1400, inlinedAt: !1443)
!1582 = !DILocation(line: 389, column: 9, scope: !1583, inlinedAt: !1443)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !3, line: 389, column: 9)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !3, line: 388, column: 3)
!1585 = distinct !DILexicalBlock(scope: !1400, file: !3, line: 388, column: 3)
!1586 = !DILocation(line: 389, column: 29, scope: !1583, inlinedAt: !1443)
!1587 = !DILocation(line: 389, column: 9, scope: !1584, inlinedAt: !1443)
!1588 = !DILocation(line: 305, column: 12, scope: !1425, inlinedAt: !1443)
!1589 = !DILocation(line: 309, column: 12, scope: !1432, inlinedAt: !1443)
!1590 = !DILocation(line: 309, column: 11, scope: !1425, inlinedAt: !1443)
!1591 = !DILocation(line: 338, column: 27, scope: !1592, inlinedAt: !1443)
!1592 = distinct !DILexicalBlock(scope: !1593, file: !3, line: 337, column: 9)
!1593 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 330, column: 11)
!1594 = !DILocation(line: 339, column: 15, scope: !1592, inlinedAt: !1443)
!1595 = !DILocation(line: 311, column: 17, scope: !1431, inlinedAt: !1443)
!1596 = !DILocation(line: 311, column: 16, scope: !1432, inlinedAt: !1443)
!1597 = !DILocation(line: 315, column: 15, scope: !1429, inlinedAt: !1443)
!1598 = !{i8 0, i8 2}
!1599 = !DILocation(line: 315, column: 15, scope: !1430, inlinedAt: !1443)
!1600 = !DILocation(line: 316, column: 44, scope: !1429, inlinedAt: !1443)
!1601 = !{!1602, !1344, i64 16}
!1602 = !{!"linebuffer", !1486, i64 0, !1486, i64 8, !1344, i64 16}
!1603 = !DILocation(line: 316, column: 65, scope: !1429, inlinedAt: !1443)
!1604 = !{!1602, !1486, i64 8}
!1605 = !DILocation(line: 316, column: 72, scope: !1429, inlinedAt: !1443)
!1606 = !DILocation(line: 317, column: 44, scope: !1429, inlinedAt: !1443)
!1607 = !DILocation(line: 317, column: 65, scope: !1429, inlinedAt: !1443)
!1608 = !DILocation(line: 317, column: 72, scope: !1429, inlinedAt: !1443)
!1609 = !DILocation(line: 316, column: 21, scope: !1429, inlinedAt: !1443)
!1610 = !DILocation(line: 0, scope: !1425, inlinedAt: !1443)
!1611 = !DILocation(line: 316, column: 13, scope: !1429, inlinedAt: !1443)
!1612 = !DILocation(line: 320, column: 28, scope: !1428, inlinedAt: !1443)
!1613 = !DILocation(line: 320, column: 75, scope: !1428, inlinedAt: !1443)
!1614 = !DILocation(line: 0, scope: !1428, inlinedAt: !1443)
!1615 = !DILocation(line: 321, column: 44, scope: !1428, inlinedAt: !1443)
!1616 = !DILocation(line: 321, column: 65, scope: !1428, inlinedAt: !1443)
!1617 = !DILocation(line: 321, column: 23, scope: !1428, inlinedAt: !1443)
!1618 = !DILocation(line: 322, column: 25, scope: !1619, inlinedAt: !1443)
!1619 = distinct !DILexicalBlock(scope: !1428, file: !3, line: 322, column: 19)
!1620 = !DILocation(line: 322, column: 19, scope: !1428, inlinedAt: !1443)
!1621 = !DILocation(line: 323, column: 26, scope: !1619, inlinedAt: !1443)
!1622 = !DILocation(line: 0, scope: !1432, inlinedAt: !1443)
!1623 = !DILocation(line: 330, column: 17, scope: !1593, inlinedAt: !1443)
!1624 = !DILocation(line: 330, column: 11, scope: !1425, inlinedAt: !1443)
!1625 = !DILocation(line: 333, column: 19, scope: !1626, inlinedAt: !1443)
!1626 = distinct !DILexicalBlock(scope: !1593, file: !3, line: 331, column: 9)
!1627 = !DILocation(line: 334, column: 35, scope: !1626, inlinedAt: !1443)
!1628 = !DILocation(line: 334, column: 11, scope: !1626, inlinedAt: !1443)
!1629 = !DILocation(line: 357, column: 11, scope: !1425, inlinedAt: !1443)
!1630 = !DILocation(line: 339, column: 21, scope: !1631, inlinedAt: !1443)
!1631 = distinct !DILexicalBlock(scope: !1592, file: !3, line: 339, column: 15)
!1632 = !DILocation(line: 342, column: 23, scope: !1633, inlinedAt: !1443)
!1633 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 340, column: 13)
!1634 = !DILocalVariable(name: "line", arg: 1, scope: !1635, file: !3, line: 174, type: !1638)
!1635 = distinct !DISubprogram(name: "writeline", scope: !3, file: !3, line: 174, type: !1636, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1640)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{null, !1638, !1416, !43}
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !164)
!1640 = !{!1634, !1641, !1642, !1643, !1647, !1648, !1649, !1652, !1653, !1654, !1657, !1658, !1659, !1661, !1662}
!1641 = !DILocalVariable(name: "stream", arg: 2, scope: !1635, file: !3, line: 174, type: !1416)
!1642 = !DILocalVariable(name: "class", arg: 3, scope: !1635, file: !3, line: 174, type: !43)
!1643 = !DILocalVariable(name: "__ptr", scope: !1644, file: !3, line: 187, type: !41)
!1644 = distinct !DILexicalBlock(scope: !1645, file: !3, line: 187, column: 9)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 186, column: 11)
!1646 = distinct !DILexicalBlock(scope: !1635, file: !3, line: 177, column: 5)
!1647 = !DILocalVariable(name: "__stream", scope: !1644, file: !3, line: 187, type: !1416)
!1648 = !DILocalVariable(name: "__cnt", scope: !1644, file: !3, line: 187, type: !98)
!1649 = !DILocalVariable(name: "__ptr", scope: !1650, file: !3, line: 194, type: !41)
!1650 = distinct !DILexicalBlock(scope: !1651, file: !3, line: 194, column: 9)
!1651 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 193, column: 11)
!1652 = !DILocalVariable(name: "__stream", scope: !1650, file: !3, line: 194, type: !1416)
!1653 = !DILocalVariable(name: "__cnt", scope: !1650, file: !3, line: 194, type: !98)
!1654 = !DILocalVariable(name: "__ptr", scope: !1655, file: !3, line: 196, type: !41)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !3, line: 196, column: 9)
!1656 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 195, column: 11)
!1657 = !DILocalVariable(name: "__stream", scope: !1655, file: !3, line: 196, type: !1416)
!1658 = !DILocalVariable(name: "__cnt", scope: !1655, file: !3, line: 196, type: !98)
!1659 = !DILocalVariable(name: "__ptr", scope: !1660, file: !3, line: 200, type: !41)
!1660 = distinct !DILexicalBlock(scope: !1635, file: !3, line: 200, column: 3)
!1661 = !DILocalVariable(name: "__stream", scope: !1660, file: !3, line: 200, type: !1416)
!1662 = !DILocalVariable(name: "__cnt", scope: !1660, file: !3, line: 200, type: !98)
!1663 = !DILocation(line: 0, scope: !1635, inlinedAt: !1664)
!1664 = distinct !DILocation(line: 343, column: 15, scope: !1633, inlinedAt: !1443)
!1665 = !DILocation(line: 179, column: 12, scope: !1666, inlinedAt: !1664)
!1666 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 179, column: 11)
!1667 = !DILocation(line: 179, column: 11, scope: !1646, inlinedAt: !1664)
!1668 = !DILocation(line: 343, column: 39, scope: !1633, inlinedAt: !1443)
!1669 = !DILocation(line: 200, column: 3, scope: !1635, inlinedAt: !1664)
!1670 = !DILocation(line: 348, column: 23, scope: !1671, inlinedAt: !1443)
!1671 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 346, column: 13)
!1672 = !DILocation(line: 349, column: 39, scope: !1671, inlinedAt: !1443)
!1673 = !DILocation(line: 349, column: 15, scope: !1671, inlinedAt: !1443)
!1674 = !DILocation(line: 366, column: 36, scope: !1675, inlinedAt: !1443)
!1675 = distinct !DILexicalBlock(scope: !1676, file: !3, line: 362, column: 11)
!1676 = distinct !DILexicalBlock(scope: !1677, file: !3, line: 361, column: 13)
!1677 = distinct !DILexicalBlock(scope: !1678, file: !3, line: 360, column: 7)
!1678 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 360, column: 7)
!1679 = !DILocation(line: 366, column: 41, scope: !1675, inlinedAt: !1443)
!1680 = !DILocation(line: 368, column: 49, scope: !1675, inlinedAt: !1443)
!1681 = !DILocation(line: 369, column: 61, scope: !1675, inlinedAt: !1443)
!1682 = !DILocation(line: 368, column: 27, scope: !1675, inlinedAt: !1443)
!1683 = !DILocation(line: 371, column: 17, scope: !1684, inlinedAt: !1443)
!1684 = distinct !DILexicalBlock(scope: !1675, file: !3, line: 371, column: 17)
!1685 = !DILocation(line: 371, column: 17, scope: !1675, inlinedAt: !1443)
!1686 = !DILocation(line: 372, column: 28, scope: !1684, inlinedAt: !1443)
!1687 = !DILocation(line: 372, column: 15, scope: !1684, inlinedAt: !1443)
!1688 = !DILocation(line: 377, column: 22, scope: !1689, inlinedAt: !1443)
!1689 = distinct !DILexicalBlock(scope: !1684, file: !3, line: 377, column: 22)
!1690 = !DILocation(line: 377, column: 46, scope: !1689, inlinedAt: !1443)
!1691 = !DILocation(line: 377, column: 22, scope: !1684, inlinedAt: !1443)
!1692 = !DILocation(line: 379, column: 28, scope: !1689, inlinedAt: !1443)
!1693 = !DILocation(line: 378, column: 15, scope: !1689, inlinedAt: !1443)
!1694 = !DILocation(line: 0, scope: !1566, inlinedAt: !1695)
!1695 = distinct !DILocation(line: 381, column: 17, scope: !1696, inlinedAt: !1443)
!1696 = distinct !DILexicalBlock(scope: !1675, file: !3, line: 381, column: 17)
!1697 = !DILocation(line: 137, column: 10, scope: !1566, inlinedAt: !1695)
!1698 = !DILocation(line: 381, column: 17, scope: !1696, inlinedAt: !1443)
!1699 = !DILocation(line: 381, column: 17, scope: !1675, inlinedAt: !1443)
!1700 = !DILocation(line: 382, column: 15, scope: !1696, inlinedAt: !1443)
!1701 = !DILocation(line: 361, column: 13, scope: !1676, inlinedAt: !1443)
!1702 = !DILocation(line: 361, column: 13, scope: !1677, inlinedAt: !1443)
!1703 = !DILocation(line: 390, column: 7, scope: !1583, inlinedAt: !1443)
!1704 = !DILocation(line: 395, column: 7, scope: !1434, inlinedAt: !1443)
!1705 = !DILocation(line: 396, column: 7, scope: !1434, inlinedAt: !1443)
!1706 = !DILocation(line: 397, column: 7, scope: !1434, inlinedAt: !1443)
!1707 = !DILocation(line: 398, column: 7, scope: !1434, inlinedAt: !1443)
!1708 = !DILocation(line: 403, column: 5, scope: !1435, inlinedAt: !1443)
!1709 = !DILocation(line: 403, column: 5, scope: !1434, inlinedAt: !1443)
!1710 = !DILocation(line: 392, column: 7, scope: !1435, inlinedAt: !1443)
!1711 = !DILocation(line: 392, column: 7, scope: !1400, inlinedAt: !1443)
!1712 = !DILocation(line: 302, column: 22, scope: !1400, inlinedAt: !1443)
!1713 = !DILocation(line: 302, column: 10, scope: !1400, inlinedAt: !1443)
!1714 = !DILocation(line: 302, column: 3, scope: !1400, inlinedAt: !1443)
!1715 = distinct !{!1715, !1714, !1716}
!1716 = !DILocation(line: 386, column: 5, scope: !1400, inlinedAt: !1443)
!1717 = !DILocation(line: 404, column: 1, scope: !1400, inlinedAt: !1443)
!1718 = !DILocation(line: 495, column: 7, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1391, file: !3, line: 495, column: 7)
!1720 = !DILocation(line: 495, column: 37, scope: !1719)
!1721 = !DILocation(line: 495, column: 34, scope: !1719)
!1722 = !DILocation(line: 496, column: 5, scope: !1719)
!1723 = !DILocation(line: 498, column: 5, scope: !1719)
!1724 = !DILocation(line: 0, scope: !1635)
!1725 = !DILocation(line: 176, column: 3, scope: !1635)
!1726 = !DILocation(line: 179, column: 12, scope: !1666)
!1727 = !DILocation(line: 179, column: 11, scope: !1646)
!1728 = !DILocation(line: 184, column: 12, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 184, column: 11)
!1730 = !DILocation(line: 184, column: 11, scope: !1646)
!1731 = !DILocation(line: 186, column: 11, scope: !1645)
!1732 = !DILocation(line: 186, column: 11, scope: !1646)
!1733 = !DILocation(line: 187, column: 9, scope: !1645)
!1734 = !DILocation(line: 191, column: 12, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 191, column: 11)
!1736 = !DILocation(line: 191, column: 11, scope: !1646)
!1737 = !DILocation(line: 193, column: 11, scope: !1651)
!1738 = !DILocation(line: 193, column: 11, scope: !1646)
!1739 = !DILocation(line: 194, column: 9, scope: !1651)
!1740 = !DILocation(line: 195, column: 11, scope: !1656)
!1741 = !DILocation(line: 195, column: 11, scope: !1646)
!1742 = !DILocation(line: 196, column: 9, scope: !1656)
!1743 = !DILocation(line: 200, column: 3, scope: !1635)
!1744 = !DILocation(line: 201, column: 1, scope: !1635)
!1745 = distinct !DISubprogram(name: "check_order", scope: !3, file: !3, line: 215, type: !1746, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1748)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{null, !1638, !1638, !43}
!1748 = !{!1749, !1750, !1751, !1752}
!1749 = !DILocalVariable(name: "prev", arg: 1, scope: !1745, file: !3, line: 215, type: !1638)
!1750 = !DILocalVariable(name: "current", arg: 2, scope: !1745, file: !3, line: 216, type: !1638)
!1751 = !DILocalVariable(name: "whatfile", arg: 3, scope: !1745, file: !3, line: 217, type: !43)
!1752 = !DILocalVariable(name: "order", scope: !1753, file: !3, line: 225, type: !43)
!1753 = distinct !DILexicalBlock(scope: !1754, file: !3, line: 224, column: 9)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !3, line: 223, column: 11)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !3, line: 222, column: 5)
!1756 = distinct !DILexicalBlock(scope: !1745, file: !3, line: 220, column: 7)
!1757 = !DILocation(line: 0, scope: !1745)
!1758 = !DILocation(line: 220, column: 7, scope: !1756)
!1759 = !DILocation(line: 221, column: 7, scope: !1756)
!1760 = !DILocation(line: 221, column: 57, scope: !1756)
!1761 = !DILocation(line: 220, column: 7, scope: !1745)
!1762 = !DILocation(line: 223, column: 45, scope: !1754)
!1763 = !DILocation(line: 223, column: 12, scope: !1754)
!1764 = !DILocation(line: 223, column: 11, scope: !1755)
!1765 = !DILocation(line: 227, column: 15, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1753, file: !3, line: 227, column: 15)
!1767 = !DILocation(line: 0, scope: !1766)
!1768 = !DILocation(line: 227, column: 15, scope: !1753)
!1769 = !DILocation(line: 228, column: 21, scope: !1766)
!1770 = !DILocation(line: 0, scope: !1753)
!1771 = !DILocation(line: 228, column: 13, scope: !1766)
!1772 = !DILocation(line: 231, column: 21, scope: !1766)
!1773 = !DILocation(line: 234, column: 17, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1753, file: !3, line: 234, column: 15)
!1775 = !DILocation(line: 234, column: 15, scope: !1753)
!1776 = !DILocation(line: 236, column: 23, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1774, file: !3, line: 235, column: 13)
!1778 = !DILocation(line: 236, column: 41, scope: !1777)
!1779 = !DILocation(line: 238, column: 25, scope: !1777)
!1780 = !DILocation(line: 236, column: 15, scope: !1777)
!1781 = !DILocation(line: 242, column: 53, scope: !1777)
!1782 = !DILocation(line: 243, column: 13, scope: !1777)
!1783 = !DILocation(line: 246, column: 1, scope: !1745)
!1784 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !247, file: !247, line: 51, type: !108, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !246, retainedNodes: !1785)
!1785 = !{!1786}
!1786 = !DILocalVariable(name: "file", arg: 1, scope: !1784, file: !247, line: 51, type: !41)
!1787 = !DILocation(line: 0, scope: !1784)
!1788 = !DILocation(line: 53, column: 13, scope: !1784)
!1789 = !DILocation(line: 54, column: 1, scope: !1784)
!1790 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !247, file: !247, line: 88, type: !1791, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !246, retainedNodes: !1793)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{null, !124}
!1793 = !{!1794}
!1794 = !DILocalVariable(name: "ignore", arg: 1, scope: !1790, file: !247, line: 88, type: !124)
!1795 = !DILocation(line: 0, scope: !1790)
!1796 = !DILocation(line: 90, column: 16, scope: !1790)
!1797 = !DILocation(line: 91, column: 1, scope: !1790)
!1798 = distinct !DISubprogram(name: "close_stdout", scope: !247, file: !247, line: 117, type: !130, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !246, retainedNodes: !1799)
!1799 = !{!1800}
!1800 = !DILocalVariable(name: "write_error", scope: !1801, file: !247, line: 122, type: !41)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !247, line: 121, column: 5)
!1802 = distinct !DILexicalBlock(scope: !1798, file: !247, line: 119, column: 7)
!1803 = !DILocation(line: 119, column: 21, scope: !1802)
!1804 = !DILocation(line: 119, column: 7, scope: !1802)
!1805 = !DILocation(line: 119, column: 29, scope: !1802)
!1806 = !DILocation(line: 120, column: 7, scope: !1802)
!1807 = !DILocation(line: 120, column: 12, scope: !1802)
!1808 = !DILocation(line: 120, column: 25, scope: !1802)
!1809 = !DILocation(line: 120, column: 28, scope: !1802)
!1810 = !DILocation(line: 120, column: 34, scope: !1802)
!1811 = !DILocation(line: 119, column: 7, scope: !1798)
!1812 = !DILocation(line: 122, column: 33, scope: !1801)
!1813 = !DILocation(line: 0, scope: !1801)
!1814 = !DILocation(line: 123, column: 11, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1801, file: !247, line: 123, column: 11)
!1816 = !DILocation(line: 0, scope: !1815)
!1817 = !DILocation(line: 123, column: 11, scope: !1801)
!1818 = !DILocation(line: 124, column: 36, scope: !1815)
!1819 = !DILocation(line: 124, column: 9, scope: !1815)
!1820 = !DILocation(line: 127, column: 9, scope: !1815)
!1821 = !DILocation(line: 129, column: 14, scope: !1801)
!1822 = !DILocation(line: 129, column: 7, scope: !1801)
!1823 = !DILocation(line: 134, column: 42, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1798, file: !247, line: 134, column: 7)
!1825 = !DILocation(line: 134, column: 28, scope: !1824)
!1826 = !DILocation(line: 134, column: 50, scope: !1824)
!1827 = !DILocation(line: 134, column: 7, scope: !1798)
!1828 = !DILocation(line: 135, column: 12, scope: !1824)
!1829 = !DILocation(line: 135, column: 5, scope: !1824)
!1830 = !DILocation(line: 136, column: 1, scope: !1798)
!1831 = distinct !DISubprogram(name: "fdadvise", scope: !495, file: !495, line: 31, type: !1832, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !1836)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{null, !43, !1834, !1834, !1835}
!1834 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !46, line: 63, baseType: !72)
!1835 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !26, line: 52, baseType: !25)
!1836 = !{!1837, !1838, !1839, !1840, !1841}
!1837 = !DILocalVariable(name: "fd", arg: 1, scope: !1831, file: !495, line: 31, type: !43)
!1838 = !DILocalVariable(name: "offset", arg: 2, scope: !1831, file: !495, line: 31, type: !1834)
!1839 = !DILocalVariable(name: "len", arg: 3, scope: !1831, file: !495, line: 31, type: !1834)
!1840 = !DILocalVariable(name: "advice", arg: 4, scope: !1831, file: !495, line: 31, type: !1835)
!1841 = !DILocalVariable(name: "__x", scope: !1842, file: !495, line: 34, type: !43)
!1842 = distinct !DILexicalBlock(scope: !1831, file: !495, line: 34, column: 3)
!1843 = !DILocation(line: 0, scope: !1831)
!1844 = !DILocation(line: 34, column: 3, scope: !1842)
!1845 = !DILocation(line: 0, scope: !1842)
!1846 = !DILocation(line: 36, column: 1, scope: !1831)
!1847 = distinct !DISubprogram(name: "fadvise", scope: !495, file: !495, line: 39, type: !1848, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !1852)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{null, !1850, !1835}
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1418, line: 7, baseType: !505)
!1852 = !{!1853, !1854}
!1853 = !DILocalVariable(name: "fp", arg: 1, scope: !1847, file: !495, line: 39, type: !1850)
!1854 = !DILocalVariable(name: "advice", arg: 2, scope: !1847, file: !495, line: 39, type: !1835)
!1855 = !DILocation(line: 0, scope: !1847)
!1856 = !DILocation(line: 41, column: 7, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1847, file: !495, line: 41, column: 7)
!1858 = !DILocation(line: 41, column: 7, scope: !1847)
!1859 = !DILocation(line: 42, column: 15, scope: !1857)
!1860 = !DILocation(line: 0, scope: !1831, inlinedAt: !1861)
!1861 = distinct !DILocation(line: 42, column: 5, scope: !1857)
!1862 = !DILocation(line: 34, column: 3, scope: !1842, inlinedAt: !1861)
!1863 = !DILocation(line: 0, scope: !1842, inlinedAt: !1861)
!1864 = !DILocation(line: 42, column: 5, scope: !1857)
!1865 = !DILocation(line: 43, column: 1, scope: !1847)
!1866 = distinct !DISubprogram(name: "fopen_safer", scope: !537, file: !537, line: 31, type: !1867, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !536, retainedNodes: !1871)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!1869, !41, !41}
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1418, line: 7, baseType: !543)
!1871 = !{!1872, !1873, !1874, !1875, !1878, !1881, !1884}
!1872 = !DILocalVariable(name: "file", arg: 1, scope: !1866, file: !537, line: 31, type: !41)
!1873 = !DILocalVariable(name: "mode", arg: 2, scope: !1866, file: !537, line: 31, type: !41)
!1874 = !DILocalVariable(name: "fp", scope: !1866, file: !537, line: 33, type: !1869)
!1875 = !DILocalVariable(name: "fd", scope: !1876, file: !537, line: 37, type: !43)
!1876 = distinct !DILexicalBlock(scope: !1877, file: !537, line: 36, column: 5)
!1877 = distinct !DILexicalBlock(scope: !1866, file: !537, line: 35, column: 7)
!1878 = !DILocalVariable(name: "f", scope: !1879, file: !537, line: 41, type: !43)
!1879 = distinct !DILexicalBlock(scope: !1880, file: !537, line: 40, column: 9)
!1880 = distinct !DILexicalBlock(scope: !1876, file: !537, line: 39, column: 11)
!1881 = !DILocalVariable(name: "e", scope: !1882, file: !537, line: 45, type: !43)
!1882 = distinct !DILexicalBlock(scope: !1883, file: !537, line: 44, column: 13)
!1883 = distinct !DILexicalBlock(scope: !1879, file: !537, line: 43, column: 15)
!1884 = !DILocalVariable(name: "e", scope: !1885, file: !537, line: 54, type: !43)
!1885 = distinct !DILexicalBlock(scope: !1886, file: !537, line: 53, column: 13)
!1886 = distinct !DILexicalBlock(scope: !1879, file: !537, line: 51, column: 15)
!1887 = !DILocation(line: 0, scope: !1866)
!1888 = !DILocation(line: 33, column: 14, scope: !1866)
!1889 = !DILocation(line: 35, column: 7, scope: !1877)
!1890 = !DILocation(line: 35, column: 7, scope: !1866)
!1891 = !DILocation(line: 37, column: 16, scope: !1876)
!1892 = !DILocation(line: 0, scope: !1876)
!1893 = !DILocation(line: 39, column: 19, scope: !1880)
!1894 = !DILocation(line: 41, column: 19, scope: !1879)
!1895 = !DILocation(line: 0, scope: !1879)
!1896 = !DILocation(line: 43, column: 17, scope: !1883)
!1897 = !DILocation(line: 43, column: 15, scope: !1879)
!1898 = !DILocation(line: 45, column: 23, scope: !1882)
!1899 = !DILocation(line: 0, scope: !1882)
!1900 = !DILocation(line: 46, column: 15, scope: !1882)
!1901 = !DILocation(line: 47, column: 21, scope: !1882)
!1902 = !DILocation(line: 51, column: 15, scope: !1886)
!1903 = !DILocation(line: 51, column: 27, scope: !1886)
!1904 = !DILocation(line: 52, column: 15, scope: !1886)
!1905 = !DILocation(line: 52, column: 26, scope: !1886)
!1906 = !DILocation(line: 52, column: 24, scope: !1886)
!1907 = !DILocation(line: 51, column: 15, scope: !1879)
!1908 = !DILocation(line: 54, column: 23, scope: !1885)
!1909 = !DILocation(line: 0, scope: !1885)
!1910 = !DILocation(line: 55, column: 15, scope: !1885)
!1911 = !DILocation(line: 56, column: 21, scope: !1885)
!1912 = !DILocation(line: 63, column: 1, scope: !1866)
!1913 = distinct !DISubprogram(name: "hard_locale", scope: !581, file: !581, line: 27, type: !122, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !580, retainedNodes: !1914)
!1914 = !{!1915, !1916}
!1915 = !DILocalVariable(name: "category", arg: 1, scope: !1913, file: !581, line: 27, type: !43)
!1916 = !DILocalVariable(name: "locale", scope: !1913, file: !581, line: 29, type: !1917)
!1917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 2056, elements: !1918)
!1918 = !{!1919}
!1919 = !DISubrange(count: 257)
!1920 = !DILocation(line: 0, scope: !1913)
!1921 = !DILocation(line: 29, column: 3, scope: !1913)
!1922 = !DILocation(line: 29, column: 8, scope: !1913)
!1923 = !DILocation(line: 31, column: 7, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1913, file: !581, line: 31, column: 7)
!1925 = !DILocation(line: 31, column: 7, scope: !1913)
!1926 = !DILocation(line: 34, column: 12, scope: !1913)
!1927 = !DILocation(line: 34, column: 38, scope: !1913)
!1928 = !DILocation(line: 34, column: 41, scope: !1913)
!1929 = !DILocation(line: 34, column: 66, scope: !1913)
!1930 = !DILocation(line: 35, column: 1, scope: !1913)
!1931 = distinct !DISubprogram(name: "umaxtostr", scope: !1932, file: !1932, line: 36, type: !1933, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !587, retainedNodes: !1935)
!1932 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1933 = !DISubroutineType(types: !1934)
!1934 = !{!39, !590, !39}
!1935 = !{!1936, !1937, !1938}
!1936 = !DILocalVariable(name: "i", arg: 1, scope: !1931, file: !1932, line: 36, type: !590)
!1937 = !DILocalVariable(name: "buf", arg: 2, scope: !1931, file: !1932, line: 36, type: !39)
!1938 = !DILocalVariable(name: "p", scope: !1931, file: !1932, line: 38, type: !39)
!1939 = !DILocation(line: 0, scope: !1931)
!1940 = !DILocation(line: 38, column: 17, scope: !1931)
!1941 = !DILocation(line: 39, column: 6, scope: !1931)
!1942 = !DILocation(line: 41, column: 7, scope: !1931)
!1943 = !DILocation(line: 52, column: 24, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1945, file: !1932, line: 50, column: 5)
!1945 = distinct !DILexicalBlock(scope: !1931, file: !1932, line: 41, column: 7)
!1946 = !DILocation(line: 52, column: 16, scope: !1944)
!1947 = !DILocation(line: 52, column: 10, scope: !1944)
!1948 = !DILocation(line: 52, column: 14, scope: !1944)
!1949 = !DILocation(line: 53, column: 17, scope: !1944)
!1950 = !DILocation(line: 53, column: 24, scope: !1944)
!1951 = !DILocation(line: 52, column: 9, scope: !1944)
!1952 = distinct !{!1952, !1953, !1954}
!1953 = !DILocation(line: 51, column: 7, scope: !1944)
!1954 = !DILocation(line: 53, column: 28, scope: !1944)
!1955 = !DILocation(line: 56, column: 3, scope: !1931)
!1956 = distinct !DISubprogram(name: "initbuffer", scope: !594, file: !594, line: 37, type: !1957, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !1959)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{null, !599}
!1959 = !{!1960}
!1960 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !1956, file: !594, line: 37, type: !599)
!1961 = !DILocation(line: 0, scope: !1956)
!1962 = !DILocation(line: 39, column: 11, scope: !1956)
!1963 = !DILocalVariable(name: "__dest", arg: 1, scope: !1964, file: !1965, line: 59, type: !96)
!1964 = distinct !DISubprogram(name: "memset", scope: !1965, file: !1965, line: 59, type: !1966, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !1968)
!1965 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!96, !96, !43, !98}
!1968 = !{!1963, !1969, !1970}
!1969 = !DILocalVariable(name: "__ch", arg: 2, scope: !1964, file: !1965, line: 59, type: !43)
!1970 = !DILocalVariable(name: "__len", arg: 3, scope: !1964, file: !1965, line: 59, type: !98)
!1971 = !DILocation(line: 0, scope: !1964, inlinedAt: !1972)
!1972 = distinct !DILocation(line: 39, column: 3, scope: !1956)
!1973 = !DILocation(line: 71, column: 10, scope: !1964, inlinedAt: !1972)
!1974 = !DILocation(line: 40, column: 1, scope: !1956)
!1975 = distinct !DISubprogram(name: "readlinebuffer", scope: !594, file: !594, line: 43, type: !1976, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !1980)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!599, !599, !1978}
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1418, line: 7, baseType: !606)
!1980 = !{!1981, !1982}
!1981 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !1975, file: !594, line: 43, type: !599)
!1982 = !DILocalVariable(name: "stream", arg: 2, scope: !1975, file: !594, line: 43, type: !1978)
!1983 = !DILocation(line: 0, scope: !1975)
!1984 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !1985, file: !594, line: 59, type: !599)
!1985 = distinct !DISubprogram(name: "readlinebuffer_delim", scope: !594, file: !594, line: 59, type: !1986, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !1988)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{!599, !599, !1978, !40}
!1988 = !{!1984, !1989, !1990, !1991, !1992, !1993, !1994, !1995}
!1989 = !DILocalVariable(name: "stream", arg: 2, scope: !1985, file: !594, line: 59, type: !1978)
!1990 = !DILocalVariable(name: "delimiter", arg: 3, scope: !1985, file: !594, line: 60, type: !40)
!1991 = !DILocalVariable(name: "c", scope: !1985, file: !594, line: 62, type: !43)
!1992 = !DILocalVariable(name: "buffer", scope: !1985, file: !594, line: 63, type: !39)
!1993 = !DILocalVariable(name: "p", scope: !1985, file: !594, line: 64, type: !39)
!1994 = !DILocalVariable(name: "end", scope: !1985, file: !594, line: 65, type: !39)
!1995 = !DILocalVariable(name: "oldsize", scope: !1996, file: !594, line: 83, type: !98)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !594, line: 82, column: 9)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !594, line: 81, column: 11)
!1998 = distinct !DILexicalBlock(scope: !1985, file: !594, line: 71, column: 5)
!1999 = !DILocation(line: 0, scope: !1985, inlinedAt: !2000)
!2000 = distinct !DILocation(line: 45, column: 10, scope: !1975)
!2001 = !DILocation(line: 63, column: 30, scope: !1985, inlinedAt: !2000)
!2002 = !DILocation(line: 65, column: 36, scope: !1985, inlinedAt: !2000)
!2003 = !DILocalVariable(name: "__stream", arg: 1, scope: !2004, file: !1567, line: 128, type: !1978)
!2004 = distinct !DISubprogram(name: "feof_unlocked", scope: !1567, file: !1567, line: 128, type: !2005, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !2007)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{!43, !1978}
!2007 = !{!2003}
!2008 = !DILocation(line: 0, scope: !2004, inlinedAt: !2009)
!2009 = distinct !DILocation(line: 67, column: 7, scope: !2010, inlinedAt: !2000)
!2010 = distinct !DILexicalBlock(scope: !1985, file: !594, line: 67, column: 7)
!2011 = !DILocation(line: 130, column: 10, scope: !2004, inlinedAt: !2009)
!2012 = !DILocation(line: 67, column: 7, scope: !2010, inlinedAt: !2000)
!2013 = !DILocation(line: 67, column: 7, scope: !1985, inlinedAt: !2000)
!2014 = !{!1602, !1486, i64 0}
!2015 = !DILocation(line: 65, column: 22, scope: !1985, inlinedAt: !2000)
!2016 = !DILocation(line: 0, scope: !2017, inlinedAt: !2020)
!2017 = distinct !DISubprogram(name: "getc_unlocked", scope: !1567, file: !1567, line: 66, type: !2005, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !2018)
!2018 = !{!2019}
!2019 = !DILocalVariable(name: "__fp", arg: 1, scope: !2017, file: !1567, line: 66, type: !1978)
!2020 = distinct !DILocation(line: 72, column: 11, scope: !1998, inlinedAt: !2000)
!2021 = !DILocation(line: 70, column: 3, scope: !1985, inlinedAt: !2000)
!2022 = !DILocation(line: 68, column: 10, scope: !2017, inlinedAt: !2020)
!2023 = !{!1576, !1344, i64 8}
!2024 = !{!1576, !1344, i64 16}
!2025 = !{!"branch_weights", i32 2000, i32 1}
!2026 = !{!"misexpect", i64 1, i64 2000, i64 1}
!2027 = !DILocation(line: 73, column: 11, scope: !1998, inlinedAt: !2000)
!2028 = !DILocation(line: 73, column: 13, scope: !2029, inlinedAt: !2000)
!2029 = distinct !DILexicalBlock(scope: !1998, file: !594, line: 73, column: 11)
!2030 = !DILocation(line: 75, column: 17, scope: !2031, inlinedAt: !2000)
!2031 = distinct !DILexicalBlock(scope: !2032, file: !594, line: 75, column: 15)
!2032 = distinct !DILexicalBlock(scope: !2029, file: !594, line: 74, column: 9)
!2033 = !DILocation(line: 75, column: 27, scope: !2031, inlinedAt: !2000)
!2034 = !DILocalVariable(name: "__stream", arg: 1, scope: !2035, file: !1567, line: 135, type: !1978)
!2035 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1567, file: !1567, line: 135, type: !2005, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !2036)
!2036 = !{!2034}
!2037 = !DILocation(line: 0, scope: !2035, inlinedAt: !2038)
!2038 = distinct !DILocation(line: 75, column: 30, scope: !2031, inlinedAt: !2000)
!2039 = !DILocation(line: 137, column: 10, scope: !2035, inlinedAt: !2038)
!2040 = !DILocation(line: 75, column: 30, scope: !2031, inlinedAt: !2000)
!2041 = !DILocation(line: 75, column: 15, scope: !2032, inlinedAt: !2000)
!2042 = !DILocation(line: 77, column: 15, scope: !2043, inlinedAt: !2000)
!2043 = distinct !DILexicalBlock(scope: !2032, file: !594, line: 77, column: 15)
!2044 = !DILocation(line: 77, column: 21, scope: !2043, inlinedAt: !2000)
!2045 = !DILocation(line: 77, column: 15, scope: !2032, inlinedAt: !2000)
!2046 = !DILocation(line: 0, scope: !1998, inlinedAt: !2000)
!2047 = !DILocation(line: 81, column: 13, scope: !1997, inlinedAt: !2000)
!2048 = !DILocation(line: 81, column: 11, scope: !1998, inlinedAt: !2000)
!2049 = !DILocation(line: 83, column: 40, scope: !1996, inlinedAt: !2000)
!2050 = !DILocation(line: 0, scope: !1996, inlinedAt: !2000)
!2051 = !DILocation(line: 84, column: 20, scope: !1996, inlinedAt: !2000)
!2052 = !DILocation(line: 85, column: 22, scope: !1996, inlinedAt: !2000)
!2053 = !DILocation(line: 86, column: 30, scope: !1996, inlinedAt: !2000)
!2054 = !DILocation(line: 87, column: 38, scope: !1996, inlinedAt: !2000)
!2055 = !DILocation(line: 87, column: 24, scope: !1996, inlinedAt: !2000)
!2056 = !DILocation(line: 88, column: 9, scope: !1996, inlinedAt: !2000)
!2057 = !DILocation(line: 89, column: 14, scope: !1998, inlinedAt: !2000)
!2058 = !DILocation(line: 89, column: 9, scope: !1998, inlinedAt: !2000)
!2059 = !DILocation(line: 89, column: 12, scope: !1998, inlinedAt: !2000)
!2060 = !DILocation(line: 91, column: 12, scope: !1985, inlinedAt: !2000)
!2061 = !DILocation(line: 90, column: 5, scope: !1998, inlinedAt: !2000)
!2062 = distinct !{!2062, !2021, !2063}
!2063 = !DILocation(line: 91, column: 24, scope: !1985, inlinedAt: !2000)
!2064 = !DILocation(line: 93, column: 26, scope: !1985, inlinedAt: !2000)
!2065 = !DILocation(line: 93, column: 15, scope: !1985, inlinedAt: !2000)
!2066 = !DILocation(line: 93, column: 22, scope: !1985, inlinedAt: !2000)
!2067 = !DILocation(line: 94, column: 3, scope: !1985, inlinedAt: !2000)
!2068 = !DILocation(line: 45, column: 3, scope: !1975)
!2069 = !DILocation(line: 0, scope: !1985)
!2070 = !DILocation(line: 63, column: 30, scope: !1985)
!2071 = !DILocation(line: 65, column: 36, scope: !1985)
!2072 = !DILocation(line: 0, scope: !2004, inlinedAt: !2073)
!2073 = distinct !DILocation(line: 67, column: 7, scope: !2010)
!2074 = !DILocation(line: 130, column: 10, scope: !2004, inlinedAt: !2073)
!2075 = !DILocation(line: 67, column: 7, scope: !2010)
!2076 = !DILocation(line: 67, column: 7, scope: !1985)
!2077 = !DILocation(line: 65, column: 22, scope: !1985)
!2078 = !DILocation(line: 0, scope: !2017, inlinedAt: !2079)
!2079 = distinct !DILocation(line: 72, column: 11, scope: !1998)
!2080 = !DILocation(line: 0, scope: !2043)
!2081 = !DILocation(line: 70, column: 3, scope: !1985)
!2082 = !DILocation(line: 68, column: 10, scope: !2017, inlinedAt: !2079)
!2083 = !DILocation(line: 73, column: 11, scope: !1998)
!2084 = !DILocation(line: 73, column: 13, scope: !2029)
!2085 = !DILocation(line: 75, column: 17, scope: !2031)
!2086 = !DILocation(line: 75, column: 27, scope: !2031)
!2087 = !DILocation(line: 0, scope: !2035, inlinedAt: !2088)
!2088 = distinct !DILocation(line: 75, column: 30, scope: !2031)
!2089 = !DILocation(line: 137, column: 10, scope: !2035, inlinedAt: !2088)
!2090 = !DILocation(line: 75, column: 30, scope: !2031)
!2091 = !DILocation(line: 75, column: 15, scope: !2032)
!2092 = !DILocation(line: 77, column: 15, scope: !2043)
!2093 = !DILocation(line: 77, column: 21, scope: !2043)
!2094 = !DILocation(line: 77, column: 15, scope: !2032)
!2095 = !DILocation(line: 0, scope: !1998)
!2096 = !DILocation(line: 81, column: 13, scope: !1997)
!2097 = !DILocation(line: 81, column: 11, scope: !1998)
!2098 = !DILocation(line: 83, column: 40, scope: !1996)
!2099 = !DILocation(line: 0, scope: !1996)
!2100 = !DILocation(line: 84, column: 20, scope: !1996)
!2101 = !DILocation(line: 85, column: 22, scope: !1996)
!2102 = !DILocation(line: 86, column: 30, scope: !1996)
!2103 = !DILocation(line: 87, column: 38, scope: !1996)
!2104 = !DILocation(line: 87, column: 24, scope: !1996)
!2105 = !DILocation(line: 88, column: 9, scope: !1996)
!2106 = !DILocation(line: 89, column: 14, scope: !1998)
!2107 = !DILocation(line: 89, column: 9, scope: !1998)
!2108 = !DILocation(line: 89, column: 12, scope: !1998)
!2109 = !DILocation(line: 91, column: 12, scope: !1985)
!2110 = !DILocation(line: 90, column: 5, scope: !1998)
!2111 = distinct !{!2111, !2081, !2112}
!2112 = !DILocation(line: 91, column: 24, scope: !1985)
!2113 = !DILocation(line: 93, column: 26, scope: !1985)
!2114 = !DILocation(line: 93, column: 15, scope: !1985)
!2115 = !DILocation(line: 93, column: 22, scope: !1985)
!2116 = !DILocation(line: 94, column: 3, scope: !1985)
!2117 = !DILocation(line: 95, column: 1, scope: !1985)
!2118 = distinct !DISubprogram(name: "freebuffer", scope: !594, file: !594, line: 100, type: !1957, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !2119)
!2119 = !{!2120}
!2120 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2118, file: !594, line: 100, type: !599)
!2121 = !DILocation(line: 0, scope: !2118)
!2122 = !DILocation(line: 102, column: 21, scope: !2118)
!2123 = !DILocation(line: 102, column: 3, scope: !2118)
!2124 = !DILocation(line: 103, column: 1, scope: !2118)
!2125 = distinct !DISubprogram(name: "memcmp2", scope: !642, file: !642, line: 25, type: !2126, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !641, retainedNodes: !2128)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!43, !41, !98, !41, !98}
!2128 = !{!2129, !2130, !2131, !2132, !2133}
!2129 = !DILocalVariable(name: "s1", arg: 1, scope: !2125, file: !642, line: 25, type: !41)
!2130 = !DILocalVariable(name: "n1", arg: 2, scope: !2125, file: !642, line: 25, type: !98)
!2131 = !DILocalVariable(name: "s2", arg: 3, scope: !2125, file: !642, line: 25, type: !41)
!2132 = !DILocalVariable(name: "n2", arg: 4, scope: !2125, file: !642, line: 25, type: !98)
!2133 = !DILocalVariable(name: "cmp", scope: !2125, file: !642, line: 27, type: !43)
!2134 = !DILocation(line: 0, scope: !2125)
!2135 = !DILocation(line: 27, column: 32, scope: !2125)
!2136 = !DILocation(line: 27, column: 29, scope: !2125)
!2137 = !DILocation(line: 27, column: 13, scope: !2125)
!2138 = !DILocation(line: 28, column: 11, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2125, file: !642, line: 28, column: 7)
!2140 = !DILocation(line: 28, column: 7, scope: !2125)
!2141 = !DILocation(line: 30, column: 14, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2143, file: !642, line: 30, column: 11)
!2143 = distinct !DILexicalBlock(scope: !2139, file: !642, line: 29, column: 5)
!2144 = !DILocation(line: 30, column: 11, scope: !2143)
!2145 = !DILocation(line: 32, column: 16, scope: !2142)
!2146 = !DILocation(line: 35, column: 3, scope: !2125)
!2147 = distinct !DISubprogram(name: "set_program_name", scope: !298, file: !298, line: 39, type: !108, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2148)
!2148 = !{!2149, !2150, !2151}
!2149 = !DILocalVariable(name: "argv0", arg: 1, scope: !2147, file: !298, line: 39, type: !41)
!2150 = !DILocalVariable(name: "slash", scope: !2147, file: !298, line: 46, type: !41)
!2151 = !DILocalVariable(name: "base", scope: !2147, file: !298, line: 47, type: !41)
!2152 = !DILocation(line: 0, scope: !2147)
!2153 = !DILocation(line: 51, column: 13, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2147, file: !298, line: 51, column: 7)
!2155 = !DILocation(line: 51, column: 7, scope: !2147)
!2156 = !DILocation(line: 55, column: 14, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2154, file: !298, line: 52, column: 5)
!2158 = !DILocation(line: 54, column: 7, scope: !2157)
!2159 = !DILocation(line: 56, column: 7, scope: !2157)
!2160 = !DILocation(line: 59, column: 11, scope: !2147)
!2161 = !DILocation(line: 60, column: 17, scope: !2147)
!2162 = !DILocation(line: 60, column: 11, scope: !2147)
!2163 = !DILocation(line: 61, column: 12, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2147, file: !298, line: 61, column: 7)
!2165 = !DILocation(line: 61, column: 20, scope: !2164)
!2166 = !DILocation(line: 61, column: 25, scope: !2164)
!2167 = !DILocation(line: 61, column: 42, scope: !2164)
!2168 = !DILocation(line: 61, column: 28, scope: !2164)
!2169 = !DILocation(line: 61, column: 61, scope: !2164)
!2170 = !DILocation(line: 61, column: 7, scope: !2147)
!2171 = !DILocation(line: 64, column: 11, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2173, file: !298, line: 64, column: 11)
!2173 = distinct !DILexicalBlock(scope: !2164, file: !298, line: 62, column: 5)
!2174 = !DILocation(line: 64, column: 36, scope: !2172)
!2175 = !DILocation(line: 64, column: 11, scope: !2173)
!2176 = !DILocation(line: 66, column: 24, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2172, file: !298, line: 65, column: 9)
!2178 = !DILocation(line: 70, column: 41, scope: !2177)
!2179 = !DILocation(line: 72, column: 9, scope: !2177)
!2180 = !DILocation(line: 84, column: 16, scope: !2147)
!2181 = !DILocation(line: 90, column: 27, scope: !2147)
!2182 = !DILocation(line: 92, column: 1, scope: !2147)
!2183 = distinct !DISubprogram(name: "clone_quoting_options", scope: !339, file: !339, line: 122, type: !2184, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !2187)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{!2186, !2186}
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!2187 = !{!2188, !2189, !2190}
!2188 = !DILocalVariable(name: "o", arg: 1, scope: !2183, file: !339, line: 122, type: !2186)
!2189 = !DILocalVariable(name: "e", scope: !2183, file: !339, line: 124, type: !43)
!2190 = !DILocalVariable(name: "p", scope: !2183, file: !339, line: 125, type: !2186)
!2191 = !DILocation(line: 0, scope: !2183)
!2192 = !DILocation(line: 124, column: 11, scope: !2183)
!2193 = !DILocation(line: 125, column: 40, scope: !2183)
!2194 = !DILocation(line: 125, column: 31, scope: !2183)
!2195 = !DILocation(line: 127, column: 9, scope: !2183)
!2196 = !DILocation(line: 128, column: 3, scope: !2183)
!2197 = distinct !DISubprogram(name: "get_quoting_style", scope: !339, file: !339, line: 133, type: !2198, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !2200)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!11, !370}
!2200 = !{!2201}
!2201 = !DILocalVariable(name: "o", arg: 1, scope: !2197, file: !339, line: 133, type: !370)
!2202 = !DILocation(line: 0, scope: !2197)
!2203 = !DILocation(line: 135, column: 11, scope: !2197)
!2204 = !DILocation(line: 135, column: 46, scope: !2197)
!2205 = !{!2206, !1345, i64 0}
!2206 = !{!"quoting_options", !1345, i64 0, !1513, i64 4, !1345, i64 8, !1344, i64 40, !1344, i64 48}
!2207 = !DILocation(line: 135, column: 3, scope: !2197)
!2208 = distinct !DISubprogram(name: "set_quoting_style", scope: !339, file: !339, line: 141, type: !2209, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !2211)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{null, !2186, !11}
!2211 = !{!2212, !2213}
!2212 = !DILocalVariable(name: "o", arg: 1, scope: !2208, file: !339, line: 141, type: !2186)
!2213 = !DILocalVariable(name: "s", arg: 2, scope: !2208, file: !339, line: 141, type: !11)
!2214 = !DILocation(line: 0, scope: !2208)
!2215 = !DILocation(line: 143, column: 4, scope: !2208)
!2216 = !DILocation(line: 143, column: 39, scope: !2208)
!2217 = !DILocation(line: 143, column: 45, scope: !2208)
!2218 = !DILocation(line: 144, column: 1, scope: !2208)
!2219 = distinct !DISubprogram(name: "set_char_quoting", scope: !339, file: !339, line: 152, type: !2220, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !2222)
!2220 = !DISubroutineType(types: !2221)
!2221 = !{!43, !2186, !40, !43}
!2222 = !{!2223, !2224, !2225, !2226, !2227, !2229, !2230}
!2223 = !DILocalVariable(name: "o", arg: 1, scope: !2219, file: !339, line: 152, type: !2186)
!2224 = !DILocalVariable(name: "c", arg: 2, scope: !2219, file: !339, line: 152, type: !40)
!2225 = !DILocalVariable(name: "i", arg: 3, scope: !2219, file: !339, line: 152, type: !43)
!2226 = !DILocalVariable(name: "uc", scope: !2219, file: !339, line: 154, type: !199)
!2227 = !DILocalVariable(name: "p", scope: !2219, file: !339, line: 155, type: !2228)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!2229 = !DILocalVariable(name: "shift", scope: !2219, file: !339, line: 157, type: !43)
!2230 = !DILocalVariable(name: "r", scope: !2219, file: !339, line: 158, type: !43)
!2231 = !DILocation(line: 0, scope: !2219)
!2232 = !DILocation(line: 156, column: 6, scope: !2219)
!2233 = !DILocation(line: 156, column: 62, scope: !2219)
!2234 = !DILocation(line: 156, column: 57, scope: !2219)
!2235 = !DILocation(line: 157, column: 15, scope: !2219)
!2236 = !DILocation(line: 158, column: 12, scope: !2219)
!2237 = !DILocation(line: 158, column: 15, scope: !2219)
!2238 = !DILocation(line: 158, column: 25, scope: !2219)
!2239 = !DILocation(line: 159, column: 13, scope: !2219)
!2240 = !DILocation(line: 159, column: 18, scope: !2219)
!2241 = !DILocation(line: 159, column: 23, scope: !2219)
!2242 = !DILocation(line: 159, column: 6, scope: !2219)
!2243 = !DILocation(line: 160, column: 3, scope: !2219)
!2244 = distinct !DISubprogram(name: "set_quoting_flags", scope: !339, file: !339, line: 168, type: !2245, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !2247)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{!43, !2186, !43}
!2247 = !{!2248, !2249, !2250}
!2248 = !DILocalVariable(name: "o", arg: 1, scope: !2244, file: !339, line: 168, type: !2186)
!2249 = !DILocalVariable(name: "i", arg: 2, scope: !2244, file: !339, line: 168, type: !43)
!2250 = !DILocalVariable(name: "r", scope: !2244, file: !339, line: 170, type: !43)
!2251 = !DILocation(line: 0, scope: !2244)
!2252 = !DILocation(line: 171, column: 8, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2244, file: !339, line: 171, column: 7)
!2254 = !DILocation(line: 171, column: 7, scope: !2244)
!2255 = !DILocation(line: 173, column: 10, scope: !2244)
!2256 = !{!2206, !1513, i64 4}
!2257 = !DILocation(line: 174, column: 12, scope: !2244)
!2258 = !DILocation(line: 175, column: 3, scope: !2244)
!2259 = distinct !DISubprogram(name: "set_custom_quoting", scope: !339, file: !339, line: 179, type: !2260, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !2262)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{null, !2186, !41, !41}
!2262 = !{!2263, !2264, !2265}
!2263 = !DILocalVariable(name: "o", arg: 1, scope: !2259, file: !339, line: 179, type: !2186)
!2264 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2259, file: !339, line: 180, type: !41)
!2265 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2259, file: !339, line: 180, type: !41)
!2266 = !DILocation(line: 0, scope: !2259)
!2267 = !DILocation(line: 182, column: 8, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2259, file: !339, line: 182, column: 7)
!2269 = !DILocation(line: 182, column: 7, scope: !2259)
!2270 = !DILocation(line: 184, column: 6, scope: !2259)
!2271 = !DILocation(line: 184, column: 12, scope: !2259)
!2272 = !DILocation(line: 185, column: 8, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2259, file: !339, line: 185, column: 7)
!2274 = !DILocation(line: 185, column: 23, scope: !2273)
!2275 = !DILocation(line: 185, column: 19, scope: !2273)
!2276 = !DILocation(line: 186, column: 5, scope: !2273)
!2277 = !DILocation(line: 187, column: 6, scope: !2259)
!2278 = !DILocation(line: 187, column: 17, scope: !2259)
!2279 = !{!2206, !1344, i64 40}
!2280 = !DILocation(line: 188, column: 6, scope: !2259)
!2281 = !DILocation(line: 188, column: 18, scope: !2259)
!2282 = !{!2206, !1344, i64 48}
!2283 = !DILocation(line: 189, column: 1, scope: !2259)
!2284 = distinct !DISubprogram(name: "quotearg_buffer", scope: !339, file: !339, line: 784, type: !2285, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !2287)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!98, !39, !98, !41, !98, !370}
!2287 = !{!2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295}
!2288 = !DILocalVariable(name: "buffer", arg: 1, scope: !2284, file: !339, line: 784, type: !39)
!2289 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2284, file: !339, line: 784, type: !98)
!2290 = !DILocalVariable(name: "arg", arg: 3, scope: !2284, file: !339, line: 785, type: !41)
!2291 = !DILocalVariable(name: "argsize", arg: 4, scope: !2284, file: !339, line: 785, type: !98)
!2292 = !DILocalVariable(name: "o", arg: 5, scope: !2284, file: !339, line: 786, type: !370)
!2293 = !DILocalVariable(name: "p", scope: !2284, file: !339, line: 788, type: !370)
!2294 = !DILocalVariable(name: "e", scope: !2284, file: !339, line: 789, type: !43)
!2295 = !DILocalVariable(name: "r", scope: !2284, file: !339, line: 790, type: !98)
!2296 = !DILocation(line: 0, scope: !2284)
!2297 = !DILocation(line: 788, column: 37, scope: !2284)
!2298 = !DILocation(line: 789, column: 11, scope: !2284)
!2299 = !DILocation(line: 791, column: 43, scope: !2284)
!2300 = !DILocation(line: 791, column: 53, scope: !2284)
!2301 = !DILocation(line: 791, column: 60, scope: !2284)
!2302 = !DILocation(line: 792, column: 43, scope: !2284)
!2303 = !DILocation(line: 792, column: 58, scope: !2284)
!2304 = !DILocation(line: 790, column: 14, scope: !2284)
!2305 = !DILocation(line: 793, column: 9, scope: !2284)
!2306 = !DILocation(line: 794, column: 3, scope: !2284)
!2307 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !339, file: !339, line: 256, type: !2308, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !2312)
!2308 = !DISubroutineType(types: !2309)
!2309 = !{!98, !39, !98, !41, !98, !11, !43, !2310, !41, !41}
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!2312 = !{!2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2337, !2338, !2339, !2340, !2341, !2344, !2345, !2351, !2354, !2355, !2362, !2365, !2366, !2367, !2368, !2369, !2370}
!2313 = !DILocalVariable(name: "buffer", arg: 1, scope: !2307, file: !339, line: 256, type: !39)
!2314 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2307, file: !339, line: 256, type: !98)
!2315 = !DILocalVariable(name: "arg", arg: 3, scope: !2307, file: !339, line: 257, type: !41)
!2316 = !DILocalVariable(name: "argsize", arg: 4, scope: !2307, file: !339, line: 257, type: !98)
!2317 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2307, file: !339, line: 258, type: !11)
!2318 = !DILocalVariable(name: "flags", arg: 6, scope: !2307, file: !339, line: 258, type: !43)
!2319 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2307, file: !339, line: 259, type: !2310)
!2320 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2307, file: !339, line: 260, type: !41)
!2321 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2307, file: !339, line: 261, type: !41)
!2322 = !DILocalVariable(name: "i", scope: !2307, file: !339, line: 263, type: !98)
!2323 = !DILocalVariable(name: "len", scope: !2307, file: !339, line: 264, type: !98)
!2324 = !DILocalVariable(name: "orig_buffersize", scope: !2307, file: !339, line: 265, type: !98)
!2325 = !DILocalVariable(name: "quote_string", scope: !2307, file: !339, line: 266, type: !41)
!2326 = !DILocalVariable(name: "quote_string_len", scope: !2307, file: !339, line: 267, type: !98)
!2327 = !DILocalVariable(name: "backslash_escapes", scope: !2307, file: !339, line: 268, type: !124)
!2328 = !DILocalVariable(name: "unibyte_locale", scope: !2307, file: !339, line: 269, type: !124)
!2329 = !DILocalVariable(name: "elide_outer_quotes", scope: !2307, file: !339, line: 270, type: !124)
!2330 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2307, file: !339, line: 271, type: !124)
!2331 = !DILocalVariable(name: "encountered_single_quote", scope: !2307, file: !339, line: 272, type: !124)
!2332 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2307, file: !339, line: 273, type: !124)
!2333 = !DILocalVariable(name: "c", scope: !2334, file: !339, line: 402, type: !199)
!2334 = distinct !DILexicalBlock(scope: !2335, file: !339, line: 401, column: 5)
!2335 = distinct !DILexicalBlock(scope: !2336, file: !339, line: 400, column: 3)
!2336 = distinct !DILexicalBlock(scope: !2307, file: !339, line: 400, column: 3)
!2337 = !DILocalVariable(name: "esc", scope: !2334, file: !339, line: 403, type: !199)
!2338 = !DILocalVariable(name: "is_right_quote", scope: !2334, file: !339, line: 404, type: !124)
!2339 = !DILocalVariable(name: "escaping", scope: !2334, file: !339, line: 405, type: !124)
!2340 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2334, file: !339, line: 406, type: !124)
!2341 = !DILocalVariable(name: "m", scope: !2342, file: !339, line: 610, type: !98)
!2342 = distinct !DILexicalBlock(scope: !2343, file: !339, line: 608, column: 11)
!2343 = distinct !DILexicalBlock(scope: !2334, file: !339, line: 426, column: 9)
!2344 = !DILocalVariable(name: "printable", scope: !2342, file: !339, line: 612, type: !124)
!2345 = !DILocalVariable(name: "mbstate", scope: !2346, file: !339, line: 621, type: !2348)
!2346 = distinct !DILexicalBlock(scope: !2347, file: !339, line: 620, column: 15)
!2347 = distinct !DILexicalBlock(scope: !2342, file: !339, line: 614, column: 17)
!2348 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2349, line: 6, baseType: !2350)
!2349 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!2350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !392, line: 21, baseType: !391)
!2351 = !DILocalVariable(name: "w", scope: !2352, file: !339, line: 631, type: !2353)
!2352 = distinct !DILexicalBlock(scope: !2346, file: !339, line: 630, column: 19)
!2353 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !99, line: 74, baseType: !43)
!2354 = !DILocalVariable(name: "bytes", scope: !2352, file: !339, line: 632, type: !98)
!2355 = !DILocalVariable(name: "j", scope: !2356, file: !339, line: 657, type: !98)
!2356 = distinct !DILexicalBlock(scope: !2357, file: !339, line: 656, column: 27)
!2357 = distinct !DILexicalBlock(scope: !2358, file: !339, line: 654, column: 29)
!2358 = distinct !DILexicalBlock(scope: !2359, file: !339, line: 649, column: 23)
!2359 = distinct !DILexicalBlock(scope: !2360, file: !339, line: 641, column: 30)
!2360 = distinct !DILexicalBlock(scope: !2361, file: !339, line: 636, column: 30)
!2361 = distinct !DILexicalBlock(scope: !2352, file: !339, line: 634, column: 25)
!2362 = !DILocalVariable(name: "ilim", scope: !2363, file: !339, line: 684, type: !98)
!2363 = distinct !DILexicalBlock(scope: !2364, file: !339, line: 681, column: 15)
!2364 = distinct !DILexicalBlock(scope: !2342, file: !339, line: 680, column: 17)
!2365 = !DILabel(scope: !2307, name: "process_input", file: !339, line: 314)
!2366 = !DILabel(scope: !2343, name: "c_and_shell_escape", file: !339, line: 512)
!2367 = !DILabel(scope: !2343, name: "c_escape", file: !339, line: 517)
!2368 = !DILabel(scope: !2334, name: "store_escape", file: !339, line: 719)
!2369 = !DILabel(scope: !2334, name: "store_c", file: !339, line: 722)
!2370 = !DILabel(scope: !2307, name: "force_outer_quoting_style", file: !339, line: 763)
!2371 = !DILocation(line: 0, scope: !2307)
!2372 = !DILocation(line: 269, column: 25, scope: !2307)
!2373 = !DILocation(line: 269, column: 36, scope: !2307)
!2374 = !DILocation(line: 270, column: 8, scope: !2307)
!2375 = !DILocation(line: 0, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2343, file: !339, line: 526, column: 15)
!2377 = !DILocation(line: 0, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2379, file: !339, line: 462, column: 19)
!2379 = distinct !DILexicalBlock(scope: !2343, file: !339, line: 455, column: 13)
!2380 = !DILocation(line: 0, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2382, file: !339, line: 449, column: 20)
!2382 = distinct !DILexicalBlock(scope: !2343, file: !339, line: 428, column: 15)
!2383 = !DILocation(line: 0, scope: !2346)
!2384 = !DILocation(line: 0, scope: !2352)
!2385 = !DILocation(line: 0, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2334, file: !339, line: 712, column: 11)
!2387 = !DILocation(line: 273, column: 3, scope: !2307)
!2388 = !DILocation(line: 265, column: 10, scope: !2307)
!2389 = !DILocation(line: 266, column: 15, scope: !2307)
!2390 = !DILocation(line: 267, column: 10, scope: !2307)
!2391 = !DILocation(line: 268, column: 8, scope: !2307)
!2392 = !DILocation(line: 271, column: 8, scope: !2307)
!2393 = !DILocation(line: 272, column: 8, scope: !2307)
!2394 = !DILocation(line: 273, column: 8, scope: !2307)
!2395 = !DILocation(line: 314, column: 2, scope: !2307)
!2396 = !DILocation(line: 316, column: 3, scope: !2307)
!2397 = !DILocation(line: 323, column: 11, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2307, file: !339, line: 317, column: 5)
!2399 = !DILocation(line: 323, column: 12, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2398, file: !339, line: 323, column: 11)
!2401 = !DILocation(line: 324, column: 9, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2403, file: !339, line: 324, column: 9)
!2403 = distinct !DILexicalBlock(scope: !2400, file: !339, line: 324, column: 9)
!2404 = !DILocation(line: 324, column: 9, scope: !2403)
!2405 = !DILocation(line: 362, column: 26, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2407, file: !339, line: 340, column: 11)
!2407 = distinct !DILexicalBlock(scope: !2408, file: !339, line: 339, column: 13)
!2408 = distinct !DILexicalBlock(scope: !2398, file: !339, line: 338, column: 7)
!2409 = !DILocation(line: 363, column: 27, scope: !2406)
!2410 = !DILocation(line: 364, column: 11, scope: !2406)
!2411 = !DILocation(line: 365, column: 14, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2408, file: !339, line: 365, column: 13)
!2413 = !DILocation(line: 365, column: 13, scope: !2408)
!2414 = !DILocation(line: 366, column: 43, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2416, file: !339, line: 366, column: 11)
!2416 = distinct !DILexicalBlock(scope: !2412, file: !339, line: 366, column: 11)
!2417 = !DILocation(line: 366, column: 11, scope: !2416)
!2418 = !DILocation(line: 367, column: 13, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2420, file: !339, line: 367, column: 13)
!2420 = distinct !DILexicalBlock(scope: !2415, file: !339, line: 367, column: 13)
!2421 = !DILocation(line: 367, column: 13, scope: !2420)
!2422 = !DILocation(line: 366, column: 70, scope: !2415)
!2423 = distinct !{!2423, !2417, !2424}
!2424 = !DILocation(line: 367, column: 13, scope: !2416)
!2425 = !DILocation(line: 264, column: 10, scope: !2307)
!2426 = !DILocation(line: 370, column: 28, scope: !2408)
!2427 = !DILocation(line: 372, column: 7, scope: !2398)
!2428 = !DILocation(line: 376, column: 7, scope: !2398)
!2429 = !DILocation(line: 379, column: 7, scope: !2398)
!2430 = !DILocation(line: 381, column: 12, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2398, file: !339, line: 381, column: 11)
!2432 = !DILocation(line: 381, column: 11, scope: !2398)
!2433 = !DILocation(line: 386, column: 12, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2398, file: !339, line: 386, column: 11)
!2435 = !DILocation(line: 386, column: 11, scope: !2398)
!2436 = !DILocation(line: 387, column: 9, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2438, file: !339, line: 387, column: 9)
!2438 = distinct !DILexicalBlock(scope: !2434, file: !339, line: 387, column: 9)
!2439 = !DILocation(line: 387, column: 9, scope: !2438)
!2440 = !DILocation(line: 394, column: 7, scope: !2398)
!2441 = !DILocation(line: 397, column: 7, scope: !2398)
!2442 = !DILocation(line: 0, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2334, file: !339, line: 408, column: 11)
!2444 = !DILocation(line: 0, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2446, file: !339, line: 419, column: 15)
!2446 = distinct !DILexicalBlock(scope: !2443, file: !339, line: 418, column: 9)
!2447 = !DILocation(line: 0, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2343, file: !339, line: 556, column: 15)
!2449 = !DILocation(line: 0, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2343, file: !339, line: 548, column: 15)
!2451 = !DILocation(line: 0, scope: !2357)
!2452 = !DILocation(line: 0, scope: !2364)
!2453 = !DILocation(line: 0, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2343, file: !339, line: 509, column: 15)
!2455 = !DILocation(line: 400, column: 8, scope: !2336)
!2456 = !DILocation(line: 0, scope: !2336)
!2457 = !DILocation(line: 400, column: 27, scope: !2335)
!2458 = !DILocation(line: 400, column: 19, scope: !2335)
!2459 = !DILocation(line: 400, column: 41, scope: !2335)
!2460 = !DILocation(line: 400, column: 48, scope: !2335)
!2461 = !DILocation(line: 400, column: 3, scope: !2336)
!2462 = !DILocation(line: 400, column: 60, scope: !2335)
!2463 = !DILocation(line: 0, scope: !2334)
!2464 = !DILocation(line: 409, column: 11, scope: !2443)
!2465 = !DILocation(line: 411, column: 17, scope: !2443)
!2466 = !DILocation(line: 412, column: 39, scope: !2443)
!2467 = !DILocation(line: 416, column: 32, scope: !2443)
!2468 = !DILocation(line: 412, column: 19, scope: !2443)
!2469 = !DILocation(line: 412, column: 15, scope: !2443)
!2470 = !DILocation(line: 417, column: 11, scope: !2443)
!2471 = !DILocation(line: 417, column: 26, scope: !2443)
!2472 = !DILocation(line: 417, column: 14, scope: !2443)
!2473 = !DILocation(line: 417, column: 63, scope: !2443)
!2474 = !DILocation(line: 408, column: 11, scope: !2334)
!2475 = !DILocation(line: 424, column: 11, scope: !2334)
!2476 = !DILocation(line: 425, column: 7, scope: !2334)
!2477 = !DILocation(line: 428, column: 15, scope: !2343)
!2478 = !DILocation(line: 430, column: 15, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2480, file: !339, line: 430, column: 15)
!2480 = distinct !DILexicalBlock(scope: !2382, file: !339, line: 429, column: 13)
!2481 = !DILocation(line: 430, column: 15, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2479, file: !339, line: 430, column: 15)
!2483 = !DILocation(line: 430, column: 15, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2485, file: !339, line: 430, column: 15)
!2485 = distinct !DILexicalBlock(scope: !2486, file: !339, line: 430, column: 15)
!2486 = distinct !DILexicalBlock(scope: !2482, file: !339, line: 430, column: 15)
!2487 = !DILocation(line: 430, column: 15, scope: !2485)
!2488 = !DILocation(line: 430, column: 15, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2490, file: !339, line: 430, column: 15)
!2490 = distinct !DILexicalBlock(scope: !2486, file: !339, line: 430, column: 15)
!2491 = !DILocation(line: 430, column: 15, scope: !2490)
!2492 = !DILocation(line: 430, column: 15, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2494, file: !339, line: 430, column: 15)
!2494 = distinct !DILexicalBlock(scope: !2486, file: !339, line: 430, column: 15)
!2495 = !DILocation(line: 430, column: 15, scope: !2494)
!2496 = !DILocation(line: 430, column: 15, scope: !2486)
!2497 = !DILocation(line: 430, column: 15, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2499, file: !339, line: 430, column: 15)
!2499 = distinct !DILexicalBlock(scope: !2479, file: !339, line: 430, column: 15)
!2500 = !DILocation(line: 430, column: 15, scope: !2499)
!2501 = !DILocation(line: 438, column: 19, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2480, file: !339, line: 437, column: 19)
!2503 = !DILocation(line: 438, column: 24, scope: !2502)
!2504 = !DILocation(line: 438, column: 28, scope: !2502)
!2505 = !DILocation(line: 438, column: 38, scope: !2502)
!2506 = !DILocation(line: 438, column: 48, scope: !2502)
!2507 = !DILocation(line: 438, column: 59, scope: !2502)
!2508 = !DILocation(line: 440, column: 19, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2510, file: !339, line: 440, column: 19)
!2510 = distinct !DILexicalBlock(scope: !2511, file: !339, line: 440, column: 19)
!2511 = distinct !DILexicalBlock(scope: !2502, file: !339, line: 439, column: 17)
!2512 = !DILocation(line: 440, column: 19, scope: !2510)
!2513 = !DILocation(line: 441, column: 19, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2515, file: !339, line: 441, column: 19)
!2515 = distinct !DILexicalBlock(scope: !2511, file: !339, line: 441, column: 19)
!2516 = !DILocation(line: 441, column: 19, scope: !2515)
!2517 = !DILocation(line: 442, column: 17, scope: !2511)
!2518 = !DILocation(line: 449, column: 20, scope: !2382)
!2519 = !DILocation(line: 454, column: 11, scope: !2343)
!2520 = !DILocation(line: 457, column: 19, scope: !2379)
!2521 = !DILocation(line: 463, column: 19, scope: !2378)
!2522 = !DILocation(line: 463, column: 24, scope: !2378)
!2523 = !DILocation(line: 463, column: 28, scope: !2378)
!2524 = !DILocation(line: 463, column: 38, scope: !2378)
!2525 = !DILocation(line: 463, column: 47, scope: !2378)
!2526 = !DILocation(line: 463, column: 41, scope: !2378)
!2527 = !DILocation(line: 463, column: 52, scope: !2378)
!2528 = !DILocation(line: 462, column: 19, scope: !2379)
!2529 = !DILocation(line: 464, column: 25, scope: !2378)
!2530 = !DILocation(line: 464, column: 17, scope: !2378)
!2531 = !DILocation(line: 471, column: 25, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2378, file: !339, line: 465, column: 19)
!2533 = !DILocation(line: 475, column: 21, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2535, file: !339, line: 475, column: 21)
!2535 = distinct !DILexicalBlock(scope: !2532, file: !339, line: 475, column: 21)
!2536 = !DILocation(line: 475, column: 21, scope: !2535)
!2537 = !DILocation(line: 476, column: 21, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2539, file: !339, line: 476, column: 21)
!2539 = distinct !DILexicalBlock(scope: !2532, file: !339, line: 476, column: 21)
!2540 = !DILocation(line: 476, column: 21, scope: !2539)
!2541 = !DILocation(line: 477, column: 21, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2543, file: !339, line: 477, column: 21)
!2543 = distinct !DILexicalBlock(scope: !2532, file: !339, line: 477, column: 21)
!2544 = !DILocation(line: 477, column: 21, scope: !2543)
!2545 = !DILocation(line: 478, column: 21, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2547, file: !339, line: 478, column: 21)
!2547 = distinct !DILexicalBlock(scope: !2532, file: !339, line: 478, column: 21)
!2548 = !DILocation(line: 478, column: 21, scope: !2547)
!2549 = !DILocation(line: 479, column: 21, scope: !2532)
!2550 = !DILocation(line: 492, column: 31, scope: !2343)
!2551 = !DILocation(line: 493, column: 31, scope: !2343)
!2552 = !DILocation(line: 495, column: 31, scope: !2343)
!2553 = !DILocation(line: 496, column: 31, scope: !2343)
!2554 = !DILocation(line: 497, column: 31, scope: !2343)
!2555 = !DILocation(line: 500, column: 15, scope: !2343)
!2556 = !DILocation(line: 502, column: 19, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2558, file: !339, line: 501, column: 13)
!2558 = distinct !DILexicalBlock(scope: !2343, file: !339, line: 500, column: 15)
!2559 = !DILocation(line: 509, column: 33, scope: !2454)
!2560 = !DILocation(line: 0, scope: !2343)
!2561 = !DILocation(line: 512, column: 9, scope: !2343)
!2562 = !DILocation(line: 514, column: 15, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2343, file: !339, line: 513, column: 15)
!2564 = !DILocation(line: 517, column: 9, scope: !2343)
!2565 = !DILocation(line: 518, column: 15, scope: !2343)
!2566 = !DILocation(line: 526, column: 15, scope: !2343)
!2567 = !DILocation(line: 526, column: 40, scope: !2376)
!2568 = !DILocation(line: 526, column: 47, scope: !2376)
!2569 = !DILocation(line: 526, column: 18, scope: !2376)
!2570 = !DILocation(line: 530, column: 17, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2343, file: !339, line: 530, column: 15)
!2572 = !DILocation(line: 530, column: 15, scope: !2343)
!2573 = !DILocation(line: 535, column: 11, scope: !2343)
!2574 = !DILocation(line: 549, column: 15, scope: !2450)
!2575 = !DILocation(line: 556, column: 15, scope: !2343)
!2576 = !DILocation(line: 558, column: 19, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2448, file: !339, line: 557, column: 13)
!2578 = !DILocation(line: 561, column: 19, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2577, file: !339, line: 561, column: 19)
!2580 = !DILocation(line: 561, column: 35, scope: !2579)
!2581 = !DILocation(line: 561, column: 30, scope: !2579)
!2582 = !DILocation(line: 570, column: 15, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2584, file: !339, line: 570, column: 15)
!2584 = distinct !DILexicalBlock(scope: !2577, file: !339, line: 570, column: 15)
!2585 = !DILocation(line: 570, column: 15, scope: !2584)
!2586 = !DILocation(line: 571, column: 15, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2588, file: !339, line: 571, column: 15)
!2588 = distinct !DILexicalBlock(scope: !2577, file: !339, line: 571, column: 15)
!2589 = !DILocation(line: 571, column: 15, scope: !2588)
!2590 = !DILocation(line: 572, column: 15, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2592, file: !339, line: 572, column: 15)
!2592 = distinct !DILexicalBlock(scope: !2577, file: !339, line: 572, column: 15)
!2593 = !DILocation(line: 572, column: 15, scope: !2592)
!2594 = !DILocation(line: 574, column: 13, scope: !2577)
!2595 = !DILocation(line: 614, column: 17, scope: !2342)
!2596 = !DILocation(line: 0, scope: !2342)
!2597 = !DILocation(line: 617, column: 29, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2347, file: !339, line: 615, column: 15)
!2599 = !{!1577, !1577, i64 0}
!2600 = !DILocation(line: 617, column: 27, scope: !2598)
!2601 = !DILocation(line: 618, column: 15, scope: !2598)
!2602 = !DILocation(line: 621, column: 17, scope: !2346)
!2603 = !DILocation(line: 621, column: 27, scope: !2346)
!2604 = !DILocalVariable(name: "__dest", arg: 1, scope: !2605, file: !1965, line: 59, type: !96)
!2605 = distinct !DISubprogram(name: "memset", scope: !1965, file: !1965, line: 59, type: !1966, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !2606)
!2606 = !{!2604, !2607, !2608}
!2607 = !DILocalVariable(name: "__ch", arg: 2, scope: !2605, file: !1965, line: 59, type: !43)
!2608 = !DILocalVariable(name: "__len", arg: 3, scope: !2605, file: !1965, line: 59, type: !98)
!2609 = !DILocation(line: 0, scope: !2605, inlinedAt: !2610)
!2610 = distinct !DILocation(line: 622, column: 17, scope: !2346)
!2611 = !DILocation(line: 71, column: 10, scope: !2605, inlinedAt: !2610)
!2612 = !DILocation(line: 626, column: 29, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2346, file: !339, line: 626, column: 21)
!2614 = !DILocation(line: 626, column: 21, scope: !2346)
!2615 = !DILocation(line: 627, column: 29, scope: !2613)
!2616 = !DILocation(line: 627, column: 19, scope: !2613)
!2617 = !DILocation(line: 629, column: 17, scope: !2346)
!2618 = !DILocation(line: 624, column: 19, scope: !2346)
!2619 = !DILocation(line: 625, column: 27, scope: !2346)
!2620 = !DILocation(line: 631, column: 21, scope: !2352)
!2621 = !DILocation(line: 632, column: 56, scope: !2352)
!2622 = !DILocation(line: 632, column: 50, scope: !2352)
!2623 = !DILocation(line: 633, column: 53, scope: !2352)
!2624 = !DILocation(line: 632, column: 36, scope: !2352)
!2625 = !DILocation(line: 634, column: 25, scope: !2352)
!2626 = !DILocation(line: 644, column: 38, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2359, file: !339, line: 642, column: 23)
!2628 = !DILocation(line: 644, column: 48, scope: !2627)
!2629 = !DILocation(line: 644, column: 25, scope: !2627)
!2630 = !DILocation(line: 644, column: 51, scope: !2627)
!2631 = !DILocation(line: 645, column: 28, scope: !2627)
!2632 = !DILocation(line: 644, column: 34, scope: !2627)
!2633 = distinct !{!2633, !2629, !2631}
!2634 = !DILocation(line: 658, column: 43, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2636, file: !339, line: 658, column: 29)
!2636 = distinct !DILexicalBlock(scope: !2356, file: !339, line: 658, column: 29)
!2637 = !DILocation(line: 655, column: 29, scope: !2357)
!2638 = !DILocation(line: 0, scope: !2356)
!2639 = !DILocation(line: 659, column: 49, scope: !2635)
!2640 = !DILocation(line: 659, column: 39, scope: !2635)
!2641 = !DILocation(line: 659, column: 31, scope: !2635)
!2642 = !DILocation(line: 658, column: 53, scope: !2635)
!2643 = !DILocation(line: 658, column: 29, scope: !2636)
!2644 = distinct !{!2644, !2643, !2645}
!2645 = !DILocation(line: 667, column: 33, scope: !2636)
!2646 = !DILocation(line: 674, column: 19, scope: !2346)
!2647 = !DILocation(line: 670, column: 41, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2358, file: !339, line: 670, column: 29)
!2649 = !DILocation(line: 670, column: 31, scope: !2648)
!2650 = !DILocation(line: 670, column: 29, scope: !2358)
!2651 = !DILocation(line: 672, column: 27, scope: !2358)
!2652 = !DILocation(line: 675, column: 26, scope: !2346)
!2653 = !DILocation(line: 675, column: 24, scope: !2346)
!2654 = !DILocation(line: 674, column: 19, scope: !2352)
!2655 = distinct !{!2655, !2617, !2656}
!2656 = !DILocation(line: 675, column: 44, scope: !2346)
!2657 = !DILocation(line: 676, column: 15, scope: !2347)
!2658 = !DILocation(line: 0, scope: !2347)
!2659 = !DILocation(line: 678, column: 40, scope: !2342)
!2660 = !DILocation(line: 680, column: 19, scope: !2364)
!2661 = !DILocation(line: 680, column: 45, scope: !2364)
!2662 = !DILocation(line: 680, column: 23, scope: !2364)
!2663 = !DILocation(line: 684, column: 33, scope: !2363)
!2664 = !DILocation(line: 0, scope: !2363)
!2665 = !DILocation(line: 686, column: 17, scope: !2363)
!2666 = !DILocation(line: 405, column: 12, scope: !2334)
!2667 = !DILocation(line: 688, column: 43, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2669, file: !339, line: 688, column: 25)
!2669 = distinct !DILexicalBlock(scope: !2670, file: !339, line: 687, column: 19)
!2670 = distinct !DILexicalBlock(scope: !2671, file: !339, line: 686, column: 17)
!2671 = distinct !DILexicalBlock(scope: !2363, file: !339, line: 686, column: 17)
!2672 = !DILocation(line: 690, column: 25, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2674, file: !339, line: 690, column: 25)
!2674 = distinct !DILexicalBlock(scope: !2668, file: !339, line: 689, column: 23)
!2675 = !DILocation(line: 690, column: 25, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2673, file: !339, line: 690, column: 25)
!2677 = !DILocation(line: 690, column: 25, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2679, file: !339, line: 690, column: 25)
!2679 = distinct !DILexicalBlock(scope: !2680, file: !339, line: 690, column: 25)
!2680 = distinct !DILexicalBlock(scope: !2676, file: !339, line: 690, column: 25)
!2681 = !DILocation(line: 690, column: 25, scope: !2679)
!2682 = !DILocation(line: 690, column: 25, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2684, file: !339, line: 690, column: 25)
!2684 = distinct !DILexicalBlock(scope: !2680, file: !339, line: 690, column: 25)
!2685 = !DILocation(line: 690, column: 25, scope: !2684)
!2686 = !DILocation(line: 690, column: 25, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2688, file: !339, line: 690, column: 25)
!2688 = distinct !DILexicalBlock(scope: !2680, file: !339, line: 690, column: 25)
!2689 = !DILocation(line: 690, column: 25, scope: !2688)
!2690 = !DILocation(line: 690, column: 25, scope: !2680)
!2691 = !DILocation(line: 690, column: 25, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2693, file: !339, line: 690, column: 25)
!2693 = distinct !DILexicalBlock(scope: !2673, file: !339, line: 690, column: 25)
!2694 = !DILocation(line: 690, column: 25, scope: !2693)
!2695 = !DILocation(line: 691, column: 25, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2697, file: !339, line: 691, column: 25)
!2697 = distinct !DILexicalBlock(scope: !2674, file: !339, line: 691, column: 25)
!2698 = !DILocation(line: 691, column: 25, scope: !2697)
!2699 = !DILocation(line: 692, column: 25, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2701, file: !339, line: 692, column: 25)
!2701 = distinct !DILexicalBlock(scope: !2674, file: !339, line: 692, column: 25)
!2702 = !DILocation(line: 692, column: 25, scope: !2701)
!2703 = !DILocation(line: 693, column: 38, scope: !2674)
!2704 = !DILocation(line: 693, column: 33, scope: !2674)
!2705 = !DILocation(line: 694, column: 23, scope: !2674)
!2706 = !DILocation(line: 695, column: 30, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2668, file: !339, line: 695, column: 30)
!2708 = !DILocation(line: 695, column: 30, scope: !2668)
!2709 = !DILocation(line: 697, column: 25, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2711, file: !339, line: 697, column: 25)
!2711 = distinct !DILexicalBlock(scope: !2712, file: !339, line: 697, column: 25)
!2712 = distinct !DILexicalBlock(scope: !2707, file: !339, line: 696, column: 23)
!2713 = !DILocation(line: 697, column: 25, scope: !2711)
!2714 = !DILocation(line: 699, column: 23, scope: !2712)
!2715 = !DILocation(line: 700, column: 35, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2669, file: !339, line: 700, column: 25)
!2717 = !DILocation(line: 700, column: 30, scope: !2716)
!2718 = !DILocation(line: 700, column: 25, scope: !2669)
!2719 = !DILocation(line: 702, column: 21, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2721, file: !339, line: 702, column: 21)
!2721 = distinct !DILexicalBlock(scope: !2669, file: !339, line: 702, column: 21)
!2722 = !DILocation(line: 702, column: 21, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2724, file: !339, line: 702, column: 21)
!2724 = distinct !DILexicalBlock(scope: !2725, file: !339, line: 702, column: 21)
!2725 = distinct !DILexicalBlock(scope: !2720, file: !339, line: 702, column: 21)
!2726 = !DILocation(line: 702, column: 21, scope: !2724)
!2727 = !DILocation(line: 702, column: 21, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2729, file: !339, line: 702, column: 21)
!2729 = distinct !DILexicalBlock(scope: !2725, file: !339, line: 702, column: 21)
!2730 = !DILocation(line: 702, column: 21, scope: !2729)
!2731 = !DILocation(line: 702, column: 21, scope: !2725)
!2732 = !DILocation(line: 0, scope: !2669)
!2733 = !DILocation(line: 703, column: 21, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2735, file: !339, line: 703, column: 21)
!2735 = distinct !DILexicalBlock(scope: !2669, file: !339, line: 703, column: 21)
!2736 = !DILocation(line: 703, column: 21, scope: !2735)
!2737 = !DILocation(line: 704, column: 25, scope: !2669)
!2738 = !DILocation(line: 686, column: 17, scope: !2670)
!2739 = distinct !{!2739, !2740, !2741}
!2740 = !DILocation(line: 686, column: 17, scope: !2671)
!2741 = !DILocation(line: 705, column: 19, scope: !2671)
!2742 = !DILocation(line: 416, column: 30, scope: !2443)
!2743 = !DILocation(line: 712, column: 34, scope: !2386)
!2744 = !DILocation(line: 715, column: 35, scope: !2386)
!2745 = !DILocation(line: 715, column: 17, scope: !2386)
!2746 = !DILocation(line: 715, column: 47, scope: !2386)
!2747 = !DILocation(line: 715, column: 65, scope: !2386)
!2748 = !DILocation(line: 716, column: 15, scope: !2386)
!2749 = !DILocation(line: 716, column: 11, scope: !2386)
!2750 = !DILocation(line: 712, column: 11, scope: !2334)
!2751 = !DILocation(line: 400, column: 10, scope: !2336)
!2752 = !DILocation(line: 719, column: 5, scope: !2334)
!2753 = !DILocation(line: 720, column: 7, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2334, file: !339, line: 720, column: 7)
!2755 = !DILocation(line: 720, column: 7, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2754, file: !339, line: 720, column: 7)
!2757 = !DILocation(line: 720, column: 7, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2759, file: !339, line: 720, column: 7)
!2759 = distinct !DILexicalBlock(scope: !2760, file: !339, line: 720, column: 7)
!2760 = distinct !DILexicalBlock(scope: !2756, file: !339, line: 720, column: 7)
!2761 = !DILocation(line: 720, column: 7, scope: !2759)
!2762 = !DILocation(line: 720, column: 7, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2764, file: !339, line: 720, column: 7)
!2764 = distinct !DILexicalBlock(scope: !2760, file: !339, line: 720, column: 7)
!2765 = !DILocation(line: 720, column: 7, scope: !2764)
!2766 = !DILocation(line: 720, column: 7, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2768, file: !339, line: 720, column: 7)
!2768 = distinct !DILexicalBlock(scope: !2760, file: !339, line: 720, column: 7)
!2769 = !DILocation(line: 720, column: 7, scope: !2768)
!2770 = !DILocation(line: 720, column: 7, scope: !2760)
!2771 = !DILocation(line: 720, column: 7, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2773, file: !339, line: 720, column: 7)
!2773 = distinct !DILexicalBlock(scope: !2754, file: !339, line: 720, column: 7)
!2774 = !DILocation(line: 720, column: 7, scope: !2773)
!2775 = !DILocation(line: 722, column: 5, scope: !2334)
!2776 = !DILocation(line: 723, column: 7, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2778, file: !339, line: 723, column: 7)
!2778 = distinct !DILexicalBlock(scope: !2334, file: !339, line: 723, column: 7)
!2779 = !DILocation(line: 424, column: 9, scope: !2334)
!2780 = !DILocation(line: 723, column: 7, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2782, file: !339, line: 723, column: 7)
!2782 = distinct !DILexicalBlock(scope: !2783, file: !339, line: 723, column: 7)
!2783 = distinct !DILexicalBlock(scope: !2777, file: !339, line: 723, column: 7)
!2784 = !DILocation(line: 723, column: 7, scope: !2782)
!2785 = !DILocation(line: 723, column: 7, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2787, file: !339, line: 723, column: 7)
!2787 = distinct !DILexicalBlock(scope: !2783, file: !339, line: 723, column: 7)
!2788 = !DILocation(line: 723, column: 7, scope: !2787)
!2789 = !DILocation(line: 723, column: 7, scope: !2783)
!2790 = !DILocation(line: 724, column: 7, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2792, file: !339, line: 724, column: 7)
!2792 = distinct !DILexicalBlock(scope: !2334, file: !339, line: 724, column: 7)
!2793 = !DILocation(line: 724, column: 7, scope: !2792)
!2794 = !DILocation(line: 726, column: 13, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2334, file: !339, line: 726, column: 11)
!2796 = !DILocation(line: 726, column: 11, scope: !2334)
!2797 = !DILocation(line: 728, column: 5, scope: !2335)
!2798 = !DILocation(line: 400, column: 75, scope: !2335)
!2799 = !DILocation(line: 400, column: 3, scope: !2335)
!2800 = distinct !{!2800, !2461, !2801}
!2801 = !DILocation(line: 728, column: 5, scope: !2336)
!2802 = !DILocation(line: 730, column: 11, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2307, file: !339, line: 730, column: 7)
!2804 = !DILocation(line: 730, column: 16, scope: !2803)
!2805 = !DILocation(line: 738, column: 51, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2307, file: !339, line: 738, column: 7)
!2807 = !DILocation(line: 739, column: 10, scope: !2806)
!2808 = !DILocation(line: 741, column: 11, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2810, file: !339, line: 741, column: 11)
!2810 = distinct !DILexicalBlock(scope: !2806, file: !339, line: 740, column: 5)
!2811 = !DILocation(line: 741, column: 11, scope: !2810)
!2812 = !DILocation(line: 742, column: 16, scope: !2809)
!2813 = !DILocation(line: 742, column: 9, scope: !2809)
!2814 = !DILocation(line: 746, column: 18, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2809, file: !339, line: 746, column: 16)
!2816 = !DILocation(line: 746, column: 32, scope: !2815)
!2817 = !DILocation(line: 746, column: 29, scope: !2815)
!2818 = !DILocation(line: 755, column: 7, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2307, file: !339, line: 755, column: 7)
!2820 = !DILocation(line: 755, column: 20, scope: !2819)
!2821 = !DILocation(line: 756, column: 12, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2823, file: !339, line: 756, column: 5)
!2823 = distinct !DILexicalBlock(scope: !2819, file: !339, line: 756, column: 5)
!2824 = !DILocation(line: 756, column: 5, scope: !2823)
!2825 = !DILocation(line: 757, column: 7, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2827, file: !339, line: 757, column: 7)
!2827 = distinct !DILexicalBlock(scope: !2822, file: !339, line: 757, column: 7)
!2828 = !DILocation(line: 757, column: 7, scope: !2827)
!2829 = !DILocation(line: 756, column: 39, scope: !2822)
!2830 = distinct !{!2830, !2824, !2831}
!2831 = !DILocation(line: 757, column: 7, scope: !2823)
!2832 = !DILocation(line: 759, column: 11, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2307, file: !339, line: 759, column: 7)
!2834 = !DILocation(line: 759, column: 7, scope: !2307)
!2835 = !DILocation(line: 760, column: 5, scope: !2833)
!2836 = !DILocation(line: 760, column: 17, scope: !2833)
!2837 = !DILocation(line: 763, column: 2, scope: !2307)
!2838 = !DILocation(line: 766, column: 51, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2307, file: !339, line: 766, column: 7)
!2840 = !DILocation(line: 766, column: 21, scope: !2839)
!2841 = !DILocation(line: 770, column: 42, scope: !2307)
!2842 = !DILocation(line: 768, column: 10, scope: !2307)
!2843 = !DILocation(line: 768, column: 3, scope: !2307)
!2844 = !DILocation(line: 772, column: 1, scope: !2307)
!2845 = distinct !DISubprogram(name: "gettext_quote", scope: !339, file: !339, line: 207, type: !2846, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !2848)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{!41, !41, !11}
!2848 = !{!2849, !2850, !2851, !2852}
!2849 = !DILocalVariable(name: "msgid", arg: 1, scope: !2845, file: !339, line: 207, type: !41)
!2850 = !DILocalVariable(name: "s", arg: 2, scope: !2845, file: !339, line: 207, type: !11)
!2851 = !DILocalVariable(name: "translation", scope: !2845, file: !339, line: 209, type: !41)
!2852 = !DILocalVariable(name: "locale_code", scope: !2845, file: !339, line: 210, type: !41)
!2853 = !DILocation(line: 0, scope: !2845)
!2854 = !DILocation(line: 209, column: 29, scope: !2845)
!2855 = !DILocation(line: 212, column: 19, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2845, file: !339, line: 212, column: 7)
!2857 = !DILocation(line: 212, column: 7, scope: !2845)
!2858 = !DILocation(line: 233, column: 17, scope: !2845)
!2859 = !DILocalVariable(name: "s1", arg: 1, scope: !2860, file: !2861, line: 160, type: !41)
!2860 = distinct !DISubprogram(name: "strcaseeq0", scope: !2861, file: !2861, line: 160, type: !2862, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !2864)
!2861 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2862 = !DISubroutineType(types: !2863)
!2863 = !{!43, !41, !41, !40, !40, !40, !40, !40, !40, !40, !40, !40}
!2864 = !{!2859, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874}
!2865 = !DILocalVariable(name: "s2", arg: 2, scope: !2860, file: !2861, line: 160, type: !41)
!2866 = !DILocalVariable(name: "s20", arg: 3, scope: !2860, file: !2861, line: 160, type: !40)
!2867 = !DILocalVariable(name: "s21", arg: 4, scope: !2860, file: !2861, line: 160, type: !40)
!2868 = !DILocalVariable(name: "s22", arg: 5, scope: !2860, file: !2861, line: 160, type: !40)
!2869 = !DILocalVariable(name: "s23", arg: 6, scope: !2860, file: !2861, line: 160, type: !40)
!2870 = !DILocalVariable(name: "s24", arg: 7, scope: !2860, file: !2861, line: 160, type: !40)
!2871 = !DILocalVariable(name: "s25", arg: 8, scope: !2860, file: !2861, line: 160, type: !40)
!2872 = !DILocalVariable(name: "s26", arg: 9, scope: !2860, file: !2861, line: 160, type: !40)
!2873 = !DILocalVariable(name: "s27", arg: 10, scope: !2860, file: !2861, line: 160, type: !40)
!2874 = !DILocalVariable(name: "s28", arg: 11, scope: !2860, file: !2861, line: 160, type: !40)
!2875 = !DILocation(line: 0, scope: !2860, inlinedAt: !2876)
!2876 = distinct !DILocation(line: 234, column: 7, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2845, file: !339, line: 234, column: 7)
!2878 = !DILocation(line: 162, column: 7, scope: !2879, inlinedAt: !2876)
!2879 = distinct !DILexicalBlock(scope: !2860, file: !2861, line: 162, column: 7)
!2880 = !DILocalVariable(name: "s1", arg: 1, scope: !2881, file: !2861, line: 146, type: !41)
!2881 = distinct !DISubprogram(name: "strcaseeq1", scope: !2861, file: !2861, line: 146, type: !2882, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !2884)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{!43, !41, !41, !40, !40, !40, !40, !40, !40, !40, !40}
!2884 = !{!2880, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893}
!2885 = !DILocalVariable(name: "s2", arg: 2, scope: !2881, file: !2861, line: 146, type: !41)
!2886 = !DILocalVariable(name: "s21", arg: 3, scope: !2881, file: !2861, line: 146, type: !40)
!2887 = !DILocalVariable(name: "s22", arg: 4, scope: !2881, file: !2861, line: 146, type: !40)
!2888 = !DILocalVariable(name: "s23", arg: 5, scope: !2881, file: !2861, line: 146, type: !40)
!2889 = !DILocalVariable(name: "s24", arg: 6, scope: !2881, file: !2861, line: 146, type: !40)
!2890 = !DILocalVariable(name: "s25", arg: 7, scope: !2881, file: !2861, line: 146, type: !40)
!2891 = !DILocalVariable(name: "s26", arg: 8, scope: !2881, file: !2861, line: 146, type: !40)
!2892 = !DILocalVariable(name: "s27", arg: 9, scope: !2881, file: !2861, line: 146, type: !40)
!2893 = !DILocalVariable(name: "s28", arg: 10, scope: !2881, file: !2861, line: 146, type: !40)
!2894 = !DILocation(line: 0, scope: !2881, inlinedAt: !2895)
!2895 = distinct !DILocation(line: 167, column: 16, scope: !2896, inlinedAt: !2876)
!2896 = distinct !DILexicalBlock(scope: !2897, file: !2861, line: 164, column: 11)
!2897 = distinct !DILexicalBlock(scope: !2879, file: !2861, line: 163, column: 5)
!2898 = !DILocation(line: 148, column: 7, scope: !2899, inlinedAt: !2895)
!2899 = distinct !DILexicalBlock(scope: !2881, file: !2861, line: 148, column: 7)
!2900 = !DILocalVariable(name: "s1", arg: 1, scope: !2901, file: !2861, line: 132, type: !41)
!2901 = distinct !DISubprogram(name: "strcaseeq2", scope: !2861, file: !2861, line: 132, type: !2902, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !2904)
!2902 = !DISubroutineType(types: !2903)
!2903 = !{!43, !41, !41, !40, !40, !40, !40, !40, !40, !40}
!2904 = !{!2900, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912}
!2905 = !DILocalVariable(name: "s2", arg: 2, scope: !2901, file: !2861, line: 132, type: !41)
!2906 = !DILocalVariable(name: "s22", arg: 3, scope: !2901, file: !2861, line: 132, type: !40)
!2907 = !DILocalVariable(name: "s23", arg: 4, scope: !2901, file: !2861, line: 132, type: !40)
!2908 = !DILocalVariable(name: "s24", arg: 5, scope: !2901, file: !2861, line: 132, type: !40)
!2909 = !DILocalVariable(name: "s25", arg: 6, scope: !2901, file: !2861, line: 132, type: !40)
!2910 = !DILocalVariable(name: "s26", arg: 7, scope: !2901, file: !2861, line: 132, type: !40)
!2911 = !DILocalVariable(name: "s27", arg: 8, scope: !2901, file: !2861, line: 132, type: !40)
!2912 = !DILocalVariable(name: "s28", arg: 9, scope: !2901, file: !2861, line: 132, type: !40)
!2913 = !DILocation(line: 0, scope: !2901, inlinedAt: !2914)
!2914 = distinct !DILocation(line: 153, column: 16, scope: !2915, inlinedAt: !2895)
!2915 = distinct !DILexicalBlock(scope: !2916, file: !2861, line: 150, column: 11)
!2916 = distinct !DILexicalBlock(scope: !2899, file: !2861, line: 149, column: 5)
!2917 = !DILocation(line: 134, column: 7, scope: !2918, inlinedAt: !2914)
!2918 = distinct !DILexicalBlock(scope: !2901, file: !2861, line: 134, column: 7)
!2919 = !DILocalVariable(name: "s1", arg: 1, scope: !2920, file: !2861, line: 118, type: !41)
!2920 = distinct !DISubprogram(name: "strcaseeq3", scope: !2861, file: !2861, line: 118, type: !2921, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !2923)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{!43, !41, !41, !40, !40, !40, !40, !40, !40}
!2923 = !{!2919, !2924, !2925, !2926, !2927, !2928, !2929, !2930}
!2924 = !DILocalVariable(name: "s2", arg: 2, scope: !2920, file: !2861, line: 118, type: !41)
!2925 = !DILocalVariable(name: "s23", arg: 3, scope: !2920, file: !2861, line: 118, type: !40)
!2926 = !DILocalVariable(name: "s24", arg: 4, scope: !2920, file: !2861, line: 118, type: !40)
!2927 = !DILocalVariable(name: "s25", arg: 5, scope: !2920, file: !2861, line: 118, type: !40)
!2928 = !DILocalVariable(name: "s26", arg: 6, scope: !2920, file: !2861, line: 118, type: !40)
!2929 = !DILocalVariable(name: "s27", arg: 7, scope: !2920, file: !2861, line: 118, type: !40)
!2930 = !DILocalVariable(name: "s28", arg: 8, scope: !2920, file: !2861, line: 118, type: !40)
!2931 = !DILocation(line: 0, scope: !2920, inlinedAt: !2932)
!2932 = distinct !DILocation(line: 139, column: 16, scope: !2933, inlinedAt: !2914)
!2933 = distinct !DILexicalBlock(scope: !2934, file: !2861, line: 136, column: 11)
!2934 = distinct !DILexicalBlock(scope: !2918, file: !2861, line: 135, column: 5)
!2935 = !DILocation(line: 120, column: 7, scope: !2936, inlinedAt: !2932)
!2936 = distinct !DILexicalBlock(scope: !2920, file: !2861, line: 120, column: 7)
!2937 = !DILocation(line: 120, column: 7, scope: !2920, inlinedAt: !2932)
!2938 = !DILocalVariable(name: "s1", arg: 1, scope: !2939, file: !2861, line: 104, type: !41)
!2939 = distinct !DISubprogram(name: "strcaseeq4", scope: !2861, file: !2861, line: 104, type: !2940, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !2942)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{!43, !41, !41, !40, !40, !40, !40, !40}
!2942 = !{!2938, !2943, !2944, !2945, !2946, !2947, !2948}
!2943 = !DILocalVariable(name: "s2", arg: 2, scope: !2939, file: !2861, line: 104, type: !41)
!2944 = !DILocalVariable(name: "s24", arg: 3, scope: !2939, file: !2861, line: 104, type: !40)
!2945 = !DILocalVariable(name: "s25", arg: 4, scope: !2939, file: !2861, line: 104, type: !40)
!2946 = !DILocalVariable(name: "s26", arg: 5, scope: !2939, file: !2861, line: 104, type: !40)
!2947 = !DILocalVariable(name: "s27", arg: 6, scope: !2939, file: !2861, line: 104, type: !40)
!2948 = !DILocalVariable(name: "s28", arg: 7, scope: !2939, file: !2861, line: 104, type: !40)
!2949 = !DILocation(line: 0, scope: !2939, inlinedAt: !2950)
!2950 = distinct !DILocation(line: 125, column: 16, scope: !2951, inlinedAt: !2932)
!2951 = distinct !DILexicalBlock(scope: !2952, file: !2861, line: 122, column: 11)
!2952 = distinct !DILexicalBlock(scope: !2936, file: !2861, line: 121, column: 5)
!2953 = !DILocation(line: 106, column: 7, scope: !2954, inlinedAt: !2950)
!2954 = distinct !DILexicalBlock(scope: !2939, file: !2861, line: 106, column: 7)
!2955 = !DILocation(line: 106, column: 7, scope: !2939, inlinedAt: !2950)
!2956 = !DILocalVariable(name: "s1", arg: 1, scope: !2957, file: !2861, line: 90, type: !41)
!2957 = distinct !DISubprogram(name: "strcaseeq5", scope: !2861, file: !2861, line: 90, type: !2958, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !2960)
!2958 = !DISubroutineType(types: !2959)
!2959 = !{!43, !41, !41, !40, !40, !40, !40}
!2960 = !{!2956, !2961, !2962, !2963, !2964, !2965}
!2961 = !DILocalVariable(name: "s2", arg: 2, scope: !2957, file: !2861, line: 90, type: !41)
!2962 = !DILocalVariable(name: "s25", arg: 3, scope: !2957, file: !2861, line: 90, type: !40)
!2963 = !DILocalVariable(name: "s26", arg: 4, scope: !2957, file: !2861, line: 90, type: !40)
!2964 = !DILocalVariable(name: "s27", arg: 5, scope: !2957, file: !2861, line: 90, type: !40)
!2965 = !DILocalVariable(name: "s28", arg: 6, scope: !2957, file: !2861, line: 90, type: !40)
!2966 = !DILocation(line: 0, scope: !2957, inlinedAt: !2967)
!2967 = distinct !DILocation(line: 111, column: 16, scope: !2968, inlinedAt: !2950)
!2968 = distinct !DILexicalBlock(scope: !2969, file: !2861, line: 108, column: 11)
!2969 = distinct !DILexicalBlock(scope: !2954, file: !2861, line: 107, column: 5)
!2970 = !DILocation(line: 92, column: 7, scope: !2971, inlinedAt: !2967)
!2971 = distinct !DILexicalBlock(scope: !2957, file: !2861, line: 92, column: 7)
!2972 = !DILocation(line: 92, column: 7, scope: !2957, inlinedAt: !2967)
!2973 = !DILocation(line: 235, column: 12, scope: !2877)
!2974 = !DILocation(line: 235, column: 21, scope: !2877)
!2975 = !DILocation(line: 235, column: 5, scope: !2877)
!2976 = !DILocation(line: 0, scope: !2881, inlinedAt: !2977)
!2977 = distinct !DILocation(line: 167, column: 16, scope: !2896, inlinedAt: !2978)
!2978 = distinct !DILocation(line: 236, column: 7, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2845, file: !339, line: 236, column: 7)
!2980 = !DILocation(line: 148, column: 7, scope: !2899, inlinedAt: !2977)
!2981 = !DILocation(line: 0, scope: !2901, inlinedAt: !2982)
!2982 = distinct !DILocation(line: 153, column: 16, scope: !2915, inlinedAt: !2977)
!2983 = !DILocation(line: 134, column: 7, scope: !2918, inlinedAt: !2982)
!2984 = !DILocation(line: 134, column: 7, scope: !2901, inlinedAt: !2982)
!2985 = !DILocation(line: 0, scope: !2920, inlinedAt: !2986)
!2986 = distinct !DILocation(line: 139, column: 16, scope: !2933, inlinedAt: !2982)
!2987 = !DILocation(line: 120, column: 7, scope: !2936, inlinedAt: !2986)
!2988 = !DILocation(line: 120, column: 7, scope: !2920, inlinedAt: !2986)
!2989 = !DILocation(line: 0, scope: !2939, inlinedAt: !2990)
!2990 = distinct !DILocation(line: 125, column: 16, scope: !2951, inlinedAt: !2986)
!2991 = !DILocation(line: 106, column: 7, scope: !2954, inlinedAt: !2990)
!2992 = !DILocation(line: 106, column: 7, scope: !2939, inlinedAt: !2990)
!2993 = !DILocation(line: 0, scope: !2957, inlinedAt: !2994)
!2994 = distinct !DILocation(line: 111, column: 16, scope: !2968, inlinedAt: !2990)
!2995 = !DILocation(line: 92, column: 7, scope: !2971, inlinedAt: !2994)
!2996 = !DILocation(line: 92, column: 7, scope: !2957, inlinedAt: !2994)
!2997 = !DILocalVariable(name: "s1", arg: 1, scope: !2998, file: !2861, line: 76, type: !41)
!2998 = distinct !DISubprogram(name: "strcaseeq6", scope: !2861, file: !2861, line: 76, type: !2999, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !3001)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{!43, !41, !41, !40, !40, !40}
!3001 = !{!2997, !3002, !3003, !3004, !3005}
!3002 = !DILocalVariable(name: "s2", arg: 2, scope: !2998, file: !2861, line: 76, type: !41)
!3003 = !DILocalVariable(name: "s26", arg: 3, scope: !2998, file: !2861, line: 76, type: !40)
!3004 = !DILocalVariable(name: "s27", arg: 4, scope: !2998, file: !2861, line: 76, type: !40)
!3005 = !DILocalVariable(name: "s28", arg: 5, scope: !2998, file: !2861, line: 76, type: !40)
!3006 = !DILocation(line: 0, scope: !2998, inlinedAt: !3007)
!3007 = distinct !DILocation(line: 97, column: 16, scope: !3008, inlinedAt: !2994)
!3008 = distinct !DILexicalBlock(scope: !3009, file: !2861, line: 94, column: 11)
!3009 = distinct !DILexicalBlock(scope: !2971, file: !2861, line: 93, column: 5)
!3010 = !DILocation(line: 78, column: 7, scope: !3011, inlinedAt: !3007)
!3011 = distinct !DILexicalBlock(scope: !2998, file: !2861, line: 78, column: 7)
!3012 = !DILocation(line: 78, column: 7, scope: !2998, inlinedAt: !3007)
!3013 = !DILocalVariable(name: "s1", arg: 1, scope: !3014, file: !2861, line: 62, type: !41)
!3014 = distinct !DISubprogram(name: "strcaseeq7", scope: !2861, file: !2861, line: 62, type: !3015, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !3017)
!3015 = !DISubroutineType(types: !3016)
!3016 = !{!43, !41, !41, !40, !40}
!3017 = !{!3013, !3018, !3019, !3020}
!3018 = !DILocalVariable(name: "s2", arg: 2, scope: !3014, file: !2861, line: 62, type: !41)
!3019 = !DILocalVariable(name: "s27", arg: 3, scope: !3014, file: !2861, line: 62, type: !40)
!3020 = !DILocalVariable(name: "s28", arg: 4, scope: !3014, file: !2861, line: 62, type: !40)
!3021 = !DILocation(line: 0, scope: !3014, inlinedAt: !3022)
!3022 = distinct !DILocation(line: 83, column: 16, scope: !3023, inlinedAt: !3007)
!3023 = distinct !DILexicalBlock(scope: !3024, file: !2861, line: 80, column: 11)
!3024 = distinct !DILexicalBlock(scope: !3011, file: !2861, line: 79, column: 5)
!3025 = !DILocation(line: 64, column: 7, scope: !3026, inlinedAt: !3022)
!3026 = distinct !DILexicalBlock(scope: !3014, file: !2861, line: 64, column: 7)
!3027 = !DILocation(line: 236, column: 7, scope: !2845)
!3028 = !DILocation(line: 237, column: 12, scope: !2979)
!3029 = !DILocation(line: 237, column: 21, scope: !2979)
!3030 = !DILocation(line: 237, column: 5, scope: !2979)
!3031 = !DILocation(line: 239, column: 13, scope: !2845)
!3032 = !DILocation(line: 239, column: 11, scope: !2845)
!3033 = !DILocation(line: 239, column: 3, scope: !2845)
!3034 = !DILocation(line: 240, column: 1, scope: !2845)
!3035 = distinct !DISubprogram(name: "quotearg_alloc", scope: !339, file: !339, line: 799, type: !3036, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !3038)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!39, !41, !98, !370}
!3038 = !{!3039, !3040, !3041}
!3039 = !DILocalVariable(name: "arg", arg: 1, scope: !3035, file: !339, line: 799, type: !41)
!3040 = !DILocalVariable(name: "argsize", arg: 2, scope: !3035, file: !339, line: 799, type: !98)
!3041 = !DILocalVariable(name: "o", arg: 3, scope: !3035, file: !339, line: 800, type: !370)
!3042 = !DILocation(line: 0, scope: !3035)
!3043 = !DILocalVariable(name: "arg", arg: 1, scope: !3044, file: !339, line: 812, type: !41)
!3044 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !339, file: !339, line: 812, type: !3045, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !3047)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!39, !41, !98, !700, !370}
!3047 = !{!3043, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055}
!3048 = !DILocalVariable(name: "argsize", arg: 2, scope: !3044, file: !339, line: 812, type: !98)
!3049 = !DILocalVariable(name: "size", arg: 3, scope: !3044, file: !339, line: 812, type: !700)
!3050 = !DILocalVariable(name: "o", arg: 4, scope: !3044, file: !339, line: 813, type: !370)
!3051 = !DILocalVariable(name: "p", scope: !3044, file: !339, line: 815, type: !370)
!3052 = !DILocalVariable(name: "e", scope: !3044, file: !339, line: 816, type: !43)
!3053 = !DILocalVariable(name: "flags", scope: !3044, file: !339, line: 818, type: !43)
!3054 = !DILocalVariable(name: "bufsize", scope: !3044, file: !339, line: 819, type: !98)
!3055 = !DILocalVariable(name: "buf", scope: !3044, file: !339, line: 823, type: !39)
!3056 = !DILocation(line: 0, scope: !3044, inlinedAt: !3057)
!3057 = distinct !DILocation(line: 802, column: 10, scope: !3035)
!3058 = !DILocation(line: 815, column: 37, scope: !3044, inlinedAt: !3057)
!3059 = !DILocation(line: 816, column: 11, scope: !3044, inlinedAt: !3057)
!3060 = !DILocation(line: 818, column: 18, scope: !3044, inlinedAt: !3057)
!3061 = !DILocation(line: 818, column: 24, scope: !3044, inlinedAt: !3057)
!3062 = !DILocation(line: 819, column: 69, scope: !3044, inlinedAt: !3057)
!3063 = !DILocation(line: 820, column: 53, scope: !3044, inlinedAt: !3057)
!3064 = !DILocation(line: 821, column: 49, scope: !3044, inlinedAt: !3057)
!3065 = !DILocation(line: 822, column: 49, scope: !3044, inlinedAt: !3057)
!3066 = !DILocation(line: 819, column: 20, scope: !3044, inlinedAt: !3057)
!3067 = !DILocation(line: 822, column: 62, scope: !3044, inlinedAt: !3057)
!3068 = !DILocalVariable(name: "n", arg: 1, scope: !3069, file: !363, line: 216, type: !98)
!3069 = distinct !DISubprogram(name: "xcharalloc", scope: !363, file: !363, line: 216, type: !3070, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !3072)
!3070 = !DISubroutineType(types: !3071)
!3071 = !{!39, !98}
!3072 = !{!3068}
!3073 = !DILocation(line: 0, scope: !3069, inlinedAt: !3074)
!3074 = distinct !DILocation(line: 823, column: 15, scope: !3044, inlinedAt: !3057)
!3075 = !DILocation(line: 218, column: 10, scope: !3069, inlinedAt: !3074)
!3076 = !DILocation(line: 824, column: 60, scope: !3044, inlinedAt: !3057)
!3077 = !DILocation(line: 826, column: 32, scope: !3044, inlinedAt: !3057)
!3078 = !DILocation(line: 826, column: 47, scope: !3044, inlinedAt: !3057)
!3079 = !DILocation(line: 824, column: 3, scope: !3044, inlinedAt: !3057)
!3080 = !DILocation(line: 827, column: 9, scope: !3044, inlinedAt: !3057)
!3081 = !DILocation(line: 802, column: 3, scope: !3035)
!3082 = !DILocation(line: 0, scope: !3044)
!3083 = !DILocation(line: 815, column: 37, scope: !3044)
!3084 = !DILocation(line: 816, column: 11, scope: !3044)
!3085 = !DILocation(line: 818, column: 18, scope: !3044)
!3086 = !DILocation(line: 818, column: 27, scope: !3044)
!3087 = !DILocation(line: 818, column: 24, scope: !3044)
!3088 = !DILocation(line: 819, column: 69, scope: !3044)
!3089 = !DILocation(line: 820, column: 53, scope: !3044)
!3090 = !DILocation(line: 821, column: 49, scope: !3044)
!3091 = !DILocation(line: 822, column: 49, scope: !3044)
!3092 = !DILocation(line: 819, column: 20, scope: !3044)
!3093 = !DILocation(line: 822, column: 62, scope: !3044)
!3094 = !DILocation(line: 0, scope: !3069, inlinedAt: !3095)
!3095 = distinct !DILocation(line: 823, column: 15, scope: !3044)
!3096 = !DILocation(line: 218, column: 10, scope: !3069, inlinedAt: !3095)
!3097 = !DILocation(line: 824, column: 60, scope: !3044)
!3098 = !DILocation(line: 826, column: 32, scope: !3044)
!3099 = !DILocation(line: 826, column: 47, scope: !3044)
!3100 = !DILocation(line: 824, column: 3, scope: !3044)
!3101 = !DILocation(line: 827, column: 9, scope: !3044)
!3102 = !DILocation(line: 828, column: 7, scope: !3044)
!3103 = !DILocation(line: 829, column: 11, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3044, file: !339, line: 828, column: 7)
!3105 = !DILocation(line: 829, column: 5, scope: !3104)
!3106 = !DILocation(line: 830, column: 3, scope: !3044)
!3107 = distinct !DISubprogram(name: "quotearg_free", scope: !339, file: !339, line: 848, type: !130, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !3108)
!3108 = !{!3109, !3110}
!3109 = !DILocalVariable(name: "sv", scope: !3107, file: !339, line: 850, type: !446)
!3110 = !DILocalVariable(name: "i", scope: !3107, file: !339, line: 851, type: !43)
!3111 = !DILocation(line: 850, column: 24, scope: !3107)
!3112 = !DILocation(line: 0, scope: !3107)
!3113 = !DILocation(line: 852, column: 19, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3115, file: !339, line: 852, column: 3)
!3115 = distinct !DILexicalBlock(scope: !3107, file: !339, line: 852, column: 3)
!3116 = !DILocation(line: 852, column: 17, scope: !3114)
!3117 = !DILocation(line: 852, column: 3, scope: !3115)
!3118 = !DILocation(line: 853, column: 17, scope: !3114)
!3119 = !{!3120, !1344, i64 8}
!3120 = !{!"slotvec", !1486, i64 0, !1344, i64 8}
!3121 = !DILocation(line: 853, column: 5, scope: !3114)
!3122 = !DILocation(line: 852, column: 28, scope: !3114)
!3123 = distinct !{!3123, !3117, !3124}
!3124 = !DILocation(line: 853, column: 20, scope: !3115)
!3125 = !DILocation(line: 854, column: 13, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3107, file: !339, line: 854, column: 7)
!3127 = !DILocation(line: 854, column: 17, scope: !3126)
!3128 = !DILocation(line: 854, column: 7, scope: !3107)
!3129 = !DILocation(line: 856, column: 7, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !3126, file: !339, line: 855, column: 5)
!3131 = !DILocation(line: 857, column: 21, scope: !3130)
!3132 = !{!3120, !1486, i64 0}
!3133 = !DILocation(line: 858, column: 20, scope: !3130)
!3134 = !DILocation(line: 859, column: 5, scope: !3130)
!3135 = !DILocation(line: 860, column: 10, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3107, file: !339, line: 860, column: 7)
!3137 = !DILocation(line: 860, column: 7, scope: !3107)
!3138 = !DILocation(line: 862, column: 13, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3136, file: !339, line: 861, column: 5)
!3140 = !DILocation(line: 862, column: 7, scope: !3139)
!3141 = !DILocation(line: 863, column: 15, scope: !3139)
!3142 = !DILocation(line: 864, column: 5, scope: !3139)
!3143 = !DILocation(line: 865, column: 10, scope: !3107)
!3144 = !DILocation(line: 866, column: 1, scope: !3107)
!3145 = distinct !DISubprogram(name: "quotearg_n", scope: !339, file: !339, line: 931, type: !112, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !3146)
!3146 = !{!3147, !3148}
!3147 = !DILocalVariable(name: "n", arg: 1, scope: !3145, file: !339, line: 931, type: !43)
!3148 = !DILocalVariable(name: "arg", arg: 2, scope: !3145, file: !339, line: 931, type: !41)
!3149 = !DILocation(line: 0, scope: !3145)
!3150 = !DILocation(line: 933, column: 10, scope: !3145)
!3151 = !DILocation(line: 933, column: 3, scope: !3145)
!3152 = distinct !DISubprogram(name: "quotearg_n_options", scope: !339, file: !339, line: 877, type: !3153, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !3155)
!3153 = !DISubroutineType(types: !3154)
!3154 = !{!39, !43, !41, !98, !370}
!3155 = !{!3156, !3157, !3158, !3159, !3160, !3161, !3162, !3165, !3166, !3168, !3169, !3170}
!3156 = !DILocalVariable(name: "n", arg: 1, scope: !3152, file: !339, line: 877, type: !43)
!3157 = !DILocalVariable(name: "arg", arg: 2, scope: !3152, file: !339, line: 877, type: !41)
!3158 = !DILocalVariable(name: "argsize", arg: 3, scope: !3152, file: !339, line: 877, type: !98)
!3159 = !DILocalVariable(name: "options", arg: 4, scope: !3152, file: !339, line: 878, type: !370)
!3160 = !DILocalVariable(name: "e", scope: !3152, file: !339, line: 880, type: !43)
!3161 = !DILocalVariable(name: "sv", scope: !3152, file: !339, line: 882, type: !446)
!3162 = !DILocalVariable(name: "preallocated", scope: !3163, file: !339, line: 889, type: !124)
!3163 = distinct !DILexicalBlock(scope: !3164, file: !339, line: 888, column: 5)
!3164 = distinct !DILexicalBlock(scope: !3152, file: !339, line: 887, column: 7)
!3165 = !DILocalVariable(name: "nmax", scope: !3163, file: !339, line: 890, type: !43)
!3166 = !DILocalVariable(name: "size", scope: !3167, file: !339, line: 903, type: !98)
!3167 = distinct !DILexicalBlock(scope: !3152, file: !339, line: 902, column: 3)
!3168 = !DILocalVariable(name: "val", scope: !3167, file: !339, line: 904, type: !39)
!3169 = !DILocalVariable(name: "flags", scope: !3167, file: !339, line: 906, type: !43)
!3170 = !DILocalVariable(name: "qsize", scope: !3167, file: !339, line: 907, type: !98)
!3171 = !DILocation(line: 0, scope: !3152)
!3172 = !DILocation(line: 880, column: 11, scope: !3152)
!3173 = !DILocation(line: 882, column: 24, scope: !3152)
!3174 = !DILocation(line: 884, column: 9, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3152, file: !339, line: 884, column: 7)
!3176 = !DILocation(line: 884, column: 7, scope: !3152)
!3177 = !DILocation(line: 885, column: 5, scope: !3175)
!3178 = !DILocation(line: 887, column: 7, scope: !3164)
!3179 = !DILocation(line: 887, column: 14, scope: !3164)
!3180 = !DILocation(line: 887, column: 7, scope: !3152)
!3181 = !DILocation(line: 889, column: 31, scope: !3163)
!3182 = !DILocation(line: 0, scope: !3163)
!3183 = !DILocation(line: 892, column: 16, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3163, file: !339, line: 892, column: 11)
!3185 = !DILocation(line: 892, column: 11, scope: !3163)
!3186 = !DILocation(line: 893, column: 9, scope: !3184)
!3187 = !DILocation(line: 895, column: 32, scope: !3163)
!3188 = !DILocation(line: 895, column: 61, scope: !3163)
!3189 = !DILocation(line: 895, column: 58, scope: !3163)
!3190 = !DILocation(line: 895, column: 66, scope: !3163)
!3191 = !DILocation(line: 895, column: 22, scope: !3163)
!3192 = !DILocation(line: 895, column: 15, scope: !3163)
!3193 = !DILocation(line: 896, column: 11, scope: !3163)
!3194 = !DILocation(line: 897, column: 15, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3163, file: !339, line: 896, column: 11)
!3196 = !{i64 0, i64 8, !1485, i64 8, i64 8, !1343}
!3197 = !DILocation(line: 897, column: 9, scope: !3195)
!3198 = !DILocation(line: 898, column: 20, scope: !3163)
!3199 = !DILocation(line: 898, column: 18, scope: !3163)
!3200 = !DILocation(line: 898, column: 15, scope: !3163)
!3201 = !DILocation(line: 898, column: 38, scope: !3163)
!3202 = !DILocation(line: 898, column: 31, scope: !3163)
!3203 = !DILocation(line: 898, column: 48, scope: !3163)
!3204 = !DILocation(line: 0, scope: !2605, inlinedAt: !3205)
!3205 = distinct !DILocation(line: 898, column: 7, scope: !3163)
!3206 = !DILocation(line: 71, column: 10, scope: !2605, inlinedAt: !3205)
!3207 = !DILocation(line: 899, column: 14, scope: !3163)
!3208 = !DILocation(line: 900, column: 5, scope: !3163)
!3209 = !DILocation(line: 903, column: 19, scope: !3167)
!3210 = !DILocation(line: 903, column: 25, scope: !3167)
!3211 = !DILocation(line: 0, scope: !3167)
!3212 = !DILocation(line: 904, column: 23, scope: !3167)
!3213 = !DILocation(line: 906, column: 26, scope: !3167)
!3214 = !DILocation(line: 906, column: 32, scope: !3167)
!3215 = !DILocation(line: 908, column: 55, scope: !3167)
!3216 = !DILocation(line: 909, column: 46, scope: !3167)
!3217 = !DILocation(line: 910, column: 55, scope: !3167)
!3218 = !DILocation(line: 911, column: 55, scope: !3167)
!3219 = !DILocation(line: 907, column: 20, scope: !3167)
!3220 = !DILocation(line: 913, column: 14, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3167, file: !339, line: 913, column: 9)
!3222 = !DILocation(line: 913, column: 9, scope: !3167)
!3223 = !DILocation(line: 915, column: 35, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3221, file: !339, line: 914, column: 7)
!3225 = !DILocation(line: 915, column: 20, scope: !3224)
!3226 = !DILocation(line: 916, column: 17, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3224, file: !339, line: 916, column: 13)
!3228 = !DILocation(line: 916, column: 13, scope: !3224)
!3229 = !DILocation(line: 917, column: 11, scope: !3227)
!3230 = !DILocation(line: 0, scope: !3069, inlinedAt: !3231)
!3231 = distinct !DILocation(line: 918, column: 27, scope: !3224)
!3232 = !DILocation(line: 218, column: 10, scope: !3069, inlinedAt: !3231)
!3233 = !DILocation(line: 918, column: 19, scope: !3224)
!3234 = !DILocation(line: 919, column: 69, scope: !3224)
!3235 = !DILocation(line: 921, column: 44, scope: !3224)
!3236 = !DILocation(line: 922, column: 44, scope: !3224)
!3237 = !DILocation(line: 919, column: 9, scope: !3224)
!3238 = !DILocation(line: 923, column: 7, scope: !3224)
!3239 = !DILocation(line: 925, column: 11, scope: !3167)
!3240 = !DILocation(line: 926, column: 5, scope: !3167)
!3241 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !339, file: !339, line: 937, type: !3242, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !3244)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!39, !43, !41, !98}
!3244 = !{!3245, !3246, !3247}
!3245 = !DILocalVariable(name: "n", arg: 1, scope: !3241, file: !339, line: 937, type: !43)
!3246 = !DILocalVariable(name: "arg", arg: 2, scope: !3241, file: !339, line: 937, type: !41)
!3247 = !DILocalVariable(name: "argsize", arg: 3, scope: !3241, file: !339, line: 937, type: !98)
!3248 = !DILocation(line: 0, scope: !3241)
!3249 = !DILocation(line: 939, column: 10, scope: !3241)
!3250 = !DILocation(line: 939, column: 3, scope: !3241)
!3251 = distinct !DISubprogram(name: "quotearg", scope: !339, file: !339, line: 943, type: !118, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !3252)
!3252 = !{!3253}
!3253 = !DILocalVariable(name: "arg", arg: 1, scope: !3251, file: !339, line: 943, type: !41)
!3254 = !DILocation(line: 0, scope: !3251)
!3255 = !DILocation(line: 0, scope: !3145, inlinedAt: !3256)
!3256 = distinct !DILocation(line: 945, column: 10, scope: !3251)
!3257 = !DILocation(line: 933, column: 10, scope: !3145, inlinedAt: !3256)
!3258 = !DILocation(line: 945, column: 3, scope: !3251)
!3259 = distinct !DISubprogram(name: "quotearg_mem", scope: !339, file: !339, line: 949, type: !3260, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !3262)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{!39, !41, !98}
!3262 = !{!3263, !3264}
!3263 = !DILocalVariable(name: "arg", arg: 1, scope: !3259, file: !339, line: 949, type: !41)
!3264 = !DILocalVariable(name: "argsize", arg: 2, scope: !3259, file: !339, line: 949, type: !98)
!3265 = !DILocation(line: 0, scope: !3259)
!3266 = !DILocation(line: 0, scope: !3241, inlinedAt: !3267)
!3267 = distinct !DILocation(line: 951, column: 10, scope: !3259)
!3268 = !DILocation(line: 939, column: 10, scope: !3241, inlinedAt: !3267)
!3269 = !DILocation(line: 951, column: 3, scope: !3259)
!3270 = distinct !DISubprogram(name: "quotearg_n_style", scope: !339, file: !339, line: 955, type: !174, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !3271)
!3271 = !{!3272, !3273, !3274, !3275}
!3272 = !DILocalVariable(name: "n", arg: 1, scope: !3270, file: !339, line: 955, type: !43)
!3273 = !DILocalVariable(name: "s", arg: 2, scope: !3270, file: !339, line: 955, type: !11)
!3274 = !DILocalVariable(name: "arg", arg: 3, scope: !3270, file: !339, line: 955, type: !41)
!3275 = !DILocalVariable(name: "o", scope: !3270, file: !339, line: 957, type: !371)
!3276 = !DILocation(line: 0, scope: !3270)
!3277 = !DILocation(line: 957, column: 3, scope: !3270)
!3278 = !DILocation(line: 957, column: 32, scope: !3270)
!3279 = !DILocalVariable(name: "style", arg: 1, scope: !3280, file: !339, line: 193, type: !11)
!3280 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !339, file: !339, line: 193, type: !3281, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !3283)
!3281 = !DISubroutineType(types: !3282)
!3282 = !{!372, !11}
!3283 = !{!3279, !3284}
!3284 = !DILocalVariable(name: "o", scope: !3280, file: !339, line: 195, type: !372)
!3285 = !DILocation(line: 0, scope: !3280, inlinedAt: !3286)
!3286 = distinct !DILocation(line: 957, column: 36, scope: !3270)
!3287 = !DILocation(line: 195, column: 26, scope: !3280, inlinedAt: !3286)
!3288 = !{!3289}
!3289 = distinct !{!3289, !3290, !"quoting_options_from_style: argument 0"}
!3290 = distinct !{!3290, !"quoting_options_from_style"}
!3291 = !DILocation(line: 196, column: 13, scope: !3292, inlinedAt: !3286)
!3292 = distinct !DILexicalBlock(scope: !3280, file: !339, line: 196, column: 7)
!3293 = !DILocation(line: 196, column: 7, scope: !3280, inlinedAt: !3286)
!3294 = !DILocation(line: 197, column: 5, scope: !3292, inlinedAt: !3286)
!3295 = !DILocation(line: 198, column: 5, scope: !3280, inlinedAt: !3286)
!3296 = !DILocation(line: 198, column: 11, scope: !3280, inlinedAt: !3286)
!3297 = !DILocation(line: 958, column: 10, scope: !3270)
!3298 = !DILocation(line: 959, column: 1, scope: !3270)
!3299 = !DILocation(line: 958, column: 3, scope: !3270)
!3300 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !339, file: !339, line: 962, type: !3301, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !3303)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{!39, !43, !11, !41, !98}
!3303 = !{!3304, !3305, !3306, !3307, !3308}
!3304 = !DILocalVariable(name: "n", arg: 1, scope: !3300, file: !339, line: 962, type: !43)
!3305 = !DILocalVariable(name: "s", arg: 2, scope: !3300, file: !339, line: 962, type: !11)
!3306 = !DILocalVariable(name: "arg", arg: 3, scope: !3300, file: !339, line: 963, type: !41)
!3307 = !DILocalVariable(name: "argsize", arg: 4, scope: !3300, file: !339, line: 963, type: !98)
!3308 = !DILocalVariable(name: "o", scope: !3300, file: !339, line: 965, type: !371)
!3309 = !DILocation(line: 0, scope: !3300)
!3310 = !DILocation(line: 965, column: 3, scope: !3300)
!3311 = !DILocation(line: 965, column: 32, scope: !3300)
!3312 = !DILocation(line: 0, scope: !3280, inlinedAt: !3313)
!3313 = distinct !DILocation(line: 965, column: 36, scope: !3300)
!3314 = !DILocation(line: 195, column: 26, scope: !3280, inlinedAt: !3313)
!3315 = !{!3316}
!3316 = distinct !{!3316, !3317, !"quoting_options_from_style: argument 0"}
!3317 = distinct !{!3317, !"quoting_options_from_style"}
!3318 = !DILocation(line: 196, column: 13, scope: !3292, inlinedAt: !3313)
!3319 = !DILocation(line: 196, column: 7, scope: !3280, inlinedAt: !3313)
!3320 = !DILocation(line: 197, column: 5, scope: !3292, inlinedAt: !3313)
!3321 = !DILocation(line: 198, column: 5, scope: !3280, inlinedAt: !3313)
!3322 = !DILocation(line: 198, column: 11, scope: !3280, inlinedAt: !3313)
!3323 = !DILocation(line: 966, column: 10, scope: !3300)
!3324 = !DILocation(line: 967, column: 1, scope: !3300)
!3325 = !DILocation(line: 966, column: 3, scope: !3300)
!3326 = distinct !DISubprogram(name: "quotearg_style", scope: !339, file: !339, line: 970, type: !3327, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !3329)
!3327 = !DISubroutineType(types: !3328)
!3328 = !{!39, !11, !41}
!3329 = !{!3330, !3331}
!3330 = !DILocalVariable(name: "s", arg: 1, scope: !3326, file: !339, line: 970, type: !11)
!3331 = !DILocalVariable(name: "arg", arg: 2, scope: !3326, file: !339, line: 970, type: !41)
!3332 = !DILocation(line: 195, column: 26, scope: !3280, inlinedAt: !3333)
!3333 = distinct !DILocation(line: 957, column: 36, scope: !3270, inlinedAt: !3334)
!3334 = distinct !DILocation(line: 972, column: 10, scope: !3326)
!3335 = !DILocation(line: 957, column: 32, scope: !3270, inlinedAt: !3334)
!3336 = !DILocation(line: 0, scope: !3326)
!3337 = !DILocation(line: 0, scope: !3270, inlinedAt: !3334)
!3338 = !DILocation(line: 957, column: 3, scope: !3270, inlinedAt: !3334)
!3339 = !DILocation(line: 0, scope: !3280, inlinedAt: !3333)
!3340 = !{!3341}
!3341 = distinct !{!3341, !3342, !"quoting_options_from_style: argument 0"}
!3342 = distinct !{!3342, !"quoting_options_from_style"}
!3343 = !DILocation(line: 196, column: 13, scope: !3292, inlinedAt: !3333)
!3344 = !DILocation(line: 196, column: 7, scope: !3280, inlinedAt: !3333)
!3345 = !DILocation(line: 197, column: 5, scope: !3292, inlinedAt: !3333)
!3346 = !DILocation(line: 198, column: 5, scope: !3280, inlinedAt: !3333)
!3347 = !DILocation(line: 198, column: 11, scope: !3280, inlinedAt: !3333)
!3348 = !DILocation(line: 958, column: 10, scope: !3270, inlinedAt: !3334)
!3349 = !DILocation(line: 959, column: 1, scope: !3270, inlinedAt: !3334)
!3350 = !DILocation(line: 972, column: 3, scope: !3326)
!3351 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !339, file: !339, line: 976, type: !3352, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !3354)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{!39, !11, !41, !98}
!3354 = !{!3355, !3356, !3357}
!3355 = !DILocalVariable(name: "s", arg: 1, scope: !3351, file: !339, line: 976, type: !11)
!3356 = !DILocalVariable(name: "arg", arg: 2, scope: !3351, file: !339, line: 976, type: !41)
!3357 = !DILocalVariable(name: "argsize", arg: 3, scope: !3351, file: !339, line: 976, type: !98)
!3358 = !DILocation(line: 195, column: 26, scope: !3280, inlinedAt: !3359)
!3359 = distinct !DILocation(line: 965, column: 36, scope: !3300, inlinedAt: !3360)
!3360 = distinct !DILocation(line: 978, column: 10, scope: !3351)
!3361 = !DILocation(line: 965, column: 32, scope: !3300, inlinedAt: !3360)
!3362 = !DILocation(line: 0, scope: !3351)
!3363 = !DILocation(line: 0, scope: !3300, inlinedAt: !3360)
!3364 = !DILocation(line: 965, column: 3, scope: !3300, inlinedAt: !3360)
!3365 = !DILocation(line: 0, scope: !3280, inlinedAt: !3359)
!3366 = !{!3367}
!3367 = distinct !{!3367, !3368, !"quoting_options_from_style: argument 0"}
!3368 = distinct !{!3368, !"quoting_options_from_style"}
!3369 = !DILocation(line: 196, column: 13, scope: !3292, inlinedAt: !3359)
!3370 = !DILocation(line: 196, column: 7, scope: !3280, inlinedAt: !3359)
!3371 = !DILocation(line: 197, column: 5, scope: !3292, inlinedAt: !3359)
!3372 = !DILocation(line: 198, column: 5, scope: !3280, inlinedAt: !3359)
!3373 = !DILocation(line: 198, column: 11, scope: !3280, inlinedAt: !3359)
!3374 = !DILocation(line: 966, column: 10, scope: !3300, inlinedAt: !3360)
!3375 = !DILocation(line: 967, column: 1, scope: !3300, inlinedAt: !3360)
!3376 = !DILocation(line: 978, column: 3, scope: !3351)
!3377 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !339, file: !339, line: 982, type: !3378, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !3380)
!3378 = !DISubroutineType(types: !3379)
!3379 = !{!39, !41, !98, !40}
!3380 = !{!3381, !3382, !3383, !3384}
!3381 = !DILocalVariable(name: "arg", arg: 1, scope: !3377, file: !339, line: 982, type: !41)
!3382 = !DILocalVariable(name: "argsize", arg: 2, scope: !3377, file: !339, line: 982, type: !98)
!3383 = !DILocalVariable(name: "ch", arg: 3, scope: !3377, file: !339, line: 982, type: !40)
!3384 = !DILocalVariable(name: "options", scope: !3377, file: !339, line: 984, type: !372)
!3385 = !DILocation(line: 0, scope: !3377)
!3386 = !DILocation(line: 984, column: 3, scope: !3377)
!3387 = !DILocation(line: 984, column: 26, scope: !3377)
!3388 = !DILocation(line: 985, column: 13, scope: !3377)
!3389 = !{i64 0, i64 4, !1466, i64 4, i64 4, !1512, i64 8, i64 32, !1466, i64 40, i64 8, !1343, i64 48, i64 8, !1343}
!3390 = !DILocation(line: 0, scope: !2219, inlinedAt: !3391)
!3391 = distinct !DILocation(line: 986, column: 3, scope: !3377)
!3392 = !DILocation(line: 156, column: 62, scope: !2219, inlinedAt: !3391)
!3393 = !DILocation(line: 156, column: 57, scope: !2219, inlinedAt: !3391)
!3394 = !DILocation(line: 157, column: 15, scope: !2219, inlinedAt: !3391)
!3395 = !DILocation(line: 158, column: 12, scope: !2219, inlinedAt: !3391)
!3396 = !DILocation(line: 158, column: 15, scope: !2219, inlinedAt: !3391)
!3397 = !DILocation(line: 158, column: 25, scope: !2219, inlinedAt: !3391)
!3398 = !DILocation(line: 159, column: 18, scope: !2219, inlinedAt: !3391)
!3399 = !DILocation(line: 159, column: 23, scope: !2219, inlinedAt: !3391)
!3400 = !DILocation(line: 159, column: 6, scope: !2219, inlinedAt: !3391)
!3401 = !DILocation(line: 987, column: 10, scope: !3377)
!3402 = !DILocation(line: 988, column: 1, scope: !3377)
!3403 = !DILocation(line: 987, column: 3, scope: !3377)
!3404 = distinct !DISubprogram(name: "quotearg_char", scope: !339, file: !339, line: 991, type: !3405, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !3407)
!3405 = !DISubroutineType(types: !3406)
!3406 = !{!39, !41, !40}
!3407 = !{!3408, !3409}
!3408 = !DILocalVariable(name: "arg", arg: 1, scope: !3404, file: !339, line: 991, type: !41)
!3409 = !DILocalVariable(name: "ch", arg: 2, scope: !3404, file: !339, line: 991, type: !40)
!3410 = !DILocation(line: 984, column: 26, scope: !3377, inlinedAt: !3411)
!3411 = distinct !DILocation(line: 993, column: 10, scope: !3404)
!3412 = !DILocation(line: 0, scope: !3404)
!3413 = !DILocation(line: 0, scope: !3377, inlinedAt: !3411)
!3414 = !DILocation(line: 984, column: 3, scope: !3377, inlinedAt: !3411)
!3415 = !DILocation(line: 985, column: 13, scope: !3377, inlinedAt: !3411)
!3416 = !DILocation(line: 0, scope: !2219, inlinedAt: !3417)
!3417 = distinct !DILocation(line: 986, column: 3, scope: !3377, inlinedAt: !3411)
!3418 = !DILocation(line: 156, column: 62, scope: !2219, inlinedAt: !3417)
!3419 = !DILocation(line: 156, column: 57, scope: !2219, inlinedAt: !3417)
!3420 = !DILocation(line: 157, column: 15, scope: !2219, inlinedAt: !3417)
!3421 = !DILocation(line: 158, column: 12, scope: !2219, inlinedAt: !3417)
!3422 = !DILocation(line: 158, column: 15, scope: !2219, inlinedAt: !3417)
!3423 = !DILocation(line: 158, column: 25, scope: !2219, inlinedAt: !3417)
!3424 = !DILocation(line: 159, column: 18, scope: !2219, inlinedAt: !3417)
!3425 = !DILocation(line: 159, column: 23, scope: !2219, inlinedAt: !3417)
!3426 = !DILocation(line: 159, column: 6, scope: !2219, inlinedAt: !3417)
!3427 = !DILocation(line: 987, column: 10, scope: !3377, inlinedAt: !3411)
!3428 = !DILocation(line: 988, column: 1, scope: !3377, inlinedAt: !3411)
!3429 = !DILocation(line: 993, column: 3, scope: !3404)
!3430 = distinct !DISubprogram(name: "quotearg_colon", scope: !339, file: !339, line: 997, type: !118, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !3431)
!3431 = !{!3432}
!3432 = !DILocalVariable(name: "arg", arg: 1, scope: !3430, file: !339, line: 997, type: !41)
!3433 = !DILocation(line: 984, column: 26, scope: !3377, inlinedAt: !3434)
!3434 = distinct !DILocation(line: 993, column: 10, scope: !3404, inlinedAt: !3435)
!3435 = distinct !DILocation(line: 999, column: 10, scope: !3430)
!3436 = !DILocation(line: 0, scope: !3430)
!3437 = !DILocation(line: 0, scope: !3404, inlinedAt: !3435)
!3438 = !DILocation(line: 0, scope: !3377, inlinedAt: !3434)
!3439 = !DILocation(line: 984, column: 3, scope: !3377, inlinedAt: !3434)
!3440 = !DILocation(line: 985, column: 13, scope: !3377, inlinedAt: !3434)
!3441 = !DILocation(line: 0, scope: !2219, inlinedAt: !3442)
!3442 = distinct !DILocation(line: 986, column: 3, scope: !3377, inlinedAt: !3434)
!3443 = !DILocation(line: 156, column: 57, scope: !2219, inlinedAt: !3442)
!3444 = !DILocation(line: 158, column: 12, scope: !2219, inlinedAt: !3442)
!3445 = !DILocation(line: 159, column: 6, scope: !2219, inlinedAt: !3442)
!3446 = !DILocation(line: 987, column: 10, scope: !3377, inlinedAt: !3434)
!3447 = !DILocation(line: 988, column: 1, scope: !3377, inlinedAt: !3434)
!3448 = !DILocation(line: 999, column: 3, scope: !3430)
!3449 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !339, file: !339, line: 1003, type: !3260, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !3450)
!3450 = !{!3451, !3452}
!3451 = !DILocalVariable(name: "arg", arg: 1, scope: !3449, file: !339, line: 1003, type: !41)
!3452 = !DILocalVariable(name: "argsize", arg: 2, scope: !3449, file: !339, line: 1003, type: !98)
!3453 = !DILocation(line: 984, column: 26, scope: !3377, inlinedAt: !3454)
!3454 = distinct !DILocation(line: 1005, column: 10, scope: !3449)
!3455 = !DILocation(line: 0, scope: !3449)
!3456 = !DILocation(line: 0, scope: !3377, inlinedAt: !3454)
!3457 = !DILocation(line: 984, column: 3, scope: !3377, inlinedAt: !3454)
!3458 = !DILocation(line: 985, column: 13, scope: !3377, inlinedAt: !3454)
!3459 = !DILocation(line: 0, scope: !2219, inlinedAt: !3460)
!3460 = distinct !DILocation(line: 986, column: 3, scope: !3377, inlinedAt: !3454)
!3461 = !DILocation(line: 156, column: 57, scope: !2219, inlinedAt: !3460)
!3462 = !DILocation(line: 158, column: 12, scope: !2219, inlinedAt: !3460)
!3463 = !DILocation(line: 159, column: 6, scope: !2219, inlinedAt: !3460)
!3464 = !DILocation(line: 987, column: 10, scope: !3377, inlinedAt: !3454)
!3465 = !DILocation(line: 988, column: 1, scope: !3377, inlinedAt: !3454)
!3466 = !DILocation(line: 1005, column: 3, scope: !3449)
!3467 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !339, file: !339, line: 1009, type: !174, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !3468)
!3468 = !{!3469, !3470, !3471, !3472}
!3469 = !DILocalVariable(name: "n", arg: 1, scope: !3467, file: !339, line: 1009, type: !43)
!3470 = !DILocalVariable(name: "s", arg: 2, scope: !3467, file: !339, line: 1009, type: !11)
!3471 = !DILocalVariable(name: "arg", arg: 3, scope: !3467, file: !339, line: 1009, type: !41)
!3472 = !DILocalVariable(name: "options", scope: !3467, file: !339, line: 1011, type: !372)
!3473 = !DILocation(line: 195, column: 26, scope: !3280, inlinedAt: !3474)
!3474 = distinct !DILocation(line: 1012, column: 13, scope: !3467)
!3475 = !DILocation(line: 0, scope: !3467)
!3476 = !DILocation(line: 1011, column: 3, scope: !3467)
!3477 = !DILocation(line: 1011, column: 26, scope: !3467)
!3478 = !DILocation(line: 1012, column: 13, scope: !3467)
!3479 = !DILocation(line: 0, scope: !3280, inlinedAt: !3474)
!3480 = !{!3481}
!3481 = distinct !{!3481, !3482, !"quoting_options_from_style: argument 0"}
!3482 = distinct !{!3482, !"quoting_options_from_style"}
!3483 = !DILocation(line: 196, column: 13, scope: !3292, inlinedAt: !3474)
!3484 = !DILocation(line: 196, column: 7, scope: !3280, inlinedAt: !3474)
!3485 = !DILocation(line: 197, column: 5, scope: !3292, inlinedAt: !3474)
!3486 = !DILocation(line: 0, scope: !2219, inlinedAt: !3487)
!3487 = distinct !DILocation(line: 1013, column: 3, scope: !3467)
!3488 = !DILocation(line: 156, column: 57, scope: !2219, inlinedAt: !3487)
!3489 = !DILocation(line: 158, column: 12, scope: !2219, inlinedAt: !3487)
!3490 = !DILocation(line: 159, column: 6, scope: !2219, inlinedAt: !3487)
!3491 = !DILocation(line: 1014, column: 10, scope: !3467)
!3492 = !DILocation(line: 1015, column: 1, scope: !3467)
!3493 = !DILocation(line: 1014, column: 3, scope: !3467)
!3494 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !339, file: !339, line: 1018, type: !3495, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !3497)
!3495 = !DISubroutineType(types: !3496)
!3496 = !{!39, !43, !41, !41, !41}
!3497 = !{!3498, !3499, !3500, !3501}
!3498 = !DILocalVariable(name: "n", arg: 1, scope: !3494, file: !339, line: 1018, type: !43)
!3499 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3494, file: !339, line: 1018, type: !41)
!3500 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3494, file: !339, line: 1019, type: !41)
!3501 = !DILocalVariable(name: "arg", arg: 4, scope: !3494, file: !339, line: 1019, type: !41)
!3502 = !DILocalVariable(name: "o", scope: !3503, file: !339, line: 1030, type: !372)
!3503 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !339, file: !339, line: 1026, type: !3504, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !3506)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{!39, !43, !41, !41, !41, !98}
!3506 = !{!3507, !3508, !3509, !3510, !3511, !3502}
!3507 = !DILocalVariable(name: "n", arg: 1, scope: !3503, file: !339, line: 1026, type: !43)
!3508 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3503, file: !339, line: 1026, type: !41)
!3509 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3503, file: !339, line: 1027, type: !41)
!3510 = !DILocalVariable(name: "arg", arg: 4, scope: !3503, file: !339, line: 1028, type: !41)
!3511 = !DILocalVariable(name: "argsize", arg: 5, scope: !3503, file: !339, line: 1028, type: !98)
!3512 = !DILocation(line: 1030, column: 26, scope: !3503, inlinedAt: !3513)
!3513 = distinct !DILocation(line: 1021, column: 10, scope: !3494)
!3514 = !DILocation(line: 0, scope: !3494)
!3515 = !DILocation(line: 0, scope: !3503, inlinedAt: !3513)
!3516 = !DILocation(line: 1030, column: 3, scope: !3503, inlinedAt: !3513)
!3517 = !DILocation(line: 1030, column: 30, scope: !3503, inlinedAt: !3513)
!3518 = !DILocation(line: 0, scope: !2259, inlinedAt: !3519)
!3519 = distinct !DILocation(line: 1031, column: 3, scope: !3503, inlinedAt: !3513)
!3520 = !DILocation(line: 184, column: 6, scope: !2259, inlinedAt: !3519)
!3521 = !DILocation(line: 184, column: 12, scope: !2259, inlinedAt: !3519)
!3522 = !DILocation(line: 185, column: 8, scope: !2273, inlinedAt: !3519)
!3523 = !DILocation(line: 185, column: 23, scope: !2273, inlinedAt: !3519)
!3524 = !DILocation(line: 185, column: 19, scope: !2273, inlinedAt: !3519)
!3525 = !DILocation(line: 186, column: 5, scope: !2273, inlinedAt: !3519)
!3526 = !DILocation(line: 187, column: 6, scope: !2259, inlinedAt: !3519)
!3527 = !DILocation(line: 187, column: 17, scope: !2259, inlinedAt: !3519)
!3528 = !DILocation(line: 188, column: 6, scope: !2259, inlinedAt: !3519)
!3529 = !DILocation(line: 188, column: 18, scope: !2259, inlinedAt: !3519)
!3530 = !DILocation(line: 1032, column: 10, scope: !3503, inlinedAt: !3513)
!3531 = !DILocation(line: 1033, column: 1, scope: !3503, inlinedAt: !3513)
!3532 = !DILocation(line: 1021, column: 3, scope: !3494)
!3533 = !DILocation(line: 0, scope: !3503)
!3534 = !DILocation(line: 1030, column: 3, scope: !3503)
!3535 = !DILocation(line: 1030, column: 26, scope: !3503)
!3536 = !DILocation(line: 1030, column: 30, scope: !3503)
!3537 = !DILocation(line: 0, scope: !2259, inlinedAt: !3538)
!3538 = distinct !DILocation(line: 1031, column: 3, scope: !3503)
!3539 = !DILocation(line: 184, column: 6, scope: !2259, inlinedAt: !3538)
!3540 = !DILocation(line: 184, column: 12, scope: !2259, inlinedAt: !3538)
!3541 = !DILocation(line: 185, column: 8, scope: !2273, inlinedAt: !3538)
!3542 = !DILocation(line: 185, column: 23, scope: !2273, inlinedAt: !3538)
!3543 = !DILocation(line: 185, column: 19, scope: !2273, inlinedAt: !3538)
!3544 = !DILocation(line: 186, column: 5, scope: !2273, inlinedAt: !3538)
!3545 = !DILocation(line: 187, column: 6, scope: !2259, inlinedAt: !3538)
!3546 = !DILocation(line: 187, column: 17, scope: !2259, inlinedAt: !3538)
!3547 = !DILocation(line: 188, column: 6, scope: !2259, inlinedAt: !3538)
!3548 = !DILocation(line: 188, column: 18, scope: !2259, inlinedAt: !3538)
!3549 = !DILocation(line: 1032, column: 10, scope: !3503)
!3550 = !DILocation(line: 1033, column: 1, scope: !3503)
!3551 = !DILocation(line: 1032, column: 3, scope: !3503)
!3552 = distinct !DISubprogram(name: "quotearg_custom", scope: !339, file: !339, line: 1036, type: !3553, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !3555)
!3553 = !DISubroutineType(types: !3554)
!3554 = !{!39, !41, !41, !41}
!3555 = !{!3556, !3557, !3558}
!3556 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3552, file: !339, line: 1036, type: !41)
!3557 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3552, file: !339, line: 1036, type: !41)
!3558 = !DILocalVariable(name: "arg", arg: 3, scope: !3552, file: !339, line: 1037, type: !41)
!3559 = !DILocation(line: 1030, column: 26, scope: !3503, inlinedAt: !3560)
!3560 = distinct !DILocation(line: 1021, column: 10, scope: !3494, inlinedAt: !3561)
!3561 = distinct !DILocation(line: 1039, column: 10, scope: !3552)
!3562 = !DILocation(line: 0, scope: !3552)
!3563 = !DILocation(line: 0, scope: !3494, inlinedAt: !3561)
!3564 = !DILocation(line: 0, scope: !3503, inlinedAt: !3560)
!3565 = !DILocation(line: 1030, column: 3, scope: !3503, inlinedAt: !3560)
!3566 = !DILocation(line: 1030, column: 30, scope: !3503, inlinedAt: !3560)
!3567 = !DILocation(line: 0, scope: !2259, inlinedAt: !3568)
!3568 = distinct !DILocation(line: 1031, column: 3, scope: !3503, inlinedAt: !3560)
!3569 = !DILocation(line: 184, column: 6, scope: !2259, inlinedAt: !3568)
!3570 = !DILocation(line: 184, column: 12, scope: !2259, inlinedAt: !3568)
!3571 = !DILocation(line: 185, column: 8, scope: !2273, inlinedAt: !3568)
!3572 = !DILocation(line: 185, column: 23, scope: !2273, inlinedAt: !3568)
!3573 = !DILocation(line: 185, column: 19, scope: !2273, inlinedAt: !3568)
!3574 = !DILocation(line: 186, column: 5, scope: !2273, inlinedAt: !3568)
!3575 = !DILocation(line: 187, column: 6, scope: !2259, inlinedAt: !3568)
!3576 = !DILocation(line: 187, column: 17, scope: !2259, inlinedAt: !3568)
!3577 = !DILocation(line: 188, column: 6, scope: !2259, inlinedAt: !3568)
!3578 = !DILocation(line: 188, column: 18, scope: !2259, inlinedAt: !3568)
!3579 = !DILocation(line: 1032, column: 10, scope: !3503, inlinedAt: !3560)
!3580 = !DILocation(line: 1033, column: 1, scope: !3503, inlinedAt: !3560)
!3581 = !DILocation(line: 1039, column: 3, scope: !3552)
!3582 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !339, file: !339, line: 1043, type: !3583, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !3585)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{!39, !41, !41, !41, !98}
!3585 = !{!3586, !3587, !3588, !3589}
!3586 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3582, file: !339, line: 1043, type: !41)
!3587 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3582, file: !339, line: 1043, type: !41)
!3588 = !DILocalVariable(name: "arg", arg: 3, scope: !3582, file: !339, line: 1044, type: !41)
!3589 = !DILocalVariable(name: "argsize", arg: 4, scope: !3582, file: !339, line: 1044, type: !98)
!3590 = !DILocation(line: 1030, column: 26, scope: !3503, inlinedAt: !3591)
!3591 = distinct !DILocation(line: 1046, column: 10, scope: !3582)
!3592 = !DILocation(line: 0, scope: !3582)
!3593 = !DILocation(line: 0, scope: !3503, inlinedAt: !3591)
!3594 = !DILocation(line: 1030, column: 3, scope: !3503, inlinedAt: !3591)
!3595 = !DILocation(line: 1030, column: 30, scope: !3503, inlinedAt: !3591)
!3596 = !DILocation(line: 0, scope: !2259, inlinedAt: !3597)
!3597 = distinct !DILocation(line: 1031, column: 3, scope: !3503, inlinedAt: !3591)
!3598 = !DILocation(line: 184, column: 6, scope: !2259, inlinedAt: !3597)
!3599 = !DILocation(line: 184, column: 12, scope: !2259, inlinedAt: !3597)
!3600 = !DILocation(line: 185, column: 8, scope: !2273, inlinedAt: !3597)
!3601 = !DILocation(line: 185, column: 23, scope: !2273, inlinedAt: !3597)
!3602 = !DILocation(line: 185, column: 19, scope: !2273, inlinedAt: !3597)
!3603 = !DILocation(line: 186, column: 5, scope: !2273, inlinedAt: !3597)
!3604 = !DILocation(line: 187, column: 6, scope: !2259, inlinedAt: !3597)
!3605 = !DILocation(line: 187, column: 17, scope: !2259, inlinedAt: !3597)
!3606 = !DILocation(line: 188, column: 6, scope: !2259, inlinedAt: !3597)
!3607 = !DILocation(line: 188, column: 18, scope: !2259, inlinedAt: !3597)
!3608 = !DILocation(line: 1032, column: 10, scope: !3503, inlinedAt: !3591)
!3609 = !DILocation(line: 1033, column: 1, scope: !3503, inlinedAt: !3591)
!3610 = !DILocation(line: 1046, column: 3, scope: !3582)
!3611 = distinct !DISubprogram(name: "quote_n_mem", scope: !339, file: !339, line: 1061, type: !3612, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !3614)
!3612 = !DISubroutineType(types: !3613)
!3613 = !{!41, !43, !41, !98}
!3614 = !{!3615, !3616, !3617}
!3615 = !DILocalVariable(name: "n", arg: 1, scope: !3611, file: !339, line: 1061, type: !43)
!3616 = !DILocalVariable(name: "arg", arg: 2, scope: !3611, file: !339, line: 1061, type: !41)
!3617 = !DILocalVariable(name: "argsize", arg: 3, scope: !3611, file: !339, line: 1061, type: !98)
!3618 = !DILocation(line: 0, scope: !3611)
!3619 = !DILocation(line: 1063, column: 10, scope: !3611)
!3620 = !DILocation(line: 1063, column: 3, scope: !3611)
!3621 = distinct !DISubprogram(name: "quote_mem", scope: !339, file: !339, line: 1067, type: !3622, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !3624)
!3622 = !DISubroutineType(types: !3623)
!3623 = !{!41, !41, !98}
!3624 = !{!3625, !3626}
!3625 = !DILocalVariable(name: "arg", arg: 1, scope: !3621, file: !339, line: 1067, type: !41)
!3626 = !DILocalVariable(name: "argsize", arg: 2, scope: !3621, file: !339, line: 1067, type: !98)
!3627 = !DILocation(line: 0, scope: !3621)
!3628 = !DILocation(line: 0, scope: !3611, inlinedAt: !3629)
!3629 = distinct !DILocation(line: 1069, column: 10, scope: !3621)
!3630 = !DILocation(line: 1063, column: 10, scope: !3611, inlinedAt: !3629)
!3631 = !DILocation(line: 1069, column: 3, scope: !3621)
!3632 = distinct !DISubprogram(name: "quote_n", scope: !339, file: !339, line: 1073, type: !3633, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !3635)
!3633 = !DISubroutineType(types: !3634)
!3634 = !{!41, !43, !41}
!3635 = !{!3636, !3637}
!3636 = !DILocalVariable(name: "n", arg: 1, scope: !3632, file: !339, line: 1073, type: !43)
!3637 = !DILocalVariable(name: "arg", arg: 2, scope: !3632, file: !339, line: 1073, type: !41)
!3638 = !DILocation(line: 0, scope: !3632)
!3639 = !DILocation(line: 0, scope: !3611, inlinedAt: !3640)
!3640 = distinct !DILocation(line: 1075, column: 10, scope: !3632)
!3641 = !DILocation(line: 1063, column: 10, scope: !3611, inlinedAt: !3640)
!3642 = !DILocation(line: 1075, column: 3, scope: !3632)
!3643 = distinct !DISubprogram(name: "quote", scope: !339, file: !339, line: 1079, type: !157, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !3644)
!3644 = !{!3645}
!3645 = !DILocalVariable(name: "arg", arg: 1, scope: !3643, file: !339, line: 1079, type: !41)
!3646 = !DILocation(line: 0, scope: !3643)
!3647 = !DILocation(line: 0, scope: !3632, inlinedAt: !3648)
!3648 = distinct !DILocation(line: 1081, column: 10, scope: !3643)
!3649 = !DILocation(line: 0, scope: !3611, inlinedAt: !3650)
!3650 = distinct !DILocation(line: 1075, column: 10, scope: !3632, inlinedAt: !3648)
!3651 = !DILocation(line: 1063, column: 10, scope: !3611, inlinedAt: !3650)
!3652 = !DILocation(line: 1081, column: 3, scope: !3643)
!3653 = distinct !DISubprogram(name: "setlocale_null_r", scope: !644, file: !644, line: 269, type: !3654, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !643, retainedNodes: !3656)
!3654 = !DISubroutineType(types: !3655)
!3655 = !{!43, !43, !39, !98}
!3656 = !{!3657, !3658, !3659}
!3657 = !DILocalVariable(name: "category", arg: 1, scope: !3653, file: !644, line: 269, type: !43)
!3658 = !DILocalVariable(name: "buf", arg: 2, scope: !3653, file: !644, line: 269, type: !39)
!3659 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3653, file: !644, line: 269, type: !98)
!3660 = !DILocation(line: 0, scope: !3653)
!3661 = !DILocalVariable(name: "category", arg: 1, scope: !3662, file: !644, line: 91, type: !43)
!3662 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !644, file: !644, line: 91, type: !3654, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !643, retainedNodes: !3663)
!3663 = !{!3661, !3664, !3665, !3666, !3667}
!3664 = !DILocalVariable(name: "buf", arg: 2, scope: !3662, file: !644, line: 91, type: !39)
!3665 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3662, file: !644, line: 91, type: !98)
!3666 = !DILocalVariable(name: "result", scope: !3662, file: !644, line: 140, type: !41)
!3667 = !DILocalVariable(name: "length", scope: !3668, file: !644, line: 154, type: !98)
!3668 = distinct !DILexicalBlock(scope: !3669, file: !644, line: 153, column: 5)
!3669 = distinct !DILexicalBlock(scope: !3662, file: !644, line: 142, column: 7)
!3670 = !DILocation(line: 0, scope: !3662, inlinedAt: !3671)
!3671 = distinct !DILocation(line: 274, column: 10, scope: !3653)
!3672 = !DILocalVariable(name: "category", arg: 1, scope: !3673, file: !644, line: 60, type: !43)
!3673 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !644, file: !644, line: 60, type: !3674, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !643, retainedNodes: !3676)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{!41, !43}
!3676 = !{!3672, !3677}
!3677 = !DILocalVariable(name: "result", scope: !3673, file: !644, line: 62, type: !41)
!3678 = !DILocation(line: 0, scope: !3673, inlinedAt: !3679)
!3679 = distinct !DILocation(line: 140, column: 24, scope: !3662, inlinedAt: !3671)
!3680 = !DILocation(line: 62, column: 24, scope: !3673, inlinedAt: !3679)
!3681 = !DILocation(line: 142, column: 14, scope: !3669, inlinedAt: !3671)
!3682 = !DILocation(line: 142, column: 7, scope: !3662, inlinedAt: !3671)
!3683 = !DILocation(line: 145, column: 19, scope: !3684, inlinedAt: !3671)
!3684 = distinct !DILexicalBlock(scope: !3685, file: !644, line: 145, column: 11)
!3685 = distinct !DILexicalBlock(scope: !3669, file: !644, line: 143, column: 5)
!3686 = !DILocation(line: 145, column: 11, scope: !3685, inlinedAt: !3671)
!3687 = !DILocation(line: 149, column: 16, scope: !3684, inlinedAt: !3671)
!3688 = !DILocation(line: 149, column: 9, scope: !3684, inlinedAt: !3671)
!3689 = !DILocation(line: 154, column: 23, scope: !3668, inlinedAt: !3671)
!3690 = !DILocation(line: 0, scope: !3668, inlinedAt: !3671)
!3691 = !DILocation(line: 155, column: 18, scope: !3692, inlinedAt: !3671)
!3692 = distinct !DILexicalBlock(scope: !3668, file: !644, line: 155, column: 11)
!3693 = !DILocation(line: 155, column: 11, scope: !3668, inlinedAt: !3671)
!3694 = !DILocation(line: 157, column: 39, scope: !3695, inlinedAt: !3671)
!3695 = distinct !DILexicalBlock(scope: !3692, file: !644, line: 156, column: 9)
!3696 = !DILocalVariable(name: "__dest", arg: 1, scope: !3697, file: !1965, line: 31, type: !3700)
!3697 = distinct !DISubprogram(name: "memcpy", scope: !1965, file: !1965, line: 31, type: !3698, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !643, retainedNodes: !3702)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{!96, !3700, !3701, !98}
!3700 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !96)
!3701 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !197)
!3702 = !{!3696, !3703, !3704}
!3703 = !DILocalVariable(name: "__src", arg: 2, scope: !3697, file: !1965, line: 31, type: !3701)
!3704 = !DILocalVariable(name: "__len", arg: 3, scope: !3697, file: !1965, line: 31, type: !98)
!3705 = !DILocation(line: 0, scope: !3697, inlinedAt: !3706)
!3706 = distinct !DILocation(line: 157, column: 11, scope: !3695, inlinedAt: !3671)
!3707 = !DILocation(line: 34, column: 10, scope: !3697, inlinedAt: !3706)
!3708 = !DILocation(line: 158, column: 11, scope: !3695, inlinedAt: !3671)
!3709 = !DILocation(line: 162, column: 23, scope: !3710, inlinedAt: !3671)
!3710 = distinct !DILexicalBlock(scope: !3711, file: !644, line: 162, column: 15)
!3711 = distinct !DILexicalBlock(scope: !3692, file: !644, line: 161, column: 9)
!3712 = !DILocation(line: 162, column: 15, scope: !3711, inlinedAt: !3671)
!3713 = !DILocation(line: 167, column: 44, scope: !3714, inlinedAt: !3671)
!3714 = distinct !DILexicalBlock(scope: !3710, file: !644, line: 163, column: 13)
!3715 = !DILocation(line: 0, scope: !3697, inlinedAt: !3716)
!3716 = distinct !DILocation(line: 167, column: 15, scope: !3714, inlinedAt: !3671)
!3717 = !DILocation(line: 34, column: 10, scope: !3697, inlinedAt: !3716)
!3718 = !DILocation(line: 168, column: 15, scope: !3714, inlinedAt: !3671)
!3719 = !DILocation(line: 168, column: 32, scope: !3714, inlinedAt: !3671)
!3720 = !DILocation(line: 169, column: 13, scope: !3714, inlinedAt: !3671)
!3721 = !DILocation(line: 0, scope: !3669, inlinedAt: !3671)
!3722 = !DILocation(line: 274, column: 3, scope: !3653)
!3723 = distinct !DISubprogram(name: "setlocale_null", scope: !644, file: !644, line: 301, type: !3674, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !643, retainedNodes: !3724)
!3724 = !{!3725}
!3725 = !DILocalVariable(name: "category", arg: 1, scope: !3723, file: !644, line: 301, type: !43)
!3726 = !DILocation(line: 0, scope: !3723)
!3727 = !DILocation(line: 0, scope: !3673, inlinedAt: !3728)
!3728 = distinct !DILocation(line: 304, column: 10, scope: !3723)
!3729 = !DILocation(line: 62, column: 24, scope: !3673, inlinedAt: !3728)
!3730 = !DILocation(line: 304, column: 3, scope: !3723)
!3731 = distinct !DISubprogram(name: "dup_safer", scope: !647, file: !647, line: 31, type: !481, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !646, retainedNodes: !3732)
!3732 = !{!3733}
!3733 = !DILocalVariable(name: "fd", arg: 1, scope: !3731, file: !647, line: 31, type: !43)
!3734 = !DILocation(line: 0, scope: !3731)
!3735 = !DILocation(line: 33, column: 10, scope: !3731)
!3736 = !DILocation(line: 33, column: 3, scope: !3731)
!3737 = distinct !DISubprogram(name: "version_etc_arn", scope: !652, file: !652, line: 61, type: !3738, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !651, retainedNodes: !3743)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{null, !3740, !41, !41, !41, !3742, !98}
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3741, size: 64)
!3741 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1418, line: 7, baseType: !662)
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!3743 = !{!3744, !3745, !3746, !3747, !3748, !3749}
!3744 = !DILocalVariable(name: "stream", arg: 1, scope: !3737, file: !652, line: 61, type: !3740)
!3745 = !DILocalVariable(name: "command_name", arg: 2, scope: !3737, file: !652, line: 62, type: !41)
!3746 = !DILocalVariable(name: "package", arg: 3, scope: !3737, file: !652, line: 62, type: !41)
!3747 = !DILocalVariable(name: "version", arg: 4, scope: !3737, file: !652, line: 63, type: !41)
!3748 = !DILocalVariable(name: "authors", arg: 5, scope: !3737, file: !652, line: 64, type: !3742)
!3749 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3737, file: !652, line: 64, type: !98)
!3750 = !DILocation(line: 0, scope: !3737)
!3751 = !DILocation(line: 66, column: 7, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3737, file: !652, line: 66, column: 7)
!3753 = !DILocation(line: 66, column: 7, scope: !3737)
!3754 = !DILocation(line: 67, column: 5, scope: !3752)
!3755 = !DILocation(line: 69, column: 5, scope: !3752)
!3756 = !DILocation(line: 83, column: 3, scope: !3737)
!3757 = !DILocation(line: 85, column: 3, scope: !3737)
!3758 = !DILocation(line: 88, column: 3, scope: !3737)
!3759 = !DILocation(line: 95, column: 3, scope: !3737)
!3760 = !DILocation(line: 97, column: 3, scope: !3737)
!3761 = !DILocation(line: 105, column: 7, scope: !3762)
!3762 = distinct !DILexicalBlock(scope: !3737, file: !652, line: 98, column: 5)
!3763 = !DILocation(line: 106, column: 7, scope: !3762)
!3764 = !DILocation(line: 109, column: 7, scope: !3762)
!3765 = !DILocation(line: 110, column: 7, scope: !3762)
!3766 = !DILocation(line: 113, column: 7, scope: !3762)
!3767 = !DILocation(line: 115, column: 7, scope: !3762)
!3768 = !DILocation(line: 120, column: 7, scope: !3762)
!3769 = !DILocation(line: 122, column: 7, scope: !3762)
!3770 = !DILocation(line: 127, column: 7, scope: !3762)
!3771 = !DILocation(line: 129, column: 7, scope: !3762)
!3772 = !DILocation(line: 134, column: 7, scope: !3762)
!3773 = !DILocation(line: 137, column: 7, scope: !3762)
!3774 = !DILocation(line: 142, column: 7, scope: !3762)
!3775 = !DILocation(line: 145, column: 7, scope: !3762)
!3776 = !DILocation(line: 150, column: 7, scope: !3762)
!3777 = !DILocation(line: 154, column: 7, scope: !3762)
!3778 = !DILocation(line: 159, column: 7, scope: !3762)
!3779 = !DILocation(line: 163, column: 7, scope: !3762)
!3780 = !DILocation(line: 170, column: 7, scope: !3762)
!3781 = !DILocation(line: 174, column: 7, scope: !3762)
!3782 = !DILocation(line: 176, column: 1, scope: !3737)
!3783 = distinct !DISubprogram(name: "version_etc_ar", scope: !652, file: !652, line: 183, type: !3784, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !651, retainedNodes: !3786)
!3784 = !DISubroutineType(types: !3785)
!3785 = !{null, !3740, !41, !41, !41, !3742}
!3786 = !{!3787, !3788, !3789, !3790, !3791, !3792}
!3787 = !DILocalVariable(name: "stream", arg: 1, scope: !3783, file: !652, line: 183, type: !3740)
!3788 = !DILocalVariable(name: "command_name", arg: 2, scope: !3783, file: !652, line: 184, type: !41)
!3789 = !DILocalVariable(name: "package", arg: 3, scope: !3783, file: !652, line: 184, type: !41)
!3790 = !DILocalVariable(name: "version", arg: 4, scope: !3783, file: !652, line: 185, type: !41)
!3791 = !DILocalVariable(name: "authors", arg: 5, scope: !3783, file: !652, line: 185, type: !3742)
!3792 = !DILocalVariable(name: "n_authors", scope: !3783, file: !652, line: 187, type: !98)
!3793 = !DILocation(line: 0, scope: !3783)
!3794 = !DILocation(line: 189, column: 8, scope: !3795)
!3795 = distinct !DILexicalBlock(scope: !3783, file: !652, line: 189, column: 3)
!3796 = !DILocation(line: 0, scope: !3795)
!3797 = !DILocation(line: 189, column: 23, scope: !3798)
!3798 = distinct !DILexicalBlock(scope: !3795, file: !652, line: 189, column: 3)
!3799 = !DILocation(line: 189, column: 3, scope: !3795)
!3800 = !DILocation(line: 189, column: 52, scope: !3798)
!3801 = distinct !{!3801, !3799, !3802}
!3802 = !DILocation(line: 190, column: 5, scope: !3795)
!3803 = !DILocation(line: 191, column: 3, scope: !3783)
!3804 = !DILocation(line: 192, column: 1, scope: !3783)
!3805 = distinct !DISubprogram(name: "version_etc_va", scope: !652, file: !652, line: 199, type: !3806, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !651, retainedNodes: !3815)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{null, !3740, !41, !41, !41, !3808}
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !652, line: 192, size: 192, elements: !3810)
!3810 = !{!3811, !3812, !3813, !3814}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3809, file: !652, line: 192, baseType: !6, size: 32)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3809, file: !652, line: 192, baseType: !6, size: 32, offset: 32)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3809, file: !652, line: 192, baseType: !96, size: 64, offset: 64)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3809, file: !652, line: 192, baseType: !96, size: 64, offset: 128)
!3815 = !{!3816, !3817, !3818, !3819, !3820, !3821, !3822}
!3816 = !DILocalVariable(name: "stream", arg: 1, scope: !3805, file: !652, line: 199, type: !3740)
!3817 = !DILocalVariable(name: "command_name", arg: 2, scope: !3805, file: !652, line: 200, type: !41)
!3818 = !DILocalVariable(name: "package", arg: 3, scope: !3805, file: !652, line: 200, type: !41)
!3819 = !DILocalVariable(name: "version", arg: 4, scope: !3805, file: !652, line: 201, type: !41)
!3820 = !DILocalVariable(name: "authors", arg: 5, scope: !3805, file: !652, line: 201, type: !3808)
!3821 = !DILocalVariable(name: "n_authors", scope: !3805, file: !652, line: 203, type: !98)
!3822 = !DILocalVariable(name: "authtab", scope: !3805, file: !652, line: 204, type: !3823)
!3823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 640, elements: !433)
!3824 = !DILocation(line: 0, scope: !3805)
!3825 = !DILocation(line: 204, column: 3, scope: !3805)
!3826 = !DILocation(line: 204, column: 15, scope: !3805)
!3827 = !DILocation(line: 0, scope: !3828)
!3828 = distinct !DILexicalBlock(scope: !3829, file: !652, line: 206, column: 3)
!3829 = distinct !DILexicalBlock(scope: !3805, file: !652, line: 206, column: 3)
!3830 = !DILocation(line: 208, column: 35, scope: !3828)
!3831 = !DILocation(line: 208, column: 14, scope: !3828)
!3832 = !DILocation(line: 208, column: 33, scope: !3828)
!3833 = !DILocation(line: 208, column: 67, scope: !3828)
!3834 = !DILocation(line: 206, column: 3, scope: !3829)
!3835 = !DILocation(line: 0, scope: !3829)
!3836 = !DILocation(line: 211, column: 3, scope: !3805)
!3837 = !DILocation(line: 213, column: 1, scope: !3805)
!3838 = distinct !DISubprogram(name: "version_etc", scope: !652, file: !652, line: 230, type: !3839, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !651, retainedNodes: !3841)
!3839 = !DISubroutineType(types: !3840)
!3840 = !{null, !3740, !41, !41, !41, null}
!3841 = !{!3842, !3843, !3844, !3845, !3846}
!3842 = !DILocalVariable(name: "stream", arg: 1, scope: !3838, file: !652, line: 230, type: !3740)
!3843 = !DILocalVariable(name: "command_name", arg: 2, scope: !3838, file: !652, line: 231, type: !41)
!3844 = !DILocalVariable(name: "package", arg: 3, scope: !3838, file: !652, line: 231, type: !41)
!3845 = !DILocalVariable(name: "version", arg: 4, scope: !3838, file: !652, line: 232, type: !41)
!3846 = !DILocalVariable(name: "authors", scope: !3838, file: !652, line: 234, type: !3847)
!3847 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !46, line: 52, baseType: !3848)
!3848 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3849, line: 32, baseType: !3850)
!3849 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!3850 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !652, line: 234, baseType: !3851)
!3851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3809, size: 192, elements: !81)
!3852 = !DILocation(line: 0, scope: !3838)
!3853 = !DILocation(line: 234, column: 3, scope: !3838)
!3854 = !DILocation(line: 234, column: 11, scope: !3838)
!3855 = !DILocation(line: 236, column: 3, scope: !3838)
!3856 = !DILocation(line: 237, column: 3, scope: !3838)
!3857 = !DILocation(line: 238, column: 3, scope: !3838)
!3858 = !DILocation(line: 239, column: 1, scope: !3838)
!3859 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !652, file: !652, line: 242, type: !130, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !651, retainedNodes: !44)
!3860 = !DILocation(line: 244, column: 3, scope: !3859)
!3861 = !DILocation(line: 249, column: 3, scope: !3859)
!3862 = !DILocation(line: 255, column: 3, scope: !3859)
!3863 = !DILocation(line: 260, column: 3, scope: !3859)
!3864 = !DILocation(line: 262, column: 1, scope: !3859)
!3865 = distinct !DISubprogram(name: "xnmalloc", scope: !363, file: !363, line: 99, type: !3866, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !3868)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{!96, !98, !98}
!3868 = !{!3869, !3870}
!3869 = !DILocalVariable(name: "n", arg: 1, scope: !3865, file: !363, line: 99, type: !98)
!3870 = !DILocalVariable(name: "s", arg: 2, scope: !3865, file: !363, line: 99, type: !98)
!3871 = !DILocation(line: 0, scope: !3865)
!3872 = !DILocation(line: 101, column: 7, scope: !3873)
!3873 = distinct !DILexicalBlock(scope: !3865, file: !363, line: 101, column: 7)
!3874 = !DILocation(line: 101, column: 7, scope: !3865)
!3875 = !DILocation(line: 102, column: 5, scope: !3873)
!3876 = !DILocation(line: 103, column: 21, scope: !3865)
!3877 = !DILocalVariable(name: "n", arg: 1, scope: !3878, file: !694, line: 39, type: !98)
!3878 = distinct !DISubprogram(name: "xmalloc", scope: !694, file: !694, line: 39, type: !3879, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !3881)
!3879 = !DISubroutineType(types: !3880)
!3880 = !{!96, !98}
!3881 = !{!3877, !3882}
!3882 = !DILocalVariable(name: "p", scope: !3878, file: !694, line: 41, type: !96)
!3883 = !DILocation(line: 0, scope: !3878, inlinedAt: !3884)
!3884 = distinct !DILocation(line: 103, column: 10, scope: !3865)
!3885 = !DILocation(line: 41, column: 13, scope: !3878, inlinedAt: !3884)
!3886 = !DILocation(line: 42, column: 8, scope: !3887, inlinedAt: !3884)
!3887 = distinct !DILexicalBlock(scope: !3878, file: !694, line: 42, column: 7)
!3888 = !DILocation(line: 42, column: 15, scope: !3887, inlinedAt: !3884)
!3889 = !DILocation(line: 42, column: 10, scope: !3887, inlinedAt: !3884)
!3890 = !DILocation(line: 43, column: 5, scope: !3887, inlinedAt: !3884)
!3891 = !DILocation(line: 103, column: 3, scope: !3865)
!3892 = !DILocation(line: 0, scope: !3878)
!3893 = !DILocation(line: 41, column: 13, scope: !3878)
!3894 = !DILocation(line: 42, column: 8, scope: !3887)
!3895 = !DILocation(line: 42, column: 15, scope: !3887)
!3896 = !DILocation(line: 42, column: 10, scope: !3887)
!3897 = !DILocation(line: 43, column: 5, scope: !3887)
!3898 = !DILocation(line: 44, column: 3, scope: !3878)
!3899 = distinct !DISubprogram(name: "xnrealloc", scope: !363, file: !363, line: 112, type: !3900, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !3902)
!3900 = !DISubroutineType(types: !3901)
!3901 = !{!96, !96, !98, !98}
!3902 = !{!3903, !3904, !3905}
!3903 = !DILocalVariable(name: "p", arg: 1, scope: !3899, file: !363, line: 112, type: !96)
!3904 = !DILocalVariable(name: "n", arg: 2, scope: !3899, file: !363, line: 112, type: !98)
!3905 = !DILocalVariable(name: "s", arg: 3, scope: !3899, file: !363, line: 112, type: !98)
!3906 = !DILocation(line: 0, scope: !3899)
!3907 = !DILocation(line: 114, column: 7, scope: !3908)
!3908 = distinct !DILexicalBlock(scope: !3899, file: !363, line: 114, column: 7)
!3909 = !DILocation(line: 114, column: 7, scope: !3899)
!3910 = !DILocation(line: 115, column: 5, scope: !3908)
!3911 = !DILocation(line: 116, column: 25, scope: !3899)
!3912 = !DILocalVariable(name: "p", arg: 1, scope: !3913, file: !694, line: 51, type: !96)
!3913 = distinct !DISubprogram(name: "xrealloc", scope: !694, file: !694, line: 51, type: !3914, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !3916)
!3914 = !DISubroutineType(types: !3915)
!3915 = !{!96, !96, !98}
!3916 = !{!3912, !3917}
!3917 = !DILocalVariable(name: "n", arg: 2, scope: !3913, file: !694, line: 51, type: !98)
!3918 = !DILocation(line: 0, scope: !3913, inlinedAt: !3919)
!3919 = distinct !DILocation(line: 116, column: 10, scope: !3899)
!3920 = !DILocation(line: 53, column: 8, scope: !3921, inlinedAt: !3919)
!3921 = distinct !DILexicalBlock(scope: !3913, file: !694, line: 53, column: 7)
!3922 = !DILocation(line: 53, column: 13, scope: !3921, inlinedAt: !3919)
!3923 = !DILocation(line: 53, column: 10, scope: !3921, inlinedAt: !3919)
!3924 = !DILocation(line: 57, column: 7, scope: !3925, inlinedAt: !3919)
!3925 = distinct !DILexicalBlock(scope: !3921, file: !694, line: 54, column: 5)
!3926 = !DILocation(line: 58, column: 7, scope: !3925, inlinedAt: !3919)
!3927 = !DILocation(line: 61, column: 7, scope: !3913, inlinedAt: !3919)
!3928 = !DILocation(line: 62, column: 8, scope: !3929, inlinedAt: !3919)
!3929 = distinct !DILexicalBlock(scope: !3913, file: !694, line: 62, column: 7)
!3930 = !DILocation(line: 62, column: 13, scope: !3929, inlinedAt: !3919)
!3931 = !DILocation(line: 62, column: 10, scope: !3929, inlinedAt: !3919)
!3932 = !DILocation(line: 63, column: 5, scope: !3929, inlinedAt: !3919)
!3933 = !DILocation(line: 116, column: 3, scope: !3899)
!3934 = !DILocation(line: 0, scope: !3913)
!3935 = !DILocation(line: 53, column: 8, scope: !3921)
!3936 = !DILocation(line: 53, column: 13, scope: !3921)
!3937 = !DILocation(line: 53, column: 10, scope: !3921)
!3938 = !DILocation(line: 57, column: 7, scope: !3925)
!3939 = !DILocation(line: 58, column: 7, scope: !3925)
!3940 = !DILocation(line: 61, column: 7, scope: !3913)
!3941 = !DILocation(line: 62, column: 8, scope: !3929)
!3942 = !DILocation(line: 62, column: 13, scope: !3929)
!3943 = !DILocation(line: 62, column: 10, scope: !3929)
!3944 = !DILocation(line: 63, column: 5, scope: !3929)
!3945 = !DILocation(line: 65, column: 1, scope: !3913)
!3946 = !DILocation(line: 0, scope: !697)
!3947 = !DILocation(line: 176, column: 14, scope: !697)
!3948 = !DILocation(line: 178, column: 9, scope: !3949)
!3949 = distinct !DILexicalBlock(scope: !697, file: !363, line: 178, column: 7)
!3950 = !DILocation(line: 178, column: 7, scope: !697)
!3951 = !DILocation(line: 180, column: 13, scope: !3952)
!3952 = distinct !DILexicalBlock(scope: !3953, file: !363, line: 180, column: 11)
!3953 = distinct !DILexicalBlock(scope: !3949, file: !363, line: 179, column: 5)
!3954 = !DILocation(line: 180, column: 11, scope: !3953)
!3955 = !DILocation(line: 188, column: 30, scope: !3956)
!3956 = distinct !DILexicalBlock(scope: !3952, file: !363, line: 181, column: 9)
!3957 = !DILocation(line: 189, column: 16, scope: !3956)
!3958 = !DILocation(line: 189, column: 13, scope: !3956)
!3959 = !DILocation(line: 190, column: 9, scope: !3956)
!3960 = !DILocation(line: 191, column: 11, scope: !3961)
!3961 = distinct !DILexicalBlock(scope: !3953, file: !363, line: 191, column: 11)
!3962 = !DILocation(line: 191, column: 11, scope: !3953)
!3963 = !DILocation(line: 206, column: 7, scope: !697)
!3964 = !DILocation(line: 207, column: 25, scope: !697)
!3965 = !DILocation(line: 0, scope: !3913, inlinedAt: !3966)
!3966 = distinct !DILocation(line: 207, column: 10, scope: !697)
!3967 = !DILocation(line: 53, column: 10, scope: !3921, inlinedAt: !3966)
!3968 = !DILocation(line: 192, column: 9, scope: !3961)
!3969 = !DILocation(line: 200, column: 69, scope: !3970)
!3970 = distinct !DILexicalBlock(scope: !3971, file: !363, line: 200, column: 11)
!3971 = distinct !DILexicalBlock(scope: !3949, file: !363, line: 195, column: 5)
!3972 = !DILocation(line: 201, column: 11, scope: !3970)
!3973 = !DILocation(line: 200, column: 11, scope: !3971)
!3974 = !DILocation(line: 202, column: 9, scope: !3970)
!3975 = !DILocation(line: 203, column: 14, scope: !3971)
!3976 = !DILocation(line: 203, column: 18, scope: !3971)
!3977 = !DILocation(line: 203, column: 9, scope: !3971)
!3978 = !DILocation(line: 53, column: 8, scope: !3921, inlinedAt: !3966)
!3979 = !DILocation(line: 57, column: 7, scope: !3925, inlinedAt: !3966)
!3980 = !DILocation(line: 58, column: 7, scope: !3925, inlinedAt: !3966)
!3981 = !DILocation(line: 61, column: 7, scope: !3913, inlinedAt: !3966)
!3982 = !DILocation(line: 62, column: 8, scope: !3929, inlinedAt: !3966)
!3983 = !DILocation(line: 62, column: 13, scope: !3929, inlinedAt: !3966)
!3984 = !DILocation(line: 62, column: 10, scope: !3929, inlinedAt: !3966)
!3985 = !DILocation(line: 63, column: 5, scope: !3929, inlinedAt: !3966)
!3986 = !DILocation(line: 207, column: 3, scope: !697)
!3987 = distinct !DISubprogram(name: "xcharalloc", scope: !363, file: !363, line: 216, type: !3070, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !3988)
!3988 = !{!3989}
!3989 = !DILocalVariable(name: "n", arg: 1, scope: !3987, file: !363, line: 216, type: !98)
!3990 = !DILocation(line: 0, scope: !3987)
!3991 = !DILocation(line: 0, scope: !3878, inlinedAt: !3992)
!3992 = distinct !DILocation(line: 218, column: 10, scope: !3987)
!3993 = !DILocation(line: 41, column: 13, scope: !3878, inlinedAt: !3992)
!3994 = !DILocation(line: 42, column: 8, scope: !3887, inlinedAt: !3992)
!3995 = !DILocation(line: 42, column: 15, scope: !3887, inlinedAt: !3992)
!3996 = !DILocation(line: 42, column: 10, scope: !3887, inlinedAt: !3992)
!3997 = !DILocation(line: 43, column: 5, scope: !3887, inlinedAt: !3992)
!3998 = !DILocation(line: 218, column: 3, scope: !3987)
!3999 = distinct !DISubprogram(name: "x2realloc", scope: !694, file: !694, line: 74, type: !4000, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !4002)
!4000 = !DISubroutineType(types: !4001)
!4001 = !{!96, !96, !700}
!4002 = !{!4003, !4004}
!4003 = !DILocalVariable(name: "p", arg: 1, scope: !3999, file: !694, line: 74, type: !96)
!4004 = !DILocalVariable(name: "pn", arg: 2, scope: !3999, file: !694, line: 74, type: !700)
!4005 = !DILocation(line: 0, scope: !3999)
!4006 = !DILocation(line: 0, scope: !697, inlinedAt: !4007)
!4007 = distinct !DILocation(line: 76, column: 10, scope: !3999)
!4008 = !DILocation(line: 176, column: 14, scope: !697, inlinedAt: !4007)
!4009 = !DILocation(line: 178, column: 9, scope: !3949, inlinedAt: !4007)
!4010 = !DILocation(line: 178, column: 7, scope: !697, inlinedAt: !4007)
!4011 = !DILocation(line: 180, column: 13, scope: !3952, inlinedAt: !4007)
!4012 = !DILocation(line: 180, column: 11, scope: !3953, inlinedAt: !4007)
!4013 = !DILocation(line: 191, column: 11, scope: !3961, inlinedAt: !4007)
!4014 = !DILocation(line: 191, column: 11, scope: !3953, inlinedAt: !4007)
!4015 = !DILocation(line: 206, column: 7, scope: !697, inlinedAt: !4007)
!4016 = !DILocation(line: 0, scope: !3913, inlinedAt: !4017)
!4017 = distinct !DILocation(line: 207, column: 10, scope: !697, inlinedAt: !4007)
!4018 = !DILocation(line: 53, column: 10, scope: !3921, inlinedAt: !4017)
!4019 = !DILocation(line: 192, column: 9, scope: !3961, inlinedAt: !4007)
!4020 = !DILocation(line: 201, column: 11, scope: !3970, inlinedAt: !4007)
!4021 = !DILocation(line: 200, column: 11, scope: !3971, inlinedAt: !4007)
!4022 = !DILocation(line: 202, column: 9, scope: !3970, inlinedAt: !4007)
!4023 = !DILocation(line: 203, column: 14, scope: !3971, inlinedAt: !4007)
!4024 = !DILocation(line: 203, column: 18, scope: !3971, inlinedAt: !4007)
!4025 = !DILocation(line: 203, column: 9, scope: !3971, inlinedAt: !4007)
!4026 = !DILocation(line: 53, column: 8, scope: !3921, inlinedAt: !4017)
!4027 = !DILocation(line: 57, column: 7, scope: !3925, inlinedAt: !4017)
!4028 = !DILocation(line: 58, column: 7, scope: !3925, inlinedAt: !4017)
!4029 = !DILocation(line: 61, column: 7, scope: !3913, inlinedAt: !4017)
!4030 = !DILocation(line: 62, column: 8, scope: !3929, inlinedAt: !4017)
!4031 = !DILocation(line: 62, column: 13, scope: !3929, inlinedAt: !4017)
!4032 = !DILocation(line: 62, column: 10, scope: !3929, inlinedAt: !4017)
!4033 = !DILocation(line: 63, column: 5, scope: !3929, inlinedAt: !4017)
!4034 = !DILocation(line: 76, column: 3, scope: !3999)
!4035 = distinct !DISubprogram(name: "xzalloc", scope: !694, file: !694, line: 84, type: !3879, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !4036)
!4036 = !{!4037}
!4037 = !DILocalVariable(name: "n", arg: 1, scope: !4035, file: !694, line: 84, type: !98)
!4038 = !DILocation(line: 0, scope: !4035)
!4039 = !DILocalVariable(name: "n", arg: 1, scope: !4040, file: !694, line: 93, type: !98)
!4040 = distinct !DISubprogram(name: "xcalloc", scope: !694, file: !694, line: 93, type: !3866, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !4041)
!4041 = !{!4039, !4042, !4043}
!4042 = !DILocalVariable(name: "s", arg: 2, scope: !4040, file: !694, line: 93, type: !98)
!4043 = !DILocalVariable(name: "p", scope: !4040, file: !694, line: 95, type: !96)
!4044 = !DILocation(line: 0, scope: !4040, inlinedAt: !4045)
!4045 = distinct !DILocation(line: 86, column: 10, scope: !4035)
!4046 = !DILocation(line: 100, column: 7, scope: !4047, inlinedAt: !4045)
!4047 = distinct !DILexicalBlock(scope: !4040, file: !694, line: 100, column: 7)
!4048 = !DILocation(line: 101, column: 7, scope: !4047, inlinedAt: !4045)
!4049 = !DILocation(line: 101, column: 18, scope: !4047, inlinedAt: !4045)
!4050 = !DILocation(line: 101, column: 16, scope: !4047, inlinedAt: !4045)
!4051 = !DILocation(line: 100, column: 7, scope: !4040, inlinedAt: !4045)
!4052 = !DILocation(line: 102, column: 5, scope: !4047, inlinedAt: !4045)
!4053 = !DILocation(line: 86, column: 3, scope: !4035)
!4054 = !DILocation(line: 0, scope: !4040)
!4055 = !DILocation(line: 100, column: 7, scope: !4047)
!4056 = !DILocation(line: 101, column: 7, scope: !4047)
!4057 = !DILocation(line: 101, column: 18, scope: !4047)
!4058 = !DILocation(line: 101, column: 16, scope: !4047)
!4059 = !DILocation(line: 100, column: 7, scope: !4040)
!4060 = !DILocation(line: 102, column: 5, scope: !4047)
!4061 = !DILocation(line: 103, column: 3, scope: !4040)
!4062 = distinct !DISubprogram(name: "xmemdup", scope: !694, file: !694, line: 111, type: !4063, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !4065)
!4063 = !DISubroutineType(types: !4064)
!4064 = !{!96, !197, !98}
!4065 = !{!4066, !4067}
!4066 = !DILocalVariable(name: "p", arg: 1, scope: !4062, file: !694, line: 111, type: !197)
!4067 = !DILocalVariable(name: "s", arg: 2, scope: !4062, file: !694, line: 111, type: !98)
!4068 = !DILocation(line: 0, scope: !4062)
!4069 = !DILocation(line: 0, scope: !3878, inlinedAt: !4070)
!4070 = distinct !DILocation(line: 113, column: 18, scope: !4062)
!4071 = !DILocation(line: 41, column: 13, scope: !3878, inlinedAt: !4070)
!4072 = !DILocation(line: 42, column: 8, scope: !3887, inlinedAt: !4070)
!4073 = !DILocation(line: 42, column: 15, scope: !3887, inlinedAt: !4070)
!4074 = !DILocation(line: 42, column: 10, scope: !3887, inlinedAt: !4070)
!4075 = !DILocation(line: 43, column: 5, scope: !3887, inlinedAt: !4070)
!4076 = !DILocalVariable(name: "__dest", arg: 1, scope: !4077, file: !1965, line: 31, type: !3700)
!4077 = distinct !DISubprogram(name: "memcpy", scope: !1965, file: !1965, line: 31, type: !3698, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !4078)
!4078 = !{!4076, !4079, !4080}
!4079 = !DILocalVariable(name: "__src", arg: 2, scope: !4077, file: !1965, line: 31, type: !3701)
!4080 = !DILocalVariable(name: "__len", arg: 3, scope: !4077, file: !1965, line: 31, type: !98)
!4081 = !DILocation(line: 0, scope: !4077, inlinedAt: !4082)
!4082 = distinct !DILocation(line: 113, column: 10, scope: !4062)
!4083 = !DILocation(line: 34, column: 10, scope: !4077, inlinedAt: !4082)
!4084 = !DILocation(line: 113, column: 3, scope: !4062)
!4085 = distinct !DISubprogram(name: "xstrdup", scope: !694, file: !694, line: 119, type: !118, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !4086)
!4086 = !{!4087}
!4087 = !DILocalVariable(name: "string", arg: 1, scope: !4085, file: !694, line: 119, type: !41)
!4088 = !DILocation(line: 0, scope: !4085)
!4089 = !DILocation(line: 121, column: 27, scope: !4085)
!4090 = !DILocation(line: 121, column: 43, scope: !4085)
!4091 = !DILocation(line: 0, scope: !4062, inlinedAt: !4092)
!4092 = distinct !DILocation(line: 121, column: 10, scope: !4085)
!4093 = !DILocation(line: 0, scope: !3878, inlinedAt: !4094)
!4094 = distinct !DILocation(line: 113, column: 18, scope: !4062, inlinedAt: !4092)
!4095 = !DILocation(line: 41, column: 13, scope: !3878, inlinedAt: !4094)
!4096 = !DILocation(line: 42, column: 8, scope: !3887, inlinedAt: !4094)
!4097 = !DILocation(line: 42, column: 15, scope: !3887, inlinedAt: !4094)
!4098 = !DILocation(line: 42, column: 10, scope: !3887, inlinedAt: !4094)
!4099 = !DILocation(line: 43, column: 5, scope: !3887, inlinedAt: !4094)
!4100 = !DILocation(line: 0, scope: !4077, inlinedAt: !4101)
!4101 = distinct !DILocation(line: 113, column: 10, scope: !4062, inlinedAt: !4092)
!4102 = !DILocation(line: 34, column: 10, scope: !4077, inlinedAt: !4101)
!4103 = !DILocation(line: 121, column: 3, scope: !4085)
!4104 = distinct !DISubprogram(name: "xalloc_die", scope: !715, file: !715, line: 32, type: !130, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !44)
!4105 = !DILocation(line: 34, column: 10, scope: !4104)
!4106 = !DILocation(line: 34, column: 33, scope: !4104)
!4107 = !DILocation(line: 34, column: 3, scope: !4104)
!4108 = !DILocation(line: 40, column: 3, scope: !4104)
!4109 = distinct !DISubprogram(name: "xmemcoll", scope: !718, file: !718, line: 54, type: !4110, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !4112)
!4110 = !DISubroutineType(types: !4111)
!4111 = !{!43, !39, !98, !39, !98}
!4112 = !{!4113, !4114, !4115, !4116, !4117, !4118}
!4113 = !DILocalVariable(name: "s1", arg: 1, scope: !4109, file: !718, line: 54, type: !39)
!4114 = !DILocalVariable(name: "s1len", arg: 2, scope: !4109, file: !718, line: 54, type: !98)
!4115 = !DILocalVariable(name: "s2", arg: 3, scope: !4109, file: !718, line: 54, type: !39)
!4116 = !DILocalVariable(name: "s2len", arg: 4, scope: !4109, file: !718, line: 54, type: !98)
!4117 = !DILocalVariable(name: "diff", scope: !4109, file: !718, line: 56, type: !43)
!4118 = !DILocalVariable(name: "collation_errno", scope: !4109, file: !718, line: 57, type: !43)
!4119 = !DILocation(line: 0, scope: !4109)
!4120 = !DILocation(line: 56, column: 14, scope: !4109)
!4121 = !DILocation(line: 57, column: 25, scope: !4109)
!4122 = !DILocation(line: 58, column: 7, scope: !4123)
!4123 = distinct !DILexicalBlock(scope: !4109, file: !718, line: 58, column: 7)
!4124 = !DILocation(line: 58, column: 7, scope: !4109)
!4125 = !DILocalVariable(name: "collation_errno", arg: 1, scope: !4126, file: !718, line: 35, type: !43)
!4126 = distinct !DISubprogram(name: "collate_error", scope: !718, file: !718, line: 35, type: !4127, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !4129)
!4127 = !DISubroutineType(types: !4128)
!4128 = !{null, !43, !41, !98, !41, !98}
!4129 = !{!4125, !4130, !4131, !4132, !4133}
!4130 = !DILocalVariable(name: "s1", arg: 2, scope: !4126, file: !718, line: 36, type: !41)
!4131 = !DILocalVariable(name: "s1len", arg: 3, scope: !4126, file: !718, line: 36, type: !98)
!4132 = !DILocalVariable(name: "s2", arg: 4, scope: !4126, file: !718, line: 37, type: !41)
!4133 = !DILocalVariable(name: "s2len", arg: 5, scope: !4126, file: !718, line: 37, type: !98)
!4134 = !DILocation(line: 0, scope: !4126, inlinedAt: !4135)
!4135 = distinct !DILocation(line: 59, column: 5, scope: !4123)
!4136 = !DILocation(line: 39, column: 30, scope: !4126, inlinedAt: !4135)
!4137 = !DILocation(line: 39, column: 3, scope: !4126, inlinedAt: !4135)
!4138 = !DILocation(line: 40, column: 16, scope: !4126, inlinedAt: !4135)
!4139 = !DILocation(line: 40, column: 3, scope: !4126, inlinedAt: !4135)
!4140 = !DILocation(line: 41, column: 10, scope: !4126, inlinedAt: !4135)
!4141 = !DILocation(line: 42, column: 10, scope: !4126, inlinedAt: !4135)
!4142 = !DILocation(line: 43, column: 10, scope: !4126, inlinedAt: !4135)
!4143 = !DILocation(line: 44, column: 10, scope: !4126, inlinedAt: !4135)
!4144 = !DILocation(line: 41, column: 3, scope: !4126, inlinedAt: !4135)
!4145 = !DILocation(line: 59, column: 5, scope: !4123)
!4146 = !DILocation(line: 60, column: 3, scope: !4109)
!4147 = distinct !DISubprogram(name: "xmemcoll0", scope: !718, file: !718, line: 69, type: !2126, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !4148)
!4148 = !{!4149, !4150, !4151, !4152, !4153, !4154}
!4149 = !DILocalVariable(name: "s1", arg: 1, scope: !4147, file: !718, line: 69, type: !41)
!4150 = !DILocalVariable(name: "s1size", arg: 2, scope: !4147, file: !718, line: 69, type: !98)
!4151 = !DILocalVariable(name: "s2", arg: 3, scope: !4147, file: !718, line: 69, type: !41)
!4152 = !DILocalVariable(name: "s2size", arg: 4, scope: !4147, file: !718, line: 69, type: !98)
!4153 = !DILocalVariable(name: "diff", scope: !4147, file: !718, line: 71, type: !43)
!4154 = !DILocalVariable(name: "collation_errno", scope: !4147, file: !718, line: 72, type: !43)
!4155 = !DILocation(line: 0, scope: !4147)
!4156 = !DILocation(line: 71, column: 14, scope: !4147)
!4157 = !DILocation(line: 72, column: 25, scope: !4147)
!4158 = !DILocation(line: 73, column: 7, scope: !4159)
!4159 = distinct !DILexicalBlock(scope: !4147, file: !718, line: 73, column: 7)
!4160 = !DILocation(line: 73, column: 7, scope: !4147)
!4161 = !DILocation(line: 74, column: 48, scope: !4159)
!4162 = !DILocation(line: 74, column: 64, scope: !4159)
!4163 = !DILocation(line: 0, scope: !4126, inlinedAt: !4164)
!4164 = distinct !DILocation(line: 74, column: 5, scope: !4159)
!4165 = !DILocation(line: 39, column: 30, scope: !4126, inlinedAt: !4164)
!4166 = !DILocation(line: 39, column: 3, scope: !4126, inlinedAt: !4164)
!4167 = !DILocation(line: 40, column: 16, scope: !4126, inlinedAt: !4164)
!4168 = !DILocation(line: 40, column: 3, scope: !4126, inlinedAt: !4164)
!4169 = !DILocation(line: 41, column: 10, scope: !4126, inlinedAt: !4164)
!4170 = !DILocation(line: 42, column: 10, scope: !4126, inlinedAt: !4164)
!4171 = !DILocation(line: 43, column: 10, scope: !4126, inlinedAt: !4164)
!4172 = !DILocation(line: 44, column: 10, scope: !4126, inlinedAt: !4164)
!4173 = !DILocation(line: 41, column: 3, scope: !4126, inlinedAt: !4164)
!4174 = !DILocation(line: 74, column: 5, scope: !4159)
!4175 = !DILocation(line: 75, column: 3, scope: !4147)
!4176 = distinct !DISubprogram(name: "rpl_calloc", scope: !728, file: !728, line: 42, type: !3866, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !727, retainedNodes: !4177)
!4177 = !{!4178, !4179, !4180, !4181}
!4178 = !DILocalVariable(name: "n", arg: 1, scope: !4176, file: !728, line: 42, type: !98)
!4179 = !DILocalVariable(name: "s", arg: 2, scope: !4176, file: !728, line: 42, type: !98)
!4180 = !DILocalVariable(name: "result", scope: !4176, file: !728, line: 44, type: !96)
!4181 = !DILocalVariable(name: "bytes", scope: !4182, file: !728, line: 56, type: !98)
!4182 = distinct !DILexicalBlock(scope: !4183, file: !728, line: 53, column: 5)
!4183 = distinct !DILexicalBlock(scope: !4176, file: !728, line: 47, column: 7)
!4184 = !DILocation(line: 0, scope: !4176)
!4185 = !DILocation(line: 47, column: 9, scope: !4183)
!4186 = !DILocation(line: 47, column: 19, scope: !4183)
!4187 = !DILocation(line: 47, column: 14, scope: !4183)
!4188 = !DILocation(line: 0, scope: !4182)
!4189 = !DILocation(line: 57, column: 21, scope: !4190)
!4190 = distinct !DILexicalBlock(scope: !4182, file: !728, line: 57, column: 11)
!4191 = !DILocation(line: 57, column: 11, scope: !4182)
!4192 = !DILocation(line: 59, column: 11, scope: !4193)
!4193 = distinct !DILexicalBlock(scope: !4190, file: !728, line: 58, column: 9)
!4194 = !DILocation(line: 59, column: 17, scope: !4193)
!4195 = !DILocation(line: 65, column: 12, scope: !4176)
!4196 = !DILocation(line: 72, column: 3, scope: !4176)
!4197 = !DILocation(line: 73, column: 1, scope: !4176)
!4198 = distinct !DISubprogram(name: "rpl_fclose", scope: !731, file: !731, line: 58, type: !4199, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !4203)
!4199 = !DISubroutineType(types: !4200)
!4200 = !{!43, !4201}
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4202, size: 64)
!4202 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1418, line: 7, baseType: !737)
!4203 = !{!4204, !4205, !4206, !4207}
!4204 = !DILocalVariable(name: "fp", arg: 1, scope: !4198, file: !731, line: 58, type: !4201)
!4205 = !DILocalVariable(name: "saved_errno", scope: !4198, file: !731, line: 60, type: !43)
!4206 = !DILocalVariable(name: "fd", scope: !4198, file: !731, line: 61, type: !43)
!4207 = !DILocalVariable(name: "result", scope: !4198, file: !731, line: 62, type: !43)
!4208 = !DILocation(line: 0, scope: !4198)
!4209 = !DILocation(line: 65, column: 8, scope: !4198)
!4210 = !DILocation(line: 66, column: 10, scope: !4211)
!4211 = distinct !DILexicalBlock(scope: !4198, file: !731, line: 66, column: 7)
!4212 = !DILocation(line: 66, column: 7, scope: !4198)
!4213 = !DILocation(line: 67, column: 12, scope: !4211)
!4214 = !DILocation(line: 67, column: 5, scope: !4211)
!4215 = !DILocation(line: 72, column: 9, scope: !4216)
!4216 = distinct !DILexicalBlock(scope: !4198, file: !731, line: 72, column: 7)
!4217 = !DILocation(line: 72, column: 23, scope: !4216)
!4218 = !DILocation(line: 72, column: 33, scope: !4216)
!4219 = !DILocation(line: 72, column: 26, scope: !4216)
!4220 = !DILocation(line: 72, column: 59, scope: !4216)
!4221 = !DILocation(line: 73, column: 7, scope: !4216)
!4222 = !DILocation(line: 73, column: 10, scope: !4216)
!4223 = !DILocation(line: 72, column: 7, scope: !4198)
!4224 = !DILocation(line: 100, column: 12, scope: !4198)
!4225 = !DILocation(line: 105, column: 7, scope: !4198)
!4226 = !DILocation(line: 74, column: 19, scope: !4216)
!4227 = !DILocation(line: 105, column: 19, scope: !4228)
!4228 = distinct !DILexicalBlock(scope: !4198, file: !731, line: 105, column: 7)
!4229 = !DILocation(line: 107, column: 13, scope: !4230)
!4230 = distinct !DILexicalBlock(scope: !4228, file: !731, line: 106, column: 5)
!4231 = !DILocation(line: 109, column: 5, scope: !4230)
!4232 = !DILocation(line: 112, column: 1, scope: !4198)
!4233 = distinct !DISubprogram(name: "rpl_fcntl", scope: !470, file: !470, line: 202, type: !477, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !4234)
!4234 = !{!4235, !4236, !4237, !4247, !4248, !4251, !4253, !4257}
!4235 = !DILocalVariable(name: "fd", arg: 1, scope: !4233, file: !470, line: 202, type: !43)
!4236 = !DILocalVariable(name: "action", arg: 2, scope: !4233, file: !470, line: 202, type: !43)
!4237 = !DILocalVariable(name: "arg", scope: !4233, file: !470, line: 208, type: !4238)
!4238 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3849, line: 14, baseType: !4239)
!4239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !470, line: 208, baseType: !4240)
!4240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4241, size: 192, elements: !81)
!4241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !470, line: 208, size: 192, elements: !4242)
!4242 = !{!4243, !4244, !4245, !4246}
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4241, file: !470, line: 208, baseType: !6, size: 32)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4241, file: !470, line: 208, baseType: !6, size: 32, offset: 32)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4241, file: !470, line: 208, baseType: !96, size: 64, offset: 64)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4241, file: !470, line: 208, baseType: !96, size: 64, offset: 128)
!4247 = !DILocalVariable(name: "result", scope: !4233, file: !470, line: 209, type: !43)
!4248 = !DILocalVariable(name: "target", scope: !4249, file: !470, line: 215, type: !43)
!4249 = distinct !DILexicalBlock(scope: !4250, file: !470, line: 214, column: 7)
!4250 = distinct !DILexicalBlock(scope: !4233, file: !470, line: 212, column: 5)
!4251 = !DILocalVariable(name: "target", scope: !4252, file: !470, line: 222, type: !43)
!4252 = distinct !DILexicalBlock(scope: !4250, file: !470, line: 221, column: 7)
!4253 = !DILocalVariable(name: "x", scope: !4254, file: !470, line: 423, type: !43)
!4254 = distinct !DILexicalBlock(scope: !4255, file: !470, line: 422, column: 13)
!4255 = distinct !DILexicalBlock(scope: !4256, file: !470, line: 260, column: 11)
!4256 = distinct !DILexicalBlock(scope: !4250, file: !470, line: 257, column: 7)
!4257 = !DILocalVariable(name: "p", scope: !4258, file: !470, line: 431, type: !96)
!4258 = distinct !DILexicalBlock(scope: !4255, file: !470, line: 430, column: 13)
!4259 = !DILocation(line: 0, scope: !4233)
!4260 = !DILocation(line: 208, column: 3, scope: !4233)
!4261 = !DILocation(line: 208, column: 11, scope: !4233)
!4262 = !DILocation(line: 210, column: 3, scope: !4233)
!4263 = !DILocation(line: 211, column: 3, scope: !4233)
!4264 = !DILocation(line: 215, column: 22, scope: !4249)
!4265 = !DILocation(line: 0, scope: !4249)
!4266 = !DILocalVariable(name: "fd", arg: 1, scope: !4267, file: !470, line: 447, type: !43)
!4267 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !470, file: !470, line: 447, type: !471, scopeLine: 448, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !4268)
!4268 = !{!4266, !4269, !4270}
!4269 = !DILocalVariable(name: "target", arg: 2, scope: !4267, file: !470, line: 447, type: !43)
!4270 = !DILocalVariable(name: "result", scope: !4267, file: !470, line: 449, type: !43)
!4271 = !DILocation(line: 0, scope: !4267, inlinedAt: !4272)
!4272 = distinct !DILocation(line: 216, column: 18, scope: !4249)
!4273 = !DILocation(line: 482, column: 12, scope: !4267, inlinedAt: !4272)
!4274 = !DILocation(line: 222, column: 22, scope: !4252)
!4275 = !DILocation(line: 0, scope: !4252)
!4276 = !DILocation(line: 0, scope: !469, inlinedAt: !4277)
!4277 = distinct !DILocation(line: 223, column: 18, scope: !4252)
!4278 = !DILocation(line: 508, column: 12, scope: !4279, inlinedAt: !4277)
!4279 = distinct !DILexicalBlock(scope: !469, file: !470, line: 508, column: 7)
!4280 = !DILocation(line: 508, column: 9, scope: !4279, inlinedAt: !4277)
!4281 = !DILocation(line: 508, column: 7, scope: !469, inlinedAt: !4277)
!4282 = !DILocation(line: 510, column: 16, scope: !4283, inlinedAt: !4277)
!4283 = distinct !DILexicalBlock(scope: !4279, file: !470, line: 509, column: 5)
!4284 = !DILocation(line: 511, column: 13, scope: !4285, inlinedAt: !4277)
!4285 = distinct !DILexicalBlock(scope: !4283, file: !470, line: 511, column: 11)
!4286 = !DILocation(line: 511, column: 23, scope: !4285, inlinedAt: !4277)
!4287 = !DILocation(line: 511, column: 26, scope: !4285, inlinedAt: !4277)
!4288 = !DILocation(line: 511, column: 32, scope: !4285, inlinedAt: !4277)
!4289 = !DILocation(line: 511, column: 11, scope: !4283, inlinedAt: !4277)
!4290 = !DILocation(line: 513, column: 30, scope: !4291, inlinedAt: !4277)
!4291 = distinct !DILexicalBlock(scope: !4285, file: !470, line: 512, column: 9)
!4292 = !DILocation(line: 529, column: 19, scope: !490, inlinedAt: !4277)
!4293 = !DILocation(line: 0, scope: !4267, inlinedAt: !4294)
!4294 = distinct !DILocation(line: 521, column: 20, scope: !4295, inlinedAt: !4277)
!4295 = distinct !DILexicalBlock(scope: !4285, file: !470, line: 520, column: 9)
!4296 = !DILocation(line: 482, column: 12, scope: !4267, inlinedAt: !4294)
!4297 = !DILocation(line: 522, column: 22, scope: !4298, inlinedAt: !4277)
!4298 = distinct !DILexicalBlock(scope: !4295, file: !470, line: 522, column: 15)
!4299 = !DILocation(line: 522, column: 15, scope: !4295, inlinedAt: !4277)
!4300 = !DILocation(line: 523, column: 32, scope: !4298, inlinedAt: !4277)
!4301 = !DILocation(line: 523, column: 13, scope: !4298, inlinedAt: !4277)
!4302 = !DILocation(line: 0, scope: !4267, inlinedAt: !4303)
!4303 = distinct !DILocation(line: 528, column: 14, scope: !4279, inlinedAt: !4277)
!4304 = !DILocation(line: 482, column: 12, scope: !4267, inlinedAt: !4303)
!4305 = !DILocation(line: 529, column: 22, scope: !490, inlinedAt: !4277)
!4306 = !DILocation(line: 0, scope: !4279, inlinedAt: !4277)
!4307 = !DILocation(line: 529, column: 9, scope: !490, inlinedAt: !4277)
!4308 = !DILocation(line: 531, column: 19, scope: !489, inlinedAt: !4277)
!4309 = !DILocation(line: 0, scope: !489, inlinedAt: !4277)
!4310 = !DILocation(line: 532, column: 17, scope: !493, inlinedAt: !4277)
!4311 = !DILocation(line: 532, column: 21, scope: !493, inlinedAt: !4277)
!4312 = !DILocation(line: 532, column: 54, scope: !493, inlinedAt: !4277)
!4313 = !DILocation(line: 532, column: 24, scope: !493, inlinedAt: !4277)
!4314 = !DILocation(line: 532, column: 68, scope: !493, inlinedAt: !4277)
!4315 = !DILocation(line: 532, column: 11, scope: !489, inlinedAt: !4277)
!4316 = !DILocation(line: 534, column: 29, scope: !492, inlinedAt: !4277)
!4317 = !DILocation(line: 0, scope: !492, inlinedAt: !4277)
!4318 = !DILocation(line: 535, column: 11, scope: !492, inlinedAt: !4277)
!4319 = !DILocation(line: 536, column: 17, scope: !492, inlinedAt: !4277)
!4320 = !DILocation(line: 538, column: 9, scope: !492, inlinedAt: !4277)
!4321 = !DILocation(line: 328, column: 22, scope: !4255)
!4322 = !DILocation(line: 329, column: 13, scope: !4255)
!4323 = !DILocation(line: 423, column: 23, scope: !4254)
!4324 = !DILocation(line: 0, scope: !4254)
!4325 = !DILocation(line: 424, column: 24, scope: !4254)
!4326 = !DILocation(line: 426, column: 13, scope: !4255)
!4327 = !DILocation(line: 431, column: 25, scope: !4258)
!4328 = !DILocation(line: 0, scope: !4258)
!4329 = !DILocation(line: 432, column: 24, scope: !4258)
!4330 = !DILocation(line: 434, column: 13, scope: !4255)
!4331 = !DILocation(line: 0, scope: !4250)
!4332 = !DILocation(line: 442, column: 3, scope: !4233)
!4333 = !DILocation(line: 444, column: 1, scope: !4233)
!4334 = !DILocation(line: 443, column: 3, scope: !4233)
!4335 = distinct !DISubprogram(name: "rpl_fflush", scope: !774, file: !774, line: 129, type: !4336, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !773, retainedNodes: !4340)
!4336 = !DISubroutineType(types: !4337)
!4337 = !{!43, !4338}
!4338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4339, size: 64)
!4339 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1418, line: 7, baseType: !780)
!4340 = !{!4341}
!4341 = !DILocalVariable(name: "stream", arg: 1, scope: !4335, file: !774, line: 129, type: !4338)
!4342 = !DILocation(line: 0, scope: !4335)
!4343 = !DILocation(line: 150, column: 14, scope: !4344)
!4344 = distinct !DILexicalBlock(scope: !4335, file: !774, line: 150, column: 7)
!4345 = !DILocation(line: 150, column: 22, scope: !4344)
!4346 = !DILocation(line: 150, column: 27, scope: !4344)
!4347 = !DILocation(line: 150, column: 7, scope: !4335)
!4348 = !DILocation(line: 151, column: 12, scope: !4344)
!4349 = !DILocation(line: 151, column: 5, scope: !4344)
!4350 = !DILocalVariable(name: "fp", arg: 1, scope: !4351, file: !774, line: 41, type: !4338)
!4351 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !774, file: !774, line: 41, type: !4352, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !773, retainedNodes: !4354)
!4352 = !DISubroutineType(types: !4353)
!4353 = !{null, !4338}
!4354 = !{!4350}
!4355 = !DILocation(line: 0, scope: !4351, inlinedAt: !4356)
!4356 = distinct !DILocation(line: 156, column: 3, scope: !4335)
!4357 = !DILocation(line: 43, column: 11, scope: !4358, inlinedAt: !4356)
!4358 = distinct !DILexicalBlock(scope: !4351, file: !774, line: 43, column: 7)
!4359 = !DILocation(line: 43, column: 18, scope: !4358, inlinedAt: !4356)
!4360 = !DILocation(line: 43, column: 7, scope: !4351, inlinedAt: !4356)
!4361 = !DILocation(line: 45, column: 5, scope: !4358, inlinedAt: !4356)
!4362 = !DILocation(line: 158, column: 10, scope: !4335)
!4363 = !DILocation(line: 158, column: 3, scope: !4335)
!4364 = !DILocation(line: 235, column: 1, scope: !4335)
!4365 = distinct !DISubprogram(name: "rpl_fseeko", scope: !815, file: !815, line: 28, type: !4366, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !814, retainedNodes: !4370)
!4366 = !DISubroutineType(types: !4367)
!4367 = !{!43, !4368, !1834, !43}
!4368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4369, size: 64)
!4369 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1418, line: 7, baseType: !821)
!4370 = !{!4371, !4372, !4373, !4374}
!4371 = !DILocalVariable(name: "fp", arg: 1, scope: !4365, file: !815, line: 28, type: !4368)
!4372 = !DILocalVariable(name: "offset", arg: 2, scope: !4365, file: !815, line: 28, type: !1834)
!4373 = !DILocalVariable(name: "whence", arg: 3, scope: !4365, file: !815, line: 28, type: !43)
!4374 = !DILocalVariable(name: "pos", scope: !4375, file: !815, line: 117, type: !1834)
!4375 = distinct !DILexicalBlock(scope: !4376, file: !815, line: 113, column: 5)
!4376 = distinct !DILexicalBlock(scope: !4365, file: !815, line: 52, column: 7)
!4377 = !DILocation(line: 0, scope: !4365)
!4378 = !DILocation(line: 52, column: 11, scope: !4376)
!4379 = !DILocation(line: 52, column: 31, scope: !4376)
!4380 = !DILocation(line: 52, column: 24, scope: !4376)
!4381 = !DILocation(line: 53, column: 7, scope: !4376)
!4382 = !DILocation(line: 53, column: 14, scope: !4376)
!4383 = !{!1576, !1344, i64 40}
!4384 = !DILocation(line: 53, column: 35, scope: !4376)
!4385 = !{!1576, !1344, i64 32}
!4386 = !DILocation(line: 53, column: 28, scope: !4376)
!4387 = !DILocation(line: 54, column: 7, scope: !4376)
!4388 = !DILocation(line: 54, column: 14, scope: !4376)
!4389 = !{!1576, !1344, i64 72}
!4390 = !DILocation(line: 54, column: 28, scope: !4376)
!4391 = !DILocation(line: 52, column: 7, scope: !4365)
!4392 = !DILocation(line: 117, column: 26, scope: !4375)
!4393 = !DILocation(line: 117, column: 19, scope: !4375)
!4394 = !DILocation(line: 0, scope: !4375)
!4395 = !DILocation(line: 118, column: 15, scope: !4396)
!4396 = distinct !DILexicalBlock(scope: !4375, file: !815, line: 118, column: 11)
!4397 = !DILocation(line: 118, column: 11, scope: !4375)
!4398 = !DILocation(line: 129, column: 11, scope: !4375)
!4399 = !DILocation(line: 129, column: 18, scope: !4375)
!4400 = !DILocation(line: 130, column: 11, scope: !4375)
!4401 = !DILocation(line: 130, column: 19, scope: !4375)
!4402 = !{!1576, !1486, i64 144}
!4403 = !DILocation(line: 161, column: 7, scope: !4375)
!4404 = !DILocation(line: 163, column: 10, scope: !4365)
!4405 = !DILocation(line: 163, column: 3, scope: !4365)
!4406 = !DILocation(line: 164, column: 1, scope: !4365)
!4407 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !856, file: !856, line: 86, type: !4408, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !855, retainedNodes: !4414)
!4408 = !DISubroutineType(types: !4409)
!4409 = !{!98, !4410, !41, !98, !4411}
!4410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!4411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4412, size: 64)
!4412 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2349, line: 6, baseType: !4413)
!4413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !392, line: 21, baseType: !862)
!4414 = !{!4415, !4416, !4417, !4418, !4419, !4420, !4421}
!4415 = !DILocalVariable(name: "pwc", arg: 1, scope: !4407, file: !856, line: 86, type: !4410)
!4416 = !DILocalVariable(name: "s", arg: 2, scope: !4407, file: !856, line: 86, type: !41)
!4417 = !DILocalVariable(name: "n", arg: 3, scope: !4407, file: !856, line: 86, type: !98)
!4418 = !DILocalVariable(name: "ps", arg: 4, scope: !4407, file: !856, line: 86, type: !4411)
!4419 = !DILocalVariable(name: "ret", scope: !4407, file: !856, line: 88, type: !98)
!4420 = !DILocalVariable(name: "wc", scope: !4407, file: !856, line: 89, type: !2353)
!4421 = !DILocalVariable(name: "uc", scope: !4422, file: !856, line: 156, type: !199)
!4422 = distinct !DILexicalBlock(scope: !4423, file: !856, line: 155, column: 5)
!4423 = distinct !DILexicalBlock(scope: !4407, file: !856, line: 154, column: 7)
!4424 = !DILocation(line: 0, scope: !4407)
!4425 = !DILocation(line: 89, column: 3, scope: !4407)
!4426 = !DILocation(line: 105, column: 9, scope: !4427)
!4427 = distinct !DILexicalBlock(scope: !4407, file: !856, line: 105, column: 7)
!4428 = !DILocation(line: 105, column: 7, scope: !4407)
!4429 = !DILocation(line: 145, column: 9, scope: !4407)
!4430 = !DILocation(line: 154, column: 19, scope: !4423)
!4431 = !DILocation(line: 154, column: 31, scope: !4423)
!4432 = !DILocation(line: 154, column: 26, scope: !4423)
!4433 = !DILocation(line: 154, column: 41, scope: !4423)
!4434 = !DILocation(line: 154, column: 7, scope: !4407)
!4435 = !DILocation(line: 156, column: 26, scope: !4422)
!4436 = !DILocation(line: 0, scope: !4422)
!4437 = !DILocation(line: 157, column: 14, scope: !4422)
!4438 = !DILocation(line: 157, column: 12, scope: !4422)
!4439 = !DILocation(line: 163, column: 1, scope: !4407)
!4440 = distinct !DISubprogram(name: "close_stream", scope: !871, file: !871, line: 56, type: !4441, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !870, retainedNodes: !4445)
!4441 = !DISubroutineType(types: !4442)
!4442 = !{!43, !4443}
!4443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4444, size: 64)
!4444 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1418, line: 7, baseType: !877)
!4445 = !{!4446, !4447, !4449, !4450}
!4446 = !DILocalVariable(name: "stream", arg: 1, scope: !4440, file: !871, line: 56, type: !4443)
!4447 = !DILocalVariable(name: "some_pending", scope: !4440, file: !871, line: 58, type: !4448)
!4448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!4449 = !DILocalVariable(name: "prev_fail", scope: !4440, file: !871, line: 59, type: !4448)
!4450 = !DILocalVariable(name: "fclose_fail", scope: !4440, file: !871, line: 60, type: !4448)
!4451 = !DILocation(line: 0, scope: !4440)
!4452 = !DILocation(line: 58, column: 30, scope: !4440)
!4453 = !DILocalVariable(name: "__stream", arg: 1, scope: !4454, file: !1567, line: 135, type: !4443)
!4454 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1567, file: !1567, line: 135, type: !4441, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !870, retainedNodes: !4455)
!4455 = !{!4453}
!4456 = !DILocation(line: 0, scope: !4454, inlinedAt: !4457)
!4457 = distinct !DILocation(line: 59, column: 27, scope: !4440)
!4458 = !DILocation(line: 137, column: 10, scope: !4454, inlinedAt: !4457)
!4459 = !DILocation(line: 59, column: 43, scope: !4440)
!4460 = !DILocation(line: 60, column: 29, scope: !4440)
!4461 = !DILocation(line: 60, column: 45, scope: !4440)
!4462 = !DILocation(line: 70, column: 17, scope: !4463)
!4463 = distinct !DILexicalBlock(scope: !4440, file: !871, line: 70, column: 7)
!4464 = !DILocation(line: 58, column: 50, scope: !4440)
!4465 = !DILocation(line: 70, column: 33, scope: !4463)
!4466 = !DILocation(line: 70, column: 53, scope: !4463)
!4467 = !DILocation(line: 70, column: 59, scope: !4463)
!4468 = !DILocation(line: 70, column: 7, scope: !4440)
!4469 = !DILocation(line: 72, column: 11, scope: !4470)
!4470 = distinct !DILexicalBlock(scope: !4463, file: !871, line: 71, column: 5)
!4471 = !DILocation(line: 73, column: 9, scope: !4472)
!4472 = distinct !DILexicalBlock(scope: !4470, file: !871, line: 72, column: 11)
!4473 = !DILocation(line: 73, column: 15, scope: !4472)
!4474 = !DILocation(line: 78, column: 1, scope: !4440)
!4475 = distinct !DISubprogram(name: "locale_charset", scope: !909, file: !909, line: 831, type: !415, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !908, retainedNodes: !4476)
!4476 = !{!4477}
!4477 = !DILocalVariable(name: "codeset", scope: !4475, file: !909, line: 833, type: !41)
!4478 = !DILocation(line: 847, column: 13, scope: !4475)
!4479 = !DILocation(line: 0, scope: !4475)
!4480 = !DILocation(line: 911, column: 15, scope: !4481)
!4481 = distinct !DILexicalBlock(scope: !4475, file: !909, line: 911, column: 7)
!4482 = !DILocation(line: 911, column: 7, scope: !4475)
!4483 = !DILocation(line: 1070, column: 13, scope: !4484)
!4484 = distinct !DILexicalBlock(scope: !4485, file: !909, line: 1070, column: 13)
!4485 = distinct !DILexicalBlock(scope: !4486, file: !909, line: 1060, column: 7)
!4486 = distinct !DILexicalBlock(scope: !4475, file: !909, line: 1019, column: 3)
!4487 = !DILocation(line: 1070, column: 24, scope: !4484)
!4488 = !DILocation(line: 1070, column: 13, scope: !4485)
!4489 = !DILocation(line: 1158, column: 3, scope: !4475)
!4490 = distinct !DISubprogram(name: "memcoll", scope: !1302, file: !1302, line: 66, type: !4110, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1301, retainedNodes: !4491)
!4491 = !{!4492, !4493, !4494, !4495, !4496, !4497, !4500}
!4492 = !DILocalVariable(name: "s1", arg: 1, scope: !4490, file: !1302, line: 66, type: !39)
!4493 = !DILocalVariable(name: "s1len", arg: 2, scope: !4490, file: !1302, line: 66, type: !98)
!4494 = !DILocalVariable(name: "s2", arg: 3, scope: !4490, file: !1302, line: 66, type: !39)
!4495 = !DILocalVariable(name: "s2len", arg: 4, scope: !4490, file: !1302, line: 66, type: !98)
!4496 = !DILocalVariable(name: "diff", scope: !4490, file: !1302, line: 68, type: !43)
!4497 = !DILocalVariable(name: "n1", scope: !4498, file: !1302, line: 81, type: !40)
!4498 = distinct !DILexicalBlock(scope: !4499, file: !1302, line: 80, column: 5)
!4499 = distinct !DILexicalBlock(scope: !4490, file: !1302, line: 74, column: 7)
!4500 = !DILocalVariable(name: "n2", scope: !4498, file: !1302, line: 82, type: !40)
!4501 = !DILocation(line: 0, scope: !4490)
!4502 = !DILocation(line: 74, column: 13, scope: !4499)
!4503 = !DILocation(line: 74, column: 22, scope: !4499)
!4504 = !DILocation(line: 74, column: 25, scope: !4499)
!4505 = !DILocation(line: 74, column: 48, scope: !4499)
!4506 = !DILocation(line: 74, column: 7, scope: !4490)
!4507 = !DILocation(line: 76, column: 7, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !4499, file: !1302, line: 75, column: 5)
!4509 = !DILocation(line: 76, column: 13, scope: !4508)
!4510 = !DILocation(line: 78, column: 5, scope: !4508)
!4511 = !DILocation(line: 81, column: 17, scope: !4498)
!4512 = !DILocation(line: 0, scope: !4498)
!4513 = !DILocation(line: 82, column: 17, scope: !4498)
!4514 = !DILocation(line: 84, column: 17, scope: !4498)
!4515 = !DILocation(line: 85, column: 17, scope: !4498)
!4516 = !DILocation(line: 87, column: 38, scope: !4498)
!4517 = !DILocation(line: 87, column: 53, scope: !4498)
!4518 = !DILocalVariable(name: "s1", arg: 1, scope: !4519, file: !1302, line: 35, type: !41)
!4519 = distinct !DISubprogram(name: "strcoll_loop", scope: !1302, file: !1302, line: 35, type: !2126, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1301, retainedNodes: !4520)
!4520 = !{!4518, !4521, !4522, !4523, !4524, !4525, !4527}
!4521 = !DILocalVariable(name: "s1size", arg: 2, scope: !4519, file: !1302, line: 35, type: !98)
!4522 = !DILocalVariable(name: "s2", arg: 3, scope: !4519, file: !1302, line: 35, type: !41)
!4523 = !DILocalVariable(name: "s2size", arg: 4, scope: !4519, file: !1302, line: 35, type: !98)
!4524 = !DILocalVariable(name: "diff", scope: !4519, file: !1302, line: 37, type: !43)
!4525 = !DILocalVariable(name: "size1", scope: !4526, file: !1302, line: 44, type: !98)
!4526 = distinct !DILexicalBlock(scope: !4519, file: !1302, line: 40, column: 5)
!4527 = !DILocalVariable(name: "size2", scope: !4526, file: !1302, line: 45, type: !98)
!4528 = !DILocation(line: 0, scope: !4519, inlinedAt: !4529)
!4529 = distinct !DILocation(line: 87, column: 14, scope: !4498)
!4530 = !DILocation(line: 39, column: 3, scope: !4519, inlinedAt: !4529)
!4531 = !DILocation(line: 39, column: 19, scope: !4519, inlinedAt: !4529)
!4532 = !DILocation(line: 39, column: 32, scope: !4519, inlinedAt: !4529)
!4533 = !DILocation(line: 39, column: 30, scope: !4519, inlinedAt: !4529)
!4534 = !DILocation(line: 44, column: 22, scope: !4526, inlinedAt: !4529)
!4535 = !DILocation(line: 44, column: 34, scope: !4526, inlinedAt: !4529)
!4536 = !DILocation(line: 0, scope: !4526, inlinedAt: !4529)
!4537 = !DILocation(line: 45, column: 22, scope: !4526, inlinedAt: !4529)
!4538 = !DILocation(line: 45, column: 34, scope: !4526, inlinedAt: !4529)
!4539 = !DILocation(line: 48, column: 14, scope: !4526, inlinedAt: !4529)
!4540 = !DILocation(line: 49, column: 14, scope: !4526, inlinedAt: !4529)
!4541 = !DILocation(line: 51, column: 18, scope: !4542, inlinedAt: !4529)
!4542 = distinct !DILexicalBlock(scope: !4526, file: !1302, line: 51, column: 11)
!4543 = !DILocation(line: 51, column: 11, scope: !4526, inlinedAt: !4529)
!4544 = !DILocation(line: 52, column: 26, scope: !4542, inlinedAt: !4529)
!4545 = !DILocation(line: 52, column: 16, scope: !4542, inlinedAt: !4529)
!4546 = !DILocation(line: 47, column: 10, scope: !4526, inlinedAt: !4529)
!4547 = !DILocation(line: 46, column: 10, scope: !4526, inlinedAt: !4529)
!4548 = !DILocation(line: 53, column: 18, scope: !4549, inlinedAt: !4529)
!4549 = distinct !DILexicalBlock(scope: !4526, file: !1302, line: 53, column: 11)
!4550 = distinct !{!4550, !4530, !4551}
!4551 = !DILocation(line: 55, column: 5, scope: !4519, inlinedAt: !4529)
!4552 = !DILocation(line: 89, column: 17, scope: !4498)
!4553 = !DILocation(line: 90, column: 17, scope: !4498)
!4554 = !DILocation(line: 0, scope: !4499)
!4555 = !DILocation(line: 93, column: 3, scope: !4490)
!4556 = distinct !DISubprogram(name: "memcoll0", scope: !1302, file: !1302, line: 102, type: !2126, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1301, retainedNodes: !4557)
!4557 = !{!4558, !4559, !4560, !4561}
!4558 = !DILocalVariable(name: "s1", arg: 1, scope: !4556, file: !1302, line: 102, type: !41)
!4559 = !DILocalVariable(name: "s1size", arg: 2, scope: !4556, file: !1302, line: 102, type: !98)
!4560 = !DILocalVariable(name: "s2", arg: 3, scope: !4556, file: !1302, line: 102, type: !41)
!4561 = !DILocalVariable(name: "s2size", arg: 4, scope: !4556, file: !1302, line: 102, type: !98)
!4562 = !DILocation(line: 0, scope: !4556)
!4563 = !DILocation(line: 104, column: 14, scope: !4564)
!4564 = distinct !DILexicalBlock(scope: !4556, file: !1302, line: 104, column: 7)
!4565 = !DILocation(line: 104, column: 24, scope: !4564)
!4566 = !DILocation(line: 104, column: 27, scope: !4564)
!4567 = !DILocation(line: 104, column: 51, scope: !4564)
!4568 = !DILocation(line: 104, column: 7, scope: !4556)
!4569 = !DILocation(line: 106, column: 7, scope: !4570)
!4570 = distinct !DILexicalBlock(scope: !4564, file: !1302, line: 105, column: 5)
!4571 = !DILocation(line: 106, column: 13, scope: !4570)
!4572 = !DILocation(line: 107, column: 7, scope: !4570)
!4573 = !DILocation(line: 0, scope: !4519, inlinedAt: !4574)
!4574 = distinct !DILocation(line: 110, column: 12, scope: !4564)
!4575 = !DILocation(line: 39, column: 3, scope: !4519, inlinedAt: !4574)
!4576 = !DILocation(line: 39, column: 19, scope: !4519, inlinedAt: !4574)
!4577 = !DILocation(line: 39, column: 32, scope: !4519, inlinedAt: !4574)
!4578 = !DILocation(line: 39, column: 30, scope: !4519, inlinedAt: !4574)
!4579 = !DILocation(line: 44, column: 22, scope: !4526, inlinedAt: !4574)
!4580 = !DILocation(line: 44, column: 34, scope: !4526, inlinedAt: !4574)
!4581 = !DILocation(line: 0, scope: !4526, inlinedAt: !4574)
!4582 = !DILocation(line: 45, column: 22, scope: !4526, inlinedAt: !4574)
!4583 = !DILocation(line: 45, column: 34, scope: !4526, inlinedAt: !4574)
!4584 = !DILocation(line: 48, column: 14, scope: !4526, inlinedAt: !4574)
!4585 = !DILocation(line: 49, column: 14, scope: !4526, inlinedAt: !4574)
!4586 = !DILocation(line: 51, column: 18, scope: !4542, inlinedAt: !4574)
!4587 = !DILocation(line: 51, column: 11, scope: !4526, inlinedAt: !4574)
!4588 = !DILocation(line: 52, column: 26, scope: !4542, inlinedAt: !4574)
!4589 = !DILocation(line: 52, column: 16, scope: !4542, inlinedAt: !4574)
!4590 = !DILocation(line: 47, column: 10, scope: !4526, inlinedAt: !4574)
!4591 = !DILocation(line: 46, column: 10, scope: !4526, inlinedAt: !4574)
!4592 = !DILocation(line: 53, column: 18, scope: !4549, inlinedAt: !4574)
!4593 = distinct !{!4593, !4575, !4594}
!4594 = !DILocation(line: 55, column: 5, scope: !4519, inlinedAt: !4574)
!4595 = !DILocation(line: 0, scope: !4564)
!4596 = !DILocation(line: 111, column: 1, scope: !4556)
